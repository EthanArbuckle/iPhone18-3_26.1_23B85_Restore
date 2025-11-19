unint64_t sub_100599A4C()
{
  result = qword_10098CB60;
  if (!qword_10098CB60)
  {
    sub_10002D1A8(&qword_1009839C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098CB60);
  }

  return result;
}

char *sub_100599AB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for CornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView;
  *&v5[v17] = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_cardPlaceholder;
  v19 = *(v14 + 104);
  v42 = enum case for CornerStyle.continuous(_:);
  v41 = v19;
  v19(v16);
  type metadata accessor for RoundedCornerView();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 secondarySystemBackgroundColor];
  [v22 setBackgroundColor:v23];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v40 = *(v14 + 8);
  v40(v16, v13);
  *&v5[v18] = v22;
  v24 = type metadata accessor for TodayCardPlaceholderView();
  v43.receiver = v5;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v30 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView;
  v31 = qword_10096DA38;
  v32 = *&v29[OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView];
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Shadow();
  v34 = sub_1000056A8(v33, qword_1009CFD08);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v12, v34, v33);
  (*(v35 + 56))(v12, 0, 1, v33);
  dispatch thunk of ShadowView.shadow.setter();

  v36 = *&v29[v30];
  v41(v16, v42, v13);
  v37 = v36;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v40(v16, v13);
  [v29 addSubview:*&v29[v30]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_cardPlaceholder]];

  return v29;
}

id sub_100599F88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10059A02C()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_shadowView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for ShadowView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC8AppStore24TodayCardPlaceholderView_cardPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  type metadata accessor for RoundedCornerView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v11];

  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  (*(v3 + 8))(v5, v2);
  *(v1 + v7) = v10;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10059A214()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_1009D2AC0);
  sub_1000056A8(v0, qword_1009D2AC0);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_10059A2B0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098CBA0);
  sub_1000056A8(v4, qword_10098CBA0);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D14A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10059A48C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098CBB8);
  sub_1000056A8(v4, qword_10098CBB8);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1520);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10059A660(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for AutomationSemantics();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v49 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - v17;
  v48 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1490);
  v21 = *(v19 - 8);
  v55 = *(v21 + 16);
  v55(v18, v20, v19);
  v54 = *(v21 + 56);
  v54(v18, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v13 + 104);
  v53 = v13 + 104;
  v23(v15, enum case for DirectionalTextAlignment.none(_:), v12);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  v52 = v12;
  *&v5[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v48 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v19, qword_1009D14A8);
  v55(v18, v26, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v27 = objc_allocWithZone(v24);
  *&v5[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v48 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v19, qword_1009D1520);
  v55(v18, v28, v19);
  v54(v18, 0, 1, v19);
  v23(v15, v22, v52);
  v29 = objc_allocWithZone(v24);
  *&v5[v48] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_wantsCardConsistentMargins] = 1;
  v30 = &v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler];
  v31 = type metadata accessor for TodayCardThreeLineOverlayView();
  *v30 = 0;
  v30[1] = 0;
  v60.receiver = v5;
  v60.super_class = v31;
  v32 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  sub_100005744(0, &qword_100970180);
  v33 = v32;
  v34 = static UIColor.todayCardDefaultBackground.getter();
  [v33 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel;
  v36 = *&v33[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v37 = v36;
  v38 = v49;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v56);
  sub_10003D444(&v58);
  UIView.setAutomationSemantics(_:)();

  v39 = v51;
  v40 = *(v50 + 8);
  v40(v38, v51);
  v41 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel;
  v42 = *&v33[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v43 = v42;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v56);
  sub_10003D444(&v58);
  UIView.setAutomationSemantics(_:)();

  v40(v38, v39);
  v44 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel;
  v45 = *&v33[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v46 = v45;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10003D444(&v56);
  sub_10003D444(&v58);
  UIView.setAutomationSemantics(_:)();

  v40(v38, v39);
  [v33 addSubview:*&v33[v35]];
  [v33 addSubview:*&v33[v41]];
  [v33 addSubview:*&v33[v44]];

  return v33;
}

id sub_10059ADB4()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v26, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v27);
  v1 = 14.0;
  CGSize.subtracting(insets:)();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel];
  v7 = [v6 text];
  if (v7)
  {

    [v6 measurementsWithFitting:v0 in:{v3, v5}];
    v9 = v8;
    v11 = v10;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v6 setFrame:?];
    [v6 jet_languageAwareOutsets];
    v13 = v12;
    v28.origin.x = 20.0;
    v28.origin.y = 14.0;
    v28.size.width = v3;
    v28.size.height = v9;
    v1 = v13 + CGRectGetMaxY(v28) - v11;
  }

  v14 = *&v0[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel];
  v15 = [v14 text];
  if (v15)
  {

    [v14 measurementsWithFitting:v0 in:{v3, v5}];
    v18 = v17;
    if (qword_10096E9B8 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for StaticDimension();
    sub_1000056A8(v19, qword_10098CBA0);
    AnyDimension.topMargin(from:in:)();
    v21 = v1 + v20;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v14 setFrame:?];
    v29.origin.x = 20.0;
    v29.origin.y = v21;
    v29.size.width = v3;
    v29.size.height = v18;
    MaxY = CGRectGetMaxY(v29);
  }

  v22 = *&v0[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel];
  v23 = [v22 text];
  if (v23)
  {

    if ((v0[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded] & 1) == 0)
    {
      [v22 measurementsWithFitting:v0 in:{v3, v5}];
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRectGetMaxY(v30);
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(in:relativeTo:)();
      [v22 setFrame:?];
    }
  }

  v24 = 1.0;
  if (v0[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded])
  {
    v24 = 0.0;
  }

  return [v22 setAlpha:v24];
}

double sub_10059B140(double a1)
{
  v3 = type metadata accessor for LabelPlaceholderCompatibility();
  v48 = *(v3 - 8);
  v49 = v3;
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*&v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel] text];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [*&v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel] text];
  if (v11)
  {
    v12 = v11;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = [*&v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel] text];
  if (v15)
  {
    v16 = v15;
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;
  }

  else
  {
    v46 = 0;
    v18 = 0;
  }

  v47 = v1[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded];
  [v1 layoutMargins];
  v19 = [v1 traitCollection];
  CGSize.subtracting(insets:)();
  if (!v10)
  {
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_23:

    goto LABEL_24;
  }

  v20 = v18;
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  sub_1000056A8(v21, qword_1009D1490);
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v23 = type metadata accessor for Feature();
  v51 = v23;
  v52 = sub_10059C0E8(&qword_100972E50, &type metadata accessor for Feature);
  v24 = sub_1000056E0(v50);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v25 = v22;
  isFeatureEnabled(_:)();
  sub_100007000(v50);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.measurements(fitting:with:)();

  (*(v48 + 8))(v6, v49);
  v18 = v20;
  if (!v14)
  {
    goto LABEL_22;
  }

LABEL_14:
  v45 = v18;
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for FontUseCase();
  sub_1000056A8(v26, qword_1009D14A8);
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v28 = type metadata accessor for Feature();
  v51 = v28;
  v52 = sub_10059C0E8(&qword_100972E50, &type metadata accessor for Feature);
  v29 = sub_1000056E0(v50);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  isFeatureEnabled(_:)();
  sub_100007000(v50);

  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.measurements(fitting:with:)();
  if (qword_10096E9B8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for StaticDimension();
  sub_1000056A8(v31, qword_10098CBA0);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007B0B70;
  *(v32 + 32) = v19;
  v33 = v19;
  v34 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v48 + 8))(v6, v49);
  if (!v45)
  {
    goto LABEL_23;
  }

LABEL_19:
  if (v47)
  {

LABEL_24:

    return a1;
  }

  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for FontUseCase();
  sub_1000056A8(v35, qword_1009D1520);
  v36 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v37 = type metadata accessor for Feature();
  v51 = v37;
  v52 = sub_10059C0E8(&qword_100972E50, &type metadata accessor for Feature);
  v38 = sub_1000056E0(v50);
  (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
  v39 = v36;
  isFeatureEnabled(_:)();
  sub_100007000(v50);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.measurements(fitting:with:)();
  if (qword_10096E9C0 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for StaticDimension();
  sub_1000056A8(v40, qword_10098CBB8);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1007B0B70;
  *(v41 + 32) = v19;
  v42 = v19;
  v43 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  (*(v48 + 8))(v6, v49);
  return a1;
}

id sub_10059BA50(void *a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E4B8 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_1009D1D20);
    v7 = v1;
    Conditional.evaluate(with:)();

    UILabel.alignment.setter();
    if (qword_10096E4C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D1D50);
    v8 = v7;
    Conditional.evaluate(with:)();

    UILabel.alignment.setter();
    if (qword_10096E9B0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v6, qword_1009D2AC0);
    v9 = v8;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

id sub_10059BCE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardThreeLineOverlayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10059BDE0(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4);
}

id sub_10059BE00()
{
  [*(v0 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel) setText:0];
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel);

  return [v1 setText:0];
}

id sub_10059BEBC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v5 = v4;
  v6 = v4[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory];
  v4[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory] = a4;
  if (a4 == 7)
  {
    if (v6 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v4 setNeedsLayout];
    goto LABEL_6;
  }

  if (v6 == 7)
  {
    goto LABEL_5;
  }

  switch(a4)
  {
    case 6u:
      if (v6 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v6 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v6 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v6 != a4 || (v6 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v7 = *&v4[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel];
  TodayCardThreeLineOverlay.heading.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = TodayCard.Style.cardHeadingTextColor.getter();
  [v7 setTextColor:v10];

  v11 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel];
  TodayCardThreeLineOverlay.title.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  v14 = TodayCard.Style.cardTitleTextColor.getter();
  [v11 setTextColor:v14];

  v15 = *&v5[OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel];
  TodayCardThreeLineOverlay.description.getter();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v15 setText:v17];

  v18 = TodayCard.Style.cardHeadingTextColor.getter();
  [v15 setTextColor:v18];

  return [v5 setNeedsLayout];
}

uint64_t sub_10059C0E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10059C130()
{
  v1 = v0;
  v25 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v21 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1490);
  v10 = *(v8 - 8);
  v23 = *(v10 + 16);
  v23(v7, v9, v8);
  v22 = *(v10 + 56);
  v22(v7, 0, 1, v8);
  v11 = enum case for DirectionalTextAlignment.none(_:);
  v12 = *(v2 + 104);
  v24 = v2 + 104;
  v12(v4, enum case for DirectionalTextAlignment.none(_:), v25);
  v13 = type metadata accessor for DynamicTypeLabel();
  v14 = objc_allocWithZone(v13);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v21 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v8, qword_1009D14A8);
  v23(v7, v15, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v16 = objc_allocWithZone(v13);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v21 = OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_descriptionLabel;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v8, qword_1009D1520);
  v23(v7, v17, v8);
  v22(v7, 0, 1, v8);
  v12(v4, v11, v25);
  v18 = objc_allocWithZone(v13);
  *(v1 + v21) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_wantsCardConsistentMargins) = 1;
  v19 = (v1 + OBJC_IVAR____TtC8AppStore29TodayCardThreeLineOverlayView_clickActionHandler);
  *v19 = 0;
  v19[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10059C658@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002849C(&qword_100975330);
  __chkstk_darwin(v3);
  v4 = sub_10002849C(&qword_10098CD40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_10059D9D0(v1 + v10, v9);
  v11 = sub_10002849C(&qword_100977078);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_10059DA40(v9);
  type metadata accessor for ArtworkView();
  ViewRecycler.init()();
  sub_10017D010();
  ReusePool.init(recycler:limit:)();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_10059D960(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_10059C8B0()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10098CD40);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10002849C(&qword_100977078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < *&v1[v24])
    {
LABEL_8:
      sub_10059C658(v8);
      ReusePool.dequeue(or:)();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_10059D960(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_100549964(v19);
          v19 = result;
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_10059C658(v8);
        ReusePool.recycle(_:)();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_10059D960(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_10059CCC0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for HorizontalStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  v9 = *(v2 + OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_1000056E0(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      type metadata accessor for ArtworkView();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_10059D100(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = _CocoaArrayWrapper.subscript.getter();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_1000056E0(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = type metadata accessor for Margins();
  a1[4] = &protocol witness table for Margins;
  sub_1000056E0(a1);
  Margins.init(insets:child:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10059D100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  type metadata accessor for ArtworkView();
  LayoutView.withMeasurements(representing:)();
  sub_10002A400(v9, v9[3]);
  Measurable.placeable.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  HorizontalStack.add(_:with:)();

  sub_100007000(v8);
  return sub_100007000(v9);
}

id sub_10059D2A8@<X0>(void *a1@<X8>)
{
  type metadata accessor for ArtworkView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10059D2E8(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Artwork.Crop();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v31 = *(v2 + v9);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v20[1] = v12;
    v21 = (v6 + 8);
    v13 = 4;
    v24 = v31 & 0xC000000000000001;
    v25 = v31 >> 62;
    v22 = v10;
    v23 = a1;
    do
    {
      v6 = v13 - 4;
      if (v27)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if (v25)
      {
        if (v6 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_25:
        }
      }

      else if (v6 == *(v11 + 16))
      {
        goto LABEL_25;
      }

      if (v24)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v31 + 8 * v13);
      }

      v16 = v15;
      Artwork.crop.getter();
      v17 = Artwork.Crop.preferredContentMode.getter();
      (*v21)(v8, v28);
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      v18 = v16;
      [v18 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      [v18 setContentMode:v17];

      type metadata accessor for ArtworkView();
      sub_10009A098();
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      ++v13;
      v14 = a1 == v22;
      a1 = v23;
    }

    while (!v14);
  }
}

uint64_t type metadata accessor for CarouselItemLockupCollectionView()
{
  result = qword_10098CD28;
  if (!qword_10098CD28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059D748()
{
  sub_10059D7F8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10059D7F8()
{
  if (!qword_10098CD38)
  {
    sub_10002D1A8(&qword_100977078);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098CD38);
    }
  }
}

double sub_10059D85C()
{
  sub_10059CCC0(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

uint64_t sub_10059D904()
{
  if (*(v0 + 16) >= 1)
  {
    return HorizontalStack.Properties.leadingSpacing.setter();
  }

  return result;
}

uint64_t sub_10059D960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098CD40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059D9D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098CD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10059DA40(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098CD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10059DAA8(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for StringPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 56) == v1[7] && *(v2 + 64) == v1[8];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v4 = static PreferenceKey.== infix(_:_:)();

  return v4 & 1;
}

uint64_t sub_10059DBB0()
{
  AnyHashable.hash(into:)();

  return String.hash(into:)();
}

uint64_t sub_10059DBFC()
{

  v1 = OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100977550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10059DC88()
{
  sub_10003D614(v0 + 16);

  v1 = OBJC_IVAR____TtC8AppStore29StringPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100977550);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StringPreferencesDebugSetting()
{
  result = qword_10098CD70;
  if (!qword_10098CD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10059DDBC()
{
  sub_10059DE58();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10059DE58()
{
  if (!qword_10098CD80)
  {
    v0 = type metadata accessor for PreferenceKey();
    if (!v1)
    {
      atomic_store(v0, &qword_10098CD80);
    }
  }
}

unint64_t sub_10059DF60()
{
  v0 = UITraitCollection.prefersRightToLeftLayouts.getter();
  v1 = AchievementSummary.totalAchievements.getter();
  v2._object = 0x800000010081AD70;
  v2._countAndFlagsBits = 0xD000000000000034;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = localizedStringWithCount(_:count:comment:)(v2, v1, v3);
  if (v0)
  {
    v5 = 1554743522;
  }

  else
  {
    v5 = 799703266;
  }

  v8 = v5 & 0xFFFF0000FFFFFFFFLL | 0x2000000000;
  String.append(_:)(v4);

  v6._countAndFlagsBits = 11305186;
  v6._object = 0xA300000000000000;
  String.append(_:)(v6);

  return v8;
}

double sub_10059E038(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v90 = type metadata accessor for LabelPlaceholderCompatibility();
  v6 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = v74 - v9;
  __chkstk_darwin(v10);
  v84 = v74 - v11;
  v82 = type metadata accessor for AchievementGroupView.Size();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v83 = v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AchievementSummaryLayout();
  v89 = *(v13 - 8);
  __chkstk_darwin(v13);
  v87 = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v93 = v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v94 = v74 - v19;
  v20 = type metadata accessor for Achievement();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v80 = v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v74 - v24;
  __chkstk_darwin(v26);
  v28 = v74 - v27;
  v86 = a1;
  v29 = AchievementSummary.achievements.getter();
  if (*(v29 + 16))
  {
    v76 = v13;
    v77 = v6;
    v30 = a4;
    v31 = *(v21 + 16);
    v31(v25, v29 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v20);

    v78 = v21;
    v32 = *(v21 + 32);
    v91 = v28;
    v92 = v20;
    v32(v28, v25, v20);
    if (qword_10096DA00 != -1)
    {
      swift_once();
    }

    v33 = sub_1000056A8(v15, qword_1009CFC78);
    v79 = v16;
    v34 = *(v16 + 16);
    v35 = v94;
    v34(v94, v33, v15);
    v36 = [a4 traitCollection];
    v37 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v37)
    {
      v74[0] = v15;
      v34(v93, v35, v15);
      v31(v80, v91, v92);
      AchievementSummary.totalAchievements.getter();
      v38 = [a4 traitCollection];
      v39 = UITraitCollection.isSizeClassCompact.getter();

      v40 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v39 & 1) == 0)
      {
        v40 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v81 + 104))(v83, *v40, v82);
      v41 = type metadata accessor for AchievementGroupView();
      v42 = objc_allocWithZone(v41);
      v43 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v100[8] = v41;
      v100[9] = &protocol witness table for UIView;
      v100[5] = v43;
      v44 = AchievementSummary.completedAchievements.getter();
      v45._object = 0x80000001008005F0;
      v45._countAndFlagsBits = 0xD000000000000032;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      localizedStringWithCount(_:count:comment:)(v45, v44, v46);
      v47 = sub_1000367E8();
      if (qword_10096E040 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for FontUseCase();
      sub_1000056A8(v83, qword_1009D1040);
      v82 = v47;
      static UIFont.preferredFont(forUseWith:in:)();
      v48 = type metadata accessor for Feature();
      v100[3] = v48;
      v81 = sub_10059F234(&qword_100972E50, &type metadata accessor for Feature);
      v100[4] = v81;
      v49 = sub_1000056E0(v100);
      v50 = *(v48 - 8);
      v51 = *(v50 + 104);
      LODWORD(v80) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v75 = v51;
      v74[1] = v50 + 104;
      v51(v49);
      isFeatureEnabled(_:)();
      sub_100007000(v100);
      v52 = v84;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v53 = *(v77 + 8);
      v54 = v90;
      v53(v52, v90);
      v55 = [v30 traitCollection];
      sub_10059DF60();

      if (qword_10096E048 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v83, qword_1009D1058);
      static UIFont.preferredFont(forUseWith:in:)();
      v99[3] = v48;
      v99[4] = v81;
      v56 = sub_1000056E0(v99);
      v75(v56, v80, v48);
      isFeatureEnabled(_:)();
      sub_100007000(v99);
      v57 = v85;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v53(v57, v54);
      AchievementSummary.completedText.getter();
      v58 = v74[0];
      if (qword_10096E050 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v83, qword_1009D1070);
      static UIFont.preferredFont(forUseWith:in:)();
      v98[3] = v48;
      v98[4] = v81;
      v59 = sub_1000056E0(v98);
      v75(v59, v80, v48);
      isFeatureEnabled(_:)();
      sub_100007000(v98);
      v60 = v88;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v53(v60, v54);
      v97 = 0;
      v96 = 0u;
      v95 = 0u;
      v61 = v87;
      AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
      sub_10059F234(&unk_10098CEA0, &type metadata accessor for AchievementSummaryLayout);
      v62 = v76;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v64 = v63;
      (*(v89 + 8))(v61, v62);
      (*(v79 + 8))(v94, v58);
      (*(v78 + 8))(v91, v92);
    }

    else
    {
      v65 = v15;
      [v30 pageContainerSize];
      if (v67 < v66)
      {
        JUScreenClassGetLandscapeWidth();
      }

      v68 = v79;
      v69 = v92;
      v70 = v91;
      v71 = v94;
      static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)();
      v64 = v72;
      (*(v68 + 8))(v71, v65);
      (*(v78 + 8))(v70, v69);
    }
  }

  else
  {

    return 0.0;
  }

  return v64;
}

void sub_10059EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10002849C(&unk_100973220);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v54 = &v46 - v9;
  v49 = type metadata accessor for AchievementGroupView.Size();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Achievement();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  __chkstk_darwin(v17);
  v46 = &v46 - v18;
  v19 = *(v5 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel);
  v20 = AchievementSummary.completedAchievements.getter();
  v21._object = 0x80000001008005F0;
  v21._countAndFlagsBits = 0xD000000000000032;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v21, v20, v22);
  v23 = String._bridgeToObjectiveC()();

  [v19 setText:v23];

  v24 = *(v5 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel);
  v51 = a5;
  v25 = [a5 traitCollection];
  sub_10059DF60();

  v26 = String._bridgeToObjectiveC()();

  [v24 setText:v26];

  v27 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel);
  AchievementSummary.completedText.getter();
  v28 = String._bridgeToObjectiveC()();

  [v27 setText:v28];

  v29 = AchievementSummary.achievements.getter();
  if (*(v29 + 16))
  {
    v30 = v48;
    v31 = *(v48 + 16);
    v31(v16, v29 + ((*(v48 + 80) + 32) & ~*(v48 + 80)), v11);

    v32 = v46;
    (*(v30 + 32))(v46, v16, v11);
    v31(v13, v32, v11);
    AchievementSummary.totalAchievements.getter();
    v33 = [v51 traitCollection];
    LOBYTE(v31) = UITraitCollection.isSizeClassCompact.getter();

    v34 = &enum case for AchievementGroupView.Size.phone(_:);
    if ((v31 & 1) == 0)
    {
      v34 = &enum case for AchievementGroupView.Size.pad(_:);
    }

    (*(v47 + 104))(v50, *v34, v49);
    v35 = objc_allocWithZone(type metadata accessor for AchievementGroupView());
    v36 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
    v37 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
    v38 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v38)
    {
      [v38 removeFromSuperview];
      v39 = *(v6 + v37);
    }

    else
    {
      v39 = 0;
    }

    *(v6 + v37) = v36;
    v42 = v36;

    [*(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView) addSubview:v42];
    if (AchievementSummary.totalAchievements.getter() < 2)
    {
      if (qword_10096D9F0 != -1)
      {
        swift_once();
      }

      v43 = qword_1009CFC48;
    }

    else
    {
      if (qword_10096D9F8 != -1)
      {
        swift_once();
      }

      v43 = qword_1009CFC60;
    }

    v44 = v53;
    v45 = sub_1000056A8(v53, v43);
    (*(v52 + 16))(v54, v45, v44);
    swift_beginAccess();
    AchievementSummaryLayout.Metrics.achievementStackInsets.setter();
    swift_endAccess();
    (*(v30 + 8))(v32, v11);
  }

  else
  {

    v40 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
    v41 = *(v6 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
    if (v41)
    {
      [v41 removeFromSuperview];
      v41 = *(v6 + v40);
    }

    *(v6 + v40) = 0;
  }
}

uint64_t sub_10059F234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10059F27C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_10098CEB0);
  v1 = sub_1000056A8(v0, qword_10098CEB0);
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D09C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10059F344(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v47 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v17 = type metadata accessor for FontUseCase();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] = 1;
  v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 3;
  v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString] = 0;
  v21 = &v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  *v21 = 0;
  v21[1] = 0;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v17, qword_1009D09C8);
  type metadata accessor for FadeInDynamicTypeButton();
  v23 = *(v18 + 16);
  v23(v20, v22, v17);
  v24 = a1;
  v25 = sub_10075332C(v20, v24);

  v26 = v25;
  v27._countAndFlagsBits = 0x4D5F4E4F49544341;
  v27._object = 0xEB0000000045524FLL;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  localizedString(_:comment:)(v27, v28);
  v29 = String._bridgeToObjectiveC()();

  [v26 setTitle:v29 forState:0];

  [v26 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v26 setAdjustsImageWhenHighlighted:0];

  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] = v26;
  type metadata accessor for DynamicTypeLabel();
  v30 = DynamicTypeLabel.__allocating_init(frame:)();
  *&v6[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] = v30;
  v31 = v30;
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v32 = type metadata accessor for ExpandableTextView();
  v48.receiver = v6;
  v48.super_class = v32;
  v33 = objc_msgSendSuper2(&v48, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v37 setUserInteractionEnabled:1];
  [v37 setBackgroundColor:v24];
  v38 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  [*&v37[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setNumberOfLines:*&v37[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines]];
  [*&v37[v38] setLineBreakMode:0];
  [*&v37[v38] setTextAlignment:4];
  if (qword_10096E9C8 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v17, qword_10098CEB0);
  v23(v16, v39, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100031660(v16, v47, &qword_100972ED0);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  sub_10002B894(v16, &qword_100972ED0);
  [v37 addSubview:*&v37[v38]];
  v40 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton;
  v41 = [*&v37[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] traitCollection];
  v42 = [v41 preferredContentSizeCategory];

  static UIContentSizeCategory.<= infix(_:_:)();
  v43 = *&v37[v40];
  [v43 addTarget:v37 action:"moreFrom:" forControlEvents:64];

  v44 = *&v37[v40];
  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

  [v37 addSubview:*&v37[v40]];
  return v37;
}

void sub_10059FAC0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
  v7 = [v6 text];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

LABEL_11:
    v14 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      type metadata accessor for LanguageAwareString();

      static LanguageAwareString.alwaysGenerateAttributedString.getter();
      static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
      v15 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)();
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (a2)
  {
    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_24:

        return;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    return;
  }

  v15 = 0;
  v16 = 1;
LABEL_19:
  v17 = *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
  *(v3 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString) = v15;
  v18 = v15;

  if (v15)
  {
    LanguageAwareString.string.getter();

LABEL_27:
    v19 = String._bridgeToObjectiveC()();

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:
  [v6 setText:v19];

  sub_1005A0320();
}

void sub_10059FCD8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
  v5 = [v4 attributedText];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v8 = a1;
LABEL_8:
    v17 = v8;
    if ([v8 length])
    {
      v9 = type metadata accessor for LanguageAwareString();
      v10 = v17;
      static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
      v11 = objc_allocWithZone(v9);
      v12 = LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
LABEL_11:
      v13 = *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
      *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString) = v12;
      v14 = v12;

      if (v12)
      {
        v15 = dispatch thunk of LanguageAwareString.attributedString.getter();

        v18 = a1;
      }

      else
      {
        v18 = a1;
        v15 = v18;
      }

      [v4 setAttributedText:v15];

      sub_1005A0320();
      v8 = v18;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  sub_100005744(0, &unk_100984040);
  v16 = a1;
  v7 = static NSObject.== infix(_:_:)();

  v8 = v16;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
}

id sub_10059FFC8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ExpandableTextView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  [v10 setFrame:{v3, v5, CGRectGetWidth(v19), v12}];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];
  result = [v13 isHidden];
  if ((result & 1) == 0)
  {
    result = [v10 numberOfLines];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = *&v1[OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString];
      if (v15)
      {
        v16 = v15;
        [v10 numberOfLines];
        [v10 lineBreakMode];
        v17 = dispatch thunk of LanguageAwareString.writingDirectionOfLine(_:maximumLinesShown:withWidth:lineBreakMode:cacheLayoutInfo:)();
      }

      else
      {
        v17 = 0;
      }

      [v13 sizeThatFits:{v7, v9}];
      v20.origin.x = v3;
      v20.origin.y = v5;
      v20.size.width = v7;
      v20.size.height = v9;
      CGRectGetMaxX(v20);
      v21.origin.x = v3;
      v21.origin.y = v5;
      v21.size.width = v7;
      v21.size.height = v9;
      CGRectGetMaxY(v21);
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRect.withLayoutDirection(_:relativeTo:)();
      [v13 setFrame:?];
      *(v13 + qword_100995BC8) = v17 == 1;
      return sub_100752EB4();
    }
  }

  return result;
}

