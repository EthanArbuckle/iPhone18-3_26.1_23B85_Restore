uint64_t sub_1003781FC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1003782B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchCollectionLayoutAttributes();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100378390(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 configurationWithTextStyle:v6];

  *a3 = v7;
}

uint64_t sub_1003783FC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  sub_100005644(v4, qword_1009CFCD8);
  v28 = sub_1000056A8(v4, qword_1009CFCD8);
  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v31 = sub_1000056A8(v5, qword_1009D1178);
  v6 = *(v5 - 8);
  v33 = *(v6 + 16);
  v34 = v6 + 16;
  v33(v3, v31, v5);
  v35 = enum case for FontSource.useCase(_:);
  v7 = v1 + 13;
  v36 = v1[13];
  v36(v3);
  v8 = type metadata accessor for StaticDimension();
  v51[3] = v8;
  v51[4] = &protocol witness table for StaticDimension;
  v30 = v8;
  sub_1000056E0(v51);
  v49 = v0;
  v50 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v48);
  v10 = v1 + 2;
  v32 = v1[2];
  v32(v9, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v29 = v1[1];
  v29(v3, v0);
  v11 = v33;
  v33(v3, v31, v5);
  (v36)(v3, v35, v0);
  v49 = v8;
  v50 = &protocol witness table for StaticDimension;
  sub_1000056E0(v48);
  v46 = v0;
  v47 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v45);
  v32(v12, v3, v0);
  v25 = v1 + 1;
  StaticDimension.init(_:scaledLike:)();
  v13 = v29;
  v29(v3, v0);
  v27 = v5;
  v11(v3, v31, v5);
  v31 = v7;
  (v36)(v3, v35, v0);
  v46 = v30;
  v47 = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v42);
  v26 = v10;
  v32(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13(v3, v0);
  if (qword_10096E0B8 != -1)
  {
    swift_once();
  }

  v15 = v27;
  v24 = sub_1000056A8(v27, qword_1009D11A8);
  v33(v3, v24, v15);
  v16 = v35;
  (v36)(v3, v35, v0);
  v17 = v30;
  v43 = v30;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v39);
  v19 = v32;
  v32(v18, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v20 = v29;
  v29(v3, v0);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39[0] = 0;
  v33(v3, v24, v15);
  (v36)(v3, v16, v0);
  v38[3] = v17;
  v38[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v37);
  v19(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v20(v3, v0);
  return PrivacyCategoryLayout.Metrics.init(textLeadingMargin:titleTopSpace:iconHorizontalCenterMargin:iconSize:dataTypesTopSpace:dataTypesBottomSpace:bottomMargin:)();
}

char *sub_100378980(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v35 - v16;
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D1178);
  v20 = *(v18 - 8);
  (*(v20 + 16))(v17, v19, v18);
  (*(v20 + 56))(v17, 0, 1, v18);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 setClipsToBounds:0];
  v27 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView]];
  v28 = *&v26[v27];
  sub_100005744(0, &qword_100970180);
  v29 = v28;
  v30 = static UIColor.primaryText.getter();
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel]];
  v32 = *&v26[v31];
  v33 = static UIColor.primaryText.getter();
  [v32 setTextColor:v33];

  return v26;
}

id sub_100378DCC()
{
  v1 = v0;
  v57 = type metadata accessor for PrivacyCategoryStyle();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v54 = &v51 - v5;
  __chkstk_darwin(v6);
  v56 = &v51 - v7;
  v8 = type metadata accessor for DirectionalTextAlignment();
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  *&v12 = __chkstk_darwin(v11 - 8).n128_u64[0];
  v14 = &v51 - v13;
  v15 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel];
  v16 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category;
  v17 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category];
  if (v17)
  {

    PrivacyCategory.title.getter();

    v17 = String._bridgeToObjectiveC()();
  }

  [v15 setText:{v17, v12}];

  v18 = &StringUserDefaultsDebugSetting;
  if (*&v1[v16])
  {
    v53 = v15;

    v19 = PrivacyCategory.dataTypes.getter();

    if (*(v19 + 16))
    {
      v20 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel;
      v21 = *&v1[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel];
      if (v21)
      {
        goto LABEL_15;
      }

      if (qword_10096E0B8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for FontUseCase();
      v23 = sub_1000056A8(v22, qword_1009D11A8);
      v24 = *(v22 - 8);
      (*(v24 + 16))(v14, v23, v22);
      (*(v24 + 56))(v14, 0, 1, v22);
      (*(v52 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v8);
      v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v26 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v27 = *&v1[v20];
      if (v27)
      {
        [v27 removeFromSuperview];
        v28 = *&v1[v20];
      }

      else
      {
        v28 = 0;
      }

      *&v1[v20] = v26;
      v32 = v26;

      sub_100005744(0, &qword_100970180);
      v33 = v32;
      v34 = static UIColor.secondaryText.getter();
      [v33 setTextColor:v34];

      [v1 addSubview:v33];
      [v1 setNeedsLayout];

      v21 = *&v1[v20];
      if (v21)
      {
LABEL_15:
        v58 = v19;
        v35 = v21;
        sub_10002849C(&unk_100977380);
        sub_10015872C();
        BidirectionalCollection<>.joined(separator:)();

        v36 = String._bridgeToObjectiveC()();

        [v35 setText:v36];
      }

      else
      {
      }

      v31 = v56;
      v30 = v57;
      v37 = *&v1[v20];
      v18 = &StringUserDefaultsDebugSetting;
      if (v37)
      {
        [v37 setHidden:0];
      }

      goto LABEL_18;
    }
  }

  v29 = *&v1[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel];
  v31 = v56;
  v30 = v57;
  if (v29)
  {
    [v29 setHidden:1];
  }

LABEL_18:
  if (*&v1[v16])
  {

    v38 = v54;
    PrivacyCategory.style.getter();

    (*(v2 + 32))(v31, v38, v30);
    v39 = v55;
    (*(v2 + 16))(v55, v31, v30);
    v40 = (*(v2 + 88))(v39, v30);
    if (v40 == enum case for PrivacyCategoryStyle.productPage(_:))
    {
      if (qword_10096E0A8 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for FontUseCase();
      v42 = v41;
      v43 = qword_1009D1178;
LABEL_27:
      v44 = sub_1000056A8(v41, v43);
      v45 = *(v42 - 8);
      (*(v45 + 16))(v14, v44, v42);
      (*(v45 + 56))(v14, 0, 1, v42);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      (*(v2 + 8))(v31, v30);
      return [v1 v18[41].base_meths];
    }

    if (v40 == enum case for PrivacyCategoryStyle.detailPage(_:))
    {
      if (qword_10096E0B0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for FontUseCase();
      v42 = v41;
      v43 = qword_1009D1190;
      goto LABEL_27;
    }

    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for FontUseCase();
    v47 = sub_1000056A8(v46, qword_1009D1178);
    v48 = *(v46 - 8);
    (*(v48 + 16))(v14, v47, v46);
    (*(v48 + 56))(v14, 0, 1, v46);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v49 = *(v2 + 8);
    v49(v31, v30);
    v49(v55, v30);
  }

  return [v1 v18[41].base_meths];
}

uint64_t sub_1003795C4()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for PrivacyCategoryLayout();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v26 - v13;
  v43.receiver = v0;
  v43.super_class = ObjectType;
  v29 = ObjectType;
  objc_msgSendSuper2(&v43, "layoutSubviews", v12);

  sub_100379904(v15, v0, v14);

  (*(v8 + 16))(v10, v14, v7);
  v16 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView];
  v41 = type metadata accessor for ArtworkView();
  v42 = &protocol witness table for UIView;
  v40 = v16;
  v17 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel];
  v18 = type metadata accessor for DynamicTypeLabel();
  v38 = v18;
  v39 = &protocol witness table for UILabel;
  v37 = v17;
  v19 = *&v0[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel];
  if (v19)
  {
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v33 = 0;
    v34 = 0;
  }

  v32 = v19;
  v35 = v18;
  v36 = v20;
  v21 = v16;
  v22 = v17;
  v23 = v19;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v24 = v28;
  PrivacyCategoryLayout.placeChildren(relativeTo:in:)();
  (*(v30 + 8))(v24, v31);
  (*(v4 + 8))(v6, v27);
  return (*(v8 + 8))(v14, v7);
}

void sub_100379904(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v5 = type metadata accessor for PrivacyCategoryStyle();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  __chkstk_darwin(v10);
  v50 = &v46 - v11;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v47 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontSource();
  v54 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for StaticDimension();
  v18 = *(v53 - 8);
  __chkstk_darwin(v53);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DA28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009CFCD8);
  (*(*(v21 - 8) + 16))(a3, v22, v21);
  v23 = sub_10037B094(a1);
  if (v23)
  {
    v24 = v23;
    [v23 size];
    PrivacyCategoryLayout.Metrics.iconSize.setter();

    if (!a1)
    {
      return;
    }
  }

  else
  {
    v46 = a3;
    if (qword_10096E0A0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for FontUseCase();
    v26 = sub_1000056A8(v25, qword_1009D1160);
    (*(*(v25 - 8) + 16))(v17, v26, v25);
    v27 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v15;
    v60 = &protocol witness table for FontSource;
    v28 = sub_1000056E0(v58);
    (*(v27 + 16))(v28, v17, v15);
    StaticDimension.init(_:scaledLike:)();
    (*(v27 + 8))(v17, v15);
    static Dimensions.defaultRoundingRule.getter();
    v29 = v53;
    AnyDimension.value(in:rounded:)();
    (*(v47 + 8))(v14, v12);
    PrivacyCategoryLayout.Metrics.iconSize.setter();
    (*(v18 + 8))(v20, v29);
    if (!a1)
    {
      return;
    }
  }

  PrivacyCategory.style.getter();
  v31 = v50;
  v30 = v51;
  v32 = v52;
  (*(v51 + 32))(v50, v9, v52);
  v33 = v49;
  (*(v30 + 16))(v49, v31, v32);
  v34 = (*(v30 + 88))(v33, v32);
  if (v34 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v36 = v35;
    v37 = qword_1009D1178;
LABEL_17:
    v38 = sub_1000056A8(v35, v37);
    (*(*(v36 - 8) + 16))(v17, v38, v36);
    v39 = v54;
    (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
    v59 = v53;
    v60 = &protocol witness table for StaticDimension;
    sub_1000056E0(v58);
    v56 = v15;
    v57 = &protocol witness table for FontSource;
    v40 = sub_1000056E0(v55);
    (*(v39 + 16))(v40, v17, v15);
    StaticDimension.init(_:scaledLike:)();
    (*(v39 + 8))(v17, v15);
    PrivacyCategoryLayout.Metrics.titleTopSpace.setter();
    (*(v30 + 8))(v31, v32);
    return;
  }

  if (v34 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_10096E0B0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for FontUseCase();
    v36 = v35;
    v37 = qword_1009D1190;
    goto LABEL_17;
  }

  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for FontUseCase();
  v42 = sub_1000056A8(v41, qword_1009D1178);
  (*(*(v41 - 8) + 16))(v17, v42, v41);
  v43 = v54;
  (*(v54 + 104))(v17, enum case for FontSource.useCase(_:), v15);
  v59 = v53;
  v60 = &protocol witness table for StaticDimension;
  sub_1000056E0(v58);
  v56 = v15;
  v57 = &protocol witness table for FontSource;
  v44 = sub_1000056E0(v55);
  (*(v43 + 16))(v44, v17, v15);
  StaticDimension.init(_:scaledLike:)();
  (*(v43 + 8))(v17, v15);
  PrivacyCategoryLayout.Metrics.titleTopSpace.setter();
  v45 = *(v30 + 8);
  v45(v31, v32);
  v45(v33, v32);
}

double sub_10037A194(uint64_t a1)
{
  v26 = type metadata accessor for PrivacyCategoryLayout();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;

  sub_100379904(v13, a1, v12);

  (*(v7 + 16))(v9, v12, v6);
  v14 = *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView);
  v36 = type metadata accessor for ArtworkView();
  v37 = &protocol witness table for UIView;
  v35 = v14;
  v15 = *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_titleLabel);
  v16 = type metadata accessor for DynamicTypeLabel();
  v33 = v16;
  v34 = &protocol witness table for UILabel;
  v32 = v15;
  v17 = *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_dataTypesLabel);
  if (v17)
  {
    v18 = &protocol witness table for UILabel;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v28 = 0;
    v29 = 0;
  }

  v27 = v17;
  v30 = v16;
  v31 = v18;
  v19 = v14;
  v20 = v15;
  v21 = v17;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  PrivacyCategoryLayout.measurements(fitting:in:)();
  v23 = v22;
  (*(v3 + 8))(v5, v26);
  (*(v7 + 8))(v12, v6);
  return v23;
}

void sub_10037A4D4(void *a1)
{
  if (a1)
  {
    v1 = [a1 imageWithRenderingMode:2];
  }

  else
  {
    v1 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView);

    v6.value.super.isa = v1;
    v6.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v6, v5);
  }
}

uint64_t sub_10037A62C(void *a1, void *a2)
{
  v64 = type metadata accessor for PrivacyCategoryLayout();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v61 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v4;
  __chkstk_darwin(v5);
  v62 = &v48 - v6;
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v53 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivacyCategoryStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for PrivacyCategoryLayout.Metrics();
  v59 = *(v67 - 8);
  __chkstk_darwin(v67);
  v54 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v65 = a2;
  sub_100379904(a1, a2, &v48 - v19);
  v58 = v20;
  PrivacyCategoryLayout.Metrics.iconSize.getter();
  v55 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v56 = LayoutViewPlaceholder.init(representing:)();
  v66 = a1;
  PrivacyCategory.style.getter();
  v21 = (*(v11 + 88))(v13, v10);
  v69 = v14;
  v57 = v7;
  if (v21 == enum case for PrivacyCategoryStyle.productPage(_:))
  {
    if (qword_10096E0A8 != -1)
    {
      swift_once();
    }

    v22 = qword_1009D1178;
LABEL_9:
    v23 = sub_1000056A8(v14, v22);
    (*(v68 + 16))(v16, v23, v14);
    goto LABEL_13;
  }

  if (v21 == enum case for PrivacyCategoryStyle.detailPage(_:))
  {
    if (qword_10096E0B0 != -1)
    {
      swift_once();
    }

    v22 = qword_1009D1190;
    goto LABEL_9;
  }

  if (qword_10096E0A8 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v14, qword_1009D1178);
  (*(v68 + 16))(v16, v24, v14);
  (*(v11 + 8))(v13, v10);
LABEL_13:
  v25 = v65;
  sub_100005744(0, &qword_1009730E0);
  v26 = [v25 traitCollection];
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyCategory.title.getter();
  v28 = type metadata accessor for Feature();
  v76[3] = v28;
  v29 = sub_100085D7C();
  v52 = v16;
  v50 = v29;
  v76[4] = v29;
  v30 = sub_1000056E0(v76);
  v31 = *(*(v28 - 8) + 104);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v48 = v31;
  v31(v30);
  v32 = v27;
  isFeatureEnabled(_:)();
  sub_100007000(v76);
  v51 = v32;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33 = *(v53 + 8);
  v34 = v57;
  v33(v9, v57);
  if (qword_10096E0B8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v69, qword_1009D11A8);
  v35 = [v65 traitCollection];
  v36 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v75[0] = PrivacyCategory.dataTypes.getter();
  sub_10002849C(&unk_100977380);
  sub_10015872C();
  BidirectionalCollection<>.joined(separator:)();

  v75[3] = v28;
  v75[4] = v50;
  v37 = sub_1000056E0(v75);
  v48(v37, v49, v28);
  v66 = v36;
  isFeatureEnabled(_:)();
  sub_100007000(v75);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33(v9, v34);
  v38 = v59;
  v39 = v58;
  (*(v59 + 16))(v54, v58, v67);
  v73 = v55;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v72 = v56;
  sub_10002C0AC(v76, v71);
  sub_10002C0AC(v75, v70);

  v40 = v62;
  PrivacyCategoryLayout.init(metrics:iconView:titleLabel:dataTypesLabel:)();
  v41 = v63;
  v42 = v61;
  v43 = v64;
  (*(v63 + 16))(v61, v40, v64);
  v44 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v45 = swift_allocObject();
  (*(v41 + 32))(v45 + v44, v42, v43);
  swift_allocObject();
  v46 = LayoutViewPlaceholder.init(measureWith:)();

  (*(v41 + 8))(v40, v43);
  sub_100007000(v75);
  sub_100007000(v76);
  (*(v68 + 8))(v52, v69);
  (*(v38 + 8))(v39, v67);
  return v46;
}

uint64_t sub_10037B094(uint64_t a1)
{
  if (a1 && (PrivacyCategory.prefersSmallArtwork.getter() & 1) != 0)
  {
    if (qword_10096DA20 != -1)
    {
      swift_once();
    }

    v2 = &qword_100981A58;
  }

  else
  {
    if (qword_10096DA18 == -1)
    {
      if (!a1)
      {
        return 0;
      }
    }

    else
    {
      swift_once();
      if (!a1)
      {
        return 0;
      }
    }

    v2 = &qword_100981A50;
  }

  v3 = *v2;
  v4 = PrivacyCategory.artwork.getter();
  if ((dispatch thunk of Artwork.isLocalImage.getter() & 1) == 0)
  {

LABEL_13:

    return 0;
  }

  v5 = v3;
  if (dispatch thunk of Artwork.isSystemImage.getter())
  {
    v6 = static SystemImage.load(artwork:with:includePrivateImages:)();
    goto LABEL_18;
  }

  if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = sub_100330100(v4, v3);
LABEL_18:
  v8 = v6;

  result = v8;
  if (!v8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10037B1EC()
{
  result = qword_100981AA8;
  if (!qword_100981AA8)
  {
    type metadata accessor for GameCenterPlayerProfileAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981AA8);
  }

  return result;
}

uint64_t sub_10037B24C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = type metadata accessor for FlowOrigin();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for FlowAnimationBehavior();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FlowPresentationContext();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = type metadata accessor for FlowPage();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = type metadata accessor for URL();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = type metadata accessor for ReferrerData();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = GameCenterPlayerProfileAction.playerId.getter();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  static ActionMetrics.notInstrumented.getter();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v25 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v26 = sub_1005D01FC(v25, 1, v33);

  return v26;
}

