uint64_t sub_10045A644()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10045A69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10045A6B4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10045A6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_10000A5D4(&qword_10094BB50);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  sub_10076B8EC();
  sub_10076260C();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  sub_1007665FC();
  sub_10045B110(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v43 = a4;
  v17 = sub_10077124C();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((sub_10076B8BC() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_100016F40(0, &qword_100942F10);
    v18 = sub_100770CFC();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_10045B094(v19);
  v21 = type metadata accessor for Accessory();
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_100292808(v10, v41);
  sub_10000CFBC(v10, &qword_10094BB50);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1 || (sub_10076660C(), v26 = sub_10077124C(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = sub_10076B8FC();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_1002907D4();
  [v36 setHidden:v35];

LABEL_18:
  sub_10076660C();
  v37 = sub_10077124C();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

void sub_10045ABF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_100290A0C([v6 init]);
    v7 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10076C3FC();
      sub_10076B8EC();
      v11 = v10;

      if (v11)
      {
        v12 = sub_10076FF6C();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_10094CD78];
        v18 = *&v15[qword_10094CD78];
        *v17 = sub_10045B3FC;
        v17[1] = v16;

        v19 = v15;

        sub_1000167E0(v18);
      }
    }

    v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_10045ADF4(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

void sub_10045AF88(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

BOOL sub_10045B094(void *a1)
{
  if ((sub_10076B8BC() & 4) != 0)
  {
    return 1;
  }

  if ((sub_10076B8BC() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 1;
}

uint64_t sub_10045B110(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10045B158(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  v5 = [a4 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 1)
  {
    [a4 pageMarginInsets];
  }

  sub_10076B90C();

  sub_10000A5D4(&unk_1009520F0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v17, *(&v18 + 1));
    v7 = sub_10076968C();
    sub_10000CD74(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_10000CFBC(&v17, &qword_10094D3E8);
    v7 = 0;
  }

  v8 = sub_10076B8EC();
  v10 = v9;
  v11 = sub_10076B8FC();
  if (v11)
  {
  }

  v12 = sub_10045B094(a4);
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v13 = sub_10076063C();
  v14 = sub_10000A61C(v13, qword_10099E180);
  v15 = sub_100293124(v14, a4, v8, v10, v11 != 0, v12, v7 & 1);

  return v15;
}

uint64_t sub_10045B3BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10045B404(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076063C();
  v6 = sub_10000A61C(v5, qword_10099E180);
  v7 = sub_100293A18(v6, a3);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 absoluteDimension:v7];
  v12 = [v10 absoluteDimension:v9];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = v9 * a1;
  v17 = [v10 absoluteDimension:v7];
  v18 = [v10 absoluteDimension:v16];
  v19 = [v13 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = objc_opt_self();
  sub_10000A5D4(&unk_100942870);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v15;
  sub_100016F40(0, &qword_100952C70);
  v22 = v15;
  isa = sub_1007701AC().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v19 subitems:isa];

  [v24 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_opt_self() fixedSpacing:0.0];
  [v24 setInterItemSpacing:v25];

  return v24;
}

uint64_t sub_10045B6F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10045B74C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10045B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10045B89C()
{
  v1 = sub_10076B66C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_1007658FC();
  v17 = *(v9 - 8);
  v18 = v9;
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100762A6C();
  sub_10045BBE4();
  result = sub_10076332C();
  if (v19)
  {
    v16 = v0;
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v6 + 8))(v8, v5);
    if ((*(v2 + 88))(v4, v1) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v2 + 96))(v4, v1);
      v13 = v17;
      v14 = v4;
      v15 = v18;
      (*(v17 + 32))(v11, v14, v18);
      *(*(v16 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = sub_1007658EC();

      sub_100124EE0();

      return (*(v13 + 8))(v11, v15);
    }

    else
    {

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

unint64_t sub_10045BBE4()
{
  result = qword_100945AD0;
  if (!qword_100945AD0)
  {
    sub_100762A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945AD0);
  }

  return result;
}

double sub_10045BC80(uint64_t a1, void *a2)
{
  sub_10000CF78(a2, a2[3]);
  sub_10076D2AC();
  return v2;
}

uint64_t sub_10045BCEC(uint64_t a1)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v1 = type metadata accessor for StoryCardCollectionViewCell();
      v2 = &unk_100952D50;
      v3 = type metadata accessor for StoryCardCollectionViewCell;
      break;
    case 2:
      v1 = type metadata accessor for ListTodayCardCollectionViewCell();
      v2 = &unk_100956340;
      v3 = type metadata accessor for ListTodayCardCollectionViewCell;
      break;
    case 3:
    case 6:
      v1 = type metadata accessor for MultiAppFallbackCardCollectionViewCell();
      v2 = &unk_100956320;
      v3 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      break;
    case 4:
      v1 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell();
      v2 = &unk_100956338;
      v3 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      break;
    case 5:
      v1 = type metadata accessor for RiverTodayCardCollectionViewCell();
      v2 = &unk_100957C20;
      v3 = type metadata accessor for RiverTodayCardCollectionViewCell;
      break;
    case 7:
      v1 = type metadata accessor for GridTodayCardCollectionViewCell();
      v2 = &unk_100956328;
      v3 = type metadata accessor for GridTodayCardCollectionViewCell;
      break;
    case 10:
      v1 = type metadata accessor for AppEventTodayCardCollectionViewCell();
      v2 = &unk_100956318;
      v3 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      break;
    case 11:
      v1 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell();
      v2 = &unk_100956310;
      v3 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      break;
    case 12:
      v1 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
      v2 = &unk_100956308;
      v3 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      break;
    case 13:
      v1 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell();
      v2 = &unk_100956300;
      v3 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
      break;
    default:
      sub_10077156C();
      __break(1u);
      JUMPOUT(0x10045BF20);
  }

  sub_10045BF58(v2, v3);
  return v1;
}

uint64_t sub_10045BF58(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10045BFAC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  if (a3)
  {
    return sub_10045C224(a1, a2, a3 & 1, a4);
  }

  v22 = v4;
  sub_100763F0C();
  (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyDefinition(_:), v9);
  sub_10045CA18(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v25 == v23 && v26 == v24)
  {
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v15, v9);

    return 0.0;
  }

  else
  {
    v20 = sub_10077167C();
    v21 = a2;
    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
    a2 = v21;

    result = 0.0;
    if ((v20 & 1) == 0)
    {
      return sub_10045C224(a1, a2, a3 & 1, a4);
    }
  }

  return result;
}

double sub_10045C224(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v4 = sub_10000A5D4(&unk_1009568A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_10076573C();
  sub_10045CA18(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter);
  sub_100761B4C();
  v38 = v13;
  sub_10076B5CC();
  if (v36)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v14 = 0;
    v15 = v6;
    v16 = v38;
    v17 = v7;
  }

  else
  {
    sub_100761A7C();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100761B5C();
    v15 = v6;
    v17 = v7;
    if (v18)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v16 = v38;
  }

  v19 = v37;
  (*(v8 + 16))(v10, v16, v17);
  v20 = (*(v8 + 88))(v10, v17);
  if (v20 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v21 = &off_1008A1710;
  }

  else
  {
    if (v20 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v8 + 8))(v10, v17);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v21 = &off_100891580;
  }

  v22 = (v21[1])();
  if ((v23 & 1) == 0)
  {
LABEL_19:
    v33 = *&v22;

    v32 = v33;
    goto LABEL_20;
  }

LABEL_14:
  if (sub_10041329C())
  {
    v22 = (*(v24 + 40))(v15, v14, v19);
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D9AC();
  sub_10000A61C(v26, qword_1009A2380);
  v27 = [v19 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007841E0;
  *(v28 + 32) = v27;
  v29 = v27;
  v30 = sub_10076DEEC();
  sub_10076D3EC();
  v32 = v31;

  v16 = v38;
LABEL_20:
  sub_10041B638(v15);
  (*(v8 + 8))(v16, v17);
  return v32;
}

uint64_t sub_10045C6D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100763F0C();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyDefinition(_:), v5);
  sub_10045CA18(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v22 == v20 && v23 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = sub_10077167C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      return sub_100628B50(a1, v18, v19);
    }
  }

  if (qword_1009408B0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_10000A61C(v15, qword_1009A0890);
  return sub_1001162A4(v16, v19);
}

uint64_t sub_10045C964()
{
  sub_10062A5C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDefinitionsDataSource()
{
  result = qword_100957C50;
  if (!qword_100957C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045CA18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10045CA60()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099FAA0);
  sub_10000A61C(v4, qword_10099FAA0);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10045CBCC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_10045CDCC()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_100940568 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D9AC();
  sub_10000A61C(v17, qword_10099FAA0);
  v18 = [v1 traitCollection];
  sub_10076D17C();
  sub_10076D97C();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_10045D014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10045D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_10045D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_10045D174(uint64_t a1)
{
  result = sub_10045D19C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10045D19C()
{
  result = qword_100957F80;
  if (!qword_100957F80)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957F80);
  }

  return result;
}

unint64_t sub_10045D1F0(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v250 = a3;
  v249 = a2;
  v18 = sub_10000A5D4(&qword_10094A428);
  __chkstk_darwin(v18 - 8);
  v221 = &v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v214 - v21;
  v23 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v23 - 8);
  v237 = &v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v238 = &v214 - v26;
  v27 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v27 - 8);
  v236 = &v214 - v28;
  v29 = sub_1007611EC();
  __chkstk_darwin(v29 - 8);
  v220 = &v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v225 = &v214 - v32;
  __chkstk_darwin(v33);
  v231 = &v214 - v34;
  __chkstk_darwin(v35);
  v230 = &v214 - v36;
  v235 = sub_10076121C();
  v234 = *(v235 - 8);
  __chkstk_darwin(v235);
  v224 = &v214 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v229 = &v214 - v39;
  v240 = sub_10076481C();
  v239 = *(v240 - 8);
  __chkstk_darwin(v240);
  v226 = &v214 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v251 = &v214 - v42;
  v219 = type metadata accessor for ScreenshotDisplayConfiguration();
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v44 = &v214 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v45 - 8);
  v222 = &v214 - v46;
  v233 = sub_10076D39C();
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v248 = &v214 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_10076357C();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v214 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_1007673CC();
  v260 = *(v264 - 8);
  __chkstk_darwin(v264);
  v247 = &v214 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v263 = &v214 - v51;
  __chkstk_darwin(v52);
  v255 = &v214 - v53;
  v265 = sub_10076350C();
  v54 = *(v265 - 8);
  __chkstk_darwin(v265);
  v216 = &v214 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v223 = &v214 - v57;
  __chkstk_darwin(v58);
  v252 = &v214 - v59;
  __chkstk_darwin(v60);
  v228 = &v214 - v61;
  __chkstk_darwin(v62);
  v258 = &v214 - v63;
  v64 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v64 - 8);
  v217 = &v214 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v254 = &v214 - v67;
  __chkstk_darwin(v68);
  v262 = &v214 - v69;
  v70 = &unk_100783DC0;
  v71 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v71 - 8);
  v73 = &v214 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = sub_10076341C();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v243 = v74;
  sub_100386168(a1, v73, a4);
  sub_10000CFBC(v73, &unk_1009428D0);
  sub_100016F40(0, &qword_100942F10);
  v76 = sub_100770D2C();
  [v10 setBackgroundColor:v76];

  v266 = a1;
  v77 = sub_10076280C();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = sub_10077158C();
    v77 = v76;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v255;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v257 = sub_10077149C();
    }

    else
    {
      if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v257 = *(v77 + 32);
    }
  }

  else
  {

    v257 = 0;
  }

  v242 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v256 = sub_10076283C();
  v10 = sub_10076281C();
  v80 = sub_10076288C();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = sub_10077158C();
    v80 = v76;
  }

  else
  {
    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v253 = a4;
  v261 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v259 = sub_10077149C();
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_80;
      }

      v259 = *(v80 + 32);
    }
  }

  else
  {

    v259 = 0;
  }

  sub_100460BD4(v262);
  v70 = sub_10076283C();
  v54 = sub_10076281C();
  v82 = sub_10076280C();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = sub_10077158C();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = sub_10077149C();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = sub_10076288C();
  if (!(v82 >> 62))
  {
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = sub_10077158C();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = sub_10077149C();
    goto LABEL_32;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v227 = v22;
  sub_10076285C();
  v88 = sub_1007673BC();
  v241 = v44;
  if ((v88 & 1) == 0)
  {

    v255 = *(v260 + 8);
    (v255)(v79, v264);
    v93 = v261;
    v76 = v258;
    (*(v261 + 104))(v258, enum case for LockupMediaLayout.DisplayType.none(_:), v265);
    v70 = 0x100911000;
    v44 = v257;
    goto LABEL_66;
  }

  v89 = v252;
  if (v54 | v70)
  {
    v94 = v228;
    sub_10076D3AC();

    v255 = *(v260 + 8);
    (v255)(v79, v264);
    v93 = v261;
    v95 = v265;
    (*(v261 + 104))(v94, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v265);
    v76 = v258;
    (*(v93 + 32))(v258, v94, v95);
    v70 = 0x100911000;
    v44 = v257;
    v54 = v248;
    goto LABEL_67;
  }

  v90 = sub_10057F8EC(v76, v85, 0, 1);
  v54 = v90;
  v70 = v90 >> 62;
  if (v90 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v250 = i;
    if (v76)
    {
      v92 = sub_1007601CC();
    }

    else
    {
      v92 = 0;
    }

    v96 = sub_10057FC34(v92);

    v215 = v10;
    LODWORD(v214) = v96;
    if (v76)
    {
      v97 = sub_1007601CC();
    }

    else
    {
      v97 = 0;
    }

    v98 = v260;
    v99 = v222;
    v100 = v264;
    (*(v260 + 16))(v222, v255, v264);
    (*(v98 + 56))(v99, 0, 1, v100);
    HIDWORD(v214) = sub_10058015C(v97, v99);

    sub_10000CFBC(v99, &qword_10094E260);
    if (v70)
    {
      v101 = sub_10077158C();
    }

    else
    {
      v101 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v215;
    v102 = v223;
    if (!v101)
    {

LABEL_57:
      v106 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v107 = v261;
      v108 = v265;
      v249 = *(v261 + 104);
      v249(v102, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v265);
      v109 = sub_1007634FC();
      v110 = *(v107 + 8);
      v110(v102, v108);
      if (((v250 >= v109) & BYTE4(v214)) != 0 || (v106 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v111 = v265, v249(v102, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v265), v112 = sub_1007634FC(), v110(v102, v111), ((v250 >= v112) & v214) != 0) || (v106 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v113 = v265, v249(v102, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v265), v114 = sub_1007634FC(), v110(v102, v113), v250 >= v114))
      {

        v120 = v255;
        v255 = *(v260 + 8);
        (v255)(v120, v264);
      }

      else
      {
        v106 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v115 = v265;
        v249(v102, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v265);
        v116 = sub_1007634FC();

        v110(v102, v115);
        v117 = v255;
        v255 = *(v260 + 8);
        (v255)(v117, v264);
        if (v250 != v116)
        {
          v118 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v105 = v228;
          v119 = v228;
LABEL_64:
          v249(v119, v118, v265);
          v93 = v261;
          v70 = &off_100911000;
          v76 = v258;
          v44 = v257;
          v10 = v215;
          goto LABEL_65;
        }
      }

      v105 = v228;
      v119 = v228;
      v118 = v106;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v103 = sub_10076BDCC();

    if ((v103 & 1) == 0)
    {
      goto LABEL_57;
    }

    v104 = v255;
    v255 = *(v260 + 8);
    (v255)(v104, v264);
    v93 = v261;
    v105 = v228;
    (*(v261 + 104))(v228, enum case for LockupMediaLayout.DisplayType.landscape(_:), v265);
    v70 = 0x100911000;
    v76 = v258;
    v44 = v257;
LABEL_65:
    (*(v93 + 32))(v76, v105, v265);
LABEL_66:
    v54 = v248;
    v89 = v252;
LABEL_67:
    sub_10076285C();
    v268[3] = &type metadata for CGFloat;
    v268[4] = &protocol witness table for CGFloat;
    v268[0] = 0x4021000000000000;
    sub_10000A570(v268, v267);
    v121 = *(v93 + 16);
    v121(v89, v76, v265);
    v252 = v121;
    if (v10 | v256)
    {
      goto LABEL_85;
    }

    v82 = sub_10057F8EC(v44, v259, 0, 1);
    if (v82 >> 62)
    {
      break;
    }

    if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      goto LABEL_73;
    }

    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_73:

      sub_10076BEFC();
      sub_10076D3AC();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v122 = sub_10077158C();
  v82 = v76;
  if (v122)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  sub_10076D3AC();
LABEL_86:
  sub_100016E2C(v262, v254, &unk_1009467E0);
  v123 = v244;
  sub_10076354C();
  sub_10000CD74(v268);
  v124 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v125 = v245;
  v126 = &v73[v124];
  v127 = v246;
  (*(v245 + 24))(v126, v123, v246);
  swift_endAccess();
  [v73 *(v70 + 1552)];
  (*(v125 + 8))(v123, v127);
  if (v44)
  {
    v128 = sub_1007601CC();
  }

  else
  {
    v128 = 0;
  }

  sub_1007601EC();
  v129 = v241;
  sub_10007AFB4(v128, v241);

  v130 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v129, &v73[v130]);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v129);
  if (v44)
  {
    v44 = sub_1007601CC();
  }

  *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v44;

  sub_10057DBD4();

  v131 = v260;
  v132 = v247;
  v133 = v264;
  (*(v260 + 16))(v247, v263, v264);
  v134 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v131 + 24))(&v73[v134], v132, v133);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v255)(v132, v133);
  if (v10)
  {
    v260 = v131 + 8;
    (*(v234 + 104))(v229, enum case for VideoFillMode.scaleAspectFill(_:), v235);

    sub_10076B84C();
    sub_10076BEFC();
    v135 = v254;
    sub_10076D3AC();

    (*(v232 + 56))(v135, 0, 1, v233);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    v136 = v253;
    sub_10076F5CC();
    sub_10076B7CC();
    v137 = v236;
    sub_10076B85C();
    v138 = sub_10075DB7C();
    (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
    v139 = v238;
    sub_10076B81C();
    v140 = v237;
    sub_10076B80C();
    type metadata accessor for VideoView();
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView);
    v141 = v136;
    v142 = sub_100762EEC();
    sub_10000CFBC(v140, &unk_10094C030);
    sub_10000CFBC(v139, &unk_10094C030);
    sub_10000CFBC(v137, &unk_1009435D0);
    sub_10000CFBC(v268, &qword_100943310);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v144 = Strong;
      v145 = [Strong superview];
      if (!v145)
      {
        goto LABEL_97;
      }

      v146 = v145;
      sub_100016F40(0, &qword_1009441F0);
      v147 = v73;
      v148 = sub_100770EEC();

      v141 = v253;
      if (v148)
      {
        v149 = swift_unknownObjectWeakLoadStrong();
        if (v149)
        {
          v144 = v149;
          [v149 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v150 = swift_unknownObjectWeakLoadStrong();
    if (v150)
    {
      v151 = v150;
      [v73 addSubview:v150];
    }

    sub_10057E5D8();
    [v73 setNeedsLayout];

    v152 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v153 = *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v154 = v263;
    v155 = v141;
    if (v153)
    {
      [v153 removeFromSuperview];
      v156 = *&v73[v152];
    }

    else
    {
      v156 = 0;
    }

    v166 = v240;
    *&v73[v152] = 0;

    [v73 setNeedsLayout];

    (*(v239 + 8))(v251, v166);
    goto LABEL_145;
  }

  if (!v259)
  {
    goto LABEL_133;
  }

  result = sub_10076C41C();
  if (result >> 62)
  {
    v196 = result;
    v197 = sub_10077158C();
    result = v196;
    if (!v197)
    {
      goto LABEL_132;
    }

LABEL_105:
    v215 = 0;
    v260 = v131 + 8;
    if ((result & 0xC000000000000001) == 0)
    {
      v158 = v258;
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

LABEL_108:

      v159 = v216;
      v160 = v265;
      (v252)(v216, v158, v265);
      v161 = v261;
      v162 = (*(v261 + 88))(v159, v160);
      v163 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v161 + 8))(v159, v160);
      if (v162 == v163)
      {
        v164 = 1;
        v165 = v227;
      }

      else
      {
        v167 = sub_10076C40C();
        v165 = v227;
        sub_10007AFB4(v167, v227);

        v164 = 0;
      }

      v168 = v221;
      v169 = v219;
      v170 = v235;
      v171 = v234;
      v172 = v217;
      v173 = v218;
      (*(v218 + 56))(v165, v164, 1, v219);
      (*(v171 + 104))(v224, enum case for VideoFillMode.scaleAspectFill(_:), v170);
      sub_10076B84C();
      sub_10076BEFC();
      sub_10076D3AC();

      (*(v232 + 56))(v172, 0, 1, v233);
      sub_10076B7EC();
      sub_10076B82C();
      LODWORD(v254) = sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      sub_100016E2C(v165, v168, &qword_10094A428);
      if ((*(v173 + 48))(v168, 1, v169) == 1)
      {
        sub_10000CFBC(v168, &qword_10094A428);
      }

      else
      {
        sub_100125E90(v168);
      }

      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      v174 = v268[0];
      sub_10076B7CC();
      v175 = v236;
      sub_10076B85C();
      v176 = sub_10075DB7C();
      (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
      v177 = v238;
      sub_10076B81C();
      v178 = v237;
      sub_10076B80C();
      type metadata accessor for VideoView();
      sub_1004633B0(&qword_100942810, type metadata accessor for VideoView);
      v254 = v174;
      v179 = sub_100762EEC();
      sub_10000CFBC(v178, &unk_10094C030);
      sub_10000CFBC(v177, &unk_10094C030);
      sub_10000CFBC(v175, &unk_1009435D0);
      sub_10000CFBC(v268, &qword_100943310);
      v180 = swift_unknownObjectWeakLoadStrong();
      v181 = v263;
      v182 = v227;
      if (!v180)
      {
        goto LABEL_122;
      }

      v183 = v180;
      v184 = v263;
      v185 = [v180 superview];
      if (v185)
      {
        v186 = v185;
        sub_100016F40(0, &qword_1009441F0);
        v187 = v73;
        v188 = sub_100770EEC();

        v182 = v227;
        v181 = v184;
        if ((v188 & 1) == 0)
        {
          goto LABEL_122;
        }

        v189 = swift_unknownObjectWeakLoadStrong();
        if (!v189)
        {
          goto LABEL_122;
        }

        v183 = v189;
        [v189 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v190 = swift_unknownObjectWeakLoadStrong();
      if (v190)
      {
        v191 = v190;
        [v73 addSubview:v190];
      }

      sub_10057E5D8();
      [v73 setNeedsLayout];

      v192 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
      v193 = *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
      v194 = v240;
      v154 = v181;
      if (v193)
      {
        [v193 removeFromSuperview];
        v195 = *&v73[v192];
      }

      else
      {
        v195 = 0;
      }

      *&v73[v192] = 0;

      [v73 setNeedsLayout];

      (*(v239 + 8))(v226, v194);
      sub_10000CFBC(v182, &qword_10094A428);
      v155 = v253;
      goto LABEL_145;
    }

LABEL_152:
    sub_10077149C();
    v158 = v258;
    goto LABEL_108;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v198 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
  v199 = *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
  if (v199)
  {
    [v199 removeFromSuperview];
    v200 = *&v73[v198];
  }

  else
  {
    v200 = 0;
  }

  v155 = v253;
  v201 = v263;
  *&v73[v198] = 0;

  [v73 setNeedsLayout];
  v202 = swift_unknownObjectWeakLoadStrong();
  if (v202)
  {
    v203 = v202;
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView);
    v204 = [v203 superview];
    if (!v204)
    {
      goto LABEL_141;
    }

    v205 = v204;
    sub_100016F40(0, &qword_1009441F0);
    v206 = v73;
    v207 = sub_100770EEC();

    if (v207)
    {
      v208 = swift_unknownObjectWeakLoadStrong();
      if (v208)
      {
        v203 = v208;
        [v208 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v209 = swift_unknownObjectWeakLoadStrong();
  if (v209)
  {
    v210 = v209;
    [v73 addSubview:v209];
  }

  sub_10057E5D8();
  [v73 setNeedsLayout];
  v154 = v201;
LABEL_145:
  [v73 setNeedsLayout];

  (v255)(v154, v264);
  (*(v261 + 8))(v258, v265);
  sub_10000CFBC(v262, &unk_1009467E0);
  if (sub_10076BB0C())
  {
    v211 = sub_10076518C();

    v212 = v242;
    if (v211)
    {
      v213 = [objc_opt_self() clearColor];
      [v212 setBackgroundColor:v213];
    }
  }

  else
  {
    v211 = 0;
    v212 = v242;
  }

  sub_100387B00(v211, v155);
  [v212 setNeedsLayout];

  [v212 setNeedsLayout];
}

void sub_10045F5E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v176 = a4;
  v9 = sub_1007673CC();
  v158 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v133[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10000A5D4(&unk_100942850);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v133[-v14];
  v16 = sub_10076749C();
  v165 = *(v16 - 8);
  v166 = v16;
  __chkstk_darwin(v16);
  v164 = &v133[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1007679DC();
  v169 = *(v18 - 8);
  *&v170 = v18;
  __chkstk_darwin(v18);
  v152 = &v133[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_10076997C();
  v161 = *(v20 - 8);
  v162 = v20;
  __chkstk_darwin(v20);
  v160 = &v133[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = sub_10076443C();
  v173 = *(v22 - 8);
  v174 = v22;
  __chkstk_darwin(v22);
  v159 = &v133[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v172 = &v133[-v25];
  v178 = sub_10076747C();
  v171 = *(v178 - 8);
  __chkstk_darwin(v178);
  v163 = &v133[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v177 = &v133[-v28];
  v29 = sub_10000A5D4(&unk_100957F90);
  __chkstk_darwin(v29 - 8);
  v153 = &v133[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v175 = &v133[-v32];
  v33 = sub_10076BF6C();
  __chkstk_darwin(v33 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v157 = &v133[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = v15;
  v150 = v13;
  v151 = v12;
  v135 = v11;
  v136 = v9;
  v168 = v5;
  v35 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v36 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v155 = v35;
  v37 = *(v35 + v36);
  if (v37 >> 62)
  {
    v38 = sub_10077158C();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = a1;
  v39 = v168;
  if (v38)
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v40 = a3;

    v41 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v42 = sub_10077149C();
      }

      else
      {
        v42 = *(v37 + v41 + 4);
      }

      v43 = v42;
      ++v41;
      v214[0] = v42;
      type metadata accessor for BorderedScreenshotView();
      sub_1004633B0(&qword_10094A410, type metadata accessor for BorderedScreenshotView);
      v44 = v43;
      sub_10077140C();
      sub_100760BEC();
      sub_100016C74(v215);
      v45 = *&v44[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      v216.value.super.isa = 0;
      v216.is_nil = 0;
      sub_10075FCEC(v216, v46);
    }

    while (v38 != v41);

    a3 = v40;
    v39 = v168;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    v214[0] = v48;
    type metadata accessor for VideoView();
    sub_1004633B0(&qword_100957FA0, type metadata accessor for VideoView);
    v49 = v48;
    sub_10077140C();
    sub_100760BEC();
    v39 = v168;

    sub_100016C74(v215);
  }

  v5 = *(v39 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
  v13 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v50 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v217.value.super.isa = 0;
  v217.is_nil = 0;
  sub_10075FCEC(v217, v51);

  v52 = *(v5 + v13);
  sub_10075FD2C();
  sub_1004633B0(&qword_100941820, &type metadata accessor for ArtworkView);
  v53 = v52;
  v154 = a3;
  sub_100760BFC();

  if (sub_10076BB5C())
  {
    v54 = qword_10093FBE0;
    v37 = *(v5 + v13);
    if (v54 == -1)
    {
LABEL_16:
      v55 = sub_100763ADC();
      sub_10000A61C(v55, qword_10099DDA0);
      sub_1007639AC();
      [v37 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v37 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v56 = *(v5 + v13);
      sub_100760B8C();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v57 = sub_10076BB6C();
  v140 = v58;
  v141 = v57;
  v59 = sub_10076BBEC();
  v61 = v60;
  v62 = sub_10076BB0C();
  v143 = v59;
  if (v62)
  {
    v63 = sub_10076518C();

    v64 = v176;
    v65 = v177;
    v67 = v169;
    v66 = v170;
    v68 = v159;
    if (v63)
    {
      v69 = sub_10076C3EC();
      v144 = v70;
      v145 = v69;
    }

    else
    {
      v144 = 0;
      v145 = 0;
    }
  }

  else
  {
    v144 = 0;
    v145 = 0;
    v64 = v176;
    v65 = v177;
    v67 = v169;
    v66 = v170;
    v68 = v159;
  }

  v168 = sub_10076282C();
  v159 = sub_10076284C();
  v71 = sub_10076286C();
  (*(v67 + 56))(v175, 1, 1, v66);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v72 = v178;
  v73 = sub_10000A61C(v178, qword_1009A0690);
  v74 = v171 + 16;
  v75 = *(v171 + 16);
  v75(v65, v73, v72);
  v76 = sub_10077071C();
  v147 = v75;
  v148 = v74;
  v134 = v71;
  v142 = v61;
  if ((v76 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v77 = qword_100944CA0;
    goto LABEL_32;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v77 = qword_100944C88;
LABEL_32:
    v78 = v174;
    v79 = sub_10000A61C(v174, v77);
    v80 = v173;
    (*(v173 + 16))(v68, v79, v78);
    (*(v80 + 32))(v172, v68, v78);
    v81 = [v64 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v146 = sub_10076DDDC();
    swift_allocObject();
    v157 = sub_10076DDBC();
    v82 = objc_opt_self();
    v138 = v82;
    v83 = [v82 preferredFontForTextStyle:UIFontTextStyleBody];
    v84 = sub_10076C04C();
    v215[3] = v84;
    v156 = sub_1004633B0(&qword_100943230, &type metadata accessor for Feature);
    v215[4] = v156;
    v85 = sub_10000DB7C(v215);
    v86 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139 = *(*(v84 - 8) + 104);
    v137 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v139(v85, enum case for Feature.measurement_with_labelplaceholder(_:), v84);
    sub_10076C90C();
    sub_10000CD74(v215);
    v87 = v160;
    sub_10076996C();
    sub_10076994C();
    v88 = v162;
    v161 = *(v161 + 8);
    (v161)(v87, v162);
    v89 = [v82 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v214[3] = v84;
    v214[4] = v156;
    v90 = sub_10000DB7C(v214);
    v91 = v86;
    v92 = v139;
    v139(v90, v91, v84);
    sub_10076C90C();
    sub_10000CD74(v214);
    sub_10076996C();
    sub_10076994C();
    v93 = v161;
    (v161)(v87, v88);
    v94 = [v138 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v213[3] = v84;
    v213[4] = v156;
    v95 = sub_10000DB7C(v213);
    v92(v95, v137, v84);
    sub_10076C90C();
    sub_10000CD74(v213);
    sub_10076996C();
    sub_10076994C();
    v93(v87, v88);
    v96 = v168;
    LODWORD(v162) = sub_10001D420(0, v168) & (v96 != 0);
    if (v162 == 1)
    {
      v97 = objc_allocWithZone(sub_10076DEDC());
      v98 = v176;
      v99 = sub_10076DECC();
      v100 = v153;
      sub_100016E2C(v175, v153, &unk_100957F90);
      v102 = v169;
      v101 = v170;
      v103 = *(v169 + 48);
      if (v103(v100, 1, v170) == 1)
      {
        v104 = v152;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        v105 = v103(v100, 1, v101);
        v106 = v159;
        if (v105 != 1)
        {
          sub_10000CFBC(v100, &unk_100957F90);
        }
      }

      else
      {
        v104 = v152;
        (*(v102 + 32))(v152, v100, v101);
        v106 = v159;
      }

      v109 = v99;
      sub_10001A588(v168, v104, v109);

      (*(v102 + 8))(v104, v101);
      v107 = v146;
      swift_allocObject();
      v108 = sub_10076DDAC();
    }

    else
    {
      v107 = v146;
      swift_allocObject();
      v108 = sub_10076DDBC();
      v106 = v159;
    }

    if ((sub_10001D420(v106, 0) & (v106 != 0)) == 1)
    {
      v110 = v176;
      sub_1004EF9EC(v106, v134 & 1);
      swift_allocObject();
      v111 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v111 = sub_10076DDBC();
      v110 = v176;
    }

    v147(v163, v177, v178);
    v212 = &protocol witness table for LayoutViewPlaceholder;
    v211 = v107;
    v210 = v157;
    v209 = 0;
    *&v207[40] = 0u;
    v208 = 0u;
    sub_10000A570(v215, v207);
    sub_10000A570(v214, &v206);
    v205 = 0;
    v203 = 0u;
    v204 = 0u;
    v202 = 0;
    v200 = 0u;
    v201 = 0u;

    v112 = sub_10076DDCC();
    v199 = &protocol witness table for LayoutViewPlaceholder;
    v198 = v107;
    v197 = v112;
    v196 = 0;
    v194 = 0u;
    v195 = 0u;
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;
    v187 = 0;
    v186 = 0u;
    *&v185[40] = 0u;
    sub_10000A570(v213, v185);
    v183 = v107;
    v184 = &protocol witness table for LayoutViewPlaceholder;
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v182 = v108;
    v180 = v107;
    v179 = v111;
    v113 = v164;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v114 = swift_allocObject();
    v170 = xmmword_1007841E0;
    *(v114 + 16) = xmmword_1007841E0;
    *(v114 + 32) = v110;
    v115 = v110;
    v116 = sub_10076DEEC();
    sub_1004633B0(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
    v117 = v166;
    sub_10076D2AC();

    (*(v165 + 8))(v113, v117);
    sub_10000CD74(v213);
    sub_10000CD74(v214);
    sub_10000CD74(v215);
    (*(v173 + 8))(v172, v174);
    (*(v171 + 8))(v177, v178);
    sub_10000CFBC(v175, &unk_100957F90);
    v118 = v149;
    sub_10076ABBC();
    v119 = swift_allocObject();
    *(v119 + 16) = v170;
    *(v119 + 32) = v115;
    v120 = v115;
    v121 = sub_10076DEEC();
    sub_100071820(&qword_100942880, &unk_100942850);
    v122 = v151;
    sub_10076D3EC();

    (*(v150 + 8))(v118, v122);
    v123 = sub_10076283C();
    v68 = sub_10076281C();
    v124 = sub_10076280C();
    if (v124 >> 62)
    {
      v126 = v124;
      v127 = sub_10077158C();
      v124 = v126;
      v64 = v154;
      if (!v127)
      {
LABEL_50:

        v125 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v64 = v154;
      if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }
    }

    if ((v124 & 0xC000000000000001) != 0)
    {
      v125 = sub_10077149C();
    }

    else
    {
      if (!*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v125 = *(v124 + 32);
    }

LABEL_51:
    v128 = sub_10076288C();
    if (!(v128 >> 62))
    {
      if (!*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_53;
    }

    v130 = v128;
    v131 = sub_10077158C();
    v128 = v130;
    if (!v131)
    {
      break;
    }

LABEL_53:
    if ((v128 & 0xC000000000000001) != 0)
    {
      v129 = sub_10077149C();
      goto LABEL_56;
    }

    if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v129 = *(v128 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v129 = 0;
LABEL_59:
  v132 = v135;
  sub_10076285C();
  sub_100140784(v123, v68, v125, v129, v120, v64, v132);

  (*(v158 + 8))(v132, v136);
}

uint64_t sub_100460BD4@<X0>(uint64_t a1@<X8>)
{
  if (sub_1007706EC())
  {
    v2 = sub_10076D39C();
    v3 = *(*(v2 - 8) + 56);
    v4 = v2;
    v5 = a1;
    v6 = 1;
    goto LABEL_19;
  }

  v7 = sub_10076FF9C();
  v9 = v8;
  if (v7 == sub_10076FF9C() && v9 == v10)
  {

    goto LABEL_15;
  }

  v12 = sub_10077167C();

  if (v12)
  {
LABEL_15:
    if (qword_100940570 != -1)
    {
      swift_once();
    }

    v20 = sub_10076D39C();
    v21 = v20;
    v22 = qword_10099FAB8;
    goto LABEL_18;
  }

  v13 = sub_10076FF9C();
  v15 = v14;
  if (v13 == sub_10076FF9C() && v15 == v16)
  {
  }

  else
  {
    v18 = sub_10077167C();

    if ((v18 & 1) == 0)
    {
      sub_10076D37C();
      v19 = sub_10076D39C();
      v3 = *(*(v19 - 8) + 56);
      v4 = v19;
      v5 = a1;
      v6 = 0;
      goto LABEL_19;
    }
  }

  if (qword_100940578 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D39C();
  v21 = v20;
  v22 = qword_10099FAD0;
LABEL_18:
  v23 = sub_10000A61C(v20, v22);
  v25 = *(v21 - 8);
  (*(v25 + 16))(a1, v23, v21);
  v3 = *(v25 + 56);
  v5 = a1;
  v6 = 0;
  v4 = v21;
LABEL_19:

  return v3(v5, v6, 1, v4);
}

id sub_100460E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  sub_100387B00(a1, a2);

  return [v3 setNeedsLayout];
}

id sub_100460F48(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  sub_100387B00(a1, a2);
  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

uint64_t sub_100461038(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = sub_10076F08C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076F0CC();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_10076F07C());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10076F0EC();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&unk_1009520F0);
  sub_10076289C();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_10045D1F0(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43;
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_10045F5E0(v26, v81, v72, v42);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_10001CE50(*v47);
    sub_10053D600(v49, v48);
    sub_1000167E0(v49);
    sub_100016F40(0, &qword_1009471F0);
    v72 = sub_10077068C();
    sub_10076F0DC();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    sub_10076F14C();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_100463338;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100895D60;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004633B0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_100071820(&qword_100945170, &unk_10094E1C0);
    v59 = v77;
    v60 = v69;
    sub_1007712CC();
    v61 = v65;
    v62 = v72;
    sub_10077064C();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_1004617EC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_1004633A4;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000513F0;
    aBlock[3] = &unk_100895DB0;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_10046195C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
  v7 = *&a3[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_1004633B0(&unk_10095A480, type metadata accessor for AdvertsSearchResultContentView);
  v9 = v7;
  sub_100767CFC();

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_100767D3C();

  v11 = *&a3[v6];
  *&a3[v6] = a4;
  v12 = a4;

  [a3 setUserInteractionEnabled:1];
}

uint64_t sub_100461BC4(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_100461C6C(a1, a2, a3, v9, a5);
}

uint64_t sub_100461C6C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v137 = a5;
  v138 = a3;
  v170 = a2;
  v6 = sub_10000A5D4(&qword_10094E260);
  __chkstk_darwin(v6 - 8);
  v133 = &v132 - v7;
  v135 = sub_10076350C();
  v142 = *(v135 - 8);
  __chkstk_darwin(v135);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v132 - v11;
  __chkstk_darwin(v13);
  v136 = &v132 - v14;
  v15 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v15 - 8);
  v143 = &v132 - v16;
  v17 = sub_10077164C();
  v140 = *(v17 - 8);
  v141 = v17;
  __chkstk_darwin(v17);
  v139 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1007673CC();
  v166 = *(v19 - 8);
  v167 = v19;
  __chkstk_darwin(v19);
  v21 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076749C();
  v164 = *(v22 - 8);
  v165 = v22;
  __chkstk_darwin(v22);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076997C();
  v160 = *(v24 - 8);
  v161 = v24;
  __chkstk_darwin(v24);
  v159 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076443C();
  v175 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v173 = &v132 - v30;
  v176 = sub_10076747C();
  v174 = *(v176 - 8);
  __chkstk_darwin(v176);
  v162 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v132 - v33;
  sub_100770ACC();
  v35 = sub_10076BB6C();
  v149 = v36;
  v150 = v35;
  v37 = sub_10076BBEC();
  v151 = v38;
  v152 = v37;
  if (sub_10076BB0C() && (v39 = sub_10076518C(), , v39))
  {
    v40 = sub_10076C3EC();
    v156 = v41;
    v157 = v40;
  }

  else
  {
    v156 = 0;
    v157 = 0;
  }

  sub_10076286C();
  v42 = [v170 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v43 = v176;
  v44 = sub_10000A61C(v176, qword_1009A0690);
  v153 = *(v174 + 16);
  v154 = v174 + 16;
  v153(v34, v44, v43);
  v45 = sub_10077071C();
  v168 = v21;
  v169 = a1;
  v134 = v12;
  v132 = v9;
  if (v45)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v46 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v46 = qword_100944CA0;
  }

  v47 = sub_10000A61C(v26, v46);
  v48 = v175;
  (*(v175 + 16))(v28, v47, v26);
  (*(v48 + 32))();
  v49 = [v42 preferredContentSizeCategory];
  sub_10077084C();
  v158 = v42;

  sub_1007643EC();
  sub_10076441C();
  v172 = v34;
  sub_10076746C();
  sub_10076745C();
  v50 = sub_10076DDDC();
  swift_allocObject();
  v148 = sub_10076DDBC();
  v51 = objc_opt_self();
  v146 = v51;
  v52 = [v51 preferredFontForTextStyle:UIFontTextStyleBody];
  v53 = sub_10076C04C();
  v213[3] = v53;
  v171 = sub_1004633B0(&qword_100943230, &type metadata accessor for Feature);
  v213[4] = v171;
  v54 = sub_10000DB7C(v213);
  v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v56 = *(v53 - 8);
  v155 = v26;
  v147 = *(v56 + 104);
  v57 = v56 + 104;
  v144 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v147(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
  v145 = v57;
  sub_10076C90C();
  sub_10000CD74(v213);
  v58 = v159;
  sub_10076996C();
  sub_10076994C();
  v59 = v161;
  v160 = *(v160 + 8);
  (v160)(v58, v161);
  v60 = [v51 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v212[3] = v53;
  v212[4] = v171;
  v61 = sub_10000DB7C(v212);
  v62 = v55;
  v63 = v147;
  v147(v61, v62, v53);
  sub_10076C90C();
  sub_10000CD74(v212);
  sub_10076996C();
  sub_10076994C();
  v64 = v160;
  (v160)(v58, v59);
  v65 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v211[3] = v53;
  v211[4] = v171;
  v66 = sub_10000DB7C(v211);
  v63(v66, v144, v53);
  sub_10076C90C();
  sub_10000CD74(v211);
  sub_10076996C();
  sub_10076994C();
  v64(v58, v59);
  sub_10001D420(0, 0);
  swift_allocObject();
  v67 = sub_10076DDBC();

  sub_10001D420(0, 0);
  swift_allocObject();
  v68 = sub_10076DDBC();
  v153(v162, v172, v176);
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v50;
  v69 = v148;
  v208 = v148;
  v207 = 0;
  *&v205[40] = 0u;
  v206 = 0u;
  sub_10000A570(v213, v205);
  sub_10000A570(v212, &v204);
  v203 = 0;
  v201 = 0u;
  v202 = 0u;
  v200 = 0;
  v198 = 0u;
  v199 = 0u;

  v70 = sub_10076DDCC();
  v197 = &protocol witness table for LayoutViewPlaceholder;
  v196 = v50;
  v195 = v70;
  v194 = 0;
  v192 = 0u;
  v193 = 0u;
  v191 = 0;
  v189 = 0u;
  v190 = 0u;
  v188 = 0;
  v186 = 0u;
  v187 = 0u;
  v185 = 0;
  v184 = 0u;
  *&v183[40] = 0u;
  sub_10000A570(v211, v183);
  v181 = v50;
  v182 = &protocol witness table for LayoutViewPlaceholder;
  v179 = &protocol witness table for LayoutViewPlaceholder;
  v180 = v67;
  v178 = v50;
  v177 = v68;
  v71 = v163;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1007841E0;
  v73 = v158;
  *(v72 + 32) = v158;
  v74 = v73;
  v75 = sub_10076DEEC();
  sub_1004633B0(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout);
  v76 = v165;
  sub_10076D2AC();

  (*(v164 + 8))(v71, v76);
  sub_10000CD74(v211);
  sub_10000CD74(v212);
  sub_10000CD74(v213);
  (*(v175 + 8))(v173, v155);
  (*(v174 + 8))(v172, v176);
  v78 = v168;
  v77 = v169;
  sub_10076285C();
  if ((sub_1007673BC() & 1) == 0 || (sub_10067B804() & 1) == 0)
  {
    return (*(v166 + 8))(v78, v167);
  }

  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v79 = sub_10076D9AC();
  sub_10000A61C(v79, qword_1009A2368);
  v80 = v139;
  sub_10076D17C();
  v81 = v170;
  sub_10076D40C();
  (*(v140 + 8))(v80, v141);
  v82 = sub_10076283C();
  v83 = sub_10076281C();
  v84 = sub_10076280C();
  if (v84 >> 62)
  {
    v86 = v84;
    v87 = sub_10077158C();
    v84 = v86;
    if (v87)
    {
      goto LABEL_20;
    }

LABEL_26:

    v69 = 0;
    goto LABEL_27;
  }

  if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v84 & 0xC000000000000001) != 0)
  {
    v69 = sub_10077149C();
  }

  else
  {
    if (!*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v69 = *(v84 + 32);
  }

LABEL_27:
  v88 = sub_10076288C();
  if (v88 >> 62)
  {
    v90 = v88;
    v91 = sub_10077158C();
    v88 = v90;
    if (v91)
    {
      goto LABEL_29;
    }

LABEL_34:

    v176 = 0;
    goto LABEL_35;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v88 & 0xC000000000000001) != 0)
  {
    v89 = sub_10077149C();
  }

  else
  {
    if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v176 = v89;

LABEL_35:
  v92 = [v81 traitCollection];
  sub_100460BD4(v143);

  v67 = sub_10076283C();
  v68 = sub_10076281C();
  v93 = sub_10076280C();
  if (v93 >> 62)
  {
    v94 = v93;
    v95 = sub_10077158C();
    v93 = v94;
    if (v95)
    {
LABEL_37:
      if ((v93 & 0xC000000000000001) == 0)
      {
        if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v77 = *(v93 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v77 = sub_10077149C();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v77 = 0;
LABEL_43:
  v96 = sub_10076288C();
  if (v96 >> 62)
  {
    v99 = v96;
    v100 = sub_10077158C();
    v96 = v99;
    v175 = v69;
    if (v100)
    {
LABEL_45:
      if ((v96 & 0xC000000000000001) == 0)
      {
        if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v98 = *(v96 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v172 = sub_10077158C();
        if (v77)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v98 = sub_10077149C();
      goto LABEL_48;
    }
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v175 = v69;
    if (v97)
    {
      goto LABEL_45;
    }
  }

  v98 = 0;
LABEL_51:
  v101 = sub_1007673BC();
  v174 = v83;
  if ((v101 & 1) == 0)
  {

    v104 = v142;
    v106 = v135;
    v105 = v136;
    (*(v142 + 104))(v136, enum case for LockupMediaLayout.DisplayType.none(_:), v135);
LABEL_88:
    v128 = v176;
    type metadata accessor for LockupMediaView();
    v129 = v143;
    v130 = v81;
    v131 = v168;
    sub_100141F14(v82, v174, v175, v128, v143, v105, v130, v168);

    (*(v104 + 8))(v105, v106);
    sub_10000CFBC(v129, &unk_1009467E0);
    return (*(v166 + 8))(v131, v167);
  }

  if (v68 | v67)
  {
    v107 = v134;
    sub_10076D3AC();

    v104 = v142;
    v106 = v135;
    (*(v142 + 104))(v107, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v135);
    v105 = v136;
    (*(v104 + 32))(v136, v107, v106);
    goto LABEL_88;
  }

  v102 = sub_10057F8EC(v77, v98, 0, 1);
  v68 = v102;
  v83 = v102 >> 62;
  if (v102 >> 62)
  {
    goto LABEL_66;
  }

  v172 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v77)
  {
LABEL_55:
    v103 = sub_1007601CC();
    goto LABEL_68;
  }

LABEL_67:
  v103 = 0;
LABEL_68:
  LODWORD(v169) = sub_10057FC34(v103);

  v173 = v82;
  if (v77)
  {
    v108 = sub_1007601CC();
  }

  else
  {
    v108 = 0;
  }

  v109 = v166;
  v110 = v133;
  v111 = v78;
  v112 = v167;
  (*(v166 + 16))(v133, v111, v167);
  (*(v109 + 56))(v110, 0, 1, v112);
  v113 = sub_10058015C(v108, v110);

  sub_10000CFBC(v110, &qword_10094E260);
  if (!v83)
  {
    result = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v173;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_10077158C();
  v82 = v173;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v68 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_76:

    v114 = sub_10076BDCC();

    if (v114)
    {

      v104 = v142;
      v115 = v134;
      v106 = v135;
      (*(v142 + 104))(v134, enum case for LockupMediaLayout.DisplayType.landscape(_:), v135);
      v105 = v136;
LABEL_87:
      (*(v104 + 32))(v105, v115, v106);
      goto LABEL_88;
    }

LABEL_80:
    v116 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v117 = v142;
    v118 = v132;
    v119 = v135;
    v171 = *(v142 + 104);
    v171(v132, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v135);
    v120 = sub_1007634FC();
    v165 = *(v117 + 8);
    v165(v118, v119);
    if (((v172 >= v120) & v113) != 0 || (v116 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v119), v121 = sub_1007634FC(), v122 = v165, v165(v118, v119), ((v172 >= v121) & v169) != 0) || (v116 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v171(v118, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v119), v123 = sub_1007634FC(), v122(v118, v119), v172 >= v123))
    {

      v115 = v134;
      v171(v134, v116, v119);
      v81 = v170;
      v106 = v119;
    }

    else
    {
      v124 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v171(v118, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v119);
      v125 = sub_1007634FC();

      v122(v118, v119);
      v106 = v119;
      if (v172 == v125)
      {
        v115 = v134;
        v126 = v134;
        v127 = v124;
      }

      else
      {
        v127 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v115 = v134;
        v126 = v134;
      }

      v171(v126, v127, v119);
      v81 = v170;
    }

    v104 = v142;
    v105 = v136;
    v82 = v173;
    goto LABEL_87;
  }

  if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004632B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004632F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100463344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10046335C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004633B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100463400(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  sub_10075DB6C();
  v14 = sub_10075DB7C();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(LPLinkView);
    sub_10075DB1C(v18);
    v20 = v19;
    v21 = [v17 initWithURL:v19];

    (*(v15 + 8))(v13, v14);
    *&v5[OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView] = v21;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v26 = v22;
    [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    v27 = OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView;
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView] _setApplyCornerRadius:1];
    [*&v26[v27] _setDisableAnimations:1];
    [*&v26[v27] _setDisableTapGesture:1];
    [*&v26[v27] _setForceFlexibleWidth:1];
    [v26 addSubview:*&v26[v27]];

    return v26;
  }

  return result;
}

unint64_t sub_100463810()
{
  result = qword_100957FD8;
  if (!qword_100957FD8)
  {
    sub_10076027C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957FD8);
  }

  return result;
}

void sub_100463868(uint64_t a1, uint64_t a2)
{
  v90 = sub_10075F65C();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100765F6C();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100766EDC();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v9 - 8);
  v83 = &v77 - v10;
  v11 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v11 - 8);
  v80 = &v77 - v12;
  v78 = sub_10076C15C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100762DBC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076023C();
  v18 = sub_100762DAC();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_10076B8EC();
    v20 = v19;
    sub_10076025C();
    v22 = v21;
    if (v20)
    {
      v23 = sub_10076FF6C();

      if (!v22)
      {
        goto LABEL_8;
      }

LABEL_6:
      v25 = sub_10076FF6C();

      goto LABEL_9;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_10076025C();
    v23 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:0];

  v95 = v26;
  [v26 setModalPresentationStyle:7];
  v27 = sub_10076024C();
  v28 = v27;
  if (v27 >> 62)
  {
LABEL_46:
    v29 = sub_10077158C();
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_47:

    if (sub_10076022C())
    {
      sub_10076020C();
      if (!v70)
      {
        v109._countAndFlagsBits = 0x432E6E6F69746341;
        v109._object = 0xED00006C65636E61;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        sub_1007622EC(v109, v110);
      }

      v71 = sub_10076FF6C();

      v72 = [objc_opt_self() actionWithTitle:v71 style:1 handler:0];

      v73 = v95;
      [v95 addAction:v72];
      [v73 setPreferredAction:v72];
    }

    v107 = 0;
    aBlock = 0u;
    v106 = 0u;
    (*(v77 + 104))(v79, enum case for FlowPage.viewController(_:), v78);
    v74 = sub_10075DB7C();
    (*(*(v74 - 8) + 56))(v80, 1, 1, v74);
    v75 = sub_10076096C();
    (*(*(v75 - 8) + 56))(v83, 1, 1, v75);
    v104 = sub_100464654();
    v103 = v95;
    v102 = v95;
    sub_10076F4DC();
    (*(v81 + 104))(v87, enum case for FlowPresentationContext.infer(_:), v82);
    (*(v85 + 104))(v89, enum case for FlowAnimationBehavior.infer(_:), v86);
    (*(v88 + 104))(v91, enum case for FlowOrigin.inapp(_:), v90);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v76 = sub_10075F5EC();
    sub_100563FF8(v76, 1, a2);

    return;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_11:
  v30 = 0;
  v97 = v28 & 0xFFFFFFFFFFFFFF8;
  v98 = v28 & 0xC000000000000001;
  v96 = &v106;
  v92 = "v16@?0@UIAlertAction8";
  v94 = v28;
  v93 = v29;
  while (1)
  {
    if (v98)
    {
      v31 = sub_10077149C();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v30 >= *(v97 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v28 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v33 = v30 != sub_1007601FC();
    v35 = ((v34 | v33) & 1) == 0;
    v36 = 2;
    if (!v35)
    {
      v36 = 0;
    }

    v100 = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    *(v37 + 24) = a2;

    v38 = sub_10076026C();
    v101 = v32;
    v102 = v31;
    if ((v38 & 1) == 0)
    {
      sub_10076B8EC();
      if (v47)
      {

        v48 = sub_10076FF6C();
      }

      else
      {

        v48 = 0;
      }

      v107 = sub_10046460C;
      v108 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v106 = sub_1006C1A98;
      *(&v106 + 1) = &unk_100895E20;
      v54 = _Block_copy(&aBlock);

      v55 = [objc_opt_self() actionWithTitle:v48 style:v100 handler:v54];
      goto LABEL_40;
    }

    v39 = sub_10076021C();
    if ((v40 & 1) == 0 && v30 == v39)
    {
      v41 = objc_opt_self();
      v42 = sub_10076FF6C();
      v43 = [v41 kitImageNamed:v42];

      if (!v43)
      {
        goto LABEL_53;
      }

      v44 = [v43 imageWithRenderingMode:2];

      v45 = [v44 _imageThatSuppressesAccessibilityHairlineThickening];
      goto LABEL_23;
    }

    v49 = sub_10076B8FC();
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = v49;
    if ((sub_10076BDFC() & 1) == 0)
    {
      if (sub_10076BE0C())
      {
        v45 = sub_10076044C();

LABEL_23:
        v99 = v45;
        v46 = v45;
        goto LABEL_38;
      }

LABEL_35:
      v99 = 0;
      goto LABEL_38;
    }

    v51 = sub_1005A6008(v50, 0);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 imageWithRenderingMode:2];

      v99 = [v53 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {

      v99 = 0;
    }

    v56 = v99;
LABEL_38:
    v57 = a1;
    v58 = a2;
    v59 = [objc_allocWithZone(UIViewController) init];
    v60 = sub_10076B8EC();
    v62 = v61;
    v63 = objc_allocWithZone(type metadata accessor for AlertActionTrailingImageView());
    v64 = sub_1005E36B4(v60, v62, v99);
    [v59 setView:v64];

    v65 = [v59 view];
    if (!v65)
    {
      break;
    }

    v66 = v65;
    [v65 intrinsicContentSize];
    v68 = v67;

    [v59 setPreferredContentSize:{0.0, v68}];
    v69 = objc_opt_self();
    v107 = sub_10046460C;
    v108 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_1000706E8;
    *(&v106 + 1) = &unk_100895E48;
    v54 = _Block_copy(&aBlock);
    v48 = v59;

    v55 = [v69 _actionWithContentViewController:v48 style:v100 handler:v54];

    a2 = v58;
    a1 = v57;
    v28 = v94;
    v29 = v93;
LABEL_40:
    _Block_release(v54);

    if (v55)
    {
      [v95 addAction:v55];
    }

    ++v30;
    if (v101 == v29)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1004645CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10046460C()
{
  sub_100563DC4(*(v0 + 16), 1, *(v0 + 24));
}

uint64_t sub_10046463C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100464654()
{
  result = qword_100957FE0;
  if (!qword_100957FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100957FE0);
  }

  return result;
}

unint64_t sub_1004646AC()
{
  result = qword_10094AAE0;
  if (!qword_10094AAE0)
  {
    type metadata accessor for InformationRibbonCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AAE0);
  }

  return result;
}

uint64_t sub_100464714(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100946720);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076F4AC();
  (*(v4 + 8))(v6, v3);
  sub_10076337C();
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v7 = v11;
  v8 = sub_100630CB4();
  v9 = sub_100330914();
  if (v9)
  {
    sub_10032F1F4(v9, v7, a2, v8);
  }

  return swift_unknownObjectRelease();
}

id sub_1004648B8(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10076C0BC();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
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

    v15 = *&v9[OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = sub_10076FF6C();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
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
    sub_100240254(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

id sub_100464C98()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_100464DC4()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v1)
  {
    [*(v1 + OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel) measurementsWithFitting:v0 in:?];
  }

  else
  {
    v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 traitCollection];
      sub_10076D9EC();
    }
  }
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell()
{
  result = qword_100958020;
  if (!qword_100958020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100464F98()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100465034()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10076C2DC();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000A5D4(&qword_100942910);
  v15 = *(sub_10076C20C() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v43 = v17 + v16;
  v49 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C29C();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10076C29C();
  v49 = 0;
  v42 = v7;
  sub_10076C29C();
  v38 = v14;
  v41 = v11;
  sub_10076C1CC();
  v49 = 0x3FF8000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10076C1CC();
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 2 * v27 + v45;
  v49 = 0x4004000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007704BC();
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v49 = 0x4014000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_100958030 = v37;
  return result;
}

uint64_t sub_100465A04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v6 = v11[1];
  v7 = sub_1007706EC();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100763FAC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_100763FDC();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_100465B90(uint64_t a1)
{
  v49 = a1;
  v1 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_10076C2DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v8 - 8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_10000A5D4(&qword_100942910);
  v19 = *(sub_10076C20C() - 8);
  v54 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_1007844F0;
  v57 = v21 + v20;
  v59 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v58 = 0x4030000000000000;
  v59 = 0x4020000000000000;
  sub_10076C27C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v50 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v5 + 104);
  v55 = v5 + 104;
  v51 = v27;
  v52 = v4;
  (v27)(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v59) = 0;
  sub_10076C29C();
  v59 = 0;
  sub_10076C29C();
  v56 = v18;
  v29 = v3;
  v41 = v15;
  sub_10076C1CC();
  v59 = 0x3FF0000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4024000000000000;
  sub_10076C27C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v51(v7, v50, v4);
  LOBYTE(v59) = 0;
  sub_10076C29C();
  v59 = 0;
  sub_10076C29C();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v45 = left;
  v39 = v12;
  sub_10076C1CC();
  v58 = 0x4000000000000000;
  v59 = 0x3FF8000000000000;
  sub_10076C27C();
  v48.i32[0] = v49 < 2;
  LOBYTE(v59) = v49 < 2;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  v43 = vdupq_n_s64(0x4041000000000000uLL);
  *v7 = v43;
  v40 = v7;
  v32 = v50;
  v33 = v51;
  v51(v7, v50, v52);
  v59 = 0;
  sub_10076C29C();
  v47 = v29;
  sub_10076C1CC();
  v42 = 2 * v31 + v54;
  v59 = 0x4000000000000000;
  sub_10076C29C();
  LOBYTE(v59) = v48.i8[0];
  sub_10076C29C();
  v59 = 0x4034000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  v34 = v40;
  *v40 = v43;
  v33(v34, v32, v52);
  sub_1007704BC();
  v59 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 4 * v54;
  v58 = 0x4000000000000000;
  v59 = 0x4004000000000000;
  sub_10076C27C();
  LODWORD(v49) = v49 < 3;
  LOBYTE(v59) = v49;
  LOBYTE(v58) = v48.i8[0];
  sub_10076C27C();
  v59 = 0x4038000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  v48 = vdupq_n_s64(0x404A000000000000uLL);
  *v34 = v48;
  v36 = v50;
  v37 = v51;
  v51(v34, v50, v52);
  v59 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v54 += v35;
  v59 = 0x4008000000000000;
  sub_10076C29C();
  LOBYTE(v59) = v49;
  sub_10076C29C();
  v59 = 0x4038000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  *v34 = v48;
  v37(v34, v36, v52);
  v59 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v46;
}

uint64_t sub_1004665E0()
{
  v1 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = sub_10076F75C();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = sub_100760A6C();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_1005C7D20(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = sub_10076FF9C();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_10000A5D4(&qword_100952410);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_100788B20;
      *(inited + 16) = xmmword_100788B20;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_1000FD3F0(v35);
      swift_setDeallocating();
      v48[2] = sub_10000A5D4(&qword_100948BD0);
      swift_arrayDestroy();
      sub_10000A5D4(&qword_1009451C8);
      sub_10076FB6C();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100783C60;
      sub_10076FB2C();
      sub_10076FB5C();
      sub_10076FB3C();
      sub_10017A1E0(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10076305C();
      swift_allocObject();
      v48[1] = sub_10076304C();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_1000FD3F0(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10076459C();
      swift_allocObject();
      v51 = sub_10076458C();
      sub_10000A5D4(&qword_1009451D0);
      sub_10076F3BC();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076084C();
      sub_10076084C();
      sub_10076F74C();
      v39 = v62;
      sub_10076F4EC();
      v40 = sub_10075DB7C();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = sub_100760A5C();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = sub_10076096C();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      sub_100760A4C();
      swift_allocObject();

      v46 = sub_100760A0C();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_10046702C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076F9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_10000A5D4(&unk_100958160);
  swift_allocObject();
  *&v1[v8] = sub_10076FE0C();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  sub_10076F92C();
  sub_100770B9C();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_100467240(uint64_t a1)
{
  v2 = sub_1007645BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v36 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v34 = ObjectType;
      v35 = v13;
      v32 = v15;
      v33 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v30 = v3;
        v31 = v2;
        v29 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_10076FF9C();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v36;
        v37.value._countAndFlagsBits = v20;
        v37.value._object = v22;
        v23 = sub_10077004C(v37);

        v3 = v30;
        if (v23)
        {
          v24 = v29;
          v33(v34, v32);
        }

        else
        {
        }

        v2 = v31;
      }

      else
      {

        v5 = v36;
      }
    }

    *(a1 + v6) = 0;
    v25 = [v7 text];
    if (v25)
    {
      v26 = v3;
      v27 = v25;
      sub_10076FF9C();

      v3 = v26;
    }

    v28 = [v7 markedTextRange];
    if (v28)
    {
    }

    sub_1007645AC();
    sub_10076FDFC();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100467568(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [a1 selectedTextRange];
  if (!v7)
  {
    v13 = 1;
    return v13 & 1;
  }

  v8 = v7;
  sub_100467A8C();
  v9 = [v8 end];
  v10 = [a1 endOfDocument];
  v11 = sub_100770EEC();

  v12 = a3 < 1 || sub_1007700AC() != 0;
  v14 = [a1 markedTextRange];
  if (v14)
  {
  }

  else if (!v12 && (v11 & 1) != 0)
  {
    v15 = 1;
    goto LABEL_10;
  }

  v15 = 0;
LABEL_10:
  v16 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction);
  v17 = v15;
  if (v16)
  {
    v17 = v15 | [v16 isHandlingWriting];
  }

  *(v4 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled) = v17 & 1;
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (v18)
  {
    v19 = a1 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v20 == 1)
  {
    v21 = v18;
    ObjectType = swift_getObjectType();
    v23 = a1;
    v24 = sub_1005C7D20(ObjectType, v21);
    if (v24)
    {
      (*(v21 + 16))(0, 0, ObjectType, v21);
    }

    v13 = !v24;
  }

  else
  {
    v13 = 1;
  }

  return v13 & 1;
}

uint64_t sub_10046797C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

unint64_t sub_100467A8C()
{
  result = qword_10094D040;
  if (!qword_10094D040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094D040);
  }

  return result;
}

void sub_100467AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1007645BC();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v12;
    v40 = v10;
    *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v37 = v21;
      v21(v20, v19);
      if (v23)
      {
        v35 = v20;
        v36 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = sub_10076FF9C();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41.value._countAndFlagsBits = v26;
        v41.value._object = v28;
        v29 = sub_10077004C(v41);

        v30 = v36;
        if (v29)
        {
          v37(v35, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v31 = [v16 text];
    if (v31)
    {
      v32 = v31;
      sub_10076FF9C();
    }

    v33 = [v16 markedTextRange];
    if (v33)
    {
    }

    v34 = v38;
    sub_1007645AC();
    sub_10076FDFC();
    (*(v39 + 8))(v34, v40);
  }
}

uint64_t sub_100467DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[23] = &type metadata for Double;
  v28[24] = &protocol witness table for Double;
  v28[19] = &protocol witness table for Double;
  v28[20] = 0x4049000000000000;
  v28[18] = &type metadata for Double;
  v28[14] = &protocol witness table for Double;
  v28[15] = 0x4024000000000000;
  v28[13] = &type metadata for Double;
  v28[10] = 0x4030000000000000;
  v28[8] = &type metadata for Double;
  v28[9] = &protocol witness table for Double;
  v28[5] = 0x402C000000000000;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v18 = sub_10000A61C(v6, qword_1009A0D90);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = sub_10076D9AC();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  sub_10076D9BC();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v22);
  v10(v12, v5, v2);
  sub_10076D9BC();
  v11(v5, v2);
  if (v20)
  {
    sub_1007706CC();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return sub_100763E7C();
}

char *sub_100468138(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100763E9C();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v14, qword_1009A0D78);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_100467DE8(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView] = sub_1001AB12C(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_1007708CC();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView]];
  sub_10000A5D4(&unk_100945BF0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100784500;
  *(v25 + 32) = sub_10076E59C();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = sub_10076E40C();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v24;
}

void sub_10046856C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100770BFC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = sub_1007706FC();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset + 8])
        {
          v16 = [Strong view];
          if (v16)
          {
            v17 = v16;
            [v16 safeAreaInsets];
            v19 = v18;

            v20 = [v14 navigationController];
            if (v20)
            {
              v21 = v20;
              sub_1001FE5D4();
              v23 = v22;
            }

            else
            {

              v23 = 0.0;
            }

            *v15 = v19 - v23;
            *(v15 + 8) = 0;
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = &v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = sub_100770BDC();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        sub_100770BEC();
        sub_100317990(v4);
        sub_100770BBC();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        *v24 = v29;
        v24[8] = 0;
      }
    }
  }

  else
  {

    [v0 floatingTabBarHeight];
  }
}

void sub_1004688C0()
{
  sub_10046856C();
  v1 = &OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    sub_100770ACC();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_10046856C();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_100468BEC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100763E9C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = ObjectType;
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1, v7);
  if (a1)
  {
    v10 = [a1 layoutDirection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 traitCollection];
  v12 = [v11 layoutDirection];

  if (!a1 || v10 != v12)
  {
    v13 = [v2 traitCollection];
    [v13 layoutDirection];

    sub_1007708DC();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_100467DE8(v15, v9);

  v17 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_100468F40(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

uint64_t sub_100468F5C()
{
  sub_10043AEE0(v0 + OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver()
{
  result = qword_1009581F0;
  if (!qword_1009581F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100469014()
{
  sub_1002153E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004690AC(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  v13 = a1;
  sub_1000FEDC4();
  v7 = a1;
  sub_10000A5D4(&qword_1009582A0);
  if (swift_dynamicCast())
  {
    sub_10000CD74(v12);
    sub_10076340C();
    v8 = sub_10075E11C();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_10075E11C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_10021560C(v6, v2 + v10);
  return swift_endAccess();
}

double sub_100469230(double a1)
{
  v2 = v1;
  v4 = sub_10076DD3C();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v36 - v8;
  __chkstk_darwin(v10);
  v12 = v36 - v11;
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  v16 = sub_10076DA7C();
  v39 = *(v16 - 8);
  v40 = v16;
  __chkstk_darwin(v16);
  v37 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940588 != -1)
  {
    swift_once();
  }

  sub_1000BFCF0(qword_10099FAF0, v42);
  v43 = v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn];
  sub_1000BFCF0(v42, v44);
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  v44[14] = sub_1007626BC();
  v44[15] = &protocol witness table for UILabel;
  v44[11] = v18;
  v41 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  v19 = v18;
  sub_10076D2DC();
  sub_10046A8CC(v42);
  v20 = [v2 traitCollection];
  if (sub_10077071C() & 1) != 0 || (sub_1007706EC())
  {
    v21 = 1;
  }

  else
  {
    v36[3] = v15;
    v46._object = 0x80000001007D1A70;
    v46._countAndFlagsBits = 0xD000000000000016;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v22 = sub_1007622EC(v46, v47);
    v36[1] = v23;
    v36[2] = v22;
    sub_10076DD2C();
    if (qword_100940CA8 != -1)
    {
      swift_once();
    }

    v24 = sub_10076D3DC();
    sub_10000A61C(v24, qword_1009A13F0);
    sub_10076DCFC();
    v25 = *(v38 + 8);
    v25(v6, v4);
    sub_10076DD1C();
    v25(v9, v4);
    sub_10076DD0C();
    v25(v12, v4);
    sub_10076DA5C();
    v26 = v37;
    sub_10076DA9C();
    sub_10076DA6C();
    v28 = v27;
    sub_10000CF78(v45, v45[3]);
    sub_10076E0FC();
    v30 = v29;
    sub_10000CF78(v44, v44[3]);
    sub_10076D41C();
    v32 = v31;
    (*(v39 + 8))(v26, v40);
    v21 = v30 + v28 + v32 > a1;
  }

  sub_100090EC4(v21, v42);
  sub_10000CF78(v42, v42[3]);
  sub_10076E0FC();
  v34 = v33;

  sub_10000CD74(v42);
  sub_1000BFD4C(v44);
  return v34;
}

void sub_1004696F4()
{
  qword_10099FB08 = &type metadata for Double;
  unk_10099FB10 = &protocol witness table for Double;
  qword_10099FAF0 = 0x4030000000000000;
  qword_10099FB38 = &type metadata for Double;
  unk_10099FB40 = &protocol witness table for Double;
  qword_10099FB20 = 0x4020000000000000;
  byte_10099FB18 = 1;
}

char *sub_100469730(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_rateAction;
  v19 = sub_10000A5D4(&qword_100947408);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn] = 0;
  if (qword_100940CA8 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A13F0);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel] = sub_1007626AC();
  v24 = type metadata accessor for StarRatingControl();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = 0;
  *&v25[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating] = 0;
  v26 = &v25[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_touchOutsideMargin];
  *v26 = xmmword_1007A4D80;
  *(v26 + 1) = xmmword_1007A4D80;
  v46.receiver = v25;
  v46.super_class = v24;
  v27 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setContentMode:3];
  *&v29[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl] = v29;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  sub_100016F40(0, &qword_100942F10);
  v38 = v37;
  v39 = sub_100770CFC();
  [v38 setTextColor:v39];

  [v35 addSubview:*&v35[v36]];
  v40 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl]];
  v41 = *&v35[v40];
  sub_100016F40(0, &qword_1009641D0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;

  v43 = sub_100770F1C();
  [v42 addAction:v43 forControlEvents:4096];

  return v35;
}

uint64_t sub_100469C5C()
{
  v0 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10000A5D4(&qword_100947400);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - v4;
  v6 = sub_10000A5D4(&qword_100947408);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_rateAction;
    swift_beginAccess();
    sub_10046A960(v11 + v12, v5);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {

      return sub_10000CFBC(v5, &qword_100947400);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      sub_100761FEC();
      sub_10075F91C();

      sub_100761FDC();
      v13 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();

      v14 = *(v13 - 8);
      if ((*(v14 + 48))(v2, 1, v13) == 1)
      {
        (*(v7 + 8))(v9, v6);

        return sub_10000CFBC(v2, &unk_100943200);
      }

      else
      {
        sub_100761FEC();
        v15 = sub_100761FDC();
        sub_100264204(v16[1], 1, v15, v2);

        (*(v7 + 8))(v9, v6);

        return (*(v14 + 8))(v2, v13);
      }
    }
  }

  return result;
}

uint64_t sub_10046A0E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076DD3C();
  v52 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v46 - v7;
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  __chkstk_darwin(v12);
  v51 = &v46 - v13;
  v14 = sub_10076DA7C();
  v54 = *(v14 - 8);
  v55 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v53 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v1;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "layoutSubviews", v15);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  sub_10076422C();
  v19 = v18;
  v56 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl];
  v59[0] = v56;
  v57 = type metadata accessor for StarRatingControl();
  sub_10076D2DC();
  v20 = &selRef_initWithTabBarSystemItem_tag_;
  v21 = [v1 traitCollection];
  if (qword_100940588 != -1)
  {
    swift_once();
  }

  if (sub_10077071C() & 1) != 0 || (sub_1007706EC())
  {

    sub_10000CD74(v61);
  }

  else
  {
    v50 = v3;
    v47 = "featureFlagEnabled";
    v63._object = 0x80000001007D1A70;
    v63._countAndFlagsBits = 0xD000000000000016;
    v65._countAndFlagsBits = 0;
    v65._object = 0xE000000000000000;
    v33 = sub_1007622EC(v63, v65);
    v48 = v34;
    v49 = v33;
    sub_10076DD2C();
    if (qword_100940CA8 != -1)
    {
      swift_once();
    }

    v35 = sub_10076D3DC();
    sub_10000A61C(v35, qword_1009A13F0);
    sub_10076DCFC();
    v36 = *(v52 + 8);
    v37 = v5;
    v38 = v50;
    v36(v37, v50);
    sub_10076DD1C();
    v36(v8, v38);
    sub_10076DD0C();
    v36(v11, v38);
    sub_10076DA5C();
    v39 = v53;
    sub_10076DA9C();
    sub_10076DA6C();
    v41 = v40;
    sub_10000CF78(v61, v61[3]);
    sub_10076E0FC();
    v43 = v42;
    sub_10000CF78(qword_10099FAF0, qword_10099FB08);
    sub_10076D41C();
    v45 = v44;

    (*(v54 + 8))(v39, v55);
    sub_10000CD74(v61);
    v20 = &selRef_initWithTabBarSystemItem_tag_;
    if (v19 >= v43 + v41 + v45)
    {
      v22._object = (v47 | 0x8000000000000000);
      v22._countAndFlagsBits = 0xD000000000000016;
      goto LABEL_7;
    }
  }

  v22._countAndFlagsBits = 0x525F4F545F504154;
  v22._object = 0xEB00000000455441;
LABEL_7:
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007622EC(v22, v64);
  v23 = sub_10076FF6C();

  [v17 setText:v23];

  sub_1000BFCF0(qword_10099FAF0, v59);
  v60 = v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn];
  sub_1000BFCF0(v59, v61);
  v61[14] = sub_1007626BC();
  v61[15] = &protocol witness table for UILabel;
  v61[11] = v17;
  v58 = v56;
  v24 = v17;
  sub_10076D2DC();
  sub_10046A8CC(v59);
  [v1 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 v20[274]];
  sub_10009124C(v31, v26, v28, v30);

  return sub_1000BFD4C(v61);
}

uint64_t type metadata accessor for ProductTapToRateView()
{
  result = qword_1009582E0;
  if (!qword_1009582E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046A7C0()
{
  sub_10046A868();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10046A868()
{
  if (!qword_1009582F0)
  {
    sub_10000CE78(&qword_100947408);
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1009582F0);
    }
  }
}

uint64_t sub_10046A920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10046A960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100947400);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046A9D0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_10094CD50);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = sub_10076428C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_1002AAFCC(v12);

  sub_10076425C();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  sub_10075FDCC();
  (*(v5 + 8))(v7, v4);
  sub_100766E2C();
  v14 = sub_100766E4C();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_10046ABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v165 = a6;
  v160 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100958350);
  __chkstk_darwin(v10 - 8);
  v162 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v139 - v13;
  v15 = sub_10076B96C();
  __chkstk_darwin(v15 - 8);
  v143 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10076201C();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v144 = &v139 - v19;
  v20 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v20 - 8);
  v159 = &v139 - v21;
  v157 = sub_100768FEC();
  v153 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10000A5D4(&unk_100946750);
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v139 - v23;
  v24 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v24 - 8);
  v151 = &v139 - v25;
  v150 = sub_10076A3AC();
  v148 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v27 - 8);
  v152 = &v139 - v28;
  v142 = sub_10077164C();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v30 - 8);
  v32 = &v139 - v31;
  v33 = sub_10076664C();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10076E21C();
  v163 = *(v37 - 8);
  v164 = v37;
  __chkstk_darwin(v37);
  v166 = &v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = a1;
  v39 = sub_10076BBAC();
  v161 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v139 = a4;
      sub_1000325F0();
      v42 = sub_100770CFC();
      sub_1002AD2F8(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = sub_10076FF6C();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v166;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
  v47 = v166;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_1002AC394(v165, v47);
  sub_1007665FC();
  sub_10046C5D4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v48 = sub_10077124C();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v163 + 56))(v32, 1, 1, v164);
    v50 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10007A910(v32, &v7[v50]);
    swift_endAccess();
    sub_1002AC7E0();
    sub_10000CFBC(v32, &unk_1009467C0);
    sub_10076660C();
    LOBYTE(v50) = sub_10077124C();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      sub_10076E1AC();
      sub_10000CF78(&v169, *(&v170 + 1));
      v59 = v140;
      sub_1000FF02C();
      sub_10076D40C();
      (*(v141 + 8))(v59, v142);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_10000CD74(&v169);
    }

    v58 = v160;
    v57 = ObjectType;
  }

  else
  {
    v54 = v163;
    v53 = v164;
    (*(v163 + 16))(v32, v47, v164);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10007A910(v32, &v7[v55]);
    swift_endAccess();
    sub_1002AC7E0();
    sub_10000CFBC(v32, &unk_1009467C0);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v160;
  }

  v60 = *&v57[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_10076BB6C();
  if (v61)
  {
    v62 = sub_10076FF6C();
  }

  else
  {
    v62 = 0;
  }

  [v60 setText:v62];

  v63 = sub_10076BB3C();
  v64 = sub_10076BA2C();
  v65 = v148;
  v66 = v150;
  (*(v148 + 104))(v149, enum case for OfferButtonPresenterViewAlignment.left(_:), v150);
  (*(v65 + 56))(v151, 1, 1, v66);
  sub_10046C5D4(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v67 = v152;
  sub_10076759C();
  v68 = sub_10000A5D4(&qword_100945590);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = v153;
  v70 = v157;
  (*(v153 + 104))(v154, enum case for OfferButtonSubtitlePosition.right(_:), v157);
  (*(v69 + 56))(v159, 1, 1, v70);
  sub_10046C5D4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition);
  v71 = v155;
  sub_10076759C();
  sub_1001F12C8(v63, v64, 0, v67, v71, v58, 0, 0);

  (*(v156 + 8))(v71, v158);
  sub_10000CFBC(v67, &unk_100946760);
  if (sub_10076BB3C())
  {
    v72 = v144;
    sub_100766A8C();
    v73 = v146;
    v74 = v145;
    v75 = v147;
    (*(v146 + 104))(v145, enum case for OfferLabelStyle.none(_:), v147);
    sub_10046C5D4(&unk_100958360, &type metadata accessor for OfferLabelStyle);
    v76 = sub_10076FF1C();
    v77 = *(v73 + 8);
    v77(v74, v75);
    v77(v72, v75);
    if ((v76 & 1) == 0)
    {

      sub_100766ACC();
      sub_10000A5D4(&unk_10094A8C0);
      sub_10076F64C();
      sub_10076FC1C();
      sub_10076148C();
      sub_10076FC1C();
      sub_10076130C();

      v80 = sub_100764E4C();
      swift_allocObject();
      v81 = sub_100764E2C();
      *(&v170 + 1) = v80;
      *&v169 = v81;
      v82 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
      v79 = ObjectType;
      swift_beginAccess();

      sub_100127EF0(&v169, &v79[v82]);
      swift_endAccess();
      [*&v79[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel] frame];
      v172.origin.x = 0.0;
      v172.origin.y = 0.0;
      v172.size.width = 0.0;
      v172.size.height = 0.0;
      if (CGRectEqualToRect(v171, v172))
      {
        v83 = objc_opt_self();
        v84 = [v83 areAnimationsEnabled];
        [v83 setAnimationsEnabled:0];
        sub_10046C5D4(&unk_100958370, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        sub_100764E3C();
        [v79 layoutIfNeeded];
        [v83 setAnimationsEnabled:v84];
      }

      else
      {
        sub_10046C5D4(&unk_100958370, type metadata accessor for MediumLockupCollectionViewCell);
        swift_unknownObjectRetain();
        sub_100764E3C();
      }

      goto LABEL_29;
    }
  }

  v169 = 0u;
  v170 = 0u;
  v78 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  v79 = ObjectType;
  swift_beginAccess();
  sub_100127EF0(&v169, &v79[v78]);
  swift_endAccess();
  sub_10046C1E8(0, 0);
LABEL_29:
  v85 = v165;
  v86 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel;
  v87 = *&v79[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v87 && ([v87 isHidden] & 1) == 0 && (v88 = *&v79[v86]) != 0)
  {
    v89 = [v88 hasContent];
  }

  else
  {
    v89 = 0;
  }

  v90 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_10003F0D4(&v79[v90], &v169);
  v91 = *(&v170 + 1);
  sub_10000CFBC(&v169, &unk_1009434C0);
  v92 = [v85 traitCollection];
  v93 = sub_1007706EC();

  if (v93)
  {
    v94 = [v85 traitCollection];
    v95 = sub_10077071C();

    sub_10076BA4C();
    if (!v96)
    {
      v98 = v95 ^ 1;
      goto LABEL_51;
    }

    if ((v95 & 1) == 0)
    {
      if (v91)
      {
        v97 = 1;
      }

      else
      {
        v97 = v89;
      }

      v98 = 1;
      if ((v97 & 1) == 0)
      {
LABEL_41:
        sub_1002AD5A8();
        v99 = *&v79[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v99)
        {
          v100 = v99;
          v101 = sub_10076FF6C();

          [v100 setText:v101];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_10076BA4C();
    if (!v102)
    {
      v98 = 0;
      goto LABEL_51;
    }
  }

  v98 = 0;
  if (v91)
  {
    v103 = v89;
  }

  else
  {
    v103 = 0;
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v104 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v105 = *&v79[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v105)
  {
    [v105 setHidden:1];
    v106 = *&v79[v104];
    if (v106)
    {
      [v106 setText:0];
    }
  }

LABEL_55:
  v107 = *&v79[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_10076BBEC();
  if (v108)
  {
    v109 = sub_10076FF6C();
  }

  else
  {
    v109 = 0;
  }

  [v107 setText:v109];

  v110 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v111 = *&v79[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v111 || ([v111 isHidden] & 1) != 0 || (v112 = *&v79[v110]) == 0)
  {
    if (v89)
    {
      if (v91)
      {
        goto LABEL_67;
      }
    }

    else if (!v91)
    {
      v114 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v113 = [v112 hasContent];
  if ((v89 & 1) == 0)
  {
    if (!v91)
    {
      v114 = 0;
      if (v113)
      {
        goto LABEL_92;
      }

LABEL_71:
      v115 = 0;
      goto LABEL_72;
    }

    if (v113)
    {
      v115 = 1;
      v114 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v114 = 1;
    goto LABEL_71;
  }

  if (!v91)
  {
    v114 = 1;
    v115 = 1;
    if (v113)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v113 & 1) == 0)
  {
LABEL_67:
    v114 = 2;
    goto LABEL_71;
  }

  v114 = 2;
LABEL_92:
  v115 = 1;
LABEL_72:
  v116 = [v107 hasContent];
  v117 = v161;
  if (!v116)
  {
LABEL_75:
    v119 = 1;
    goto LABEL_81;
  }

  v118 = v114 + v115;
  if (v98)
  {
    if (v118)
    {
      goto LABEL_75;
    }

    v119 = 0;
  }

  else
  {
    v119 = v118 > 1;
  }

LABEL_81:
  [v107 setHidden:v119];
  v120 = sub_10076BADC();
  if (!v120)
  {
    sub_1000325F0();
    v120 = sub_100770D1C();
  }

  v121 = v120;
  [v107 setTextColor:v120];

  v122 = &off_100911000;
  v123 = [v107 layer];
  sub_10076BAEC();
  v124 = sub_1007663AC();
  v125 = *(v124 - 8);
  v126 = *(v125 + 48);
  if (v126(v117, 1, v124) == 1)
  {
    sub_10000CFBC(v117, &unk_100958350);
LABEL_87:
    v133 = 0;
    goto LABEL_88;
  }

  sub_10076639C();
  (*(v125 + 8))(v117, v124);
  v127 = *(&v170 + 1);
  if (!*(&v170 + 1))
  {
    goto LABEL_87;
  }

  v128 = sub_10000CF78(&v169, *(&v170 + 1));
  v129 = *(v127 - 8);
  v130 = __chkstk_darwin(v128);
  v132 = &v139 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v129 + 16))(v132, v130);
  v133 = sub_10077165C();
  (*(v129 + 8))(v132, v127);
  v122 = &off_100911000;
  sub_10000CD74(&v169);
LABEL_88:
  [v123 setCompositingFilter:v133];

  swift_unknownObjectRelease();
  v134 = [v79 contentView];
  v135 = [v134 v122[274]];

  v136 = v162;
  sub_10076BAEC();
  v137 = v126(v136, 1, v124) == 1;
  sub_10000CFBC(v136, &unk_100958350);
  [v135 setAllowsGroupBlending:v137];

  [v79 setNeedsLayout];
  return (*(v163 + 8))(v166, v164);
}

id sub_10046C1E8(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = sub_10076FF9C();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = sub_10077167C();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = sub_10076FF6C();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      sub_10076FF9C();
    }

    v15 = sub_10077002C();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

uint64_t sub_10046C3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_10076E21C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1002AC394(a5, v9);
  sub_10076E1DC();
  (*(v7 + 8))(v9, v6);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_1002ADC24(a5);
  v10 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = [v10 absoluteDimension:?];
  v12 = sub_1007665BC();

  return v12;
}

uint64_t sub_10046C5D4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10046C61C(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v4 = sub_10077164C();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076E21C();
  v11 = *(v23 - 8);
  __chkstk_darwin(v23);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1002AC394(a3, v13);
  sub_1007665FC();
  sub_10046C5D4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v14 = sub_10077124C();
  (*(v8 + 8))(v10, v7);
  v15 = sub_1002ADC24(a3);
  if (v14)
  {
    v16 = v15;
    sub_10076E1AC();
    sub_10000CF78(v24, v24[3]);
    sub_1000FF02C();
    sub_10076D40C();
    (*(v20 + 8))(v6, v21);
    (*(v11 + 8))(v13, v23);
    sub_10000CD74(v24);
  }

  else
  {
    sub_100770AFC();
    v16 = v17;
    (*(v11 + 8))(v13, v23);
  }

  return v16;
}

double sub_10046C9A8()
{
  sub_1007610FC();
  sub_10046CA68(&qword_100958380, &type metadata accessor for RoundedButton);
  sub_10076332C();
  if (!v2)
  {
    return 0.0;
  }

  sub_100630CB4();
  v0 = sub_1005C9618();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10046CA68(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10046CAB0(double a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY] = a1;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView];
  v4 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() endPoint];
  v6 = v5;

  v7 = *&v1[v2];
  v8 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  v9 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  return [v1 setNeedsDisplay];
}

id sub_10046CC14(uint64_t a1, uint64_t a2, double a3)
{
  v28 = a2;
  v6 = sub_10075FEEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v10);
  v13 = &v25[-v12];
  v14 = *(v7 + 16);
  v27 = a1;
  v14(&v25[-v12], a1, v6, v11);
  v15 = (*(v7 + 88))(v13, v6);
  v26 = enum case for CornerStyle.continuous(_:);
  if (v15 == enum case for CornerStyle.continuous(_:))
  {
    v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setContinuousCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setContinuousCornerRadius:a3];
  }

  else
  {
    v18 = v15;
    v19 = enum case for CornerStyle.arc(_:);
    v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setCornerRadius:a3];
    if (v18 != v19)
    {
      (*(v7 + 8))(v13, v6);
    }
  }

  v20 = [v16 layer];
  [v20 setMaskedCorners:sub_1007704FC()];

  v21 = [v17 layer];
  [v21 setMaskedCorners:sub_1007704FC()];

  v22 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView);
  (*(v7 + 104))(v9, v26, v6);
  v23 = sub_10075FEDC();
  (*(v7 + 8))(v9, v6);
  return [v22 _setCornerRadius:v23 & 1 continuous:sub_1007704FC() maskedCorners:a3];
}

void *sub_10046CEF8(char a1)
{
  v1 = off_100895FB8[a1];
  v2 = v1[2];
  if (v2)
  {
    sub_1007714EC();
    v3 = objc_opt_self();
    v4 = 4;
    do
    {
      v5 = *&v1[v4];
      v6 = [v3 blackColor];
      v7 = [v6 colorWithAlphaComponent:v5];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      ++v4;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10046D028(void *a1, char a2)
{
  v2 = off_100895FD0[a2];
  v3 = v2[2];
  if (v3)
  {
    sub_1007714EC();
    v5 = 4;
    do
    {
      v6 = [a1 colorWithAlphaComponent:*&v2[v5]];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      ++v5;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10046D11C(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = &unk_100882408;
  if (a2 != 1)
  {
    v3 = &_swiftEmptyArrayStorage[2];
  }

  v4 = *v3;
  if (*v3)
  {
    sub_1007714EC();
    if (v2 == 1)
    {
      v6 = &unk_100882418;
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage[4];
    }

    do
    {
      v7 = *v6++;
      v8 = [a1 colorWithAlphaComponent:v7];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10046D22C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style);
    v5 = v1;
    *&v2[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = sub_10046D11C(v5, v3);

    sub_1001C05B8();
    [v2 setHidden:0];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);

    [v4 setHidden:1];
  }
}

void *sub_10046D334()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style];
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style])
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
LABEL_4:
      v5 = [v4 blackColor];
LABEL_9:
      v6 = v5;
      goto LABEL_10;
    }

LABEL_8:
    v5 = [v4 whiteColor];
    goto LABEL_9;
  }

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_todayCardStyleColor];
LABEL_10:
  v7 = v6;
  v8 = sub_10046D028(v7, v3);

  return v8;
}

id sub_10046D44C()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  sub_10076422C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1007704BC();
  v11 = sub_100102A30(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] setFrame:?];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] setFrame:{v11, v13, v15, v17}];
  sub_10076422C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1007704BC();
  v28 = sub_100102A30(v19, v21, v23, v25, v26, v27);
  v29 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView];
  [v29 setFrame:v28];
  v30 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
  [v29 bounds];
  return [v30 setFrame:?];
}

unint64_t sub_10046D7A8()
{
  result = qword_100958420;
  if (!qword_100958420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958420);
  }

  return result;
}

char *sub_10046D7FC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_todayCardStyleColor;
  *&v1[v4] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurUserInterfaceStyle] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor] = 0;
  v5 = objc_opt_self();
  if (!a1)
  {
LABEL_5:
    v5 = [v5 effectWithBlurRadius:30.0];
    if (!v5)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
LABEL_7:
    v5 = [v5 effectWithStyle:6];
    goto LABEL_8;
  }

  v5 = [v5 effectWithBlurRadius:20.0];
  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v6 = v5;
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView] = v7;
  v8 = type metadata accessor for GradientView();
  v9 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] = v9;
  v10 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] = v10;
  v11 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] = v11;
  v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style] = a1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY] = 0x3FF0000000000000;
  v53.receiver = v1;
  v53.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v20 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
  *&v20[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = sub_10046CEF8(a1);

  sub_1001C05B8();

  v21 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY];
  v22 = *&v16[v19];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v21}];

  v24 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY];
  v25 = *&v16[v19];
  v26 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v24}];

  v27 = a1;
  v28 = off_100895FE8[a1];
  v29 = *&v16[v19];
  sub_1001C0414(v28);

  v30 = [*&v16[v17] layer];
  v31 = [*&v16[v19] layer];
  objc_opt_self();
  [v30 setMask:swift_dynamicCastObjCClassUnconditional()];

  v32 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v33 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView];
  *(v33 + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = sub_10046D334();

  sub_1001C05B8();
  v34 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
  v35 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY];
  v36 = *&v16[v32];
  v37 = [v36 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v35}];

  v38 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY;
  v39 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY];
  v40 = *&v16[v32];
  v41 = [v40 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v39}];

  v42 = off_100896000[v27];
  v43 = *&v16[v32];
  sub_1001C0414(v42);

  [v16 addSubview:*&v16[v32]];
  sub_10046D22C();
  v44 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView;
  v45 = *&v16[v34];
  v46 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView];
  v47 = [v46 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v45}];

  v48 = *&v16[v38];
  v49 = *&v16[v44];
  v50 = [v49 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v48}];

  v51 = *&v16[v44];
  sub_1001C0414(v42);

  [v16 addSubview:*&v16[v44]];
  return v16;
}