id sub_1005A0320()
{
  v7 = sub_10002849C(&qword_100972ED0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v47 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] attributedText];
  if (v11)
  {
    if (v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] == 1 && v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
    {
      if (v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] == 1)
      {
        v12 = v11;
        [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setHidden:0];
LABEL_23:

        return [v0 setNeedsLayout];
      }

      v12 = v11;
      v14 = [v11 length];
      v15 = *&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];
      if (!v14)
      {
        [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setHidden:1];
        goto LABEL_23;
      }

      v16 = *&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
      type metadata accessor for ExpandableTextView();
      LayoutMarginsAware<>.layoutFrame.getter();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v4 = v17;
        v3 = v18;
        v21 = fabs(v17);
        if (v17 > 1.79769313e308)
        {
          v21 = 1.79769313e308;
        }

        v22 = 0.0;
        if (v21 == 0.0)
        {
          goto LABEL_22;
        }

        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v2 = v12;
        v25 = [v0 traitCollection];
        v26 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
        v27 = objc_allocWithZone(v26);
        v28 = &v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
        *v28 = UIEdgeInsetsZero.top;
        v28[1] = left;
        v28[2] = bottom;
        v28[3] = right;
        *&v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = v20;
        v29 = &v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
        *v29 = v4;
        *(v29 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v25;
        *&v27[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v2;
        v48.receiver = v27;
        v48.super_class = v26;
        v1 = objc_msgSendSuper2(&v48, "init");
        if (qword_10096E9D0 == -1)
        {
LABEL_15:
          v30 = qword_10098CEC8;
          v31 = [qword_10098CEC8 objectForKey:v1];
          if (v31)
          {
            v32 = v31;

            v22 = *&v32[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements + 8];
          }

          else
          {
            v33 = qword_10096E9C8;
            v32 = v2;
            if (v33 != -1)
            {
              swift_once();
            }

            v34 = type metadata accessor for FontUseCase();
            v35 = sub_1000056A8(v34, qword_10098CEB0);
            v36 = *(v34 - 8);
            (*(v36 + 16))(v10, v35, v34);
            (*(v36 + 56))(v10, 0, 1, v34);
            static TextMeasurable.defaultTextAlignment.getter();
            static TextMeasurable.defaultLineBreakMode.getter();
            static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
            v38 = v37;
            v40 = v39;
            v42 = v41;

            sub_10002B894(v10, &qword_100972ED0);
            v22 = top + bottom + v38;
            v43 = type metadata accessor for ExpandableTextView.CacheValue();
            v44 = objc_allocWithZone(v43);
            v45 = &v44[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
            *v45 = v4;
            v45[1] = v22;
            *(v45 + 2) = v40;
            *(v45 + 3) = v42;
            v47.receiver = v44;
            v47.super_class = v43;
            v46 = objc_msgSendSuper2(&v47, "init");
            [v30 setObject:v46 forKey:v1];
          }

LABEL_22:
          [v15 setHidden:v3 >= v22];
          goto LABEL_23;
        }
      }

      swift_once();
      goto LABEL_15;
    }
  }

  [*&v0[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setHidden:1];
  return [v0 setNeedsLayout];
}

id sub_1005A0904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandableTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id (*sub_1005A0A20(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) numberOfLines];
  return sub_1005A0A80;
}

id (*sub_1005A0AC8(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) lineBreakMode];
  return sub_1005A0B28;
}

id sub_1005A0B4C()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) font];

  return v1;
}

void sub_1005A0B90(void *a1)
{
  [*(*v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setFont:a1];
}

void (*sub_1005A0BE4(void *a1))(id *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
  a1[1] = v3;
  *a1 = [v3 font];
  return sub_1005A0C4C;
}

void sub_1005A0C4C(id *a1)
{
  v1 = *a1;
  [a1[1] setFont:?];
}

uint64_t sub_1005A0CFC(uint64_t a1)
{
  swift_getObjectType();
  sub_100031660(a1, v11, &unk_1009711D0);
  if (!v12)
  {
    sub_10002B894(v11, &unk_1009711D0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins);
  v4 = &v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
  if (*(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins] || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || *(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] || *(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize] || *(v1 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize + 8) != *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize + 8] || (sub_100005744(0, &qword_100978360), v5 = *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection], v6 = static NSObject.== infix(_:_:)(), v5, (v6 & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = *&v10[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText];
  v8 = static NSObject.== infix(_:_:)();

  return v8 & 1;
}

Swift::Int sub_1005A0F1C()
{
  Hasher.init()();
  UIEdgeInsets.hash(into:)();
  Hasher._combine(_:)(*(v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines));
  v1 = v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize;
  v2 = *(v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  return Hasher.finalize()();
}

uint64_t sub_1005A109C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_100031660(a1, v17, &unk_1009711D0);
  v4 = v18;
  if (v18)
  {
    v5 = sub_10002A400(v17, v18);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100007000(v17);
  }

  else
  {
    v10 = 0;
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "isEqual:", v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_100031660(a1, v17, &unk_1009711D0);
    if (v18)
    {
      if (swift_dynamicCast())
      {
        v12 = v15[1];
        v13 = JUMeasurementsEqual();

        return v13;
      }
    }

    else
    {
      sub_10002B894(v17, &unk_1009711D0);
    }
  }

  return 0;
}

uint64_t sub_1005A12C0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10002B894(v10, &unk_1009711D0);
  return v8 & 1;
}

Swift::Int sub_1005A137C()
{
  Hasher.init()();
  v1 = (v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements);
  v2 = *(v0 + OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  Hasher._combine(_:)(*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  Hasher._combine(_:)(*&v5);
  return Hasher.finalize()();
}

id sub_1005A147C()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_10098CEC8 = result;
  return result;
}

void sub_1005A14B0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
  if (v5)
  {
    v6 = v5;
    v7 = LanguageAwareString.string.getter();
    v9 = v8;

    if (!v3)
    {
      if (!v9)
      {
        return;
      }

      v3 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
    v7 = 0;
  }

  v10 = v3;
  v11 = LanguageAwareString.string.getter();
  v13 = v12;

  if (!v9)
  {
    if (!v13)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v13)
  {
LABEL_17:

LABEL_18:
    v16 = v10;
    v17 = dispatch thunk of LanguageAwareString.isEmpty.getter();

    if (v17)
    {
      v3 = 0;
    }

    else
    {
      v18 = v16;
    }

LABEL_21:
    v19 = *(v2 + v4);
    *(v2 + v4) = v3;
    v20 = v3;

    v21 = *(v2 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel);
    if (v3)
    {
      v22 = dispatch thunk of LanguageAwareString.attributedString.getter();
    }

    else
    {
      v22 = 0;
    }

    [v21 setAttributedText:v22];

    sub_1005A0320();
    return;
  }

  if (v7 != v11 || v9 != v13)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v15)
    {
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_1005A1704()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(index:)();
  IndexPath.appending(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005A17E8()
{
  v0 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v0 - 8);
  AnyHashable.init<A>(_:)();
  StatePath.init(component:)();

  sub_10002849C(&unk_100980500);
  sub_100097060(&qword_10097DB00, &unk_100980500);
  return WritableStateLens.init<A>(contentsOf:in:)();
}

void sub_1005A196C(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 1)
  {
    IndexPath.init(item:section:)();
    dispatch thunk of ShelfPresenter.model(at:)();
    (*(v4 + 8))(v6, v3);
    sub_10002849C(&qword_100973D50);
    sub_10002849C(&qword_10097C530);
    if (swift_dynamicCast())
    {
      sub_100005A38(v8, v10);
      v7 = v10[1];
      *a1 = v10[0];
      *(a1 + 16) = v7;
      *(a1 + 32) = v11;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_1005A25F8(v8);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

uint64_t sub_1005A1B78()
{
  sub_1005A196C(&v2);
  if (v3)
  {
    sub_100005A38(&v2, v4);
    sub_10002A400(v4, v4[3]);
    v0 = dispatch thunk of ComponentModelContainment.numberOfItems.getter();
    sub_100007000(v4);
    return v0;
  }

  else
  {
    sub_1005A25F8(&v2);
    return dispatch thunk of ShelfPresenter.numberOfRows(for:)();
  }
}

uint64_t sub_1005A1C38()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005A196C(&v5);
  if (v6)
  {
    sub_100005A38(&v5, v7);
    sub_10002A400(v7, v7[3]);
    dispatch thunk of ComponentModelContainment.model(at:)();
    return sub_100007000(v7);
  }

  else
  {
    sub_1005A25F8(&v5);
    IndexPath.init(item:section:)();
    dispatch thunk of ShelfPresenter.model(at:)();
    return (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_1005A1DFC(uint64_t a1, void (*a2)(char *, uint64_t *, void *, uint64_t, uint64_t))
{
  v4 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  IndexPath.init(item:section:)();
  (*(v8 + 16))(v10, v13, v7);
  StatePath<A>.init(_:)();
  v18 = *(v2 + 40);

  v14 = sub_10002849C(&unk_100980500);
  v15 = sub_100097060(&qword_10097DB00, &unk_100980500);
  a2(v6, &v18, &type metadata for Never, v14, v15);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1005A2014(uint64_t a1, void (*a2)(char *, double **, void *, uint64_t, uint64_t))
{
  v4 = sub_10002849C(&qword_100985F30);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  sub_1005A1704();
  (*(v8 + 16))(v10, v13, v7);
  sub_1005A25A0();
  v14 = dispatch thunk of Sequence._copyToContiguousArray()();
  v15 = sub_1002A62D8(v14);

  v20 = v15;
  sub_10002849C(&qword_10098D040);
  sub_100097060(&qword_10098D048, &qword_10098D040);
  StatePath.init<A>(components:)();
  v20 = *(v2 + 40);

  v16 = sub_10002849C(&unk_100980500);
  v17 = sub_100097060(&qword_10097DB00, &unk_100980500);
  a2(v6, &v20, &type metadata for Never, v16, v17);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_1005A229C()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  if (*(v0 + 32) == 1)
  {
    dispatch thunk of ShelfPresenter.didSelectNestedItem(at:)();
  }

  else
  {
    dispatch thunk of ShelfPresenter.didSelectItem(at:)();
  }

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1005A2414()
{
  swift_unknownObjectRelease();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1005A245C()
{
  sub_1005A2414();

  return swift_deallocClassInstance();
}

unint64_t sub_1005A25A0()
{
  result = qword_10098D038;
  if (!qword_10098D038)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D038);
  }

  return result;
}

uint64_t sub_1005A25F8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097C518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005A2660(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  *(v14 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 64) = a5;
  *(v14 + 72) = a6;
  *(v14 + 80) = a7;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_1005A2704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v39 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v38 - v17);
  v40 = sub_10002849C(&unk_1009732B0);
  v19 = *(v40 - 8);
  *&v20 = __chkstk_darwin(v40).n128_u64[0];
  v22 = &v38 - v21;
  v23 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = v23;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  SmallBreakout.details.getter();
  v24 = BreakoutDetails.badgeColorOverride.getter();

  if (v24)
  {
    v38 = a1;
    if (qword_10096D008 != -1)
    {
      swift_once();
    }

    v25 = sub_1000056A8(v13, qword_1009CDEA0);
    sub_1000C2608(v25, v18);
    v26 = *v18;
    v27 = v24;

    *v18 = v24;
    sub_1000C2608(v18, v15);
    sub_10002849C(&qword_100973F50);
    Conditional<>.init(value:)();

    sub_1000C266C(v18);
  }

  else
  {
    if (qword_10096D008 != -1)
    {
      swift_once();
    }

    v28 = sub_1000056A8(v13, qword_1009CDEA0);
    sub_1000C2608(v28, v18);
    sub_10002849C(&qword_100973F50);
    Conditional<>.init(value:)();
  }

  v29 = SmallBreakout.details.getter();
  v30 = v40;
  (*(v19 + 16))(v12, v22, v40);
  (*(v19 + 56))(v12, 0, 1, v30);
  sub_1003A9938(v29, v12, v39);

  sub_1005A2DA8(v12);
  v31 = SmallBreakout.backgroundColor.getter();
  if (!v31)
  {
    v31 = [objc_opt_self() clearColor];
  }

  v32 = v31;
  v33 = ObjectType;
  v43.receiver = v7;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, "setBackgroundColor:", v31, v38);
  v34 = *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
  v42.receiver = v7;
  v42.super_class = v33;
  v35 = v34;
  v36 = objc_msgSendSuper2(&v42, "backgroundColor");
  ArtworkView.backgroundColor.setter();

  [v7 setNeedsLayout];
  return (*(v19 + 8))(v22, v30);
}

uint64_t sub_1005A2B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = type metadata accessor for SmallBreakoutLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100128864(a5, v9);
  type metadata accessor for SmallBreakoutLayout();
  sub_1005A3044(&qword_10098D0B8, &type metadata accessor for SmallBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  (*(v7 + 8))(v9, v6);
  v10 = [objc_opt_self() fractionalWidthDimension:1.0];
  v11 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v11;
}

uint64_t sub_1005A2DA8(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100975ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005A2E10(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v4 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SmallBreakoutLayout();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100128864(a3, v6);
  swift_getObjectType();
  sub_100129BEC();
  v11 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v12 = LayoutViewPlaceholder.init(representing:)();
  v17[8] = v11;
  v17[9] = &protocol witness table for LayoutViewPlaceholder;
  v17[5] = v12;
  swift_allocObject();
  v13 = LayoutViewPlaceholder.init(representing:)();
  v17[3] = v11;
  v17[4] = &protocol witness table for LayoutViewPlaceholder;
  v17[0] = v13;
  SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
  sub_1005A3044(&qword_10098D0B0, &type metadata accessor for SmallBreakoutLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v15 = v14;
  (*(v8 + 8))(v10, v7);
  return v15;
}

uint64_t sub_1005A3044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A308C()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_1009D2B08 = type metadata accessor for OSLogger();
  unk_1009D2B10 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_1009D2AF0);
  return OSLogger.init(subsystem:category:)();
}

char *sub_1005A31D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridPresenter] = 0;
  v14 = &v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_objectGraph] = a4;
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_requestInfo] = a1;
  v15 = &v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_referrer];
  *v15 = a2;
  *(v15 + 1) = a3;
  type metadata accessor for ArtworkLoader();

  BaseObjectGraph.inject<A>(_:)();
  *&v5[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_artworkLoader] = v41;
  MarketingItemRequestInfo.serviceType.getter();
  v16 = String._bridgeToObjectiveC()();

  MarketingItemRequestInfo.placement.getter();
  v17 = String._bridgeToObjectiveC()();

  type metadata accessor for ASKBagContract();
  BaseObjectGraph.inject<A>(_:)();
  v18 = ASKBagContract.amsBag.getter();

  v40.receiver = v5;
  v40.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v40, "initWithServiceType:placement:bag:", v16, v17, v18);
  swift_unknownObjectRelease();

  v20 = v19;
  MarketingItemRequestInfo.seed.getter();
  v21 = type metadata accessor for AdamId();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    sub_10002B894(v13, &qword_100972A80);
    v23 = 0;
  }

  else
  {
    AdamId.stringValue.getter();
    (*(v22 + 8))(v13, v21);
    v23 = String._bridgeToObjectiveC()();
  }

  [v20 setSeed:v23];

  MarketingItemRequestInfo.offerHints.getter();
  if (v24)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  [v20 setOfferHints:v25];

  v26 = v20;
  v27 = MarketingItemRequestInfo.clientOptions.getter();
  if (v27)
  {
    sub_1006491F4(v27);

    v28.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v28.super.isa = 0;
  }

  [v26 setClientOptions:v28.super.isa];

  if (MarketingItemRequestInfo.metricsOverlay.getter())
  {
    v29.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v29.super.isa = 0;
  }

  [v26 setMetricsOverlay:v29.super.isa];

  [v26 setAnonymousMetrics:1];
  static ASKBootstrapV2.appStoreTokenServiceClient.getter();
  v30 = String._bridgeToObjectiveC()();

  [v26 setMediaClientIdentifier:v30];

  sub_100412FA8();
  v31 = v26;
  BaseObjectGraph.inject<A>(_:)();
  v32 = v41;
  v33 = [v41 ams_activeiTunesAccount];

  [v31 setAccount:v33];
  type metadata accessor for ArcadeSubscriptionManager();
  BaseObjectGraph.inject<A>(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v34 = objc_allocWithZone(type metadata accessor for DynamicViewControllerDelegate());
  v35 = DynamicViewControllerDelegate.init(subscriptionManager:purchaseSuccessHandler:purchaseFailureHandler:carrierLinkSuccessHandler:carrierLinkFailureHandler:didDismissHandler:contentViewConstructor:)();

  v36 = OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate;
  *&v31[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate] = v35;
  swift_unknownObjectRelease();
  [v31 setDelegate:*&v31[v36]];
  type metadata accessor for AutoPlayVideoSettingsManager();
  v37 = static AutoPlayVideoSettingsManager.shared.getter();
  [v31 setMediaContentDelegate:v37];

  return v31;
}

void sub_1005A38A4(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void *sub_1005A3900(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  v10 = sub_10064A600(a1, a2, a3, a4);
  v11 = v10;

  return v10;
}

uint64_t sub_1005A3CF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_referrer);

  return v1;
}