char *sub_10037B72C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v11 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) init];
  v30.receiver = v4;
  v30.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView;
  v14 = *&v12[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView];
  v15 = v12;
  [v15 addSubview:v14];
  v16 = OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_materialView]];
  v17 = *&v12[v13];
  v17[OBJC_IVAR____TtC8AppStore12GradientView_kind] = 2;
  v18 = v17;
  v19 = [v18 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  [*&v12[v13] setAlpha:0.5];
  v20 = *&v12[v13];
  v21 = [v20 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v22 = *&v12[v13];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v24 = *&v15[v16];
  sub_10002849C(&qword_100973210);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B15F0;
  v26 = objc_opt_self();
  v27 = v24;
  result = [v26 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v25 + 32) = result;
    *(v25 + 40) = [objc_opt_self() colorEffectSaturate:1.5];
    sub_10037C4D0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v27 setBackgroundEffects:isa];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double *sub_10037BBE4()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ShelfBackgroundMaterialGradientColors.oneColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    sub_10002849C(&qword_100973210);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007B0B70;
    *(result + 4) = v8;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.twoColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10002849C(&qword_100973210);
    result = swift_allocObject();
    v10 = *v6;
    *(result + 1) = xmmword_1007B15F0;
    *(result + 2) = v10;
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.threeColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    v11 = *v6;
    sub_10002849C(&qword_100973210);
    result = swift_allocObject();
    *(result + 1) = xmmword_1007B48F0;
    *(result + 4) = v11;
    *(result + 5) = vextq_s8(*(v6 + 8), *(v6 + 8), 8uLL);
  }

  else if (v7 == enum case for ShelfBackgroundMaterialGradientColors.fourColor(_:))
  {
    (*(v3 + 96))(v6, v2);
    sub_10002849C(&qword_100973210);
    result = swift_allocObject();
    v12 = *v6;
    v13 = *(v6 + 1);
    *(result + 1) = xmmword_1007BB060;
    *(result + 2) = v12;
    *(result + 3) = v13;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_10037BEF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ShelfBackground();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfBackgroundMaterialGradientColors();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4, v10);
  if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v5 + 96))(v7, v4);
    v13 = *(sub_10002849C(&qword_100978410) + 48);
    (*(v9 + 32))(v12, v7, v8);
    v14 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    v41 = v12;
    v15 = sub_10037BBE4();
    v16 = v15;
    v44 = *&v2[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView];
    v42 = v9;
    if (v15 >> 62)
    {
      goto LABEL_45;
    }

    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      do
      {
        v47 = _swiftEmptyArrayStorage;
        v19 = specialized ContiguousArray.reserveCapacity(_:)();
        if ((v18 & 0x8000000000000000) == 0)
        {
          v40 = v8;
          v20 = 0;
          v8 = 0;
          v21 = 0;
          v45 = v16 & 0xFFFFFFFFFFFFFF8;
          v46 = v16 & 0xC000000000000001;
          v43 = v16;
          v16 += 32;
          do
          {
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            if (v21)
            {
              goto LABEL_48;
            }

            if (!v17)
            {
              goto LABEL_39;
            }

            v23 = v8 % v17;
            if (v46)
            {
              v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_40;
              }

              if (v23 >= *(v45 + 16))
              {
                goto LABEL_41;
              }

              v24 = *(v16 + 8 * v23);
            }

            v25 = v24;
            v26 = v2;
            v27 = [v2 traitCollection];
            v28 = [v27 userInterfaceStyle];

            v29 = 0.3;
            if (v28 == 2)
            {
              v29 = 0.5;
            }

            v30 = [v25 colorWithAlphaComponent:v29];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v2 = *(v47 + 2);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v19 = specialized ContiguousArray._endMutation()();
            v21 = v8 == v17;
            if (v8 == v17)
            {
              v8 = 0;
            }

            else
            {
              v31 = __OFADD__(v8++, 1);
              if (v31)
              {
                goto LABEL_43;
              }
            }

            ++v20;
            v2 = v26;
          }

          while (v22 != v18);
          *&v44[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v47;

          sub_1001C0CEC();
          v47 = _swiftEmptyArrayStorage;
          v19 = sub_100144108(0, v18, 0);
          v16 = 0;
          v32 = 0;
          v33 = 0;
          v34 = v47;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v33)
            {
              goto LABEL_49;
            }

            v47 = v34;
            v36 = *(v34 + 16);
            v35 = *(v34 + 24);
            if (v36 >= v35 >> 1)
            {
              v19 = sub_100144108((v35 > 1), v36 + 1, 1);
              v34 = v47;
            }

            *(v34 + 16) = v36 + 1;
            *(v34 + 8 * v36 + 32) = v32 / v17;
            v33 = v32 == v17;
            if (v32 == v17)
            {
              v32 = 0;
            }

            else
            {
              v31 = __OFADD__(v32++, 1);
              if (v31)
              {
                goto LABEL_44;
              }
            }

            ++v16;
            if (v8 == v18)
            {

              v37 = v44;
              sub_1001C0B48(v34);
              if (v17 == 4)
              {
                v38 = 0.0;
              }

              else
              {
                v38 = 0.5;
              }

              v39 = [v37 layer];
              objc_opt_self();
              [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v38, 0.0}];

              [v37 setNeedsDisplay];
              [v26 setNeedsLayout];
              (*(v42 + 8))(v41, v40);
              return;
            }
          }

LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          v19 = _CocoaArrayWrapper.endIndex.getter();
          if ((v19 & 0x8000000000000000) == 0)
          {
            goto LABEL_50;
          }

          __break(1u);
        }

        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v17 = v19;
        v18 = v19 + 1;
      }

      while (!__OFADD__(v19, 1));
    }

    __break(1u);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    *(*&v2[OBJC_IVAR____TtC8AppStore37MaterialGradientSectionBackgroundView_gradientView] + OBJC_IVAR____TtC8AppStore12GradientView_colors) = _swiftEmptyArrayStorage;

    sub_1001C0CEC();
    sub_1001C0B48(_swiftEmptyArrayStorage);
  }
}

unint64_t sub_10037C4D0()
{
  result = qword_10097FB70;
  if (!qword_10097FB70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097FB70);
  }

  return result;
}

uint64_t sub_10037C5DC(Swift::Float a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for Shadow();
  sub_100005644(v5, a3);
  sub_1000056A8(v5, a3);
  sub_100028BB8();
  UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, a1);
  return Shadow.init(color:blurRadius:offset:)();
}

uint64_t sub_10037C670()
{
  v0 = type metadata accessor for Shadow();
  sub_100005644(v0, qword_1009CFD80);
  sub_1000056A8(v0, qword_1009CFD80);
  sub_100028BB8();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  UIColor.init(light:dark:)(v3, v5);
  return Shadow.init(color:blurRadius:offset:)();
}

uint64_t sub_10037C950(double a1, uint64_t a2, uint64_t *a3)
{
  v5 = type metadata accessor for Shadow();
  sub_100005644(v5, a3);
  sub_1000056A8(v5, a3);
  v6 = [objc_opt_self() blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  return Shadow.init(color:blurRadius:offset:)();
}

void *sub_10037CA14()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_10037CA4C(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_10037CAA4;
}

void sub_10037CAA4(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_10020E160(v2);
  }

  else
  {
    sub_10020E160(*a1);
  }
}

uint64_t sub_10037CB3C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10037CD10(&qword_100979CE0, type metadata accessor for LargeLockupCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_10037CBF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_10037CD10(&qword_100979CE0, type metadata accessor for LargeLockupCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_10037CD10(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10037CE20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Separator();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_10037D488(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  sub_1000586D8(a3, v10);
  type metadata accessor for InAppPurchaseLockupView();
  v16 = sub_1004A1F00(a3);
  if (v15)
  {
    v17 = v16;
    Separator.verticalOutset.getter();
    sub_10002A400(v22, v22[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v20 + 8))(v6, v21);
    (*(v8 + 8))(v10, v7);
    sub_100007000(v22);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v17 = v18;
    (*(v8 + 8))(v10, v7);
  }

  return v17;
}

uint64_t sub_10037D16C(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v24[1] = a1;
  v6 = type metadata accessor for Separator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Shelf.PresentationHints();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  type metadata accessor for InAppPurchaseLockupView();
  sub_1004A1F00(a4);
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_10037D488(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v11 + 8))(v13, v10);
  sub_1000586D8(a4, v9);
  Separator.height(in:)();
  (*(v7 + 8))(v9, v6);
  [a4 pageMarginInsets];
  v14 = [a4 traitCollection];
  LOBYTE(v6) = UITraitCollection.isSizeClassRegular.getter();

  if ((v6 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v15 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v19 = v20;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v17 = v16;
    PageTraitEnvironment.pageColumnMargin.getter();
    v19 = v17 - (v18 + v18);
  }

  v21 = [objc_opt_self() absoluteDimension:v19];
  v22 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v22;
}

uint64_t sub_10037D488(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10037D540()
{
  v41.receiver = v0;
  v41.super_class = type metadata accessor for AlertActionHeaderViewController();
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [objc_allocWithZone(UIImageView) initWithImage:v2];
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = v3;
      [v5 addSubview:v6];

      v7 = *&v0[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageView];
      *&v0[OBJC_IVAR____TtC8AppStore31AlertActionHeaderViewController_imageView] = v6;
      v8 = v6;

      sub_10002849C(&qword_100973210);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1007B15F0;
      v10 = objc_opt_self();
      *(v9 + 32) = [v10 secondaryLabelColor];
      *(v9 + 40) = [v10 clearColor];
      sub_100005744(0, &qword_100970180);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v12 = [objc_opt_self() configurationWithPaletteColors:isa];

      [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v8 setPreferredSymbolConfiguration:v12];
      [v8 setContentMode:1];

      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007BCD60;
      v14 = [v0 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 heightAnchor];

        v17 = [v16 constraintEqualToConstant:80.0];
        *(v13 + 32) = v17;
        v18 = [v8 topAnchor];

        v19 = [v0 view];
        if (v19)
        {
          v20 = v19;
          v40 = v12;
          v21 = [v19 topAnchor];

          v22 = [v18 constraintEqualToAnchor:v21 constant:20.0];
          *(v13 + 40) = v22;
          v23 = [v8 bottomAnchor];

          v24 = [v0 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 bottomAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            *(v13 + 48) = v27;
            v28 = [v8 leadingAnchor];

            v29 = [v0 view];
            if (v29)
            {
              v30 = v29;
              v31 = [v29 leadingAnchor];

              v32 = [v28 constraintEqualToAnchor:v31];
              *(v13 + 56) = v32;
              v33 = [v8 trailingAnchor];

              v34 = [v0 view];
              if (v34)
              {
                v35 = v34;
                v36 = objc_opt_self();
                v37 = [v35 trailingAnchor];

                v38 = [v33 constraintEqualToAnchor:v37];
                *(v13 + 64) = v38;
                sub_100005744(0, &qword_1009766E0);
                v39 = Array._bridgeToObjectiveC()().super.isa;

                [v36 activateConstraints:v39];

                return;
              }

LABEL_15:
              __break(1u);
              return;
            }

LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_12:
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_12;
  }
}

id sub_10037DB0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionHeaderViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10037DBB4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10037F7E8(&qword_100973190, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

id sub_10037DE48()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] removeTarget:v0 action:0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for AppPromotionView()
{
  result = qword_100981BB0;
  if (!qword_100981BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_10037DFE8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10037E04C;
}

void sub_10037E04C(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
      [v2 setNeedsLayout];
    }

    v7 = v3;
  }

  else
  {
    v7 = *a1;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6)
    {
      goto LABEL_8;
    }

    v3 = v6;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v6 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }

LABEL_8:
}

void sub_10037E174()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  if (!CGRectIsEmpty(v17))
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView];
    LayoutMarginsAware<>.layoutFrame.getter();
    v3 = v2;
    v5 = v4;
    sub_1002C65CC(v15);
    sub_1002C97E0(v0, v15, v3, v5);
    sub_1001A927C(v15);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinX(v18);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRectGetMinY(v19);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v1 setFrame:?];
    v6 = *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView];
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100005744(0, &qword_100972EB0);
      v9 = v0;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        [v1 frame];
        MaxY = CGRectGetMaxY(v20);
        LayoutMarginsAware<>.layoutFrame.getter();
        v12 = CGRectGetHeight(v21) - MaxY;
        LayoutMarginsAware<>.layoutFrame.getter();
        [v6 setBounds:{0.0, 0.0, CGRectGetWidth(v22), v12}];
        [v1 frame];
        v13 = CGRectGetMaxY(v23);
        LayoutMarginsAware<>.layoutFrame.getter();
        v14 = CGRectGetHeight(v24) - v13;
        [v9 bounds];
        [v6 setCenter:{CGRectGetWidth(v25) * 0.5, v13 + v14 * 0.5}];
      }
    }
  }
}

void sub_10037E51C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = v60 - v5;
  v7 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v7 - 8);
  v9 = v60 - v8;
  v10 = sub_10002849C(&unk_10097B3D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - v12;
  sub_100005744(0, &qword_100978360);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer];
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return;
  }

  v61 = *&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView];
  v15 = [v61 superview];
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = sub_100005744(0, &qword_100972EB0);
  v18 = v2;
  v60[1] = v17;
  LOBYTE(v17) = static NSObject.== infix(_:_:)();

  if ((v17 & 1) == 0)
  {
    return;
  }

  v19 = [a1 state];
  if (v19 > 3)
  {
    if ((v19 - 4) >= 2)
    {
      return;
    }

    v23 = [v61 superview];
    if (!v23)
    {
      return;
    }

    v24 = v23;
    v25 = v18;
    v26 = static NSObject.== infix(_:_:)();

    if ((v26 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v25;
    *(v28 + 24) = 0x3FF0000000000000;
    v67 = sub_10037FAC4;
    v68 = v28;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100007A08;
    v66 = &unk_1008BFD88;
    v29 = _Block_copy(&aBlock);
    v30 = v25;

    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = v30;
    v67 = sub_10037FADC;
    v68 = v31;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_1008BFDD8;
LABEL_30:
    v65 = sub_100504C5C;
    v66 = v32;
    v58 = _Block_copy(&aBlock);
    v59 = v30;

    [v27 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v29 options:v58 animations:0.0 completion:1.0];
    _Block_release(v58);
    _Block_release(v29);
    return;
  }

  if (v19 == 1)
  {
    v33 = v61;
    [a1 locationInView:v61];
    v34 = v18 + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation;
    *v34 = v35;
    *(v34 + 1) = v36;
    v34[16] = 0;
    v37 = [v33 superview];
    if (!v37)
    {
      return;
    }

    v38 = v37;
    v39 = v18;
    v40 = static NSObject.== infix(_:_:)();

    if ((v40 & 1) == 0)
    {
      return;
    }

    v27 = objc_opt_self();
    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = 0x3FEEB851EB851EB8;
    v67 = sub_10037FAC4;
    v68 = v41;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100007A08;
    v66 = &unk_1008BFE28;
    v29 = _Block_copy(&aBlock);
    v30 = v39;

    v42 = swift_allocObject();
    *(v42 + 16) = 1;
    *(v42 + 24) = v30;
    v67 = sub_10037FADC;
    v68 = v42;
    aBlock = _NSConcreteStackBlock;
    v64 = 1107296256;
    v32 = &unk_1008BFE78;
    goto LABEL_30;
  }

  if (v19 == 2)
  {
    [a1 locationInView:v61];
    v45 = (v18 + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation);
    if (*(v18 + OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation + 16))
    {
      *v45 = v43;
      v45[1] = v44;
      *(v45 + 16) = 0;
    }

    else
    {
      v46 = sqrt((v44 - v45[1]) * (v44 - v45[1]) + (v43 - *v45) * (v43 - *v45));
      [v14 allowableMovement];
      if (v47 < v46)
      {

        [a1 setEnabled:0];
      }
    }

    return;
  }

  if (v19 != 3)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100079A28(v18 + v20, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v21 = &qword_10097B3F0;
    v22 = v9;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    ObjectGraphPair.value.getter();
    v66 = ObjectType;
    aBlock = v18;
    v48 = v18;
    dispatch thunk of Action.clickSender.setter();

    ObjectGraphPair.objectGraph.getter();
    v49 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v6, 1, v49) != 1)
    {
      ObjectGraphPair.value.getter();
      v51 = ObjectGraphPair.objectGraph.getter();
      sub_1005F9AF4(aBlock, 1, v51, v6);

      (*(v11 + 8))(v13, v10);

      (*(v50 + 8))(v6, v49);
      goto LABEL_27;
    }

    (*(v11 + 8))(v13, v10);
    v21 = &unk_100972A00;
    v22 = v6;
  }

  sub_10002B894(v22, v21);
LABEL_27:
  v52 = [v61 superview];
  if (v52)
  {
    v53 = v52;
    v54 = v18;
    v55 = static NSObject.== infix(_:_:)();

    if (v55)
    {
      v27 = objc_opt_self();
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = 0x3FF0000000000000;
      v67 = sub_10037F830;
      v68 = v56;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v65 = sub_100007A08;
      v66 = &unk_1008BFCE8;
      v29 = _Block_copy(&aBlock);
      v30 = v54;

      v57 = swift_allocObject();
      *(v57 + 16) = 0;
      *(v57 + 24) = v30;
      v67 = sub_10037F83C;
      v68 = v57;
      aBlock = _NSConcreteStackBlock;
      v64 = 1107296256;
      v32 = &unk_1008BFD38;
      goto LABEL_30;
    }
  }
}

id sub_10037EF04(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

uint64_t sub_10037EF64(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  sub_100005744(0, &qword_100978360);
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 1;
  }

  v8 = *&v2[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView];
  v9 = OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView;
  [a2 locationInView:*(v8 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView)];
  v11 = v10;
  v13 = v12;
  [*(v8 + v9) bounds];
  v25.x = v11;
  v25.y = v13;
  if (CGRectContainsPoint(v27, v25))
  {
    return 0;
  }

  [a2 locationInView:v2];
  v16 = v15;
  v18 = v17;
  v19 = [v2 hitTest:0 withEvent:?];
  [v3 bounds];
  v26.x = v16;
  v26.y = v18;
  if (CGRectContainsPoint(v28, v26))
  {
    if (v19)
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();

      if (v20)
      {
        return 0;
      }
    }

    v21 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
    swift_beginAccess();
    sub_100079A28(&v3[v21], v7);
    v22 = sub_10002849C(&unk_10097B3D0);
    v23 = (*(*(v22 - 8) + 48))(v7, 1, v22) != 1;
    sub_10002B894(v7, &qword_10097B3F0);
    return v23;
  }

  else
  {

    return 0;
  }
}

void sub_10037F234()
{
  sub_1000798B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_10037F304(uint64_t **a1))()
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
  v2[4] = sub_10037DFE8(v2);
  return sub_1000B4CAC;
}

