uint64_t sub_1002CC700(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002CC748(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_presenter] = a1;
  v8 = objc_allocWithZone(UIPickerView);

  v9 = [v8 init];
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker] = v9;
  v10 = [objc_allocWithZone(UIPickerView) init];
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker] = v10;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v4, qword_1009D1610);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_backToUSButton] = DynamicTypeButton.__allocating_init(useCase:)();
  v13 = type metadata accessor for DebugStorefrontPickerViewController();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  sub_1002CD954(&qword_10097E810);
  v15 = v14;
  dispatch thunk of StorefrontPickerPagePresenter.view.setter();

  return v15;
}

id sub_1002CC9DC()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [v1 pageMarginInsets];
  [v3 setLayoutMargins:?];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker];
  [result addSubview:v8];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker];
  [result addSubview:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton];
  [result addSubview:v12];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_backToUSButton];
  [result addSubview:v14];

  [v8 setDelegate:v1];
  [v8 setDataSource:v1];
  [v10 setDelegate:v1];
  [v10 setDataSource:v1];
  [v8 selectRow:dispatch thunk of StorefrontPickerPagePresenter.selectedCountryIndex.getter() inComponent:0 animated:0];
  [v10 selectRow:dispatch thunk of StorefrontPickerPagePresenter.selectedLanguageIndex.getter() inComponent:0 animated:0];
  v15 = String._bridgeToObjectiveC()();
  [v12 setTitle:v15 forState:0];

  v16 = [v12 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setTextAlignment:1];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_20;
  }

  v18 = result;
  v19 = [result tintColor];

  [v12 setBackgroundColor:v19];
  v20 = [v5 whiteColor];
  [v12 setTitleColor:v20 forState:0];

  v21 = [v5 whiteColor];
  [v12 setTitleColor:v21 forState:2];

  [v12 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
  [v12 addTarget:v1 action:"setStorefront" forControlEvents:64];
  [v12 _setCornerRadius:10.0];
  sub_1002CD3E8();
  v22 = String._bridgeToObjectiveC()();
  [v14 setTitle:v22 forState:0];

  v23 = [v14 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setTextAlignment:1];
  }

  result = [v1 view];
  if (result)
  {
    v25 = result;
    v26 = [result tintColor];

    [v14 setBackgroundColor:v26];
    v27 = [v5 whiteColor];
    [v14 setTitleColor:v27 forState:0];

    v28 = [v5 whiteColor];
    [v14 setTitleColor:v28 forState:2];

    [v14 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
    [v14 addTarget:v1 action:"setStorefrontToUS" forControlEvents:64];
    return [v14 _setCornerRadius:10.0];
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1002CCFB0()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_countryPicker];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    [v4 sizeThatFits:{v5, v6}];
    v8 = v7;
    LayoutMarginsAware<>.layoutFrame.getter();
    MinX = CGRectGetMinX(v41);
    LayoutMarginsAware<>.layoutFrame.getter();
    v10 = CGRectGetMinY(v42) + 20.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v4 setFrame:{MinX, v10, CGRectGetWidth(v43), v8}];
    v11 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_languagePicker];
    LayoutMarginsAware<>.layoutFrame.getter();
    [v11 sizeThatFits:{v12, v13}];
    v15 = v14;
    LayoutMarginsAware<>.layoutFrame.getter();
    v16 = CGRectGetMinX(v44);
    [v4 frame];
    MaxY = CGRectGetMaxY(v45);
    LayoutMarginsAware<>.layoutFrame.getter();
    [v11 setFrame:{v16, MaxY, CGRectGetWidth(v46), v15}];
    v18 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton];
    LayoutMarginsAware<>.layoutFrame.getter();
    [v18 measurementsWithFitting:v3 in:{v19, v20}];
    v22 = v21;
    LayoutMarginsAware<>.layoutFrame.getter();
    v23 = CGRectGetMinX(v47);
    [v11 frame];
    v24 = CGRectGetMaxY(v48) + 20.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v49);
    [v18 titleEdgeInsets];
    v27 = v22 + v26;
    [v18 titleEdgeInsets];
    [v18 setFrame:{v23, v24, Width, v27 + v28}];
    v29 = *&v1[OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_backToUSButton];
    LayoutMarginsAware<>.layoutFrame.getter();
    [v29 measurementsWithFitting:v3 in:{v30, v31}];
    v33 = v32;
    LayoutMarginsAware<>.layoutFrame.getter();
    v34 = CGRectGetMinX(v50);
    [v18 frame];
    v35 = CGRectGetMaxY(v51) + 10.0;
    LayoutMarginsAware<>.layoutFrame.getter();
    v36 = CGRectGetWidth(v52);
    [v29 titleEdgeInsets];
    v38 = v33 + v37;
    [v29 titleEdgeInsets];
    [v29 setFrame:{v34, v35, v36, v38 + v39}];
  }
}

void sub_1002CD3E8()
{
  v1 = v0;
  updated = dispatch thunk of StorefrontPickerPagePresenter.canUpdateStorefront.getter();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = updated & 1;
  *(v4 + 24) = updated & 1;
  v15 = sub_1002CD994;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100007A08;
  v14 = &unk_1008BC8F0;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v15 = sub_1002CD9C8;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_100504C5C;
  v14 = &unk_1008BC940;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v3 animateWithDuration:v6 animations:v9 completion:0.2];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_1002CD7CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CD954(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugStorefrontPickerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002CD994()
{
  v1 = 0.4;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC8AppStore35DebugStorefrontPickerViewController_submitButton) setAlpha:v1];
}

uint64_t sub_1002CD9E8()
{
  sub_100005744(0, &qword_100978360);
  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.numberOfCountries.getter();
  }

  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.numberOfLanguages.getter();
  }

  return 0;
}

uint64_t sub_1002CDA8C()
{
  sub_100005744(0, &qword_100978360);
  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.country(at:)();
  }

  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.language(at:for:)();
  }

  return 0;
}

uint64_t sub_1002CDB48()
{
  sub_100005744(0, &qword_100978360);
  if (static NSObject.== infix(_:_:)())
  {
    return dispatch thunk of StorefrontPickerPagePresenter.didSelectCountry(at:)();
  }

  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    return dispatch thunk of StorefrontPickerPagePresenter.didSelectLanguage(at:)();
  }

  return result;
}

uint64_t type metadata accessor for HeaderButton()
{
  result = qword_10097E840;
  if (!qword_10097E840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002CDC94()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10097E818);
  v1 = sub_1000056A8(v0, qword_10097E818);
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0608);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002CDD5C()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton();
  if (qword_10096D640 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_10097E818);
  (*(v1 + 16))(v3, v4, v0);
  result = DynamicTypeButton.__allocating_init(useCase:)();
  qword_10097E830 = result;
  return result;
}

uint64_t sub_1002CDE78()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_10096D640 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_10097E818);
  (*(v1 + 16))(v3, v4, v0);
  v5 = DynamicTypeButton.__allocating_init(useCase:)();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

id sub_1002CDFBC(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_10097E838];
    v8 = [v2 traitCollection];
    v9 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v7;
    }

    if (v9)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if ((v9 & 1) == 0)
    {
      v7 = -v7;
    }

    [v2 setContentEdgeInsets:{0.0, v11, 0.0, v10}];
    return [v2 setImageEdgeInsets:{0.0, v7, 0.0, v12}];
  }

  return result;
}

void sub_1002CE0F0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002CDFBC(a3);
}

id sub_1002CE15C(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_10097E838] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1002CE1DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002CE220(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v10[3] = v2;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v3 + 16))(v7, v5, v2);
  CGFloat.scalingLike(_:with:)();
  (*(v3 + 8))(v5, v2);
  sub_100007000(v10);
  return JUScreenClassGetMain();
}

uint64_t TodayCardLockupLayout.Metrics.init(artworkSize:artworkMargin:ordinalSpaceProvider:headingSpace:titleSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:offerButtonSize:offerButtonMargin:preferVerticallyStackedIcon:preferStackedLargeAXLayouts:singleLineTitleAndSubtitle:allowAccessibilityLayout:backgroundAssetHeight:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, __int128 *a15, char a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  *a9 = a10;
  *(a9 + 8) = a11;
  sub_100005A38(a1, a9 + 16);
  *(a9 + 56) = a2;
  *(a9 + 64) = a3;
  sub_100005A38(a4, a9 + 72);
  sub_100005A38(a5, a9 + 112);
  sub_100005A38(a8, a9 + 232);
  sub_100005A38(a6, a9 + 152);
  sub_100005A38(a7, a9 + 192);
  *(a9 + 272) = a12;
  *(a9 + 280) = a13;
  *(a9 + 288) = a14 & 1;
  result = sub_100005A38(a15, a9 + 296);
  *(a9 + 336) = a16;
  *(a9 + 337) = a17;
  *(a9 + 338) = a18;
  *(a9 + 339) = a19;
  *(a9 + 344) = a20;
  *(a9 + 352) = a21 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t TodayCardLockupLayout.Metrics.ordinalSpaceProvider.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  sub_100007000(v1 + 72);

  return sub_100005A38(a1, v1 + 72);
}

uint64_t ArcadeSubscribePageLayout.Metrics.offerButtonHeight.setter(__int128 *a1)
{
  sub_100007000(v1 + 112);

  return sub_100005A38(a1, v1 + 112);
}

uint64_t TodayCardLockupLayout.Metrics.subtitleSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 152);

  return sub_100005A38(a1, v1 + 152);
}

uint64_t TodayCardLockupLayout.Metrics.tertiaryTitleSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 192);

  return sub_100005A38(a1, v1 + 192);
}

uint64_t TodayCardLockupLayout.Metrics.offerTextSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 232);

  return sub_100005A38(a1, v1 + 232);
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 272) = result;
  *(v3 + 280) = a2;
  *(v3 + 288) = a3 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.Metrics.offerButtonMargin.setter(__int128 *a1)
{
  sub_100007000(v1 + 296);

  return sub_100005A38(a1, v1 + 296);
}

uint64_t TodayCardLockupLayout.Metrics.backgroundAssetHeight.setter(uint64_t result, char a2)
{
  *(v2 + 344) = result;
  *(v2 + 352) = a2 & 1;
  return result;
}