id sub_1005A3E20()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView);
  swift_beginAccess();
  v2 = *v1;
  v3 = *v1;
  return v2;
}

void sub_1005A3E74(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView;
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  *(v5 + 8) = a2;
}

uint64_t sub_1005A3F34()
{
  v1 = [v0 metricsOverlay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1005A3FA4(uint64_t a1)
{
  if (a1)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v1 setMetricsOverlay:isa];
}

void (*sub_1005A402C(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1005A409C(v2);
  return sub_1000BD370;
}

void (*sub_1005A409C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 metricsOverlay];
  if (v3)
  {
    v4 = v3;
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1005A4138;
}

void sub_1005A4138(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }

    [a1[1] setMetricsOverlay:isa];
  }

  else if (v3)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1[1] setMetricsOverlay:isa];
  }

  else
  {
    isa = 0;
    [a1[1] setMetricsOverlay:0];
  }
}

void *sub_1005A422C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v4 = sub_10064A600(a1, a2, a3, a4);
  v5 = v4;
  return v4;
}

void sub_1005A4258()
{
  swift_getObjectType();

  DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()();
}

uint64_t sub_1005A42A4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1005A4570(&qword_10098D1A8);

  return DynamicViewControllerDisplaying.loadGrid(primaryIcon:remainingIcons:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1005A434C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1005A4570(&qword_10098D1A8);

  return a3(ObjectType, v4);
}

uint64_t sub_1005A4570(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingItemViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1005A45B0()
{
  if (qword_10096E9D8 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D2AF0, qword_1009D2B08);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v3[3] = v2;
  v0 = sub_1000056E0(v3);
  (*(*(v2 - 8) + 16))(v0);
  static LogMessage.safe(_:)();
  sub_10002B894(v3, &unk_1009711D0);
  Logger.error(_:)();
}

void sub_1005A4778()
{
  if (kCFBundleVersionKey)
  {
    if ([v0 objectForInfoDictionaryKey:?])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v1 = 0u;
      v2 = 0u;
    }

    v3[0] = v1;
    v3[1] = v2;
    if (*(&v2 + 1))
    {
      swift_dynamicCast();
    }

    else
    {
      sub_10003D444(v3);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1005A483C()
{
  result = qword_100974898;
  if (!qword_100974898)
  {
    type metadata accessor for SmallContactCardCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974898);
  }

  return result;
}

double sub_1005A4894()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_1005A4974();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1005A4974()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallPlayerCardView();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v4 = *(v1 + 8);
  v4(v3, v0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v6 = v5;
  v4(v3, v0);
  v7 = ShelfLayoutContext.traitCollection.getter();
  v8 = type metadata accessor for SnapshotPageTraitEnvironment();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v10 = v6;
  *(v10 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v9[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v7;
  v15.receiver = v9;
  v15.super_class = v8;
  v11 = objc_msgSendSuper2(&v15, "init");
  static SmallPlayerCardView.size(fitting:traitEnvironment:)();
  v13 = v12;

  return v13;
}

BOOL sub_1005A4B50()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 activeInterfaceOrientation];

  return sub_1005A4C08(v1);
}

BOOL sub_1005A4BAC()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 horizontalSizeClass];

  return v1 == 1;
}

double sub_1005A4C64(uint64_t a1)
{
  v57 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v3 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EditorialQuoteLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for LabelPlaceholderCompatibility();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialQuote();
  sub_1005A5508(&qword_1009819B8, &type metadata accessor for EditorialQuote);
  ItemLayoutContext.typedModel<A>(as:)();
  v14 = v64[0];
  if (!v64[0])
  {
    return 0.0;
  }

  v50 = v3;
  v51 = v7;
  v52 = v5;
  v53 = v4;
  swift_getKeyPath();
  v15 = v14;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v11 + 8))(v13, v10);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v16 = v64[0];
  v17 = UITraitCollection.isSizeClassCompact.getter();

  if (v17)
  {
    v18 = 4;
  }

  else
  {
    v18 = 1;
  }

  v47 = EditorialQuote.text.getter();
  v46 = v19;
  v20 = sub_1000367E8();
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  sub_1000056A8(v21, qword_1009CEBA8);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v22 = type metadata accessor for Feature();
  v65 = v22;
  v49 = sub_1005A5508(&qword_100972E50, &type metadata accessor for Feature);
  v66 = v49;
  v23 = sub_1000056E0(v64);
  v24 = *(v22 - 8);
  v45[1] = v20;
  v25 = *(v24 + 104);
  v48 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v25(v23);
  isFeatureEnabled(_:)();
  v58 = a1;
  sub_100007000(v64);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v47 = v18;
  v26 = *(v54 + 8);
  v27 = v55;
  v26(v9, v55);
  v54 = v15;
  v46 = EditorialQuote.attribution.getter();
  v45[0] = v28;
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v21, qword_1009CEBC0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v62 = v22;
  v63 = v49;
  v29 = sub_1000056E0(v61);
  (v25)(v29, v48, v22);
  isFeatureEnabled(_:)();
  sub_100007000(v61);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v26(v9, v27);
  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v30 = v57;
  v31 = sub_1000056A8(v57, qword_1009CEB90);
  (*(v56 + 16))(v50, v31, v30);
  v32 = v65;
  v33 = v66;
  v34 = sub_10002A400(v64, v65);
  v60[3] = v32;
  v60[4] = *(v33 + 8);
  v35 = sub_1000056E0(v60);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v62;
  v37 = v63;
  v38 = sub_10002A400(v61, v62);
  v59[3] = v36;
  v59[4] = *(v37 + 8);
  v39 = sub_1000056E0(v59);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v51;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_1005A5508(&unk_10098D260, &type metadata accessor for EditorialQuoteLayout);
  v41 = v53;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v43 = v42;
  swift_unknownObjectRelease();

  (*(v52 + 8))(v40, v41);
  sub_100007000(v61);
  sub_100007000(v64);
  return v43;
}

uint64_t sub_1005A5508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005A5628()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MessagesSearchViewController();
  objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1005A5B64;
  *(v3 + 24) = v2;
  v8[4] = sub_10006F094;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000489A8;
  v8[3] = &unk_1008C9980;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_1005A5828(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for MessagesSearchViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  dispatch thunk of MetricsActivity.changeContext(_:)();
}

void sub_1005A58C4()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A00);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  if (*&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController])
  {
    v6 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_activeSearchBarObservingViewController + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_1000439D0(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC8AppStore20SearchViewController_objectGraph];
      v10 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_1000F40E0(v5);
      }

      else
      {
        sub_1005F9AF4(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
  }
}

id sub_1005A5AA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesSearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesSearchViewController()
{
  result = qword_10098D298;
  if (!qword_10098D298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005A5CCC()
{
  ShareSheetAction.Activity.action.getter();
  v0 = Action.artwork.getter();

  if (!v0)
  {
    goto LABEL_10;
  }

  if ((dispatch thunk of Artwork.isLocalImage.getter() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (dispatch thunk of Artwork.isSystemImage.getter())
  {
    v1 = static SystemImage.load(artwork:with:includePrivateImages:)();
    goto LABEL_7;
  }

  if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v1 = sub_100330100(v0, 0);
LABEL_7:
  v2 = v1;

  if (v2)
  {
    return v2;
  }

LABEL_10:
  v4 = objc_allocWithZone(UIImage);

  return [v4 init];
}

id sub_1005A5E60()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *&v0[OBJC_IVAR____TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity_objectGraph];
  v5 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000F40E0(v3);
  }

  else
  {
    v7 = ShareSheetAction.Activity.action.getter();
    sub_1005F9AF4(v7, 1, v4, v3);

    (*(v6 + 8))(v3, v5);
  }

  return [v0 activityDidFinish:1];
}

uint64_t type metadata accessor for ActionActivity()
{
  result = qword_10098D2E0;
  if (!qword_10098D2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A6140()
{
  result = type metadata accessor for ShareSheetAction.Activity();
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

id sub_1005A61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = type metadata accessor for ShareSheetAction.Activity();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = OBJC_IVAR____TtC8AppStore22ActivityViewController_artworkLoader;
  *&v4[OBJC_IVAR____TtC8AppStore22ActivityViewController_artworkLoader] = v55;
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  v16 = v55;
  v17 = *&v5[v15];

  v46 = v16;
  v18 = ASKBagContract.enablePrerenderedIconArtwork.getter();
  v47 = a1;
  v19 = sub_1000477D0(v17, v18 & 1);

  v20 = *(a2 + 16);
  v51 = a4;
  if (v20)
  {
    v43[0] = v19;
    v44 = v5;
    v55 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v21 = *(v52 + 16);
    v22 = *(v52 + 80);
    v43[1] = a2;
    v23 = (a2 + ((v22 + 32) & ~v22));
    v49 = *(v52 + 72);
    v50 = v21;
    v52 += 16;
    v48 = (v52 - 8);
    do
    {
      v24 = v50;
      v50(v14, v23, v9);
      v24(v11, v14, v9);
      v25 = type metadata accessor for ActionActivity();
      v26 = objc_allocWithZone(v25);
      v24(&v26[OBJC_IVAR____TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity_activity], v11, v9);
      *&v26[OBJC_IVAR____TtC8AppStoreP33_CE8C5E96DC0A3EE47110102615F0D69114ActionActivity_objectGraph] = a4;
      v54.receiver = v26;
      v54.super_class = v25;

      objc_msgSendSuper2(&v54, "init");
      v27 = *v48;
      (*v48)(v11, v9);
      v27(v14, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      a4 = v51;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v23 += v49;
      --v20;
    }

    while (v20);

    v5 = v44;
    v28 = v45;
    v19 = v43[0];
  }

  else
  {

    v28 = v45;
  }

  sub_1002A5478(v19);

  isa = Array._bridgeToObjectiveC()().super.isa;

  sub_1005A674C();
  v30 = Array._bridgeToObjectiveC()().super.isa;

  v31 = type metadata accessor for ActivityViewController();
  v53.receiver = v5;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "initWithActivityItems:applicationActivities:", isa, v30);

  v33 = v32;
  [v33 setSharingStyle:v28];
  sub_10002849C(&unk_100993620);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007B23A0;
  *(v34 + 32) = UIActivityTypeAddToReadingList;
  *(v34 + 40) = UIActivityTypeAssignToContact;
  *(v34 + 48) = UIActivityTypePostToFlickr;
  *(v34 + 56) = UIActivityTypePrint;
  *(v34 + 64) = UIActivityTypeSaveToCameraRoll;
  *(v34 + 72) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v35 = UIActivityTypeAddToReadingList;
  v36 = UIActivityTypeAssignToContact;
  v37 = UIActivityTypePostToFlickr;
  v38 = UIActivityTypePrint;
  v39 = UIActivityTypeSaveToCameraRoll;
  v40 = UIActivityTypeCopyToPasteboard;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v33 setExcludedActivityTypes:v41];

  return v33;
}

id sub_1005A66E0(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1005A674C()
{
  result = qword_10098D320;
  if (!qword_10098D320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D320);
  }

  return result;
}

char *sub_1005A6798(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = type metadata accessor for DirectionalTextAlignment();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = type metadata accessor for FontSource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_10096DF90 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v61 = sub_1000056A8(v15, qword_1009D0E30);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  StaticDimension.init(_:scaledLike:)();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v64);
  v23 = v58;
  v58(v22, v14, v11);
  StaticDimension.init(_:scaledLike:)();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v64);
  v23(v27, v14, v11);
  StaticDimension.init(_:scaledLike:)();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v64);
  v58(v30, v14, v11);
  v31 = v62;
  StaticDimension.init(_:scaledLike:)();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v31[v32] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_1005A6FA8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_1005A72A0(double a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Dimensions.defaultRoundingRule.getter();
  type metadata accessor for StaticDimension();
  AnyDimension.value(in:rounded:)();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v9(v6, v3);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView()
{
  result = qword_10098D378;
  if (!qword_10098D378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005A7784()
{
  result = type metadata accessor for StaticDimension();
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

void sub_1005A7828()
{
  v0 = type metadata accessor for DirectionalTextAlignment();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_10096DF90 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D0E30);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v43);
  v17 = v36;
  v36(v16, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v43);
  v17(v19, v7, v4);
  v20 = v42;
  StaticDimension.init(_:scaledLike:)();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v43);
  v36(v24, v7, v4);
  StaticDimension.init(_:scaledLike:)();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v20 + v25) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005A7DB8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = v2;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 2) = a1;
    *(v7 + 3) = a2;
    *(v7 + 4) = v6;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    updated = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
    v10 = objc_allocWithZone(updated);
    *&v10[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 4;
    v11 = &v10[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
    *v11 = sub_1005A8A74;
    v11[1] = v7;
    v12 = &v10[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
    *v12 = sub_1005A8A80;
    v12[1] = v8;
    v26.receiver = v10;
    v26.super_class = updated;

    v13 = objc_msgSendSuper2(&v26, "init");
    v14 = objc_opt_self();
    v15 = [v14 daemonProxy];
    [v15 addDataUpdateDelegate:v13];

    v16 = *(v2 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate);
    *(v2 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate) = v13;
    v17 = v13;

    if (ASKBagContract.gameCenterActivitySharingReprompt.getter())
    {
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = objc_allocWithZone(updated);
      *&v19[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateType] = 21;
      v20 = &v19[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_updateBlock];
      *v20 = sub_1005A8524;
      v20[1] = 0;
      v21 = &v19[OBJC_IVAR____TtC8AppStoreP33_A0754A494B8127F1F0C89CD9C6374F4B40SingleUseGKDaemonProxyDataUpdateDelegate_cleanupBlock];
      *v21 = sub_1005A8AA4;
      v21[1] = v18;
      v25.receiver = v19;
      v25.super_class = updated;
      v22 = objc_msgSendSuper2(&v25, "init");
      v23 = [v14 daemonProxy];
      v24 = v22;
      [v23 addDataUpdateDelegate:v24];

      v17 = *(v3 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate);
      *(v3 + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate) = v24;
    }
  }
}

char *sub_1005A8038(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_recommendationsDataUpdateDelegate] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_requestSentDataUpdateDelegate] = 0;
  v13 = [objc_allocWithZone(type metadata accessor for SmallPlayerCardView()) initWithFrame:{a1, a2, a3, a4}];
  *&v5[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard] = v13;
  v14 = v13;
  v15 = SmallPlayerCardView.closeButton.getter();

  v16 = [objc_opt_self() systemGrayColor];
  [v15 setTintColor:v16];

  v20.receiver = v5;
  v20.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  [v18 addSubview:*&v17[OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard]];

  return v17;
}