double sub_10037F388()
{
  [*(*v0 + OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_10037F400()
{
  v1 = *v0;
  [*&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_10037F4AC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10037F7E8(&qword_100981BD0, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10037F520(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10037F7E8(&qword_100981BD0, type metadata accessor for AppPromotionView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10037F5AC(uint64_t *a1))()
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
  sub_10037F7E8(&qword_100981BD0, type metadata accessor for AppPromotionView);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10037F668(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_10037F7E8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10037F840()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    return [*(*(v0 + 24) + OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer) setEnabled:1];
  }

  return result;
}

char *sub_10037F86C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  v3 = sub_10002849C(&unk_10097B3D0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView] = [objc_allocWithZone(type metadata accessor for AppPromotionCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
  *&v0[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] = v5;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v6;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v10 setClipsToBounds:0];
  [v10 addSubview:*&v10[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView]];
  v11 = OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView;
  [v10 addSubview:*&v10[OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView]];
  v12 = OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer;
  [*&v10[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] addTarget:v10 action:"stateChangedFor:"];
  [*&v10[v12] setMinimumPressDuration:0.1];
  [*&v10[v12] setDelegate:v10];
  [*&v10[v11] addGestureRecognizer:*&v10[v12]];

  return v10;
}

id sub_10037FAE0(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1009CFF30];
  v12 = type metadata accessor for ArtworkView();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_1009CFF28] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell()
{
  result = qword_100981C00;
  if (!qword_100981C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10037FCD4()
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_10037FDC4(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10037FD6C(uint64_t a1)
{
  result = sub_10037FDC4(&qword_100981D88, type metadata accessor for FramedArtworkCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10037FDC4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10037FE20()
{
  result = qword_100981D90;
  if (!qword_100981D90)
  {
    type metadata accessor for OfferAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981D90);
  }

  return result;
}

uint64_t sub_10037FE78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100005744(0, &qword_100981DA0);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_10037FF1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionOutcome();
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v98 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v6 - 8);
  v89 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpenableDestination();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v88 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v84 - v11;
  v111 = type metadata accessor for LegacyAppState();
  v107 = *(v111 - 8);
  __chkstk_darwin(v111);
  v92 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v108 = &v84 - v14;
  __chkstk_darwin(v15);
  v104 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  v23 = type metadata accessor for AdamId();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v91 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v84 - v27;
  v87 = sub_10002849C(&qword_1009764A0);
  v109 = Promise.__allocating_init()();
  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  v105 = a2;
  inject<A, B>(_:from:)();
  v29 = v113;
  ObjectType = swift_getObjectType();
  OfferAction.adamId.getter();
  v96 = ObjectType;
  v97 = v29;
  v31 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v33 = v32;
  v106 = *(v24 + 8);
  v101 = v23;
  v102 = v28;
  v103 = v24 + 8;
  v106(v28, v23);
  swift_getObjectType();
  OfferAction.includeBetaApps.getter();
  dispatch thunk of AppStateMachine.currentStateIncludingBeta(_:)();
  v34 = v107;
  v35 = *(v107 + 16);
  v110 = v22;
  v36 = v111;
  v35(v19, v22, v111);
  v37 = v19;
  v38 = v19;
  v39 = v36;
  v40 = (*(v34 + 88))(v38, v36);
  if (v40 == enum case for LegacyAppState.waiting(_:))
  {
    v41 = v108;
    v85 = v37;
    v42 = v37;
    v43 = v39;
    v35(v108, v42, v39);
    (*(v34 + 96))(v41, v39);
    sub_1003827A8(a1, 1, v31, v33);
    v44 = v109;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v45 = *(v34 + 8);
    v45(v110, v43);
    v46 = type metadata accessor for InstallationType();
    (*(*(v46 - 8) + 8))(v41, v46);
    v45(v85, v43);
    return v44;
  }

  v84 = v33;
  v48 = v106;
  v90 = a1;
  v86 = v31;
  if (v40 == enum case for LegacyAppState.purchased(_:))
  {
    v49 = v104;
    v50 = v111;
    v35(v104, v37, v111);
    v51 = v37;
    v52 = v50;
    v53 = v34;
    (*(v34 + 96))(v49, v52);
    v54 = type metadata accessor for PurchaseType();
    v55 = *(v54 - 8);
    if ((*(v55 + 88))(v49, v54) != enum case for PurchaseType.preorder(_:))
    {
      (*(v55 + 8))(v49, v54);
LABEL_6:
      v56 = v102;
      OfferAction.adamId.getter();
      dispatch thunk of AppStateController.refreshState(for:)();
      v48(v56, v101);
      v58 = v98;
      v57 = v99;
      v59 = v100;
      (*(v99 + 104))(v98, enum case for ActionOutcome.performed(_:), v100);
      v47 = v109;
      Promise.resolve(_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      (*(v57 + 8))(v58, v59);
      v60 = *(v53 + 8);
      v61 = v111;
      v60(v110, v111);
      v60(v51, v61);
      return v47;
    }

LABEL_19:
    v70 = *(v53 + 8);
    v71 = v111;
    v70(v51, v111);
    sub_100381010(v90, v86, v84, v105);
    v47 = v109;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v70(v110, v71);
    return v47;
  }

  v53 = v34;
  v51 = v37;
  if (v40 == enum case for LegacyAppState.updatable(_:) || v40 == enum case for LegacyAppState.downloadable(_:))
  {
    goto LABEL_19;
  }

  if (v40 == enum case for LegacyAppState.paused(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100380BE4(v90);
LABEL_13:
    v47 = v109;
    Promise.pipe(to:)();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v64 = *(v34 + 8);
    v64(v110, v63);
    v65 = type metadata accessor for LegacyAppState.AppInstallationDetails();
    (*(*(v65 - 8) + 8))(v62, v65);
    v64(v37, v63);
    return v47;
  }

  if (v40 == enum case for LegacyAppState.downloading(_:))
  {
    v62 = v108;
    v63 = v111;
    v35(v108, v37, v111);
    (*(v34 + 96))(v62, v63);
    sub_100384824(v90);
    goto LABEL_13;
  }

  if (v40 != enum case for LegacyAppState.openable(_:))
  {
    if (v40 != enum case for LegacyAppState.buyable(_:) && v40 != enum case for LegacyAppState.unknown(_:))
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  v66 = v92;
  v67 = v111;
  v35(v92, v37, v111);
  (*(v34 + 96))(v66, v67);

  (*(v94 + 32))(v93, v66, v95);
  v68 = v90;
  if (OfferAction.requiresExceptionRequest.getter())
  {
    sub_100381010(v68, v86, v84, v105);
    v69 = v110;
  }

  else
  {
    v73 = v91;
    OfferAction.adamId.getter();
    v74 = AdamId.numberValue.getter();
    v75 = v101;
    v48(v73, v101);
    if (v74)
    {
      v108 = v74;
      type metadata accessor for AdAttributionManager();
      BaseObjectGraph.optional<A>(_:)();
      if (v112)
      {
        v76 = v102;
        OfferAction.adamId.getter();
        dispatch thunk of AdAttributionManager.processReengagement(forAdamID:)();

        v48(v76, v75);
      }

      v69 = v110;
      v67 = v111;
      OfferAction.adamId.getter();
      (*(v94 + 16))(v88, v93, v95);
      static ActionMetrics.notInstrumented.getter();
      type metadata accessor for OpenAppAction();
      swift_allocObject();
      v82 = OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)();
      sub_1005D0478(v82, 1, v105);
    }

    else
    {
      v77 = v102;
      OfferAction.adamId.getter();
      v78 = AdamId.stringValue.getter();
      v80 = v79;
      v48(v77, v75);
      sub_100384158();
      swift_allocError();
      *v81 = v78;
      *(v81 + 8) = v80;
      *(v81 + 16) = 0;
      Promise.__allocating_init(error:)();
      v69 = v110;
      v67 = v111;
    }
  }

  v47 = v109;
  Promise.pipe(to:)();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v94 + 8))(v93, v95);
  v83 = *(v53 + 8);
  v83(v69, v67);
  v83(v37, v67);
  return v47;
}

uint64_t sub_100380BE4(uint64_t a1)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  OfferAction.adamId.getter();
  v9 = AdamId.numberValue.getter();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10002849C(&qword_1009764A0);
    v11 = Promise.__allocating_init()();
    sub_10002849C(&qword_100973210);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = v9;
    sub_100005744(0, &qword_10097FB80);
    v13 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_100384C50;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008BFF70;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_1000056A8(v20, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0);
    OfferAction.adamId.getter();
    v21 = AdamId.stringValue.getter();
    v23 = v22;
    v10(v5, v2);
    sub_100384158();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return Promise.__allocating_init(error:)();
  }
}

id sub_100381010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v7 = type metadata accessor for LegacyAppState();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AdamId();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_10097D9F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v40 = type metadata accessor for PurchaseIntent();
  v16 = *(v40 - 8);
  __chkstk_darwin(v40);
  v39 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AdHeaderProvider();
  v38 = a4;
  BaseObjectGraph.optional<A>(_:)();
  if (v42[0])
  {

    sub_10002849C(&qword_10097DA00);
    Box.read<A>(with:)();
  }

  swift_unknownObjectRetain();

  PurchaseIntent.init(from:stateMachine:additionalHeaders:presentingSceneIdentifier:)();
  v18 = v40;
  if ((*(v16 + 48))(v15, 1, v40) == 1)
  {
    sub_10002B894(v15, &qword_10097D9F8);
    sub_10002849C(&qword_1009764A0);
    sub_100384158();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 7;
    v20 = Promise.__allocating_init(error:)();

    return v20;
  }

  (*(v16 + 32))(v39, v15, v18);
  sub_10002849C(&qword_1009764A0);
  v34 = Promise.__allocating_init()();
  type metadata accessor for AdAttributionManager();
  BaseObjectGraph.optional<A>(_:)();
  if (v42[0])
  {
    OfferAction.adamId.getter();
    swift_getObjectType();
    dispatch thunk of AppStateMachine.currentState.getter();
    dispatch thunk of AdAttributionManager.performClickThroughAttribution(forAdamID:appState:)();

    (*(v36 + 8))(v9, v7);
    (*(v35 + 8))(v12, v10);
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v22 = result;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v22 applicationIsInstalled:v23];

    if (v24)
    {
      v36 = v16;
      OfferAction.bundleId.getter();
      if (v25 && (v26 = objc_allocWithZone(LSApplicationRecord), v27 = sub_1003841AC(), v27))
      {

        sub_1003816E8(a1, a2, v41, v38);
        v20 = v34;
        Promise.pipe(to:)();

        (*(v36 + 8))(v39, v40);
      }

      else
      {
        type metadata accessor for Commerce();
        type metadata accessor for BaseObjectGraph();
        v28 = v38;
        inject<A, B>(_:from:)();
        v29 = v41;
        dispatch thunk of Commerce.purchase(with:stateMachine:)();
        sub_100384C68(v37, v42);
        v30 = swift_allocObject();
        v20 = v34;
        v30[2] = v34;
        v30[3] = a1;
        sub_100384CA0(v42, (v30 + 4));
        v30[6] = v28;
        v30[7] = a2;
        v30[8] = v29;
        v31 = sub_100005744(0, &qword_1009729E0);
        swift_unknownObjectRetain();

        v32 = static OS_dispatch_queue.main.getter();
        v42[3] = v31;
        v42[4] = &protocol witness table for OS_dispatch_queue;
        v42[0] = v32;
        Promise.then(perform:orCatchError:on:)();

        (*(v36 + 8))(v39, v40);
        sub_100007000(v42);
      }
    }

    else
    {
      sub_100384278(a1, v38);
      v33 = v16;
      v20 = v34;
      Promise.pipe(to:)();

      (*(v33 + 8))(v39, v40);
    }

    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003816E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v44 = a2;
  v4 = type metadata accessor for LegacyAppState();
  v43 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InstallationType();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v50 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AdamId();
  v47 = *(v9 - 8);
  v48 = v9;
  v10 = *(v47 + 64);
  __chkstk_darwin(v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  OfferAction.bundleId.getter();
  if (!v15)
  {
    goto LABEL_4;
  }

  v42 = v7;
  v16 = objc_allocWithZone(LSApplicationRecord);

  v17 = sub_1003841AC();
  if (!v17)
  {

LABEL_4:
    sub_10002849C(&qword_1009764A0);
    v18 = OfferAction.bundleId.getter();
    v20 = v19;
    sub_100384158();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 3;
    return Promise.__allocating_init(error:)();
  }

  v23 = objc_allocWithZone(ASDSystemAppRequest);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 initWithBundleID:v24];

  OfferAction.adamId.getter();
  v26 = AdamId.numberValue.getter();
  v40 = *(v47 + 8);
  v41 = v47 + 8;
  v40(v14, v48);
  [v25 setStoreItemID:v26];

  v39 = v25;
  [v25 setUserInitiated:1];
  swift_getObjectType();
  dispatch thunk of AppStateMachine.currentState.getter();
  v27 = v43;
  v28 = (*(v43 + 88))(v6, v4);
  if (v28 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v27 + 8))(v6, v4);
    (*(v49 + 104))(v50, enum case for InstallationType.redownload(_:), v42);
  }

  else
  {
    v29 = *(v49 + 104);
    if (v28 == enum case for LegacyAppState.buyable(_:) || v28 == enum case for LegacyAppState.unknown(_:))
    {
      v29(v50, enum case for InstallationType.purchase(_:), v42);
    }

    else
    {
      v29(v50, enum case for InstallationType.unknown(_:), v42);
      (*(v27 + 8))(v6, v4);
    }
  }

  v30 = dispatch thunk of AppStateMachine.appStateController.getter();
  v31 = v46;
  if (!v30)
  {
    sub_10002849C(&unk_100973AF0);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
  }

  swift_getObjectType();
  OfferAction.adamId.getter();
  dispatch thunk of AppStateController.setWaiting(for:installationType:)();
  v32 = v48;
  v40(v14, v48);
  OfferAction.adamId.getter();
  sub_10002849C(&qword_1009764A0);
  v33 = Promise.__allocating_init()();
  v34 = v47;
  (*(v47 + 16))(v11, v14, v32);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  (*(v34 + 32))(v36 + v35, v11, v32);
  aBlock[4] = sub_100384DE0;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100235540;
  aBlock[3] = &unk_1008C0088;
  v37 = _Block_copy(aBlock);

  v38 = v39;
  [v39 startWithErrorHandler:v37];
  _Block_release(v37);
  swift_unknownObjectRelease();

  v40(v14, v32);
  (*(v49 + 8))(v50, v42);
  return v33;
}

void sub_100381D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v52 = a5;
  v54 = a2;
  v8 = type metadata accessor for AdamId();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionOutcome();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PurchaseResult();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, a1, v15, v17);
  v20 = (*(v16 + 88))(v19, v15);
  if (v20 == enum case for PurchaseResult.askToBuy(_:))
  {
    (*(v16 + 96))(v19, v15);
    v21 = [objc_opt_self() defaultCenter];
    v22 = static AskToBuyRequestNotificationDetails.notificationName.getter();
    sub_10002849C(&unk_10097E340);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v55 = static AskToBuyRequestNotificationDetails.adamIdKey.getter();
    v56 = v24;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = v8;
    sub_1000056E0((inited + 72));
    AdamId.init(value:)();
    sub_100397CE8(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_1009827A0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v21 postNotificationName:v22 object:0 userInfo:isa];

    (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
    Promise.resolve(_:)();
    (*(v12 + 8))(v14, v11);
    return;
  }

  v49 = v10;
  v48 = v8;
  if (v20 != enum case for PurchaseResult.completed(_:))
  {
    if (v20 == enum case for PurchaseResult.canceled(_:))
    {
      v36 = v49;
      OfferAction.adamId.getter();
      v37 = AdamId.stringValue.getter();
      v39 = v38;
      (*(v53 + 8))(v36, v48);
      sub_100384158();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      v41 = 1;
    }

    else
    {
      if (v20 != enum case for PurchaseResult.unknown(_:))
      {
        (*(v16 + 8))(v19, v15);
        return;
      }

      v42 = v49;
      OfferAction.adamId.getter();
      v43 = AdamId.stringValue.getter();
      v45 = v44;
      (*(v53 + 8))(v42, v48);
      sub_100384158();
      swift_allocError();
      *v40 = v43;
      *(v40 + 8) = v45;
      v41 = 2;
    }

    *(v40 + 16) = v41;
    Promise.reject(_:)();

    return;
  }

  (*(v16 + 96))(v19, v15);
  v26 = v19[2];
  (*(v12 + 104))(v14, enum case for ActionOutcome.performed(_:), v11);
  Promise.resolve(_:)();
  (*(v12 + 8))(v14, v11);
  v27 = OfferAction.buyCompletedAction.getter();
  if (v27)
  {
    sub_1005D0214(v27, 1, v52);
  }

  v28 = v49;
  if (v26)
  {
    type metadata accessor for InAppMessagesManager();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v29 = *(v55 + 16);
    v30 = objc_allocWithZone(IAMCountableEvent);
    v31 = String._bridgeToObjectiveC()();
    v32 = [v30 initWithName:v31];

    [v29 receiveEvent:v32];
    sub_100292E88();
  }

  type metadata accessor for HostProcessIdentifier();
  v33 = static HostProcessIdentifier.shared.getter();
  v34 = dispatch thunk of HostProcessIdentifier.isProcessRunningInCompanionApp()();

  if (v34)
  {
    swift_getObjectType();
    v35 = dispatch thunk of AppStateMachine.appStateController.getter();
    if (v35)
    {
      v55 = v35;
    }

    else
    {
      sub_10002849C(&unk_100973AF0);
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
    }

    v46 = v48;
    swift_getObjectType();
    OfferAction.adamId.getter();
    dispatch thunk of AppStateController.setRemoteInstalled(for:)();
    swift_unknownObjectRelease();
    (*(v53 + 8))(v28, v46);
  }
}

uint64_t sub_100382468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AdamId();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&unk_100973AF0);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v11 = v17[2];
  v12 = v17[3];
  if (a1)
  {
    swift_errorRetain();
    Promise.reject(_:)();
    swift_getObjectType();
    AppStateController.clearWaiting(for:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v17[1] = swift_getObjectType();
    (*(v8 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v7);
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = (v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    *(v16 + 16) = v11;
    *(v16 + 24) = v12;
    (*(v8 + 32))(v16 + v14, v10, v7);
    *(v16 + v15) = a3;
    swift_unknownObjectRetain();

    dispatch thunk of AppStateController.refreshDataSources(for:completion:)();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_100382680()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  AppStateController.clearWaiting(for:)();
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  Promise.resolve(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003827A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v59 = a2;
  v65 = type metadata accessor for OSSignpostID();
  v61 = *(v65 - 8);
  v6 = *(v61 + 64);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for AdamId();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  v62 = a1;
  OfferAction.adamId.getter();
  v17 = AdamId.numberValue.getter();
  v18 = *(v11 + 8);
  v18(v16, v10);
  if (v17)
  {
    sub_10002849C(&qword_1009764A0);
    v19 = Promise.__allocating_init()();
    v57 = a3;
    v58 = v19;
    swift_getObjectType();
    v20 = dispatch thunk of AppStateMachine.hasCurrentBetaState.getter() & v59;
    type metadata accessor for SignpostAggregator();
    static SignpostAggregator.log.getter();
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    v21 = static SignpostAggregator.log.getter();
    v59 = v20 & 1;
    if (v20)
    {
      v22 = "ActionDispatcher[ASDAppQuery.BetaApps]:cancelAction";
    }

    else
    {
      v22 = "ActionDispatcher[ASDAppQuery]:cancelAction";
    }

    if (v20)
    {
      v23 = 51;
    }

    else
    {
      v23 = 42;
    }

    v54 = v23;
    v55 = v22;
    if (v20)
    {
      v24 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    }

    else
    {
      v24 = &selRef_queryForStoreItemIDs_;
    }

    v56 = v9;
    os_signpost(_:dso:log:name:signpostID:)();

    sub_10002849C(&qword_100973210);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1007B0B70;
    *(v25 + 32) = v17;
    sub_100005744(0, &qword_10097FB80);
    v52 = v17;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v53 = [objc_opt_self() *v24];

    v27 = v61;
    v28 = v9;
    v29 = v65;
    (*(v61 + 16))(v63, v28, v65);
    sub_100384C68(v60, v67);
    v30 = (*(v27 + 80) + 33) & ~*(v27 + 80);
    v31 = v30 + v6;
    v32 = (v30 + v6) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 31) & 0xFFFFFFFFFFFFFFF8;
    v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
    v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = swift_allocObject();
    v37 = v54;
    *(v36 + 16) = v55;
    *(v36 + 24) = v37;
    *(v36 + 32) = 2;
    (*(v27 + 32))(v36 + v30, v63, v29);
    *(v36 + v31) = v59;
    sub_100384CA0(v67, v36 + v32 + 8);
    *(v36 + v33) = v62;
    v38 = (v36 + v34);
    v39 = v58;
    v40 = v64;
    *v38 = v57;
    v38[1] = v40;
    *(v36 + v35) = v39;
    v41 = v52;
    *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v52;
    aBlock[4] = sub_100384CD8;
    aBlock[5] = v36;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008C0010;
    v42 = _Block_copy(aBlock);
    v43 = v41;

    swift_unknownObjectRetain();

    v44 = v53;
    [v53 executeQueryWithResultHandler:v42];
    _Block_release(v42);

    (*(v27 + 8))(v56, v65);
    return v39;
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for OSLogger();
    sub_1000056A8(v46, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0);
    OfferAction.adamId.getter();
    v47 = AdamId.stringValue.getter();
    v49 = v48;
    v18(v13, v10);
    sub_100384158();
    swift_allocError();
    *v50 = v47;
    *(v50 + 8) = v49;
    *(v50 + 16) = 0;
    return Promise.__allocating_init(error:)();
  }
}

uint64_t sub_100382E24(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v44 = a8;
  v45 = a13;
  v42 = a10;
  v43 = a11;
  v49 = a9;
  v50 = a12;
  v15 = type metadata accessor for ActionOutcome();
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AdamId();
  v47 = *(v18 - 8);
  v48 = v18;
  __chkstk_darwin(v18);
  v46 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.end.getter();
  type metadata accessor for SignpostAggregator();
  v20 = static SignpostAggregator.log.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  if (a1)
  {
    if (a1 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(a1 + 32);
LABEL_7:
        v22 = v21;
        v23 = [v21 progress];
        if (v23)
        {
          v24 = v23;
          [v23 cancel];
          v25 = v41;
          (*(v41 + 104))(v17, enum case for ActionOutcome.performed(_:), v15);
          Promise.resolve(_:)();

          return (*(v25 + 8))(v17, v15);
        }

        if (qword_10096D120 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for OSLogger();
        sub_1000056A8(v27, qword_1009CE218);
        sub_10002849C(&unk_100972A10);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = xmmword_1007B1E00;
        LogMessage.init(stringLiteral:)();
        v52 = sub_100005744(0, &qword_10097FB80);
        v51[0] = v45;
        v28 = v45;
        static LogMessage.traceableSensitive(_:)();
        sub_10002B894(v51, &unk_1009711D0);
        LogMessage.init(stringLiteral:)();
        Logger.error(_:)();

        v29 = v46;
        OfferAction.adamId.getter();
        v30 = AdamId.stringValue.getter();
        v32 = v31;
        (*(v47 + 8))(v29, v48);
        sub_100384158();
        swift_allocError();
        *v33 = v30;
        *(v33 + 8) = v32;
        *(v33 + 16) = 4;
        Promise.reject(_:)();
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  if ((a7 & 1) == 0)
  {
    if (qword_10096D120 == -1)
    {
LABEL_18:
      v34 = type metadata accessor for OSLogger();
      sub_1000056A8(v34, qword_1009CE218);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1E00;
      LogMessage.init(stringLiteral:)();
      v52 = sub_100005744(0, &qword_10097FB80);
      v51[0] = v45;
      v35 = v45;
      static LogMessage.traceableSensitive(_:)();
      sub_10002B894(v51, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      Logger.error(_:)();

      v36 = v46;
      OfferAction.adamId.getter();
      v37 = AdamId.stringValue.getter();
      v39 = v38;
      (*(v47 + 8))(v36, v48);
      sub_100384158();
      swift_allocError();
      *v40 = v37;
      *(v40 + 8) = v39;
      *(v40 + 16) = 4;
      Promise.reject(_:)();
    }

LABEL_22:
    swift_once();
    goto LABEL_18;
  }

  sub_1003827A8(v49, 0, v42, v43);
  Promise.pipe(to:)();
}

uint64_t sub_100383508(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ActionOutcome();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AdamId();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for OSLogger();
    sub_1000056A8(v26, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    LogMessage.init(stringLiteral:)();
    v37 = sub_100005744(0, &qword_10097FB80);
    v36[0] = a3;
    v27 = a3;
    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(v36, &unk_1009711D0);
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    OfferAction.adamId.getter();
    v28 = AdamId.stringValue.getter();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_100384158();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 5;
    Promise.reject(_:)();
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 pause];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      Promise.resolve(_:)();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_10096D120 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = type metadata accessor for OSLogger();
  v32 = sub_1000056A8(v20, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  LogMessage.init(stringLiteral:)();
  v37 = sub_100005744(0, &qword_10097FB80);
  v36[0] = a3;
  v21 = a3;
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(v36, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  OfferAction.adamId.getter();
  v22 = AdamId.stringValue.getter();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_100384158();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 5;
  Promise.reject(_:)();
}

uint64_t sub_100383B2C(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for ActionOutcome();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AdamId();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_12;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v33 = a5;
    v34 = a4;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for OSLogger();
    sub_1000056A8(v26, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1E00;
    LogMessage.init(stringLiteral:)();
    v37 = sub_100005744(0, &qword_10097FB80);
    v36[0] = a3;
    v27 = a3;
    static LogMessage.traceableSensitive(_:)();
    sub_10002B894(v36, &unk_1009711D0);
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    OfferAction.adamId.getter();
    v28 = AdamId.stringValue.getter();
    v30 = v29;
    (*(v13 + 8))(v15, v35);
    sub_100384158();
    swift_allocError();
    *v31 = v28;
    *(v31 + 8) = v30;
    *(v31 + 16) = 6;
    Promise.reject(_:)();
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
    a1 = v16;
    v17 = [v16 progress];
    if (v17)
    {
      v18 = v17;
      [v17 resume];
      (*(v10 + 104))(v12, enum case for ActionOutcome.performed(_:), v9);
      Promise.resolve(_:)();

      return (*(v10 + 8))(v12, v9);
    }

    v33 = a5;
    v34 = a4;
    if (qword_10096D120 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_10:
  v20 = type metadata accessor for OSLogger();
  v32 = sub_1000056A8(v20, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  LogMessage.init(stringLiteral:)();
  v37 = sub_100005744(0, &qword_10097FB80);
  v36[0] = a3;
  v21 = a3;
  static LogMessage.traceableSensitive(_:)();
  sub_10002B894(v36, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  OfferAction.adamId.getter();
  v22 = AdamId.stringValue.getter();
  v24 = v23;
  (*(v13 + 8))(v15, v35);
  sub_100384158();
  swift_allocError();
  *v25 = v22;
  *(v25 + 8) = v24;
  *(v25 + 16) = 6;
  Promise.reject(_:)();
}

unint64_t sub_100384158()
{
  result = qword_100981D98;
  if (!qword_100981D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981D98);
  }

  return result;
}

id sub_1003841AC()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100384278(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = type metadata accessor for AlertActionStyle();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AdamId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972A80);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v36 = _swiftEmptyArrayStorage;
  static ActionMetrics.notInstrumented.getter();
  OfferAction.adamId.getter();
  (*(v5 + 56))(v10, 0, 1, v4);
  type metadata accessor for RestoreAppStoreAction();
  swift_allocObject();
  v12 = RestoreAppStoreAction.init(actionMetrics:gatedAppAdamId:)();

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v29 = v12;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);

  v34 = 0xD000000000000021;
  v35 = 0x800000010080F7A0;
  OfferAction.adamId.getter();
  v13 = AdamId.stringValue.getter();
  v15 = v14;
  (*(v5 + 8))(v7, v4);
  v16._countAndFlagsBits = v13;
  v16._object = v15;
  String.append(_:)(v16);

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for ExternalUrlAction();
  swift_allocObject();
  if (ExternalUrlAction.init(title:urlString:isSensitive:allowFromLockscreen:timeoutSeconds:artwork:presentationStyle:actionMetrics:)())
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  static ActionMetrics.notInstrumented.getter();
  type metadata accessor for CompoundAction();
  swift_allocObject();
  v17 = CompoundAction.init(title:actions:presentationStyle:actionMetrics:)();
  v18._countAndFlagsBits = 0xD000000000000023;
  v18._object = 0x800000010080F7D0;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = localizedString(_:comment:)(v18, v19);
  v21._object = 0x800000010080F800;
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  localizedString(_:comment:)(v21, v22);
  v23._countAndFlagsBits = 0xD00000000000001CLL;
  v23._object = 0x800000010080F820;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  localizedString(_:comment:)(v23, v24);
  sub_10002849C(&qword_100981DA8);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B10D0;
  *(v25 + 32) = v20;
  *(v25 + 48) = v17;
  *(v25 + 56) = 0u;

  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v32, enum case for AlertActionStyle.normal(_:), v31);
  type metadata accessor for AlertAction();
  swift_allocObject();
  v26 = AlertAction.init(title:message:isCancelable:cancelTitle:cancelAction:buttonActions:destructiveActionIndex:style:artwork:toastDuration:presentationStyle:imageName:actionMetrics:)();
  v27 = sub_1005D0490(v26, 1, v33);

  return v27;
}

uint64_t sub_100384824(uint64_t a1)
{
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = aBlock - v7;
  OfferAction.adamId.getter();
  v9 = AdamId.numberValue.getter();
  v10 = *(v3 + 8);
  v10(v8, v2);
  if (v9)
  {
    sub_10002849C(&qword_1009764A0);
    v11 = Promise.__allocating_init()();
    sub_10002849C(&qword_100973210);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007B0B70;
    *(v12 + 32) = v9;
    sub_100005744(0, &qword_10097FB80);
    v13 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() queryForStoreItemIDs:isa];

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = a1;
    aBlock[4] = sub_100384C5C;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10037FE78;
    aBlock[3] = &unk_1008BFFC0;
    v17 = _Block_copy(aBlock);
    v18 = v13;

    [v15 executeQueryWithResultHandler:v17];
    _Block_release(v17);

    return v11;
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for OSLogger();
    sub_1000056A8(v20, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10002849C(&qword_1009764A0);
    OfferAction.adamId.getter();
    v21 = AdamId.stringValue.getter();
    v23 = v22;
    v10(v5, v2);
    sub_100384158();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return Promise.__allocating_init(error:)();
  }
}

uint64_t sub_100384CD8(unint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for OSSignpostID() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100382E24(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8, *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100384DE0(uint64_t a1)
{
  v3 = *(type metadata accessor for AdamId() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_100382468(a1, v4, v5, v6);
}

uint64_t sub_100384E54()
{
  type metadata accessor for AdamId();

  return sub_100382680();
}

uint64_t sub_100384EE4(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 sub_100384F00(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100384F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100384F5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100384FA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

char *sub_100384FE0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_10038525C()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v8, v4);

  *(v2 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = 0;

  sub_100617504();
  v5 = &v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_10038536C()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell();
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    AspectRatio.init(_:_:)();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    AspectRatio.height(fromWidth:)();
    v25 = *&v1[OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_100385628()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell()
{
  result = qword_100981DD8;
  if (!qword_100981DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100385700()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_1003857C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v7);
  return v4;
}

void sub_100385868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4764(a1, a2, a3, WitnessTable);
}

void sub_1003858D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1002A4A1C(a1, a2, a3, WitnessTable);
}

unint64_t sub_100385940(uint64_t a1)
{
  result = sub_100385968();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100385968()
{
  result = qword_100981DE8;
  if (!qword_100981DE8)
  {
    type metadata accessor for ScreenshotCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981DE8);
  }

  return result;
}

void sub_1003859C0()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_100385AA4(void *a1)
{
  v1 = a1;
  sub_1003859C0();
}

double sub_100385AEC(void *a1)
{
  v1 = a1;
  sub_100041CD0(v1);

  return 0.0;
}

id sub_100385B40()
{
  v1 = v0;
  v2 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v174 = *(v2 - 8);
  v175 = v2;
  __chkstk_darwin(v2);
  v173 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v170 = *(v4 - 8);
  v171 = v4;
  __chkstk_darwin(v4);
  v172 = &v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v167 = *(v6 - 8);
  v168 = v6;
  __chkstk_darwin(v6);
  v169 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleHeaderLayout();
  v176 = *(v8 - 8);
  __chkstk_darwin(v8);
  v164 = (&v148 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for LabelPlaceholderCompatibility();
  v166 = *(v10 - 8);
  __chkstk_darwin(v10);
  v165 = &v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitleHeaderLayout.Child();
  v191 = *(v12 - 8);
  v192 = v12;
  __chkstk_darwin(v12);
  v153 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v190 = (&v148 - v15);
  __chkstk_darwin(v16);
  v189 = &v148 - v17;
  __chkstk_darwin(v18);
  v20 = &v148 - v19;
  v21 = type metadata accessor for CharacterSet();
  v154 = *(v21 - 8);
  v155 = v21;
  __chkstk_darwin(v21);
  v151 = &v148 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v182);
  v183 = &v148 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_100984360);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v150 = &v148 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v186 = (&v148 - v28);
  __chkstk_darwin(v29);
  v185 = &v148 - v30;
  __chkstk_darwin(v31);
  v152 = &v148 - v32;
  __chkstk_darwin(v33);
  v188 = (&v148 - v34);
  __chkstk_darwin(v35);
  v187 = (&v148 - v36);
  __chkstk_darwin(v37);
  v180 = &v148 - v38;
  *&v40 = __chkstk_darwin(v39).n128_u64[0];
  v42 = &v148 - v41;
  result = [v0 collectionView];
  if (result)
  {
    v44 = result;
    v160 = v10;
    v161 = v25;
    v158 = v24;
    v159 = v8;
    v179 = v20;
    [result frame];

    v184 = dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
    v46 = v45;
    v47 = v1;
    if (qword_10096D3B0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for TitleHeaderView.Style(0);
    v49 = sub_1000056A8(v48, qword_1009CE860);
    sub_100041CD0(v49);
    v50 = [v47 traitCollection];
    v51 = v191 + 56;
    v52 = *(v191 + 56);
    v177 = v42;
    v53 = v42;
    v54 = v192;
    v52(v53, 1, 1, v192);
    v156 = v52;
    v157 = v51;
    v52(v180, 1, 1, v54);
    v222 = 0;
    memset(v221, 0, sizeof(v221));
    v220 = 0;
    memset(v219, 0, sizeof(v219));
    v178 = v48;
    v55 = *(v48 + 20);
    v181 = v49;
    v149 = v55;
    sub_1002C0C9C(v49 + v55, v183, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1000367E8();
    v162 = v50;
    v56 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v57 = v46;
    v163 = v47;
    if (!v46)
    {
      v62 = v192;
      goto LABEL_11;
    }

    v58 = v184;
    *&v216 = v184;
    *(&v216 + 1) = v46;

    v59 = v151;
    static CharacterSet.excessiveLeading.getter();
    sub_10007FED4();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v61 = v60;
    (v154)[1](v59, v155);

    if (v61)
    {
      v62 = v192;
      goto LABEL_11;
    }

    [v56 lineHeight];
    v64 = ceil(v63 * 1.3);
    v65 = &v200;
    v62 = v192;
    if ((*&v64 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v64 > -9.22337204e18)
    {
      if (v64 < 9.22337204e18)
      {
LABEL_11:
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        v66 = type metadata accessor for Feature();
        v214 = v66;
        v215 = sub_100387C98(&qword_100972E50, &type metadata accessor for Feature);
        v67 = sub_1000056E0(v213);
        (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);

        v68 = v56;
        isFeatureEnabled(_:)();
        sub_100007000(v213);
        v69 = v165;
        v154 = v68;
        v155 = v57;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        (*(v166 + 8))(v69, v160);
        sub_100031660(&v216, v212, &qword_100975610);
        v70 = v214;
        v71 = v215;
        v72 = sub_10002A400(v213, v214);
        v211[3] = v70;
        v211[4] = *(v71 + 8);
        v73 = sub_1000056E0(v211);
        (*(*(v70 - 8) + 16))(v73, v72, v70);
        v75 = v182;
        v74 = v183;
        v76 = *(v183 + v182[8]);
        v209 = &type metadata for Float;
        v210 = &protocol witness table for Float;
        v208 = v76;
        v77 = v182[9];
        v78 = type metadata accessor for StaticDimension();
        v207[3] = v78;
        v207[4] = &protocol witness table for StaticDimension;
        v79 = sub_1000056E0(v207);
        v80 = *(*(v78 - 8) + 16);
        v80(v79, v74 + v77, v78);
        v81 = v75[10];
        v206[3] = v78;
        v206[4] = &protocol witness table for StaticDimension;
        v82 = sub_1000056E0(v206);
        v80(v82, v74 + v81, v78);
        sub_100031660(v221, &v200, &unk_10097E890);
        v83 = *(&v201 + 1);
        if (*(&v201 + 1))
        {
          v84 = v202;
          v85 = sub_10002A400(&v200, *(&v201 + 1));
          *(&v204 + 1) = v83;
          v205 = *(v84 + 8);
          v86 = sub_1000056E0(&v203);
          (*(*(v83 - 8) + 16))(v86, v85, v83);
          sub_100007000(&v200);
        }

        else
        {
          sub_10002B894(&v200, &unk_10097E890);
          v203 = 0u;
          v204 = 0u;
          v205 = 0;
        }

        v87 = v179;
        v88 = v186;
        sub_100031660(v219, v197, &unk_10097E890);
        v89 = v198;
        if (v198)
        {
          v90 = v199;
          v91 = sub_10002A400(v197, v198);
          *(&v201 + 1) = v89;
          v202 = *(v90 + 8);
          v92 = sub_1000056E0(&v200);
          (*(*(v89 - 8) + 16))(v92, v91, v89);
          sub_100007000(v197);
        }

        else
        {
          sub_10002B894(v197, &unk_10097E890);
          v200 = 0u;
          v201 = 0u;
          v202 = 0;
        }

        v93 = v182;
        v94 = v183;
        sub_10002C0AC(v183 + v182[12], v197);
        sub_10002C0AC(v94 + v93[13], &v196);
        v194 = &type metadata for Double;
        v195 = &protocol witness table for Double;
        v193 = 0x4020000000000000;
        TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
        sub_100007000(v213);
        sub_10002B894(&v216, &qword_100975610);
        v95 = *(v181 + v178[9]);
        sub_10002849C(&qword_1009812E8);
        v96 = *(v161 + 72);
        v97 = (*(v161 + 80) + 32) & ~*(v161 + 80);
        if (v95)
        {
          if (v95 == 1)
          {
            v166 = swift_allocObject();
            v98 = (v166 + v97);
            sub_100031660(v177, v166 + v97, &unk_100984360);
            v99 = v191 + 16;
            (*(v191 + 16))(&v98[v96], v87, v62);
            v156(&v98[v96], 0, 1, v62);
            sub_100031660(v180, &v98[2 * v96], &unk_100984360);
            v100 = (v99 + 32);
            v189 = (v99 + 16);
            v101 = _swiftEmptyArrayStorage;
            v102 = 3;
            v184 = v96;
            v185 = v98;
            v103 = v98;
            v104 = &unk_100984360;
            v187 = v100;
            do
            {
              v105 = v188;
              sub_100031660(v103, v188, v104);
              sub_10035EF58(v105, v88);
              v106 = v192;
              if ((*v100)(v88, 1, v192) == 1)
              {
                sub_10002B894(v88, v104);
              }

              else
              {
                v107 = v104;
                v108 = *v189;
                (*v189)(v190, v88, v106);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v101 = sub_100033A68(0, *(v101 + 2) + 1, 1, v101);
                }

                v110 = *(v101 + 2);
                v109 = *(v101 + 3);
                if (v110 >= v109 >> 1)
                {
                  v101 = sub_100033A68(v109 > 1, v110 + 1, 1, v101);
                }

                v100 = v187;
                *(v101 + 2) = v110 + 1;
                v108(v101 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v110, v190, v192);
                v88 = v186;
                v104 = v107;
                v96 = v184;
              }

              v103 += v96;
              --v102;
            }

            while (v102);
            swift_setDeallocating();
            swift_arrayDestroy();
            v65 = v159;
            v52 = v164;
            v62 = v192;
          }

          else
          {
            v123 = swift_allocObject();
            v124 = v123 + v97;
            sub_100031660(v177, v123 + v97, &unk_100984360);
            v125 = v191;
            (*(v191 + 16))(v123 + v97 + v96, v87, v62);
            v156((v123 + v97 + v96), 0, 1, v62);
            v126 = v152;
            sub_100031660(v123 + v97, v152, &unk_100984360);
            v127 = v150;
            sub_10035EF58(v126, v150);
            v128 = *(v125 + 48);
            v129 = (v125 + 32);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10002B894(v127, &unk_100984360);
              v130 = _swiftEmptyArrayStorage;
            }

            else
            {
              v166 = v123;
              v131 = *v129;
              (*v129)(v153, v127, v62);
              v130 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v130 = sub_100033A68(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v133 = *(v130 + 2);
              v132 = *(v130 + 3);
              if (v133 >= v132 >> 1)
              {
                v130 = sub_100033A68(v132 > 1, v133 + 1, 1, v130);
              }

              *(v130 + 2) = v133 + 1;
              v134 = v130 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v133;
              v62 = v192;
              v131(v134, v153, v192);
              v127 = v150;
            }

            v135 = v124 + v96;
            v136 = v152;
            sub_100031660(v135, v152, &unk_100984360);
            sub_10035EF58(v136, v127);
            if (v128(v127, 1, v62) == 1)
            {
              sub_10002B894(v127, &unk_100984360);
              v65 = v159;
            }

            else
            {
              v137 = *v129;
              (*v129)(v153, v127, v62);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v65 = v159;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v130 = sub_100033A68(0, *(v130 + 2) + 1, 1, v130);
              }

              v140 = *(v130 + 2);
              v139 = *(v130 + 3);
              if (v140 >= v139 >> 1)
              {
                v130 = sub_100033A68(v139 > 1, v140 + 1, 1, v130);
              }

              *(v130 + 2) = v140 + 1;
              v137(v130 + ((*(v191 + 80) + 32) & ~*(v191 + 80)) + *(v191 + 72) * v140, v153, v62);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
            v52 = v164;
          }
        }

        else
        {
          v166 = swift_allocObject();
          v111 = v166 + v97;
          sub_100031660(v177, v166 + v97, &unk_100984360);
          sub_100031660(v180, v111 + v96, &unk_100984360);
          v112 = v191 + 16;
          (*(v191 + 16))(v111 + 2 * v96, v87, v62);
          v113 = v62;
          v156((v111 + 2 * v96), 0, 1, v62);
          v186 = (v112 + 32);
          v188 = (v112 + 16);
          v190 = _swiftEmptyArrayStorage;
          v114 = 3;
          v165 = v111;
          v115 = v185;
          do
          {
            v116 = v96;
            v117 = v187;
            sub_100031660(v111, v187, &unk_100984360);
            sub_10035EF58(v117, v115);
            if ((*v186)(v115, 1, v113) == 1)
            {
              sub_10002B894(v115, &unk_100984360);
            }

            else
            {
              v118 = *v188;
              (*v188)(v189, v115, v113);
              v119 = v190;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_100033A68(0, *(v119 + 2) + 1, 1, v119);
              }

              v121 = *(v119 + 2);
              v120 = *(v119 + 3);
              if (v121 >= v120 >> 1)
              {
                v119 = sub_100033A68(v120 > 1, v121 + 1, 1, v119);
              }

              *(v119 + 2) = v121 + 1;
              v122 = (*(v191 + 80) + 32) & ~*(v191 + 80);
              v190 = v119;
              v113 = v192;
              v118(v119 + v122 + *(v191 + 72) * v121, v189);
              v115 = v185;
            }

            v96 = v116;
            v111 += v116;
            --v114;
          }

          while (v114);
          swift_setDeallocating();
          swift_arrayDestroy();
          v65 = v159;
          v52 = v164;
          v62 = v113;
        }

        swift_deallocClassInstance();
        v218 = 0;
        v216 = 0u;
        v217 = 0u;
        sub_100031660(&v216, v213, &qword_100975610);
        v141 = v178;
        v142 = v181;
        v143 = *(v181 + v178[14]);
        v212[3] = &type metadata for CGFloat;
        v212[4] = &protocol witness table for CGFloat;
        v212[0] = v143;
        (*(v167 + 16))(v169, v181 + v178[10], v168);
        (*(v170 + 16))(v172, v142 + v141[11], v171);
        (*(v174 + 104))(v173, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v175);
        TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
        CGSize.subtracting(insets:)();
        sub_100387C98(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v213[0] = v144;
        v213[1] = v145;
        CGSize.add(outsets:)();
        if (JUScreenClassGetMain() != 1)
        {

          (*(v176 + 8))(v52, v65);
          (*(v191 + 8))(v179, v62);
          sub_1001EFF9C(v183);
          sub_10002B894(v219, &unk_10097E890);
          sub_10002B894(v221, &unk_10097E890);
          sub_10002B894(v180, &unk_100984360);
          sub_10002B894(v177, &unk_100984360);
          goto LABEL_62;
        }

        v57 = v176;
        v58 = v177;
        v59 = v179;
        if (qword_10096E760 != -1)
        {
          swift_once();
        }

        v146 = sub_1000056A8(v182, qword_1009D2688);
        v61 = v149;
        if (sub_1003FA6EC(v181 + v149, v146))
        {

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_1001EFF9C(v183);
          sub_10002B894(v219, &unk_10097E890);
          sub_10002B894(v221, &unk_10097E890);
          sub_10002B894(v180, &unk_100984360);
          sub_10002B894(v58, &unk_100984360);
LABEL_62:
          sub_10002B894(&v216, &qword_100975610);
        }

        if (qword_10096E768 == -1)
        {
LABEL_61:
          v147 = sub_1000056A8(v182, qword_1009D26A0);
          sub_1003FA6EC(v181 + v61, v147);

          (*(v57 + 8))(v52, v65);
          (*(v191 + 8))(v59, v62);
          sub_1001EFF9C(v183);
          sub_10002B894(v219, &unk_10097E890);
          sub_10002B894(v221, &unk_10097E890);
          sub_10002B894(v180, &unk_100984360);
          sub_10002B894(v58, &unk_100984360);
          goto LABEL_62;
        }

LABEL_66:
        swift_once();
        goto LABEL_61;
      }

LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    __break(1u);
    goto LABEL_65;
  }

  __break(1u);
  return result;
}

id sub_100387448(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007FB9D0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v10 = String._bridgeToObjectiveC()();
    v11.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14.receiver = v4;
    v14.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v14, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v10, v11.super.isa);
  }

  return v12;
}

id sub_10038759C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = sub_100387448(v12, v9, v11);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void sub_1003876DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 != 0xD000000000000039 || 0x80000001007FB9D0 != a4) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v25 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v26.receiver = v5;
    v26.super_class = ObjectType;
    objc_msgSendSuper2(&v26, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", a1, a2, v25, isa);

    goto LABEL_14;
  }

  type metadata accessor for TitleHeaderView(0);
  v14 = swift_dynamicCastClassUnconditional();
  v15 = sub_100041CD0(v14);
  if (v15 > 40.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 40.0;
  }

  [v14 setLayoutMargins:{0.0, v16, 0.0, v16}];
  v17 = (v14 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
  *v17 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v17[1] = 0;

  v18 = OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel;
  [*(v14 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel) setNumberOfLines:0];
  [*(v14 + v18) setAllowsDefaultTighteningForTruncation:1];
  v19 = sub_100041CD0([*(v14 + v18) setTextAlignment:1]);
  if (v19 <= 40.0)
  {
    v19 = 40.0;
  }

  v20 = (v14 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
  *v20 = 0.0;
  v20[1] = v19;
  v20[2] = 0.0;
  v20[3] = v19;
  [v14 setNeedsLayout];
  if (qword_10096D3B0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_1009CE860);
  sub_1002C0C9C(v21, v13, type metadata accessor for TitleHeaderView.Style);
  (*((swift_isaMask & *v14) + 0x1C8))(v13);
  dispatch thunk of BaseGenericPagePresenter.pageTitle.getter();
  if (v22)
  {
    v23 = *(v14 + v18);
    isa = String._bridgeToObjectiveC()();

    [v23 setText:isa];
LABEL_14:
  }
}

uint64_t sub_100387A1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1003876DC(v14, v15, v11, v13);

  return (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for PrivacyDefinitionsViewController()
{
  result = qword_100981E18;
  if (!qword_100981E18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100387C98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100387CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v143 = a3;
  v11 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v11 - 8);
  v130 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v129 = &v120 - v14;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v128 = &v120 - v16;
  v17 = type metadata accessor for VideoControls();
  __chkstk_darwin(v17 - 8);
  v127 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v120 - v20;
  v21 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v21 - 8);
  v125 = &v120 - v22;
  v123 = type metadata accessor for VideoFillMode();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v124 = &v120 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for VideoConfiguration();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v142 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ComponentLayoutOptions();
  v140 = *(v25 - 8);
  v141 = v25;
  __chkstk_darwin(v25);
  v139 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v135 = *(v27 - 8);
  v136 = v27;
  __chkstk_darwin(v27);
  v134 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for BreakoutDetailsDisplayProperties();
  v137 = *(v29 - 8);
  v138 = v29;
  __chkstk_darwin(v29);
  v31 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v32 - 8);
  v34 = &v120 - v33;
  v35 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v35);
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = (&v120 - v39);
  v41 = sub_10002849C(&unk_1009732B0);
  v145 = *(v41 - 8);
  v146 = v41;
  *&v42 = __chkstk_darwin(v41).n128_u64[0];
  v144 = &v120 - v43;
  v44 = [a6 snapshotPageTraitEnvironment];
  *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_pageTraits] = v44;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v7 setNeedsLayout];
  swift_unknownObjectRelease();
  v147 = a1;
  LargeHeroBreakout.details.getter();
  v45 = BreakoutDetails.badgeColorOverride.getter();

  v133 = a4;
  if (v45)
  {
    if (qword_10096CFF0 != -1)
    {
      swift_once();
    }

    v46 = sub_1000056A8(v35, qword_1009CDE58);
    sub_1000C2608(v46, v40);
    v47 = *v40;
    v48 = v45;

    *v40 = v45;
    sub_1000C2608(v40, v37);
    sub_10002849C(&qword_100973F50);
    v49 = v144;
    Conditional<>.init(value:)();

    sub_1000C266C(v40);
  }

  else
  {
    if (qword_10096CFF0 != -1)
    {
      swift_once();
    }

    v50 = sub_1000056A8(v35, qword_1009CDE58);
    sub_1000C2608(v50, v40);
    sub_10002849C(&qword_100973F50);
    v49 = v144;
    Conditional<>.init(value:)();
  }

  v51 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailsView];
  v52 = LargeHeroBreakout.details.getter();
  v53 = v145;
  v54 = v146;
  (*(v145 + 16))(v34, v49, v146);
  (*(v53 + 56))(v34, 0, 1, v54);
  v121 = v51;
  sub_1003A9938(v52, v34, v143);

  sub_10002B894(v34, &unk_100975ED0);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  v55 = v134;
  BreakoutDetailsDisplayProperties.position.getter();
  v56 = v138;
  v57 = *(v137 + 8);
  v57(v31, v138);
  v58 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_detailPosition;
  swift_beginAccess();
  v59 = v135;
  v60 = &v7[v58];
  v61 = v136;
  (*(v135 + 24))(v60, v55, v136);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v59 + 8))(v55, v61);
  v62 = v139;
  static ComponentLayoutOptions.isFirstSection.getter();
  sub_100389E54(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v63 = v141;
  v64 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v140 + 8))(v62, v63);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  v65 = BreakoutDetailsDisplayProperties.wantsBlur.getter();
  v57(v31, v56);
  v66 = v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden];
  v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isBackgroundEffectViewHidden] = ((v64 | v65) & 1) == 0;
  v67 = &off_100982000;
  if (((v64 | v65) & 1) == v66)
  {
    if ((v64 | v65))
    {
      v68 = [v7 contentView];
      [v68 insertSubview:*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] aboveSubview:*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer]];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView] removeFromSuperview];
    }
  }

  v69 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_backgroundEffectView];
  v70 = v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect];
  v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect] = v64 & 1;
  if ((v64 & 1) != v70)
  {
    v71 = 0.0;
    if (v64)
    {
      *&v71 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient] setOpacity:v71];
    [v69 setNeedsDisplay];
  }

  v72 = v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect];
  v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect] = v65 & 1;
  if ((v65 & 1) != v72)
  {
    v73 = 0.0;
    if (v65)
    {
      v73 = 1.0;
    }

    [*&v69[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView] setAlpha:v73];
    [v69 setNeedsDisplay];
  }

  v74 = LargeHeroBreakout.heading.getter();
  v76 = v75;
  if (v75)
  {
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v74 & 0xFFFFFFFFFFFFLL;
    }

    v78 = v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v79 = v77 == 0;
    v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = v79;
    if (v79 == v78)
    {
      goto LABEL_26;
    }

    if (v77)
    {
      v80 = [v7 contentView];
      [v80 insertSubview:*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] belowSubview:v121];