uint64_t TodayCardLockupLayout.init(metrics:artworkView:ordinalText:headingText:titleText:subtitleText:tertiaryTitleText:crossLinkTitleText:crossLinkSubtitleText:offerText:offerButton:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v78 = a7;
  v79 = a5;
  v83 = a6;
  v80 = a4;
  v81 = a3;
  v74 = a1;
  v75 = a9;
  sub_10003B8E8(a1, v90);
  v82 = a8;
  v14 = *(a8 + 24);
  BYTE8(v90[47]) = v14 != 0;
  v15 = a2[3];
  v16 = a2[4];
  v76 = a2;
  sub_10002A400(a2, v15);
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v73 - v19;
  LayoutView.nilIfHidden()();
  v21 = *(v15 - 8);
  if ((*(v21 + 48))(v20, 1, v15) == 1)
  {
    (*(v18 + 8))(v20, v17);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v15;
    v89 = v16;
    v22 = sub_1000056E0(&v87);
    (*(v21 + 32))(v22, v20, v15);
  }

  *(&v90[22] + 8) = v87;
  *(&v90[23] + 8) = v88;
  *(&v90[24] + 1) = v89;
  sub_100031660(v81, v84, &unk_10097E890);
  v23 = v85;
  if (v85)
  {
    v24 = v86;
    sub_10002A400(v84, v85);
    v25 = type metadata accessor for Optional();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v73 - v27;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v23;
      v89 = v24;
      v30 = sub_1000056E0(&v87);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[25] = v87;
  v90[26] = v88;
  *&v90[27] = v89;
  sub_100031660(v80, v84, &unk_10097E890);
  v31 = v85;
  if (v85)
  {
    v32 = v86;
    sub_10002A400(v84, v85);
    v33 = type metadata accessor for Optional();
    v34 = *(v33 - 8);
    __chkstk_darwin(v33);
    v36 = &v73 - v35;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v37 = *(v31 - 8);
    if ((*(v37 + 48))(v36, 1, v31) == 1)
    {
      (*(v34 + 8))(v36, v33);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v31;
      v89 = v32;
      v38 = sub_1000056E0(&v87);
      (*(v37 + 32))(v38, v36, v31);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v77 = a10;
  *(&v90[27] + 8) = v87;
  *(&v90[28] + 8) = v88;
  *(&v90[29] + 1) = v89;
  sub_10002C0AC(v79, &v90[30]);
  v39 = v83[3];
  v40 = v83[4];
  sub_10002A400(v83, v39);
  v41 = type metadata accessor for Optional();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v73 - v43;
  if (v14)
  {
    LayoutTextView.nilIfHasNoContent()();
  }

  else
  {
    LayoutTextView.nilIfHiddenOrHasNoContent()();
  }

  v45 = *(v39 - 8);
  if ((*(v45 + 48))(v44, 1, v39) == 1)
  {
    (*(v42 + 8))(v44, v41);
    v89 = 0;
    v87 = 0u;
    v88 = 0u;
  }

  else
  {
    *(&v88 + 1) = v39;
    v89 = v40;
    v46 = sub_1000056E0(&v87);
    (*(v45 + 32))(v46, v44, v39);
  }

  *(&v90[32] + 8) = v87;
  *(&v90[33] + 8) = v88;
  *(&v90[34] + 1) = v89;
  sub_100031660(v78, v84, &unk_10097E890);
  v47 = v85;
  if (v85)
  {
    v48 = v86;
    sub_10002A400(v84, v85);
    v49 = type metadata accessor for Optional();
    v50 = *(v49 - 8);
    __chkstk_darwin(v49);
    v52 = &v73 - v51;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v53 = *(v47 - 8);
    if ((*(v53 + 48))(v52, 1, v47) == 1)
    {
      (*(v50 + 8))(v52, v49);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v47;
      v89 = v48;
      v54 = sub_1000056E0(&v87);
      (*(v53 + 32))(v54, v52, v47);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[35] = v87;
  v90[36] = v88;
  *&v90[37] = v89;
  sub_100031660(v82, &v90[37] + 8, &unk_10097E890);
  sub_100031660(v77, v84, &unk_10097E890);
  v55 = v85;
  if (v85)
  {
    v56 = v86;
    sub_10002A400(v84, v85);
    v57 = type metadata accessor for Optional();
    v58 = *(v57 - 8);
    __chkstk_darwin(v57);
    v60 = &v73 - v59;
    LayoutTextView.nilIfHasNoContent()();
    v61 = *(v55 - 8);
    if ((*(v61 + 48))(v60, 1, v55) == 1)
    {
      (*(v58 + 8))(v60, v57);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v55;
      v89 = v56;
      v62 = sub_1000056E0(&v87);
      (*(v61 + 32))(v62, v60, v55);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(v84, &unk_10097E890);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  v90[40] = v87;
  v90[41] = v88;
  *&v90[42] = v89;
  sub_100031660(a11, v84, &unk_10097E890);
  v63 = v85;
  if (v85)
  {
    v64 = v86;
    sub_10002A400(v84, v85);
    v65 = type metadata accessor for Optional();
    v66 = *(v65 - 8);
    __chkstk_darwin(v65);
    v68 = &v73 - v67;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v69 = *(v63 - 8);
    if ((*(v69 + 48))(v68, 1, v63) == 1)
    {
      sub_10002B894(a11, &unk_10097E890);
      sub_10002B894(v77, &unk_10097E890);
      sub_10002B894(v78, &unk_10097E890);
      sub_100007000(v79);
      sub_10002B894(v80, &unk_10097E890);
      sub_10002B894(v81, &unk_10097E890);
      sub_10003B944(v74);
      sub_10002B894(v82, &unk_10097E890);
      (*(v66 + 8))(v68, v65);
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    else
    {
      *(&v88 + 1) = v63;
      v89 = v64;
      v70 = sub_1000056E0(&v87);
      (*(v69 + 32))(v70, v68, v63);
      sub_10002B894(a11, &unk_10097E890);
      sub_10002B894(v77, &unk_10097E890);
      sub_10002B894(v78, &unk_10097E890);
      sub_100007000(v79);
      sub_10002B894(v80, &unk_10097E890);
      sub_10002B894(v81, &unk_10097E890);
      sub_10003B944(v74);
      sub_10002B894(v82, &unk_10097E890);
    }

    sub_100007000(v84);
  }

  else
  {
    sub_10002B894(a11, &unk_10097E890);
    sub_10002B894(v77, &unk_10097E890);
    sub_10002B894(v78, &unk_10097E890);
    sub_100007000(v79);
    sub_10002B894(v80, &unk_10097E890);
    sub_10002B894(v81, &unk_10097E890);
    sub_10003B944(v74);
    sub_10002B894(v82, &unk_10097E890);
    sub_10002B894(v84, &unk_10097E890);
    v87 = 0u;
    v88 = 0u;
    v89 = 0;
  }

  *(&v90[42] + 8) = v87;
  *(&v90[43] + 8) = v88;
  *(&v90[44] + 1) = v89;
  v71 = *(a12 + 16);
  v90[45] = *a12;
  v90[46] = v71;
  *&v90[47] = *(a12 + 32);
  memcpy(v75, v90, 0x2F9uLL);
  sub_100007000(v83);
  return sub_100007000(v76);
}

double TodayCardLockupLayout.measure(toFit:with:)(void *a1, double a2)
{
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(v2 + 339) == 1)
  {
    sub_1002CFB74(0, a1, v8);
  }

  else
  {
    sub_1002D07B0(0, a1, v8, a2);
  }

  sub_100005A38(v8, v9);
  sub_10002A400(v9, v9[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v6 = v5;
  sub_100007000(v9);
  return v6;
}

uint64_t TodayCardLockupLayout.place(at:with:)(void *a1, double a2, double a3, double a4)
{
  if (*(v4 + 760) == 1)
  {
    if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(v4 + 339) == 1)
    {
      sub_1002CFB74(1u, a1, v8);
    }

    else
    {
      sub_1002D07B0(1, a1, v8, a4);
    }

    sub_100005A38(v8, v9);
    sub_10002A400(v9, v10);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v9);
  }

  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(v4 + 339) == 1)
  {
    sub_1002CFB74(0, a1, v8);
  }

  else
  {
    sub_1002D07B0(0, a1, v8, a4);
  }

  sub_100005A38(v8, v9);
  sub_10002A400(v9, v10);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v9);
}

uint64_t sub_1002CFB74@<X0>(unsigned int a1@<W0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v78 = a1;
  v81 = a3;
  v6 = type metadata accessor for HorizontalStack();
  v76 = *(v6 - 8);
  v77 = v6;
  __chkstk_darwin(v6);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Resize.Rule();
  v10 = *(v9 - 8);
  v84 = v9;
  v85 = v10;
  __chkstk_darwin(v9);
  v89 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v86 = &v75 - v13;
  __chkstk_darwin(v14);
  v87 = &v75 - v15;
  __chkstk_darwin(v16);
  v18 = (&v75 - v17);
  v19 = type metadata accessor for VerticalStack();
  v79 = *(v19 - 8);
  v80 = v19;
  __chkstk_darwin(v19);
  v88 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  sub_10002A400((v3 + 112), *(v3 + 136));
  AnyDimension.value(with:)();
  v22 = v21 + v21;
  sub_10002A400((v4 + 152), *(v4 + 176));
  AnyDimension.value(with:)();
  v24 = v22 + v23;
  sub_100031660(v3 + 360, v90, &qword_100975610);
  v82 = a2;
  if (*(&v90[1] + 1))
  {
    sub_100005A38(v90, v94);
    if (*(v3 + 336) & 1) != 0 || (v39 = [a2 preferredContentSizeCategory], v40 = static UIContentSizeCategory.>= infix(_:_:)(), v39, (v40) && *(v4 + 337) == 1)
    {
      sub_10002A400(v94, v95);
      Measurable.placeable.getter();
      v25 = *v4;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v25;
      v26 = enum case for Resize.Rule.replaced(_:);
      v83 = enum case for Resize.Rule.replaced(_:);
      v27 = v84;
      v28 = *(v85 + 104);
      (v28)(v18, enum case for Resize.Rule.replaced(_:), v84);
      v29 = *(v4 + 8);
      v30 = v87;
      *(v87 + 3) = &type metadata for CGFloat;
      v30[4] = &protocol witness table for CGFloat;
      *v30 = v29;
      (v28)(v30, v26, v27);
      v31 = v18;
      v32 = enum case for Resize.Rule.unchanged(_:);
      (v28)(v86, enum case for Resize.Rule.unchanged(_:), v27);
      (v28)(v89, v32, v27);
      v77 = type metadata accessor for Resize();
      v92 = v77;
      v93 = &protocol witness table for Resize;
      sub_1000056E0(v91);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      sub_1002D358C(v4, v90);
      v33 = swift_allocObject();
      memcpy((v33 + 16), v90, 0x2F9uLL);
      v34 = v82;
      *(v33 + 784) = v82;
      v35 = v34;
      VerticalStack.add(_:with:)();
      v36 = v86;

      sub_100007000(v91);
      sub_1002D12FC(v78 & 1, v35, v90);
      static Center.Axis.neither.getter();
      v92 = type metadata accessor for Center();
      v93 = &protocol witness table for Center;
      sub_1000056E0(v91);
      Center.init(_:filling:)();
      v31[3] = &type metadata for CGFloat;
      v31[4] = &protocol witness table for CGFloat;
      *v31 = v24;
      (v28)(v31, v83, v27);
      (v28)(v87, v32, v27);
      (v28)(v36, v32, v27);
      v78 = v32;
      v37 = v32;
      v18 = v31;
      (v28)(v89, v37, v27);
      *(&v90[1] + 1) = v77;
      *&v90[2] = &protocol witness table for Resize;
      sub_1000056E0(v90);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      VerticalStack.add(_:with:)();
      sub_100007000(v90);
      v38 = v94;
      goto LABEL_12;
    }

    sub_100007000(v94);
  }

  else
  {
    sub_10002B894(v90, &qword_100975610);
  }

  HorizontalStack.init(with:)();
  sub_100031660(v4 + 360, v90, &qword_100975610);
  if (*(&v90[1] + 1))
  {
    sub_100005A38(v90, v94);
    v41 = v18;
    v42 = v84;
    v75 = v8;
    sub_10002A400(v94, v95);
    Measurable.placeable.getter();
    v43 = *v4;
    v41[3] = &type metadata for CGFloat;
    v41[4] = &protocol witness table for CGFloat;
    *v41 = v43;
    v44 = enum case for Resize.Rule.replaced(_:);
    v45 = v87;
    v46 = *(v85 + 104);
    v83 = enum case for Resize.Rule.replaced(_:);
    v46(v41, enum case for Resize.Rule.replaced(_:), v42);
    v47 = *(v4 + 8);
    v45[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    v48 = v89;
    v49 = v86;
    *v45 = v47;
    v46(v45, v44, v42);
    v50 = enum case for Resize.Rule.unchanged(_:);
    v46(v49, enum case for Resize.Rule.unchanged(_:), v42);
    v51 = v42;
    v18 = v41;
    v46(v48, v50, v51);
    a2 = v82;
    v92 = type metadata accessor for Resize();
    v93 = &protocol witness table for Resize;
    sub_1000056E0(v91);
    v8 = v75;
    v52 = v50;
    v53 = v83;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    sub_1002D358C(v4, v90);
    v54 = swift_allocObject();
    memcpy((v54 + 16), v90, 0x2F9uLL);
    *(v54 + 784) = a2;
    v55 = a2;
    HorizontalStack.add(_:with:)();

    sub_100007000(v91);
    sub_100007000(v94);
  }

  else
  {
    sub_10002B894(v90, &qword_100975610);
    v53 = enum case for Resize.Rule.replaced(_:);
    v52 = enum case for Resize.Rule.unchanged(_:);
  }

  sub_10002A400((v4 + 16), *(v4 + 40));
  AnyDimension.value(with:)();
  sub_1002D12FC(v78 & 1, a2, v90);
  static Center.Axis.vertical.getter();
  v95 = type metadata accessor for Center();
  v96 = &protocol witness table for Center;
  sub_1000056E0(v94);
  Center.init(_:filling:)();
  v18[3] = &type metadata for CGFloat;
  v18[4] = &protocol witness table for CGFloat;
  *v18 = v24;
  v28 = *(v85 + 104);
  v83 = v53;
  v56 = v53;
  v57 = v84;
  (v28)(v18, v56, v84);
  (v28)(v87, v52, v57);
  (v28)(v86, v52, v57);
  v78 = v52;
  v28(v89);
  *(&v90[1] + 1) = type metadata accessor for Resize();
  *&v90[2] = &protocol witness table for Resize;
  sub_1000056E0(v90);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  HorizontalStack.add(_:with:)();
  sub_100007000(v90);
  v58 = v77;
  *(&v90[1] + 1) = v77;
  *&v90[2] = &protocol witness table for HorizontalStack;
  v59 = sub_1000056E0(v90);
  v60 = v8;
  v61 = v76;
  (*(v76 + 16))(v59, v60, v58);
  VerticalStack.add(_:with:)();
  (*(v61 + 8))(v60, v58);
  v38 = v90;
LABEL_12:
  sub_100007000(v38);
  sub_100031660(v4 + 720, v90, &qword_100975610);
  if (*(&v90[1] + 1))
  {
    sub_100005A38(v90, v94);
    if ((*(v4 + 288) & 1) == 0)
    {
      v63 = *(v4 + 272);
      v62 = *(v4 + 280);
      v64 = v87;
      sub_10002A400(v94, v95);
      Measurable.placeable.getter();
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v63;
      v65 = v84;
      v66 = v83;
      (v28)(v18, v83, v84);
      v64[3] = &type metadata for CGFloat;
      v64[4] = &protocol witness table for CGFloat;
      *v64 = v62;
      (v28)(v64, v66, v65);
      v67 = v78;
      (v28)(v86, v78, v65);
      (v28)(v89, v67, v65);
      v92 = type metadata accessor for Resize();
      v93 = &protocol witness table for Resize;
      sub_1000056E0(v91);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      sub_1002D358C(v4, v90);
      v68 = swift_allocObject();
      memcpy((v68 + 16), v90, 0x2F9uLL);
      v69 = v82;
      *(v68 + 784) = v82;
      v70 = v69;
      VerticalStack.add(_:with:)();

      sub_100007000(v91);
    }

    sub_100007000(v94);
  }

  else
  {
    sub_10002B894(v90, &qword_100975610);
  }

  v72 = v80;
  v71 = v81;
  v81[3] = v80;
  v71[4] = &protocol witness table for VerticalStack;
  v73 = sub_1000056E0(v71);
  return (*(v79 + 32))(v73, v88, v72);
}

uint64_t sub_1002D07B0@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v85 = a2;
  LODWORD(v6) = a1;
  v78 = a3;
  v82 = type metadata accessor for Resize.Rule();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v84 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v75 - v11;
  __chkstk_darwin(v12);
  v14 = &v75 - v13;
  __chkstk_darwin(v15);
  v17 = &v75 - v16;
  v18 = type metadata accessor for HorizontalStack();
  v79 = *(v18 - 8);
  v80 = v18;
  __chkstk_darwin(v18);
  v86 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  sub_100031660(v4 + 360, v88, &qword_100975610);
  if (*(&v88[1] + 1))
  {
    sub_100005A38(v88, v95);
    if ((*(v4 + 336) & 1) == 0)
    {
      sub_10002A400(v95, v96);
      Measurable.placeable.getter();
      v20 = *v4;
      *(v17 + 3) = &type metadata for CGFloat;
      *(v17 + 4) = &protocol witness table for CGFloat;
      *v17 = v20;
      v21 = enum case for Resize.Rule.replaced(_:);
      v22 = *(v8 + 104);
      v77 = v6;
      v6 = v82;
      v22(v17, enum case for Resize.Rule.replaced(_:), v82);
      v23 = *(v5 + 8);
      *(v14 + 3) = &type metadata for CGFloat;
      *(v14 + 4) = &protocol witness table for CGFloat;
      *v14 = v23;
      v22(v14, v21, v6);
      v24 = enum case for Resize.Rule.unchanged(_:);
      v81 = v8;
      v22(v83, enum case for Resize.Rule.unchanged(_:), v6);
      v25 = v6;
      LOBYTE(v6) = v77;
      v22(v84, v24, v25);
      v93 = type metadata accessor for Resize();
      v94 = &protocol witness table for Resize;
      sub_1000056E0(v92);
      v8 = v81;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      sub_1002D358C(v5, v88);
      v26 = swift_allocObject();
      memcpy((v26 + 16), v88, 0x2F9uLL);
      v27 = v85;
      *(v26 + 784) = v85;
      v28 = v27;
      HorizontalStack.add(_:with:)();

      sub_100007000(v92);
      sub_10002A400((v5 + 16), *(v5 + 40));
      AnyDimension.value(with:)();
      a4 = a4 - v20 - v29;
    }

    sub_100007000(v95);
  }

  else
  {
    sub_10002B894(v88, &qword_100975610);
  }

  sub_100031660(v5 + 720, v88, &qword_100975610);
  v30 = *(&v88[1] + 1);
  sub_10002B894(v88, &qword_100975610);
  if (v30 && (*(v5 + 288) & 1) == 0)
  {
    v31 = a4 - *(v5 + 272);
    sub_10002A400((v5 + 296), *(v5 + 320));
    AnyDimension.value(with:)();
    a4 = v31 - v32;
  }

  sub_1002D12FC(v6 & 1, v85, v95);
  sub_10002A400(v95, v96);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10002C0AC(v95, v92);
  *(v17 + 3) = &type metadata for CGFloat;
  *(v17 + 4) = &protocol witness table for CGFloat;
  *v17 = a4;
  v41 = enum case for Resize.Rule.replaced(_:);
  v42 = *(v8 + 104);
  v43 = v82;
  v42(v17, enum case for Resize.Rule.replaced(_:), v82);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v36;
  v77 = v41;
  v42(v14, v41, v43);
  v44 = enum case for Resize.Rule.unchanged(_:);
  v42(v83, enum case for Resize.Rule.unchanged(_:), v43);
  v76 = v44;
  v81 = v8 + 104;
  v42(v84, v44, v43);
  v45 = type metadata accessor for Resize();
  *(&v88[1] + 1) = v45;
  *&v88[2] = &protocol witness table for Resize;
  sub_1000056E0(v88);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  HorizontalStack.add(_:with:)();
  sub_100007000(v88);
  sub_100031660(v5 + 720, v88, &qword_100975610);
  if (!*(&v88[1] + 1))
  {
    sub_10002B894(v88, &qword_100975610);
    goto LABEL_13;
  }

  sub_100005A38(v88, v92);
  if ((*(v5 + 288) & 1) == 0)
  {
    v50 = *(v5 + 272);
    v49 = *(v5 + 280);
    sub_10002A400(v92, v93);
    Measurable.placeable.getter();
    *(v17 + 3) = &type metadata for CGFloat;
    *(v17 + 4) = &protocol witness table for CGFloat;
    *v17 = v50;
    v51 = v77;
    v75 = v45;
    v52 = v82;
    v42(v17, v77, v82);
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = v49;
    v42(v14, v51, v52);
    v53 = v76;
    v42(v83, v76, v52);
    v54 = v52;
    v55 = v75;
    v42(v84, v53, v54);
    *(&v88[1] + 1) = v55;
    *&v88[2] = &protocol witness table for Resize;
    sub_1000056E0(v88);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    static Center.Axis.vertical.getter();
    v90 = type metadata accessor for Center();
    v91 = &protocol witness table for Center;
    sub_1000056E0(v89);
    Center.init(_:filling:)();
    sub_1002D358C(v5, v88);
    v56 = swift_allocObject();
    memcpy((v56 + 16), v88, 0x2F9uLL);
    v57 = v85;
    *(v56 + 784) = v85;
    v58 = v57;
    HorizontalStack.add(_:with:)();

    sub_100007000(v89);
    sub_100031660(v5 + 360, v88, &qword_100975610);
    if (*(&v88[1] + 1))
    {
      sub_100005A38(v88, v89);
      v59 = v78;
      if (*(v5 + 336) == 1)
      {
        v59[3] = type metadata accessor for VerticalStack();
        v59[4] = &protocol witness table for VerticalStack;
        v85 = sub_1000056E0(v59);
        VerticalStack.init(with:)();
        sub_10002A400(v89, v90);
        Measurable.placeable.getter();
        v60 = *v5;
        *(v17 + 3) = &type metadata for CGFloat;
        *(v17 + 4) = &protocol witness table for CGFloat;
        *v17 = v60;
        v61 = v77;
        v62 = v82;
        v78 = v58;
        v42(v17, v77, v82);
        v63 = *(v5 + 8);
        *(v14 + 3) = &type metadata for CGFloat;
        *(v14 + 4) = &protocol witness table for CGFloat;
        *v14 = v63;
        v42(v14, v61, v62);
        v64 = v76;
        v42(v83, v76, v62);
        v42(v84, v64, v62);
        v87[3] = v75;
        v87[4] = &protocol witness table for Resize;
        sub_1000056E0(v87);
        Resize.init(_:width:height:firstBaseline:lastBaseline:)();
        sub_1002D358C(v5, v88);
        v65 = swift_allocObject();
        v65[2] = v50;
        v65[3] = v49;
        v65[4] = v34;
        v65[5] = v36;
        v65[6] = v38;
        v65[7] = v40;
        memcpy(v65 + 8, v88, 0x2F9uLL);
        v66 = v78;
        v65[104] = v78;
        v67 = v66;
        VerticalStack.add(_:with:)();

        sub_100007000(v87);
        v68 = v80;
        *(&v88[1] + 1) = v80;
        *&v88[2] = &protocol witness table for HorizontalStack;
        v69 = sub_1000056E0(v88);
        v70 = v79;
        v71 = v86;
        (*(v79 + 16))(v69, v86, v68);
        VerticalStack.add(_:with:)();
        (*(v70 + 8))(v71, v68);
        sub_100007000(v88);
        sub_100007000(v89);
LABEL_20:
        sub_100007000(v92);
        return sub_100007000(v95);
      }

      sub_100007000(v89);
    }

    else
    {
      sub_10002B894(v88, &qword_100975610);
      v59 = v78;
    }

    v72 = v80;
    v59[3] = v80;
    v59[4] = &protocol witness table for HorizontalStack;
    v73 = sub_1000056E0(v59);
    (*(v79 + 32))(v73, v86, v72);
    goto LABEL_20;
  }

  sub_100007000(v92);
LABEL_13:
  v46 = v80;
  v47 = v78;
  v78[3] = v80;
  v47[4] = &protocol witness table for HorizontalStack;
  v48 = sub_1000056E0(v47);
  (*(v79 + 32))(v48, v86, v46);
  return sub_100007000(v95);
}

uint64_t sub_1002D12FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for Resize.Rule();
  v36 = *(v7 - 8);
  v37 = v7;
  __chkstk_darwin(v7);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v39 = &v35 - v10;
  __chkstk_darwin(v11);
  v38 = &v35 - v12;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for VerticalStack();
  v41 = *(v16 - 8);
  v42 = v16;
  __chkstk_darwin(v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002D358C(v3, v48);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v48, 0x2F9uLL);
  VerticalStack.init(with:)();
  sub_100031660(v3 + 440, v48, &unk_10097E890);
  if (*(&v48[1] + 1))
  {
    sub_100005A38(v48, &v46);
    sub_10002A400(&v46, v47);
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_10002A400(&v46, v47);
    dispatch thunk of LayoutTextView.lineBreakMode.setter();
    sub_10002A400(&v46, v47);
    Measurable.placeable.getter();
    sub_1002D358C(v3, v48);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v48, 0x2F9uLL);
    VerticalStack.add(_:with:)();

    sub_100007000(v43);
    sub_100007000(&v46);
  }

  else
  {
    sub_10002B894(v48, &unk_10097E890);
  }

  sub_1002D1E94(a1 & 1, a2, v48);
  VerticalStack.add(_:with:)();
  sub_100007000(v48);
  sub_100031660(v3 + 560, v48, &unk_10097E890);
  if (*(&v48[1] + 1))
  {
    sub_100005A38(v48, &v46);
    sub_10002A400(&v46, v47);
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_10002A400(&v46, v47);
    dispatch thunk of LayoutTextView.lineBreakMode.setter();
    sub_10002A400(&v46, v47);
    Measurable.placeable.getter();
    sub_1002D358C(v3, v48);
    v21 = swift_allocObject();
    memcpy((v21 + 16), v48, 0x2F9uLL);
    VerticalStack.add(_:with:)();

    sub_100007000(v43);
    sub_100007000(&v46);
  }

  else
  {
    sub_10002B894(v48, &unk_10097E890);
  }

  sub_100031660(v3 + 680, v48, &unk_10097E890);
  if (*(&v48[1] + 1))
  {
    sub_100005A38(v48, &v46);
    sub_10002A400(&v46, v47);
    Measurable.placeable.getter();
    sub_1002D358C(v3, v48);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v48, 0x2F9uLL);
    VerticalStack.add(_:with:)();

    sub_100007000(v43);
    sub_100007000(&v46);
  }

  else
  {
    sub_10002B894(v48, &unk_10097E890);
  }

  sub_100031660(v3 + 400, &v46, &unk_10097E890);
  if (v47)
  {
    sub_100005A38(&v46, v48);
    v23 = *(v3 + 56);
    sub_10002A400(v48, *(&v48[1] + 1));
    v24 = dispatch thunk of LayoutTextView.textLength.getter();
    v23(&v46, v24);
    a3[3] = type metadata accessor for HorizontalStack();
    a3[4] = &protocol witness table for HorizontalStack;
    sub_1000056E0(a3);
    HorizontalStack.init(with:)();
    sub_10002A400(v48, *(&v48[1] + 1));
    Measurable.placeable.getter();
    sub_10002C0AC(&v46, v15);
    v25 = *(v36 + 13);
    v36 = v18;
    v26 = v37;
    v25(v15, enum case for Resize.Rule.replaced(_:), v37);
    v27 = enum case for Resize.Rule.unchanged(_:);
    v25(v38, enum case for Resize.Rule.unchanged(_:), v26);
    v25(v39, v27, v26);
    v25(v40, v27, v26);
    v44 = type metadata accessor for Resize();
    v45 = &protocol witness table for Resize;
    sub_1000056E0(v43);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    HorizontalStack.add(_:with:)();
    sub_100007000(v43);
    v28 = v42;
    v44 = v42;
    v45 = &protocol witness table for VerticalStack;
    v29 = sub_1000056E0(v43);
    v30 = v41;
    v31 = v36;
    (*(v41 + 16))(v29, v36, v28);
    HorizontalStack.add(_:with:)();
    sub_100007000(&v46);
    (*(v30 + 8))(v31, v28);
    sub_100007000(v43);
    return sub_100007000(v48);
  }

  else
  {
    sub_10002B894(&v46, &unk_10097E890);
    v33 = v42;
    a3[3] = v42;
    a3[4] = &protocol witness table for VerticalStack;
    v34 = sub_1000056E0(a3);
    return (*(v41 + 32))(v34, v18, v33);
  }
}

uint64_t sub_1002D1B20(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 296), *(a2 + 320));
  AnyDimension.value(with:)();
  return HorizontalStack.Properties.leadingSpacing.setter();
}

uint64_t sub_1002D1BA0(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 16), *(a2 + 40));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_1002D1C48(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 16), *(a2 + 40));
  AnyDimension.value(with:)();
  result = VerticalStack.Properties.bottomSpacing.setter();
  if (*(a2 + 336) == 1)
  {
    return VerticalStack.Properties.alignment.setter();
  }

  return result;
}

uint64_t sub_1002D1CEC(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 16), *(a2 + 40));
  AnyDimension.value(with:)();
  return HorizontalStack.Properties.trailingSpacing.setter();
}

uint64_t sub_1002D1D6C(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 296), *(a2 + 320));
  AnyDimension.value(with:)();
  result = VerticalStack.Properties.topSpacing.setter();
  if (*(a2 + 336) == 1)
  {
    sub_10002A400((a2 + 296), *(a2 + 320));
    AnyDimension.value(with:)();
    return VerticalStack.Properties.bottomSpacing.setter();
  }

  return result;
}