void sub_1005A83AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v6;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v7 = sub_1003D78D8(v16), (v8 & 1) == 0))
  {
    sub_10003D614(v16);
    return;
  }

  sub_1000073E8(*(a1 + 56) + 32 * v7, v17);
  sub_10003D614(v16);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v14 == a2 && v15 == a3)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC8AppStore34SmallContactCardCollectionViewCell_smallPlayerCard);

    v13 = dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.getter();
    if (v13)
    {
      v13();
      sub_10001F63C(v13);
    }
  }
}

uint64_t sub_1005A8524(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    return sub_10003D614(v5);
  }

  v2 = sub_1003D78D8(v5);
  if ((v3 & 1) == 0)
  {
    return sub_10003D614(v5);
  }

  sub_1000073E8(*(a1 + 56) + 32 * v2, v6);
  sub_10003D614(v5);
  result = swift_dynamicCast();
  if (result)
  {
    sub_1005A8AC8();
    static GKLocalPlayer.presentActivitySharingRepromptInOverlay(recipientName:)();
  }

  return result;
}

void sub_1005A8608(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = *&Strong[*a2];
    *&Strong[v4] = 0;
  }
}

uint64_t type metadata accessor for SmallContactCardCollectionViewCell()
{
  result = qword_10098D3D0;
  if (!qword_10098D3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005A8728()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1005A88C8()
{
  v1 = [objc_opt_self() daemonProxy];
  [v1 removeDataUpdateDelegate:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SingleUseGKDaemonProxyDataUpdateDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1005A8AC8()
{
  result = qword_10098D428;
  if (!qword_10098D428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D428);
  }

  return result;
}

void sub_1005A8B6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = sub_10002849C(&unk_100982A90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-1] - v6;
  v8 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v15[-1] - v9;
  if (v3)
  {

    v3(v11);

    sub_10001F63C(v3);
  }

  else if (v2)
  {
    v12 = sub_10002849C(&unk_100974490);

    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {

      sub_1000F40E0(v10);
    }

    else
    {
      v15[3] = type metadata accessor for Action();
      v15[4] = sub_1005A9EC0(&qword_100989C80, &type metadata accessor for Action);
      v15[0] = v2;
      (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v5 + 8))(v7, v4);
      sub_100007000(v15);
      (*(v13 + 8))(v10, v12);
    }
  }
}

void sub_1005A8E48(uint64_t a1, char *a2)
{
  v123 = a2;
  v118 = type metadata accessor for ActionOutcome();
  v101 = *(v118 - 1);
  __chkstk_darwin(v118);
  v100 = &v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SystemImage();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for FlowOrigin();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for FlowAnimationBehavior();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v114 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FlowPresentationContext();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v112 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v109 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v10 - 8);
  v108 = &v96 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v105 = &v96 - v13;
  v103 = type metadata accessor for FlowPage();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v104 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AlertActionStyle();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v121 = &v96 - v19;
  __chkstk_darwin(v20);
  v22 = &v96 - v21;
  __chkstk_darwin(v23);
  v25 = &v96 - v24;
  sub_10002849C(&qword_1009764A0);
  v117 = Promise.__allocating_init()();
  v122 = a1;
  AlertAction.style.getter();
  v119 = *(v16 + 104);
  v119(v22, enum case for AlertActionStyle.normal(_:), v15);
  sub_1005A9EC0(&unk_10098D430, &type metadata accessor for AlertActionStyle);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v125)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v27 = *(v16 + 8);
  v27(v22, v15);
  v27(v25, v15);

  if ((v26 & 1) == 0)
  {
    v35 = v121;
    AlertAction.style.getter();
    v36 = v120;
    v119(v120, enum case for AlertActionStyle.toast(_:), v15);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v125)
    {
      v27(v36, v15);
      v27(v35, v15);
    }

    else
    {
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v27(v36, v15);
      v27(v35, v15);

      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    v38 = Action.artwork.getter();
    if (v38)
    {
      v39 = v38;
      if (dispatch thunk of Artwork.isLocalImage.getter())
      {
        if (dispatch thunk of Artwork.isSystemImage.getter())
        {
          v40 = static SystemImage.load(artwork:with:includePrivateImages:)();
          goto LABEL_42;
        }

        if (dispatch thunk of Artwork.isBundleImage.getter())
        {
          v40 = sub_100330100(v39, 0);
LABEL_42:
          v77 = v40;

          if (v77)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v78 = v98;
    v79 = v97;
    v80 = v99;
    (*(v98 + 104))(v97, enum case for SystemImage.exclamationmarkCircle(_:), v99);
    v77 = static SystemImage.load(_:with:)();
    (*(v78 + 8))(v79, v80);
LABEL_46:
    v81 = [v77 imageWithRenderingMode:2];
    Action.title.getter();
    v83 = v82;
    AlertAction.message.getter();
    v85 = v84;
    AlertAction.toastDuration.getter();
    v87 = v86;
    if (v83)
    {
      v88 = v81;
      v89 = String._bridgeToObjectiveC()();

      if (v85)
      {
LABEL_48:
        v90 = String._bridgeToObjectiveC()();

LABEL_51:
        v92 = [objc_allocWithZone(ASToastViewController) initWithTitle:v89 message:v90 duration:v81 image:v87];

        [v92 present];
        v93 = v101;
        v94 = v100;
        v95 = v118;
        (*(v101 + 104))(v100, enum case for ActionOutcome.performed(_:), v118);
        Promise.resolve(_:)();

        (*(v93 + 8))(v94, v95);
        return;
      }
    }

    else
    {
      v91 = v81;
      v89 = 0;
      if (v85)
      {
        goto LABEL_48;
      }
    }

    v90 = 0;
    goto LABEL_51;
  }

  Action.title.getter();
  v29 = v28;
  AlertAction.message.getter();
  v31 = v30;
  if (v29)
  {
    v32 = String._bridgeToObjectiveC()();

    v33 = v123;
    if (v31)
    {
LABEL_7:
      v34 = String._bridgeToObjectiveC()();

      goto LABEL_17;
    }
  }

  else
  {
    v32 = 0;
    v33 = v123;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  v34 = 0;
LABEL_17:
  v41 = [objc_opt_self() alertControllerWithTitle:v32 message:v34 preferredStyle:1];

  v42 = AlertAction.buttonActions.getter();
  if ((AlertAction.isCancelable.getter() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v42 + 16))
  {
    v44 = 0x4F2E6E6F69746341;
    v45 = 0xE90000000000004BLL;
    goto LABEL_22;
  }

  AlertAction.cancelTitle.getter();
  if (!v43)
  {
    v44 = 0x432E6E6F69746341;
    v45 = 0xED00006C65636E61;
LABEL_22:
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v44, v46);
  }

  v47 = String._bridgeToObjectiveC()();

  v48 = [objc_opt_self() actionWithTitle:v47 style:1 handler:0];

  [v41 addAction:v48];
  [v41 setPreferredAction:v48];

LABEL_24:
  v121 = *(v42 + 16);
  if (v121)
  {
    v49 = 0;
    v118 = &v128;
    v50 = (v42 + 64);
    v119 = v42;
    v120 = v41;
    while (v49 < *(v42 + 16))
    {
      v54 = *(v50 - 4);
      v55 = *(v50 - 3);
      v57 = *(v50 - 2);
      v56 = *(v50 - 1);
      v58 = *v50;
      if (v56)
      {
        v59 = swift_allocObject();
        *(v59 + 16) = v56;
        *(v59 + 24) = v58;
        v60 = sub_10041D558;
      }

      else
      {
        v60 = 0;
        v59 = 0;
      }

      sub_10000827C(v56);
      v61 = v49 != AlertAction.destructiveActionIndex.getter();
      if ((v62 | v61))
      {
        v63 = 0;
      }

      else
      {
        v63 = 2;
      }

      v64 = swift_allocObject();
      v64[2] = v54;
      v64[3] = v55;
      v64[4] = v57;
      v64[5] = v60;
      v65 = v123;
      v64[6] = v59;
      v64[7] = v65;
      if (v55)
      {

        sub_10000827C(v60);

        v51 = String._bridgeToObjectiveC()();
      }

      else
      {

        sub_10000827C(v60);

        v51 = 0;
      }

      ++v49;
      v129 = sub_1005A9E8C;
      v130 = v64;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v128 = sub_100768994;
      *(&v128 + 1) = &unk_1008C9A40;
      v52 = _Block_copy(&aBlock);

      v53 = [objc_opt_self() actionWithTitle:v51 style:v63 handler:v52];
      _Block_release(v52);

      v41 = v120;
      [v120 addAction:v53];

      sub_10001F63C(v60);
      v50 += 5;
      v33 = v123;
      v42 = v119;
      if (v121 == v49)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v66 = AlertAction.imageName.getter();
    if (v67)
    {
      v68 = v66;
      v69 = v67;
      v70 = type metadata accessor for AlertActionHeaderViewController();
      v71 = objc_allocWithZone(v70);
      *&v71[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageView] = 0;
      v72 = &v71[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageName];
      *v72 = v68;
      *(v72 + 1) = v69;
      v124.receiver = v71;
      v124.super_class = v70;
      v73 = objc_msgSendSuper2(&v124, "initWithNibName:bundle:", 0, 0);
      [v41 _setHeaderContentViewController:v73];
    }

    v129 = 0;
    aBlock = 0u;
    v128 = 0u;
    (*(v102 + 104))(v104, enum case for FlowPage.viewController(_:), v103);
    v74 = type metadata accessor for URL();
    (*(*(v74 - 8) + 56))(v105, 1, 1, v74);
    v75 = type metadata accessor for ReferrerData();
    (*(*(v75 - 8) + 56))(v108, 1, 1, v75);
    v126 = sub_100246DF4();
    *&v125 = v41;
    v123 = v41;
    static ActionMetrics.notInstrumented.getter();
    (*(v106 + 104))(v112, enum case for FlowPresentationContext.infer(_:), v107);
    (*(v110 + 104))(v114, enum case for FlowAnimationBehavior.infer(_:), v111);
    (*(v113 + 104))(v116, enum case for FlowOrigin.inapp(_:), v115);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v76 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005D01FC(v76, 1, v33);
    Promise.pipe(to:)();
  }
}

void sub_1005A9E8C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3[0] = *(v1 + 16);
  v3[1] = v2;
  v4 = *(v1 + 48);
  sub_1005A8B6C(a1, v3);
}

uint64_t sub_1005A9EC0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1005A9F08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v6 - 8);
  v8 = &ObjectType - v7;
  v9 = sub_10002849C(&qword_10097CC90);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &ObjectType - v11;
  if (a1)
  {
    v13 = *&v2[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton];
    v14 = qword_10096D290;

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_1009CE5C8;
    v16 = Action.title.getter();
    sub_1001C4BA8(v15, v16, v17);

    v18 = type metadata accessor for UIButton.Configuration();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    UIButton.configuration.setter();
    [v13 setHidden:{0, ObjectType}];
    v31 = a1;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_1005AA3A8();
    ComponentModel.pairedWith<A>(objectGraph:)();

    v19 = sub_10002849C(&unk_10097B3D0);
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_100079964(v8, &v3[v20]);
    swift_endAccess();
  }

  else
  {
    [*&v2[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_writeReviewButton] setHidden:{1, v10, ObjectType}];
  }

  if (a2)
  {
    v21 = *&v3[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton];
    v22 = qword_10096D298;

    if (v22 != -1)
    {
      swift_once();
    }

    v23 = qword_1009CE5D0;
    v24 = Action.title.getter();
    sub_1001C4BA8(v23, v24, v25);

    v26 = type metadata accessor for UIButton.Configuration();
    (*(*(v26 - 8) + 56))(v12, 0, 1, v26);
    UIButton.configuration.setter();
    [v21 setHidden:0];
    v31 = a2;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_1005AA3A8();
    ComponentModel.pairedWith<A>(objectGraph:)();

    v27 = sub_10002849C(&unk_10097B3D0);
    (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
    v28 = OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_100079964(v8, &v3[v28]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC8AppStore24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v3 setNeedsLayout];
}

unint64_t sub_1005AA3A8()
{
  result = qword_100992FB0;
  if (!qword_100992FB0)
  {
    type metadata accessor for Action();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992FB0);
  }

  return result;
}

uint64_t sub_1005AA400()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_10002849C(&unk_10098D500);
  v3 = Promise.__allocating_init()();
  v4 = [objc_opt_self() authorizationStatusForEntityType:0];
  if ((v4 - 1) < 2)
  {
    goto LABEL_6;
  }

  if ((v4 - 3) < 2)
  {
    LOBYTE(v9[0]) = 1;
LABEL_7:
    Promise.resolve(_:)();
    return v3;
  }

  if (v4)
  {
LABEL_6:
    LOBYTE(v9[0]) = 0;
    goto LABEL_7;
  }

  v5 = *(v1 + OBJC_IVAR____TtC8AppStore17EventStoreManager_eventStore);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = ObjectType;
  v9[4] = sub_1005AB294;
  v9[5] = v6;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100235C48;
  v9[3] = &unk_1008C9AB8;
  v7 = _Block_copy(v9);

  [v5 requestWriteOnlyAccessToEventsWithCompletion:v7];
  _Block_release(v7);
  return v3;
}

uint64_t sub_1005AA56C()
{
  v59 = type metadata accessor for FlowOrigin();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v60 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for FlowAnimationBehavior();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v58 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowPresentationContext();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v56 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v52 = &v45 - v9;
  v46 = type metadata accessor for FlowPage();
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v47 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v0;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore17EventStoreManager_eventStore];
  v22 = [objc_opt_self() eventWithEventStore:v21];
  CreateCalendarEventAction.startDate.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v24 = *(v18 + 8);
  v24(v20, v17);
  [v22 setStartDate:isa];

  CreateCalendarEventAction.endDate.getter();
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v24(v20, v17);
  [v22 setEndDate:v25];

  [v22 setAllDay:CreateCalendarEventAction.isAllDay.getter() & 1];
  v26 = v22;
  CreateCalendarEventAction.name.getter();
  v27 = String._bridgeToObjectiveC()();

  [v26 setTitle:v27];

  CreateCalendarEventAction.location.getter();
  if (v28)
  {
    v29 = String._bridgeToObjectiveC()();
  }

  else
  {
    v29 = 0;
  }

  [v26 setLocation:v29];

  CreateCalendarEventAction.notes.getter();
  if (v30)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  [v26 setNotes:v31];

  CreateCalendarEventAction.url.getter();
  v32 = type metadata accessor for URL();
  v33 = *(v32 - 8);
  v35 = 0;
  if ((*(v33 + 48))(v16, 1, v32) != 1)
  {
    URL._bridgeToObjectiveC()(v34);
    v35 = v36;
    (*(v33 + 8))(v16, v32);
  }

  [v26 setURL:v35];

  CalendarEvent = CreateCalendarEventAction.availability.getter();
  if (v38)
  {
  }

  else
  {
    v39 = CalendarEvent;
    v40 = [v21 defaultCalendarForNewEvents];
    [v26 setCalendar:v40];

    [v26 setAvailability:v39];
  }

  v41 = [objc_allocWithZone(EKEventEditViewController) init];
  [v41 setEvent:v26];
  [v41 setEditViewDelegate:v48];
  [v41 setEventStore:v21];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  (*(v10 + 104))(v49, enum case for FlowPage.viewController(_:), v46);
  (*(v33 + 56))(v47, 1, 1, v32);
  v42 = type metadata accessor for ReferrerData();
  (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
  v62 = sub_1005AB248();
  v61 = v41;
  v48 = v41;
  static ActionMetrics.notInstrumented.getter();
  (*(v50 + 104))(v56, enum case for FlowPresentationContext.presentModal(_:), v51);
  (*(v54 + 104))(v58, enum case for FlowAnimationBehavior.infer(_:), v55);
  (*(v57 + 104))(v60, enum case for FlowOrigin.inapp(_:), v59);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v43 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();

  return v43;
}

uint64_t sub_1005AADF4()
{
  v0 = type metadata accessor for OSLogger.Subsystem();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D108 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CE1D0);
  (*(v1 + 16))(v3, v4, v0);
  qword_10098D458 = type metadata accessor for OSLogger();
  unk_10098D460 = &protocol witness table for OSLogger;
  sub_1000056E0(qword_10098D440);
  return OSLogger.init(subsystem:category:)();
}

uint64_t sub_1005AAF38(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return Promise.resolve(_:)();
  }

  swift_errorRetain();
  if (qword_10096E9E0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098D440, qword_10098D458);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_1000056E0(v5);
  (*(*(v4 - 8) + 16))(v2);
  static LogMessage.sensitive(_:)();
  sub_10003D444(v5);
  Logger.info(_:)();

  Promise.reject(_:)();
}

unint64_t sub_1005AB248()
{
  result = qword_10098D4F8;
  if (!qword_10098D4F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10098D4F8);
  }

  return result;
}

void *sub_1005AB29C()
{
  v0 = sub_1005AB4A8();
  v1 = v0;
  return v0;
}

uint64_t sub_1005AB2C8()
{
  v0 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v1 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v3 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v3)
    {
      return 2;
    }
  }

  else
  {
  }

  v4 = UIContentSizeCategoryAccessibilityMedium;
  v5 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((static UIContentSizeCategory.>= infix(_:_:)() & 1) == 0)
  {

    return 2;
  }

  v6 = static UIContentSizeCategory.<= infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    return 2;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    return 2;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }
}

void *sub_1005AB458()
{
  v0 = sub_1005AB558();
  v1 = v0;
  return v0;
}