LABEL_26:
      v81 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
LABEL_30:
      v83 = String._bridgeToObjectiveC()();

      goto LABEL_31;
    }
  }

  else
  {
    v82 = v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden];
    v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_isHeaderLabelHidden] = 1;
    if (v82 == 1)
    {
      v83 = 0;
      v81 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
      goto LABEL_31;
    }
  }

  [*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel] removeFromSuperview];
  v81 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_headerLabel];
  if (v76)
  {
    goto LABEL_30;
  }

  v83 = 0;
LABEL_31:
  [v81 setText:v83];

  sub_1003AEAA0();
  if (LargeHeroBreakout.video.getter())
  {
    (*(v122 + 104))(v124, enum case for VideoFillMode.scaleAspectFill(_:), v123);
    Video.preview.getter();
    Artwork.size.getter();
    v84 = v125;
    AspectRatio.init(_:_:)();

    v85 = type metadata accessor for AspectRatio();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v86 = v148[0];
    Video.playbackId.getter();
    v87 = v128;
    Video.videoUrl.getter();
    v88 = type metadata accessor for URL();
    (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
    v141 = v7;
    v89 = v129;
    Video.templateMediaEvent.getter();
    v90 = v130;
    Video.templateClickEvent.getter();
    v91 = type metadata accessor for VideoView();
    sub_100389E54(&qword_100973190, type metadata accessor for VideoView);
    v140 = v91;
    v143 = v86;
    v92 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v90, &unk_100973A50);
    v7 = v141;
    sub_10002B894(v89, &unk_100973A50);
    v93 = v87;
    v67 = &off_100982000;
    sub_10002B894(v93, &qword_100982460);
    sub_10002B894(v148, &qword_10096FB90);
    v94 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer];
    v95 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
    v96 = *(v94 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    if (v92)
    {
      v97 = v92;
      v98 = [v97 superview];
      if (v98)
      {
        v99 = v98;
        sub_100005744(0, &qword_100972EB0);
        v100 = v96;
        v101 = static NSObject.== infix(_:_:)();

        v67 = &off_100982000;
        if (v101)
        {
          [v97 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v106 = *&v96[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v96[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v92;
    v107 = v92;
    sub_10047C6C8(v106);

    v108 = *(*(v94 + v95) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v108 && (v109 = swift_dynamicCastClass()) != 0)
    {
      v110 = v109;
      v111 = v108;
      [v110 setUserInteractionEnabled:0];
    }

    else
    {
    }

    (*(v131 + 8))(v142, v132);
  }

  else if (LargeHeroBreakout.artwork.getter())
  {

    v102 = *&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
    v103 = *(*&v7[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v104 = *(v103 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    *(v103 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v102;
    v105 = v102;
    sub_10047C6C8(v104);

    sub_10047B37C();
  }

  v112 = LargeHeroBreakout.backgroundColor.getter();
  v113 = v144;
  if (!v112)
  {
    v112 = [objc_opt_self() clearColor];
  }

  v114 = v112;
  v115 = *(v67[475] + v7);
  v116 = type metadata accessor for MediaView();
  v149.receiver = v115;
  v149.super_class = v116;
  objc_msgSendSuper2(&v149, "setBackgroundColor:", v114);
  [*(*&v115[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v114];
  v117 = *&v115[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v117)
  {
    v118 = v117;
    [v118 setBackgroundColor:v114];
  }

  [v7 setNeedsLayout];
  return (*(v145 + 8))(v113, v146);
}

uint64_t sub_100388DFC()
{
  result = dispatch thunk of LargeHeroBreakout.clickAction.getter();
  if (result)
  {

    return 3;
  }

  return result;
}

uint64_t sub_100388E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v6, v12);
  sub_1003AE3AC(v9, a5, v14);
  (*(v7 + 8))(v9, v6);
  type metadata accessor for LargeHeroBreakoutLayout();
  sub_100389E54(&unk_100982470, &type metadata accessor for LargeHeroBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  (*(v11 + 8))(v14, v10);
  v15 = [objc_opt_self() fractionalWidthDimension:1.0];
  v16 = static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)();

  return v16;
}

double sub_100389118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v39 = type metadata accessor for BreakoutDetailsDisplayProperties.DetailPosition();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for BreakoutDetailsDisplayProperties();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LargeHeroBreakoutLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v36 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LargeHeroBreakoutLayout();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LabelPlaceholderCompatibility();
  v13 = *(v32 - 8);
  *&v14 = __chkstk_darwin(v32).n128_u64[0];
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a4;
  v17 = [a4 traitCollection];
  v18 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v19 = LayoutViewPlaceholder.init(representing:)();
  v35 = a1;
  LargeHeroBreakout.heading.getter();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E2E0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  sub_1000056A8(v20, qword_1009D1820);
  static UIFont.preferredFont(forUseWith:compatibleWith:)();
  v21 = type metadata accessor for Feature();
  v31 = v17;
  v22 = v21;
  v50[3] = v21;
  v50[4] = sub_100389E54(&qword_100972E50, &type metadata accessor for Feature);
  v23 = sub_1000056E0(v50);
  (*(*(v22 - 8) + 104))(v23, enum case for Feature.measurement_with_labelplaceholder(_:), v22);
  isFeatureEnabled(_:)();
  sub_100007000(v50);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v13 + 8))(v16, v32);
  LargeHeroBreakout.detailsDisplayProperties.getter();
  BreakoutDetailsDisplayProperties.position.getter();
  (*(v33 + 8))(v9, v34);
  sub_1003AE3AC(v7, v42, v36);
  (*(v37 + 8))(v7, v39);
  swift_allocObject();
  v24 = LayoutViewPlaceholder.init(representing:)();
  v48 = v18;
  v49 = &protocol witness table for LayoutViewPlaceholder;
  v47 = v24;
  sub_10002C0AC(v50, v46);
  v44 = v18;
  v45 = &protocol witness table for LayoutViewPlaceholder;
  v43 = v19;

  v25 = v38;
  LargeHeroBreakoutLayout.init(metrics:backgroundMediaView:headerLabel:detailsView:)();
  sub_100389E54(&qword_100982468, &type metadata accessor for LargeHeroBreakoutLayout);
  v26 = v41;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;

  (*(v40 + 8))(v25, v26);
  sub_100007000(v50);
  return v28;
}

uint64_t sub_10038972C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v7 - 8);
  v9 = v32 - v8;
  v10 = type metadata accessor for VideoConfiguration();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AspectRatio();
  v35 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v37);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for LargeHeroBreakout();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v18 = v36;
    v19 = LargeHeroBreakout.video.getter();
    if (v19)
    {
      v33 = v3;
      v20 = *(*(*&v3[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v20 && (v32[4] = v19, v21 = type metadata accessor for VideoView(), (v22 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v21;
        v32[3] = v18;
        v23 = qword_1009D2200;
        v24 = v22;
        swift_beginAccess();
        v25 = *(v11 + 16);
        v32[1] = v24;
        v25(v13, v24 + v23, v10);
        v26 = v20;
        VideoConfiguration.aspectRatio.getter();
        (*(v11 + 8))(v13, v10);
        v27 = v35;
        if ((*(v35 + 48))(v9, 1, v14) != 1)
        {
          (*(v27 + 32))(v16, v9, v14);
          [v33 bounds];
          AspectRatio.maxSize(filling:)();
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          sub_100389E54(&unk_1009840E0, type metadata accessor for VideoView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          return (*(v27 + 8))(v16, v14);
        }

        sub_10002B894(v9, &unk_1009732A0);
      }

      else
      {
      }

      v3 = v33;
    }

    if (LargeHeroBreakout.artwork.getter())
    {
      [v3 bounds];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v28 = OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView;
      v29 = *&v3[OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v29 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v30 = *&v3[v28];
      type metadata accessor for ArtworkView();
      sub_100389E54(&qword_100970E80, &type metadata accessor for ArtworkView);
      v31 = v30;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  return result;
}

void sub_100389CDC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_artworkView);
  type metadata accessor for ArtworkView();
  sub_100389E54(&qword_100970E80, &type metadata accessor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v3 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore35LargeHeroBreakoutCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  if (v3)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_100389E54(&unk_1009840E0, type metadata accessor for VideoView);
      v4 = v3;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }
}

uint64_t sub_100389E54(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100389E9C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "prepareForReuse");
  *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;

  v2 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
  ArtworkView.image.setter();

  v3 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer];
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  v6 = *(v5 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v5 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v6);

  sub_10047B37C();
  v7 = *(v3 + v4);
  v8 = *(v7 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
  *(v7 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = 0;
  sub_10047C6C8(v8);

  *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;

  v9 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  if (v9)
  {
    v10 = v9;
    ArtworkView.image.setter();
  }

  *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;

  v11 = &v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle];
  *v11 = 0;
  *(v11 + 1) = 0;

  sub_10038A1E8();
  v12 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  [v12 setHidden:1];
  [v12 setText:0];
  v13 = &v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText];
  *v13 = 0;
  *(v13 + 1) = 0;

  return sub_10038A36C();
}

id sub_10038A0E8()
{
  v1 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = [v0 contentView];
    [v5 insertSubview:v4 aboveSubview:*&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer]];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_10038A1E8()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  v2 = [v1 text];
  if (!v2)
  {
    v8 = &v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle + 8];
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

      v11 = String._bridgeToObjectiveC()();

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
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v8 = &v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle + 8];
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

  if (v4 != *&v0[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle] || v7 != v6)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      return;
    }

    goto LABEL_12;
  }
}

id sub_10038A36C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v31 - v8;
  if (*&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText + 8])
  {
    v10 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel];
    v12 = &selRef__setDefaultAttributes_;
    if (v11)
    {
    }

    else
    {
      v14 = qword_10096DDE8;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for FontUseCase();
      v16 = sub_1000056A8(v15, qword_1009D0938);
      v17 = *(v15 - 8);
      (*(v17 + 16))(v9, v16, v15);
      (*(v17 + 56))(v9, 0, 1, v15);
      (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
      v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v19 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      v20 = String._bridgeToObjectiveC()();
      [v19 setText:v20];

      v21 = qword_10096D6F8;
      v22 = v19;
      if (v21 != -1)
      {
        swift_once();
      }

      [v22 setTextColor:qword_1009CF528];

      [v22 setTextAlignment:1];
      [v22 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v23 = v22;
      sub_10038A814(v22);
      v12 = &selRef__setDefaultAttributes_;
      v24 = [v1 contentView];
      [v24 addSubview:v23];

      v11 = *&v1[v10];
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v25 = [v11 layer];
    v26 = [v1 v12[388]];
    [v26 overrideUserInterfaceStyle];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();

    [v25 setCompositingFilter:v27];

    v28 = *&v1[v10];
    if (v28)
    {
      v29 = v28;
      v30 = String._bridgeToObjectiveC()();

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

  result = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel];
  if (result)
  {

    return [result setHidden:{1, v7}];
  }

  return result;
}

void sub_10038A814(void *a1)
{
  v3 = type metadata accessor for AutomationSemantics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel;
  v8 = *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel);
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel) = a1;
  v13 = a1;

  v9 = *(v1 + v7);
  if (v9)
  {
    memset(v15, 0, sizeof(v15));
    memset(v14, 0, sizeof(v14));
    v10 = v9;
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10002B894(v14, &unk_1009711D0);
    sub_10002B894(v15, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v11 = v13;
  }
}

void (*sub_10038A9BC(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer);
  v4 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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
  return sub_10038AA58;
}

void sub_10038AA58(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    if (v2)
    {
      sub_10038C528(&qword_100973190, type metadata accessor for VideoView);
      v5 = v2;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100005744(0, &qword_100972EB0);
        v8 = v3;
        v9 = static NSObject.== infix(_:_:)();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v2;
    v16 = v2;
    sub_10047C6C8(v15);

    v17 = *a1;
  }

  else
  {
    if (v2)
    {
      sub_10038C528(&qword_100973190, type metadata accessor for VideoView);
      v10 = v2;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100005744(0, &qword_100972EB0);
        v13 = v3;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v19 = *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v3[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v2;
    v18 = v2;
    sub_10047C6C8(v19);

    v17 = v19;
  }
}

char *sub_10038ACA0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for DirectionalTextAlignment();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v83 - v14;
  v16 = type metadata accessor for WordmarkView.Alignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v20 - 8);
  v22 = &v83 - v21;
  v23 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_itemLayoutContext;
  v24 = type metadata accessor for ItemLayoutContext();
  (*(*(v24 - 8) + 56))(&v5[v23], 1, 1, v24);
  v25 = &v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork] = 0;
  v27 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView;
  v28 = enum case for Wordmark.arcade(_:);
  v29 = type metadata accessor for Wordmark();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v22, v28, v29);
  (*(v30 + 56))(v22, 0, 1, v29);
  (*(v17 + 104))(v19, enum case for WordmarkView.Alignment.leading(_:), v16);
  *(&v97 + 1) = &type metadata for Double;
  v98 = &protocol witness table for Double;
  *&v96 = 0x4028000000000000;
  v31 = objc_allocWithZone(type metadata accessor for WordmarkView());
  *&v5[v27] = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView] = 0;
  v32 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_10096DDE0 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for FontUseCase();
  v34 = sub_1000056A8(v33, qword_1009D0920);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v15, v34, v33);
  (*(v35 + 56))(v15, 0, 1, v33);
  (*(v84 + 104))(v85, enum case for DirectionalTextAlignment.none(_:), v86);
  v36 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v32] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton;
  v38 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v37] = sub_1000F5284(0);
  v39 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *&v5[v39] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel] = 0;
  v40 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView;
  *&v5[v40] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v41 = type metadata accessor for MediaView();
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v42[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v42[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v42[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v42[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v43 = type metadata accessor for UberContentContainer();
  v44 = objc_allocWithZone(v43);
  *&v44[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v44[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v45 = &v44[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v45 = 0;
  v45[8] = 1;
  v46 = &v44[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v46 = 0u;
  *(v46 + 1) = 0u;
  v46[32] = 1;
  *&v44[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v95.receiver = v44;
  v95.super_class = v43;
  v47 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v48 = v47;
  if (*&v47[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v47 addSubview:?];
  }

  v49 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v42[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v48;
  v94.receiver = v42;
  v94.super_class = v41;
  v50 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v50 setClipsToBounds:1];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

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
  sub_100005744(0, &qword_100970180);
  v56 = static UIColor.placeholderBackground.getter();
  [v55 setBackgroundColor:v56];

  v57 = [v51 contentView];
  v58 = [v57 layer];

  [v58 setAllowsGroupBlending:0];
  v59 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView;
  v60 = *&v51[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView];
  sub_10002849C(&qword_100973210);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007B15F0;
  v62 = objc_allocWithZone(UIColor);
  v63 = v60;
  *(v61 + 32) = [v62 initWithWhite:0.0 alpha:0.0];
  *(v61 + 40) = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.15];
  *&v63[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v61;

  sub_1001C0CEC();

  v64 = [v51 contentView];
  [v64 addSubview:*&v51[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer]];

  v65 = [v51 contentView];
  [v65 addSubview:*&v51[v59]];

  v66 = [v51 contentView];
  [v66 addSubview:*&v51[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton]];

  v67 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView;
  v68 = *&v51[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  v69 = static UIColor.primaryText.getter();
  [v68 setTextColor:v69];

  [*&v51[v67] setTextAlignment:1];
  [*&v51[v67] setHidden:1];
  v70 = [v51 contentView];
  [v70 addSubview:*&v51[v67]];

  v71 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView;
  v72 = *&v51[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView];
  v73 = static UIColor.primaryText.getter();
  [v72 setTintColor:v73];

  v74 = *&v51[v71];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v75 = v74;
  v76 = v88;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v91, &unk_1009711D0);
  sub_10002B894(&v96, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v77 = v90;
  v78 = *(v89 + 8);
  v78(v76, v90);
  v79 = [v51 contentView];

  [v79 addSubview:*&v51[v71]];
  v80 = *&v51[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView];
  v96 = 0u;
  v97 = 0u;
  v91 = 0u;
  v92 = 0u;
  v81 = v80;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v91, &unk_1009711D0);
  sub_10002B894(&v96, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  v78(v76, v77);
  return v51;
}

uint64_t sub_10038B8F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PosterLockupLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PosterLockupLayout();
  v40 = *(v8 - 8);
  v41 = v8;
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v39 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.receiver = v1;
  v67.super_class = ObjectType;
  objc_msgSendSuper2(&v67, "layoutSubviews", v9);
  [v1 bounds];
  v35[1] = v7;
  sub_10038A03C();
  v11 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView];
  v65 = type metadata accessor for GradientView();
  v66 = &protocol witness table for UIView;
  v64 = v11;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer];
  v62 = type metadata accessor for MediaView();
  v63 = &protocol witness table for UIView;
  v61 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView];
  v59 = type metadata accessor for WordmarkView();
  v60 = &protocol witness table for UIView;
  v58 = v13;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView];
  if (v14)
  {
    v15 = type metadata accessor for ArtworkView();
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
  v18 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView];
  v19 = type metadata accessor for DynamicTypeLabel();
  v51 = v19;
  v52 = &protocol witness table for UILabel;
  v50 = v18;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton];
  v48 = type metadata accessor for OfferButton();
  v49 = &protocol witness table for UIView;
  v47 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel];
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
  PosterLockupLayout.init(metrics:gradient:poster:header:logoArt:fallbackTitle:offerButton:footer:)();
  v30 = [v1 contentView];
  [v30 bounds];

  v31 = v36;
  PosterLockupLayout.placeChildren(relativeTo:in:)();
  (*(v37 + 8))(v31, v38);
  sub_10002849C(&unk_1009856C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  [v1 bounds];
  v33 = CGRectGetHeight(v68) + -88.0;
  [v1 bounds];
  *(inited + 32) = v33 / CGRectGetHeight(v69);
  *(inited + 40) = 0x3FF0000000000000;
  sub_1001C0B48(inited);
  return (*(v40 + 8))(v29, v41);
}

uint64_t type metadata accessor for PosterLockupCollectionViewCell()
{
  result = qword_1009824C0;
  if (!qword_1009824C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038BFF4()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10038C0B8()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

void sub_10038C128(void *a1)
{
  sub_10047D0EC(a1);
}

uint64_t (*sub_10038C180(uint64_t **a1))()
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
  v2[4] = sub_10038A9BC(v2);
  return sub_1000B4CAC;
}

uint64_t sub_10038C1F0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10038C528(&unk_1009824E0, type metadata accessor for PosterLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10038C264(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10038C528(&unk_1009824E0, type metadata accessor for PosterLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10038C2F0(uint64_t *a1))()
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
  sub_10038C528(&unk_1009824E0, type metadata accessor for PosterLockupCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10038C3AC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100005744(0, &qword_100972EB0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_10038C528(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10038C570()
{
  v1 = v0;
  v43 = type metadata accessor for DirectionalTextAlignment();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v3 - 8);
  v5 = &v41 - v4;
  v6 = type metadata accessor for WordmarkView.Alignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitle);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerText);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_video) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artwork) = 0;
  v17 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_headingView;
  v18 = enum case for Wordmark.arcade(_:);
  v19 = type metadata accessor for Wordmark();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  (*(v7 + 104))(v9, enum case for WordmarkView.Alignment.leading(_:), v6);
  v47 = &type metadata for Double;
  v48 = &protocol witness table for Double;
  v46 = 0x4028000000000000;
  v21 = objc_allocWithZone(type metadata accessor for WordmarkView());
  *(v1 + v17) = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_epicHeaderView) = 0;
  v22 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_fallbackTitleView;
  if (qword_10096DDE0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D0920);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v5, v24, v23);
  (*(v25 + 56))(v5, 0, 1, v23);
  (*(v41 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v43);
  v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v22) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_offerButton;
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v27) = sub_1000F5284(0);
  v29 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v29) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_footerLabel) = 0;
  v30 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_gradientView;
  *(v1 + v30) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v31 = type metadata accessor for MediaView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView] = 0;
  *&v32[OBJC_IVAR____TtC8AppStore9MediaView_reflectionAmount] = 0;
  v32[OBJC_IVAR____TtC8AppStore9MediaView_isRubberbanding] = 0;
  *&v32[OBJC_IVAR____TtC8AppStore9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v32[OBJC_IVAR____TtC8AppStore9MediaView_reflectionOffset] = 0;
  v33 = type metadata accessor for UberContentContainer();
  v34 = objc_allocWithZone(v33);
  *&v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = 0;
  *&v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = 0;
  v35 = &v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_prominentPlayButtonCenterYOverride];
  *v35 = 0;
  v35[8] = 1;
  v36 = &v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_systemBackgroundExtensionOutsets];
  *v36 = 0u;
  *(v36 + 1) = 0u;
  v36[32] = 1;
  *&v34[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView] = 0;
  v45.receiver = v34;
  v45.super_class = v33;
  v37 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v38 = v37;
  if (*&v37[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_backgroundExtensionView])
  {
    [v37 addSubview:?];
  }

  v39 = OBJC_IVAR____TtC8AppStore30PosterLockupCollectionViewCell_mediaViewContainer;
  *&v32[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] = v38;
  v44.receiver = v32;
  v44.super_class = v31;
  v40 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v41);
  [v40 setClipsToBounds:1];
  [v40 addSubview:*&v40[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer]];

  *(v1 + v39) = v40;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10038CC0C()
{
  v1 = OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10038CCD4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  sub_10002849C(&qword_10097B110);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1007B10D0;
  *(v5 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v5 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v6 = sub_10038CC0C();
  v7 = [v6 searchTextField];

  v8 = objc_allocWithZone(type metadata accessor for SearchTextInputSourceTextField());
  v9 = sub_10061A83C(v7);
  v10 = *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput];
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = v9;

  v11 = OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar;
  [*&v1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] setDelegate:v1];
  v12 = *&v1[v11];
  sub_100615BAC();

  v13 = *&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton];
  static UIButton.Configuration._glass()();
  v14._countAndFlagsBits = 0x465F484352414553;
  v14._object = 0xEE00535245544C49;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  localizedString(_:comment:)(v14, v15);
  UIButton.Configuration.title.setter();
  v16 = sub_10032FEB0(0xD000000000000010, 0x800000010080FCA0, 0);
  v17 = [v16 imageWithRenderingMode:2];

  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  v18 = type metadata accessor for UIButton.Configuration();
  (*(*(v18 - 8) + 56))(v4, 0, 1, v18);
  UIButton.configuration.setter();
  [v13 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v13 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  v19 = 0.0;
  [v13 setAlpha:0.0];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_10097CD40);
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v13 addAction:v20 forControlEvents:64];

  [v13 setPointerInteractionEnabled:1];
  [*&v1[v11] _setSearchFieldContainerLayoutCustomizationDelegate:v1];
  v21 = [v1 traitCollection];
  [v21 horizontalSizeClass];
  LOBYTE(v4) = UITraitCollection.isRegularPad.getter();
  [*&v1[v11] _additionalPaddingForSearchFieldAtLeadingEdge];
  v23 = v22;
  if (v4)
  {
    [v13 sizeThatFits:{1.79769313e308, 1.79769313e308}];
    v19 = v24 + 15.0;
  }

  if (v19 != v23)
  {
    v25 = *&v1[v11];
    [v25 _setAdditionalPaddingForSearchFieldAtLeadingEdge:v19];
  }
}