uint64_t sub_1002D1E4C(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 72, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002D1E94@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v27[1] = a2;
  v29 = a3;
  v30 = type metadata accessor for VerticalStack();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  sub_100031660(v3 + 440, v31, &unk_10097E890);
  v8 = *(&v31[1] + 1);
  sub_10002B894(v31, &unk_10097E890);
  sub_100031660(v3 + 680, v31, &unk_10097E890);
  v9 = *(&v31[1] + 1);
  sub_10002B894(v31, &unk_10097E890);
  sub_100031660(v3 + 560, v31, &unk_10097E890);
  v10 = *(&v31[1] + 1);
  sub_10002B894(v31, &unk_10097E890);
  sub_10002A400((v4 + 480), *(v4 + 504));
  if (dispatch thunk of LayoutTextView.isTextExtraTall.getter())
  {
    goto LABEL_4;
  }

  sub_100031660(v3 + 520, v31, &unk_10097E890);
  if (*(&v31[1] + 1))
  {
    sub_10002A400(v31, *(&v31[1] + 1));
    v11 = dispatch thunk of LayoutTextView.isTextExtraTall.getter();
    sub_100007000(v31);
    if (v11)
    {
LABEL_4:
      v12 = 1;
      if (v8)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = v10 | v9;
      v15 = v7;
      if (!v14)
      {
        v12 = v13;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_10002B894(v31, &unk_10097E890);
  }

  if (v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  v16 = 2;
  if (!v8)
  {
    v16 = 3;
  }

  if (!(v10 | v9))
  {
    v12 = v16;
  }

  v15 = v7;
LABEL_18:
  sub_1002D2568(v12, a1 & 1);
  v18 = v17;
  v20 = v19;
  if (a1)
  {
    sub_100031660(v4 + 600, v37, &unk_10097E890);
  }

  else
  {
    sub_10002C0AC(v4 + 480, v37);
  }

  sub_100031660(v37, &v35, &unk_10097E890);
  if (v36)
  {
    sub_100005A38(&v35, v31);
    if ((v18 & 1) == 0)
    {
      sub_10002A400(v31, *(&v31[1] + 1));
      Measurable.placeable.getter();
      VerticalStack.add(_:with:)();
      sub_100007000(&v35);
      sub_10002A400(v31, *(&v31[1] + 1));
      dispatch thunk of LayoutTextView.numberOfLines.setter();
      sub_10002A400(v31, *(&v31[1] + 1));
      dispatch thunk of LayoutTextView.lineBreakMode.setter();
      goto LABEL_28;
    }

    sub_100007000(v31);
  }

  else
  {
    sub_10002B894(&v35, &unk_10097E890);
  }

  sub_100031660(v37, v31, &unk_10097E890);
  if (*(&v31[1] + 1))
  {
    sub_10002A400(v31, *(&v31[1] + 1));
    dispatch thunk of LayoutTextView.numberOfLines.setter();
LABEL_28:
    sub_100007000(v31);
    goto LABEL_30;
  }

  sub_10002B894(v31, &unk_10097E890);
LABEL_30:
  v21 = 520;
  if (a1)
  {
    v21 = 640;
  }

  sub_100031660(v4 + v21, &v35, &unk_10097E890);
  sub_100031660(&v35, v31, &unk_10097E890);
  if (*(&v31[1] + 1))
  {
    sub_100005A38(v31, v33);
    if ((v20 & 1) == 0)
    {
      sub_10002A400(v33, v34);
      Measurable.placeable.getter();
      sub_1002D358C(v4, v31);
      v22 = swift_allocObject();
      memcpy((v22 + 16), v31, 0x2F9uLL);
      VerticalStack.add(_:with:)();

      sub_100007000(&v32);
      sub_10002A400(v33, v34);
      dispatch thunk of LayoutTextView.numberOfLines.setter();
      sub_10002A400(v33, v34);
      dispatch thunk of LayoutTextView.lineBreakMode.setter();
      sub_100007000(v33);
      goto LABEL_40;
    }

    sub_100007000(v33);
  }

  else
  {
    sub_10002B894(v31, &unk_10097E890);
  }

  sub_100031660(&v35, v31, &unk_10097E890);
  if (*(&v31[1] + 1))
  {
    sub_10002A400(v31, *(&v31[1] + 1));
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_100007000(v31);
  }

  else
  {
    sub_10002B894(v31, &unk_10097E890);
  }

LABEL_40:
  v23 = v29;
  v24 = v30;
  v29[3] = v30;
  v23[4] = &protocol witness table for VerticalStack;
  v25 = sub_1000056E0(v23);
  (*(v28 + 32))(v25, v15, v24);
  sub_10002B894(&v35, &unk_10097E890);
  return sub_10002B894(v37, &unk_10097E890);
}

uint64_t sub_1002D24D8(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 192, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002D2520(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 232, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1002D2568(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_100031660(v2 + 600, v24, &unk_10097E890);
    v4 = 640;
  }

  else
  {
    sub_10002C0AC(v2 + 480, v24);
    v4 = 520;
  }

  sub_100031660(v2 + v4, v23, &unk_10097E890);
  if (*(v2 + 338) == 1)
  {
    sub_100031660(v23, v21, &unk_10097E890);
    if (v22)
    {
      sub_10002A400(v21, v22);
      dispatch thunk of LayoutView.hasContent.getter();
      sub_10002B894(v23, &unk_10097E890);
      sub_10002B894(v24, &unk_10097E890);
      sub_100007000(v21);
    }

    else
    {
      sub_10002B894(v23, &unk_10097E890);
      sub_10002B894(v24, &unk_10097E890);
      sub_10002B894(v21, &unk_10097E890);
    }

    v5 = 0;
    result = 1;
    goto LABEL_33;
  }

  sub_100031660(v24, &v19, &unk_10097E890);
  if (v20)
  {
    sub_100005A38(&v19, v21);
    sub_10002A400(v21, v22);
    dispatch thunk of LayoutTextView.numberOfLines.setter();
    sub_10002A400(v21, v22);
    Measurable.measurements(fitting:with:)();
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_10002A400(v21, v22);
    v25.var0 = v8;
    v25.var1 = v10;
    v25.var2 = v12;
    v25.var3 = v14;
    v15 = LayoutTextView.estimatedNumberOfLines(from:)(v25) > 1;
    sub_100007000(v21);
  }

  else
  {
    sub_10002B894(&v19, &unk_10097E890);
    v15 = 0;
  }

  sub_100031660(v23, v21, &unk_10097E890);
  if (v22)
  {
    sub_10002A400(v21, v22);
    v16 = dispatch thunk of LayoutView.hasContent.getter();
    sub_10002B894(v23, &unk_10097E890);
    sub_10002B894(v24, &unk_10097E890);
    result = sub_100007000(v21);
    if (v15)
    {
      v17 = a1;
      if (v16)
      {
        v17 = a1 - 1;
        if (__OFSUB__(a1, 1))
        {
          goto LABEL_35;
        }
      }

      if (v17 <= 1)
      {
        result = 1;
      }

      else
      {
        result = v17;
      }
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      if (v16)
      {
        v5 = a1 - result < 1;
LABEL_33:
        v24[0] = 0;
        v23[0] = v5;
        return result;
      }

LABEL_32:
      v5 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_10002B894(v23, &unk_10097E890);
    sub_10002B894(v24, &unk_10097E890);
    sub_10002B894(v21, &unk_10097E890);
    if (a1 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = a1;
    }

    if (v15)
    {
      result = v18;
    }

    else
    {
      result = 1;
    }

    if (!__OFSUB__(a1, result))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1002D2920(uint64_t a1, uint64_t a2)
{
  static VerticalStack.Edge.top.getter();
  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  sub_10002C0AC(a2 + 152, v4);
  return VerticalStack.Properties.topSpacing.setter();
}

double _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, id a2, double a3)
{
  v5 = [a2 preferredContentSizeCategory];
  v6 = static UIContentSizeCategory.>= infix(_:_:)();

  if ((v6 & 1) != 0 && *(a1 + 337) == 1)
  {
    sub_10002A400((a1 + 112), *(a1 + 136));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 152), *(a1 + 176));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 16), *(a1 + 40));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 296), *(a1 + 320));
    AnyDimension.value(with:)();
    return a3;
  }

  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 && *(a1 + 339) == 1)
  {
    sub_10002A400((a1 + 112), *(a1 + 136));
    AnyDimension.value(with:)();
    sub_10002A400((a1 + 152), *(a1 + 176));
    AnyDimension.value(with:)();
    if (*(a1 + 336) == 1)
    {
      sub_10002A400((a1 + 16), *(a1 + 40));
      AnyDimension.value(with:)();
    }

    v7 = *(a1 + 320);
    v8 = (a1 + 296);
    goto LABEL_12;
  }

  sub_10002A400((a1 + 112), *(a1 + 136));
  AnyDimension.value(with:)();
  sub_10002A400((a1 + 152), *(a1 + 176));
  AnyDimension.value(with:)();
  sub_10002A400((a1 + 192), *(a1 + 216));
  AnyDimension.value(with:)();
  if (*(a1 + 336) == 1 || (*(a1 + 352) & 1) == 0)
  {
    v7 = *(a1 + 40);
    v8 = (a1 + 16);
LABEL_12:
    sub_10002A400(v8, v7);
    AnyDimension.value(with:)();
  }

  return a3;
}

uint64_t sub_1002D2C94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
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

uint64_t sub_1002D2CDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002D2DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 353))
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

uint64_t sub_1002D2E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1002D2EF4(void *a1, uint64_t a2, char a3)
{
  if (*(a2 + 336) == 1)
  {
    result = 160.0;
    if (*(a2 + 339))
    {
      return 293.0;
    }

    return result;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
    goto LABEL_18;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_10:

    return 52.0;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
    goto LABEL_18;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_10;
  }

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;
  if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
  {
LABEL_18:

    return 52.0;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    goto LABEL_10;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {

    return 54.0;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {

    return 54.0;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {

    return 62.0;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {

    return 62.0;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {

    return 67.0;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {

    return 67.0;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {

    return 76.0;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {

    return 76.0;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {

    return 153.0;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {

    return 153.0;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {

    return 170.0;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {

    return 170.0;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {

    return 193.0;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {

    return 193.0;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {
    goto LABEL_66;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
  }

  else
  {
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
    if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
    {
LABEL_66:

      goto LABEL_72;
    }

    v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v68 & 1) == 0)
    {
      return 52.0;
    }
  }

LABEL_72:
  result = 216.0;
  if (a3)
  {
    return 293.0;
  }

  return result;
}

uint64_t sub_1002D365C()
{
  sub_100007000((v0 + 4));

  sub_100007000((v0 + 11));
  sub_100007000((v0 + 16));
  sub_100007000((v0 + 21));
  sub_100007000((v0 + 26));
  sub_100007000((v0 + 31));
  sub_100007000((v0 + 39));
  if (v0[50])
  {
    sub_100007000((v0 + 47));
  }

  if (v0[55])
  {
    sub_100007000((v0 + 52));
  }

  if (v0[60])
  {
    sub_100007000((v0 + 57));
  }

  sub_100007000((v0 + 62));
  if (v0[70])
  {
    sub_100007000((v0 + 67));
  }

  if (v0[75])
  {
    sub_100007000((v0 + 72));
  }

  if (v0[80])
  {
    sub_100007000((v0 + 77));
  }

  if (v0[85])
  {
    sub_100007000((v0 + 82));
  }

  if (v0[90])
  {
    sub_100007000((v0 + 87));
  }

  if (v0[95])
  {
    sub_100007000((v0 + 92));
  }

  return _swift_deallocObject(v0, 777, 7);
}

__n128 ProductLockupAccessibilityLayout.init(metrics:iconView:titleText:developerText:taglineText:tertiaryTitleText:offerButton:shareButton:offerSubtitleText:expandedOfferTitleText:expandedOfferSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v20 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  sub_1002D38FC(a1, a9 + *(v20 + 64));
  sub_100005A38(a2, a9);
  sub_100005A38(a3, a9 + 40);
  sub_100005A38(a4, a9 + 80);
  sub_100005A38(a5, a9 + 120);
  v21 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v21;
  *(a9 + 192) = *(a6 + 32);
  sub_100005A38(a7, a9 + 200);
  v22 = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = v22;
  *(a9 + 272) = *(a8 + 32);
  sub_100005A38(a10, a9 + 280);
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

uint64_t sub_1002D38FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:titleSpace:developerSpace:taglineSpace:tertiaryTitleSpace:shareButtonLeadingMargin:offerTopSpace:offerSubtitleSpace:expandedOfferTitleSpace:expandedOfferSubtitleSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, uint64_t a17, __int128 *a18, __int128 *a19)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_100005A38(a1, (a9 + 4));
  sub_100005A38(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v28 = v27[8];
  v29 = sub_10002849C(&qword_100979010);
  v30 = *(*(v29 - 8) + 32);
  v30(a9 + v28, a3, v29);
  v30(a9 + v27[9], a4, v29);
  v30(a9 + v27[10], a5, v29);
  v30(a9 + v27[11], a6, v29);
  sub_100005A38(a7, a9 + v27[12]);
  sub_100005A38(a8, a9 + v27[13]);
  sub_100005A38(a16, a9 + v27[14]);
  v30(a9 + v27[15], a17, v29);
  sub_100005A38(a18, a9 + v27[16]);
  v31 = a9 + v27[17];

  return sub_100005A38(a19, v31);
}

void ProductLockupAccessibilityLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  sub_100007000(v1 + 32);

  return sub_100005A38(a1, v1 + 32);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.developerSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 36);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.taglineSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 44);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 48);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 52);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.offerSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 56);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 60);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 64);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0) + 68);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupAccessibilityLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);

  return sub_1002D486C(v3, a1);
}

uint64_t sub_1002D486C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double ProductLockupAccessibilityLayout.measurements(fitting:in:)(void *a1, double a2)
{
  ObjectType = swift_getObjectType();

  return sub_1002D7D34(a1, v2, ObjectType, a2);
}

uint64_t ProductLockupAccessibilityLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v293 = a2;
  v13 = type metadata accessor for LayoutRect();
  v291 = *(v13 - 8);
  v292 = v13;
  __chkstk_darwin(v13);
  v290 = &v276 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for _VerticalFlowLayout();
  v288 = *(v15 - 8);
  v289 = v15;
  __chkstk_darwin(v15);
  v304 = &v276 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v312 = type metadata accessor for _VerticalFlowLayout.Child();
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
  v339 = type metadata accessor for _VerticalFlowLayout.ExclusionCondition();
  v344 = *(v339 - 8);
  __chkstk_darwin(v339);
  v315 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = type metadata accessor for _VerticalFlowLayout.Child.HorizontalAlignment();
  v342 = *(v343 - 8);
  __chkstk_darwin(v343);
  v317 = &v276 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v340 = type metadata accessor for _VerticalFlowLayout.Child.Placement();
  v345 = *(v340 - 8);
  __chkstk_darwin(v340);
  v338 = &v276 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FloatingPointRoundingRule();
  v32 = *(v31 - 8);
  *&v33 = __chkstk_darwin(v31).n128_u64[0];
  v35 = &v276 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [a1 traitCollection];
  v305 = UITraitCollection.isSizeClassRegular.getter();

  v37 = v7 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10002A400((v37 + 32), *(v37 + 56));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v39 = v38;
  v40 = *(v32 + 8);
  v40(v35, v31);
  sub_10002A400((v37 + 72), *(v37 + 96));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
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
  v54 = sub_1000CC354(v48, v50, v52, a6, v47, v46);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  sub_100031660((v44 + 30), v359, &qword_100975610);
  v341 = a1;
  v303 = v60;
  if (v360)
  {
    sub_10002A400(v359, v360);
    Measurable.measuredSize(fitting:in:)();
    v295 = v61;
    v63 = v62;
    sub_100007000(v359);
  }

  else
  {
    sub_10002B894(v359, &qword_100975610);
    v295 = 0.0;
    v63 = 0;
  }

  v280 = v63;
  sub_100031660((v44 + 30), v359, &qword_100975610);
  v64 = v360;
  sub_10002B894(v359, &qword_100975610);
  v296 = v53;
  v297 = v39;
  v299 = v49;
  v300 = v51;
  if (v64)
  {
    v65 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400((v37 + *(v65 + 48)), *(v37 + *(v65 + 48) + 24));
    v66 = v307;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v67 = v341;
    AnyDimension.value(in:rounded:)();
    v69 = v68;
    v306(v66, v309);
  }

  else
  {
    v69 = 0.0;
    v67 = v341;
  }

  v70 = [v67 traitCollection];
  v71 = UITraitCollection.prefersRightToLeftLayouts.getter();

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
  sub_10002A400(v44, v44[3]);
  v80 = *(v37 + 120);
  LayoutView.withMeasurements(representing:)();
  v81 = v44[13];
  v337 = v44 + 10;
  sub_10002A400(v44 + 10, v81);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v83 = v82;
  v85 = v84;
  v86 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  v87 = v45;
  v88 = (v45 + *(v86 + 36));
  *&v356 = v67;
  v89 = sub_10002849C(&qword_100979010);
  v336 = v88;
  Conditional.evaluate(with:)();
  *&v356 = v359[0];
  AnyDimension.topMargin(from:in:)();
  v91 = v83 - v85 + v90;
  v92 = (v44 + 15);
  sub_10002A400(v44 + 15, v44[18]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v94 = v93;
  v96 = v95;
  v321 = v86;
  v322 = v87;
  *&v356 = v67;
  v311 = v89;
  Conditional.evaluate(with:)();
  *&v356 = v359[0];
  AnyDimension.topMargin(from:in:)();
  v98 = v94 - v96 + v97;
  if (v98 >= v91)
  {
    sub_10002C0AC(v92, &v356);
    v92 = v337;
  }

  else
  {
    sub_10002C0AC(v337, &v356);
  }

  v99 = v323;
  v100 = v339;
  v101 = v344;
  sub_10002C0AC(v92, &v353);
  v102 = v341;
  *&v350 = v341;
  Conditional.evaluate(with:)();
  v103 = v359[0];
  *&v350 = v102;
  Conditional.evaluate(with:)();
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
  sub_100005A38(&v356, v359);
  sub_10002C0AC(&v350, &v362);
  sub_100005A38(&v353, v363);
  sub_100005A38(&v347, v365);
  sub_100007000(&v350);
  v106 = v314;
  sub_10002A400(v314 + 25, v314[28]);
  Measurable.measuredSize(fitting:in:)();
  v108 = v107;
  sub_10002849C(&qword_10096FE38);
  v316 = *(v99 + 72);
  v109 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v281 = 2 * v316;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1007B1E00;
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
  v115 = sub_10002849C(&unk_10097E8A0);
  v116 = *(*&v101 + 72);
  v330 = *(*&v101 + 80);
  v331 = v115;
  v332 = (v330 + 32) & ~v330;
  v329 = v332 + v116;
  v117 = swift_allocObject();
  v328 = xmmword_1007B10D0;
  *(v117 + 16) = xmmword_1007B10D0;
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v350 = v117;
  v327 = sub_1002D7E0C(&qword_100973E00, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition);
  v326 = sub_10002849C(&unk_10097E8B0);
  v325 = sub_1000ED83C();
  v118 = v101;
  v119 = v315;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
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
  sub_10002B894(&v353, &qword_1009799E0);
  sub_100007000(&v356);
  v123 = v106[8];
  v124 = v106[9];
  v125 = sub_10002A400(v113 + 5, v113[8]);
  *(&v357 + 1) = v123;
  v358 = *(v124 + 8);
  v126 = sub_1000056E0(&v356);
  (*(*(v123 - 8) + 16))(v126, v125, v123);
  v127 = v100;
  *&v344 = *&v118 + 8;
  *&v350 = v341;
  Conditional.evaluate(with:)();
  v128 = *&v353;
  sub_10002A400(v113 + 5, v113[8]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
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
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v347 = v134;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324(v119, v127);
  v135 = v133;
  v319(v132, v133);
  v318(v130, v131);
  sub_10002B894(&v350, &qword_1009799E0);
  sub_100007000(&v353);
  sub_100007000(&v356);
  v136 = v360;
  v137 = v361;
  v138 = sub_10002A400(v359, v360);
  *(&v357 + 1) = v136;
  v358 = *(v137 + 8);
  v139 = sub_1000056E0(&v356);
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
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v350 = v142;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324(v119, v141);
  v143 = v319;
  v319(v132, v135);
  v144 = v143;
  v145 = v318;
  v318(v130, v131);
  sub_10002B894(&v353, &qword_1009799E0);
  sub_100007000(&v356);
  sub_100031660((v314 + 20), &v353, &unk_10097E890);
  if (*(&v354 + 1))
  {
    v146 = v140;
    v147 = v145;
    sub_100005A38(&v353, &v356);
    v148 = *(&v357 + 1);
    v149 = v358;
    v150 = v144;
    v151 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v354 + 1) = v148;
    v355 = v149[1];
    v152 = sub_1000056E0(&v353);
    (*(*(v148 - 8) + 16))(v152, v151, v148);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    Conditional.evaluate(with:)();
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
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v346 = v157;
    v158 = v315;
    v159 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v160 = v277;
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v158, v159);
    v150(v155, v156);
    v147(v153, v154);
    sub_10002B894(&v347, &qword_1009799E0);
    sub_100007000(&v350);
    sub_100007000(&v353);
    v161 = v301;
    v163 = *(v301 + 2);
    v162 = *(v301 + 3);
    if (v163 >= v162 >> 1)
    {
      v161 = sub_100033520(v162 > 1, v163 + 1, 1, v301);
    }

    v165 = v312;
    v164 = v313;
    v166 = v323;
    *(v161 + 2) = v163 + 1;
    (*(v166 + 32))(&v161[v164 + v163 * v316], v160, v165);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &unk_10097E890);
    v165 = v312;
    v158 = v315;
    v155 = v317;
    v161 = v301;
  }

  v167 = v314;
  sub_10002A400(v314 + 25, v314[28]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    v168 = v158;
    v169 = v161;
    v170 = v320;
    v171 = v336;
  }

  else
  {
    sub_10002A400((v322 + *(v321 + 52)), *(v322 + *(v321 + 52) + 24));
    v301 = v161;
    v172 = v307;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
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
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    *&v350 = v179;
    v180 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v181 = v276;
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v175, v180);
    v319(v155, v178);
    v182 = v177;
    v183 = v301;
    v318(v176, v182);
    sub_10002B894(&v353, &qword_1009799E0);
    sub_100007000(&v356);
    v185 = *(v183 + 2);
    v184 = *(v183 + 3);
    if (v185 >= v184 >> 1)
    {
      v183 = sub_100033520(v184 > 1, v185 + 1, 1, v183);
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
  static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  *&v353 = v191;
  v192 = v339;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
  v324(v168, v192);
  v319(v189, v190);
  v318(v187, v188);
  sub_10002B894(&v356, &qword_1009799E0);
  v194 = *(v169 + 2);
  v193 = *(v169 + 3);
  v195 = v169;
  if (v194 >= v193 >> 1)
  {
    v195 = sub_100033520(v193 > 1, v194 + 1, 1, v169);
  }

  v196 = v323;
  *(v195 + 2) = v194 + 1;
  v198 = *(v196 + 32);
  v197 = v196 + 32;
  v310 = v198;
  v198(&v195[v313 + v194 * v316], v302, v312);
  sub_100031660((v167 + 30), &v353, &qword_100975610);
  v199 = v317;
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    sub_10002A400(v167 + 25, v167[28]);
    if (v305 & 1 | ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0))
    {
      sub_100007000(&v356);
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
      static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
      *&v347 = v202;
      v203 = v315;
      v204 = v339;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
      v324(v203, v204);
      v319(v199, v201);
      v318(v200, v340);
      sub_10002B894(&v350, &qword_1009799E0);
      sub_100007000(&v353);
      v206 = *(v195 + 2);
      v205 = *(v195 + 3);
      if (v206 >= v205 >> 1)
      {
        v195 = sub_100033520(v205 > 1, v206 + 1, 1, v195);
      }

      sub_100007000(&v356);
      *(v195 + 2) = v206 + 1;
      v310(&v195[v313 + v206 * v316], v278, v312);
    }
  }

  else
  {
    sub_10002B894(&v353, &qword_100975610);
  }

  sub_100031660((v167 + 40), &v353, &unk_10097E890);
  v323 = v197;
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    v207 = *(&v357 + 1);
    v208 = v358;
    v209 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v354 + 1) = v207;
    v355 = v208[1];
    v210 = sub_1000056E0(&v353);
    (*(*(v207 - 8) + 16))(v210, v209, v207);
    *&v347 = v341;
    *(&v351 + 1) = &type metadata for CGFloat;
    v352 = &protocol witness table for CGFloat;
    Conditional.evaluate(with:)();
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
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    v346 = v215;
    v216 = v315;
    v217 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v216, v217);
    v319(v199, v214);
    v218 = v212;
    v195 = v211;
    v318(v218, v213);
    sub_10002B894(&v347, &qword_1009799E0);
    sub_100007000(&v350);
    sub_100007000(&v353);
    v220 = *(v211 + 2);
    v219 = *(v211 + 3);
    if (v220 >= v219 >> 1)
    {
      v195 = sub_100033520(v219 > 1, v220 + 1, 1, v211);
    }

    *(v195 + 2) = v220 + 1;
    v310(&v195[v313 + v220 * v316], v294, v312);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &unk_10097E890);
  }

  sub_100031660((v167 + 45), &v353, &unk_10097E890);
  if (*(&v354 + 1))
  {
    v221 = v315;
    v222 = v343;
    sub_100005A38(&v353, &v356);
    v223 = *(&v357 + 1);
    v224 = v358;
    v225 = sub_10002A400(&v356, *(&v357 + 1));
    *(&v354 + 1) = v223;
    v355 = v224[1];
    v226 = sub_1000056E0(&v353);
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
    static _VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    *&v347 = v230;
    v231 = v339;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v232 = v279;
    static _VerticalFlowLayout.Child.make(forView:placement:horizontalAlignment:topSpace:bottomSpace:excludeWhen:)();
    v324(v221, v231);
    v319(v199, v222);
    v233 = v229;
    v234 = v228;
    v318(v227, v233);
    sub_10002B894(&v350, &qword_1009799E0);
    sub_100007000(&v353);
    v235 = *(v228 + 2);
    v236 = *(v234 + 3);
    if (v235 >= v236 >> 1)
    {
      v234 = sub_100033520(v236 > 1, v235 + 1, 1, v234);
    }

    *(v234 + 2) = v235 + 1;
    v310(&v234[v313 + v235 * v316], v232, v312);
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &unk_10097E890);
  }

  _VerticalFlowLayout.init(expandChildrenToFit:children:)();
  v237 = v290;
  v239 = MinY;
  v238 = v283;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)();
  sub_10002A400(v167 + 5, v167[8]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v343 = v240;
  v242 = v241;
  sub_10002A400(v167 + 5, v167[8]);
  dispatch thunk of LayoutView.frame.getter();
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
  LayoutRect.origin.getter();
  v247 = v246;
  v374.origin.x = v238;
  v374.origin.y = v239;
  v374.size.width = v77;
  v374.size.height = Height;
  v248 = v247 + CGRectGetHeight(v374) - v243;
  sub_10002A400(v363, v364);
  dispatch thunk of Measurable.measurements(fitting:in:)();
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
  sub_10002A400(v365, v365[3]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(v363, v364);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660((v167 + 30), &v353, &qword_100975610);
  if (!*(&v354 + 1))
  {
    sub_10002B894(&v353, &qword_100975610);
    v249 = v296;
    v251 = v285;
    v250 = v286;
    goto LABEL_56;
  }

  sub_100005A38(&v353, &v356);
  v249 = v296;
  v251 = v285;
  v250 = v286;
  if ((v305 & 1) == 0)
  {
    sub_10002A400(v167 + 25, v167[28]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(v167 + 25, v167[28]);
      dispatch thunk of LayoutView.frame.getter();
      CGRectGetMidY(v378);
      goto LABEL_58;
    }

    sub_100007000(&v356);
LABEL_56:
    v252 = v284;
    v253 = v303;
    goto LABEL_59;
  }

  sub_10002A400(v167 + 5, v167[8]);
  dispatch thunk of LayoutView.frame.getter();
  CGRectGetMinY(v377);
LABEL_58:
  v379.origin.x = v250;
  v379.origin.y = v251;
  v252 = v284;
  v379.size.width = v284;
  v253 = v303;
  v379.size.height = v303;
  CGRectGetMaxX(v379);
  sub_10002A400(&v356, *(&v357 + 1));
  v249 = v296;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100007000(&v356);
LABEL_59:
  v380.origin.x = v250;
  v380.origin.y = v251;
  v380.size.width = v252;
  v380.size.height = v253;
  v254 = CGRectGetWidth(v380);
  v255 = LayoutRect.size.modify();
  *v256 = v254;
  v255(&v356, 0);
  v257 = (v322 + *(v321 + 68));
  sub_10002A400(v257, v257[3]);
  v258 = v307;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v260 = v259;
  v306(v258, v309);
  v261 = LayoutRect.size.modify();
  *(v262 + 8) = v260 + *(v262 + 8);
  v261(&v356, 0);
  sub_100031660((v167 + 50), &v353, &qword_100975610);
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    sub_10002A400(&v356, *(&v357 + 1));
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
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &qword_100975610);
  }

  sub_100031660((v167 + 55), &v353, &qword_100975610);
  if (*(&v354 + 1))
  {
    sub_100005A38(&v353, &v356);
    sub_10002A400(&v356, *(&v357 + 1));
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
    sub_10002A400(v257, v257[3]);
    v270 = v307;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v306(v270, v309);
    v386.origin.x = v266;
    v386.origin.y = v267;
    v386.size.width = v268;
    v386.size.height = v249;
    CGRectGetWidth(v386);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v356);
  }

  else
  {
    sub_10002B894(&v353, &qword_100975610);
    v269 = v287;
  }

  v271 = LayoutRect.size.modify();
  *(v272 + 8) = v297 + *(v272 + 8);
  v271(&v356, 0);
  v273 = LayoutRect.size.modify();
  *(v274 + 8) = v269 + *(v274 + 8);
  v273(&v356, 0);
  (*(v288 + 8))(v304, v289);
  sub_100007000(v366);
  (*(v291 + 32))(v293, v237, v292);
  return sub_10002B894(v359, &qword_1009856E0);
}

double ProductLockupAccessibilityLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1002D6F40(a1, v1);
}

double sub_1002D6F40(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a2 + 35, a2[38]);
  v8 = dispatch thunk of LayoutView.isHidden.getter();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_10002A400(a2 + 35, a2[38]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    AnyDimension.topMargin(from:in:)();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_100031660((a2 + 40), &v48, &unk_10097E890);
  if (v49)
  {
    sub_100005A38(&v48, v50);
    sub_10002A400(v50, v51);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_10002849C(&qword_100979010);
    Conditional.evaluate(with:)();
    v47 = v48;
    v20 = v18;
    AnyDimension.topMargin(from:in:)();
    v22 = v21;
    sub_100007000(v50);
    v45 = v9;
  }

  else
  {
    sub_10002B894(&v48, &unk_10097E890);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_100031660((a2 + 45), &v48, &unk_10097E890);
  if (v49)
  {
    sub_100005A38(&v48, v50);
    sub_10002A400(v50, v51);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    AnyDimension.topMargin(from:in:)();
    v31 = v30;
    sub_100007000(v50);
    v32 = v9;
  }

  else
  {
    sub_10002B894(&v48, &unk_10097E890);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_10002A400(a2 + 25, a2[28]);
  Measurable.measuredSize(fitting:in:)();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10002A400(v35 + 9, *(v35 + 12));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10002A400(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_1002D74C8(void *a1, void *a2, uint64_t a3, double a4)
{
  v87 = a3;
  v7 = type metadata accessor for FloatingPointRoundingRule();
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
  v18 = UITraitCollection.isSizeClassRegular.getter();

  sub_100031660((a2 + 30), v102, &qword_100975610);
  if (v103)
  {
    sub_10002A400(v102, v103);
    Measurable.measuredSize(fitting:in:)();
    v20 = v19;
    sub_100007000(v102);
  }

  else
  {
    sub_10002B894(v102, &qword_100975610);
    v20 = 0.0;
  }

  sub_100031660((a2 + 30), v102, &qword_100975610);
  v21 = v103;
  sub_10002B894(v102, &qword_100975610);
  v88 = v8;
  v89 = v7;
  if (v21)
  {
    v22 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10002A400((v90 + *(v22 + 48)), *(v90 + *(v22 + 48) + 24));
    v23 = v92;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
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
  sub_10002A400(a2 + 5, a2[8]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v100 = a1;
  sub_10002849C(&qword_100979010);
  v32 = a2;
  v33 = v90;
  Conditional.evaluate(with:)();
  *&v100 = v102[0];
  v82 = v30;
  v83 = v28;
  AnyDimension.topMargin(from:in:)();
  v81 = v34;
  sub_10002A400(v32 + 5, v32[8]);
  dispatch thunk of LayoutTextView.languageAwareOutsets.getter();
  v80 = v35;
  sub_10002A400(v32 + 10, v32[13]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v37 = v36;
  v39 = v38;
  v40 = *(v31 + 36);
  *&v100 = a1;
  v79 = v40;
  v41 = v33;
  Conditional.evaluate(with:)();
  *&v100 = v102[0];
  AnyDimension.topMargin(from:in:)();
  v42 = v16;
  v44 = v37 - v39 + v43;
  v45 = (v32 + 15);
  v93 = v32;
  sub_10002A400(v32 + 15, v32[18]);
  v84 = v42;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v47 = v46;
  v49 = v48;
  *&v100 = a1;
  Conditional.evaluate(with:)();
  *&v100 = v102[0];
  AnyDimension.topMargin(from:in:)();
  v51 = v47 - v49 + v50;
  if (v51 >= v44)
  {
    sub_10002C0AC(v45, &v100);
    v45 = (v32 + 10);
  }

  else
  {
    sub_10002C0AC((v32 + 10), &v100);
  }

  sub_10002C0AC(v45, &v98);
  v97[0] = a1;
  Conditional.evaluate(with:)();
  v52 = v102[0];
  v97[0] = a1;
  Conditional.evaluate(with:)();
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
  sub_100005A38(&v100, v102);
  sub_10002C0AC(v97, v104);
  sub_100005A38(&v98, &v105);
  sub_100005A38(&v94, &v106);
  sub_100007000(v97);
  sub_10002A400(v102, v103);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v56 = v55;
  v58 = v57;
  sub_10002A400(v104, v104[3]);
  AnyDimension.topMargin(from:in:)();
  v60 = v59;
  sub_100031660((v93 + 20), &v98, &unk_10097E890);
  v61 = v89;
  if (v99)
  {
    sub_100005A38(&v98, &v100);
    sub_10002A400(&v100, v101);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v63 = v62;
    v65 = v64;
    v97[0] = a1;
    Conditional.evaluate(with:)();
    v97[0] = v98;
    AnyDimension.topMargin(from:in:)();
    v67 = v63 - v65 + v66;
    sub_100007000(&v100);
  }

  else
  {
    sub_10002B894(&v98, &unk_10097E890);
    v67 = 0.0;
  }

  v68 = v88;
  v69 = v67 + v56 - v58 + v60 + v83 - v82 + v81 + v80 + v41[15];
  sub_10002A400((v41 + *(v31 + 52)), *(v41 + *(v31 + 52) + 24));
  v70 = v92;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v72 = v71;
  v73 = *(v68 + 8);
  v73(v70, v61);
  v74 = v69 + v72 + sub_1002D6F40(a1, v93);
  sub_10002A400(v41 + 4, *(v41 + 7));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v76 = v75;
  v73(v70, v61);
  v77 = v85 + v86 + v74 + v76;
  sub_10002B894(v102, &qword_1009856E0);
  return v77;
}

double sub_1002D7D34(void *a1, void *a2, uint64_t a3, double a4)
{
  sub_1002D74C8(a1, a2, a3, a4);
  type metadata accessor for ProductLockupAccessibilityLayout(0);
  return a4;
}

uint64_t sub_1002D7D88(uint64_t a1)
{
  *(a1 + 8) = sub_1002D7E0C(&qword_10097E8C0, type metadata accessor for ProductLockupAccessibilityLayout);
  result = sub_1002D7E0C(&qword_10097E8C8, type metadata accessor for ProductLockupAccessibilityLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002D7E0C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002D7E7C()
{
  sub_100154428(319, &unk_10098A3C0);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &qword_10097E940);
    if (v1 <= 0x3F)
    {
      sub_100154308(319, &unk_10098A3D0, &unk_10097E950);
      if (v2 <= 0x3F)
      {
        sub_100154308(319, &qword_10098A3E0, &unk_10097E960);
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

void sub_1002D7FE4()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &qword_1009842D0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        sub_1002D80C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002D80C4()
{
  if (!qword_10097EA30[0])
  {
    sub_10002D1A8(&qword_100973F50);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, qword_10097EA30);
    }
  }
}

char *sub_1002D8130(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder;
  type metadata accessor for Placeholder();
  v15 = static Placeholder.titleText.getter();
  v17 = v16;
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1A48);
  v20 = sub_10025097C(v15, v17, v19);

  *&v5[v14] = v20;
  v21 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder;
  (*(v11 + 104))(v13, enum case for CornerStyle.continuous(_:), v10);
  type metadata accessor for RoundedCornerView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v11 + 8))(v13, v10);
  *&v5[v21] = v24;
  v26 = type metadata accessor for AppEventPlaceholderView();
  v31.receiver = v5;
  v31.super_class = v26;
  v27 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v28 = *&v27[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder];
  v29 = v27;
  [v29 addSubview:v28];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder]];

  return v29;
}

uint64_t sub_1002D840C()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = type metadata accessor for AppEventPlaceholderView();
  v30.receiver = v0;
  v30.super_class = v10;
  objc_msgSendSuper2(&v30, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  result = CGRectIsEmpty(v31);
  if ((result & 1) == 0)
  {
    v25 = v2;
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_1002C9618(&unk_1009CEDC8, v28);
    v12 = *&v0[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder];
    v27[3] = type metadata accessor for DynamicTypeLabel();
    v27[4] = &protocol witness table for UILabel;
    v27[0] = v12;
    sub_1002C9618(v28, v26);
    v13 = v12;
    static Locale.storefront.getter();
    LOBYTE(v12) = Locale.hasExtraTallWritingSystem.getter();
    (*(v7 + 8))(v9, v6);
    if (v12)
    {
      LayoutTextView.withLanguageAwareOutsets.getter();
      sub_1002C9674(v28);
    }

    else
    {
      sub_1002C9674(v28);
      sub_10002C0AC(v27, &v26[168]);
    }

    memset(&v26[208], 0, 120);
    memcpy(v29, v26, sizeof(v29));
    sub_100007000(v27);
    LayoutMarginsAware<>.layoutFrame.getter();
    AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v14, v15, v16, v17);
    (*(v3 + 8))(v5, v25);
    LayoutMarginsAware<>.layoutFrame.getter();
    sub_1002C97E0(v1, v29, v18, v19);
    v21 = v20;
    v22 = *&v1[OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder];
    LayoutMarginsAware<>.layoutFrame.getter();
    MinX = CGRectGetMinX(v32);
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v33);
    LayoutMarginsAware<>.layoutFrame.getter();
    [v22 setFrame:{MinX, v21, Width, CGRectGetHeight(v34) - v21}];
    return sub_1001A927C(v29);
  }

  return result;
}

id sub_1002D87BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002D8860()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_formattedDatePlaceholder;
  type metadata accessor for Placeholder();
  v7 = static Placeholder.titleText.getter();
  v9 = v8;
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D1A48);
  v12 = sub_10025097C(v7, v9, v11);

  *(v1 + v6) = v12;
  v13 = OBJC_IVAR____TtC8AppStore23AppEventPlaceholderView_appEventPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  type metadata accessor for RoundedCornerView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 secondarySystemBackgroundColor];
  [v16 setBackgroundColor:v17];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v3 + 8))(v5, v2);
  *(v1 + v13) = v16;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002D8A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v71 = a2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AdamId();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v64 - v11;
  v12 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v21 - 8);
  v23 = &v64 - v22;
  v24 = sub_10002849C(&unk_100973230);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v64 - v26;
  v28 = OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
  v77 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_10021B990(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_10021AE78(v34), sub_10021AE84(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_10002849C(&unk_100973240);
    v36 = *(*(v35 - 8) + 56);
    v76 = v27;
    v36(v27, 1, 1, v35);
    v69 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView];
    v75 = v29;
    v38 = Lockup.icon.getter();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v75;
    v40 = *&v75[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
    v41 = type metadata accessor for OfferStyle();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = type metadata accessor for OfferEnvironment();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_10002849C(&unk_1009701A0);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = type metadata accessor for OfferTint();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_1004F3190(v77, v40, v76, v73, 1, 0, v23, v20, v14, v17);
    sub_10002B894(v14, &unk_100973AD0);
    v40[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v40 setNeedsLayout];
    sub_10002B894(v17, &unk_100970150);
    sub_10002B894(v20, &unk_100970160);
    sub_10002B894(v23, &qword_100973AE0);
    v45 = v74;
    Lockup.adamId.getter();
    v46 = Lockup.crossLinkTitle.getter();
    v48 = v47;
    v67 = Lockup.crossLinkSubtitle.getter();
    v50 = v49;
    v51 = Lockup.includeBetaApps.getter();
    if (v48 && v50)
    {
      v52 = v51;
      v66 = v46;
      v53 = v72;
      v54 = v68;
      (*(v72 + 16))(v68, v45, v8);
      sub_10002849C(&unk_100973AF0);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v65 = v8;
      v55 = v78[0];
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v56 = v75;
      v73 = v4;
      v57 = v56;
      v39 = v75;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v66, v48, v67, v50, v52 & 1, v29, &off_1008B5970, v55, *(&v55 + 1));
      (*(v53 + 8))(v74, v65);
      sub_10002B894(v76, &unk_100973230);
      v59 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v73;
    }

    else
    {

      v60 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      sub_10014024C(0, 0);
      (*(v72 + 8))(v45, v8);
      sub_10002B894(v76, &unk_100973230);
    }

    if (Lockup.icon.getter())
    {
      if (qword_10096D420 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v61, qword_1009CE9A0);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v62 = v69;
      [*&v29[v69] contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v63 = *&v29[v62];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v63 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v79 = 0;
      memset(v78, 0, sizeof(v78));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v78, &qword_10096FB90);
    }

    [v4 setNeedsLayout];
  }
}

void sub_1002D93E0(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_artworkView);

    v5 = a1;
    ArtworkView.image.setter();
  }
}

void sub_1002D9464(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_10021AE78(0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_1009D0758);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_10096D428 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v6, qword_1009CE9B8);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  v17 = sub_1001C6E04(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_10021AE84(v17);
  v18 = *&v3[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    sub_100283630(a1, a2);
    [v3 setNeedsLayout];
  }
}