uint64_t sub_1005AB484()
{
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1005AB4A8()
{
  v0 = UIContentSizeCategoryAccessibilityMedium;
  v1 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if (result)
  {
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      v3 = static UIContentSizeCategory.<= infix(_:_:)();

      if (v3)
      {
        return UIContentSizeCategoryExtraExtraExtraLarge;
      }
    }

    else
    {
    }

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005AB558()
{
  v0 = UIContentSizeCategoryAccessibilityMedium;
  v1 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = static UIContentSizeCategory.<= infix(_:_:)();
  if (result)
  {
    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      v3 = static UIContentSizeCategory.<= infix(_:_:)();

      if (v3)
      {
        v4 = &UIContentSizeCategoryAccessibilityLarge;
        return *v4;
      }
    }

    else
    {
    }

    v4 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
    return *v4;
  }

  __break(1u);
  return result;
}

double *sub_1005AB610(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v171 = Strong;
  v166[1] = sub_10002849C(&qword_100973210);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_1007B48F0;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for ActionDebugSetting();
  v166[0] = a1;
  v9 = swift_allocObject();
  *(v9 + 56) = 0xD000000000000013;
  *(v9 + 64) = 0x800000010081B6F0;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 0u;
  *(v9 + 104) = sub_1005ACAD0;
  *(v9 + 112) = v8;
  v10 = v1;

  UUID.init()();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  v14 = *(v4 + 8);
  v174 = v3;
  v14(v6, v3);
  v189 = v11;
  v190 = v13;
  AnyHashable.init<A>(_:)();

  *(v167 + 32) = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = v10;
  v16 = swift_allocObject();
  strcpy((v16 + 56), "Clear Caches");
  *(v16 + 69) = 0;
  *(v16 + 70) = -5120;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = sub_1005ACAF4;
  *(v16 + 112) = v15;
  v17 = v10;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v14(v6, v3);
  v172 = v4 + 8;
  v189 = v18;
  v190 = v20;
  AnyHashable.init<A>(_:)();

  v21 = v167;
  *(v167 + 40) = v16;
  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v23 = swift_allocObject();
  *(v23 + 56) = 0xD000000000000015;
  *(v23 + 64) = 0x800000010081B710;
  *(v23 + 72) = 0u;
  *(v23 + 88) = 0u;
  *(v23 + 104) = sub_1005ACAF8;
  *(v23 + 112) = v22;
  v24 = v17;

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = v174;
  v14(v6, v174);
  v189 = v25;
  v190 = v27;
  AnyHashable.init<A>(_:)();

  *(v21 + 48) = v23;
  v170 = swift_allocObject();
  *(v170 + 16) = xmmword_1007D6BB0;
  v29 = objc_allocWithZone(type metadata accessor for DebugSettings());
  swift_unknownObjectWeakInit();
  v30 = v171;
  swift_unknownObjectWeakAssign();
  v173 = type metadata accessor for DebugSettingsProvider();
  v188.receiver = v29;
  v188.super_class = v173;
  v169 = v30;
  v31 = objc_msgSendSuper2(&v188, "init");
  v171 = type metadata accessor for NavigationActionDebugSetting();
  v32 = swift_allocObject();
  v32[7] = 0x73676E6974746553;
  v32[8] = 0xE800000000000000;
  v32[9] = 0;
  v32[10] = 0;
  v32[11] = v31;
  v32[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v168 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[13] = 0;
  v33 = v28;
  v34 = v31;
  UUID.init()();
  v35 = UUID.uuidString.getter();
  v37 = v36;
  v175 = v14;
  v14(v6, v33);
  v189 = v35;
  v190 = v37;
  AnyHashable.init<A>(_:)();

  *(v170 + 32) = v32;
  v38 = objc_allocWithZone(type metadata accessor for StorefrontSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v187.receiver = v38;
  v187.super_class = v173;
  v39 = objc_msgSendSuper2(&v187, "init");
  v40 = swift_allocObject();
  v40[7] = 0x6F726665726F7453;
  v40[8] = 0xEA0000000000746ELL;
  v40[9] = 0;
  v40[10] = 0;
  v40[11] = v39;
  v40[12] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v40[13] = 0;
  v41 = v39;
  UUID.init()();
  v42 = UUID.uuidString.getter();
  v44 = v43;
  v14(v6, v33);
  v189 = v42;
  v190 = v44;
  AnyHashable.init<A>(_:)();

  v45 = v170;
  *(v170 + 40) = v40;
  v46 = objc_allocWithZone(type metadata accessor for MetricsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47 = v173;
  v186.receiver = v46;
  v186.super_class = v173;
  v48 = objc_msgSendSuper2(&v186, "init");
  v49 = swift_allocObject();
  v49[7] = 0x7363697274654DLL;
  v49[8] = 0xE700000000000000;
  v49[9] = 0;
  v49[10] = 0;
  v50 = v168;
  v49[11] = v48;
  v49[12] = v50;
  v49[13] = 0;
  v51 = v48;
  UUID.init()();
  v52 = UUID.uuidString.getter();
  v54 = v53;
  v175(v6, v174);
  v189 = v52;
  v190 = v54;
  AnyHashable.init<A>(_:)();

  *(v45 + 48) = v49;
  v55 = objc_allocWithZone(type metadata accessor for TodaySettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v185.receiver = v55;
  v185.super_class = v47;
  v56 = objc_msgSendSuper2(&v185, "init");
  v57 = swift_allocObject();
  v57[7] = 0x7961646F54;
  v57[8] = 0xE500000000000000;
  v57[9] = 0;
  v57[10] = 0;
  v57[11] = v56;
  v57[12] = v50;
  v57[13] = 0;
  v58 = v56;
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v62 = v175;
  v175(v6, v174);
  v189 = v59;
  v190 = v61;
  AnyHashable.init<A>(_:)();

  v63 = v170;
  *(v170 + 56) = v57;
  v64 = objc_allocWithZone(type metadata accessor for ArcadeSettings());
  v65 = v169;
  v169 = v65;

  v66 = sub_100157BF4();

  v67 = swift_allocObject();
  v67[7] = 0x656461637241;
  v67[8] = 0xE600000000000000;
  v67[9] = 0;
  v67[10] = 0;
  v68 = v168;
  v67[11] = v66;
  v67[12] = v68;
  v67[13] = 0;
  v69 = v66;
  UUID.init()();
  v70 = UUID.uuidString.getter();
  v72 = v71;
  v73 = v174;
  v62(v6, v174);
  v189 = v70;
  v190 = v72;
  AnyHashable.init<A>(_:)();

  *(v63 + 64) = v67;
  v74 = objc_allocWithZone(type metadata accessor for SearchSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v75 = v173;
  v184.receiver = v74;
  v184.super_class = v173;
  v76 = objc_msgSendSuper2(&v184, "init");
  v77 = swift_allocObject();
  v77[7] = 0x686372616553;
  v77[8] = 0xE600000000000000;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = v76;
  v77[12] = v68;
  v77[13] = 0;
  v78 = v76;
  UUID.init()();
  v79 = UUID.uuidString.getter();
  v81 = v80;
  v175(v6, v73);
  v189 = v79;
  v190 = v81;
  AnyHashable.init<A>(_:)();

  v82 = v170;
  *(v170 + 72) = v77;
  v83 = objc_allocWithZone(type metadata accessor for ProductPageSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v183.receiver = v83;
  v183.super_class = v75;
  v84 = objc_msgSendSuper2(&v183, "init");
  v85 = swift_allocObject();
  strcpy((v85 + 56), "Product Page");
  *(v85 + 69) = 0;
  *(v85 + 70) = -5120;
  *(v85 + 72) = 0;
  *(v85 + 80) = 0;
  *(v85 + 88) = v84;
  *(v85 + 96) = v68;
  *(v85 + 104) = 0;
  v86 = v84;
  UUID.init()();
  v87 = UUID.uuidString.getter();
  v89 = v88;
  v175(v6, v174);
  v189 = v87;
  v190 = v89;
  AnyHashable.init<A>(_:)();

  v82[10] = v85;
  v90 = objc_allocWithZone(type metadata accessor for AdsSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v182.receiver = v90;
  v182.super_class = v75;
  v91 = objc_msgSendSuper2(&v182, "init");
  v92 = swift_allocObject();
  v92[7] = 7562305;
  v92[8] = 0xE300000000000000;
  v92[9] = 0;
  v92[10] = 0;
  v92[11] = v91;
  v92[12] = v68;
  v92[13] = 0;
  v93 = v91;
  UUID.init()();
  v94 = UUID.uuidString.getter();
  v96 = v95;
  v97 = v174;
  v98 = v175;
  v175(v6, v174);
  v189 = v94;
  v190 = v96;
  AnyHashable.init<A>(_:)();

  v82[11] = v92;
  v99 = objc_allocWithZone(type metadata accessor for OnboardingSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v181.receiver = v99;
  v181.super_class = v173;
  v100 = objc_msgSendSuper2(&v181, "init");
  v101 = swift_allocObject();
  v101[7] = 0x696472616F626E4FLL;
  v101[8] = 0xEA0000000000676ELL;
  v101[9] = 0;
  v101[10] = 0;
  v101[11] = v100;
  v101[12] = v168;
  v101[13] = 0;
  v102 = v100;
  UUID.init()();
  v103 = UUID.uuidString.getter();
  v105 = v104;
  v98(v6, v97);
  v189 = v103;
  v190 = v105;
  AnyHashable.init<A>(_:)();

  v82[12] = v101;
  v106 = objc_allocWithZone(type metadata accessor for ShelfPlaceholderSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v107 = v173;
  v180.receiver = v106;
  v180.super_class = v173;
  v108 = objc_msgSendSuper2(&v180, "init");
  v109 = swift_allocObject();
  v109[7] = 0xD000000000000012;
  v109[8] = 0x800000010081B730;
  v109[9] = 0;
  v109[10] = 0;
  v110 = v168;
  v109[11] = v108;
  v109[12] = v110;
  v109[13] = 0;
  v111 = v108;
  UUID.init()();
  v112 = UUID.uuidString.getter();
  v114 = v113;
  v115 = v174;
  v175(v6, v174);
  v189 = v112;
  v190 = v114;
  AnyHashable.init<A>(_:)();

  *(v170 + 104) = v109;
  v116 = objc_allocWithZone(type metadata accessor for DownloadProgressSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v179.receiver = v116;
  v179.super_class = v107;
  v117 = objc_msgSendSuper2(&v179, "init");
  v118 = swift_allocObject();
  v118[7] = 0xD000000000000011;
  v118[8] = 0x800000010081B750;
  v118[9] = 0;
  v118[10] = 0;
  v118[11] = v117;
  v118[12] = v110;
  v119 = v110;
  v118[13] = 0;
  v120 = v117;
  UUID.init()();
  v121 = UUID.uuidString.getter();
  v123 = v122;
  v124 = v175;
  v175(v6, v115);
  v189 = v121;
  v190 = v123;
  AnyHashable.init<A>(_:)();

  v125 = v170;
  *(v170 + 112) = v118;
  v126 = objc_allocWithZone(type metadata accessor for AppCapabilitiesSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v178.receiver = v126;
  v178.super_class = v173;
  v127 = objc_msgSendSuper2(&v178, "init");
  v128 = swift_allocObject();
  v128[7] = 0xD000000000000010;
  v128[8] = 0x800000010081B770;
  v128[9] = 0;
  v128[10] = 0;
  v128[11] = v127;
  v128[12] = v119;
  v128[13] = 0;
  v129 = v127;
  UUID.init()();
  v130 = UUID.uuidString.getter();
  v132 = v131;
  v133 = v174;
  v124(v6, v174);
  v189 = v130;
  v190 = v132;
  AnyHashable.init<A>(_:)();

  v134 = v125;
  *(v125 + 120) = v128;
  v135 = objc_allocWithZone(type metadata accessor for LocalizerSettings());
  swift_unknownObjectWeakInit();
  v136 = v169;
  swift_unknownObjectWeakAssign();
  v177.receiver = v135;
  v137 = v173;
  v177.super_class = v173;
  v138 = objc_msgSendSuper2(&v177, "init");
  v139 = swift_allocObject();
  v139[7] = 0x657A696C61636F4CLL;
  v139[8] = 0xE900000000000072;
  v139[9] = 0;
  v139[10] = 0;
  v140 = v168;
  v139[11] = v138;
  v139[12] = v140;
  v139[13] = 0;
  v141 = v138;
  UUID.init()();
  v142 = UUID.uuidString.getter();
  v144 = v143;
  v175(v6, v133);
  v189 = v142;
  v190 = v144;
  AnyHashable.init<A>(_:)();

  v145 = v134;
  *(v134 + 128) = v139;
  v146 = objc_allocWithZone(type metadata accessor for NotificationSettings());
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v176.receiver = v146;
  v176.super_class = v137;
  v147 = objc_msgSendSuper2(&v176, "init");

  v148 = swift_allocObject();
  strcpy((v148 + 56), "Notifications");
  *(v148 + 70) = -4864;
  *(v148 + 72) = 0;
  *(v148 + 80) = 0;
  *(v148 + 88) = v147;
  *(v148 + 96) = v140;
  *(v148 + 104) = 0;
  v149 = v147;
  UUID.init()();
  v150 = UUID.uuidString.getter();
  v152 = v151;
  v153 = v174;
  v154 = v175;
  v175(v6, v174);
  v189 = v150;
  v190 = v152;
  AnyHashable.init<A>(_:)();

  *(v145 + 136) = v148;
  v155 = v145;
  v156 = swift_allocObject();
  *(v156 + 16) = xmmword_1007B15F0;
  type metadata accessor for DebugSection();
  v157 = swift_allocObject();
  UUID.init()();
  v158 = UUID.uuidString.getter();
  v160 = v159;
  v154(v6, v153);
  v157[2] = v158;
  v157[3] = v160;
  v157[4] = 0;
  v157[5] = 0xE000000000000000;
  v157[6] = v167;
  *(v156 + 32) = v157;
  v161 = swift_allocObject();
  UUID.init()();
  v162 = UUID.uuidString.getter();
  v164 = v163;
  v154(v6, v153);
  v161[2] = v162;
  v161[3] = v164;
  v161[4] = 0;
  v161[5] = 0xE000000000000000;
  v161[6] = v155;
  *(v156 + 40) = v161;

  return v156;
}

void sub_1005AC9C8()
{
  sub_10002849C(&unk_100989C70);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  [v1 invalidateMediaToken];
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
  swift_unknownObjectRelease();
}

id sub_1005ACA78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugMenuSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005ACB00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v1 = Strong;
  v2 = [Strong presentingViewController];

  if (!v2)
  {
    goto LABEL_8;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = [v3 selectedViewController];

    if (!v4)
    {
      goto LABEL_8;
    }

    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    v2 = v4;
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }
  }

LABEL_8:
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7 || (v8 = v7, v9 = [v7 presentingViewController], v8, !v9))
  {
    v6 = 0;
    goto LABEL_23;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_23;
  }

LABEL_11:
  v10 = [v6 viewControllers];
  sub_100065AF0();
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_13;
    }

LABEL_45:

    goto LABEL_23;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_45;
  }

LABEL_13:
  v13 = __OFSUB__(v12, 1);
  v14 = v12 - 1;
  if (v13)
  {
    __break(1u);
  }

  else if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v14 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v15 = *(v11 + 8 * v14 + 32);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_18:
  v16 = v15;

  if (!v16)
  {
LABEL_23:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_1005ACFEC(&v30);
    v11 = 0;
LABEL_24:
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    goto LABEL_25;
  }

  v11 = v16;
  sub_10002849C(&qword_10098D548);
  if (swift_dynamicCast())
  {
    if (*(&v31 + 1))
    {
LABEL_43:
      sub_100005A38(&v30, v33);
      sub_100005A38(v33, &aBlock);
      goto LABEL_26;
    }
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
  }

  sub_1005ACFEC(&v30);
  v24 = [v11 childViewControllers];
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_38;
    }

    goto LABEL_51;
  }

LABEL_50:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_51:

    goto LABEL_24;
  }

LABEL_38:
  if ((v10 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v25 = *(v10 + 32);
  }

  sub_10002849C(&qword_10098D548);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(&v31 + 1))
  {
    goto LABEL_43;
  }

LABEL_25:
  sub_1005ACFEC(&v30);
  aBlock = 0u;
  v27 = 0u;
  v28 = 0;
LABEL_26:
  v34[0] = aBlock;
  v34[1] = v27;
  v35 = v28;
  sub_1005AD054(v34, &aBlock);
  if (*(&v27 + 1))
  {
    sub_100005A38(&aBlock, v33);
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17 && (v18 = v17, v19 = [v17 presentingViewController], v18, v19))
    {
      sub_10002C0AC(v33, &v30);
      v20 = swift_allocObject();
      sub_100005A38(&v30, v20 + 16);
      v28 = sub_1005AD0C4;
      v29 = v20;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v27 = sub_100007A08;
      *(&v27 + 1) = &unk_1008C9B80;
      v21 = _Block_copy(&aBlock);

      [v19 dismissViewControllerAnimated:1 completion:v21];
      _Block_release(v21);
    }

    else
    {
    }

    sub_100007000(v33);
    p_aBlock = v34;
  }

  else
  {
    sub_1005ACFEC(v34);

    p_aBlock = &aBlock;
  }

  return sub_1005ACFEC(p_aBlock);
}

uint64_t sub_1005ACFEC(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098D538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005AD054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10098D538);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005AD0C4()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_10002A400(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

__n128 sub_1005AD118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1005AD14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 153))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005AD194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005AD20C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005AD22C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 41) = v3;
  return result;
}