void sub_10038D440()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
    if (v1)
    {
      v2 = *&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButton];
      v3 = Strong;
      sub_10000827C(*&Strong[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler]);
      v4 = v2;
      v1();
      sub_10001F63C(v1);

      Strong = v4;
    }
  }
}

double *sub_10038D56C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SearchController();
  v1 = objc_msgSendSuper2(&v10, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100005744(0, &qword_100982610);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = v3;
  v4 = UIKeyInputEscape;
  v5._object = 0x800000010080FCC0;
  v5._countAndFlagsBits = 0xD000000000000035;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  localizedString(_:comment:)(v5, v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"handleCancelKeyCommandWithCommand:" discoverabilityTitle:v7];

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v11;
}

id sub_10038D788(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] = 0;
  v6 = &v3[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC8AppStore16SearchController_filterButton;
  *&v3[v7] = [objc_opt_self() buttonWithType:1];
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10038D8F4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8AppStore16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SearchController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_10038D9FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10038DAC4(char *a1, void *a2)
{
  v13 = [a1 traitCollection];
  v4 = [v13 horizontalSizeClass];
  v5 = v4 == [a2 horizontalSizeClass];
  v6 = v13;
  if (!v5)
  {
    v7 = UITraitCollection.isRegularPad.getter();
    v8 = sub_10038CC0C();
    [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
    v10 = v9;

    v11 = 0.0;
    if (v7)
    {
      [*&a1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
      v11 = v12 + 15.0;
    }

    v6 = v13;
    if (v11 != v10)
    {
      [*&a1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:?];
      v6 = v13;
    }
  }
}

void sub_10038DBE0()
{
  v1 = v0;
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput];
  if (!v5)
  {
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = sub_100619DF0();

  if (v7)
  {
    v8 = [v1 searchResultsController];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for SearchResultsContainerViewController();
      v10 = swift_dynamicCastClass();
      if (v10)
      {
        v19 = *(v10 + OBJC_IVAR____TtC8AppStore36SearchResultsContainerViewController_activeSearchSectionViewController);
        v11 = v19;

        if (v19)
        {
          type metadata accessor for StoreCollectionViewController();
          v12 = swift_dynamicCastClass();
          if (v12)
          {
            v13 = *(v12 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
            v14 = sub_10002849C(&unk_100974490);

            BaseObjectGraph.injectIfAvailable<A>(_:)();
            v15 = *(v14 - 8);
            if ((*(v15 + 48))(v4, 1, v14) == 1)
            {
              sub_1000F40E0(v4);
            }

            else
            {

              sub_1005FA0B0(v17, 1, v13, v4);

              (*(v15 + 8))(v4, v14);
            }

            [*&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] setEnabled:1];

            return;
          }

          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    v19 = 0;
LABEL_11:
    [*&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] setEnabled:0];

    v16 = v19;
  }
}

void sub_10038DE7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  if ([v5 isActive])
  {
    v12 = [v5 traitCollection];
    v13 = [v12 horizontalSizeClass];

    v14 = v13 == 1;
  }

  else
  {
    v14 = 1;
  }

  v15 = *&v6[OBJC_IVAR____TtC8AppStore16SearchController_filterButton];
  [v15 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v17 = v16;
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  Height = CGRectGetHeight(v41);
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  MinY = CGRectGetMinY(v42);
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v43.size.height = a5;
  v20 = CGRectGetHeight(v43);
  v21 = [v6 traitCollection];
  v22 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!v14)
  {
    v25 = a2;
    v26 = a3;
    v27 = a4;
    v28 = a5;
    if (v22)
    {
      MaxX = CGRectGetMaxX(*&v25);
      v30 = 15.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v25) - v17;
      v30 = -15.0;
    }

    v23 = MaxX + v30;
    v24 = 1.0;
    goto LABEL_14;
  }

  if (v22)
  {
    if (!a1)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [a1 frame];
    v23 = CGRectGetMaxX(v44) + 15.0 + 8.0;
    v24 = 0.0;
LABEL_14:
    v31 = MinY + (v20 - Height) * 0.5;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v23;
    *(v32 + 32) = v31;
    *(v32 + 40) = v17;
    *(v32 + 48) = Height;
    *(v32 + 56) = v24;
    v33 = v6;
    v34 = [v15 superview];
    if (v34)
    {

      [v15 setFrame:{v23, v31, v17, Height}];
      [v15 setAlpha:v24];
      v35 = 0;
LABEL_18:
      [v15 setUserInteractionEnabled:v24 > 0.0];
      v39 = sub_10038CC0C();
      sub_100615BAC();

      sub_10001F63C(v35);
      return;
    }

    if (a1)
    {
      [a1 addSubview:v15];
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      v35 = sub_10038E440;
      *(v37 + 16) = sub_10038E440;
      *(v37 + 24) = v32;
      v40[4] = sub_10006F094;
      v40[5] = v37;
      v40[0] = _NSConcreteStackBlock;
      v40[1] = 1107296256;
      v40[2] = sub_1000489A8;
      v40[3] = &unk_1008C0270;
      v38 = _Block_copy(v40);

      [v36 performWithoutAnimation:v38];
      _Block_release(v38);
      LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

      if ((v36 & 1) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (a1)
  {
    [a1 frame];
    v23 = CGRectGetMinX(v45) - (v17 + 15.0 + 8.0);
    v24 = 0.0;
    goto LABEL_14;
  }

LABEL_22:
  __break(1u);
}

id sub_10038E294()
{
  [*&v0[OBJC_IVAR____TtC8AppStore16SearchController_filterButton] setEnabled:0];
  if ([v0 delegate])
  {
    ObjectType = swift_getObjectType();
    v2 = swift_conformsToProtocol2();
    if (v2)
    {
      (*(v2 + 8))(ObjectType, v2);
    }

    swift_unknownObjectRelease();
  }

  return [v0 setActive:0];
}

id sub_10038E37C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_messagesSearchBarVerticalSpace] = 0x4024000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonMinimumHorizontalSpace] = 0x402E000000000000;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController_searchTextInput] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore16SearchController____lazy_storage____searchBar] = 0;
  v3 = &v1[OBJC_IVAR____TtC8AppStore16SearchController_filterButtonHandler];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC8AppStore16SearchController_filterButton;
  *&v1[v4] = [objc_opt_self() buttonWithType:1];
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SearchController();
  return objc_msgSendSuper2(&v6, "initWithSearchResultsController:", a1);
}