void sub_1002D9730()
{
  if (*(v0 + 24) == 1 && (v1 = *(v0 + 16)) != 0 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
  {
    v3 = (v0 + 25);
    v13 = *(v0 + 25);
    *(v0 + 25) = 1;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = (v0 + 25);
    v4 = *(v0 + 25);
    *(v0 + 25) = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(v0 + 16);
  if (!v5 || (v6 = [v5 rightBarButtonItems]) == 0)
  {
LABEL_16:
    v14 = *(v0 + 16);
    if (v14)
    {
      goto LABEL_17;
    }

    return;
  }

  v7 = v6;
  sub_100039F40();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
LABEL_9:
    if (v9 >= 1)
    {
      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        v12 = v11;
        [v11 setHidden:*v3];
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    while (1)
    {

      v14 = *(v0 + 16);
      if (!v14)
      {
        break;
      }

LABEL_17:
      v15 = [v14 rightBarButtonItems];
      if (!v15)
      {
        return;
      }

      v16 = v15;
      sub_100039F40();
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v8 >> 62)
      {
        v0 = _CocoaArrayWrapper.endIndex.getter();
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v0 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_27;
        }
      }

      if (v0 >= 1)
      {
        for (j = 0; j != v0; ++j)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(v8 + 8 * j + 32);
          }

          v19 = v18;
          [v18 setHidden:*v3];
        }

LABEL_27:

        return;
      }

      __break(1u);
LABEL_31:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1002D9980()
{

  return swift_deallocClassInstance();
}

void sub_1002D99E0()
{
  if (*(v0 + 24) == 1)
  {
    v1 = *(v0 + 16);
    if (v1 && ([v1 _manualScrollEdgeAppearanceProgress], v2 >= 1.0))
    {
      v4 = *(v0 + 25);
      *(v0 + 25) = 1;
      if (v4)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + 25);
      *(v0 + 25) = 0;
      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    v5 = (v0 + 25);
    v6 = *(v0 + 16);
    if (v6)
    {
      v7 = [v6 rightBarButtonItems];
      if (v7)
      {
        v8 = v7;
        sub_100039F40();
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v9 >> 62)
        {
          v10 = _CocoaArrayWrapper.endIndex.getter();
          if (v10)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v10)
          {
LABEL_11:
            if (v10 < 1)
            {
              __break(1u);
              return;
            }

            for (i = 0; i != v10; ++i)
            {
              if ((v9 & 0xC000000000000001) != 0)
              {
                v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v12 = *(v9 + 8 * i + 32);
              }

              v13 = v12;
              [v12 setHidden:*v5];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1002D9B58()
{
  v0 = sub_10002849C(&unk_100973B30);
  sub_100005644(v0, qword_1009CF328);
  sub_1000056A8(v0, qword_1009CF328);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1002D9C08()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitledParagraphLayout.Metrics();
  sub_100005644(v4, qword_1009CF358);
  sub_1000056A8(v4, qword_1009CF358);
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D09E0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v12[3] = type metadata accessor for StaticDimension();
  v12[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v12);
  v10 = v0;
  v11 = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v9);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  v10 = type metadata accessor for ZeroDimension();
  v11 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v9);
  static ZeroDimension.zero.getter();
  return TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)();
}

uint64_t sub_1002D9E4C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100979010);
  v18 = *(v7 - 8);
  v19 = v7;
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for TitledParagraphLayout.Metrics();
  sub_100005644(v10, a2);
  v20 = sub_1000056A8(v10, a2);
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v11, qword_1009D09E0);
  v12 = *(*(v11 - 8) + 16);
  v12(v6, v17, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = *(v4 + 104);
  v14(v6, enum case for FontSource.useCase(_:), v3);
  Conditional<>.init(accessibleLayoutConstant:regularLayoutConstant:source:)();
  Conditional<>.anyDimension.getter();
  (*(v18 + 8))(v9, v19);
  v12(v6, v17, v11);
  v14(v6, v13, v3);
  v22[3] = type metadata accessor for StaticDimension();
  v22[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v21[3] = v3;
  v21[4] = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v21);
  (*(v4 + 16))(v15, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  (*(v4 + 8))(v6, v3);
  return TitledParagraphLayout.Metrics.init(textSpace:bodyTopSpace:columnWidth:columnMargin:)();
}

char *sub_1002DA15C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v82 = type metadata accessor for DirectionalTextAlignment();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v74[-v12];
  v14 = type metadata accessor for Separator.Position();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v74[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Separator();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v74[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView;
  (*(v15 + 104))(v17, enum case for Separator.Position.bottom(_:), v14, v20);
  v87[3] = type metadata accessor for ZeroDimension();
  v87[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v87);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v24 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v26 = *(v19 + 40);
  v27 = v24;
  v26(&v24[v25], v22, v18);
  swift_endAccess();

  *&v5[v23] = v27;
  v28 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView;
  v84 = sub_100005744(0, &qword_100970180);
  v29 = static UIColor.defaultBackground.getter();
  v30 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v31 = sub_10059F344(v29, 0.0, 0.0, 0.0, 0.0);
  v83 = v5;
  *&v5[v28] = v31;
  v79 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v32, qword_1009D09E0);
  v34 = *(v32 - 8);
  v77 = *(v34 + 16);
  v78 = v33;
  v77(v13, v33, v32);
  v76 = *(v34 + 56);
  v76(v13, 0, 1, v32);
  v75 = enum case for DirectionalTextAlignment.none(_:);
  v35 = v81;
  v80 = *(v80 + 104);
  v36 = v82;
  (v80)(v81);
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = objc_allocWithZone(v37);
  v39 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = v83;
  v41 = v78;
  *&v83[v79] = v39;
  v79 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v77(v13, v41, v32);
  v76(v13, 0, 1, v32);
  (v80)(v35, v75, v36);
  v42 = objc_allocWithZone(v37);
  *&v40[v79] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v43 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_itemLayoutContext;
  v44 = type metadata accessor for ItemLayoutContext();
  (*(*(v44 - 8) + 56))(&v40[v43], 1, 1, v44);
  v40[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling] = 0;
  *&v40[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits] = 0;
  v45 = type metadata accessor for TitledParagraphCollectionViewCell();
  v86.receiver = v40;
  v86.super_class = v45;
  v46 = objc_msgSendSuper2(&v86, "initWithFrame:", a1, a2, a3, a4);
  v47 = [v46 contentView];
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v48 = [v46 contentView];
  v49 = static UIColor.defaultBackground.getter();
  [v48 setBackgroundColor:v49];

  v50 = [v46 contentView];
  [v50 addSubview:*&v46[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView]];

  v51 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  v52 = *&v46[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  v53 = static UIColor.secondaryText.getter();
  [v52 setTextColor:v53];

  v54 = *&v46[v51];
  v55 = static UIColor.defaultBackground.getter();
  [v54 setBackgroundColor:v55];

  [*&v46[v51] setNumberOfLines:1];
  v56 = [v46 contentView];
  [v56 addSubview:*&v46[v51]];

  v57 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v58 = *&v46[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  v59 = static UIColor.secondaryText.getter();
  [v58 setTextColor:v59];

  v60 = *&v46[v57];
  v61 = static UIColor.defaultBackground.getter();
  [v60 setBackgroundColor:v61];

  v62 = v46;
  v63 = [v62 contentView];
  [v63 addSubview:*&v46[v57]];

  v64 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView;
  v65 = qword_10096D650;
  v66 = *&v62[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v67, qword_1009CF328);
  v85 = v62;
  Conditional.evaluate(with:)();

  v68 = v87[0];
  v69 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v70 = *&v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = v87[0];
  v71 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    [*&v66[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setNumberOfLines:?];
    v68 = *&v66[v69];
  }

  if (v68 != v70 && (v66[v71] & 1) != 0)
  {
    sub_1005A0320();
  }

  v72 = [v62 contentView];
  [v72 addSubview:*&v62[v64]];

  return v62;
}

id sub_1002DAA90()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  if (v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling] == 1)
  {
    if (qword_10096DE28 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for FontUseCase();
    v7 = sub_1000056A8(v6, qword_1009D09F8);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v4, v7, v6);
    (*(v8 + 56))(v4, 0, 1, v6);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    sub_100005744(0, &qword_100970180);
    v9 = static UIColor.primaryText.getter();
  }

  else
  {
    if (qword_10096DE20 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for FontUseCase();
    v11 = sub_1000056A8(v10, qword_1009D09E0);
    v12 = *(v10 - 8);
    (*(v12 + 16))(v4, v11, v10);
    (*(v12 + 56))(v4, 0, 1, v10);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    sub_100005744(0, &qword_100970180);
    v9 = static UIColor.secondaryText.getter();
  }

  v13 = v9;
  [v5 setTextColor:v9];

  return [v1 setNeedsLayout];
}

void *sub_1002DAD18()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v74 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TitledParagraphLayout();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TitledParagraphLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v65 - v10;
  __chkstk_darwin(v12);
  v14 = &v65 - v13;
  v15 = type metadata accessor for Separator();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TitledParagraphCollectionViewCell();
  v85.receiver = v1;
  v85.super_class = v19;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  result = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits];
  if (result)
  {
    v68 = v3;
    v69 = v2;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView];
    v70 = result;
    swift_unknownObjectRetain();
    [v1 bounds];
    v22 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    (*(v16 + 16))(v18, &v21[v22], v15);
    Separator.frame(forBoundingRect:in:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    (*(v16 + 8))(v18, v15);
    [v21 setFrame:{v24, v26, v28, v30}];
    v31 = [v1 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = [v1 traitCollection];
    v41 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling;
    v42 = v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling];
    v67 = v40;
    if ((v42 & 1) != 0 || (static TitledParagraphLayout.isMultiColumn(compatibleWith:)() & 1) == 0)
    {
      v50 = UITraitCollection.prefersAccessibilityLayouts.getter();
      v66 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:0];
      if (v50)
      {
        v51 = 0;
      }

      else
      {
        v51 = 2;
      }

      [*&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel] setTextAlignment:{v51, *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel]}];
      if (v1[v41] == 1)
      {
        v49 = v68;
        v46 = v14;
        if (qword_10096D668 != -1)
        {
          swift_once();
        }

        v52 = qword_1009CF370;
      }

      else
      {
        v49 = v68;
        v46 = v14;
        if (qword_10096D658 != -1)
        {
          swift_once();
        }

        v52 = qword_1009CF340;
      }

      v47 = v7;
      v53 = sub_1000056A8(v6, v52);
      v45 = *(v7 + 16);
      v45(v11, v53, v6);
      (*(v7 + 32))(v46, v11, v6);
    }

    else
    {
      v66 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel];
      [v66 setTextAlignment:2];
      v65 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
      [v65 setTextAlignment:2];
      v86.origin.x = v33;
      v86.origin.y = v35;
      v86.size.width = v37;
      v86.size.height = v39;
      Width = CGRectGetWidth(v86);
      if (qword_10096D660 != -1)
      {
        swift_once();
      }

      v44 = sub_1000056A8(v6, qword_1009CF358);
      v45 = *(v7 + 16);
      v46 = v14;
      v47 = v7;
      v45(v46, v44, v6);
      v48 = v70;
      sub_1002DBD10(v70, Width);
      TitledParagraphLayout.Metrics.columnWidth.setter();
      [v48 pageMarginInsets];
      TitledParagraphLayout.Metrics.columnMargin.setter();
      v49 = v68;
    }

    v45(v71, v46, v6);
    v54 = type metadata accessor for DynamicTypeLabel();
    v68 = v6;
    v55 = v46;
    v83 = v54;
    v84 = &protocol witness table for UIView;
    v56 = v66;
    v81 = &protocol witness table for UIView;
    v82 = v66;
    v80 = v54;
    v57 = v65;
    v79 = v65;
    v58 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
    v59 = type metadata accessor for ExpandableTextView();
    v78 = &protocol witness table for UIView;
    v77 = v59;
    v76 = v58;
    v60 = v56;
    v61 = v57;
    v62 = v58;
    v63 = v72;
    TitledParagraphLayout.init(metrics:allowsMultiColumn:primaryText:secondaryText:bodyText:)();
    v64 = v74;
    TitledParagraphLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();

    (*(v49 + 8))(v64, v69);
    (*(v73 + 8))(v63, v75);
    return (*(v47 + 8))(v55, v68);
  }

  return result;
}