void *sub_1005AD274@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = v4;
  v117 = a1;
  v126 = a2;
  v8 = type metadata accessor for VerticalStack();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v122 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v113 - v11;
  __chkstk_darwin(v12);
  v120 = &v113 - v13;
  v130 = type metadata accessor for Resize.Rule();
  v14 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = (&v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v132 = (&v113 - v17);
  __chkstk_darwin(v18);
  v131 = (&v113 - v19);
  __chkstk_darwin(v20);
  v22 = (&v113 - v21);
  __chkstk_darwin(v23);
  v25 = (&v113 - v24);
  v133 = type metadata accessor for Resize();
  v125 = *(v133 - 8);
  __chkstk_darwin(v133);
  v123 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = __chkstk_darwin(v27).n128_u64[0];
  v119 = &v113 - v29;
  v30 = *(v4 + 18);
  v31 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v32 = [*&v30[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] hasContent];
  v124 = v30;
  if (v32 && ([v30 isHidden] & 1) == 0)
  {
    v129 = [*&v30[v31] isHidden];
  }

  else
  {
    v129 = 1;
  }

  v33 = *(v5 + 6);
  v34 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  if ([*&v33[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] hasContent] && (objc_msgSend(*&v33[v34], "isHidden") & 1) == 0)
  {
    v35 = [v33 isHidden];
  }

  else
  {
    v35 = 1;
  }

  sub_10005FC74((v5 + 104), &v138);
  if (*(&v139 + 1))
  {
    sub_100005A38(&v138, v147);
    sub_10002A400(v147, v148);
    Measurable.placeable.getter();
    v36 = *(v5 + 1);
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = v36;
    v37 = enum case for Resize.Rule.replaced(_:);
    v38 = *(v14 + 13);
    v39 = v130;
    v38(v25, enum case for Resize.Rule.replaced(_:), v130);
    v40 = *(v5 + 2);
    *(v22 + 3) = &type metadata for CGFloat;
    *(v22 + 4) = &protocol witness table for CGFloat;
    *v22 = v40;
    v38(v22, v37, v39);
    v41 = enum case for Resize.Rule.unchanged(_:);
    v38(v131, enum case for Resize.Rule.unchanged(_:), v39);
    v38(v132, v41, v39);
    v42 = v119;
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    v43 = v118;
    VerticalStack.init(with:)();
    v44 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v45 = sub_1000056E0(&v138);
    v46 = v5;
    v47 = v125;
    (*(v125 + 16))(v45, v42, v44);
    v48 = v120;
    VerticalStack.adding(_:with:)();
    v49 = v128;
    v50 = *(v127 + 8);
    v50(v43, v128);
    sub_100007000(&v138);
    v136[0] = v124;
    type metadata accessor for TodayTransitioningLabelView();
    Measurable.placeable.getter();
    sub_1005AE320(v46, &v138);
    v51 = swift_allocObject();
    v52 = v145;
    *(v51 + 112) = v144;
    *(v51 + 128) = v52;
    *(v51 + 144) = v146[0];
    *(v51 + 153) = *(v146 + 9);
    v53 = v141;
    *(v51 + 48) = v140;
    *(v51 + 64) = v53;
    v54 = v143;
    *(v51 + 80) = v142;
    *(v51 + 96) = v54;
    v55 = v139;
    *(v51 + 16) = v138;
    *(v51 + 32) = v55;
    *(v51 + 169) = v129;
    v56 = v126;
    v126[3] = v49;
    v56[4] = &protocol witness table for VerticalStack;
    sub_1000056E0(v56);
    VerticalStack.adding(_:with:)();

    sub_100007000(v137);
    v50(v48, v49);
    (*(v47 + 8))(v42, v44);
    return sub_100007000(v147);
  }

  sub_10005FD2C(&v138);
  LODWORD(v114) = v35;
  VerticalStack.init(with:)();
  v137[0] = v33;
  v119 = type metadata accessor for TodayTransitioningLabelView();
  Measurable.placeable.getter();
  *(v25 + 3) = &type metadata for CGFloat;
  *(v25 + 4) = &protocol witness table for CGFloat;
  *v25 = a3;
  v58 = *(v14 + 13);
  v115 = enum case for Resize.Rule.replaced(_:);
  v59 = v130;
  v58(v25);
  v118 = v14;
  v120 = v5;
  v60 = v22;
  v61 = enum case for Resize.Rule.unchanged(_:);
  (v58)(v60, enum case for Resize.Rule.unchanged(_:), v59);
  (v58)(v131, v61, v59);
  v116 = v61;
  v62 = v61;
  v63 = v60;
  (v58)(v132, v62, v59);
  *(&v139 + 1) = v133;
  *&v140 = &protocol witness table for Resize;
  sub_1000056E0(&v138);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v64 = swift_allocObject();
  v65 = v120;
  *(v64 + 16) = v114;
  VerticalStack.add(_:with:)();

  sub_100007000(&v138);
  sub_1005AE320(v65, &v138);
  v66 = swift_allocObject();
  v67 = v145;
  v66[7] = v144;
  v66[8] = v67;
  v66[9] = v146[0];
  *(v66 + 153) = *(v146 + 9);
  v68 = v141;
  v66[3] = v140;
  v66[4] = v68;
  v69 = v143;
  v66[5] = v142;
  v66[6] = v69;
  v70 = v139;
  v66[1] = v138;
  v66[2] = v70;
  v71 = v121;
  *v121 = sub_1005AE358;
  v71[1] = v66;
  (v58)(v71, enum case for Resize.Rule.recalculated(_:), v59);
  v72 = v129 | ~*(v65 + 152);
  v114 = *(v65 + 56);
  v147[0] = v114;
  if (v72)
  {
    Measurable.placeable.getter();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    v73 = v116;
    (v58)(v63, v116, v59);
    (v58)(v131, v73, v59);
  }

  else
  {
    Measurable.placeable.getter();
    *(v25 + 3) = &type metadata for CGFloat;
    *(v25 + 4) = &protocol witness table for CGFloat;
    *v25 = a3;
    (v58)(v25, v115, v59);
    (*(v118 + 2))(v63, v71, v59);
    v73 = v116;
    (v58)(v131, v116, v59);
  }

  (v58)(v132, v73, v59);
  v74 = v123;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v75 = v120;
  v76 = v122;
  v77 = v133;
  if (v120[40])
  {
    v148 = v133;
    v149 = &protocol witness table for Resize;
    v78 = sub_1000056E0(v147);
    v79 = v125;
    (*(v125 + 16))(v78, v74, v77);
    sub_1005AE320(v75, &v138);
    v80 = swift_allocObject();
    v81 = v145;
    v80[7] = v144;
    v80[8] = v81;
    v80[9] = v146[0];
    *(v80 + 153) = *(v146 + 9);
    v82 = v141;
    v80[3] = v140;
    v80[4] = v82;
    v83 = v143;
    v80[5] = v142;
    v80[6] = v83;
    v84 = v139;
    v80[1] = v138;
    v80[2] = v84;
    VerticalStack.add(_:with:)();

    sub_100007000(v147);
    v85 = v130;
    v86 = v121;
LABEL_21:
    v137[0] = v124;
    Measurable.placeable.getter();
    sub_1005AE320(v75, &v138);
    v105 = swift_allocObject();
    v106 = v145;
    *(v105 + 112) = v144;
    *(v105 + 128) = v106;
    *(v105 + 144) = v146[0];
    *(v105 + 153) = *(v146 + 9);
    v107 = v141;
    *(v105 + 48) = v140;
    *(v105 + 64) = v107;
    v108 = v143;
    *(v105 + 80) = v142;
    *(v105 + 96) = v108;
    v109 = v139;
    *(v105 + 16) = v138;
    *(v105 + 32) = v109;
    *(v105 + 169) = v129;
    VerticalStack.add(_:with:)();

    sub_100007000(v147);
    v110 = v128;
    v111 = v126;
    v126[3] = v128;
    v111[4] = &protocol witness table for VerticalStack;
    v112 = sub_1000056E0(v111);
    (*(v127 + 32))(v112, v76, v110);
    (*(v79 + 8))(v123, v77);
    return (*(v118 + 1))(v86, v85);
  }

  v87 = *(v120 + 4);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_1007B0B70;
  v89 = v117;
  *(v88 + 32) = v117;
  v90 = v89;
  v91 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  [v114 measurementsWithFitting:v91 in:{a3, a4}];
  v93 = v92;

  sub_10002A400((v75 + 64), *(v75 + 88));
  result = dispatch thunk of LayoutTextView.font.getter();
  v86 = v121;
  if (result)
  {
    v94 = result;
    [result lineHeight];
    v96 = v95;

    if (v96 * v87 - v93 < 0.0)
    {
      v97 = 0.0;
    }

    else
    {
      v97 = v96 * v87 - v93;
    }

    v77 = v133;
    *(&v139 + 1) = v133;
    *&v140 = &protocol witness table for Resize;
    v98 = sub_1000056E0(&v138);
    v79 = v125;
    (*(v125 + 16))(v98, v123, v77);
    v137[3] = &type metadata for CGFloat;
    v137[4] = &protocol witness table for CGFloat;
    *v137 = v97;
    v99 = type metadata accessor for ZeroDimension();
    v136[3] = v99;
    v136[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v136);
    static ZeroDimension.zero.getter();
    v135[3] = v99;
    v135[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v135);
    static ZeroDimension.zero.getter();
    v134[3] = v99;
    v134[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v134);
    static ZeroDimension.zero.getter();
    v148 = type metadata accessor for Margins();
    v149 = &protocol witness table for Margins;
    sub_1000056E0(v147);
    Margins.init(_:top:leading:bottom:trailing:)();
    sub_1005AE320(v75, &v138);
    v100 = swift_allocObject();
    v101 = v145;
    v100[7] = v144;
    v100[8] = v101;
    v100[9] = v146[0];
    *(v100 + 153) = *(v146 + 9);
    v102 = v141;
    v100[3] = v140;
    v100[4] = v102;
    v103 = v143;
    v100[5] = v142;
    v100[6] = v103;
    v104 = v139;
    v100[1] = v138;
    v100[2] = v104;
    VerticalStack.add(_:with:)();

    sub_100007000(v147);
    v85 = v130;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005AE094(uint64_t a1, uint64_t a2)
{
  VerticalStack.Properties.topSpacing.setter();
  sub_10002A400((a2 + 64), *(a2 + 88));
  if (dispatch thunk of LayoutView.hasContent.getter())
  {
    [*(a2 + 56) isHidden];
  }

  return VerticalStack.Properties.shouldSkip.setter();
}

double sub_1005AE198(void *a1, double a2, double a3)
{
  sub_1005AD274(a1, v6, a2, a3);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v4 = v3;
  sub_100007000(v6);
  return v4;
}

uint64_t sub_1005AE23C(void *a1, double a2, double a3, double a4, double a5)
{
  sub_1005AD274(a1, v6, a4, a5);
  sub_10002A400(v6, v6[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v6);
}

__n128 sub_1005AE2D8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v5;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return result;
}

uint64_t sub_1005AE390(uint64_t a1)
{
  sub_100007000(v1 + 80);
  if (*(v1 + 144))
  {
    sub_100007000(v1 + 120);
  }

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1005AE464(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v56 = type metadata accessor for PageGrid.HorizontalMargins();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v6 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  __chkstk_darwin(v16);
  v59 = &v44 - v17;
  sub_10002849C(&qword_100970EF0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v57 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v49 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v21 = v20 + v19;
  v22 = a1;
  v61 = a1;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v61 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v54 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v60 + 104);
  v60 += 104;
  v55 = v28;
  v29 = v56;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = v15;
  v52 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v61 = a1;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v32 = v54;
  v55(v6, v54, v29);
  LOBYTE(v61) = 0;
  v50 = v4;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  v53 = v9;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v57;
  v51 = v21;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 2 * v33;
  v61 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v46 = vdupq_n_s64(0x4041000000000000uLL);
  v34 = v6;
  *v6 = v46;
  v35 = v32;
  v36 = v32;
  v37 = v55;
  v38 = v56;
  v55(v6, v36, v56);
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v39 = v45;
  v40 = v34;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v41 = v57;
  v45 = v39 + v57;
  v61 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v40 = v46;
  v37(v40, v35, v38);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 4 * v41;
  v61 = 3.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v46 = vdupq_n_s64(0x404A000000000000uLL);
  *v40 = v46;
  v42 = v56;
  v37(v40, v54, v56);
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v61 = 3.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v40 = v46;
  v55(v40, v54, v42);
  LOBYTE(v61) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v61 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v49;
}

void sub_1005AEF74(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v3)
  {
    return;
  }

  v40 = v3;
  v4 = [v3 presentingViewController];
  if (v4)
  {
    v39 = v4;
    v5 = [a1 viewForKey:UITransitionContextFromViewKey];
    if (v5)
    {
      v6 = v5;
      v7 = [a1 containerView];
      v8 = [a1 viewForKey:UITransitionContextToViewKey];
      if (v8)
      {
        [v7 insertSubview:v8 belowSubview:v6];
      }

      [a1 initialFrameForViewController:v40];
      x = v48.origin.x;
      y = v48.origin.y;
      width = v48.size.width;
      height = v48.size.height;
      v13 = CGRectGetWidth(v48) * 0.2;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v14 = CGRectGetHeight(v49) * 0.2;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v51 = CGRectInset(v50, v13, v14);
      if (v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 32])
      {
        v15 = v51.origin.x;
        v16 = v51.origin.y;
        v17 = v51.size.width;
        v18 = v51.size.height;
        v19 = v1;
      }

      else
      {
        v19 = v1;
        [v7 convertRect:0 fromView:{*&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect], *&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 8], *&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 16], *&v1[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 24]}];
        v15 = v21;
        v16 = v22;
        v17 = v23;
        v18 = v24;
      }

      v25 = [swift_unknownObjectRetain() containerView];
      v26 = [v25 traitCollection];

      LOBYTE(v25) = UITraitCollection.isSizeClassCompact.getter();
      swift_unknownObjectRelease();
      if (v25)
      {
        v27 = 0.62;
      }

      else
      {
        v27 = 0.61;
      }

      v28 = [a1 containerView];
      v29 = [v28 traitCollection];

      LOBYTE(v28) = UITraitCollection.isSizeClassCompact.getter();
      if (v28)
      {
        v30 = 0.8;
      }

      else
      {
        v30 = 0.84;
      }

      v31 = objc_opt_self();
      v32 = swift_allocObject();
      *(v32 + 2) = v19;
      *(v32 + 3) = v6;
      v32[4] = v15;
      v32[5] = v16;
      v32[6] = v17;
      v32[7] = v18;
      v45 = sub_1005AF84C;
      v46 = v32;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100007A08;
      v44 = &unk_1008C9E80;
      v33 = _Block_copy(&aBlock);
      v34 = v19;
      v35 = v6;

      v36 = swift_allocObject();
      *(v36 + 16) = a1;
      *(v36 + 24) = v34;
      v45 = sub_10018E8D4;
      v46 = v36;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_100504C5C;
      v44 = &unk_1008C9ED0;
      v37 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v38 = v34;

      [v31 animateWithDuration:129 delay:v33 usingSpringWithDamping:v37 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

      _Block_release(v37);
      _Block_release(v33);
      return;
    }

    v20 = v39;
  }

  else
  {
    v20 = v40;
  }
}

id sub_1005AF3FC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  sub_1005F3D78(1);
  result = [a2 setFrame:{a3, a4, a5, a6}];
  if (*(a1 + OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect + 32) == 1)
  {

    return [a2 setAlpha:0.0];
  }

  return result;
}

void sub_1005AF4B4(void *a1)
{
  v2 = v1;
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  if (v4)
  {
    v5 = v4;
    [v4 setAlpha:1.0];
    v6 = [swift_unknownObjectRetain() containerView];
    v7 = [v6 traitCollection];

    LOBYTE(v6) = UITraitCollection.isSizeClassCompact.getter();
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = 0.62;
    }

    else
    {
      v8 = 0.61;
    }

    v9 = [a1 containerView];
    v10 = [v9 traitCollection];

    LOBYTE(v9) = UITraitCollection.isSizeClassCompact.getter();
    if (v9)
    {
      v11 = 0.8;
    }

    else
    {
      v11 = 0.84;
    }

    v12 = objc_opt_self();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    *(v13 + 24) = v5;
    v24 = sub_1005AF800;
    v25 = v13;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100007A08;
    v23 = &unk_1008C9DE0;
    v14 = _Block_copy(&v20);
    v15 = v2;
    v16 = v5;

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = v15;
    v24 = sub_10018E7F0;
    v25 = v17;
    v20 = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_100504C5C;
    v23 = &unk_1008C9E30;
    v18 = _Block_copy(&v20);
    swift_unknownObjectRetain();
    v19 = v15;

    [v12 animateWithDuration:129 delay:v14 usingSpringWithDamping:v18 initialSpringVelocity:v8 options:0.0 animations:v11 completion:1.0];

    _Block_release(v18);
    _Block_release(v14);
  }
}

id sub_1005AF7A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionDismissAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005AF800()
{
  v1 = *(v0 + 24);
  sub_1005F3D78(1);

  return [v1 setAlpha:0.0];
}