id sub_10038E440()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore16SearchController_filterButton);
  [v2 setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];

  return [v2 setAlpha:v1];
}

uint64_t sub_10038E4B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UberedPageScrollObserver();
  v5 = swift_allocObject();
  v6 = sub_100043964(v2, v5, a1, a2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v7;
  v9 = *(v6 + 72);
  *(v6 + 72) = sub_10038F584;
  *(v6 + 80) = v8;

  sub_10001F63C(v9);

  return v6;
}

uint64_t sub_10038E588(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 16))();
  (*(a2 + 8))(a1, a2);
  sub_10038F5D8();
  CompoundScrollObserver.addChild(_:)();
}

void sub_10038E618(uint64_t a1, uint64_t a2)
{
  if (sub_10038ED6C())
  {
    v5 = *(a2 + 8);
    *(v5(a1, a2) + 88) = 1;

    v6 = [v2 transitionCoordinator];
    if (v6)
    {
      v7 = v6;
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      v9[2] = a1;
      v9[3] = a2;
      v9[4] = v8;
      v20 = sub_10038F5AC;
      v21 = v9;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1006D1458;
      v19 = &unk_1008C0428;
      v10 = _Block_copy(&aBlock);

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      v12[2] = a1;
      v12[3] = a2;
      v12[4] = v11;
      v20 = sub_10038F5CC;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_1006D1458;
      v19 = &unk_1008C0478;
      v13 = _Block_copy(&aBlock);

      [v7 animateAlongsideTransition:v10 completion:v13];
      _Block_release(v13);
      _Block_release(v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v5(a1, a2);
      v14 = [v2 collectionView];
      if (v14)
      {
        v15 = v14;
        sub_1000423A0(v14);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_10038E8AC(uint64_t a1, uint64_t a2)
{
  v5 = [v2 presentedViewController];
  if (v5)
  {
  }

  else
  {
    if ((*(a2 + 24))(a1, a2))
    {
      (*(a2 + 8))(a1, a2);
      sub_100041DF8();
    }

    else
    {
      v6 = [v2 transitionCoordinator];
      v7 = (*(a2 + 8))(a1, a2);
      if (v6)
      {
        v16 = sub_10019DB94;
        v17 = v7;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_1006D1458;
        v15 = &unk_1008C0388;
        v8 = _Block_copy(&v12);

        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        v10[2] = a1;
        v10[3] = a2;
        v10[4] = v9;
        v16 = sub_10038F5A0;
        v17 = v10;
        v12 = _NSConcreteStackBlock;
        v13 = 1107296256;
        v14 = sub_1006D1458;
        v15 = &unk_1008C03D8;
        v11 = _Block_copy(&v12);

        [v6 animateAlongsideTransition:v8 completion:v11];
        _Block_release(v11);
        _Block_release(v8);
        swift_unknownObjectRelease();
        return;
      }

      sub_100041DF8();
    }
  }
}

void sub_10038EB44(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9[4] = sub_10038F644;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1006D1458;
  v9[3] = &unk_1008C0360;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_10038EC50(char a1)
{
  v3 = (*((swift_isaMask & *v1) + 0xC0))((a1 & 8) == 0);
  if (a1 & 1) != 0 || (a1 & 2) != 0 && (v3 = (*((swift_isaMask & *v1) + 0x150))(v3), (v3))
  {
    v4 = (*((swift_isaMask & *v1) + 0xB8))(v3);
  }

  else
  {
    v4 = 0;
  }

  v5 = *((swift_isaMask & *v1) + 0x188);
  v6 = v4 & 1;

  return v5(v6);
}

BOOL sub_10038ED6C()
{
  v1 = (*((swift_isaMask & *v0) + 0x160))();
  v2 = v1 == 0;
  if (!v1)
  {
    v3 = [v0 navigationController];
    if (!v3)
    {
      return 0;
    }

    v4 = v3;
    v5 = [v3 navigationBar];

    v1 = v5;
    if (!v5)
    {
      return 0;
    }
  }

  return v2;
}

void sub_10038EE2C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = type metadata accessor for TimingCurve();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &aBlock[-1] - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, v19 = COERCE_DOUBLE((*((swift_isaMask & *Strong) + 0x1B8))()), v21 = v20, v18, (v21 & 1) != 0))
  {
    if (a4 == 1.79769313e308)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v19 != a4)
  {
LABEL_4:
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint1.getter();
    v23 = v22;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v16, v10);
    static TimingCurve.easingCurve1.getter();
    TimingCurve.controlPoint2.getter();
    v28 = v27;
    v30 = v29;
    v26(v13, v10);
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    *(v31 + 32) = a1;
    *(v31 + 40) = a4;
    v32 = objc_allocWithZone(UIViewPropertyAnimator);
    aBlock[4] = sub_10038F590;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008C0310;
    v33 = _Block_copy(aBlock);

    v34 = [v32 initWithDuration:v33 controlPoint1:a5 controlPoint2:v23 animations:{v25, v28, v30}];
    _Block_release(v33);
    [v34 startAnimation];
  }
}

void sub_10038F114(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((swift_isaMask & *Strong) + 0x1C0))(*&a1, 0);
  }
}