double sub_1002DB538(void *a1, char a2, double a3, double a4, uint64_t a5, void *a6, void *a7, uint64_t a8)
{
  v15 = sub_10002849C(&qword_100972ED0);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v52 - v17;
  if (a2)
  {
    v19 = [a1 traitCollection];
    v20 = static TitledParagraphLayout.isMultiColumn(compatibleWith:)();

    if (v20)
    {
      v21 = sub_1002DBD10(a6, a3);
      [a6 pageMarginInsets];
      a3 = a3 - (v21 + v22);
    }
  }

  if (a7)
  {
    v23 = a3 <= a4 ? a3 : a4;
    if (v23 != 0.0)
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v27 = a7;
      v28 = [a1 traitCollection];
      v29 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v30 = objc_allocWithZone(v29);
      v31 = &v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v31 = UIEdgeInsetsZero.top;
      v31[1] = left;
      v31[2] = bottom;
      v31[3] = right;
      *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = a8;
      v32 = &v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v32 = a3;
      v32[1] = a4;
      *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v28;
      *&v30[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v27;
      v53.receiver = v30;
      v53.super_class = v29;
      v33 = objc_msgSendSuper2(&v53, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v34 = qword_10098CEC8;
      v35 = [qword_10098CEC8 objectForKey:v33];
      if (v35)
      {
        v36 = v35;

        a3 = *&v36[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v37 = qword_10096E9C8;
        v36 = v27;
        if (v37 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for FontUseCase();
        v39 = sub_1000056A8(v38, qword_10098CEB0);
        v40 = *(v38 - 8);
        (*(v40 + 16))(v18, v39, v38);
        (*(v40 + 56))(v18, 0, 1, v38);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v42 = v41;
        v44 = v43;
        v46 = v45;

        sub_10002B894(v18, &qword_100972ED0);
        v47 = type metadata accessor for ExpandableTextView.CacheValue();
        v48 = objc_allocWithZone(v47);
        v49 = &v48[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v49 = a3;
        v49[1] = UIEdgeInsetsZero.top + bottom + v42;
        *(v49 + 2) = v44;
        *(v49 + 3) = v46;
        v52.receiver = v48;
        v52.super_class = v47;
        v50 = objc_msgSendSuper2(&v52, "init");
        [v34 setObject:v50 forKey:v33];
      }
    }
  }

  return a3;
}

void sub_1002DB940(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView];
  if (qword_10096D650 != -1)
  {
    swift_once();
  }

  v4 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v4, qword_1009CF328);
  v10 = v1;
  v5 = v1;
  Conditional.evaluate(with:)();

  v6 = v11;
  v7 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v8 = *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines) = v11;
  v9 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (*(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) == 1)
  {
    [*(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v10];
    v6 = *(v3 + v7);
  }

  if (v6 != v8 && (*(v3 + v9) & 1) != 0)
  {
    sub_1005A0320();
  }
}

id sub_1002DBB20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledParagraphCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledParagraphCollectionViewCell()
{
  result = qword_10097EBD8;
  if (!qword_10097EBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DBC48()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1002DBD10(void *a1, double a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v20 - v10;
  [a1 pageMarginInsets];
  v13 = (a2 + v12 * -4.0) / 5.0;
  static Dimensions.defaultRoundingRule.getter();
  v21 = v13;
  (*(v5 + 16))(v7, v11, v4);
  v14 = (*(v5 + 88))(v7, v4);
  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:))
  {
    v15 = round(v13);
LABEL_11:
    (*(v5 + 8))(v11, v4);
    return v15;
  }

  if (v14 == enum case for FloatingPointRoundingRule.toNearestOrEven(_:))
  {
    v15 = rint(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.up(_:))
  {
    v15 = ceil(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.down(_:))
  {
    v15 = floor(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.towardZero(_:))
  {
    v15 = trunc(v13);
    goto LABEL_11;
  }

  if (v14 == enum case for FloatingPointRoundingRule.awayFromZero(_:))
  {
    (*(v5 + 8))(v11, v4);
    v17 = ceil(v13);
    v18 = floor(v13);
    if (v13 < 0.0)
    {
      return v18;
    }

    else
    {
      return v17;
    }
  }

  else
  {
    Double._roundSlowPath(_:)();
    v19 = *(v5 + 8);
    v19(v11, v4);
    v19(v7, v4);
    return v21;
  }
}

void sub_1002DBF80()
{
  v1 = v0;
  v46 = type metadata accessor for DirectionalTextAlignment();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v37[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v43 = &v37[-v4];
  v5 = type metadata accessor for Separator.Position();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Separator();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_separatorView;
  (*(v6 + 104))(v8, enum case for Separator.Position.bottom(_:), v5, v11);
  v48[3] = type metadata accessor for ZeroDimension();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v48);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v15 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v17 = *(v10 + 40);
  v18 = v15;
  v17(&v15[v16], v13, v9);
  swift_endAccess();

  *(v1 + v14) = v18;
  v19 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_bodyTextView;
  sub_100005744(0, &qword_100970180);
  v20 = static UIColor.defaultBackground.getter();
  v21 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v22 = sub_10059F344(v20, 0.0, 0.0, 0.0, 0.0);
  v47 = v1;
  *(v1 + v19) = v22;
  v42 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_primarySubtitleLabel;
  if (qword_10096DE20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D09E0);
  v25 = *(v23 - 8);
  v40 = *(v25 + 16);
  v41 = v24;
  v26 = v43;
  v40(v43, v24, v23);
  v39 = *(v25 + 56);
  v39(v26, 0, 1, v23);
  v38 = enum case for DirectionalTextAlignment.none(_:);
  v27 = v45;
  v44 = *(v44 + 104);
  v28 = v46;
  (v44)(v45);
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = objc_allocWithZone(v29);
  v31 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v32 = v47;
  v33 = v41;
  *(v47 + v42) = v31;
  v42 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_secondarySubtitleLabel;
  v40(v26, v33, v23);
  v39(v26, 0, 1, v23);
  (v44)(v27, v38, v28);
  v34 = objc_allocWithZone(v29);
  *(v32 + v42) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_itemLayoutContext;
  v36 = type metadata accessor for ItemLayoutContext();
  (*(*(v36 - 8) + 56))(v32 + v35, 1, 1, v36);
  *(v32 + OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_useDetailPageStyling) = 0;
  *(v32 + OBJC_IVAR____TtC8AppStore33TitledParagraphCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002DC54C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = [v0 contentView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = [v0 backgroundView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setFrame:?];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productTapToRateView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }

  v6 = *&v0[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame:?];
  }
}

id sub_1002DC800(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productTapToRateView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore44GenericProductReviewActionCollectionViewCell_productReviewActionsView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1002DC8F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewActionCollectionViewCell()
{
  result = qword_10097EC10;
  if (!qword_10097EC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002DC9DC()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002DCA78()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Separator.Position();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Separator();
  sub_100005644(v8, qword_1009CF3B8);
  sub_1000056A8(v8, qword_1009CF3B8);
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v13[3] = type metadata accessor for StaticDimension();
  v13[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v13);
  v12[3] = v0;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v12);
  (*(v1 + 16))(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  return Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
}

char *sub_1002DCCC0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for Separator.Position();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor;
  sub_100028BB8();
  *&v4[v14] = static UIColor.defaultLine.getter();
  v15 = &v4[OBJC_IVAR____TtC8AppStore13SeparatorView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = type metadata accessor for ZeroDimension();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v22);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

uint64_t sub_1002DCF64(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineCompositingFilter;
  swift_beginAccess();
  sub_1002DD864(a1, v1 + v3);
  swift_endAccess();
  v4 = [*(v1 + OBJC_IVAR____TtC8AppStore13SeparatorView_lineView) layer];
  sub_10006C234(v1 + v3, v12);
  v5 = v13;
  if (v13)
  {
    v6 = sub_10002A400(v12, v13);
    v7 = *(v5 - 8);
    __chkstk_darwin(v6);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v9, v5);
    sub_100007000(v12);
  }

  else
  {
    v10 = 0;
  }

  [v4 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10003D444(a1);
}

id sub_1002DD370()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.receiver = v1;
  v26.super_class = ObjectType;
  objc_msgSendSuper2(&v26, "layoutSubviews", v5);
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v18 = v17;

  swift_beginAccess();
  Separator.verticalOutset.getter();
  swift_endAccess();
  sub_10002A400(v25, v25[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  (*(v4 + 8))(v7, v3);
  sub_100007000(v25);
  v21 = *&v1[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView];
  v27.origin.x = v9;
  v27.origin.y = v11;
  v27.size.width = v13;
  v27.size.height = v15;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v23 = v20 + CGRectGetMinY(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  return [v21 setFrame:{MinX, v23, CGRectGetWidth(v29), v18}];
}

uint64_t type metadata accessor for SeparatorView()
{
  result = qword_10097EC60;
  if (!qword_10097EC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002DD6E4()
{
  result = type metadata accessor for Separator();
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

double sub_1002DD790(void *a1, double a2, double a3)
{
  v7 = *v3;
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007B0B70;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

uint64_t sub_1002DD864(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009711D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1002DD8D4()
{
  v1 = type metadata accessor for Separator.Position();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor;
  sub_100028BB8();
  *(v0 + v5) = static UIColor.defaultLine.getter();
  v6 = (v0 + OBJC_IVAR____TtC8AppStore13SeparatorView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = type metadata accessor for ZeroDimension();
  v8[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v8);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002DDA58()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = type metadata accessor for PageGrid.HorizontalMargins();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10002849C(&qword_100970EF0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  v44 = v6;
  PageGrid.DirectionalValue.init(_:)();
  v41 = v15;
  v43 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4008000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v30(v3, v45, v29);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v51 = 0x4018000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v51 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_10097EC70 = v39;
  return result;
}

unint64_t sub_1002DE488()
{
  result = qword_10097EC78;
  if (!qword_10097EC78)
  {
    type metadata accessor for InvalidateAllWidgetsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097EC78);
  }

  return result;
}

uint64_t sub_1002DE4E0()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  InvalidateAllWidgetsAction.run()();
  sub_10002849C(&qword_1009764A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

void sub_1002DE5D8()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v1._countAndFlagsBits = 0x535F474E494D4F43;
    v1._object = 0xEB000000004E4F4FLL;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
    localizedString(_:comment:)(v1, v2);
    v3 = objc_allocWithZone(_UIContentUnavailableView);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v3 initWithFrame:v4 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    [v0 setView:v5];
  }
}

id sub_1002DE8A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComingSoonViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002DE900()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_1002DEBE8(&qword_10097F2C0, &type metadata accessor for GenericDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1002DEBE8(&qword_10097F2C8, type metadata accessor for AccessibilityDetailsShelfSupplementaryProvider);

  return v2;
}

unint64_t sub_1002DEA00@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AccessibilityDetailsShelfLayoutSpacingProvider;
  result = sub_1002DEB94();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1002DEA34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  swift_allocObject();
  v3 = PageGridCache.init()();
  a1[3] = &type metadata for AccessibilityDetailsPageGridProvider;
  result = sub_1002DEB40();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

uint64_t type metadata accessor for AccessibilityDetailsViewController()
{
  result = qword_10097ECD0;
  if (!qword_10097ECD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1002DEB40()
{
  result = qword_10097F2B0;
  if (!qword_10097F2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F2B0);
  }

  return result;
}

unint64_t sub_1002DEB94()
{
  result = qword_10097F2B8;
  if (!qword_10097F2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097F2B8);
  }

  return result;
}

uint64_t sub_1002DEBE8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002DEC30()
{
  result = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1002DED68(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v5 + v10, v15, &unk_10097F510);
  if (v16)
  {
    sub_10002C0AC(v15, v14);
    sub_10002B894(v15, &unk_10097F510);
    sub_10002A400(v14, v14[3]);
    (*(v7 + 104))(v9, *a1, v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    v11 = sub_100007000(v14);
  }

  else
  {
    v11 = sub_10002B894(v15, &unk_10097F510);
  }

  return a2(v11);
}

uint64_t sub_1002DEF2C()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  swift_getWitnessTable();
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1002EA58C(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  swift_getWitnessTable();
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_1002EA58C(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_1002EA58C(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  swift_getWitnessTable();
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  swift_getWitnessTable();
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

void sub_1002DF48C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v41 = swift_isaMask & *v2;
  v6 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x238);
  v8 = *((v5 & v4) + 0x240);
  v9 = *((v5 & v4) + 0x248);
  v10 = *((v5 & v4) + 0x250);
  v11 = *((v5 & v4) + 0x258);
  v39 = *((v5 & v4) + 0x228);
  v40 = v7;
  v42 = v39;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v47 = v11;
  updated = type metadata accessor for DiffablePagePresenter.UpdatePhase();
  v13 = *(updated - 8);
  v14 = __chkstk_darwin(updated);
  v16 = (&v38 - v15);
  (*(v13 + 16))(&v38 - v15, a1, updated, v14);
  v17 = (*(v13 + 88))(v16, updated);
  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v13 + 8))(v16, updated);
    *(v2 + qword_1009CF3E8) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
    {
      PendingPageRender.isLayoutPending.setter();
    }

    v18 = qword_10097F2F0;
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (v19)
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 2) = v39;
      v22 = v40;
      *(v21 + 3) = *(v41 + 560);
      *(v21 + 4) = v22;
      *(v21 + 5) = v8;
      *(v21 + 6) = v9;
      *(v21 + 7) = v10;
      *(v21 + 8) = v11;
      *(v21 + 9) = v20;
      v23 = &v19[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v24 = *&v19[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v23 = sub_1002E9FF4;
      v23[1] = v21;
      v25 = v19;

      sub_10001F63C(v24);
    }

    v26 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    v27 = [objc_opt_self() sharedApplication];
    v28 = [v27 launchedToTest];

    if (!v28)
    {

      return;
    }

    if (v26)
    {
      v29 = objc_opt_self();

      v30 = [v29 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v31 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v30 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v31 object:v26];

      return;
    }

    sub_100094120();
    v37 = swift_allocError();
    sub_10021CA80(v37);
    goto LABEL_16;
  }

  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v13 + 96))(v16, updated);
    v32 = *v16;
    v33 = v16[1];
    type metadata accessor for JUContentUnavailableViewController();
    swift_getWitnessTable();
    swift_errorRetain();

    sub_10000827C(v33);
    v34 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    (*((swift_isaMask & *v2) + 0x168))(v34);
    sub_10021CA80(v32);
    sub_10001F63C(v33);
LABEL_16:

    return;
  }

  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v35 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v36 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    (*((swift_isaMask & *v2) + 0x168))(v36);
    swift_getWitnessTable();
    MetricsPagePresenter.prepareToObserveAssets(_:)();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v13 + 8))(v16, updated);
  }
}

uint64_t sub_1002DFB8C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_1009CF3D8;
  swift_beginAccess();
  v4 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1002DFC14(uint64_t a1)
{
  v3 = qword_1009CF3D8;
  swift_beginAccess();
  v4 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

id sub_1002DFDA0()
{
  v1 = [v0 navigationItem];

  return v1;
}

uint64_t sub_1002DFDF0(char a1)
{
  v2 = *(v1 + qword_1009CF428);
  *(v1 + qword_1009CF428) = a1;
  return sub_1002E3C10(v2);
}

uint64_t sub_1002DFE08()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v6 = *(v1 + 0x228);
  v7 = v3;
  v8 = *(v1 + 584);
  v9 = v2;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.pageGridProvider.getter();
  sub_10002849C(&qword_10097AB20);
  sub_10002849C(&unk_10097F5C0);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v6, *(&v7 + 1));
    dispatch thunk of PageGridCaching.invalidateCache()();
    sub_100007000(&v6);
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_10002B894(&v6, &qword_10097AB28);
  }

  type metadata accessor for TodayCardGridTracker();
  result = BaseObjectGraph.injectIfAvailable<A>(_:)();
  v5 = v10;
  if (v10)
  {
    swift_beginAccess();
    *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002DFFDC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097F530);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10002849C(&unk_10097F490);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100031660(a1, &v16[-1] - v7, &unk_10097F490);
  v9 = sub_10002849C(&qword_100977FC8);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10002B894(v8, &unk_10097F490);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    SnapshotUpdate.contentSnapshot.getter();
    (*(v10 + 8))(v8, v9);
    v11 = ModelMappedDiffableDataSourceContentSnapshot.reloadedItems.getter();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10002849C(&qword_10097AB08);
    v13 = sub_100097060(&unk_10097F5B0, &qword_10097AB08);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = ComponentHeightCache.invalidate(items:)();
  if (v17)
  {
    return sub_100007000(v16);
  }

  return result;
}

uint64_t sub_1002E0268()
{
  if ((*(v0 + qword_1009CF3E8) & 1) == 0)
  {
    return dispatch thunk of TimedMetricsPagePresenter.didLoad()();
  }

  return result;
}

uint64_t sub_1002E02A4()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for GenericPageShelfSupplementaryProvider();
  v4 = *(v0 + qword_1009CF3E0);
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v6 = *((v2 & v1) + 0x230);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10026D92C(v4, v5, v3, v6, WitnessTable);
  sub_1002EA58C(&unk_10097F5A0, type metadata accessor for GenericPageShelfSupplementaryProvider);

  return v8;
}

uint64_t sub_1002E039C()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + 0x258);
  v3 = *(v1 + 0x238);
  v7[0] = *(v1 + 0x228);
  v7[1] = v3;
  v7[2] = *(v1 + 584);
  v8 = v2;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v4 = swift_allocObject();
  sub_10002C0AC(v7, v4 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_100005A38(v7, v5 + 16);
  *(v4 + 56) = v5;
  sub_1002EA58C(&qword_10097C0C8, type metadata accessor for GenericPageItemSupplementaryProvider);
  return v4;
}

double *sub_1002E04F0()
{
  v1 = v0;
  v119 = swift_isaMask & *v0;
  v2 = type metadata accessor for ShelfBackground();
  v114 = *(v2 - 8);
  v115 = v2;
  __chkstk_darwin(v2);
  v106 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v109 = (&v101 - v5);
  v113 = sub_10002849C(&unk_1009731F0);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v101 - v8;
  v9 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v9 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = type metadata accessor for ShelfLayoutContext();
  v117 = *(v14 - 8);
  v118 = v14;
  __chkstk_darwin(v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v120 = sub_10002849C(&qword_100975028);
  v20 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = type metadata accessor for PaginatedPagePresenterState();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = _swiftEmptyArrayStorage;
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v29 = (*(v26 + 88))(v28, v25);
  v107 = v16;
  v111 = v19;
  if (v29 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v26 + 96))(v28, v25);
    sub_100007000(v28);
    v30 = [v0 traitCollection];
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for StaticDimension();
    sub_1000056A8(v31, qword_1009D2460);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007B0B70;
    *(v32 + 32) = v30;
    v33 = v30;
    v34 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v36 = v35;

    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:v36];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    type metadata accessor for InfiniteScrollFooterView();
    v41 = v40;
    static UICollectionReusableView.elementKind.getter();
    v42 = String._bridgeToObjectiveC()();

    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = v43;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v45 = v125;
  }

  else
  {
    (*(v26 + 8))(v28, v25);
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = qword_10097F2F8;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (!v47)
  {
    return v45;
  }

  v48 = v47;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v49 = v120;
  v50 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
  v53 = *(v20 + 8);
  v51 = v20 + 8;
  v52 = v53;
  v53(v24, v49);
  if (v50 < 1)
  {
    v57 = v117;
    v56 = v118;
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  v54 = *(v119 + 600);
  v55 = *(v119 + 568);
  v121 = *(v119 + 552);
  v122 = v55;
  v123 = *(v119 + 584);
  v124 = v54;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
  v57 = v117;
  v56 = v118;
  if ((*(v117 + 48))(v13, 1, v118) == 1)
  {
    sub_10002B894(v13, &qword_10097F480);
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  v102 = v45;
  v104 = v52;
  v103 = v51;
  v59 = v56;
  v60 = v111;
  (*(v57 + 32))(v111, v13, v59);
  v61 = v108;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v62 = v57;
  v63 = v109;
  v64 = v113;
  ReadOnlyLens.subscript.getter();

  v65 = v64;
  v66 = v63;
  (*(v112 + 8))(v61, v65);
  v68 = v114;
  v67 = v115;
  if ((*(v114 + 88))(v63, v115) != enum case for ShelfBackground.color(_:))
  {
    v57 = v62;
    (*(v62 + 8))(v60, v59);
    (*(v68 + 8))(v66, v67);
    v56 = v59;
    v52 = v104;
    v45 = v102;
    v58 = *(v1 + v46);
    if (!v58)
    {
      return v45;
    }

    goto LABEL_21;
  }

  (*(v68 + 96))(v63, v67);

  v69 = *(sub_10002849C(&qword_100972A40) + 48);
  v70 = type metadata accessor for ShelfBackgroundStyle();
  (*(*(v70 - 8) + 8))(v63 + v69, v70);
  v71 = objc_opt_self();
  v72 = [v71 fractionalWidthDimension:1.0];
  v73 = [v71 absoluteDimension:2000.0];
  v74 = [objc_opt_self() sizeWithWidthDimension:v72 heightDimension:v73];

  v75 = String._bridgeToObjectiveC()();
  v76 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v74 elementKind:v75 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v76 setExtendsBoundary:0];
  v77 = v76;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v57 = v62;
  v56 = v59;
  (*(v62 + 8))(v111, v59);
  v45 = v125;
  v52 = v104;
  v58 = *(v1 + v46);
  if (v58)
  {
LABEL_21:
    v78 = v58;
    v79 = v116;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v80 = v120;
    v81 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    v52(v79, v80);
    if (v81 >= 1)
    {
      v82 = *(v119 + 600);
      v83 = *(v119 + 568);
      v121 = *(v119 + 552);
      v122 = v83;
      v123 = *(v119 + 584);
      v124 = v82;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      v84 = v110;
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
      if ((*(v57 + 48))(v84, 1, v56) == 1)
      {
        sub_10002B894(v84, &qword_10097F480);
      }

      else
      {
        v85 = v107;
        (*(v57 + 32))(v107, v84, v56);
        v86 = v105;
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v87 = v106;
        v88 = v113;
        ReadOnlyLens.subscript.getter();

        (*(v112 + 8))(v86, v88);
        v90 = v114;
        v89 = v115;
        if ((*(v114 + 88))(v87, v115) == enum case for ShelfBackground.color(_:))
        {
          (*(v90 + 96))(v87, v89);

          v91 = *(sub_10002849C(&qword_100972A40) + 48);
          v92 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v92 - 8) + 8))(v87 + v91, v92);
          v93 = objc_opt_self();
          v94 = [v93 fractionalWidthDimension:1.0];
          v95 = [v93 absoluteDimension:2000.0];
          v96 = [objc_opt_self() sizeWithWidthDimension:v94 heightDimension:v95];

          v97 = String._bridgeToObjectiveC()();
          v98 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v96 elementKind:v97 alignment:5 absoluteOffset:{0.0, 2000.0}];

          [v98 setExtendsBoundary:0];
          v99 = v98;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          (*(v57 + 8))(v85, v56);
          return v125;
        }

        else
        {
          (*(v57 + 8))(v85, v56);
          (*(v90 + 8))(v87, v89);
        }
      }
    }
  }

  return v45;
}

double sub_1002E143C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_isaMask & *v3;
  type metadata accessor for InfiniteScrollFooterView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v8 == a2)
  {

    goto LABEL_11;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_11:

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    *(a3 + 24) = sub_10002849C(&qword_10097BA80);
    *(a3 + 32) = sub_100097060(&unk_10097F590, &qword_10097BA80);
    sub_1000056E0(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007FB9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = *(v7 + 552);
    *(v12 + 24) = *(v7 + 560);
    *(v12 + 40) = *(v7 + 576);
    *(v12 + 48) = *(v7 + 584);
    *(v12 + 64) = *(v7 + 600);
    *(v12 + 72) = v11;
    *(a3 + 24) = sub_10002849C(&qword_10097F570);
    *(a3 + 32) = sub_100097060(&qword_10097F578, &qword_10097F570);
    sub_1000056E0(a3);
    sub_100005744(0, &qword_10097F580);
    swift_bridgeObjectRetain_n();
LABEL_12:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002E184C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = sub_10002849C(&qword_10097F538);
  __chkstk_darwin(v5 - 8);
  v47 = v33 - v6;
  v7 = sub_10002849C(&unk_10097F540);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = v33 - v8;
  v38 = *((v3 & v2) + 0x248);
  v37 = *((v3 & v2) + 0x250);
  v36 = *((v3 & v2) + 0x258);
  *&v50[24] = v38;
  v51 = v37;
  v52 = v36;
  v9 = *((v3 & v2) + 0x228);
  v34 = *(v4 + 568);
  v35 = (v4 + 560);
  *v50 = v9;
  *&v50[8] = v34;
  updated = type metadata accessor for DiffablePagePresenter.UpdatePhase();
  v10 = type metadata accessor for EventSubscription();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v41 = v33 - v11;
  v12 = sub_10002849C(&unk_10097F4A0);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  __chkstk_darwin(v12);
  v39 = v33 - v14;
  v15 = sub_10002849C(&qword_100977F80);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  v33[1] = *(v1 + qword_1009CF3E0);
  dispatch thunk of DiffablePagePresenter.onApplySnapshot.getter();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1002EA1F8;
  *(v19 + 24) = 0;
  sub_10002849C(&unk_10097F550);
  *&v20 = v9;
  *(&v20 + 1) = *v35;
  *v50 = v20;
  *&v50[16] = v34;
  v51 = v38;
  v52 = v37;
  v53 = v36;
  type metadata accessor for BaseDiffableShelfViewController();
  v38 = &protocol conformance descriptor for SyncEvent<A>;
  sub_100097060(&qword_100977F88, &unk_10097F550);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v50);
  (*(v16 + 8))(v18, v15);
  DiffablePagePresenter.onPerformAction.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002EA25C;
  *(v21 + 24) = 0;
  v22 = sub_10002849C(&qword_10097F4B0);
  v23 = sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v24 = v39;
  v36 = v22;
  v37 = v23;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v50);
  (*(v49 + 8))(v24, v48);
  TimedMetricsPagePresenter.onUpdatePhaseChanged.getter();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002EA2C0;
  *(v25 + 24) = 0;
  type metadata accessor for SyncEvent();
  swift_getWitnessTable();
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v26 = v41;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v50);
  (*(v42 + 8))(v26, v43);
  DiffablePagePresenter.onPaginationStateChanged.getter();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1002EA34C;
  *(v27 + 24) = 0;
  sub_10002849C(&qword_10097F560);
  sub_100097060(&qword_10097F568, &qword_10097F560);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  v28 = v44;
  EventEmitter.addObserver<A>(on:target:method:)();

  sub_100007000(v50);
  (*(v45 + 8))(v28, v46);
  if (*(v1 + qword_10097F300))
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1002EA3B0;
    *(v29 + 24) = 0;

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v30 = v47;
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v50);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v47;
  }

  (*(v49 + 56))(v30, v31, 1, v48);
  return sub_10002B894(v30, &qword_10097F538);
}

void sub_1002E20C0(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v28 = sub_10002849C(&qword_10097F530);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v8 = sub_10002849C(&unk_10097F490);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_10002849C(&qword_100977FC8);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1002DFFDC(v10);
  sub_10002B894(v10, &unk_10097F490);
  v13 = SnapshotUpdate.useReloadData.getter();
  v14 = qword_10097F2F8;
  if (v13)
  {
    swift_beginAccess();
    v15 = *&v2[v14];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    SnapshotUpdate.contentSnapshot.getter();
    dispatch thunk of ModelMappedDiffableDataSource.applySnapshotUsingReloadData(_:animatingDifferences:completion:)();
  }

  else
  {
    swift_beginAccess();
    v17 = *&v2[v14];
    if (!v17)
    {
      goto LABEL_7;
    }

    v16 = v17;
    SnapshotUpdate.contentSnapshot.getter();
    SnapshotUpdate.animated.getter();
    dispatch thunk of ModelMappedDiffableDataSource.apply(_:animatingDifferences:completion:)();
  }

  (*(v5 + 8))(v7, v28);
LABEL_7:
  v18 = *(v4 + 600);
  v19 = *(v4 + 568);
  v29 = *(v4 + 552);
  v30 = v19;
  v31 = *(v4 + 584);
  v32 = v18;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  dispatch thunk of VisibleShelfSupplementaryCollectionElementsObserver.reconfigureVisibleShelfSupplementaries<A>(in:asPartOf:)();
  v20 = [v2 collectionView];
  if (!v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  v22 = [v20 window];

  if (v22)
  {

    v23 = [v2 collectionView];
    if (!v23)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v24 = v23;
    dispatch thunk of CompoundScrollObserver.didScroll(in:)();
  }

  v25 = [v2 view];
  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = v25;
  [v25 bounds];

  ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  if (SnapshotUpdate.isInitialFullPageSnapshot.getter())
  {
    ArtworkLoader.didFinishLoadingInitialViewport()();
  }
}

uint64_t sub_1002E250C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_100031660(a2, v5, &unk_1009711D0);

  sub_1002E2CB4(v2, v5);
  return sub_10002B894(&v4, &qword_10097C510);
}

void sub_1002E258C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];

    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    sub_10021D284();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002E26A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28[1] = a1;
  v28[0] = swift_isaMask & *v2;
  v5 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = type metadata accessor for ItemLayoutContext();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v33 = v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(type metadata accessor for IndexPath() - 8);
    v16 = (v9 + 48);
    v31 = v9;
    v17 = (v9 + 32);
    v18 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v34 = *(v15 + 72);
    v19 = _swiftEmptyArrayStorage;
    v29 = v16;
    v30 = v11;
    v32 = v3;
    do
    {
      sub_1002E7968();
      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_10002B894(v7, &unk_1009731E0);
      }

      else
      {
        v20 = *v17;
        v21 = v33;
        (*v17)(v33, v7, v8);
        v20(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1000340B4(0, *(v19 + 2) + 1, 1, v19);
        }

        v23 = *(v19 + 2);
        v22 = *(v19 + 3);
        if (v23 >= v22 >> 1)
        {
          v19 = sub_1000340B4(v22 > 1, v23 + 1, 1, v19);
        }

        *(v19 + 2) = v23 + 1;
        v24 = v19 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v23;
        v11 = v30;
        v20(v24, v30, v8);
        v16 = v29;
      }

      v18 += v34;
      --v14;
    }

    while (v14);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  if (!*(v19 + 2))
  {
  }

  v25 = *(v28[0] + 600);
  v26 = *(v28[0] + 568);
  v35 = *(v28[0] + 552);
  v36 = v26;
  v37 = *(v28[0] + 584);
  v38 = v25;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  swift_getObjectType();
  dispatch thunk of CollectionElementsObserver.prefetchCells(in:collectionView:asPartOf:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002E2A90@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = *(v2 + qword_10097F2E0);
  v12 = OBJC_IVAR____TtC8AppStore52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_100031660(v11 + v12, v10, &unk_10097DAE0);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 1, 1, v13);
  swift_beginAccess();
  sub_1000F4070(v7, v11 + v12);
  swift_endAccess();
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_10002B894(v10, &unk_10097DAE0);
    return sub_100031660(a1, a2, &unk_10097DAE0);
  }

  else
  {
    (*(v14 + 32))(a2, v10, v13);
    return (v15)(a2, 0, 1, v13);
  }
}