void sub_10046DE9C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_todayCardStyleColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurUserInterfaceStyle) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10046DFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007630EC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10046E064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007630EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10046E0F8()
{
  result = sub_1007630EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10046E180@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_10076ECCC();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076EA2C();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100958600);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_10000A5D4(&qword_100958608);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_10000A5D4(&qword_100958610);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10000A5D4(&qword_100958618);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_10000A5D4(&qword_100958620);
  sub_100071820(&qword_100958628, &qword_100958620);
  sub_10076ED7C();
  sub_10076EA1C();
  sub_100071820(&qword_100958630, &qword_100958600);
  v20 = v44;
  sub_10076EEEC();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = sub_10076ECFC();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_10000A5D4(&qword_100958638);
  v24 = sub_100473858();
  v25 = sub_10000CE78(&qword_100958658);
  v26 = sub_100071820(&qword_100958660, &qword_100958658);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10076EEDC();
  sub_1004739A0(v12);
  v28 = v51;
  sub_10076ECBC();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  sub_10076EE6C();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = sub_1007630AC();
  v58 = v35;
  sub_10002564C();
  v36 = sub_10076EDCC();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_10076EE8C();
  sub_1000900A0(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

uint64_t sub_10046E810@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100958678);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000A5D4(&qword_100958680);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_1007630EC();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_10076E9FC();
  sub_100473A10(&qword_100958688, type metadata accessor for DebugMetricsEventDetailView.Summary);
  v48 = v17;
  sub_10076EEAC();
  sub_100473A58(v13);
  v19 = sub_1007630CC();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10049EE7C(v20, 0);
  v22 = sub_10061F3AC(&v50, v21 + 4, v20, v19);

  sub_100178640();
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_10002CADC(&v50);

    swift_getKeyPath();
    sub_100473AB4(a1, v6);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    sub_100473BE4(v6, v24 + v23);
    sub_10000A5D4(&unk_10094BB60);
    sub_100071820(&qword_100958690, &unk_10094BB60);
    sub_100473CC8();
    v25 = v49;
    sub_10076EF4C();
    v26 = v41;
    v27 = v42;
    v28 = *(v42 + 16);
    v29 = v44;
    v28(v41, v48, v44);
    v30 = v45;
    v31 = v46;
    v40 = *(v46 + 16);
    v32 = v25;
    v33 = v47;
    (v40)(v45, v32, v47);
    v34 = v43;
    v28(v43, v26, v29);
    v35 = sub_10000A5D4(&qword_1009586A0);
    (v40)(&v34[*(v35 + 48)], v30, v33);
    v36 = *(v31 + 8);
    v36(v49, v33);
    v37 = *(v27 + 8);
    v37(v48, v29);
    v36(v30, v33);
    return (v37)(v26, v29);
  }

  __break(1u);

  __break(1u);
  return result;
}