void sub_10038F1B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v9)
    {
      v10 = v9;
      sub_100065AF0();
      v11 = v8;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        if ([a1 isCancelled])
        {
          (*(a4 + 8))(a3, a4);
          sub_100041DF8();
        }
      }
    }
  }
}

void sub_10038F2C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3)
  {

    v3(v4, 1.0, 0.0);
    sub_10001F63C(v3);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong navigationController];

    if (v7)
    {
      v8 = [v7 navigationBar];

      [v8 _setTitleOpacity:1.0];
    }
  }

  *(a2 + 88) = 0;
}

void sub_10038F38C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 isCancelled])
    {
      v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
      if (v9)
      {
        v10 = v9;
        sub_100065AF0();
        v11 = v8;
        v12 = static NSObject.== infix(_:_:)();

        if ((v12 & 1) != 0 && sub_10038ED6C())
        {
          (*(a4 + 8))(a3, a4);
          v13 = [v11 collectionView];
          if (!v13)
          {
            __break(1u);
            return;
          }

          v14 = v13;
          sub_1000423A0(v13);
        }
      }
    }
  }
}

void sub_10038F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    (*(a4 + 8))(a3, a4);
    v8 = [v7 collectionView];
    if (v8)
    {
      v9 = v8;
      sub_1000423A0(v8);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t sub_10038F5D8()
{
  result = qword_100977FD8;
  if (!qword_100977FD8)
  {
    type metadata accessor for UberedPageScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977FD8);
  }

  return result;
}

double sub_10038F6A8(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for AspectRatio();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = type metadata accessor for PageGrid.Direction();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  type metadata accessor for Quote();
  sub_100390AFC(&qword_100982690, &type metadata accessor for Quote);
  ItemLayoutContext.typedModel<A>(as:)();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v21(v15, v12);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  PageGrid.horizontalMargins.getter();
  CGSize.subtracting(insets:)();
  v24._object = 0x80000001007FC650;
  v24._countAndFlagsBits = 0xD000000000000010;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v151 = localizedString(_:comment:)(v24, v25);
  v26 = sub_100072384(v151);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_10096CE98 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_1009CD870;
      }

      else
      {
        if (qword_10096CEA0 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_1009CD8C8;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_1009CD978;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_1009CD818;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_10096CEA8 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_1009CD920;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_100072738(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.horizontalMargins.getter();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_1000723D0(&v147);

  Quote.text.getter();
  v43 = v42;
  v44 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v134, qword_1009CD9D0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v46 = v141[0];
  v124 = v45;
  v47 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_10096E898;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_100005744(0, &unk_100993000);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100390AFC(&qword_100976620, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_100397150(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = String._bridgeToObjectiveC()();
    v62 = Dictionary._bridgeToObjectiveC()().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_100072770(v144);
  }

  else
  {

    sub_100072770(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v71 = type metadata accessor for Feature();
  v142 = v71;
  v122 = sub_100390AFC(&qword_100972E50, &type metadata accessor for Feature);
  v143 = v122;
  v72 = sub_1000056E0(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  isFeatureEnabled(_:)();
  sub_100007000(v141);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_10025BAF0(v70);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = type metadata accessor for StaticDimension();
  sub_1000056A8(v81, qword_1009CDA00);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.topMargin(from:in:)();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v81, qword_1009CDA18);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v85 = v141[0];
  v86 = type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v87 = swift_allocObject();
  v130 = xmmword_1007B0B70;
  *(v87 + 16) = xmmword_1007B0B70;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  Quote.credit.getter();
  if (v92)
  {
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v134, qword_1009CD9E8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v142 = v71;
    v143 = v122;
    v93 = sub_1000056E0(v141);
    v120(v93, v121, v71);
    isFeatureEnabled(_:)();
    sub_100007000(v141);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v81, qword_1009CDA30);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v81, qword_1009CDA48);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v113 = v112;
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v81, qword_1009CDA60);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v114 = v141[0];
    v115 = v128;
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_100390AFC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100390B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v34 = a1;
  v35 = a3;
  v6 = type metadata accessor for DirectionalTextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v34 - v11;
  v13 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label;
  if (qword_10096DCE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D0638);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v12, v15, v14);
  (*(v16 + 56))(v12, 0, 1, v14);
  (*(v7 + 104))(v9, enum case for DirectionalTextAlignment.none(_:), v6);
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v4[v13] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v18 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView;
  v19 = objc_allocWithZone(UIImageView);
  *&v4[v18] = [v19 init];
  v20 = type metadata accessor for AlertActionTrailingImageView();
  v36.receiver = v4;
  v36.super_class = v20;
  v21 = objc_msgSendSuper2(&v36, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label;
  v23 = *&v21[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label];
  v24 = v21;
  v25 = v23;
  if (a2)
  {
    v26 = String._bridgeToObjectiveC()();
  }

  else
  {
    v26 = 0;
  }

  [v23 setText:v26];

  v27 = *&v21[v22];
  v28 = v21;
  v29 = v27;
  v30 = [v28 tintColor];
  [v29 setTextColor:v30];

  [v28 addSubview:*&v21[v22]];
  v31 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView;
  v32 = v35;
  [*&v28[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView] setImage:v35];
  [v28 addSubview:*&v28[v31]];
  [v28 setLayoutMargins:{10.0, 5.0, 10.0, 5.0}];

  return v28;
}

id sub_100390EFC()
{
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AlertActionTrailingImageView();
  v43.receiver = v0;
  v43.super_class = v5;
  objc_msgSendSuper2(&v43, "layoutSubviews");
  [v0 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [v0 layoutMargins];
  v16 = sub_1000CC354(v7, v9, v11, v13, v14, v15);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView];
  v24 = [v23 image];
  v44.origin.x = v16;
  v44.origin.y = v18;
  v44.size.width = v20;
  v44.size.height = v22;
  MaxX = CGRectGetMaxX(v44);
  if (v24)
  {
    [v24 size];
    v45.origin.x = v16;
    v45.origin.y = v18;
    v45.size.width = v20;
    v45.size.height = v22;
    CGRectGetMidY(v45);
    [v24 size];
    (*(v2 + 104))(v4, enum case for FloatingPointRoundingRule.down(_:), v1);
    CGPoint.rounded(_:)();
    v27 = v26;
    v29 = v28;
    (*(v2 + 8))(v4, v1);
    [v24 size];
    v31 = v30;
    v33 = v32;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v23 setFrame:?];
    v46.origin.x = v27;
    v46.origin.y = v29;
    v46.size.width = v31;
    v46.size.height = v33;
    MinX = CGRectGetMinX(v46);

    MaxX = MinX + -10.0;
  }

  v47.origin.x = v16;
  v47.origin.y = v18;
  v47.size.width = v20;
  v47.size.height = v22;
  v35 = MaxX - CGRectGetMinX(v47);
  if (v35 > 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = *&v0[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label];
  v48.origin.x = v16;
  v48.origin.y = v18;
  v48.size.width = v20;
  v48.size.height = v22;
  [v37 sizeThatFits:{v36, CGRectGetHeight(v48)}];
  v42[1] = v38;
  v39 = [v23 image];
  if (v39)
  {
    v40 = v39;
    [v39 size];
  }

  v49.origin.x = v16;
  v49.origin.y = v18;
  v49.size.width = v20;
  v49.size.height = v22;
  CGRectGetMidX(v49);
  v50.origin.x = v16;
  v50.origin.y = v18;
  v50.size.width = v20;
  v50.size.height = v22;
  CGRectGetMidY(v50);
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v37 setFrame:?];
}

double sub_100391488(double a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView] image];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    [v3 size];
    v4 = v6;
  }

  v7 = 10.0;
  if (v4 <= 0.0)
  {
    v7 = 0.0;
  }

  v8 = a1 - v4 - v7;
  if (v8 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *&v1[OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label];
  type metadata accessor for AlertActionTrailingImageView();
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 sizeThatFits:{v9, CGRectGetHeight(v12)}];
  [v1 layoutMargins];
  [v1 layoutMargins];
  return a1;
}