double sub_1005AF874(uint64_t a1)
{
  v25 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10098D5E8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = type metadata accessor for StaticDimension();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005AFC34(v8);
  v26 = a1;
  Conditional.evaluate(with:)();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_1005AFC34(v8);
  v26 = a1;
  Conditional.evaluate(with:)();
  v14(v8, v5);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

uint64_t sub_1005AFB80()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_10098D590);
  sub_1000056A8(v0, qword_10098D590);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1005AFC34@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v24);
  v23 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  if (qword_10096DF78 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  v10 = sub_1000056A8(v9, qword_1009D0DE8);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v21[2] = v11 + 16;
  v22 = v12;
  v12(v4, v10, v9);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v2[13];
  v14(v4, enum case for FontSource.useCase(_:), v1);
  v27 = v1;
  v28 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v26);
  v16 = v2[2];
  v16(v15, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v21[1] = v8;
  v17 = v2[1];
  v17(v4, v1);
  if (qword_10096DF70 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v9, qword_1009D0DD0);
  v22(v4, v18, v9);
  v14(v4, v13, v1);
  v27 = v1;
  v28 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v26);
  v16(v19, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v17(v4, v1);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1005AFF6C()
{
  v0 = sub_10002849C(&qword_100979010);
  sub_100005644(v0, qword_1009D2B20);
  sub_1000056A8(v0, qword_1009D2B20);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1005B0004()
{
  v0 = sub_10002849C(&unk_100973B30);
  sub_100005644(v0, qword_1009D2B38);
  sub_1000056A8(v0, qword_1009D2B38);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

char *sub_1005B0098(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_10096E9F8;
  v20 = *&v16[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v21, qword_1009D2B38);
  v22 = [v16 traitCollection];
  Conditional.evaluate<>(in:)();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = UITraitCollection.isSizeClassRegular.getter();
  if (v25)
  {
    if (qword_10096DF78 != -1)
    {
      swift_once();
    }

    v26 = qword_1009D0DE8;
  }

  else
  {
    if (qword_10096DF70 != -1)
    {
      swift_once();
    }

    v26 = qword_1009D0DD0;
  }

  v27 = type metadata accessor for FontUseCase();
  v28 = sub_1000056A8(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v30 = qword_10096E9E8;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v32, qword_10098D590);
  v38[4] = v16;
  v33 = v16;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_10002849C(&qword_10097B110);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1007B10D0;
  *(v35 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v38);
  return v33;
}

void sub_1005B05F0(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView];
  if (v4)
  {
    [v4 removeFromSuperview];
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
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }
}

id sub_1005B06B4()
{
  v1 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_1005B05F0([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_1005B0804()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = UITraitCollection.isSizeClassRegular.getter();

  v13 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    CGSize.scaled(_:)();
    v17 = v16;
    v19 = v18;
    v20 = *&v1[v13];
    if (v20)
    {
      v21 = [v20 image];
      if (v21)
      {
        v22 = v21;
        [v21 contentInsets];
        right = v23;

        goto LABEL_7;
      }
    }
  }

  else
  {
    v19 = 0.0;
    v17 = 0.0;
  }

  right = UIEdgeInsetsZero.right;
LABEL_7:
  v40.origin.x = v4;
  v40.origin.y = v6;
  v40.size.width = v8;
  v40.size.height = v10;
  rect = v19;
  v25 = CGRectGetMidY(v40) + v19 * -0.5;
  if (v12)
  {
    v26 = v17;
    v41.origin.x = v4;
    v41.origin.y = v6;
    v41.size.width = v8;
    v41.size.height = v10;
    MinX = CGRectGetMinX(v41);
  }

  else
  {
    v42.origin.x = v4;
    v42.origin.y = v6;
    v42.size.width = v8;
    v42.size.height = v10;
    v26 = v17;
    MinX = right + CGRectGetMaxX(v42) - v17;
  }

  v28 = ceil(MinX);
  v29 = ceil(v25);
  v30 = *&v1[v13];
  if (v30)
  {
    v31 = v30;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v31 setFrame:?];
  }

  if (qword_10096E9F0 != -1)
  {
    swift_once();
  }

  v32 = sub_10002849C(&qword_100979010);
  sub_1000056A8(v32, qword_1009D2B20);
  v33 = v1;
  Conditional.evaluate(with:)();

  if (v12)
  {
    v43.origin.x = v28;
    v43.origin.y = v29;
    v43.size.width = v26;
    v43.size.height = rect;
    CGRectGetMaxX(v43);
  }

  else
  {
    v44.origin.x = v4;
    v44.origin.y = v6;
    v44.size.width = v8;
    v44.size.height = v10;
    CGRectGetMinX(v44);
  }

  v45.origin.x = v4;
  v45.origin.y = v6;
  v45.size.width = v8;
  v45.size.height = v10;
  v34 = CGRectGetWidth(v45) - (v26 + v38);
  v35 = *&v33[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel];
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  [v35 sizeThatFits:{v34, CGRectGetHeight(v46)}];
  v47.origin.x = v4;
  v47.origin.y = v6;
  v47.size.width = v8;
  v47.size.height = v10;
  CGRectGetMidY(v47);
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v35 setFrame:?];
}

id sub_1005B0BF0(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096E9E8 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_10098D590);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

id sub_1005B0D90()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = UITraitCollection.isSizeClassRegular.getter();

  if (v8)
  {
    if (qword_10096DF78 != -1)
    {
      swift_once();
    }

    v9 = qword_1009D0DE8;
  }

  else
  {
    if (qword_10096DF70 != -1)
    {
      swift_once();
    }

    v9 = qword_1009D0DD0;
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  type metadata accessor for FontUseCase();
  (*(v12 + 56))(v5, 0, 1, v10);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  if (qword_10096E9F8 != -1)
  {
    swift_once();
  }

  v13 = sub_10002849C(&unk_100973B30);
  sub_1000056A8(v13, qword_1009D2B38);
  v14 = [v1 traitCollection];
  Conditional.evaluate<>(in:)();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell()
{
  result = qword_10098D5D0;
  if (!qword_10098D5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005B1128()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1005B11D0()
{
  v1 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_textLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005B12DC@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.title.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_1005B1308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = a4;
  v39 = a2;
  v42 = a3;
  ObjectType = swift_getObjectType();
  v5 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v5 - 8);
  v37 = &ObjectType - v6;
  v41 = type metadata accessor for Shelf.PresentationHints();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10002849C(&unk_1009731F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &ObjectType - v18;
  v40 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v20 = *(v14 + 8);
  v20(v19, v13);
  if (v44 && (String.nilIfEmpty.getter(), v22 = v21, , v22))
  {
    v23 = *&v43[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel];
    v24 = String._bridgeToObjectiveC()();

    [v23 setText:{v24, ObjectType}];

    [v23 setHidden:{0, ObjectType}];
  }

  else
  {
    [*&v43[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel] setHidden:{1, ObjectType}];
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v20(v16, v13);
  static Shelf.PresentationHints.sortable.getter();
  sub_1005B3368(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v25 = v41;
  v26 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v27 = *(v7 + 8);
  v27(v9, v25);
  v27(v12, v25);
  v28 = v43;
  if ((v26 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!v42)
  {
    goto LABEL_11;
  }

  String.nilIfEmpty.getter();
  if (!v29)
  {
    goto LABEL_11;
  }

  if (!v38)
  {

LABEL_11:
    v34 = *&v28[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
    [v34 setMenu:0];
    [v34 setShowsMenuAsPrimaryAction:0];
    [v34 setHidden:1];
    return [v28 setNeedsLayout];
  }

  v30 = *&v28[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
  v31 = v38;
  v32 = v37;
  sub_1005B1EB4();

  v33 = type metadata accessor for UIButton.Configuration();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  UIButton.configuration.setter();
  [v30 setMenu:v31];
  [v30 setShowsMenuAsPrimaryAction:1];
  [v30 setHidden:0];

  return [v28 setNeedsLayout];
}

uint64_t sub_1005B17F8()
{
  qword_10098D608 = type metadata accessor for SpacerDimension();
  qword_10098D610 = sub_1005B3368(&qword_10097A038, &type metadata accessor for SpacerDimension);
  sub_1000056E0(qword_10098D5F0);
  return SpacerDimension.init(constant:)();
}

uint64_t sub_1005B1874()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_10098D618 = v5;
  return result;
}

char *sub_1005B196C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v31 - v16;
  if (qword_10096DF28 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D0CF8);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = [objc_allocWithZone(UIButton) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton] = v22;
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel;
  [*&v27[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel] setHidden:1];
  [v27 addSubview:*&v27[v28]];
  v29 = OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton;
  [*&v27[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton] setHidden:1];
  [v27 addSubview:*&v27[v29]];

  return v27;
}

id sub_1005B1D14()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10097CC90);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareForReuse", v3);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel];
  [v6 setText:0];
  [v6 setHidden:1];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
  v8 = type metadata accessor for UIButton.Configuration();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  UIButton.configuration.setter();
  [v7 setMenu:0];
  [v7 setShowsMenuAsPrimaryAction:0];
  return [v7 setHidden:1];
}

void sub_1005B1EB4()
{
  v0 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_1000367E8();
  if (qword_10096DF30 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  sub_1000056A8(v5, qword_1009D0D10);
  v6 = static UIFont.preferredFont(forUseWith:in:)();
  static UIButton.Configuration.plain()();
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v4;
  *(inited + 40) = v6;

  v8 = NSFontAttributeName;
  v9 = v6;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100970EC0);
  AttributeContainer.init(_:)();
  AttributedString.init(_:attributes:)();
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 56))(v3, 0, 1, v10);
  UIButton.Configuration.attributedTitle.setter();
  v11 = [objc_opt_self() configurationWithFont:v9 scale:1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  if (qword_10096EA08 != -1)
  {
    swift_once();
  }

  v12 = qword_10098D618;
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.contentInsets.setter();
}

void sub_1005B2190(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v4 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  (*(v11 + 16))(v13, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for DirectionalTextAlignment.leading(_:))
  {
    v16 = [v2 traitCollection];
    v17 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v17)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    if (v15 != enum case for DirectionalTextAlignment.trailing(_:))
    {

      (*(v11 + 8))(v13, v10);
      return;
    }

    v19 = [v2 traitCollection];
    v20 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = 2;
    }
  }

  [v14 setAlignment:v18];
  UIButton.configuration.getter();
  v21 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v21 - 8) + 48))(v9, 1, v21))
  {
LABEL_12:
    sub_100146A44(v9, v6);
    UIButton.configuration.setter();

    sub_10002B894(v9, &qword_10097CC90);
    return;
  }

  v22 = UIButton.Configuration.attributedTitle.modify();
  v24 = v23;
  v25 = type metadata accessor for AttributedString();
  if ((*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v22(v28, 0);
    goto LABEL_12;
  }

  v27[1] = v14;
  sub_1002F4FA0();
  v26 = v14;
  AttributedString.subscript.setter();
  v22(v28, 0);
  UIButton.configuration.setter();
}

id sub_1005B2524()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  v8 = [v0 traitCollection];
  UILabel.measure(toFit:with:)();
  v10 = v9;
  v12 = v11;

  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = v13;
  v16 = v15;
  v17 = *&v0[OBJC_IVAR____TtC8AppStore29ProductReviewsShelfHeaderView_sortButton];
  LayoutMarginsAware<>.layoutFrame.getter();
  v18 = [v0 traitCollection];
  UIButton.measure(toFit:with:)();
  v20 = v19;

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMaxX(v28);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMinY(v29);
  if (([v7 isHidden] & 1) != 0 || (objc_msgSend(v17, "isHidden") & 1) != 0 || (v26 = v10, v21 = v10 + 16.0 + v20, LayoutMarginsAware<>.layoutFrame.getter(), Width = CGRectGetWidth(v30), v23 = v26, Width >= v21))
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.trailing(_:), v2);
    sub_1005B2190(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v3 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_1005B2190(v6);
    (*(v3 + 8))(v6, v2);
    LayoutMarginsAware<>.layoutFrame.getter();
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v23;
    v31.size.height = v12;
    CGRectGetMaxY(v31);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v7 setFrame:?];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v17 setFrame:?];
}

id sub_1005B2950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v69 = a2;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v85 = *(v4 - 8);
  v86 = v4;
  __chkstk_darwin(v4);
  v84 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Shelf.PresentationHints();
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v73 = type metadata accessor for DynamicTextAppearance();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v71 = &v67 - v13;
  v76 = type metadata accessor for LabelPlaceholder();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009731F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v67 - v20;
  v22 = type metadata accessor for PageGrid();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.supplementaryPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v27 = v26;
  (*(v23 + 8))(v25, v22);
  v88 = ShelfLayoutContext.traitCollection.getter();
  v79 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v16 + 8);
  v28(v21, v15);
  if (v90 && (String.nilIfEmpty.getter(), v30 = v29, , v30))
  {
    v31 = v70;
    DynamicTextAppearance.init()();
    v32 = v74;
    if (qword_10096DF28 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for FontUseCase();
    sub_1000056A8(v33, qword_1009D0CF8);
    DynamicTextAppearance.withFontUseCase(_:)();
    (*(v72 + 8))(v31, v73);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    LabelPlaceholder.measure(toFit:with:)();
    v87 = v34;
    v89 = v35;
    v78 = v36;
    v77 = v37;
    (*(v75 + 8))(v32, v76);
  }

  else
  {
    v38 = JUMeasurementsZero[1];
    v87 = JUMeasurementsZero[0];
    v89 = v38;
    v39 = JUMeasurementsZero[3];
    v78 = JUMeasurementsZero[2];
    v77 = v39;
  }

  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28(v18, v15);
  v40 = v80;
  static Shelf.PresentationHints.sortable.getter();
  sub_1005B3368(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v41 = v82;
  v42 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v43 = *(v81 + 8);
  v43(v40, v41);
  v43(v10, v41);
  v68 = v27;
  if ((v42 & 1) != 0 && v83 && (String.nilIfEmpty.getter(), v44))
  {
    v45 = v70;
    DynamicTextAppearance.init()();
    v46 = v88;
    if (qword_10096DF30 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for FontUseCase();
    sub_1000056A8(v47, qword_1009D0D10);
    DynamicTextAppearance.withFontUseCase(_:)();
    (*(v72 + 8))(v45, v73);
    LabelPlaceholder.Options.init(rawValue:)();
    v48 = v74;
    LabelPlaceholder.init(_:with:where:)();
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
    v50 = v49;
    if (qword_10096EA08 != -1)
    {
      swift_once();
    }

    [qword_10098D618 size];
    v52 = v50 * v51 + 4.0;
    LabelPlaceholder.measure(toFit:with:)();
    v54 = v53;
    v56 = v55;
    (*(v75 + 8))(v48, v76);
    v57 = v54 + v52;
  }

  else
  {
    v56 = JUMeasurementsZero[1];
    v57 = JUMeasurementsZero[0];
    v46 = v88;
  }

  if ((JUMeasurementsEqual() & 1) != 0 || (JUMeasurementsEqual() & 1) != 0 || v68 >= v87 + 16.0 + v57)
  {
    if (v89 > v56)
    {
      v58 = v89;
    }

    else
    {
      v58 = v56;
    }
  }

  else
  {
    v58 = v89 + v56 + 8.0;
  }

  v59 = objc_opt_self();
  v60 = [v59 fractionalWidthDimension:1.0];
  if (qword_10096EA00 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098D5F0, qword_10098D608);
  ShelfLayoutContext.traitEnvironment.getter();
  v61 = v84;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v63 = v62;
  swift_unknownObjectRelease();
  (*(v85 + 8))(v61, v86);
  v64 = [v59 absoluteDimension:v58 + v63];
  v65 = [objc_opt_self() sizeWithWidthDimension:v60 heightDimension:v64];

  return v65;
}

uint64_t sub_1005B3368(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B33C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v50 = type metadata accessor for PageGrid();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v54);
  v57 = &v47 - v4;
  v5 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v47 - v17;
  v18 = sub_10002849C(&unk_1009731F0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v56 = type metadata accessor for Shelf.ContentType();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v55 = v23;
  ReadOnlyLens.subscript.getter();

  v24 = *(v19 + 8);
  v24(v21, v18);
  v49 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v7, &unk_10098FFB0);
  sub_100094E74(v10, v13);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10002B894(v13, &unk_10098FFB0);
    v25 = 1;
    v26 = v52;
  }

  else
  {
    swift_getKeyPath();
    v26 = v52;
    ReadOnlyLens.subscript.getter();

    v24(v13, v18);
    v25 = 0;
  }

  v27 = v53;
  v28 = v56;
  (*(v53 + 56))(v26, v25, 1, v56);
  v29 = v55;
  v30 = *(v54 + 48);
  v31 = v57;
  (*(v27 + 16))(v57, v55, v28);
  sub_100094EE4(v26, v31 + v30);
  if ((*(v27 + 48))(v31 + v30, 1, v28) == 1)
  {
    v32 = v47;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v34 = v33;
    (*(v48 + 8))(v32, v50);
    v35 = v58;
    v58[3] = &type metadata for CGFloat;
    v35[4] = &protocol witness table for CGFloat;
    *v35 = v34;
    sub_10002B894(v26, &unk_100992460);
    v36 = *(v27 + 8);
    v36(v29, v28);
    sub_10002B894(v31 + v30, &unk_100992460);
    return (v36)(v31, v28);
  }

  else
  {
    v38 = v51;
    sub_100094EE4(v31 + v30, v51);
    v39 = (*(v27 + 88))(v38, v28);
    if (v39 == enum case for Shelf.ContentType.appShowcase(_:) || v39 == enum case for Shelf.ContentType.arcadeShowcase(_:))
    {
      sub_10002B894(v31 + v30, &unk_100992460);
      v42 = *(v27 + 8);
      v42(v31, v28);
      if (qword_10096E6C0 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for StaticDimension();
      v44 = sub_1000056A8(v43, qword_1009D2460);
      v45 = v58;
      v58[3] = v43;
      v45[4] = &protocol witness table for StaticDimension;
      v46 = sub_1000056E0(v45);
      (*(*(v43 - 8) + 16))(v46, v44, v43);
      sub_10002B894(v26, &unk_100992460);
      return (v42)(v29, v28);
    }

    else
    {
      v40 = *(v27 + 8);
      v40(v51, v28);
      v41 = v58;
      v58[3] = &type metadata for Double;
      v41[4] = &protocol witness table for Double;
      *v41 = 0;
      sub_10002B894(v26, &unk_100992460);
      v40(v29, v28);
      return sub_10002B894(v31, &qword_100972A48);
    }
  }
}

uint64_t sub_1005B3AE8@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v43 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v43);
  v46 = &v40 - v1;
  v2 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v11 - 8);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v14;
  v15 = sub_10002849C(&unk_1009731F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v45 = type metadata accessor for Shelf.ContentType();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v44 = v20;
  ReadOnlyLens.subscript.getter();

  v21 = *(v16 + 8);
  v21(v18, v15);
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v7, &unk_10098FFB0);
  sub_100094E74(v4, v10);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_10002B894(v10, &unk_10098FFB0);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    swift_getKeyPath();
    v24 = v40;
    ReadOnlyLens.subscript.getter();

    v21(v10, v15);
    v22 = 0;
    v23 = v24;
  }

  v25 = v41;
  v26 = v45;
  (*(v41 + 56))(v23, v22, 1, v45);
  v27 = v44;
  v28 = *(v43 + 48);
  v29 = v46;
  (*(v25 + 16))(v46, v44, v26);
  sub_100094EE4(v23, v29 + v28);
  v30 = *(v25 + 88);
  v31 = v30(v29, v26);
  v32 = enum case for Shelf.ContentType.horizontalRule(_:);
  v33 = v42;
  if (v31 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    goto LABEL_10;
  }

  if ((*(v25 + 48))(v29 + v28, 1, v26) != 1)
  {
    sub_100094EE4(v29 + v28, v33);
    if (v30(v33, v26) == v32)
    {
      sub_10002B894(v29 + v28, &unk_100992460);
      (*(v25 + 8))(v29, v26);
LABEL_11:
      v34 = v47;
      v47[3] = &type metadata for Double;
      v34[4] = &protocol witness table for Double;
      *v34 = 0;
      sub_10002B894(v23, &unk_100992460);
      return (*(v25 + 8))(v27, v26);
    }

    (*(v25 + 8))(v33, v26);
  }

  if (v30(v29, v26) == enum case for Shelf.ContentType.appShowcase(_:))
  {
LABEL_10:
    sub_10002B894(v29 + v28, &unk_100992460);
    goto LABEL_11;
  }

  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for StaticDimension();
  v37 = sub_1000056A8(v36, qword_1009D2460);
  v38 = v47;
  v47[3] = v36;
  v38[4] = &protocol witness table for StaticDimension;
  v39 = sub_1000056E0(v38);
  (*(*(v36 - 8) + 16))(v39, v37, v36);
  sub_10002B894(v23, &unk_100992460);
  (*(v25 + 8))(v27, v26);
  return sub_10002B894(v29, &qword_100972A48);
}