double sub_10046EDBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_1007630CC();
  if (*(v5 + 16) && (v6 = sub_100561E0C(v4, v3), (v7 & 1) != 0))
  {
    sub_10000CD08(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_10046EE54(uint64_t a1)
{
  v2 = sub_10076EC4C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000A5D4(&qword_100958658);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10076EC3C();
  v9 = a1;
  sub_10000A5D4(&qword_100958668);
  sub_100071820(&qword_100958670, &qword_100958668);
  sub_10076E9DC();
  sub_100071820(&qword_100958660, &qword_100958658);
  sub_10076EC5C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10046F0C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EEFC();
  *a1 = result;
  return result;
}

uint64_t sub_10046F100()
{
  v0 = sub_10075DC2C();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10075DCAC();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075DC8C();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DC4C();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075DC6C();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075DAEC();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075E00C();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10075DF6C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10075DE9C();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000A5D4(&qword_1009585F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_10000A5D4(&qword_1009585F8);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_10075DCDC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_10000DB18(v33, qword_100958428);
  v48 = sub_10000A61C(v22, qword_100958428);
  sub_10075DBCC();
  v34 = sub_10075DBDC();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  sub_10075DBAC();
  v35 = sub_10075DBBC();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  sub_10075DE4C();
  sub_10075DF1C();
  sub_10075DFEC();
  sub_10075DADC();
  sub_10075DBFC();
  v36 = v52;
  sub_10075DC3C();
  v37 = v51;
  sub_10075DC5C();
  (*(v55 + 8))(v36, v56);
  sub_10075DC0C();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  sub_10075DC7C();
  v40 = v46;
  sub_10075DCBC();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  sub_10075DC9C();
  v42 = v47;
  sub_10075DCCC();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  sub_10075DC1C();
  sub_10075DBEC();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_10046F87C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&qword_100958560);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10000A5D4(&qword_100958568);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10000A5D4(&qword_100958570);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = sub_10076EBBC();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_10000A5D4(&qword_100958578);
  sub_10046FC24(v1, &v14[*(v15 + 44)]);
  sub_1007630DC();
  sub_10076F8BC();
  v16 = sub_1007701EC();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    sub_10076EEFC();
    sub_10076EBCC();
    v20 = sub_10076EBEC();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = sub_10076EF0C();

    sub_10000CFBC(v8, &qword_100958568);
    v21 = sub_10076ED0C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = sub_10076ED1C();
    sub_10000CFBC(v5, &qword_100958560);
    KeyPath = swift_getKeyPath();
  }

  sub_100016E2C(v14, v11, &qword_100958570);
  sub_100016E2C(v11, a1, &qword_100958570);
  v22 = sub_10000A5D4(&qword_100958580);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_1004735B4(v17);
  sub_100473604(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10000CFBC(v14, &qword_100958570);
  sub_100473604(v17);
  return sub_10000CFBC(v11, &qword_100958570);
}

uint64_t sub_10046FC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_10000A5D4(&qword_100958588);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = sub_10076EB3C();
  LOBYTE(v54[0]) = 1;
  sub_100470084(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = sub_10076ED6C();
  KeyPath = swift_getKeyPath();
  v54[0] = sub_10076308C();
  swift_getKeyPath();
  sub_10000A5D4(&qword_100958590);
  sub_10000A5D4(&qword_100958598);
  sub_100071820(&qword_1009585A0, &qword_100958590);
  sub_1004736A8();
  v30 = v7;
  sub_10076EF4C();
  v29 = sub_10076EB3C();
  LOBYTE(v54[0]) = 1;
  sub_100470418(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_10000A5D4(&qword_1009585D0);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_100016E2C(v43, v54, &qword_1009585D8);
  sub_100016E2C(v46, v54, &qword_1009585E0);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10000CFBC(v48, &qword_1009585E0);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10000CFBC(v54, &qword_1009585D8);
}

uint64_t sub_100470084@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000A5D4(&qword_100958568);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_10076306C();
  sub_10076EEFC();
  sub_10076EBDC();
  v5 = sub_10076EBEC();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_10076EF0C();

  sub_10000CFBC(v4, &qword_100958568);
  v18 = sub_1007630AC();
  v19 = v7;
  sub_10002564C();
  v8 = sub_10076EDCC();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_100090090(v8, v10, v12);

  sub_1000900A0(v8, v10, v12);
}

uint64_t sub_100470250@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10076EB7C();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    sub_10076EB6C();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10076EB5C(v25);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    sub_10076EB4C(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_10076EB5C(v27);
    v28._countAndFlagsBits = a3;
    v28._object = a4;
    sub_10076EB4C(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_10076EB5C(v29);
    sub_10076EB8C();
    v11 = sub_10076EDBC();
    v13 = v12;
    v15 = v14;
    sub_10076ED3C();
    v16 = sub_10076EDAC();
    a4 = v17;
    v19 = v18;
    v21 = v20;

    sub_1000900A0(v11, v13, v15 & 1);

    result = swift_getKeyPath();
    v23 = v19 & 1;
    v24 = 1;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    v21 = 0;
    result = 0;
    v24 = 0;
  }

  *a5 = v16;
  *(a5 + 8) = a4;
  *(a5 + 16) = v23;
  *(a5 + 24) = v21;
  *(a5 + 32) = result;
  *(a5 + 40) = v24;
  *(a5 + 48) = 0;
  return result;
}

uint64_t sub_100470418@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_10075DD7C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076309C();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_100940590 != -1)
    {
      swift_once();
    }

    v36 = sub_10075DCDC();
    sub_10000A61C(v36, qword_100958428);
    sub_100473A10(&qword_1009585E8, &type metadata accessor for Date.FormatStyle);
    sub_10075DD5C();
    v56 = v58;
    v57 = v59;
    sub_10002564C();
    v37 = sub_10076EDCC();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    sub_10076ED5C();
    v42 = sub_10076EDAC();
    v44 = v43;
    v46 = v45;

    sub_1000900A0(v37, v39, v41 & 1);

    LODWORD(v58) = sub_10076EC6C();
    v10 = sub_10076ED8C();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_1000900A0(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_100090090(v10, v11, v37 & 1);

    v14 = sub_1007630BC();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_10000CFBC(v5, &unk_10094FA00);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = sub_1007630BC();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_10002564C();
  v16 = sub_10076EDCC();
  v18 = v17;
  v20 = v19;
  sub_10076ED5C();
  v21 = sub_10076EDAC();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_1000900A0(v16, v18, v20 & 1);

  LODWORD(v58) = sub_10076EC6C();
  v26 = sub_10076ED8C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_1000900A0(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_100090090(v26, v28, v35);

LABEL_8:
  sub_100090500(v10, v11, v12, v13);
  sub_100090500(v26, v28, v35, v32);
  sub_100090544(v10, v11, v12, v13);
  sub_100090544(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_100090544(v26, v28, v35, v32);
  return sub_100090544(v10, v11, v12, v13);
}

uint64_t sub_1004708FC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_10000A5D4(&qword_1009586B8);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_10000A5D4(&qword_1009586C0);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_10000A5D4(&qword_1009586C8);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_10000A5D4(&qword_1009586D0);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_10000A5D4(&qword_1009586D8);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10000A5D4(&qword_1009586E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_10000A5D4(&qword_1009586E8);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_100016E2C((v1 + 2), &v41, &unk_1009434C0);
  if (*(&v42[0] + 1))
  {
    sub_10000A5D4(&qword_100958728);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_100474234(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_10000A5D4(&qword_100958730);
        sub_1004740EC();
        sub_100474330();
        sub_10076EA3C();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_100071820(&qword_100958700, &qword_1009586E0);
        sub_10076EC0C();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_100016E2C((v1 + 2), v42, &unk_1009434C0);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_100473F44(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_100071820(&qword_100958700, &qword_1009586E0);
        sub_1004740EC();

        sub_10076EC0C();
        sub_100474140(&v41);
      }

      sub_100016E2C(v16, v33, &qword_1009586E8);
      swift_storeEnumTagMultiPayload();
      sub_100474034();
      sub_100071820(&qword_100958710, &qword_1009586B8);
      v29 = v34;
      sub_10076EC0C();
      sub_100016E2C(v29, v38, &qword_1009586D0);
      swift_storeEnumTagMultiPayload();
      sub_100473F7C();
      sub_1004740EC();
      sub_10076EC0C();
      sub_10000CFBC(v29, &qword_1009586D0);
      return sub_10000CFBC(v16, &qword_1009586E8);
    }
  }

  else
  {
    sub_10000CFBC(&v41, &unk_1009434C0);
  }

  sub_100016E2C((v1 + 2), &v41, &unk_1009434C0);
  if (*(&v42[0] + 1))
  {
    sub_10000A5D4(&qword_100958718);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_10000A5D4(&qword_100958678);
      sub_1004740EC();
      sub_1004741B0();
      sub_10076EA3C();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_100474034();
      sub_100071820(&qword_100958710, &qword_1009586B8);
      v23 = v34;
      sub_10076EC0C();
      sub_100016E2C(v23, v38, &qword_1009586D0);
      swift_storeEnumTagMultiPayload();
      sub_100473F7C();
      sub_10076EC0C();
      sub_10000CFBC(v23, &qword_1009586D0);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10000CFBC(&v41, &unk_1009434C0);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_100016E2C((v1 + 2), v42, &unk_1009434C0);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_100473F44(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_100473F7C();
  sub_1004740EC();

  sub_10076EC0C();
  return sub_100474140(&v41);
}

uint64_t sub_100471280@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A5D4(&qword_100958760);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - v8;
  v31 = sub_10000A5D4(&qword_100958768);
  __chkstk_darwin(v31);
  v32 = v28 - v10;
  v33 = sub_10000A5D4(&qword_100958748);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v29 = v28 - v11;
  if (*a1 == 0x6973736572706D69 && a1[1] == 0xEB00000000736E6FLL || (sub_10077167C() & 1) != 0)
  {
    v28[2] = v6;
    v12 = sub_1003B1C78(a2);
    v13 = *(v12 + 16);
    v28[0] = v12;
    v28[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_100016E2C(v14, v38, &qword_100958780);
        v34 = v38[0];
        v35 = v38[1];
        v36 = v39;
        sub_10000A5D4(&qword_100958718);
        if (swift_dynamicCast())
        {
          v16 = v37;
          if (v37)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_10049E720(0, v15[2] + 1, 1, v15);
            }

            v18 = v15[2];
            v17 = v15[3];
            if (v18 >= v17 >> 1)
            {
              v15 = sub_10049E720((v17 > 1), v18 + 1, 1, v15);
            }

            v15[2] = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_10008531C(v15);
    v21 = v20;
    *&v38[0] = v28[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100474558;
    *(v23 + 24) = v22;
    sub_10000A5D4(&qword_100958770);
    sub_100071820(&qword_100958778, &qword_100958770);
    sub_100474440();
    v24 = v29;
    sub_10076EF4C();
    v25 = v30;
    v26 = v33;
    (*(v30 + 16))(v32, v24, v33);
    swift_storeEnumTagMultiPayload();
    sub_1004743BC();
    sub_100474494();
    sub_10076EC0C();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    *&v38[0] = sub_1003B1C78(a2);
    swift_getKeyPath();
    sub_10000A5D4(&qword_100958770);
    sub_100071820(&qword_100958778, &qword_100958770);
    sub_100473CC8();
    sub_10076EF4C();
    (*(v7 + 16))(v32, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1004743BC();
    sub_100474494();
    sub_10076EC0C();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_10047184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000CD08(a2, v10);
  sub_10000A5D4(&qword_100958718);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_1000FD3F0(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_100561E0C(0xD000000000000012, 0x80000001007E8D30);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10000CD08(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_100085614(v10, a4);
  sub_10000CFBC(v10, &unk_1009434C0);
  return v5;
}

uint64_t sub_10047195C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v5._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_1007700CC(v6);
  result = sub_10000CD08(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_1004719F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10049EE7C(*(a1 + 16), 0);
  v4 = sub_10061F3AC(&v6, v3 + 4, v2, a1);

  sub_100178640();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_10002CADC(&v6);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_10000A5D4(&unk_10094BB60);
  sub_100071820(&qword_100958690, &unk_10094BB60);
  sub_100473CC8();
  return sub_10076EF4C();
}

double sub_100471BA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_100561E0C(v4, v5);
    if (v8)
    {
      sub_10000CD08(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_100471C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10076EBBC();
  LOBYTE(v19[0]) = 1;
  sub_100471DD0(v16);
  *&v15[7] = v16[0];
  *&v15[23] = v16[1];
  *&v15[39] = v16[2];
  *&v15[55] = v16[3];
  v5 = v19[0];
  sub_100016E2C(a1 + 16, v12, &unk_1009434C0);
  v13 = 0;
  v14 = 1;
  sub_10047477C(v12, v11);
  v17[0] = v4;
  v17[1] = 0;
  v18[0] = v5;
  *&v18[1] = *v15;
  *&v18[17] = *&v15[16];
  *&v18[33] = *&v15[32];
  *&v18[49] = *&v15[48];
  *&v18[64] = *&v15[63];
  v6 = *&v15[63];
  v7 = *v18;
  *a2 = v4;
  *(a2 + 16) = v7;
  v8 = *&v18[16];
  v9 = *&v18[48];
  *(a2 + 48) = *&v18[32];
  *(a2 + 64) = v9;
  *(a2 + 32) = v8;
  *(a2 + 80) = v6;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_10047477C(v11, a2 + 104);
  sub_100016E2C(v17, v19, &qword_100958798);
  sub_1004747B4(v12);
  sub_1004747B4(v11);
  v19[0] = v4;
  v19[1] = 0;
  v20 = v5;
  v22 = *&v15[16];
  v23 = *&v15[32];
  *v24 = *&v15[48];
  *&v24[15] = *&v15[63];
  v21 = *v15;
  return sub_10000CFBC(v19, &qword_100958798);
}

uint64_t sub_100471DD0@<X0>(uint64_t a1@<X8>)
{
  sub_10002564C();

  v2 = sub_10076EDCC();
  v4 = v3;
  v6 = v5;
  v25 = sub_10076ED9C();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_1000900A0(v2, v4, v6 & 1);

  sub_100471F9C();
  v11 = sub_10076EDCC();
  v13 = v12;
  v15 = v14;
  sub_10076EC6C();
  v16 = sub_10076ED8C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1000900A0(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_100090090(v25, v9, v24 & 1);

  sub_100090090(v16, v18, v20 & 1);

  sub_1000900A0(v16, v18, v20 & 1);

  sub_1000900A0(v25, v9, v24 & 1);
}

uint64_t sub_100471F9C()
{
  sub_100016E2C(v0, v5, &unk_1009434C0);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0);
  }

  sub_100016E2C(v0, v5, &unk_1009434C0);
  if (v6)
  {
    sub_100016F40(0, &qword_1009492D0);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0);
  }

  sub_100016E2C(v0, v5, &unk_1009434C0);
  if (v6)
  {
    sub_10000A5D4(&qword_100958728);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0);
  }

  sub_100016E2C(v0, v5, &unk_1009434C0);
  if (v6)
  {
    sub_10000A5D4(&qword_100958718);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_100016E2C(v0, v5, &unk_1009434C0);
    if (v6)
    {
      sub_100016F40(0, &qword_1009587A8);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10000CFBC(v5, &unk_1009434C0);
    }

    v5[0] = sub_10000A5D4(&unk_1009434C0);
    sub_10000A5D4(&qword_1009587A0);
    return sub_10076FFFC();
  }

  return result;
}

uint64_t sub_10047234C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10076EB3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_100471C3C(v1, a1 + 24);
}

uint64_t sub_100472388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10000A5D4(&qword_1009587B0);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = sub_10076EBAC();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_10049EE7C(v14, 0);
    v16 = sub_10061F3AC(&v49, v15 + 4, v14, a1);

    sub_100178640();
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_10002CADC(&v49);
      sub_10000A5D4(&qword_1009587B8);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_10000A5D4(&unk_10094BB60);
      sub_10000A5D4(&qword_1009587C0);
      sub_100071820(&qword_100958690, &unk_10094BB60);
      sub_100071820(&qword_1009587C8, &qword_1009587C0);
      sub_10076EF4C();
      v20 = sub_10076ECFC();
      sub_10076E9AC();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_10000A5D4(&qword_1009587D0) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = sub_10076ECFC();
      v31 = &v13[*(sub_10000A5D4(&qword_1009587D8) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(sub_10076EA8C() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = sub_10076EB9C();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_10000A5D4(&qword_1009587E0) + 36)] = 256;
      v42 = v48;
      sub_10047488C(v13, v48);
      return (*(v46 + 56))(v42, 0, 1, v32);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = *(v10 + 56);

    return v17(a4, 1, 1, v11);
  }

  return result;
}

uint64_t sub_1004727EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_10002564C();

  v9 = sub_10076EDCC();
  v11 = v10;
  v13 = v12;
  v14 = sub_10076ED9C();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_1000900A0(v9, v11, v13 & 1);

  sub_100472944(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_10047477C(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_10047477C(v25, a6 + 48);
  sub_100090090(v14, v16, v21 & 1);

  sub_1004747B4(v26);
  sub_1004747B4(v25);
  sub_1000900A0(v14, v16, v21 & 1);
}

double sub_100472944@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001007E8D30 == a2 || (sub_10077167C()) && a3 && *(a3 + 16) && (v12 = sub_100561E0C(a1, a2), (v13))
  {
    sub_10000CD08(*(a3 + 56) + 32 * v12, v18);
    sub_10000CD64(v18, v19);
    if (a5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_10077151C();
      v20._countAndFlagsBits = 10272;
      v20._object = 0xE200000000000000;
      sub_1007700CC(v20);
      v21._countAndFlagsBits = a4;
      v21._object = a5;
      sub_1007700CC(v21);
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      sub_1007700CC(v22);
      v14 = v18[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v14;
      sub_10000CD74(v19);
      return result;
    }

    sub_10000CD74(v19);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_100561E0C(a1, a2);
  if (v17)
  {
    sub_10000CD08(*(a3 + 56) + 32 * v16, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_100472AE4@<Q0>(uint64_t a1@<X8>)
{
  sub_100016E2C(v1, &v35, &unk_1009434C0);
  if (v36.n128_u64[1])
  {
    sub_10000A5D4(&qword_100958728);
    if (swift_dynamicCast())
    {
      v3 = *(*&v53[0] + 16);

      *&cf = v3;
      *&v54 = sub_10077163C();
      *(&v54 + 1) = v4;
      v58._countAndFlagsBits = 0x736D65746920;
      v58._object = 0xE600000000000000;
      sub_1007700CC(v58);
      cf = v54;
      v47.n128_u64[0] = 0;
      v47.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v48) = 0;

      sub_10076EC0C();
      v45 = v56;
      v44 = 0;
      v57[18] = 0;
      sub_10000A5D4(&qword_100958860);
      sub_10000A5D4(&qword_100958870);
      sub_100474D64();
      sub_100474DE0();
      sub_10076EC0C();
      v55 = v40;
      v56 = v41;
      *v57 = *v42;
      *&v57[15] = *&v42[15];
      v54 = v39;
LABEL_8:
      LOBYTE(v51) = 0;
      v57[19] = 0;
      sub_10000A5D4(&qword_100958848);
      sub_100474CD8();
      sub_10076EC0C();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10000CFBC(&v35, &unk_1009434C0);
  }

  sub_100016E2C(v1, &v35, &unk_1009434C0);
  if (v36.n128_u64[1])
  {
    sub_10000A5D4(&qword_100958718);
    if (swift_dynamicCast())
    {
      v5 = *(*&v53[0] + 16);

      *&cf = v5;
      *&v54 = sub_10077163C();
      *(&v54 + 1) = v6;
      v59._countAndFlagsBits = 0x7379656B20;
      v59._object = 0xE500000000000000;
      sub_1007700CC(v59);
      cf = v54;
      v47.n128_u64[0] = 0;
      v47.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v48) = 1;

      sub_10076EC0C();
      v45 = v56;
      v44 = 0;
      v57[18] = 0;
      sub_10000A5D4(&qword_100958860);
      sub_10000A5D4(&qword_100958870);
      sub_100474D64();
      sub_100474DE0();
      sub_10076EC0C();
      v56 = v41;
      *v57 = *v42;
      *&v57[15] = *&v42[15];
      v54 = v39;
      v55 = v40;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000CFBC(&v35, &unk_1009434C0);
  }

  sub_100016E2C(v1, &v54, &unk_1009434C0);
  if (v55.n128_u64[1])
  {
    sub_100016F40(0, &qword_1009492D0);
    if (swift_dynamicCast())
    {
      v7 = cf;
      v8 = CFGetTypeID(cf);
      v34 = v7;
      if (CFBooleanGetTypeID() == v8)
      {
        v9 = [v7 BOOLValue];
        if (v9)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (v9)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v10;
        *(&cf + 1) = v11;
        v47.n128_u64[0] = 0;
        v47.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v48 = KeyPath;
        v13 = 2;
      }

      else
      {
        v25 = [v7 stringValue];
        v26 = sub_10076FF9C();
        v28 = v27;

        v29 = swift_getKeyPath();
        *&cf = v26;
        *(&cf + 1) = v28;
        v47.n128_u64[0] = 0;
        v47.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v48 = v29;
        v13 = 258;
      }

      WORD4(v48) = v13;
      sub_10000A5D4(&qword_100958890);
      sub_100474EF0();
      sub_10076EC0C();
      v45 = BYTE9(v56);
      v44 = 0;
      v57[17] = 0;
      v30 = v54;
      v31 = v55.n128_u8[0];
      v32 = v55.n128_u8[0];
      v33 = v54;
      sub_1004750B4(v54, *(&v54 + 1), v55.n128_i8[0]);
      sub_1004750B4(v30, *(&v30 + 1), v31);
      sub_10000A5D4(&qword_100958880);
      sub_10000A5D4(&qword_1009588B0);
      sub_100474E6C();
      sub_100474FA8();
      sub_10076EC0C();
      v56 = v48;
      *v57 = v49;
      *&v57[16] = v50;
      v54 = cf;
      v55 = v47;
      LOBYTE(v51) = 1;
      v57[18] = 1;
      sub_10000A5D4(&qword_100958860);
      sub_10000A5D4(&qword_100958870);
      sub_100474D64();
      sub_100474DE0();
      sub_10076EC0C();
      v41 = v37;
      *v42 = *v38;
      *&v42[15] = *&v38[15];
      v39 = v35;
      v40 = v36;
      v56 = v37;
      *v57 = *v38;
      *&v57[15] = *&v38[15];
      v54 = v35;
      v55 = v36;
      LOBYTE(v53[0]) = 0;
      v57[19] = 0;
      sub_100016E2C(&v39, &cf, &qword_100958848);
      sub_10000A5D4(&qword_100958848);
      sub_100474CD8();
      sub_10076EC0C();
      sub_1004750FC(v33, *(&v30 + 1), v32);
      sub_10000CFBC(&v39, &qword_100958848);

      sub_1004750FC(v33, *(&v30 + 1), v32);
      v56 = v48;
      *v57 = v49;
      *&v57[16] = v50;
      v22 = cf;
      v21 = v47;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10000CFBC(&v54, &unk_1009434C0);
  }

  sub_100016E2C(v1, &v51, &unk_1009434C0);
  if (!v52)
  {
    sub_10000CFBC(&v51, &unk_1009434C0);
    LOBYTE(v39) = 0;
    LOBYTE(v35) = 1;
    cf = xmmword_1007A4F80;
    v47.n128_u8[0] = 0;
    v47.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v50) = 1;
    sub_10000A5D4(&qword_100958848);
    sub_100474CD8();
    sub_10076EC0C();
    goto LABEL_25;
  }

  sub_10000CD64(&v51, v53);
  sub_10000CD08(v53, &v54);
  v14 = sub_10076FFFC();
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = swift_getKeyPath();
  LOBYTE(cf) = v19;
  *&v35 = v14;
  *(&v35 + 1) = v16;
  v36.n128_u8[0] = 0;
  v36.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v37 = v17;
  BYTE8(v37) = 2;
  *v38 = v20;
  *&v38[8] = v18;
  v38[16] = v19;
  v56 = v37;
  *v57 = *v38;
  v57[16] = v19;
  v54 = v35;
  v55 = v36;
  v43 = 1;
  v57[17] = 1;
  sub_100016E2C(&v35, &cf, &qword_1009588B0);
  sub_10000A5D4(&qword_100958880);
  sub_10000A5D4(&qword_1009588B0);
  sub_100474E6C();
  sub_100474FA8();
  sub_10076EC0C();
  v56 = v48;
  *v57 = v49;
  *&v57[16] = v50;
  v54 = cf;
  v55 = v47;
  v44 = 1;
  v57[18] = 1;
  sub_10000A5D4(&qword_100958860);
  sub_10000A5D4(&qword_100958870);
  sub_100474D64();
  sub_100474DE0();
  sub_10076EC0C();
  v56 = v41;
  *v57 = *v42;
  *&v57[15] = *&v42[15];
  v54 = v39;
  v55 = v40;
  v45 = 0;
  v57[19] = 0;
  sub_10000A5D4(&qword_100958848);
  sub_100474CD8();
  sub_10076EC0C();
  sub_10000CFBC(&v35, &qword_1009588B0);
  sub_10000CD74(v53);
LABEL_23:
  v56 = v48;
  *v57 = v49;
  *&v57[16] = v50;
  v22 = cf;
  v21 = v47;
LABEL_24:
  v54 = v22;
  v55 = v21;
LABEL_25:
  v23 = *v57;
  *(a1 + 32) = v56;
  *(a1 + 48) = v23;
  *(a1 + 64) = *&v57[16];
  result = v55;
  *a1 = v54;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004735B4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100473604(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100473650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EADC();
  *a1 = result;
  return result;
}

unint64_t sub_1004736A8()
{
  result = qword_1009585A8;
  if (!qword_1009585A8)
  {
    sub_10000CE78(&qword_100958598);
    sub_10047372C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009585A8);
  }

  return result;
}

unint64_t sub_10047372C()
{
  result = qword_1009585B0;
  if (!qword_1009585B0)
  {
    sub_10000CE78(&qword_1009585B8);
    sub_100071820(&qword_1009585C0, &qword_1009585C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009585B0);
  }

  return result;
}

uint64_t sub_1004737E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10076EAFC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100473858()
{
  result = qword_100958640;
  if (!qword_100958640)
  {
    sub_10000CE78(&qword_100958608);
    sub_10000CE78(&qword_100958600);
    sub_10076EA2C();
    sub_100071820(&qword_100958630, &qword_100958600);
    swift_getOpaqueTypeConformance2();
    sub_100071820(&qword_100958648, &qword_100958650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958640);
  }

  return result;
}

uint64_t sub_1004739A0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100958608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473A10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100473A58(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100473B18()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1007630EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100473BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100473C48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_10046EDBC(a1, a2);
}

unint64_t sub_100473CC8()
{
  result = qword_100958698;
  if (!qword_100958698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958698);
  }

  return result;
}

uint64_t sub_100473D1C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100473D88()
{
  sub_10000CE78(&qword_100958618);
  sub_10000CE78(&qword_100958610);
  sub_10076ECCC();
  sub_10000CE78(&qword_100958608);
  sub_10000CE78(&qword_100958638);
  sub_100473858();
  sub_10000CE78(&qword_100958658);
  sub_100071820(&qword_100958660, &qword_100958658);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100473F7C()
{
  result = qword_1009586F0;
  if (!qword_1009586F0)
  {
    sub_10000CE78(&qword_1009586D0);
    sub_100474034();
    sub_100071820(&qword_100958710, &qword_1009586B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009586F0);
  }

  return result;
}

unint64_t sub_100474034()
{
  result = qword_1009586F8;
  if (!qword_1009586F8)
  {
    sub_10000CE78(&qword_1009586E8);
    sub_100071820(&qword_100958700, &qword_1009586E0);
    sub_1004740EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009586F8);
  }

  return result;
}

unint64_t sub_1004740EC()
{
  result = qword_100958708;
  if (!qword_100958708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958708);
  }

  return result;
}

uint64_t sub_100474170()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1004741B0()
{
  result = qword_100958720;
  if (!qword_100958720)
  {
    sub_10000CE78(&qword_100958678);
    sub_100473CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958720);
  }

  return result;
}

uint64_t sub_10047426C()
{

  if (*(v0 + 56))
  {
    sub_10000CD74(v0 + 32);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1004742CC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_100016E2C((v3 + 2), (a1 + 2), &unk_1009434C0);
  *a1 = v5;
  a1[1] = v4;
}

unint64_t sub_100474330()
{
  result = qword_100958738;
  if (!qword_100958738)
  {
    sub_10000CE78(&qword_100958730);
    sub_1004743BC();
    sub_100474494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958738);
  }

  return result;
}

unint64_t sub_1004743BC()
{
  result = qword_100958740;
  if (!qword_100958740)
  {
    sub_10000CE78(&qword_100958748);
    sub_100474440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958740);
  }

  return result;
}

unint64_t sub_100474440()
{
  result = qword_100958750;
  if (!qword_100958750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958750);
  }

  return result;
}

unint64_t sub_100474494()
{
  result = qword_100958758;
  if (!qword_100958758)
  {
    sub_10000CE78(&qword_100958760);
    sub_100473CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958758);
  }

  return result;
}

uint64_t sub_100474518()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100474560()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100474598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1004745DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100474638(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1004746B8()
{
  result = qword_100958788;
  if (!qword_100958788)
  {
    sub_10000CE78(&qword_100958790);
    sub_100473F7C();
    sub_1004740EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958788);
  }

  return result;
}

uint64_t sub_1004747E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100474824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = sub_10076EB1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_1004727EC(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_10047488C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009587B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004748FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100474958(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_100474A10()
{
  result = qword_1009587F8;
  if (!qword_1009587F8)
  {
    sub_10000CE78(&qword_100958800);
    sub_100474A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009587F8);
  }

  return result;
}

unint64_t sub_100474A94()
{
  result = qword_100958808;
  if (!qword_100958808)
  {
    sub_10000CE78(&qword_1009587B0);
    sub_100474B4C();
    sub_100071820(&qword_100958840, &qword_1009587E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958808);
  }

  return result;
}

unint64_t sub_100474B4C()
{
  result = qword_100958810;
  if (!qword_100958810)
  {
    sub_10000CE78(&qword_1009587D8);
    sub_100474C04();
    sub_100071820(&qword_100958830, &qword_100958838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958810);
  }

  return result;
}

unint64_t sub_100474C04()
{
  result = qword_100958818;
  if (!qword_100958818)
  {
    sub_10000CE78(&qword_1009587D0);
    sub_100071820(&qword_100958820, &qword_100958828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958818);
  }

  return result;
}

unint64_t sub_100474CD8()
{
  result = qword_100958850;
  if (!qword_100958850)
  {
    sub_10000CE78(&qword_100958848);
    sub_100474D64();
    sub_100474DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958850);
  }

  return result;
}

unint64_t sub_100474D64()
{
  result = qword_100958858;
  if (!qword_100958858)
  {
    sub_10000CE78(&qword_100958860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958858);
  }

  return result;
}

unint64_t sub_100474DE0()
{
  result = qword_100958868;
  if (!qword_100958868)
  {
    sub_10000CE78(&qword_100958870);
    sub_100474E6C();
    sub_100474FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958868);
  }

  return result;
}

unint64_t sub_100474E6C()
{
  result = qword_100958878;
  if (!qword_100958878)
  {
    sub_10000CE78(&qword_100958880);
    sub_100474EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958878);
  }

  return result;
}

unint64_t sub_100474EF0()
{
  result = qword_100958888;
  if (!qword_100958888)
  {
    sub_10000CE78(&qword_100958890);
    sub_100071820(&qword_100958898, &qword_1009588A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958888);
  }

  return result;
}

unint64_t sub_100474FA8()
{
  result = qword_1009588A8;
  if (!qword_1009588A8)
  {
    sub_10000CE78(&qword_1009588B0);
    sub_100474EF0();
    sub_100071820(&qword_1009585C0, &qword_1009585C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009588A8);
  }

  return result;
}

uint64_t sub_100475060@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076EABC();
  *a1 = result;
  return result;
}

uint64_t sub_1004750B4(uint64_t a1, uint64_t a2, char a3)
{
  sub_100090090(a1, a2, a3 & 1);
}

uint64_t sub_1004750FC(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000900A0(a1, a2, a3 & 1);
}

unint64_t sub_100475148()
{
  result = qword_1009588B8;
  if (!qword_1009588B8)
  {
    sub_10000CE78(&qword_1009588C0);
    sub_100474CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009588B8);
  }

  return result;
}

uint64_t sub_1004751F8()
{
  v1 = v0;
  v2 = sub_1007621EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1007659CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v28 - v12;
  (*(v3 + 16))(v5, v1, v2, v11);
  v14 = (*(v3 + 88))(v5, v2);
  if (v14 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &qword_10094E098;
    goto LABEL_5;
  }

  if (v14 == enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 96))(v5, v2);

    v15 = &unk_100950670;
LABEL_5:
    v16 = sub_10000A5D4(v15);
    v17 = *(v7 + 32);
    v17(v13, v5 + *(v16 + 48), v6);
    v17(v9, v13, v6);
    goto LABEL_7;
  }

  if (v14 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v3 + 96))(v5, v2);

    v20 = sub_10000A5D4(&qword_10094B500);
    v21 = v20[12];
    v28 = v20[16];
    v29 = v21;
    v22 = *(v7 + 32);
    v22(v13, v5 + v20[20], v6);
    v23 = sub_10076A05C();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v28, v23);
    v24(v5 + v29, v23);
    v22(v9, v13, v6);
  }

  else if (v14 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v3 + 96))(v5, v2);
    v25 = sub_10000A5D4(qword_10094ADC0);
    v26 = *(v7 + 32);
    v26(v13, v5 + *(v25 + 48), v6);
    v27 = sub_10076AA6C();
    (*(*(v27 - 8) + 8))(v5, v27);
    v26(v9, v13, v6);
  }

  else
  {
    (*(v7 + 104))(v13, enum case for ShelfBackgroundStyle.automatic(_:), v6);
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v9, v13, v6);
  }