id sub_10039160C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertActionTrailingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003916B0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_label;
  if (qword_10096DCE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D0638);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore28AlertActionTrailingImageView_imageView;
  *(v1 + v14) = [objc_allocWithZone(UIImageView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100391920()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView];
  v2 = OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category;
  *(v1 + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = 0;

  sub_100378DCC();
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
  *&v0[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;

  *(v1 + v2) = 0;

  sub_100378DCC();
  return [v0 setNeedsLayout];
}

uint64_t type metadata accessor for PrivacyCategoryCollectionViewCell()
{
  result = qword_100982700;
  if (!qword_100982700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100391CD0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100391D78()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView;
  *&v0[v2] = [objc_allocWithZone(type metadata accessor for PrivacyCategoryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_itemLayoutContext;
  v4 = type metadata accessor for ItemLayoutContext();
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  *&v0[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = 0;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = [v5 contentView];
  [v6 setClipsToBounds:0];

  v7 = [v5 contentView];
  [v7 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v8 = [v5 contentView];
  sub_100028BB8();
  v9 = static UIColor.defaultBackground.getter();
  [v8 setBackgroundColor:v9];

  v10 = [v5 contentView];
  [v10 addSubview:*&v5[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView]];

  return v5;
}

uint64_t sub_100391FA8()
{
  v1 = type metadata accessor for PageGrid();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v36 = &v28[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_10002849C(&qword_100980638);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28[-v6];
  type metadata accessor for Paragraph();
  sub_100392470(&qword_1009805D8, &type metadata accessor for Paragraph);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (aBlock[0])
  {
    sub_100135E04();
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    v34 = v4;
    v35 = v0;
    v32 = v7;
    v33 = v5;
    v30 = v2;
    v31 = v1;
    if (LOBYTE(aBlock[0]) == 2)
    {
      v29 = Paragraph.isCollapsed.getter();
    }

    else
    {
      v29 = LOBYTE(aBlock[0]);
    }

    v9 = Paragraph.text.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v10 = aBlock[6];
    v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v9];
    v12 = [v9 length];
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = v10;
    *(v13 + 32) = v11;
    *(v13 + 40) = 1;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_10010279C;
    *(v14 + 24) = v13;
    aBlock[4] = sub_1001027AC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    aBlock[3] = &unk_1008C04F0;
    v15 = _Block_copy(aBlock);
    v16 = v10;
    v17 = v11;

    [v9 enumerateAttributesInRange:0 options:v12 usingBlock:{0x100000, v15}];

    _Block_release(v15);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      swift_getKeyPath();
      v21 = v17;
      v22 = v36;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v24 = v23;
      v26 = v25;
      (*(v30 + 8))(v22, v31);
      v27 = sub_100079F24();
      swift_getObjectType();
      sub_100766148(v17, v29 & 1, v27, UIEdgeInsetsZero.top, left, bottom, right, v24, v26);

      swift_unknownObjectRelease();

      return (*(v33 + 8))(v32, v34);
    }
  }

  return result;
}

uint64_t sub_100392470(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100392504()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LabelPlaceholderCompatibility();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreorderDisclaimer();
  sub_100392918(&qword_100979E10, &type metadata accessor for PreorderDisclaimer);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v20[0])
  {
    return 0.0;
  }

  v18 = v0;
  v19 = v5;
  v8 = PreorderDisclaimer.disclaimer.getter();
  v17[1] = v9;
  v17[2] = v8;
  sub_1000367E8();
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  sub_1000056A8(v10, qword_1009D0E48);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v11 = v20[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v12 = type metadata accessor for Feature();
  v20[3] = v12;
  v20[4] = sub_100392918(&qword_100972E50, &type metadata accessor for Feature);
  v13 = sub_1000056E0(v20);
  (*(*(v12 - 8) + 104))(v13, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
  isFeatureEnabled(_:)();
  sub_100007000(v20);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v18);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100392918(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v15 = v14;
  swift_unknownObjectRelease();

  (*(v19 + 8))(v7, v4);
  return v15;
}

uint64_t sub_100392918(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100392960(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Artwork.Crop();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallLockupLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    v13 = *(v2 + OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView);
    v14 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, v13 + v14, v9);
    v21[1] = a2;

    SmallLockupLayout.Metrics.artworkSize.getter();
    (*(v10 + 8))(v12, v9);
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    v22 = *(v22 + 8);
    (v22)(v8, v6);
    Artwork.config(_:mode:prefersLayeredImage:)();
    v15 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v16 = *(v13 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v16 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v17 = *(v13 + v15);
    Artwork.crop.getter();
    v18 = Artwork.Crop.preferredContentMode.getter();
    (v22)(v8, v6);
    [v17 setContentMode:v18];

    v19 = *(v13 + v15);
    type metadata accessor for ArtworkView();
    sub_100393EC4(&qword_100970E80, &type metadata accessor for ArtworkView);
    v20 = v19;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }
}

uint64_t sub_100392D28(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v116 = a2;
  v7 = type metadata accessor for MetricsPipeline();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v125 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v123 = &v110 - v10;
  v11 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v11 - 8);
  v121 = &v110 - v12;
  v13 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v13 - 8);
  v120 = &v110 - v14;
  v119 = type metadata accessor for OfferButtonSubtitlePosition();
  v117 = *(v119 - 8);
  __chkstk_darwin(v119);
  v118 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v16 - 8);
  v122 = &v110 - v17;
  v18 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v18 - 8);
  v115 = &v110 - v19;
  v20 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v20 - 8);
  v114 = &v110 - v21;
  v22 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v22 - 8);
  v113 = &v110 - v23;
  v24 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v112 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v27 - 8);
  v111 = &v110 - v28;
  v29 = AppEvent.formattedDates.getter();
  v30 = *&v3[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_formattedDateView];
  type metadata accessor for AppEventFormattedDatePresenter(0);
  swift_allocObject();
  v31 = v30;
  v32 = sub_1006E6CE8(v29, v30, &off_1008BC738);

  v33 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *&v31[v33] = v32;

  [v4 setNeedsLayout];
  v34 = AppEvent.kind.getter();
  sub_100352158(v34, v35);
  v36 = AppEvent.title.getter();
  sub_100352164(v36, v37);
  v38 = AppEvent.detail.getter();
  sub_100352170(v38, v39);
  v40 = AppEvent.requirements.getter();
  sub_10035217C(v40, v41);
  type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
  v129 = a3;
  BaseObjectGraph.optional<A>(_:)();
  v42 = v131;
  v43 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v44 = *&v31[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  v45 = v44;
  sub_1002C55E4(v42);
  v46 = *&v31[v43];
  *&v31[v43] = v42;
  v47 = v42;

  sub_1002C5748(v44);
  v48 = v4;

  AppEvent.lockup.getter();
  v49 = dispatch thunk of Lockup.artwork.getter();

  sub_100352DC4(v49);
  v50 = *&v4[OBJC_IVAR____TtC8AppStore22AppEventDetailPageView_lockupView];
  v124 = a1;
  v128 = AppEvent.lockup.getter();
  v51 = *(v25 + 104);
  v51(v112, enum case for OfferButtonPresenterViewAlignment.right(_:), v24);
  v52 = v113;
  v51(v113, enum case for OfferButtonPresenterViewAlignment.left(_:), v24);
  v53 = v111;
  (*(v25 + 56))(v52, 0, 1, v24);
  sub_100393EC4(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  AccessibilityConditional.init(value:axValue:)();
  v54 = sub_10002849C(&unk_100973240);
  (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
  if (v116)
  {
    v55 = enum case for OfferStyle.infer(_:);
    v56 = type metadata accessor for OfferStyle();
    v57 = *(v56 - 8);
    v58 = v114;
    (*(v57 + 104))(v114, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = enum case for OfferEnvironment.light(_:);
    v60 = type metadata accessor for OfferEnvironment();
    v61 = *(v60 - 8);
    v62 = v115;
    (*(v61 + 104))(v115, v59, v60);
    (*(v61 + 56))(v62, 0, 1, v60);
  }

  else
  {
    v63 = type metadata accessor for OfferStyle();
    v58 = v114;
    (*(*(v63 - 8) + 56))(v114, 1, 1, v63);
    v64 = type metadata accessor for OfferEnvironment();
    v62 = v115;
    (*(*(v64 - 8) + 56))(v115, 1, 1, v64);
  }

  v65 = v117;
  v66 = v119;
  (*(v117 + 104))(v118, enum case for OfferButtonSubtitlePosition.below(_:), v119);
  (*(v65 + 56))(v120, 1, 1, v66);
  sub_100393EC4(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v67 = v122;
  AccessibilityConditional.init(value:axValue:)();
  v68 = sub_10002849C(&unk_1009701A0);
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = type metadata accessor for OfferTint();
  v70 = v121;
  (*(*(v69 - 8) + 56))(v121, 1, 1, v69);
  sub_1004F3190(v128, v50, v53, v129, 0, 0, v58, v62, v70, v67);
  sub_10002B894(v70, &unk_100973AD0);
  v50[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
  sub_10070AB34();
  [v50 setNeedsLayout];
  v71 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
  v72 = *&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v72)
  {
    [v72 setHidden:1];
    v73 = *&v50[v71];
    if (v73)
    {
      [v73 setText:0];
    }
  }

  v74 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
  v75 = *&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  if (v75)
  {
    if (([v75 isHidden] & 1) == 0)
    {
      v76 = *&v50[v74];
      if (v76)
      {
        if ([v76 hasContent])
        {
          v77 = v53;
          v78 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
          [*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
          v79 = *&v50[v78];
          v53 = v77;
          [v79 setText:0];
        }
      }
    }
  }

  v80 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel;
  if ([*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] isHidden] & 1) == 0 && (objc_msgSend(*&v50[v80], "hasContent"))
  {
    v81 = *&v50[v74];
    if (v81)
    {
      [v81 setHidden:1];
      v82 = *&v50[v74];
      if (v82)
      {
        [v82 setText:0];
      }
    }

    v83 = OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel;
    [*&v50[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
    [*&v50[v83] setText:0];
  }

  sub_10002B894(v67, &unk_100970150);
  sub_10002B894(v62, &unk_100970160);
  sub_10002B894(v58, &qword_100973AE0);
  sub_10002B894(v53, &unk_100973230);
  v84 = *&v50[v74];
  v85 = v123;
  if (v84)
  {
    v86 = qword_10096DD98;
    v87 = v84;
    if (v86 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for FontUseCase();
    v89 = sub_1000056A8(v88, qword_1009D0860);
    v90 = *(v88 - 8);
    (*(v90 + 16))(v85, v89, v88);
    (*(v90 + 56))(v85, 0, 1, v88);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  v91 = *&v50[v71];
  if (v91)
  {
    v92 = qword_10096DDB0;
    v93 = v91;
    if (v92 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for FontUseCase();
    v95 = sub_1000056A8(v94, qword_1009D08A8);
    v96 = *(v94 - 8);
    (*(v96 + 16))(v85, v95, v94);
    (*(v96 + 56))(v85, 0, 1, v94);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  type metadata accessor for UserNotificationsManager();
  type metadata accessor for BaseObjectGraph();
  v97 = v129;
  inject<A, B>(_:from:)();
  v98 = v131;

  v99 = AppEvent.notificationConfig.getter();
  type metadata accessor for NotifyMeButtonPresenter();
  v100 = swift_allocObject();
  v101 = v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view;
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_displayTimeReachedTimer) = 0;
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_isSchedulingNotification) = 0;
  swift_beginAccess();
  *(v101 + 8) = &off_1008BF018;
  swift_unknownObjectWeakAssign();
  *(v100 + 16) = v98;
  *(v100 + 24) = v99;

  v128 = v48;

  v102 = v125;
  v103 = v127;
  inject<A, B>(_:from:)();
  (*(v126 + 32))(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_metricsPipeline, v102, v103);
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_objectGraph) = v97;
  type metadata accessor for ASKBagContract();

  inject<A, B>(_:from:)();
  *(v100 + OBJC_IVAR____TtC8AppStore23NotifyMeButtonPresenter_bag) = v130;
  sub_10034B790();
  sub_10034C234();
  v104 = objc_opt_self();
  v105 = [v104 defaultCenter];

  v106 = static UserNotificationsManager.userNotificationsDidChangeNotification.getter();
  [v105 addObserver:v100 selector:"userNotificationsDidChangeNotification:" name:v106 object:0];

  v107 = [v104 defaultCenter];
  [v107 addObserver:v100 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v108 = [v104 defaultCenter];
  [v108 addObserver:v100 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  sub_100355BC0(v100);
}

uint64_t sub_100393D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_100393EC4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100393F0C()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_100393FEC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100393FEC()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v8 + 8))(v10, v7);
  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_100394310(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v11 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_10096D058 != -1)
    {
      swift_once();
    }

    v13 = qword_1009CDFB0;
  }

  else
  {
    if (qword_10096D060 != -1)
    {
      swift_once();
    }

    v13 = qword_1009CDFC8;
  }

  v14 = type metadata accessor for BrickLayout.Metrics();
  sub_1000056A8(v14, v13);
  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for BrickLayout();
  sub_100394310(&qword_1009739B0, &type metadata accessor for BrickLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_100394310(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_10039435C(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100033260(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002849C(&qword_10096FD60);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100394464(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10003356C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1003945DC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100034048(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002849C(&qword_10096FCA0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100394710(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100034618(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100394830(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1003949BC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000344E4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10002849C(&unk_100984350);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100394AC0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100034AAC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100394C00(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100395854(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100394CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100035300(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

Swift::Int TodayCardTitleBackingGradient.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

id static TodayCardTitleBackingGradient.make(from:)(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [a1 locations];
  [v2 setLocations:v3];

  [a1 startPoint];
  [v2 setStartPoint:?];
  [a1 endPoint];
  [v2 setEndPoint:?];
  v4 = [a1 type];
  [v2 setType:v4];

  v5 = [a1 colors];
  [v2 setColors:v5];

  v6 = v2;
  v7 = [a1 filters];
  [v6 setFilters:v7];

  return v6;
}

uint64_t static TodayCardTitleBackingGradient.make(using:)(uint64_t a1)
{
  v2 = type metadata accessor for TodayCard.Style();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 != enum case for TodayCard.Style.dark(_:))
  {
    if (v7 != enum case for TodayCard.Style.light(_:))
    {
      v45 = 0;
      v46 = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      v45 = 0xD00000000000002ALL;
      v46 = 0x80000001007FFFC0;
      v40._countAndFlagsBits = TodayCard.Style.rawValue.getter();
      String.append(_:)(v40);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v9)
  {
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.32];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.32];
  }

  v13 = [v12 CGColor];

  sub_10002849C(&qword_100973210);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007BB060;
  sub_100005744(0, &qword_10097FB80);
  v15 = v13;
  *(v14 + 32) = NSNumber.init(integerLiteral:)(0);
  *(v14 + 40) = NSNumber.init(floatLiteral:)(0.3);
  *(v14 + 48) = NSNumber.init(floatLiteral:)(0.7);
  *(v14 + 56) = NSNumber.init(floatLiteral:)(1.0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setLocations:isa];

  [v10 setStartPoint:{0.5, 0.0}];
  [v10 setEndPoint:{0.5, 1.0}];
  [v10 setType:kCAGradientLayerAxial];
  v17 = [objc_opt_self() clearColor];
  v18 = [v17 CGColor];

  sub_10002849C(&qword_1009701B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007B5350;
  type metadata accessor for CGColor(0);
  *(v19 + 32) = v18;
  *(v19 + 56) = v20;
  *(v19 + 64) = v15;
  *(v19 + 88) = v20;
  *(v19 + 96) = v15;
  *(v19 + 152) = v20;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  v21 = v18;
  v44 = v15;
  v43 = v21;
  v22 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setColors:v22];

  v23 = objc_allocWithZone(CAFilter);
  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 initWithType:v24];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v27 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v28 = String._bridgeToObjectiveC()();
  [v26 setValue:v27 forKey:v28];

  v29 = v10;
  v30 = [v29 filters];
  if (v30)
  {
    v31 = v30;
    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v34 = sub_100005744(0, &qword_100982738);
  *(inited + 32) = v25;
  *(inited + 88) = v34;
  *(inited + 56) = v34;
  *(inited + 64) = v26;
  v45 = v32;
  v42 = v25;
  v35 = v26;
  sub_100394AC0(inited);
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v29 setFilters:v36];

  sub_10002849C(&qword_10097A790);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1007B73E0;
  *(v37 + 32) = 0x6E6F697469736F70;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = [objc_allocWithZone(NSNull) init];
  *(v37 + 56) = 0x6E6564646968;
  *(v37 + 64) = 0xE600000000000000;
  *(v37 + 72) = [objc_allocWithZone(NSNull) init];
  *(v37 + 80) = 0x49726564724F6E6FLL;
  *(v37 + 88) = 0xE90000000000006ELL;
  *(v37 + 96) = [objc_allocWithZone(NSNull) init];
  *(v37 + 104) = 0x4F726564724F6E6FLL;
  *(v37 + 112) = 0xEA00000000007475;
  *(v37 + 120) = [objc_allocWithZone(NSNull) init];
  *(v37 + 128) = 0x726579616C627573;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = [objc_allocWithZone(NSNull) init];
  *(v37 + 152) = 0x73746E65746E6F63;
  *(v37 + 160) = 0xE800000000000000;
  *(v37 + 168) = [objc_allocWithZone(NSNull) init];
  *(v37 + 176) = 0x73646E756F62;
  *(v37 + 184) = 0xE600000000000000;
  *(v37 + 192) = [objc_allocWithZone(NSNull) init];
  sub_100399228(v37, &unk_1009829D0);
  swift_setDeallocating();
  sub_10002849C(&qword_100977870);
  swift_arrayDestroy();
  sub_10002849C(&unk_10097A780);
  v38 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v29 setActions:v38];

  return v29;
}

uint64_t sub_100395854(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_1003958F4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_100979C80, &qword_100982820);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_100982820);
            v9 = sub_100548DDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Artwork();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100395A84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100399BEC(&qword_1009828D0, &qword_1009828C8);
          for (i = 0; i != v6; ++i)
          {
            sub_10002849C(&qword_1009828C8);
            v9 = sub_100548DDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}