uint64_t sub_1002E2CB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = type metadata accessor for IndexPath();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v57 - v11;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031660(a2, v93, &unk_1009711D0);
  if (v93[3])
  {
    sub_100005744(0, &qword_100972EB0);
    if (swift_dynamicCast())
    {
      v16 = v62[1];
      [v16 bounds];
      LOBYTE(v87) = 1;
      *&v69 = v16;
      *(&v69 + 1) = v17;
      *&v70 = v18;
      *(&v70 + 1) = v19;
      *&v71 = v20;
      BYTE8(v71) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v72 = _Q0;
      v73 = _Q0;
      v74 = 15;
      sub_100005744(0, &qword_1009729E0);
      *v15 = static OS_dispatch_queue.main.getter();
      (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
      v26 = _dispatchPreconditionTest(_:)();
      v27 = *(v13 + 8);
      v13 += 8;
      v27(v15, v12);
      if (v26)
      {
        v77 = xmmword_100975F50;
        v78 = xmmword_100975F60;
        v79 = xmmword_100975F70;
        v75 = xmmword_100975F30;
        v76 = xmmword_100975F40;
        v83 = v71;
        v84 = v72;
        v85 = v73;
        v81 = v69;
        v82 = v70;
        v87 = xmmword_100975F30;
        v88 = xmmword_100975F40;
        v90 = xmmword_100975F60;
        v91 = xmmword_100975F70;
        v80 = qword_100975F80;
        v86 = v74;
        v92 = qword_100975F80;
        v89 = xmmword_100975F50;
        sub_100031660(&v75, &v63, &unk_10097F520);
        xmmword_100975F50 = v83;
        xmmword_100975F60 = v84;
        xmmword_100975F70 = v85;
        qword_100975F80 = v86;
        xmmword_100975F30 = v81;
        xmmword_100975F40 = v82;
        sub_10002B894(&v87, &unk_10097F520);
        sub_10019DADC(&v69, &v63);
        sub_1002E8F60(v61, a1, v62);
        v65 = xmmword_100975F50;
        v66 = xmmword_100975F60;
        v67 = xmmword_100975F70;
        v68 = qword_100975F80;
        v63 = xmmword_100975F30;
        v64 = xmmword_100975F40;
        xmmword_100975F30 = v75;
        xmmword_100975F40 = v76;
        xmmword_100975F50 = v77;
        xmmword_100975F60 = v78;
        xmmword_100975F70 = v79;
        qword_100975F80 = v80;
        sub_10002B894(&v63, &unk_10097F520);
        sub_10019DB38(&v69);
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_10002B894(v93, &unk_1009711D0);
  }

  v58 = a1;
  v29 = [v61 collectionView];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 indexPathsForSelectedItems];

  if (v31)
  {
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v32 + 16))
    {
      v33 = v60;
      (*(v60 + 16))(v9, v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v7);

      v34 = *(v33 + 32);
      v35 = v59;
      v57 = v7;
      v34(v59, v9, v7);
      v36 = [v61 collectionView];
      if (!v36)
      {
LABEL_22:
        __break(1u);

        v53 = *(v13 + 0x20 + 16);
        v65 = *(v13 + 0x20);
        v66 = v53;
        v67 = *(v13 + 0x40);
        v68 = *(v13 + 0x50);
        v54 = *(v13 + 16);
        v63 = *v13;
        v64 = v54;
        v55 = v78;
        *(v13 + 0x20) = v77;
        *(v13 + 0x20 + 16) = v55;
        *(v13 + 0x40) = v79;
        *(v13 + 0x50) = v80;
        v56 = v76;
        *v13 = v75;
        *(v13 + 16) = v56;
        result = sub_10002B894(&v63, &unk_10097F520);
        __break(1u);
        return result;
      }

      v37 = v36;
      v38 = v35;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v40 = [v37 cellForItemAtIndexPath:isa];

      if (v40)
      {
        v41 = v40;
        [v41 bounds];
        LOBYTE(v87) = 1;
        *&v69 = v40;
        *(&v69 + 1) = v42;
        *&v70 = v43;
        *(&v70 + 1) = v44;
        *&v71 = v45;
        BYTE8(v71) = 1;
        __asm { FMOV            V0.2D, #10.0 }

        v72 = _Q0;
        v73 = _Q0;
        v74 = 15;
        sub_100005744(0, &qword_1009729E0);
        *v15 = static OS_dispatch_queue.main.getter();
        (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
        v47 = _dispatchPreconditionTest(_:)();
        v48 = *(v13 + 8);
        v13 += 8;
        v48(v15, v12);
        v49 = v57;
        if (v47)
        {
          v77 = xmmword_100975F50;
          v78 = xmmword_100975F60;
          v79 = xmmword_100975F70;
          v75 = xmmword_100975F30;
          v76 = xmmword_100975F40;
          v83 = v71;
          v84 = v72;
          v85 = v73;
          v81 = v69;
          v82 = v70;
          v87 = xmmword_100975F30;
          v88 = xmmword_100975F40;
          v90 = xmmword_100975F60;
          v91 = xmmword_100975F70;
          v80 = qword_100975F80;
          v86 = v74;
          v92 = qword_100975F80;
          v89 = xmmword_100975F50;
          sub_100031660(&v75, &v63, &unk_10097F520);
          xmmword_100975F50 = v83;
          xmmword_100975F60 = v84;
          xmmword_100975F70 = v85;
          qword_100975F80 = v86;
          xmmword_100975F30 = v81;
          xmmword_100975F40 = v82;
          sub_10002B894(&v87, &unk_10097F520);
          sub_10019DADC(&v69, &v63);
          sub_1002E8F60(v61, v58, v93);
          v65 = xmmword_100975F50;
          v66 = xmmword_100975F60;
          v67 = xmmword_100975F70;
          v68 = qword_100975F80;
          v63 = xmmword_100975F30;
          v64 = xmmword_100975F40;
          xmmword_100975F30 = v75;
          xmmword_100975F40 = v76;
          xmmword_100975F50 = v77;
          xmmword_100975F60 = v78;
          xmmword_100975F70 = v79;
          qword_100975F80 = v80;
          sub_10002B894(&v63, &unk_10097F520);
          sub_10019DB38(&v69);

          (*(v60 + 8))(v59, v49);
        }

        goto LABEL_20;
      }

      (*(v60 + 8))(v38, v57);
    }

    else
    {
    }
  }

  v50 = *&v61[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph];
  v51 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v6, 1, v51) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(v58, 1, v50, v6);

  return (*(v52 + 8))(v6, v51);
}

uint64_t sub_1002E35AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1002EA58C(&qword_100977FD0, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1002E3660@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GenericPageShelfLayoutSpacingProvider;
  result = sub_10013DB10();
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1002E3694@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  a1[3] = &type metadata for GenericPageGridProvider;
  result = sub_1001E13C4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1002E36EC@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x258);
  v5 = *(v3 + 0x238);
  v22[0] = *(v3 + 0x228);
  v22[1] = v5;
  v22[2] = *(v3 + 584);
  v23 = v4;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v6 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v24[3] = swift_getObjectType();
  v24[0] = v6;
  v7 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v25[3] = swift_getObjectType();
  v25[0] = v7;
  sub_1000073E8(v24, v22);
  sub_100056164(v22, v20);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v21)
  {
    v18 = v21;
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100034090(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100034090((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    *&v8[2 * v10 + 4] = v18;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v25, v22);
  sub_100056164(v22, v20);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v21)
  {
    v19 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100034090(0, *(v8 + 2) + 1, 1, v8);
    }

    v12 = *(v8 + 2);
    v11 = *(v8 + 3);
    v13 = v19;
    if (v12 >= v11 >> 1)
    {
      v17 = sub_100034090((v11 > 1), v12 + 1, 1, v8);
      v13 = v19;
      v8 = v17;
    }

    *(v8 + 2) = v12 + 1;
    *&v8[2 * v12 + 4] = v13;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v14 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_10002C0AC(v22, v20);

  v15 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  result = sub_100007000(v22);
  a1[3] = v14;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v15;
  return result;
}

id sub_1002E3A40()
{
  v0 = sub_1002E9EA4();

  return v0;
}

void sub_1002E3A7C(uint64_t a1)
{
  v3 = qword_10097F2F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002E3B34(uint64_t a1)
{
  v3 = qword_10097F2F8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1002E3C10(uint64_t result)
{
  v2 = qword_1009CF428;
  if (*(v1 + qword_1009CF428) == (result & 1))
  {
    return result;
  }

  v3 = qword_10097F318;
  if (!*(v1 + qword_1009CF428) || *(v1 + qword_10097F318))
  {
    v4 = *(v1 + qword_10097F318);
    if (!v4)
    {
      return result;
    }

    goto LABEL_5;
  }

  type metadata accessor for BarButtonItemHidingScrollObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v1 + v3) = v5;
  if (*(v1 + qword_10097F318))
  {
    sub_1002EA58C(&unk_10097F5D0, type metadata accessor for BarButtonItemHidingScrollObserver);
  }

  CompoundScrollObserver.addChild(_:)();

  v4 = *(v1 + qword_10097F318);
  if (v4)
  {
LABEL_5:
    *(v4 + 24) = *(v1 + v2);

    sub_1002D9730();
  }

  return result;
}

void sub_1002E3D5C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = sub_10002849C(&unk_10097F4A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - v7;
  v9 = *((v3 & v2) + 0x258);
  v10 = *(v4 + 568);
  v49[0] = *(v4 + 552);
  v49[1] = v10;
  v49[2] = *(v4 + 584);
  v50 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController();
  v51.receiver = v1;
  v51.super_class = v11;
  objc_msgSendSuper2(&v51, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_10045B2A0(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  sub_100005744(0, &qword_100970180);
  v14 = static UIColor.defaultBackground.getter();
  [v13 setBackgroundColor:v14];

  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() systemBackgroundColor];
    [v16 setBackgroundColor:v17];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    [v18 setAlwaysBounceVertical:1];
  }

  v20 = [objc_opt_self() sharedApplication];
  v21 = [v20 launchedToTest];

  if (v21)
  {

    dispatch thunk of InfiniteScrollObserver.pptAllowedPaginationCount.setter();
  }

  swift_getWitnessTable();
  ShelfBasedCollectionViewController.prepareLayoutDependencies()();
  (*((swift_isaMask & *v1) + 0x498))();
  dispatch thunk of DiffablePagePresenter.viewDidLoad()();
  v22 = [v1 collectionView];
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  [v22 setPrefetchDataSource:v1];

  v24 = qword_10097F2F8;
  swift_beginAccess();
  v25 = *(v1 + v24);
  if (v25)
  {
    v48 = v5;
    v26 = *(v1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10002849C(&qword_10097F4B0);
    swift_allocObject();
    v28 = v25;
    v47 = v26;
    swift_retain_n();
    *(v27 + 32) = SyncEvent.init()();
    v46 = v28;
    swift_unknownObjectWeakAssign();
    *(v27 + 24) = v26;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1002EA034;
    *(v29 + 24) = 0;
    sub_100097060(&qword_10097F4B8, &qword_10097F4B0);
    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    EventEmitter.addObserver<A>(on:target:method:)();

    sub_100007000(v49);
    (*(v6 + 8))(v8, v48);
    v30 = sub_1002EA58C(&qword_10097F4C0, type metadata accessor for DiffableFlowPreviewPresenter);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v31;
    v32[3] = v27;
    v32[4] = v30;

    v33 = v1;
    v34 = sub_1002EA0A8(v27, v33, sub_1002EA09C, v32, v47);

    v35 = *(v33 + qword_10097F308);
    *(v33 + qword_10097F308) = v34;
    v36 = v34;

    *(v33 + qword_10097F300) = v27;

    v37 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v36];
    v38 = [v33 collectionView];
    if (v38)
    {
      v39 = v38;
      [v38 addInteraction:v37];

      goto LABEL_12;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_12:
  if (*(v1 + qword_10097F310))
  {
    v40 = [v1 collectionView];
    ImpressionsScrollObserver.collectionView.setter();
  }

  v41 = *(v1 + qword_10097F318);
  if (v41)
  {
    v42 = *((swift_isaMask & *v1) + 0x3F8);

    v44 = v42(v43);
    v45 = *(v41 + 16);
    *(v41 + 16) = v44;
  }
}

void sub_1002E4488(void *a1)
{
  v1 = a1;
  sub_1002E3D5C();
}

uint64_t sub_1002E44D0(char a1)
{
  v2 = v1;
  v5 = *((swift_isaMask & *v2) + 0x228);
  v6 = *((swift_isaMask & *v2) + 0x238);
  v7 = *((swift_isaMask & *v2) + 0x248);
  v8 = *((swift_isaMask & *v2) + 0x258);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1, v5, v6, v7, v8);
  if ((*(v2 + qword_1009CF3E8) & 1) == 0)
  {
    dispatch thunk of TimedMetricsPagePresenter.didLoad()();
  }

  dispatch thunk of DiffablePagePresenter.viewWillAppear()();
  return ArtworkLoader.isOccluded.setter();
}

void sub_1002E45D4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E44D0(a3);
}

void sub_1002E4628(char a1)
{
  v2 = v1;
  v6 = *((swift_isaMask & *v2) + 0x228);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  dispatch thunk of DiffablePagePresenter.viewDidAppear()();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = v6;
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v6)
  {
    v5 = v6;
    dispatch thunk of PlaybackCoordinator.resume()();

    v4 = v5;
  }
}

void sub_1002E4780(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E4628(a3);
}

void sub_1002E47D4(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = type metadata accessor for ViewWillDisappearReason();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v5 & v4) + 0x258);
  v12 = *(v6 + 568);
  v16[0] = *(v6 + 552);
  v16[1] = v12;
  v16[2] = *(v6 + 584);
  v17 = v11;
  v13 = type metadata accessor for BaseDiffableShelfViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewWillDisappear:", a1 & 1);
  static ViewWillDisappearReason.inferred(for:)();
  dispatch thunk of DiffablePagePresenter.viewWillDisappear(forReason:)();
  (*(v8 + 8))(v10, v7);
  if (*(v2 + qword_1009CF420) == 1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v14 = *&v16[0];
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  type metadata accessor for PlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = *&v16[0];
  dispatch thunk of PlaybackCoordinator.pause()();
}

void sub_1002E49F8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E47D4(a3);
}

uint64_t sub_1002E4A4C(char a1)
{
  v2 = v1;
  v5 = *((swift_isaMask & *v2) + 0x228);
  v6 = *((swift_isaMask & *v2) + 0x238);
  v7 = *((swift_isaMask & *v2) + 0x248);
  v8 = *((swift_isaMask & *v2) + 0x258);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1, v5, v6, v7, v8);
  dispatch thunk of DiffablePagePresenter.viewDidDisappear()();
  return ArtworkLoader.isOccluded.setter();
}

void sub_1002E4B2C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002E4A4C(a3);
}

void sub_1002E4BB4(void *a1)
{
  v1 = a1;
  sub_1002E50FC(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_1002E4C30()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3 = *((swift_isaMask & *v0) + 0x238);
  v4 = *((swift_isaMask & *v0) + 0x248);
  v5 = *((swift_isaMask & *v0) + 0x258);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v6, "as_viewWillBecomePartiallyVisible", v2, v3, v4, v5);
  return dispatch thunk of DiffablePagePresenter.viewWillBecomePartiallyVisible()();
}

void sub_1002E4CF0(void *a1)
{
  v1 = a1;
  sub_1002E4C30();
}

void sub_1002E4D38()
{
  v1 = *((swift_isaMask & *v0) + 0x228);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  AppStoreViewControllerPresenter.viewDidBecomePartiallyVisible()();
  if (*(v0 + qword_1009CF420) == 1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
  }

  ArtworkLoader.isOccluded.setter();
  type metadata accessor for PlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of PlaybackCoordinator.pause()();
}

void sub_1002E4ED8(void *a1)
{
  v1 = a1;
  sub_1002E4D38();
}

void sub_1002E4F20()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  dispatch thunk of DiffablePagePresenter.viewWillBecomeFullyVisible()();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  type metadata accessor for PlaybackCoordinator();
  BaseObjectGraph.optional<A>(_:)();
  if (v2)
  {
    v1 = v2;
    dispatch thunk of PlaybackCoordinator.resume()();
  }

  ArtworkLoader.isOccluded.setter();
}

void sub_1002E5080(void *a1)
{
  v1 = a1;
  sub_1002E4F20();
}

uint64_t sub_1002E50FC(SEL *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v8 = *((swift_isaMask & *v3) + 0x230);
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v8, WitnessTable);
}

void sub_1002E51E4(void *a1)
{
  v1 = a1;
  sub_1002E50FC(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_1002E5260(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = sub_10002849C(&unk_10097F490);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = *((v4 & v3) + 0x258);
  v10 = *(v5 + 568);
  v18[0] = *(v5 + 552);
  v18[1] = v10;
  v18[2] = *(v5 + 584);
  v19 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController();
  v20.receiver = v1;
  v20.super_class = v11;
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  result = [v1 isViewLoaded];
  if (result)
  {
    v13 = [v1 collectionView];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 collectionViewLayout];

      [v15 invalidateLayout];
    }

    sub_1002DFE08();
    v16 = sub_10002849C(&qword_100977FC8);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_1002DFFDC(v8);
    sub_10002B894(v8, &unk_10097F490);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
      return sub_10045B2A0(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002E54E0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002E5260(a3);
}

id sub_1002E554C(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = swift_isaMask & *v3;
  v11 = sub_10002849C(&unk_10097F490);
  __chkstk_darwin(v11 - 8);
  v13 = &aBlock - v12;
  v14 = *((v9 & v8) + 0x258);
  v15 = *(v10 + 568);
  aBlock = *(v10 + 552);
  v23 = v15;
  v24 = *(v10 + 584);
  v25 = v14;
  v16 = type metadata accessor for BaseDiffableShelfViewController();
  v26.receiver = v4;
  v26.super_class = v16;
  objc_msgSendSuper2(&v26, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  result = [v4 isViewLoaded];
  if (result)
  {
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *&v24 = sub_1002EA028;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_1006D1458;
    *(&v23 + 1) = &unk_1008BCF70;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_1002DFE08();
    v21 = sub_10002849C(&qword_100977FC8);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_1002DFFDC(v13);
    sub_10002B894(v13, &unk_10097F490);
    swift_getWitnessTable();
    return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
  }

  return result;
}

void sub_1002E57F4(double a1, double a2, uint64_t a3, void *a4)
{
  v10 = *((swift_isaMask & *a4) + 0x228);
  v11 = *((swift_isaMask & *a4) + 0x238);
  v12 = *((swift_isaMask & *a4) + 0x248);
  v13 = *((swift_isaMask & *a4) + 0x258);
  type metadata accessor for BaseDiffableShelfViewController();
  sub_10045B2A0(*&a1, *&a2, 0);
  v7 = [a4 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }
}

void sub_1002E5910(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002E554C(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1002E5990()
{
  v1 = (swift_isaMask & *v0);
  result = [v0 collectionView];
  if (result)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    v18 = v1[69];
    v4[2] = v18;
    v17 = v1[70];
    v4[3] = v17;
    v5 = v1[71];
    v4[4] = v5;
    v6 = v1[72];
    v4[5] = v6;
    v7 = v1[73];
    v4[6] = v7;
    v8 = v1[74];
    v4[7] = v8;
    v9 = v1[75];
    v4[8] = v9;
    v4[9] = v3;
    v10 = objc_allocWithZone(sub_10002849C(&unk_10097F470));
    v11 = ModelMappedDiffableDataSource.init(collectionView:cellProvider:)();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = swift_allocObject();
    *&v14 = v18;
    *(&v14 + 1) = v17;
    *&v15 = v5;
    *(&v15 + 1) = v6;
    *(v13 + 16) = v14;
    *(v13 + 32) = v15;
    *(v13 + 48) = v7;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 72) = v12;
    v16 = v11;

    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E5B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_10002849C(&qword_100977FB8);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_10002849C(&unk_1009731D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_10097F2F8;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10002B894(v16, &qword_100977FB8);
      return 0;
    }

    v27[0] = a11;
    v27[1] = a2;
    (*(v18 + 32))(v20, v16, v17);

    v30 = a5;
    v31 = a6;
    v32 = v28;
    v33 = v29;
    v34 = a9;
    v35 = a10;
    v36 = v27[0];
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    v26 = ShelfBasedCollectionViewController.collectionViewCellProvider(indexPath:item:asPartOf:)();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_1002E5E58()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
  }

  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v4 = ShelfBasedCollectionViewController.supplementaryViewProvider(elementKind:indexPath:asPartOf:)();

  return v4;
}

id sub_1002E5FF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  result = [v0 view];
  if (result)
  {
    v6 = result;
    [result bounds];
    v8 = v7;
    v10 = v9;

    (*((swift_isaMask & *v1) + 0x488))(v8, v10);
    sub_100005744(0, &qword_10097F460);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setBoundarySupplementaryItems:isa];

    v12 = (*(ObjectType + 784))();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 552);
    *(v14 + 24) = *(v3 + 560);
    *(v14 + 40) = *(v3 + 576);
    *(v14 + 48) = *(v3 + 584);
    *(v14 + 64) = *(v3 + 600);
    *(v14 + 72) = v13;
    v15 = objc_allocWithZone(v12);
    v18[4] = sub_1002E9EB4;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1002E9BD4;
    v18[3] = &unk_1008BCEA8;
    v16 = _Block_copy(v18);

    v17 = [v15 initWithSectionProvider:v16 configuration:v4];

    _Block_release(v16);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002E62A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = type metadata accessor for Dependency();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v26 = a9;
  v27 = a10;
  v29 = a2;
  v21 = Strong;
  sub_10002849C(&qword_10097F468);
  v28 = a1;
  v31 = v21;
  v32 = &off_1008BCE00;

  v22 = v21;
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  (*(v17 + 8))(v19, v16);

  v31 = v30;
  v32 = a5;
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = v26;
  v37 = v27;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  v23 = ShelfBasedCollectionViewController.compositionalLayoutSectionProvider(section:layoutEnvironment:asPartOf:)();

  return v23;
}

uint64_t sub_1002E64C4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v36 = a1;
  v14 = type metadata accessor for ShelfBackground();
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10002849C(&unk_1009731F0);
  v37 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v20 - 8);
  v22 = &v35 - v21;
  v23 = type metadata accessor for ShelfLayoutContext();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_10002B894(v22, &qword_10097F480);
  }

  v28 = Strong;
  v41 = a6;
  v42 = a7;
  v43 = v40;
  v44 = a9;
  v45 = a10;
  v46 = a11;
  v47 = a12;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10002B894(v22, &qword_10097F480);
  }

  (*(v24 + 32))(v26, v22, v23);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v37 + 8))(v19, v17);
  v30 = v38;
  v29 = v39;
  if ((*(v38 + 88))(v16, v39) == enum case for ShelfBackground.color(_:))
  {
    (*(v30 + 96))(v16, v29);
    v31 = *v16;
    v32 = *(sub_10002849C(&qword_100972A40) + 48);
    v33 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v33 - 8) + 8))(v16 + v32, v33);
    [v36 setBackgroundColor:v31];

    return (*(v24 + 8))(v26, v23);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return (*(v30 + 8))(v16, v29);
  }
}