void sub_1005B42AC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SystemImage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StarRatingControl();
  v114.receiver = v4;
  v114.super_class = v18;
  objc_msgSendSuper2(&v114, "drawRect:", a1, a2, a3, a4);
  v19 = UIGraphicsGetCurrentContext();
  v20 = [v4 tintColor];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 CGColor];

    if (v19)
    {
      CGContextSetFillColorWithColor(v19, v22);
    }

    v104 = v13;
    v105 = v22;
    v106 = v19;
    [v5 bounds];
    CGRectGetMidY(v120);
    v24 = [v5 traitCollection];
    v109 = v5;
    if (qword_10096EA10 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_10098D728;
    v103 = qword_10098D728;
    v115.value._rawValue = 0;
    isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v115, v23).super.isa;
    v102[1] = sub_100005744(0, &qword_1009870A0);
    v111 = UIFontTextStyleTitle2;
    v26 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = static SystemImage.load(_:with:)();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = UITraitCollection.clampingContentSizeCategory(min:max:)(v116, v118).super.isa;
    v36 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = static SystemImage.load(_:with:)();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = UITraitCollection.clampingContentSizeCategory(min:max:)(v117, v119).super.isa;
    v44 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = static SystemImage.load(_:with:)();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v42)
    {
      v121.origin.x = a1;
      v121.origin.y = a2;
      v121.size.width = a3;
      v121.size.height = a4;
      v53.n128_f64[0] = CGRectGetMaxX(v121);
    }

    else
    {
      v53.n128_f64[0] = v51 + 12.0;
      v54.n128_u64[0] = 0;
    }

    v55 = v104;
    v56 = enum case for FloatingPointRoundingRule.down(_:);
    v57 = v112;
    v58 = v113;
    v59 = *(v113 + 104);
    (v59)(v104, enum case for FloatingPointRoundingRule.down(_:), v112, v53, v54);
    CGPoint.rounded(_:)();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC8AppStore17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v68)
    {
      v122.origin.x = a1;
      v122.origin.y = a2;
      v122.size.width = a3;
      v122.size.height = a4;
      CGRectGetMaxX(v122);
    }

    v69 = v112;
    v59(v55, v56, v112);
    CGPoint.rounded(_:)();
    v71 = v70;
    v73 = v72;
    v64(v55, v69);
    if (*&v49[v65] <= 1uLL)
    {
      v74 = v110;
    }

    else
    {
      v74 = v111;
    }

    [(NSString *)v74 drawAtPoint:v71, v73];
    v75 = [v49 traitCollection];
    v76 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v76)
    {
      v123.origin.x = a1;
      v123.origin.y = a2;
      v123.size.width = a3;
      v123.size.height = a4;
      CGRectGetMaxX(v123);
    }

    v77 = v112;
    v59(v55, v56, v112);
    CGPoint.rounded(_:)();
    v79 = v78;
    v81 = v80;
    v64(v55, v77);
    if (*&v49[v65] <= 2uLL)
    {
      v82 = v110;
    }

    else
    {
      v82 = v111;
    }

    [(NSString *)v82 drawAtPoint:v79, v81];
    v83 = [v49 traitCollection];
    v84 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v84)
    {
      v124.origin.x = a1;
      v124.origin.y = a2;
      v124.size.width = a3;
      v124.size.height = a4;
      CGRectGetMaxX(v124);
    }

    v85 = v112;
    v59(v55, v56, v112);
    CGPoint.rounded(_:)();
    v87 = v86;
    v89 = v88;
    v64(v55, v85);
    if (*&v49[v65] <= 3uLL)
    {
      v90 = v110;
    }

    else
    {
      v90 = v111;
    }

    [(NSString *)v90 drawAtPoint:v87, v89];
    v91 = [v49 traitCollection];
    v92 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v92)
    {
      v125.origin.x = a1;
      v125.origin.y = a2;
      v125.size.width = a3;
      v125.size.height = a4;
      CGRectGetMaxX(v125);
    }

    v93 = v112;
    v59(v55, v56, v112);
    CGPoint.rounded(_:)();
    v95 = v94;
    v97 = v96;
    v64(v55, v93);
    v98 = *&v49[v65];
    v100 = v110;
    v99 = v111;
    if (v98 <= 4)
    {
      v101 = v110;
    }

    else
    {
      v101 = v111;
    }

    [(NSString *)v101 drawAtPoint:v95, v97];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005B4D20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_1005B4EAC(v6);
  v7 = *&v5[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_1005B4EAC(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for SystemImage();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_10096EA10 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_10098D728;
  v26.value._rawValue = 0;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v26, v9).super.isa;
  sub_100005744(0, &qword_1009870A0);
  v12 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = static SystemImage.load(_:with:)();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = UITraitCollection.prefersRightToLeftLayouts.getter();

  [v2 bounds];
  MidX = CGRectGetMidX(v27);
  v21 = a1 - (MidX - v18 * 0.5);
  v22 = v18 * 0.5 + MidX - a1;
  if ((v15 & 1) == 0)
  {
    v22 = v21;
  }

  v23 = v22 / (v18 / 5.0);
  if (v23 > 5.0)
  {
    v23 = 5.0;
  }

  if (v23 <= 1.0)
  {
    v23 = 1.0;
  }

  v24 = ceil(v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_1005B5404(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v9, *a4, v7);
}

double *sub_1005B5514()
{
  v1 = v0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  do
  {
    if (v2 >= 5)
    {
      v6 = &selRef_accessibilitySetStarRatingFive;
      if (v2 != 5)
      {
        v4._object = 0x800000010081BA90;
        v4._countAndFlagsBits = 0xD00000000000001ALL;
        v5._countAndFlagsBits = 0;
        v5._object = 0xE000000000000000;
        localizedStringWithCount(_:count:comment:)(v4, v2, v5);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v6 = off_1008C9FA0[v2];
    }

    v7 = *v6;
    v8._object = 0x800000010081BA90;
    v8._countAndFlagsBits = 0xD00000000000001ALL;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v8, v2, v9);
    if (!v7)
    {
      goto LABEL_2;
    }

    v24 = type metadata accessor for StarRatingControl();
    v23[0] = v1;
    v10 = v1;
    v11 = String._bridgeToObjectiveC()();

    v12 = v24;
    if (v24)
    {
      v13 = sub_10002A400(v23, v24);
      v14 = *(v12 - 8);
      v15 = __chkstk_darwin(v13);
      v17 = &v23[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v14 + 8))(v17, v12);
      sub_100007000(v23);
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v11 target:v18 selector:v7];

    swift_unknownObjectRelease();
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v3 = v25;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_1005B5848(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v16 = OBJC_IVAR____TtC8AppStore17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v19._object = 0x800000010081BA30;
  v19._countAndFlagsBits = 0xD000000000000017;
  v20._countAndFlagsBits = 0;
  v20._object = 0xE000000000000000;
  v21 = localizedString(_:comment:)(v19, v20);
  v22._countAndFlagsBits = 0xD00000000000001DLL;
  v22._object = 0x800000010081BA50;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v24 = localizedString(_:comment:)(v22, v23);
  aBlock = v21;

  String.append(_:)(v24);

  v27 = aBlock;
  object = v27._object;
  countAndFlagsBits = v27._countAndFlagsBits;
  sub_100005744(0, &qword_1009729E0);
  v28 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v34 = *(v9 + 8);
  v34(v11, v8);
  v29 = swift_allocObject();
  *(v29 + 16) = __PAIR128__(object, countAndFlagsBits);
  v43 = sub_1005B5F74;
  v44 = v29;
  aBlock._countAndFlagsBits = _NSConcreteStackBlock;
  aBlock._object = 1107296256;
  v41 = sub_100007A08;
  v42 = &unk_1008C9F78;
  v30 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  v31 = v35;
  v32 = v39;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v30);

  (*(v38 + 8))(v31, v32);
  (*(v36 + 8))(v7, v37);
  return (v34)(v15, v8);
}

void sub_1005B5CB0()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = String._bridgeToObjectiveC()();
  UIAccessibilityPostNotification(v0, v1);
}

id sub_1005B5F18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1005B5F7C(char a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EA10 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_10098D728;
  v15.value._rawValue = 0;
  v7.super.isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v15, v4).super.isa;
  sub_100005744(0, &qword_1009870A0);
  v8 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = static SystemImage.load(_:with:)();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_1005B616C(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_1005B4EAC(v2);
    v4 = OBJC_IVAR____TtC8AppStore17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC8AppStore17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_1005B632C(v0, &v6);
  if (!v7)
  {
    return 0xD00000000000003ALL;
  }

  sub_100005A38(&v6, v5);
  _StringGuts.grow(_:)(49);
  v1._object = 0x800000010081BB20;
  v1._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v1);
  sub_10002849C(&unk_100975858);
  _print_unlocked<A, B>(_:_:)();
  v2._countAndFlagsBits = 0xD000000000000019;
  v2._object = 0x800000010081BB40;
  String.append(_:)(v2);
  v3 = 0;
  sub_100007000(v5);
  return v3;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10002849C(&unk_100974490);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  BaseObjectGraph.optional<A>(_:)();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10002B894(v5, &unk_100972A00);
    sub_10002849C(&qword_1009764A0);
    sub_1005B66CC();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return Promise.__allocating_init(error:)();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = ActionDispatcher.targetQueue.getter();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_1000076C0();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_100005A38(&v18, v21);
    }

    else
    {
      v14 = type metadata accessor for SyncTaskScheduler();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_1000056E0(v21);
      SyncTaskScheduler.init()();
      if (*(&v19 + 1))
      {
        sub_10002B894(&v18, &qword_10098D780);
      }
    }

    sub_10002849C(&qword_1009764A0);
    v15 = Promise.__allocating_init()();
    v16 = swift_allocObject();
    *(v16 + 16) = CompoundAction.actions.getter();
    *(v16 + 24) = 0;
    sub_10002A400(v21, v22);
    sub_10002C0AC(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_100005A38(&v18, (v17 + 5));

    dispatch thunk of TaskScheduler.schedule(task:)();

    (*(v7 + 8))(v9, v6);

    sub_100007000(v21);
    return v15;
  }
}

unint64_t sub_1005B66CC()
{
  result = qword_10098D778;
  if (!qword_10098D778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D778);
  }

  return result;
}

uint64_t sub_1005B6720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for ActionOutcome();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
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
    Promise.resolve(_:)();
    return (*(v9 + 8))(v11, v8);
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
  sub_1005D0214(v15, 1, a3);
  sub_10002C0AC(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_100005A38(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();
}

uint64_t sub_1005B6A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for ActionOutcome();
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
      sub_1005B66CC();
      swift_allocError();
      v27 = v26;
      v26[3] = type metadata accessor for Action();
      v27[4] = sub_1005B6ED8(&qword_100989C80, &type metadata accessor for Action);
      *v27 = a6;

      Promise.reject(_:)();
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
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
    Promise.resolve(_:)();
    return (*(v13 + 8))(v15, v12);
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
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
  sub_1005D0214(v28, 1, a4);
  sub_10002C0AC(a5, v32);
  v30 = swift_allocObject();
  v30[2] = a2;
  v30[3] = a3;
  v30[4] = a4;
  sub_100005A38(v32, (v30 + 5));
  v30[10] = v28;
  swift_retain_n();

  Promise.then(perform:orCatchError:on:)();
}

uint64_t sub_1005B6DD0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1005B6DE8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1005B6E38(uint64_t result, unsigned int a2, unsigned int a3)
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

double sub_1005B6E94(uint64_t a1, int a2)
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

uint64_t sub_1005B6ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005B6F2C()
{

  sub_100007000(v0 + 40);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1005B6FA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(_BYTE *, unint64_t))
{
  v8 = v7;
  v112 = a7;
  v121 = a6;
  v93 = a5;
  v120 = a4;
  v114 = a3;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v11 - 8);
  v106 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for AspectRatio();
  v98 = *(v101 - 8);
  __chkstk_darwin(v101);
  v97 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  v17 = type metadata accessor for LockupMediaLayout.DisplayType();
  v113 = *(v17 - 8);
  __chkstk_darwin(v17);
  v116 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v104 = &v93 - v20;
  __chkstk_darwin(v21);
  v110 = &v93 - v22;
  __chkstk_darwin(v23);
  v117 = &v93 - v24;
  v25 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v25 - 8);
  v96 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  v100 = type metadata accessor for LockupMediaLayout.Metrics();
  v111 = *(v100 - 8);
  __chkstk_darwin(v100);
  v105 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v109 = &v93 - v32;
  __chkstk_darwin(v33);
  v102 = &v93 - v34;
  v35 = OBJC_IVAR____TtC8AppStore15LockupMediaView_imageViews;
  swift_beginAccess();
  v119 = v35;
  v36 = *(v7 + v35);
  if (v36 >> 62)
  {
    goto LABEL_103;
  }

  for (i = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v107 = v8;
    v115 = v17;
    v99 = a1;
    v108 = v29;
    v38 = &v124;
    v103 = v16;
    if (!i)
    {
      goto LABEL_11;
    }

    if (i >= 1)
    {
      v94 = a2;

      v39 = 0;
      do
      {
        if ((v36 & 0xC000000000000001) != 0)
        {
          v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v40 = *&v36[v39 + 4];
        }

        v41 = v40;
        ++v39;
        v122[0] = v40;
        type metadata accessor for BorderedScreenshotView();
        sub_1005B8B74(&qword_100973D78, type metadata accessor for BorderedScreenshotView);
        v42 = v41;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
        sub_10003D614(v123);
        v43 = *&v42[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
        v125.value.super.isa = 0;
        v125.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v125, v44);
      }

      while (i != v39);

      v8 = v107;
      a2 = v94;
      v17 = v115;
LABEL_11:
      v118 = OBJC_IVAR____TtC8AppStore15LockupMediaView_videoView;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v46 = Strong;
        [*(Strong + qword_100988CC0) setImage:{0, v93}];
        v122[0] = v46;
        type metadata accessor for VideoView();
        sub_1005B8B74(&qword_100992450, type metadata accessor for VideoView);
        v47 = v46;
        v8 = v107;
        v48 = v47;
        AnyHashable.init<A>(_:)();
        ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();

        sub_10003D614(v123);
      }

      v49 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
      swift_beginAccess();
      v50 = v8;
      v51 = v111;
      v52 = *(v111 + 16);
      v53 = v102;
      i = v100;
      v52(v102, v50 + v49, v100);
      LockupMediaLayout.Metrics.boundingAspectRatio.getter();
      v54 = *(v51 + 8);
      v54(v53, i);
      v55 = v109;
      v52(v109, v50 + v49, i);
      v56 = v110;
      LockupMediaLayout.Metrics.displayType.getter();
      v111 = v51 + 8;
      v95 = v54;
      v54(v55, i);
      if (v114)
      {
        v57 = Screenshots.mediaPlatform.getter();
      }

      else
      {
        v57 = 0;
      }

      a1 = a2;
      v29 = v99;
      v36 = v113;
      v58 = v117;
      v7 = v56;
      sub_1001B70FC(v57, v112, v117);

      v59 = *(v36 + 1);
      v113 = v36 + 1;
      v112 = v59;
      v59(v56, v17);
      v123[3] = &type metadata for CGFloat;
      v123[4] = &protocol witness table for CGFloat;
      v123[0] = 0x4021000000000000;
      sub_10002C0AC(v123, v122);
      v60 = *(v36 + 2);
      v110 = (v36 + 2);
      v109 = v60;
      (v60)(v104, v58, v17);
      v8 = v107;
      if (a2 | v29)
      {
        AspectRatio.init(_:_:)();
        goto LABEL_24;
      }

      v61 = sub_1001B9B24(v114, v120, 0, 1);
      v35 = v116;
      if (v61 >> 62)
      {
        v91 = v61;
        v92 = _CocoaArrayWrapper.endIndex.getter();
        v61 = v91;
        v35 = v116;
        if (v92)
        {
          goto LABEL_19;
        }
      }

      else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        if ((v61 & 0xC000000000000001) != 0)
        {
          goto LABEL_113;
        }

        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v62)
        {

          goto LABEL_22;
        }

        __break(1u);
        goto LABEL_115;
      }

      AspectRatio.init(_:_:)();
      goto LABEL_25;
    }

    __break(1u);
LABEL_105:
    v36 = sub_100033938((v38 > 1), v120, 1, v36);
LABEL_27:

    v17 = v115;
LABEL_31:
    v95(v105, i);
    v112(v117, v17);
    sub_10002B894(v108, &unk_1009732A0);
    *(v36 + 2) = v120;
    v64 = &v36[2 * v35];
    *(v64 + 4) = v7;
    *(v64 + 40) = 0;
    if (a1 | v29)
    {
      break;
    }

LABEL_76:
    v17 = 0;
    v29 = (v36 + 5);
    v16 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    while (v17 < *(v36 + 2))
    {
      a2 = *(v29 - 8);
      a1 = *v29;
      v123[0] = _swiftEmptyArrayStorage;
      v79 = swift_unknownObjectWeakLoadStrong();

      if (v79)
      {
        v80 = v79;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v81 = *(v8 + v16);
      if (v81)
      {
        v82 = v81;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v83 = *(v8 + v119);
      if (v83 >> 62)
      {
        sub_100005744(0, &qword_100972EB0);

        v84 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {
        swift_bridgeObjectRetain_n();
        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100005744(0, &qword_100972EB0);
        v84 = v83;
      }

      v7 = v123;
      sub_1003946F8(v84);
      if (v123[0] >> 62)
      {
        v7 = v123[0];
        v35 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v35 = *((v123[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v17 < v35)
      {
        v85 = sub_1001B79D8();
        v7 = v85;
        if ((v85 & 0xC000000000000001) != 0)
        {
          v86 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_101;
          }

          v86 = *(v85 + 8 * v17 + 32);
        }

        v87 = v86;

        v122[0] = v87;
        sub_100005744(0, &qword_100972EB0);
        sub_100081618();
        AnyHashable.init<A>(_:)();
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v88 = swift_allocObject();
        *(v88 + 16) = v35;
        *(v88 + 24) = a1;
        *(v88 + 32) = v17;

        v7 = v121;
        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v123, &qword_10096FB90);
      }

      ++v17;
      v29 += 16;
      if (v120 == v17)
      {
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    ;
  }

  while (1)
  {
    a1 = *(v36 + 4);

    v65 = sub_1001B79D8();
    if (v65 >> 62)
    {
      v89 = v65;
      v90 = _CocoaArrayWrapper.endIndex.getter();
      v65 = v89;
      if (!v90)
      {
LABEL_107:

        v67 = 0;
        goto LABEL_108;
      }
    }

    else if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

    if ((v65 & 0xC000000000000001) != 0)
    {
      v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_37;
    }

    if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v66 = v65[4];
LABEL_37:
      v67 = v66;

LABEL_108:
      v122[0] = v67;
      sub_10002849C(&qword_100980960);
      sub_1005B8BCC();
      AnyHashable.init<A>(_:)();
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v123, &qword_10096FB90);
    }

    __break(1u);
LABEL_113:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:

    Artwork.size.getter();
    AspectRatio.init(_:_:)();

LABEL_24:
    v35 = v116;
LABEL_25:
    a2 = v96;
    sub_100031660(v108, v96, &unk_1009732A0);
    LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
    sub_100007000(v123);
    v63 = v97;
    LockupMediaLayout.Metrics.mediaAspectRatio.getter();
    AspectRatio.height(fromWidth:)();
    (*(v98 + 8))(v63, v101);
    if (a1)
    {

      Video.preview.getter();
      v7 = Artwork.config(_:mode:prefersLayeredImage:)();
      v36 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v38 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 >= v38 >> 1)
      {
        goto LABEL_105;
      }

      goto LABEL_27;
    }

    if (v29)
    {

      v7 = Artwork.config(_:mode:prefersLayeredImage:)();
      v36 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
      v35 = *(v36 + 2);
      v62 = *(v36 + 3);
      v120 = v35 + 1;
      if (v35 < v62 >> 1)
      {
LABEL_30:

        goto LABEL_31;
      }

LABEL_115:
      v36 = sub_100033938((v62 > 1), v120, 1, v36);
      goto LABEL_30;
    }

    v68 = LockupMediaLayout.DisplayType.numberOfViews.getter();
    v7 = sub_1001B9B24(v114, v120, v68, 0);
    result = static LockupMediaLayout.mediaSize(using:fitting:with:)();
    v70 = v7;
    if (v7 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v70 = v7;
      i = result;
    }

    else
    {
      i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v94 = 0;
    if (i)
    {
      break;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_74:

    v95(v105, v100);
    v112(v117, v17);
    sub_10002B894(v108, &unk_1009732A0);
    v120 = *(v36 + 2);
    if (!v120)
    {
    }

    a1 = v94;
    v29 = v99;
    if (!(v94 | v99))
    {
      goto LABEL_76;
    }
  }

  if (i >= 1)
  {
    a2 = 0;
    v104 = (v70 & 0xC000000000000001);
    v103 = (v36 + 11);
    LODWORD(v102) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    LODWORD(v98) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v36 = _swiftEmptyArrayStorage;
    v101 = v70;
    while (1)
    {
      if (v104)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v70 + 8 * a2 + 32);
      }

      (v109)(v35, v117, v17);
      v71 = (*v103)(v35, v17);
      if (v71 == v102)
      {
        break;
      }

      if (v71 == v98)
      {
        goto LABEL_49;
      }

      v16 = dispatch thunk of Artwork.isLandscape.getter();
      v112(v35, v17);
LABEL_51:
      if (!v120)
      {
        goto LABEL_62;
      }

      v7 = v120;
      v72 = Trailers.videos.getter();
      if (v72 >> 62)
      {
        v35 = v72;
        v74 = _CocoaArrayWrapper.endIndex.getter();
        v72 = v35;
        if (!v74)
        {
LABEL_61:

          goto LABEL_62;
        }
      }

      else if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      if ((v72 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_102;
        }
      }

      type metadata accessor for Artwork();
      a1 = Video.preview.getter();
      v73 = static Artwork.== infix(_:_:)();

      if ((v73 & 1) == 0)
      {

LABEL_62:
        if (v114)
        {
          v75 = Screenshots.mediaPlatform.getter();
        }

        else
        {
          v75 = 0;
        }

        type metadata accessor for Screenshots();
        a1 = v106;
        sub_10061B788(v75, v106);

        CGSize.subtracting(insets:)();
        v7 = Artwork.config(_:mode:prefersLayeredImage:)();
        sub_1001BABC8(a1);
        goto LABEL_66;
      }

      v7 = Artwork.config(_:mode:prefersLayeredImage:)();

LABEL_66:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_100033938(0, *(v36 + 2) + 1, 1, v36);
      }

      v77 = *(v36 + 2);
      v76 = *(v36 + 3);
      if (v77 >= v76 >> 1)
      {
        v36 = sub_100033938((v76 > 1), v77 + 1, 1, v36);
      }

      ++a2;

      *(v36 + 2) = v77 + 1;
      v78 = &v36[2 * v77];
      *(v78 + 4) = v7;
      *(v78 + 40) = v16 & 1;
      v17 = v115;
      v35 = v116;
      v70 = v101;
      if (i == a2)
      {
        goto LABEL_74;
      }
    }

    v112(v35, v17);
LABEL_49:
    v16 = 0;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}