LABEL_7:
  v18 = (*(v7 + 88))(v9, v6);
  if (v18 == enum case for ShelfBackgroundStyle.dark(_:))
  {
    return 2;
  }

  if (v18 == enum case for ShelfBackgroundStyle.light(_:))
  {
    return 1;
  }

  if (v18 != enum case for ShelfBackgroundStyle.automatic(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t type metadata accessor for AppPromotionSubtitleView()
{
  result = qword_1009588F8;
  if (!qword_1009588F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100475758(uint64_t a1)
{
  v3 = [*(v1 + qword_1009588E8) layer];
  sub_100016E2C(a1, v12, &unk_1009434C0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10000CF78(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_10077165C();
    (*(v6 + 8))(v9, v4);
    sub_10000CD74(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10000CFBC(a1, &unk_1009434C0);
}

uint64_t sub_1004758F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = sub_10076DFFC();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076DA7C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076DD3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    sub_10076DD2C();
    if (qword_100940598 != -1)
    {
      swift_once();
    }

    v22 = sub_10076D3DC();
    sub_10000A61C(v22, qword_1009588C8);
    sub_10076DCFC();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    sub_10076DA5C();

    sub_10076DA9C();
    sub_10077071C();
    v36 &= 1u;
    v23 = sub_1007616FC();
    swift_allocObject();
    v24 = sub_1007616EC();
    v45 = v23;
    v46 = sub_100476E48(&qword_1009680E0, &type metadata accessor for EmptyPlaceable);
    v44[0] = v24;
    sub_10076DFDC();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_10000DB7C(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_10000DB7C(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_1004765CC(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10000CFBC(&v41, &unk_10094B230);
    return sub_10000CFBC(v44, &unk_10094B230);
  }

  else
  {
    v29 = sub_1007616FC();
    swift_allocObject();
    v30 = sub_1007616EC();
    a6[3] = v29;
    result = sub_100476E48(&qword_1009680E0, &type metadata accessor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

uint64_t sub_100475DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076BEDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_1009588E8);
  if (v10)
  {
    v11 = sub_10076FF6C();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_1009588F0);
  [v12 setHidden:a3 == 0];
  sub_100760C4C();
  result = sub_10076F63C();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    sub_10076BEEC();
    sub_10076BE9C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    sub_10076BFCC();
    sub_10076BEEC();
    v15 = sub_10076BE9C();
    v14(v8, v5);
    [v12 setContentMode:v15];
    sub_10075FD2C();
    sub_100476E48(&qword_100941820, &type metadata accessor for ArtworkView);
    sub_100760B8C();
  }
}

uint64_t sub_100476030()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009588C8);
  v1 = sub_10000A61C(v0, qword_1009588C8);
  if (qword_100941108 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A2110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1004760F8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_1009588E8;
  if (qword_100940598 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009588C8);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(sub_1007626BC());
  *&v2[v12] = sub_1007626AC();
  v17 = qword_1009588F0;
  sub_10075FD2C();
  *&v2[v17] = sub_10075FB3C();
  v2[qword_1009588E0] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_1009588E8;
  v20 = *&v18[qword_1009588E8];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_1009588F0;
  [*&v22[qword_1009588F0] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_100476464@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_1009588E8];
  v17[3] = sub_1007626BC();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_1009588F0];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = sub_10075FD2C();
    v8 = sub_100476E48(&qword_10094B250, &type metadata accessor for ArtworkView);
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_1009588E0];
  v10 = [v1 traitCollection];
  sub_1004765CC(v17, &v12, v9, v10, a1);

  sub_10000CFBC(&v12, &unk_10094B230);
  return sub_10000CFBC(v17, &unk_10094B230);
}

uint64_t sub_1004765CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = sub_10076D8DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(a1, &v39, &unk_10094B230);
  if (v40)
  {
    sub_100012498(&v39, v41);
    v16 = sub_10077071C();
    v17 = 16.0;
    if ((a3 & 1) == 0)
    {
      v17 = 14.0;
    }

    if (v16)
    {
      v18 = 25.0;
    }

    else
    {
      v18 = v17;
    }

    sub_10005312C();
    if (qword_100940598 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D3DC();
    sub_10000A61C(v19, qword_1009588C8);
    v20 = sub_100770B3C();
    [v20 lineHeight];
    v22 = v21;
    sub_10076D8AC();
    sub_100016E2C(a2, &v36, &unk_10094B230);
    if (v37)
    {
      if ((v22 - v18) * 0.5 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = (v22 - v18) * 0.5;
      }

      sub_100012498(&v36, &v39);
      sub_10000A570(&v39, &v36);
      v35[3] = sub_10076DFFC();
      v35[4] = &protocol witness table for Resize;
      sub_10000DB7C(v35);
      sub_10076DFDC();
      v34[8] = &type metadata for CGFloat;
      v34[9] = &protocol witness table for CGFloat;
      *&v34[5] = v23;
      v24 = sub_10076D67C();
      v34[3] = v24;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v34);
      sub_10076D66C();
      v33[3] = v24;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v33);
      sub_10076D66C();
      v32[3] = v24;
      v32[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v32);
      sub_10076D66C();
      v37 = sub_10076E04C();
      v38 = &protocol witness table for Margins;
      sub_10000DB7C(&v36);
      sub_10076E05C();
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = v6;
      v26 = a4;
      sub_10076D89C();

      sub_10000CD74(&v39);
      sub_10000CD74(&v36);
    }

    else
    {
      sub_10000CFBC(&v36, &unk_10094B230);
    }

    sub_10076D89C();
    a5[3] = v12;
    a5[4] = &protocol witness table for HorizontalStack;
    v30 = sub_10000DB7C(a5);
    (*(v13 + 32))(v30, v15, v12);

    return sub_10000CD74(v41);
  }

  else
  {
    sub_10000CFBC(&v39, &unk_10094B230);
    v27 = sub_1007616FC();
    swift_allocObject();
    v28 = sub_1007616EC();
    a5[3] = v27;
    result = sub_100476E48(&qword_1009680E0, &type metadata accessor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v28;
  }

  return result;
}

void sub_100476A4C()
{
  v1 = *(v0 + qword_1009588F0);
}

void sub_100476A8C(uint64_t a1)
{
  v2 = *(a1 + qword_1009588F0);
}

unint64_t sub_100476AF4()
{
  result = qword_100958948;
  if (!qword_100958948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958948);
  }

  return result;
}

uint64_t sub_100476B48()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100476BE4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_1009588E8;
  if (qword_100940598 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009588C8);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = qword_1009588F0;
  sub_10075FD2C();
  *(v1 + v14) = sub_10075FB3C();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100476E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100476EF0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_100766E2C();
  v2 = sub_100766E4C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_100476FB8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100958350);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = sub_10076BBAC();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100016F40(0, &qword_100942F10);
      v15 = sub_100770CFC();
      sub_1002D76D0(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = sub_10076FF6C();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_10076BB6C();
  if (v21)
  {
    v22 = sub_10076FF6C();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  sub_10076BA4C();
  if (v23)
  {
    sub_1002D7980();
    v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = sub_10076FF6C();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_10076BBEC();
  if (v31)
  {
    v32 = sub_10076FF6C();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = sub_10076BADC();
  if (!v42)
  {
    sub_100016F40(0, &qword_100942F10);
    v42 = sub_100770D1C();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &off_100911000;
  v45 = [v30 layer];
  sub_10076BAEC();
  v46 = sub_1007663AC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_100477620(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  sub_10076639C();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_10000CF78(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = sub_10077165C();
  (*(v51 + 8))(v54, v49);
  v44 = &off_100911000;
  sub_10000CD74(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[274]];

  v58 = v62;
  sub_10076BAEC();
  v59 = v48(v58, 1, v46) == 1;
  sub_100477620(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}