void sub_1002E6934(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v49 = type metadata accessor for ShelfBackground();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_10002849C(&unk_1009731F0);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v44 - v14;
  v16 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = type metadata accessor for ShelfLayoutContext();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v54 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100975028);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v45 = a1;
    v28 = qword_10097F2F8;
    swift_beginAccess();
    v29 = *&v27[v28];
    if (!v29)
    {

      return;
    }

    v30 = v29;

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v31 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    (*(v23 + 8))(v25, v22);
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      if (__OFSUB__(v31, 1))
      {
        __break(1u);
        return;
      }

      v33 = v32;
      v34 = v20;
      v55 = v51;
      v56 = v52;
      v57 = v53;
      v58 = a9;
      v59 = a10;
      v60 = a11;
      v61 = a12;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

      v35 = (*(v20 + 48))(v18, 1, v19);
      v36 = v54;
      if (v35 != 1)
      {
        (*(v34 + 32))(v54, v18, v19);
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v37 = v50;
        v38 = v47;
        ReadOnlyLens.subscript.getter();

        (*(v46 + 8))(v15, v38);
        v39 = v48;
        v40 = v49;
        if ((*(v48 + 88))(v37, v49) == enum case for ShelfBackground.color(_:))
        {
          (*(v39 + 96))(v37, v40);
          v41 = *v37;
          v42 = *(sub_10002849C(&qword_100972A40) + 48);
          v43 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v43 - 8) + 8))(v37 + v42, v43);
          [v45 setBackgroundColor:v41];

          (*(v34 + 8))(v36, v19);
        }

        else
        {
          (*(v34 + 8))(v36, v19);
          (*(v39 + 8))(v37, v40);
        }

        return;
      }
    }

    else
    {
      (*(v20 + 56))(v18, 1, 1, v19);
    }

    sub_10002B894(v18, &qword_10097F480);
  }
}

uint64_t sub_1002E6F0C(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_100031660(a2, &v7, &unk_1009711D0);
  sub_100031660(&v6, &v4, &qword_10097C510);
  v2 = v4;

  sub_1002E250C(v2, v5);

  sub_10002B894(&v6, &qword_10097C510);
  return sub_10002B894(v5, &unk_1009711D0);
}

uint64_t sub_1002E6FE8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter();

    if (v2)
    {
      PendingPageRender.isLayoutPending.setter();
    }
  }

  return result;
}

uint64_t sub_1002E70BC(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = type metadata accessor for ItemLayoutContext();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a2)
  {
    v24 = a1;
    v25 = a4;
    swift_getObjectType();
    v18 = a2;
    dispatch thunk of ShelfComponentView.itemLayoutContext.getter();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10002B894(v12, &unk_1009731E0);
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v19 = *(v9 + 600);
      v20 = *(v9 + 568);
      v26 = *(v9 + 552);
      v27 = v20;
      v28 = *(v9 + 584);
      v29 = v19;
      type metadata accessor for BaseDiffableShelfViewController();
      swift_getWitnessTable();
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_1002E73A4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002E70BC(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_1002E7508(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ItemLayoutContext();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      dispatch thunk of ShelfComponentView.itemLayoutContext.getter();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10002B894(v9, &unk_1009731E0);
      }

      else
      {
        (*(v11 + 32))(v13, v9, v10);
        v17 = *(v6 + 600);
        v18 = *(v6 + 568);
        v26 = *(v6 + 552);
        v27 = v18;
        v28 = *(v6 + 584);
        v29 = v17;
        type metadata accessor for BaseDiffableShelfViewController();
        swift_getWitnessTable();
        ShelfBasedCollectionViewController.collectionElementsObserver.getter();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph), ObjectType, v20);

        swift_unknownObjectRelease();
        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      v16 = v25;
    }
  }
}

uint64_t sub_1002E785C(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  sub_1002E7508(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002E7968()
{
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  return ShelfBasedCollectionViewController.itemLayoutContext(at:)();
}

uint64_t sub_1002E7A5C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for IndexPath();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a3;
  v7 = a1;
  sub_1002E26A0(v6, v5);
}

uint64_t sub_1002E7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a2;
  v48 = a5;
  v46 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v10 - 8);
  v40 = (&v37 - v11);
  v45 = type metadata accessor for ItemLayoutContext();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for ShelfLayoutContext();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 1168);
  v41 = a3;
  v42 = a4;
  v21(v55, a3, a4, v18);
  sub_100031660(v55, &v49, &qword_10097F488);
  v22 = (v9 + 552);
  v23 = (v9 + 568);
  v24 = (v9 + 584);
  if (*(&v50 + 1))
  {
    sub_100005A38(&v49, &v53);
    v39 = *v22;
    v38 = *v23;
    v37 = *v24;
    v25 = *(v9 + 600);
    v49 = v39;
    v50 = v38;
    v51 = v37;
    v52 = v25;
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.collectionElementsObserver.getter();
    swift_getObjectType();
    dispatch thunk of CollectionElementsObserver.willDisplayGlobalSupplementary(_:registeredWith:collectionView:asPartOf:)();
    swift_unknownObjectRelease();
    sub_100007000(&v53);
    v26 = v37;
    v27 = v38;
    v28 = v39;
  }

  else
  {
    sub_10002B894(&v49, &qword_10097F488);
    v28 = *v22;
    v27 = *v23;
    v26 = *v24;
    v25 = *(v9 + 600);
  }

  v49 = v28;
  v50 = v27;
  v51 = v26;
  v52 = v25;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10002B894(v15, &qword_10097F480);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_100005A38(&v53, &v49);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.willDisplayShelfSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v49);
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      sub_10002B894(&v53, &qword_10097F488);
    }
  }

  v29 = v40;
  ShelfBasedCollectionViewController.itemLayoutContext(at:)();
  v30 = v44;
  v31 = v45;
  v32 = (*(v44 + 48))(v29, 1, v45);
  v33 = v43;
  if (v32 == 1)
  {
    sub_10002B894(v55, &qword_10097F488);
    v34 = &unk_1009731E0;
    v35 = v29;
  }

  else
  {
    (*(v30 + 32))(v43, v29, v31);
    ShelfBasedCollectionViewController.itemSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_100005A38(&v53, &v49);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.willDisplayItemSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v49);
      (*(v30 + 8))(v33, v31);
      v34 = &qword_10097F488;
      v35 = v55;
    }

    else
    {
      (*(v30 + 8))(v33, v31);
      sub_10002B894(v55, &qword_10097F488);
      v35 = &v53;
      v34 = &qword_10097F488;
    }
  }

  return sub_10002B894(v35, v34);
}

uint64_t sub_1002E822C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a5;
  v47 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v10 - 8);
  v41 = (&v38 - v11);
  v12 = type metadata accessor for ItemLayoutContext();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = type metadata accessor for ShelfLayoutContext();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v9 + 1168);
  v42 = a3;
  v43 = a4;
  v22(&v50, a3, a4, v19);
  v23 = (v9 + 552);
  v24 = (v9 + 568);
  v25 = (v9 + 584);
  if (*(&v51 + 1))
  {
    sub_100005A38(&v50, &v54);
    v40 = *v23;
    v39 = *v24;
    v38 = *v25;
    v26 = *(v9 + 600);
    v50 = v40;
    v51 = v39;
    v52 = v38;
    v53 = v26;
    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    ShelfBasedCollectionViewController.collectionElementsObserver.getter();
    swift_getObjectType();
    dispatch thunk of CollectionElementsObserver.didEndDisplayingGlobalSupplementary(_:registeredWith:collectionView:asPartOf:)();
    swift_unknownObjectRelease();
    sub_100007000(&v54);
    v27 = v38;
    v28 = v39;
    v29 = v40;
  }

  else
  {
    sub_10002B894(&v50, &qword_10097F488);
    v29 = *v23;
    v28 = *v24;
    v27 = *v25;
    v26 = *(v9 + 600);
  }

  v50 = v29;
  v51 = v28;
  v52 = v27;
  v53 = v26;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(containing:)();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10002B894(v16, &qword_10097F480);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100005A38(&v54, &v50);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.didEndDisplayingShelfSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v50);
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      sub_10002B894(&v54, &qword_10097F488);
    }
  }

  v30 = v41;
  ShelfBasedCollectionViewController.itemLayoutContext(at:)();
  v32 = v45;
  v31 = v46;
  v33 = (*(v45 + 48))(v30, 1, v46);
  v34 = v44;
  if (v33 == 1)
  {
    v35 = &unk_1009731E0;
    v36 = v30;
  }

  else
  {
    (*(v32 + 32))(v44, v30, v31);
    ShelfBasedCollectionViewController.itemSupplementaryProvider.getter();
    swift_getObjectType();
    dispatch thunk of ItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100005A38(&v54, &v50);
      ShelfBasedCollectionViewController.collectionElementsObserver.getter();
      swift_getObjectType();
      dispatch thunk of CollectionElementsObserver.didEndDisplayingItemSupplementary(_:in:registeredWith:collectionView:asPartOf:)();
      swift_unknownObjectRelease();
      sub_100007000(&v50);
      return (*(v32 + 8))(v34, v31);
    }

    (*(v32 + 8))(v34, v31);
    v35 = &qword_10097F488;
    v36 = &v54;
  }

  return sub_10002B894(v36, v35);
}

uint64_t sub_1002E88E0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_1002E8A2C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_1002E2A90(v9, v12);

  sub_10002B894(v9, &unk_10097DAE0);
  type metadata accessor for IndexPath();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_1002E8C38(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1002E9C50();

  swift_unknownObjectRelease();
}

void sub_1002E8CD8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8CBC(v4);
}

void sub_1002E8D5C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8D40(v4);
}

void sub_1002E8DE0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8DC4(v4);
}

void sub_1002E8E64(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002E8E48(v4);
}

void sub_1002E8EF0(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_1002E8ECC(v6, a4);
}

uint64_t sub_1002E8F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  v10 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10002B894(v8, &unk_100972A00);
    v13 = 0;
  }

  else
  {
    v13 = sub_1005F9AF4(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_1002E90D0(void *a1)
{
  v1 = a1;
  sub_1002DED28();
}

void sub_1002E9118(void *a1)
{
  v1 = a1;
  sub_1002DED48();
}

uint64_t sub_1002E9160()
{

  v1 = qword_1009CF3D8;
  v2 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_1002E92B8()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3 = *((swift_isaMask & *v0) + 0x238);
  v4 = *((swift_isaMask & *v0) + 0x248);
  v5 = *((swift_isaMask & *v0) + 0x258);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  return objc_msgSendSuper2(&v6, "dealloc", v2, v3, v4, v5);
}

uint64_t sub_1002E9360(uint64_t a1)
{

  v2 = qword_1009CF3D8;
  v3 = type metadata accessor for ShelfBasedCollectionViewControllerDependencies();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

id sub_1002E95C8()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_1002E9600(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_1002E9648(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_1002E96A4;
}

void sub_1002E96A4(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_1002E96EC()
{
  v0 = sub_1002E9FB0();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002E971C(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002E3B8C();
  return sub_1000C2700;
}

void *sub_1002E978C()
{
  v0 = sub_1002E9F6C();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002E97BC(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002E3AD4();
  return sub_1000C2700;
}

uint64_t (*sub_1002E9834(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002DFCA4();
  return sub_1000B4CAC;
}

uint64_t sub_1002E9AD0()
{
  sub_1002E9F5C();
}

id sub_1002E9BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1002E9C50()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for ShelfLayoutContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *((v2 & v1) + 0x258);
  v12 = *(v3 + 568);
  v14[0] = *(v3 + 552);
  v14[1] = v12;
  v14[2] = *(v3 + 584);
  v15 = v11;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &qword_10097F480);
  }

  (*(v8 + 32))(v10, v6, v7);
  dispatch thunk of CompoundScrollObserver.didScroll(orthogonalScrollView:in:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1002E9F6C()
{
  v1 = qword_10097F2F0;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002E9FB0()
{
  v1 = qword_10097F2F8;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t (*sub_1002EA034(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA1DC;
}

id sub_1002EA0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002EA58C(&qword_10097F4C0, type metadata accessor for DiffableFlowPreviewPresenter);
  v9 = sub_10002849C(&qword_10097F4C8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_1009816B8];
  *&v10[qword_1009816B8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_1009816B0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_1009816C8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

void (*sub_1002EA1F8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA4F4;
}

uint64_t (*sub_1002EA25C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA5DC;
}

uint64_t (*sub_1002EA2C0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA498;
}

void (*sub_1002EA34C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA474;
}

uint64_t (*sub_1002EA3B0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002EA5DC;
}

uint64_t (*sub_1002EA414())(void *a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1002EA1D4;
}

uint64_t sub_1002EA58C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002EA5F0(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for NavigationTab();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReferrerData.Kind();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReferrerData();
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v36 = v5;
  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v20;
  AnyHashable.init<A>(_:)();
  if (!*(v19 + 16) || (v21 = sub_1003D78D8(v43), (v22 & 1) == 0))
  {

    sub_10003D614(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_11;
  }

  sub_1000073E8(*(v19 + 56) + 32 * v21, &v44);
  sub_10003D614(v43);

  if (!*(&v45 + 1))
  {
LABEL_11:
    sub_10002B894(&v44, &unk_1009711D0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v43[0];
  v23 = v43[1];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35[1] = v24;
  if (v25 != v24 || v26 != v23)
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v27 = v36;
    if (v29)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v27 = v36;
LABEL_14:
  (*(v37 + 104))(v12, enum case for ReferrerData.Kind.spotlight(_:), v10);
  ReferrerData.init(app:externalUrl:kind:)();
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.setReferrerData(_:)();

  (*(v38 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for TabChangeAction();
  swift_allocObject();
  v30 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
  v31 = sub_10002849C(&unk_100974490);
  v32 = v40;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v33 = v27;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    (*(v39 + 8))(v16, v13);

    sub_10002B894(v33, &unk_100972A00);
  }

  else
  {
    sub_1005FA0E4(v30, 1, v32, v33);

    (*(v39 + 8))(v16, v13);
    (*(v34 + 8))(v33, v31);
  }

  return 1;
}

uint64_t _sSo14NSUserActivityC8AppStoreE6handle04userB08asPartOfSbAB_9JetEngine15BaseObjectGraphCtFZ_0(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = type metadata accessor for FlowPresentationContext();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowOrigin();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FlowAnimationBehavior();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = type metadata accessor for FlowPage();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for NavigationTab();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ReferrerData();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10002849C(&qword_100985B10);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = type metadata accessor for AppStoreDeepLink();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_1002EA5F0(a1, v35);
  }

  v54 = v5;
  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_5;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  AppStoreDeepLink.init(userActivity:refApp:)();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10002B894(v24, &qword_100985B10);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    type metadata accessor for MetricsActivity();
    static MetricsActivity.current.getter();
    AppStoreDeepLink.referral.getter();
    dispatch thunk of MetricsActivity.setReferrerData(_:)();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    type metadata accessor for ASKBagContract();
    BaseObjectGraph.optional<A>(_:)();
    if (v78)
    {
      static ResilientDeepLinkController.removeNonResilientDeepLinks(bag:)();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_10002849C(&qword_100973210);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007B0B70;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    AppStoreDeepLink.url.getter();
    v46 = type metadata accessor for URL();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    AppStoreDeepLink.referral.getter();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    static ActionMetrics.notInstrumented.getter();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    v48 = *(v64 + 13);
    v64 = v42;
    v48(v69, enum case for FlowOrigin.external(_:), v65);
    (*(v67 + 104))(v71, enum case for FlowPresentationContext.infer(_:), v70);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    *(v44 + 32) = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for TabChangeAction();
    swift_allocObject();
    v49 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
    v50 = sub_10002849C(&unk_100974490);
    v51 = v54;
    v52 = v75;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v64, v74);

      sub_10002B894(v51, &unk_100972A00);
    }

    else
    {
      sub_1005FA0E4(v49, 1, v52, v51);

      (*(v73 + 8))(v64, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

UIColor sub_1002EB6BC()
{
  sub_100005744(0, &qword_100970180);
  v0 = [objc_opt_self() whiteColor];
  result.super.isa = UIColor.init(light:dark:)(v0, [objc_allocWithZone(UIColor) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0]).super.isa;
  qword_10097F648 = result.super.isa;
  return result;
}

id sub_1002EB77C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

char *sub_1002EB7C0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v6 - 8);
  v60 = &v51[-v7];
  v8 = type metadata accessor for Artwork.Style();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for InAppPurchaseTheme();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_smallCornerRadius] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView;
  *&v3[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
  v16 = type metadata accessor for ArtworkView();
  *&v3[v15] = static ArtworkView.iapIconArtworkView.getter();
  (*(v11 + 104))(&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme], enum case for InAppPurchaseTheme.infer(_:), v10);
  v57 = a2;
  v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_iconType] = a2;
  v17 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_metrics;
  v18 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v58 = *(v18 - 8);
  v59 = v18;
  (*(v58 + 16))(&v3[v17], a1);
  v61 = a1;
  InAppPurchaseIconLayout.Metrics.plusLineWidth.getter();
  v20 = v19;
  v21 = type metadata accessor for PlusView();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC8AppStore8PlusView_plusColor] = 0;
  *&v22[OBJC_IVAR____TtC8AppStore8PlusView_lineThickness] = v20;
  v63.receiver = v22;
  v63.super_class = v21;
  v23 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  *&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView] = v25;
  v27 = [objc_allocWithZone(v16) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView] = v27;
  if (v52 == 2)
  {
    v28 = [objc_allocWithZone(type metadata accessor for InAppBlendedBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setClipsToBounds:1];
  }

  else
  {
    v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  *&v3[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView] = v28;
  v62.receiver = v3;
  v62.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v34 = v61;
  if (InAppPurchaseIconLayout.Metrics.scaleToFit.getter())
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 4.0;
  }

  ObjectType = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView;
  [*&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_backgroundView] _setCornerRadius:v35];
  v36 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView;
  [*&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkContainingView] _setCornerRadius:v35];
  [*&v33[v36] setClipsToBounds:1];
  v37 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v33[v37], v10);
  sub_1002EBEE4(v13);
  (*(v11 + 8))(v13, v10);
  v38 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
  v39 = *&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
  (*(v55 + 104))(v54, enum case for Artwork.Style.iap(_:), v56);
  v40 = v39;
  ArtworkView.style.setter();

  v41 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView;
  [*&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView] setHidden:v57 != 1];
  v42 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView;
  v43 = *&v33[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_plusView];
  [v43 setHidden:(InAppPurchaseIconLayout.Metrics.displaysPlus.getter() & 1) == 0];

  v44 = qword_10096DA30;
  v45 = *&v33[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Shadow();
  v47 = sub_1000056A8(v46, qword_1009CFCF0);
  v48 = *(v46 - 8);
  v49 = v60;
  (*(v48 + 16))(v60, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  ArtworkView.shadow.setter();

  [v33 addSubview:*(ObjectType + v33)];
  [v33 addSubview:*&v33[v36]];
  [*&v33[v36] addSubview:*&v33[v38]];
  [v33 insertSubview:*&v33[v42] aboveSubview:*&v33[v36]];
  [v33 addSubview:*&v33[v41]];

  (*(v58 + 8))(v34, v59);
  return v33;
}