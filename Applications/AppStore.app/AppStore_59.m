void sub_1006A59E4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);
    if (v5)
    {

      v5(v6);
      sub_10001F63C(v5);
    }
  }
}

void sub_1006A5ABC()
{
  v1 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination;
  if (*(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:v2];
  if (*(v0 + v1))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView) setAlpha:v3];
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_10096ED80 != -1)
    {
      swift_once();
    }

    v5 = qword_1009D3458;
  }

  v6 = v5;
  [v4 setBackgroundColor:?];
}

void sub_1006A5BE8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.prefersAccessibilityLayouts.getter();

  [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel] setHidden:v3 & 1];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView];
  if (qword_10096ED90 != -1)
  {
    swift_once();
  }

  v5 = sub_10002849C(&qword_100979010);
  sub_1000056A8(v5, qword_1009D3468);
  v15 = v1;
  v6 = v1;
  Conditional.evaluate(with:)();

  v7 = v4 + OBJC_IVAR____TtC8AppStore10RatingView_starPadding;
  *v7 = v16;
  *(v7 + 8) = 0;
  sub_1003A3118(v16, 0);
  v8 = OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView;
  if (*(v4 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView))
  {
    sub_1003A3118(*v7, *(v7 + 8));
  }

  v9 = [v6 traitCollection];
  v10 = [v9 accessibilityContrast];

  v11 = v10 == 0;
  v12 = *(v4 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars);
  *(v4 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars) = v11;
  if (v11 != v12)
  {
    v13 = *(v4 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v13 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v11;
      if (((v10 == 0) ^ v14))
      {
        sub_1003A450C();
      }
    }
  }
}

id sub_1006A5DE8()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_1006A5F10();
  v1 = *&v0[OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_1006A5F10()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_1009964B0);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = v34 - v3;
  v4 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v34 - v9;
  v11 = type metadata accessor for ProductReviewCustomLayout();
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination];
  if (qword_10096ED78 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v4, qword_1009D3440);
  (*(v5 + 16))(v7, v15, v4);
  if (v14)
  {
    v59 = &type metadata for Double;
    v60 = &protocol witness table for Double;
    v58 = 0;
    ProductReviewCustomLayout.Metrics.horizontalContentPadding.setter();
    v59 = &type metadata for Double;
    v60 = &protocol witness table for Double;
    v58 = 0x4018000000000000;
    ProductReviewCustomLayout.Metrics.verticalContentPadding.setter();
  }

  (*(v5 + 32))(v10, v7, v4);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel];
  v17 = type metadata accessor for DynamicTypeLabel();
  v59 = v17;
  v60 = &protocol witness table for UILabel;
  v57 = &protocol witness table for UILabel;
  v58 = v16;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel];
  v56 = v17;
  v54 = &protocol witness table for UILabel;
  v55 = v18;
  v34[1] = v10;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel];
  v53 = v17;
  v52 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel];
  v50 = v17;
  v51 = &protocol witness table for UILabel;
  v48 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel];
  v49 = v20;
  type metadata accessor for ExpandableTextView();
  v21 = v16;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  Measurable.placeable.getter();
  v25 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel];
  v46 = v17;
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v25;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel];
  v43 = v17;
  v41 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel];
  v42 = v26;
  v27 = v25;
  v28 = v26;
  Measurable.placeable.getter();
  v40 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView];
  type metadata accessor for RatingView();
  Measurable.placeable.getter();
  ProductReviewCustomLayout.init(metrics:titleLabel:dateLabel:authorLabel:dateAuthorLabel:bodyLabel:responseTitleLabel:responseDateLabel:responseBodyLabel:hasResponse:ratingsView:)();
  [v1 bounds];
  v29 = [v1 traitCollection];
  sub_1006A6EE0();
  v31 = v36;
  v30 = v37;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  dispatch thunk of Placeable.place(at:with:)();

  (*(v38 + 8))(v30, v32);
  return (*(v35 + 8))(v13, v31);
}

id sub_1006A6404(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse;
  v3 = v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse];
  if (v3 != (result & 1))
  {
    [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel] setHidden:v3 ^ 1u];
    [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel] setHidden:(v1[v2] & 1) == 0];
    [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel] setHidden:(v1[v2] & 1) == 0];
    v4 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel];
    if (v1[v2])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    v6 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
    v7 = *(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
    *(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines) = v5;
    v8 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    if (*(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) == 1)
    {
      [*(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:?];
      v5 = *(v4 + v6);
    }

    if (v5 != v7 && (*(v4 + v8) & 1) != 0)
    {
      sub_1005A0320();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1006A6558()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel);
  v3 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel);
  v7 = *(v1 + v3);
  v8 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_1005A0320();
  }

  return result;
}

id sub_1006A6634()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel);
  v3 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel);
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded);
  v8 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_1005A0320();
  }

  return result;
}

id sub_1006A67F4(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

id sub_1006A6870(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1006A6900(char *a1, uint64_t a2, uint64_t a3, void *a4)
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
    memset(v11, 0, sizeof(v11));
    v7 = a1;
  }

  v8 = *&a1[*a4];
  if (v8)
  {

    v8(v9);
    sub_10001F63C(v8);
  }

  return sub_10002B894(v11, &unk_1009711D0);
}

id sub_1006A6A34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006A6BE4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1006A6E80;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008CE798;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_1006A6D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v13[4] = a5;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100007A08;
    v13[3] = a6;
    v11 = _Block_copy(v13);
    v12 = v6;

    [a1 addAnimations:v11];
    _Block_release(v11);
  }
}

id sub_1006A6DE8()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:1.0];
  [*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

id sub_1006A6E80()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

unint64_t sub_1006A6EE0()
{
  result = qword_100991A00;
  if (!qword_100991A00)
  {
    type metadata accessor for ProductReviewCustomLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991A00);
  }

  return result;
}

void sub_1006A6F5C()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel;
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v0, qword_1009D0D28);
  v96 = *(v1 + 16);
  v97 = v1 + 16;
  v96(v11, v13, v0);
  v92 = v1;
  v14 = *(v1 + 56);
  v99 = v1 + 56;
  v14(v11, 0, 1, v0);
  v15 = *(v4 + 104);
  v95 = enum case for DirectionalTextAlignment.none(_:);
  v88 = v4 + 104;
  v89 = v3;
  v94 = v15;
  (v15)(v6);
  v93 = type metadata accessor for DynamicTypeLabel();
  v16 = objc_allocWithZone(v93);
  *(v98 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v17 = type metadata accessor for RatingView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v19 = &v18[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v19 = 0;
  v19[8] = 1;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v20 = qword_100982C88;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v18[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 1;
  *v19 = 0x4008000000000000;
  v19[8] = 0;
  v18[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v21 = type metadata accessor for StarRow();
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v18[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v24 = objc_allocWithZone(v21);
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v100.receiver = v18;
  v100.super_class = v17;
  v25 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v26 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v27 = *&v25[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v28 = *&v27[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v27[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v25[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v29 = v27;
  sub_1003A3A64(v28);

  if (*&v25[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v25 addSubview:?];
  }

  v30 = OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView;
  [v25 addSubview:*&v25[v26]];

  *(v98 + v30) = v25;
  v31 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel;
  v32 = v96;
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v84 = sub_1000056A8(v0, qword_1009D0D70);
  v32(v11);
  v14(v11, 0, 1, v0);
  v33 = v89;
  v94(v6, v95, v89);
  v34 = objc_allocWithZone(v93);
  *(v98 + v31) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel;
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v0, qword_1009D0D88);
  (v32)(v11, v36, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v37 = objc_allocWithZone(v93);
  *(v98 + v35) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel;
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v0, qword_1009D0DA0);
  (v32)(v11, v39, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v40 = objc_allocWithZone(v93);
  *(v98 + v38) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v79 = OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel;
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v85 = v6;
  v41 = sub_1000056A8(v0, qword_1009D0D58);
  v42 = v91;
  v83 = v41;
  v32(v91);
  v82 = objc_opt_self();
  v43 = [v82 clearColor];
  v81 = type metadata accessor for ExpandableTextView();
  v44 = objc_allocWithZone(v81);
  v45 = v43;
  v46 = sub_10059F344(v45, 0.0, 0.0, 0.0, 0.0);
  (v32)(v11, v42, v0);
  v87 = v14;
  v14(v11, 0, 1, v0);
  sub_1003DB684(v11, v90);
  v47 = v46;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v11, &qword_100972ED0);
  v48 = *(v92 + 8);
  v92 += 8;
  v80 = v48;
  v48(v42, v0);

  v49 = v98;
  *(v98 + v79) = v47;
  v79 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel;
  if (qword_10096DF40 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v0, qword_1009D0D40);
  v96(v11, v50, v0);
  v51 = v87;
  v87(v11, 0, 1, v0);
  v52 = v85;
  v86 = v0;
  v53 = v95;
  v54 = v89;
  v55 = v94;
  v94(v85, v95, v89);
  v56 = v93;
  v57 = objc_allocWithZone(v93);
  *(v49 + v79) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v79 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel;
  v58 = v86;
  v96(v11, v84, v86);
  v51(v11, 0, 1, v58);
  v55(v52, v53, v54);
  v59 = objc_allocWithZone(v56);
  *(v49 + v79) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v60 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel;
  v61 = v91;
  v62 = v86;
  v63 = v96;
  v96(v91, v83, v86);
  v64 = [v82 clearColor];
  v65 = objc_allocWithZone(v81);
  v66 = v64;
  v67 = sub_10059F344(v66, 0.0, 0.0, 0.0, 0.0);
  v63(v11, v61, v62);
  v87(v11, 0, 1, v62);
  sub_1003DB684(v11, v90);
  v68 = v67;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v11, &qword_100972ED0);
  v80(v61, v62);

  *(v49 + v60) = v68;
  v69 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView;
  type metadata accessor for ShadowView();
  *(v49 + v69) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v49 + v70) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v72 = OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView;
  *(v49 + v72) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v73 = OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
  *(v49 + v73) = [objc_allocWithZone(UIView) init];
  v74 = (v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler);
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer;
  *(v49 + v76) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v77 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer;
  *(v49 + v77) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination) = 0;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse) = 0;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection) = 1;
  v78 = (v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_actionHandler);
  *v78 = 0;
  v78[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1006A7CB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v15, qword_1009D0740);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_10096ED98 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_100991A08);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_1001C6E04(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096EDA0 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991A20];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_1006A80A0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArcadeLockupLayout.Metrics();
  sub_100005644(v4, qword_100991A08);
  v18 = sub_1000056A8(v4, qword_100991A08);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0740);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = type metadata accessor for StaticDimension();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

id sub_1006A8404()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100991A20 = result;
  return result;
}

uint64_t sub_1006A857C()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  [v1 _setEffect:v2];

  v3 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = *&v0[v3];
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v18);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v11 setFrame:{MinX, CGRectGetMidY(v19) + v10 * -0.5, v8, v10}];

  v13 = &v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v15 = *v13;
  if (*v13)
  {

    v15(v16);
    return sub_10001F63C(v15);
  }

  return result;
}

void sub_1006A8774()
{
  [v0 overrideUserInterfaceStyle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = [*(*(*&v0[v2] + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v5 setCompositingFilter:v1];
}

void sub_1006A88C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardArcadeLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardArcadeLockupOverlay.arcadeLockup.getter();
          ArcadeLockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100453E30(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            ImpressionsCalculator.addElement(_:at:)();

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

    else
    {
    }
  }
}

uint64_t sub_1006A8D1C()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1006A8D7C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1006A8E14()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1006A8E70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_1006A8F30(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_1006A93FC;
}

void sub_1006A9040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v10 = a5;
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (v10 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v16 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v16 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v16 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v16 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v16 - 7) > 0xFFFFFFFC || v16 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v17 = [v5 traitCollection];
  if (v10 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v17 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_1000A7C28(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v15, enum case for TodayCard.Style.white(_:), v11);
  sub_1006A93B4(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31[2] == v31[0] && v31[3] == v31[1])
  {
    v27 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v15, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = TodayCardArcadeLockupOverlay.arcadeLockup.getter();
  sub_100283630(v29, a2);

  sub_1006A8774();
}

uint64_t sub_1006A93B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006A9408()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v6, qword_1009D0740);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_10096ED98 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v2, qword_100991A08);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_1001C6E04(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096EDA0 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991A20];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006A9744()
{
  *&v72 = sub_10002849C(&qword_10098D5E8);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = type metadata accessor for StaticDimension();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = type metadata accessor for LabelPlaceholder();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAppearance();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = type metadata accessor for DynamicTextAppearance();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = type metadata accessor for FontUseCase();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PageGrid();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductPageLink();
  sub_1006AA31C(&qword_100991B40, &type metadata accessor for ProductPageLink);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v28 = v85[0];
    v73 = v27;
    ProductPageLink.systemImageName.getter();
    if (v29)
    {
      v30 = static SystemImage.load(_:with:includePrivateImages:)();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      CGSize.scaled(_:)();
    }

    if (qword_10096E9F0 != -1)
    {
      swift_once();
    }

    v32 = sub_10002849C(&qword_100979010);
    sub_1000056A8(v32, qword_1009D2B20);
    Conditional.evaluate<>(in:)();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v23 + 8))(v25, v22);
    if (UITraitCollection.isSizeClassRegular.getter())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_10096DF78 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D0DE8;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_10096DF70 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D0DD0;
    }

    v39 = sub_1000056A8(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    DynamicTextAppearance.init()();
    DynamicTextAppearance.withFontUseCase(_:)();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_10096E9F8 != -1)
    {
      swift_once();
    }

    v43 = sub_10002849C(&unk_100973B30);
    sub_1000056A8(v43, qword_1009D2B38);
    Conditional.evaluate<>(in:)();
    DynamicTextAppearance.withNumberOfLines(_:)();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    DynamicTextAppearance.withLineBreakMode(_:)();
    v44(v17, v34);
    v46 = v69;
    TextAppearance.init()();
    DynamicTextAppearance.customTextStyle.getter();
    v84 = v40;
    sub_10002A400(v85, v85[3]);
    dispatch thunk of CustomTextStyle.font(compatibleWith:)();
    TextAppearance.font.setter();
    sub_100007000(v85);
    DynamicTextAppearance.textAlignment.getter();
    TextAppearance.textAlignment.setter();
    DynamicTextAppearance.lineBreakMode.getter();
    TextAppearance.lineBreakMode.setter();
    DynamicTextAppearance.numberOfLines.getter();
    TextAppearance.numberOfLines.setter();
    DynamicTextAppearance.lineSpacing.getter();
    TextAppearance.lineSpacing.setter();
    ProductPageLink.text.getter();
    (*(v78 + 16))(v65, v46, v79);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    v47 = v66;
    sub_1005AFC28(v66);
    v48 = v72;
    Conditional.evaluate<>(in:)();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_1005AFC1C(v47);
    Conditional.evaluate<>(in:)();
    v49(v47, v48);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v50 = swift_allocObject();
    v72 = xmmword_1007B0B70;
    *(v50 + 16) = xmmword_1007B0B70;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v56 = v81;
    v57 = v64;
    dispatch thunk of AnyDimension.rawValue(in:)();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v61 = v83;
    dispatch thunk of AnyDimension.rawValue(in:)();

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

uint64_t sub_1006AA31C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006AA364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = type metadata accessor for ComponentLayoutOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  static ComponentLayoutOptions.overflowed.getter();
  sub_1006AABB4(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v13 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v9 + 8))(v11, v8);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_10077ADC4(v12, v13 & 1, v13 & 1, a6);
}

id sub_1006AA4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = type metadata accessor for ComponentLayoutOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  static ComponentLayoutOptions.overflowed.getter();
  sub_1006AABB4(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_100779FE0(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_1006AA6F0(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Shelf.ContentType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100975F10);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_100094EE4(a1, v13);
  sub_100094EE4(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_100094EE4(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_1006AABB4(&qword_100972720, &type metadata accessor for Shelf.ContentType);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10002B894(v20, &unk_100992460);
      v25(v16, v6);
      sub_10002B894(v13, &unk_100992460);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10002B894(v20, &unk_100992460);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10002B894(v13, &qword_100975F10);
    return 0;
  }

  sub_10002B894(v20, &unk_100992460);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10002B894(v13, &unk_100992460);
LABEL_9:
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for StaticDimension();
  sub_1000056A8(v26, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_1006AABB4(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1006AABFC(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v8 = *(v7 - 8);
  v60 = v7;
  v61 = v8;
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a2 traitCollection];
  v59 = v2;
  sub_1006AB3DC(v16, v15);

  InAppPurchaseShowcaseLockupViewLayout.Metrics.iconSize.getter();
  v45 = *(v12 + 8);
  v46 = v12 + 8;
  v49 = v15;
  v47 = v11;
  v45(v15, v11);
  v48 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v50 = LayoutViewPlaceholder.init(representing:)();
  v58 = a1;
  InAppPurchaseShowcase.lockup.getter();
  Lockup.title.getter();

  v17 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  sub_1000056A8(v18, qword_1009D1628);
  v19 = [a2 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v20 = type metadata accessor for Feature();
  v70[3] = v20;
  v57 = sub_1006ACA84(&qword_100972E50, &type metadata accessor for Feature);
  v70[4] = v57;
  v21 = sub_1000056E0(v70);
  v22 = *(v20 - 8);
  v23 = *(v22 + 104);
  v54 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v55 = v22 + 104;
  v56 = v23;
  v23(v21);
  isFeatureEnabled(_:)();
  sub_100007000(v70);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v24 = *(v61 + 8);
  v61 += 8;
  v25 = v24;
  v24(v10, v60);
  InAppPurchaseShowcase.subtitle.getter();
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v18, qword_1009D1640);
  v26 = a2;
  v27 = [a2 traitCollection];
  v43 = v17;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v69[3] = v20;
  v69[4] = v57;
  v28 = sub_1000056E0(v69);
  v56(v28, v54, v20);
  isFeatureEnabled(_:)();
  sub_100007000(v69);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42 = v25;
  v25(v10, v60);
  v29 = [v26 traitCollection];
  v30 = v49;
  sub_1006AB3DC(v29, v49);

  InAppPurchaseShowcaseLockupViewLayout.Metrics.offerButtonSize.getter();
  v45(v30, v47);
  v31 = v48;
  swift_allocObject();
  v47 = LayoutViewPlaceholder.init(representing:)();
  InAppPurchaseShowcase.descriptionText.getter();
  v32 = v26;
  v33 = [v26 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v68[3] = v20;
  v68[4] = v57;
  v34 = sub_1000056E0(v68);
  v56(v34, v54, v20);
  isFeatureEnabled(_:)();
  sub_100007000(v68);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v42(v10, v60);
  v35 = [v32 traitCollection];
  sub_1006AB3DC(v35, v30);

  v67[8] = v31;
  v67[9] = &protocol witness table for LayoutViewPlaceholder;
  v67[5] = v50;
  sub_10002C0AC(v70, v67);
  sub_10002C0AC(v69, &v66);
  sub_10002C0AC(v68, &v65);
  v63 = v31;
  v64 = &protocol witness table for LayoutViewPlaceholder;
  v62 = v47;

  v36 = v51;
  InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  sub_1006ACA84(&qword_100991BE0, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v37 = v53;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v39 = v38;

  (*(v52 + 8))(v36, v37);
  sub_100007000(v68);
  sub_100007000(v69);
  sub_100007000(v70);
  return v39;
}

uint64_t sub_1006AB3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v65 = a2;
  v72 = type metadata accessor for OfferButtonMetrics();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v54 - v4;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  __chkstk_darwin(v7);
  v59 = &v54 - v8;
  v9 = type metadata accessor for FontSource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v55);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v54 - v15;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  (*(v20 + 8))(v22, v19);
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1628);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v68 = v25 + 16;
  v69(v12, v24, v23);
  v26 = enum case for FontSource.useCase(_:);
  v74 = v10[13];
  v75 = v10 + 13;
  v74(v12);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v80);
  v67 = v10[2];
  v73 = v10 + 2;
  v67(v27, v12, v9);
  v60 = v18;
  StaticDimension.init(_:scaledLike:)();
  v29 = v10[1];
  v28 = v10 + 1;
  v66 = v29;
  v29(v12, v9);
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D1640);
  v31 = v69;
  v69(v12, v30, v23);
  (v74)(v12, v26, v9);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v80);
  v33 = v67;
  v67(v32, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v34 = v66;
  v66(v12, v9);
  v54 = v30;
  v57 = v23;
  v31(v12, v30, v23);
  v56 = v26;
  (v74)(v12, v26, v9);
  v81 = v55;
  v82 = &protocol witness table for StaticDimension;
  sub_1000056E0(v80);
  v78 = v9;
  v79 = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v77);
  v33(v35, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v55 = v9;
  v34(v12, v9);
  v36 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v64 = v28;
  if (v36)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v37 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v37 = qword_100991028;
  }

  v38 = v72;
  v39 = sub_1000056A8(v72, v37);
  v40 = v76;
  v41 = *(v76 + 16);
  v42 = v58;
  v41(v58, v39, v38);
  v43 = *(v40 + 32);
  v44 = v59;
  v43(v59, v42, v38);
  OfferButtonMetrics.minimumSize.getter();
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v45(v44, v38);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v46 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v46 = qword_100991028;
  }

  v47 = v72;
  v48 = sub_1000056A8(v72, v46);
  v49 = v61;
  v41(v61, v48, v47);
  v50 = v63;
  v43(v63, v49, v47);
  OfferButtonMetrics.estimatedHeight.getter();
  v45(v50, v47);
  v69(v12, v54, v57);
  v51 = v55;
  (v74)(v12, v56, v55);
  v78 = v51;
  v79 = &protocol witness table for FontSource;
  v52 = sub_1000056E0(v77);
  v67(v52, v12, v51);
  StaticDimension.init(_:scaledLike:)();
  v66(v12, v51);
  return InAppPurchaseShowcaseLockupViewLayout.Metrics.init(iconSize:titleSpace:subtitleSpace:offerTopSpace:offerButtonSize:descriptionSpace:)();
}

char *sub_1006ABCE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v66 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = v57 - v14;
  v16 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v16 - 8);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v20 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v21 = sub_1002EB7C0(v18, 1);
  v67 = v5;
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1628);
  v25 = *(v23 - 8);
  v65 = *(v25 + 16);
  v65(v15, v24, v23);
  v26 = *(v25 + 56);
  v64 = v25 + 56;
  v26(v15, 0, 1, v23);
  v27 = *(v10 + 104);
  v62 = v10 + 104;
  v63 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  (v27)(v12);
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = objc_allocWithZone(v29);
  *&v67[v22] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v61 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v60 = sub_1000056A8(v23, qword_1009D1640);
  v65(v15, v60, v23);
  v57[1] = v25 + 16;
  v59 = v26;
  v26(v15, 0, 1, v23);
  v31 = v66;
  v32 = v63;
  v63(v12, v28, v66);
  v58 = v29;
  v33 = objc_allocWithZone(v29);
  v34 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = v67;
  v36 = v60;
  *&v67[v61] = v34;
  v37 = v31;
  v38 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v65(v15, v36, v23);
  v59(v15, 0, 1, v23);
  v32(v12, v28, v37);
  v39 = objc_allocWithZone(v58);
  *&v35[v38] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v35[v40] = sub_1000F5284(0);
  v42 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v68.receiver = v35;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v47 = v43;
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel;
  v49 = *&v47[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel];
  sub_100005744(0, &qword_100970180);
  v50 = v49;
  v51 = static UIColor.secondaryText.getter();
  [v50 setTextColor:v51];

  v52 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v53 = *&v47[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v54 = static UIColor.secondaryText.getter();
  [v53 setTextColor:v54];

  v55 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel;
  [*&v47[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel] setTextAlignment:1];
  [*&v47[v48] setTextAlignment:1];
  [*&v47[v52] setTextAlignment:1];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView]];
  [v47 addSubview:*&v47[v55]];
  [v47 addSubview:*&v47[v48]];
  [v47 addSubview:*&v47[v52]];
  [v47 addSubview:*&v47[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton]];

  return v47;
}

uint64_t sub_1006AC354()
{
  v1 = v0;
  swift_getObjectType();
  v28 = type metadata accessor for LayoutRect();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v44.receiver = v0;
  v44.super_class = v24;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  v9 = [v0 traitCollection];
  sub_1006AB3DC(v9, v5);

  v10 = *&v0[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView];
  v42 = type metadata accessor for InAppPurchaseView();
  v43 = &protocol witness table for UIView;
  v41 = v10;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel];
  v39 = type metadata accessor for DynamicTypeLabel();
  v40 = &protocol witness table for UILabel;
  v37 = &protocol witness table for UILabel;
  v38 = v11;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v36 = v39;
  v34 = &protocol witness table for UILabel;
  v35 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v33 = v39;
  v32 = v13;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v31 = &protocol witness table for UIView;
  v30 = v15;
  v29 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v21 = v26;
  InAppPurchaseShowcaseLockupViewLayout.placeChildren(relativeTo:in:)();
  (*(v27 + 8))(v21, v28);
  return (*(v6 + 8))(v8, v25);
}

double sub_1006AC6BC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout();
  v5 = *(v26 - 8);
  *&v6 = __chkstk_darwin(v26).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v0 traitCollection];
  sub_1006AB3DC(v9, v4);

  v10 = *&v0[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView];
  v40 = type metadata accessor for InAppPurchaseView();
  v41 = &protocol witness table for UIView;
  v39 = v10;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel];
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = &protocol witness table for UILabel;
  v35 = &protocol witness table for UILabel;
  v36 = v11;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v34 = v37;
  v32 = &protocol witness table for UILabel;
  v33 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v31 = v37;
  v30 = v13;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v29 = &protocol witness table for UIView;
  v28 = v15;
  v27 = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  sub_1006ACA84(&qword_100991BE0, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout);
  v21 = v26;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v23 = v22;
  (*(v5 + 8))(v8, v21);
  return v23;
}

id sub_1006AC9B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseShowcaseLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006ACA84(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006ACACC()
{
  v1 = v0;
  v45 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v45 - 8);
  __chkstk_darwin(v45);
  v47 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  v12 = sub_1002EB7C0(v9, 1);
  v46 = v1;
  *(v1 + v10) = v12;
  v40 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D1628);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v44 = v15 + 16;
  v16(v6, v14, v13);
  v43 = *(v15 + 56);
  v43(v6, 0, 1, v13);
  v17 = *(v2 + 104);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v41 = v2 + 104;
  v42 = v17;
  v17(v47);
  v19 = type metadata accessor for DynamicTypeLabel();
  v20 = objc_allocWithZone(v19);
  *(v46 + v40) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v13, qword_1009D1640);
  v38 = v16;
  v39 = v21;
  v16(v6, v21, v13);
  v22 = v43;
  v43(v6, 0, 1, v13);
  v23 = v47;
  v37 = v18;
  v24 = v18;
  v25 = v45;
  v26 = v42;
  v42(v47, v24, v45);
  v36 = v19;
  v27 = objc_allocWithZone(v19);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v46;
  v30 = v39;
  *(v46 + v40) = v28;
  v31 = v25;
  v32 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v38(v6, v30, v13);
  v22(v6, 0, 1, v13);
  v26(v23, v37, v31);
  v33 = objc_allocWithZone(v36);
  *(v29 + v32) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v29 + v34) = sub_1000F5284(0);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006AD11C()
{
  v2.receiver = v0;
  v2.super_class = _s18PaletteContentViewCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006AD188()
{
  v1 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    type metadata accessor for ArtworkView();
    sub_10009A098();
    v11 = v10;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Int sub_1006AD2C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006AD3E8()
{
  v0 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100005644(v10, qword_1009D3480);
  sub_1000056A8(v10, qword_1009D3480);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1006AD6C8()
{
  v0 = sub_10002849C(&qword_100991CD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_10002849C(&qword_100991CD8);
  __chkstk_darwin(v4);
  v5 = sub_10002849C(&qword_100991CC8);
  sub_100005644(v5, qword_1009D3498);
  sub_1000056A8(v5, qword_1009D3498);
  sub_1002835DC();
  EnumURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100820040;
  v6._countAndFlagsBits = 0xD000000000000014;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EnumURLRepresentation.StringInterpolation.Token.rawValue<A>(_:), v0);
  EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0x6F526F54706F7026;
  v7._object = 0xEF657572743D746FLL;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EnumURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_1006AD8EC()
{
  result = qword_100991C18;
  if (!qword_100991C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C18);
  }

  return result;
}

uint64_t sub_1006AD948()
{
  String.hash(into:)();
}

unint64_t sub_1006ADA28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006AFA84(*a1);
  *a2 = result;
  return result;
}

void sub_1006ADA58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xE600000000000000;
  v6 = 0x656461637261;
  v7 = 0xE600000000000000;
  v8 = 0x686372616573;
  if (v2 != 4)
  {
    v8 = 0x73657461647075;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x73656D6167;
  if (v2 != 1)
  {
    v10 = 1936748641;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1006ADB00()
{
  result = qword_100991C20;
  if (!qword_100991C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C20);
  }

  return result;
}

unint64_t sub_1006ADB58()
{
  result = qword_100991C28;
  if (!qword_100991C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C28);
  }

  return result;
}

unint64_t sub_1006ADBB0()
{
  result = qword_100991C30;
  if (!qword_100991C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C30);
  }

  return result;
}

unint64_t sub_1006ADC18()
{
  result = qword_100991C38;
  if (!qword_100991C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C38);
  }

  return result;
}

uint64_t sub_1006ADC6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096EDB0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&qword_100991CC8);
  v3 = sub_1000056A8(v2, qword_1009D3498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1006ADD24()
{
  result = qword_100991C40;
  if (!qword_100991C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C40);
  }

  return result;
}

unint64_t sub_1006ADD78()
{
  result = qword_100991C48;
  if (!qword_100991C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C48);
  }

  return result;
}

unint64_t sub_1006ADDD0()
{
  result = qword_100991C50;
  if (!qword_100991C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C50);
  }

  return result;
}

uint64_t sub_1006ADE24()
{
  sub_1006AF050();
  v1 = URLRepresentableEnum.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1006ADEF4(uint64_t a1)
{
  v2 = sub_1002835DC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006ADF44()
{
  result = qword_100991C58;
  if (!qword_100991C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C58);
  }

  return result;
}

unint64_t sub_1006ADF9C()
{
  result = qword_100991C60;
  if (!qword_100991C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C60);
  }

  return result;
}

unint64_t sub_1006ADFF4()
{
  result = qword_100991C68;
  if (!qword_100991C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C68);
  }

  return result;
}

uint64_t sub_1006AE04C(uint64_t a1)
{
  v2 = sub_1006ADDD0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1006AE09C()
{
  result = qword_100991C70;
  if (!qword_100991C70)
  {
    sub_10002D1A8(&qword_100991C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C70);
  }

  return result;
}

unint64_t sub_1006AE114()
{
  result = qword_100991C80;
  if (!qword_100991C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C80);
  }

  return result;
}

uint64_t sub_1006AE168()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100005644(v6, qword_1009D34B0);
  sub_1000056A8(v6, qword_1009D34B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1006AE358@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_1006AE3CC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100195724;
}

uint64_t sub_1006AE440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006AEFA8();
  v5 = sub_1006AF050();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1006AE4AC()
{
  result = qword_100991C88;
  if (!qword_100991C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C88);
  }

  return result;
}

unint64_t sub_1006AE504()
{
  result = qword_100991C90;
  if (!qword_100991C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C90);
  }

  return result;
}

unint64_t sub_1006AE55C()
{
  result = qword_100991C98;
  if (!qword_100991C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C98);
  }

  return result;
}

uint64_t sub_1006AE65C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_1000056A8(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1006AE714(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1006AEFA8();
  v6 = sub_1006AEFFC();
  v7 = sub_1006AF050();
  *v4 = v2;
  v4[1] = sub_1006AE7E0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1006AE7E0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1006AE8E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006AEAAC();
  *a1 = result;
  return result;
}

uint64_t sub_1006AE910(uint64_t a1)
{
  v2 = sub_100283534();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PageEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PageEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006AEAAC()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100979920);
  __chkstk_darwin(v2 - 8);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v21 - v5;
  v6 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v6 - 8);
  v24 = &v21 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v22 = type metadata accessor for LocalizedStringResource();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = sub_10002849C(&qword_100991CA0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v9 + 104);
  v16(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v11, v15, v8);
  v17 = v24;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, 0, 1, v22);
  v30 = 6;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v25, 1, 1, v18);
  v19(v26, 1, 1, v18);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_1002835DC();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_1006AEFA8()
{
  result = qword_100991CA8;
  if (!qword_100991CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991CA8);
  }

  return result;
}

unint64_t sub_1006AEFFC()
{
  result = qword_100991CB0;
  if (!qword_100991CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991CB0);
  }

  return result;
}

unint64_t sub_1006AF050()
{
  result = qword_100991CB8;
  if (!qword_100991CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991CB8);
  }

  return result;
}

unint64_t sub_1006AF0A4()
{
  v0 = sub_10002849C(&qword_10098C598);
  __chkstk_darwin(v0 - 8);
  v66 = v49 - v1;
  v2 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v2 - 8);
  v4 = v49 - v3;
  v65 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LocalizedStringResource();
  v67 = *(v62 - 8);
  __chkstk_darwin(v62);
  sub_10002849C(&qword_100991CC0);
  v14 = sub_10002849C(&qword_1009829B0);
  v64 = v14;
  v15 = *(v14 - 8);
  v58 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B23A0;
  v18 = v17 + v16;
  v52 = *(v14 + 48);
  v53 = v17;
  *(v17 + v16) = 0;
  v19 = v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v5 + 104);
  v63 = v5 + 104;
  v60 = v20;
  v21 = v65;
  (v20)(v7);
  v22 = v10;
  v23 = v7;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v24 = *(v67 + 56);
  v67 += 56;
  v59 = v24;
  v25 = v4;
  v26 = v4;
  v27 = v62;
  v24(v26, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v61 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = v58;
  v29 = *(v64 + 48);
  v51 = (v18 + v58);
  v52 = v29;
  *v51 = 1;
  v54 = v19;
  String.LocalizationValue.init(stringLiteral:)();
  v49[1] = v22;
  static Locale.current.getter();
  v55 = v23;
  v30 = v57;
  v31 = v60;
  v60(v23, v57, v21);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v59(v25, 1, 1, v27);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v56 = v25;
  DisplayRepresentation.init(title:subtitle:image:)();
  v52 = 2 * v28;
  v32 = *(v64 + 48);
  v50 = (v61 + 2 * v28);
  v51 = v32;
  *v50 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v55;
  v34 = v30;
  v35 = v65;
  v31(v55, v34, v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v36 = v59;
  v59(v25, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = v58;
  v38 = (v61 + v52 + v58);
  v52 = *(v64 + 48);
  *v38 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = v57;
  v60(v33, v57, v35);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v40 = v62;
  v36(v56, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v41 = 4 * v37;
  v52 = 4 * v37;
  v42 = v61;
  v51 = *(v64 + 48);
  *(v61 + v41) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v43 = v55;
  v60(v55, v39, v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v44 = v56;
  v45 = v40;
  v46 = v59;
  v59(v56, 1, 1, v45);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v42 + v52 + v58) = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v60(v43, v57, v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v46(v44, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v47 = sub_100399624(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v47;
}

unint64_t sub_1006AFA84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B0370, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

double sub_1006AFC78()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductCapability();
  sub_1006AFE7C(&qword_100987728, &type metadata accessor for ProductCapability);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v13[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  v4 = ProductCapability.title.getter();
  v6 = v5;
  v7 = ProductCapability.caption.getter();
  v8 = ProductCapability.artwork.getter();
  v9 = sub_100079F24();
  swift_getObjectType();
  sub_1004F2388(v4, v6, v7, v8, v9);
  v11 = v10;

  swift_unknownObjectRelease();

  return v11;
}

uint64_t sub_1006AFE7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006AFEC4@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v32 = a3;
  v33 = a2;
  v4 = type metadata accessor for ActivityFeedPlatterView();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100993070);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - v10;
  v12 = sub_10002849C(&qword_100991E38);
  v13 = *(v12 - 8);
  v30 = v12;
  v31 = v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - v15;
  a1(v14);
  v17 = sub_1006B0E34(&qword_100991E40, &type metadata accessor for ActivityFeedPlatterView);
  View.metricsActivityAware(from:)();
  (*(v5 + 8))(v7, v4);
  v18 = type metadata accessor for BaseObjectGraph();
  v34 = v4;
  v35 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.actionDispatcher<A>(from:)();
  (*(v9 + 8))(v11, v8);
  v34 = v8;
  v35 = v18;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v20 = v32;
  v21 = v30;
  View.intentDispatcher(from:)();
  (*(v31 + 8))(v16, v21);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v22 = v34;
  sub_1006B0E34(&qword_100982F90, &type metadata accessor for ArtworkLoader);
  v23 = static ObservableObject.environmentStore.getter();
  v24 = (v20 + *(sub_10002849C(&unk_100993060) + 36));
  *v24 = v23;
  v24[1] = v22;
  KeyPath = swift_getKeyPath();
  v26 = *(v33 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v27 = (v20 + *(sub_10002849C(&qword_100991E28) + 36));
  *v27 = KeyPath;
  v27[1] = v26;
}

uint64_t sub_1006B02A0@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v27[1] = a2;
  v5 = sub_10002849C(&qword_10098F438);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10002849C(&qword_10098F430);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_10002849C(&qword_10098F428);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v27 - v13;
  a1(v12);
  v15 = sub_100097060(&qword_10098F440, &qword_10098F438);
  View.metricsActivityAware(from:)();
  sub_10002B894(v7, &qword_10098F438);
  v16 = type metadata accessor for BaseObjectGraph();
  v33 = v5;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.actionDispatcher<A>(from:)();
  (*(v28 + 8))(v10, v8);
  v33 = v8;
  v34 = v16;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v31;
  View.intentDispatcher(from:)();
  (*(v29 + 8))(v14, v18);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v20 = v33;
  sub_1006B0E34(&qword_100982F90, &type metadata accessor for ArtworkLoader);
  v21 = static ObservableObject.environmentStore.getter();
  v22 = (v19 + *(sub_10002849C(&qword_10098F420) + 36));
  *v22 = v21;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v24 = *(v32 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v25 = (v19 + *(sub_10002849C(&qword_10098F408) + 36));
  *v25 = KeyPath;
  v25[1] = v24;
}

uint64_t sub_1006B0650@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.flowPreview.getter();
  *a1 = result;
  return result;
}

double sub_1006B06A8(int a1, int a2, int a3, int a4, int a5, id a6, double a7)
{
  v8 = [a6 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_10077DC28(v9, a7);
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_1006B07C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100991E20);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  __chkstk_darwin(v19);
  v21 = &v25 - v20;
  v26 = type metadata accessor for ActivityFeedLockupViewModel();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  GameCenterActivityFeedCard.data.getter();
  GameCenterActivityFeedCard.profileActionMetrics.getter();
  GameCenterActivityFeedCard.profileAvatarActionMetrics.getter();
  GameCenterActivityFeedCard.leaderboardActionMetrics.getter();
  GameCenterActivityFeedCard.achievementActionMetrics.getter();
  GameCenterActivityFeedCard.appActionMetrics.getter();
  v34 = v23;
  v35 = v28;
  v36 = a3;
  v37 = v21;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  v41 = v9;
  v29 = sub_1006B0BAC;
  v30 = &v33;
  v31 = a3;
  v32 = v28;
  sub_10002849C(&qword_100991E28);
  sub_1006B0BCC();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v42[3] = v4;
  v42[4] = sub_100097060(&qword_1009930A0, &qword_100991E20);
  sub_1000056E0(v42);
  UIHostingConfiguration.margins(_:_:)();
  (*(v27 + 8))(v6, v4);
  UICollectionViewCell.contentConfiguration.setter();
  sub_10002B894(v9, &unk_100993040);
  sub_10002B894(v12, &unk_100993040);
  sub_10002B894(v15, &unk_100993040);
  sub_10002B894(v18, &unk_100993040);
  sub_10002B894(v21, &unk_100993040);
  return (*(v25 + 8))(v23, v26);
}

unint64_t sub_1006B0BCC()
{
  result = qword_100993050;
  if (!qword_100993050)
  {
    sub_10002D1A8(&qword_100991E28);
    sub_1006B0C84();
    sub_100097060(&qword_100993090, &qword_100982F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993050);
  }

  return result;
}

unint64_t sub_1006B0C84()
{
  result = qword_100991E30;
  if (!qword_100991E30)
  {
    sub_10002D1A8(&unk_100993060);
    sub_10002D1A8(&qword_100991E38);
    sub_10002D1A8(&unk_100993070);
    type metadata accessor for BaseObjectGraph();
    type metadata accessor for ActivityFeedPlatterView();
    sub_1006B0E34(&qword_100991E40, &type metadata accessor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100097060(&unk_100993080, &qword_100982F80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991E30);
  }

  return result;
}

uint64_t sub_1006B0E34(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B0E7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AspectRatio();
  sub_1000056A8(v3, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  ComponentPrefetchSizing.init(size:contentMode:)();
  v4 = type metadata accessor for ComponentPrefetchSizing();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

double sub_1006B0F9C(double a1)
{
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AspectRatio();
  sub_1000056A8(v2, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  return a1;
}

id sub_1006B10E4()
{
  v1 = v0;
  v2 = type metadata accessor for Shelf.PresentationHints();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Brick.accessibilityLabel.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_1006B161C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v8 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = Brick.shortEditorialDescription.getter();
    v11 = &v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_1000F88B0();
  }

  return result;
}

id sub_1006B1280()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v5 = v4;
  PageTraitEnvironment.pageColumnMargin.getter();
  v7 = v6;
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_1006B161C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v8 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v1 + 8))(v3, v0);
  if (v8)
  {
    if (qword_10096D058 != -1)
    {
      swift_once();
    }

    v9 = qword_1009CDFB0;
  }

  else
  {
    if (qword_10096D060 != -1)
    {
      swift_once();
    }

    v9 = qword_1009CDFC8;
  }

  v10 = ceil((v5 - v7) / 1.5);
  v11 = type metadata accessor for BrickLayout.Metrics();
  sub_1000056A8(v11, v9);
  type metadata accessor for BrickLayout();
  sub_1006B161C(&qword_1009739B0, &type metadata accessor for BrickLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v13 = v12;
  v14 = objc_opt_self();
  v15 = [v14 absoluteDimension:v10];
  v16 = [v14 absoluteDimension:v13];
  v17 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v16];

  v18 = [objc_opt_self() itemWithLayoutSize:v17];
  v19 = objc_opt_self();
  sub_10002849C(&qword_100973210);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1007B0B70;
  *(v20 + 32) = v18;
  sub_1002FF658();
  v21 = v18;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v19 verticalGroupWithLayoutSize:v17 subitems:isa];

  return v23;
}

uint64_t sub_1006B161C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B1664()
{
  sub_10001F64C(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1006B16C4(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.indexPath.getter();
  v11 = IndexPath.section.getter();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_100072908(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

double sub_1006B19B8(double a1, double a2)
{
  v5 = type metadata accessor for DisjointStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  *(swift_allocObject() + 16) = v2;
  v12 = v2;
  DisjointStack.init(with:)();
  v13 = *&v12[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground];
  v19[3] = type metadata accessor for VisualEffectContainerView();
  v19[4] = sub_1006B311C(&qword_100991FA8, type metadata accessor for VisualEffectContainerView);
  v19[0] = v13;
  v14 = v13;
  DisjointStack.inserting(_:at:with:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_100007000(v19);
  v16 = sub_1006B29D4(v11, v12, a1, a2);
  v15(v11, v5);
  return v16;
}

char *sub_1006B1BB0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v9 - 8);
  v45 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView;
  v17 = type metadata accessor for CarouselItemLockupCollectionView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v20 = sub_10002849C(&qword_100977078);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v49.receiver = v18;
  v49.super_class = v17;
  v21 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = v44;
  *&v4[v44] = v21;
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v13);
  (*(v10 + 104))(v12, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v45);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v26 = &v4[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *&v4[v25];
  v28 = objc_allocWithZone(UIVisualEffect);
  v29 = v27;
  v30 = [v28 init];
  v31 = type metadata accessor for VisualEffectContainerView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC8AppStore25VisualEffectContainerView_embeddedView] = v29;
  v48.receiver = v32;
  v48.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v48, "initWithEffect:", v30);
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = [v34 contentView];
  [v35 addSubview:v33];

  *&v4[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground] = v34;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v36 setOverrideUserInterfaceStyle:2];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v37 = [*&v36[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView] layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground;
  v39 = *&v36[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground];
  sub_10075B130(20.0);

  v40 = [*&v36[v38] contentView];
  v41 = [v40 layer];

  [v41 setAllowsGroupBlending:0];
  [v36 addSubview:*&v36[v38]];

  return v36;
}

uint64_t sub_1006B214C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DisjointStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18[-1] - v9;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v8);
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  DisjointStack.init(with:)();
  v12 = *&v11[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground];
  v18[3] = type metadata accessor for VisualEffectContainerView();
  v18[4] = sub_1006B311C(&qword_100991FA8, type metadata accessor for VisualEffectContainerView);
  v18[0] = v12;
  v13 = v12;
  DisjointStack.inserting(_:at:with:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_100007000(v18);
  LayoutMarginsAware<>.layoutFrame.getter();
  v15 = [v11 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  return (v14)(v10, v3);
}

uint64_t sub_1006B23E8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = type metadata accessor for DisjointStack.EdgePosition();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a2 + v14, v10);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v11 + 8))(v13, v10);
  result = (*(v7 + 88))(v9, v6);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v5[3] = type metadata accessor for ZeroDimension();
    v5[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v5);
    static ZeroDimension.zero.getter();
    (*(v3 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v19);
    return DisjointStack.Properties.leadingEdge.setter();
  }

  else
  {
    v16 = v3;
    v17 = v19;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v5[3] = type metadata accessor for ZeroDimension();
        v5[4] = &protocol witness table for ZeroDimension;
        sub_1000056E0(v5);
        static ZeroDimension.zero.getter();
        (*(v16 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v17);
        return DisjointStack.Properties.trailingEdge.setter();
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CarouselItemModulePlatterView()
{
  result = qword_100991F98;
  if (!qword_100991F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006B2868()
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_1006B2910(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4);
}

uint64_t sub_1006B2934(uint64_t a1, uint64_t a2)
{
  v3 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10059D2E8(v4, a2);
}

double sub_1006B29D4(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for Resize.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = type metadata accessor for DisjointStack();
  v47[3] = v21;
  v47[4] = &protocol witness table for DisjointStack;
  v22 = sub_1000056E0(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_100270A74(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10002C0AC(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = type metadata accessor for Resize();
    v46 = &protocol witness table for Resize;
    sub_1000056E0(v44);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  }

  else
  {
    MeasurementRange.init(minimum:maximum:)();
    v28 = v27;
    v30 = v29;
    sub_10002C0AC(v47, v43);
    MeasurementRange.init(minimum:maximum:)();
    v32 = v31;
    v34 = v33;
    v45 = type metadata accessor for Constrain();
    v46 = &protocol witness table for Constrain;
    sub_1000056E0(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    Constrain.init(_:width:height:)();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    MeasurementRange.constrain(_:)();
  }

  sub_10002A400(v44, v45);
  v37 = [a2 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v39 = v38;

  sub_100007000(v44);
  sub_100007000(v47);
  return v39;
}

id sub_1006B2DE0()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView];
  v7 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks;
    v10 = *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = v8;
    if (v8 != v10)
    {
      if (v8 > 5)
      {
        *&v6[v9] = 5;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
    if (v11)
    {
LABEL_8:
      sub_10059C8B0();
      [v6 setNeedsLayout];
    }
  }

  HeroCarouselItemOverlay.displayOptions.getter();
  v12 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v12], v5, v2);
  swift_endAccess();
  return [v1 setNeedsLayout];
}

uint64_t sub_1006B2FA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      type metadata accessor for ArtworkView();
      sub_1006B311C(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_1006B311C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006B3164()
{
  v1 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v1 - 8);
  v16 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView;
  v9 = type metadata accessor for CarouselItemLockupCollectionView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v12 = sub_10002849C(&qword_100977078);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v10[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v10[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v17.receiver = v10;
  v17.super_class = v9;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  *(v0 + v15) = v13;
  (*(v6 + 104))(v8, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v5);
  (*(v2 + 104))(v4, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v16);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v14 = (v0 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1006B349C()
{
  result = qword_100992450;
  if (!qword_100992450)
  {
    type metadata accessor for VideoView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992450);
  }

  return result;
}

void sub_1006B34F4(uint64_t a1, char a2)
{
  v5 = *&v2[qword_100988CC0];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if ((a2 & 1) != 0 && ([v5 alpha], v7 == 1.0))
  {
    [v5 setAlpha:0.0];
    [v5 setImage:a1];
    sub_100060340();
    v8 = v2;
    v9 = static UIViewPropertyAnimator.fadeInPropertyAnimator.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v13[4] = sub_1006B37D0;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100007A08;
    v13[3] = &unk_1008CEBA8;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimation];
  }

  else
  {

    [v5 setImage:a1];
  }
}

id sub_1006B36C0()
{
  v1 = [*(v0 + qword_100988CC0) image];

  return v1;
}

void sub_1006B3704(void *a1)
{
  [*(v1 + qword_100988CC0) setImage:a1];
}

void (*sub_1006B3758(void *a1))(id *a1)
{
  v3 = *(v1 + qword_100988CC0);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_10055F7A8;
}

uint64_t sub_1006B37F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1006B3850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006B391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006B3BA4(&qword_1009749D0, type metadata accessor for ProductRatingsCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006B39B4()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  type metadata accessor for Ratings();
  sub_1006B3BA4(&qword_100970EB8, &type metadata accessor for Ratings);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v8 = v12;
  if (v12)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_1006B3BA4(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    sub_100522BA0(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_1006B3BA4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1006B3BEC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3 + *((swift_isaMask & *v3) + 0x60);
  v25 = *(a1 + 8);
  v26 = *(a1 + 24);
  v7 = a1[1];
  v24 = a1[2];
  v6 = v24;
  v8 = *(a1 + 6);
  v9 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v7;
  *(v5 + 2) = v6;
  *(v5 + 6) = v8;
  v19 = *a1;
  v20 = v9;
  v21 = a1[2];
  v22 = *(a1 + 6);
  v23 = v8;
  objc_allocWithZone(sub_10002849C(&qword_100991FE0));

  sub_10019D860(&v24, v18);
  sub_100031660(&v25, v18, &qword_100991FE8);
  sub_100031660(&v23, v18, &qword_100986868);
  *(v3 + *((swift_isaMask & *v3) + 0x68)) = UIHostingController.init(rootView:)();
  v17.receiver = v3;
  v17.super_class = sub_10002849C(&qword_100991FD8);
  v10 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  v11 = [v10 navigationItem];
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v11 setTitle:v12];

  v13 = [v10 navigationItem];
  sub_100005744(0, &qword_100983870);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setRightBarButtonItems:isa];

  v15 = [v10 navigationItem];
  [v15 setLargeTitleDisplayMode:2];

  return v10;
}

double *sub_1006B3E74(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugMetricsEventRecorder();
  BaseObjectGraph.optional<A>(_:)();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  State.init(wrappedValue:)();
  v30 = v36;
  v7 = v37;
  v33 = sub_10002849C(&qword_100973210);
  v8 = swift_allocObject();
  v32 = xmmword_1007B0B70;
  *(v8 + 16) = xmmword_1007B0B70;
  sub_100005744(0, &qword_100983870);
  sub_100005744(0, &qword_10097CD40);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v41.is_nil = 0;
  *(v8 + 32) = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_10046DFE4;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_10002849C(&qword_100991FD8));
  v10 = sub_1006B3BEC(&v36, 0x7363697274654DLL, 0xE700000000000000);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x80000001008201C0;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_1006B49F8;
  v12[13] = v11;

  *&v30 = v10;

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  AnyHashable.init<A>(_:)();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x80000001008201E0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x8000000100820200;
  *(v17 + 96) = 0;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  AnyHashable.init<A>(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B15F0;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

uint64_t sub_1006B4340()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    DebugMetricsEventRecorder.clear()();
  }

  return result;
}

uint64_t sub_1006B4398(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = type metadata accessor for FlowOrigin();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAnimationBehavior();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FlowPresentationContext();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = type metadata accessor for FlowPage();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_10002849C(&unk_100974490);
  v43 = a2;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_1000F40E0(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = type metadata accessor for URL();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = type metadata accessor for ReferrerData();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_10002849C(&qword_100991FD8);
  v44 = v39;
  v30 = v39;
  static ActionMetrics.notInstrumented.getter();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_1006B4998()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006B4A00(void *a1, unint64_t a2)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v3;
  v5 = a2;
  v4 = a1;
  v6 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
  result = swift_beginAccess();
  v9 = *&v3[v6];
  v10 = *(v9 + 16);
  v11 = v7 - v10 < 0;
  v12 = v7 <= v10;
  v13 = v7 - v10;
  if (v12)
  {
LABEL_9:
    swift_beginAccess();
    result = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v6] = v9;
    if (result)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    result = sub_100548D28();
    v9 = result;
    *&v2[v6] = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (*(v9 + 16) > v5)
      {
        v14 = v9 + 8 * v5;
        v15 = *(v14 + 32);
        *(v14 + 32) = v4;
        *&v2[v6] = v9;
        v16 = v4;
        swift_endAccess();

        return [v2 setNeedsLayout];
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v11)
  {
    swift_beginAccess();
    do
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(*&v2[v6] + 16) >= *(*&v2[v6] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v13;
    }

    while (v13);
    v9 = *&v2[v6];
    swift_endAccess();
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1006B4B80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    ArtworkView.image.setter();
    [v11 setHidden:1];
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v12 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
      swift_beginAccess();
      *(v1 + v12) = _swiftEmptyArrayStorage;

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1006B4CD4(uint64_t result, float64x2_t a2, float64_t a3)
{
  v3 = (&unk_1007DE100 + 8 * result);
  a2.f64[1] = a3;
  v4 = vld1q_dup_f64(v3);
  v5 = vdivq_f64(a2, v4);
  __asm { FMOV            V2.2D, #15.0 }

  v11 = vsubq_f64(v5, vrndmq_f64(vdivq_f64(vmulq_f64(v5, _Q2), v4)));
  __asm { FMOV            V1.2D, #1.0 }

  v13 = vrndpq_f64(vaddq_f64(v11, _Q1));
  *&v14 = *&vmulq_laneq_f64(v13, v13, 1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B4D5C(uint64_t result, double a2, double a3)
{
  v3 = 8 * result;
  v4.f64[0] = *(&unk_1007DE060 + v3);
  v4.f64[1] = *(&unk_1007DE120 + v3);
  v5 = vdupq_lane_s64(*&a3, 0);
  v6 = vaddq_f64(v4, v5);
  v7.f64[0] = *(&unk_1007DE080 + v3);
  v7.f64[1] = *(&unk_1007DE140 + v3);
  v8 = vaddq_f64(v7, v5);
  v9.f64[0] = *(&unk_1007DE0A0 + v3);
  v9.f64[1] = *(&unk_1007DE160 + v3);
  v10.f64[0] = *(&unk_1007DE0C0 + v3);
  v10.f64[1] = *(&unk_1007DE180 + v3);
  v11 = vdupq_lane_s64(*&a2, 0);
  v12 = vsubq_f64(v6, vmulq_f64(vsubq_f64(v9, v11), vdivq_f64(vsubq_f64(v6, v8), vsubq_f64(v9, v10))));
  v13 = vsubq_f64(v11, v10);
  v14 = vsubq_f64(v12, v8);
  v15 = vsqrtq_f64(vaddq_f64(vmulq_f64(v13, v13), vmulq_f64(v14, v14)));
  v16 = *(&unk_1007DE100 + v3);
  if (v15.f64[0] <= v15.f64[1])
  {
    v15.f64[0] = v15.f64[1];
  }

  v17 = ceil(v15.f64[0] / (v16 + 15.0));
  v18 = floor(dbl_1007DE0E0[result] / v16) + v17 + v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B4EA4()
{
  v0 = sub_10002849C(&qword_100979010);
  sub_100005644(v0, qword_100991FF0);
  sub_1000056A8(v0, qword_100991FF0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1006B4F58()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  v2 = v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v24, "frame");
  v4.f64[0] = v3;
  v6 = sub_1006B4CD4(v2, v4, v5);
  v7 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (v16 >= v6)
    {
      swift_beginAccess();
      v17 = sub_1003D7340(v16);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *&v1[v7];
        *&v1[v7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100053614();
        }

        v22 = v19;
        v23 = *(*(v21 + 56) + 8 * v19);
        sub_100056290(v22, v21);
        *&v1[v7] = v21;
        swift_endAccess();
        [v23 removeFromSuperview];
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1006B5128()
{
  v1 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
  result = swift_beginAccess();
  v3 = *(*(v0 + v1) + 16);
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages);
  v5 = v4 - v3;
  if (v4 > v3)
  {
    if (v4 - v3 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      do
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(*(v0 + v1) + 16) >= *(*(v0 + v1) + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        --v5;
      }

      while (v5);
      return swift_endAccess();
    }
  }

  return result;
}

char *sub_1006B52EC(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for CornerStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  *&v5[v16] = sub_1003987F0(_swiftEmptyArrayStorage);
  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = 0;
  v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder] = 0;
  v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled] = 1;
  v17 = &v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
  *v17 = 0u;
  v17[1] = 0u;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType] = a1;
  v18 = sub_1003987F0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *&v5[v16] = v18;

  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages] = _swiftEmptyArrayStorage;
  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView] = v19;
  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView] = [objc_allocWithZone(type metadata accessor for BorderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, "initWithFrame:", a2, a3, a4, a5);
  v21 = *&v20[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
  v22 = v20;
  [v22 addSubview:v21];
  v23 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView;
  v24 = *&v22[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView];
  type metadata accessor for ArtworkView();
  v25 = v24;
  static ArtworkView.iconBorderWidth.getter();
  BorderView.borderWidth.setter();

  v26 = *&v22[v23];
  static ArtworkView.iconBorderColor.getter();
  BorderView.borderColor.setter();

  v27 = *&v22[v23];
  (*(v13 + 104))(v15, enum case for CornerStyle.arc(_:), v12);
  v28 = v27;
  CornerStylable<>.applyCorner(radius:style:)();

  (*(v13 + 8))(v15, v12);
  [v22 addSubview:*&v22[v23]];
  [v22 setClipsToBounds:1];

  return v22;
}

id sub_1006B56C8()
{
  ObjectType = swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v5 = v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v26, "frame");
  v8 = sub_1006B4D5C(v5, v6, v7);
  if (v0[v4] == 3)
  {
    v10 = sub_1006B60B0(v8, v9);
  }

  else
  {
    v10 = sub_1006B648C(v8, v9);
  }

  v11 = v10;
  [v0 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
  [v20 setBounds:?];
  [v0 center];
  [v20 setCenter:?];
  if (qword_10096EDC0 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&qword_100979010);
  sub_1000056A8(v21, qword_100991FF0);
  *&v24.a = v0;
  v22 = v0;
  Conditional.evaluate(with:)();

  CGAffineTransformMakeRotation(&v24, angle);
  [v20 setTransform:&v24];
  [*&v22[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView] setFrame:{v13, v15, v17, v19}];
  sub_1006B660C(v11);
  sub_1006B696C(v11);

  return [v2 setAnimationsEnabled:v3];
}

void sub_1006B5960()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled) == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_1006B5B24()
{
  if (v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled] != 1)
  {
LABEL_8:
    v6 = 0;
LABEL_9:

    sub_1006B5CA8(v6);
    return;
  }

  v1 = [v0 superview];
  if (!v1)
  {
LABEL_6:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_8;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      break;
    }

    v4 = [v2 superview];

    v2 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v7 = v3;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, sub_100005744(0, &qword_100978E50), v11 = v2, v10 = static NSObject.== infix(_:_:)(), v11, v9, (v10 & 1) == 0))
  {
    v6 = v7;
    goto LABEL_9;
  }
}

void sub_1006B5CA8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_1006B5D60(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1006B5B24();
}

unint64_t sub_1006B5F94()
{
  result = qword_100992080;
  if (!qword_100992080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992080);
  }

  return result;
}

void sub_1006B5FE8()
{
  v1 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  *(v0 + v1) = sub_1003987F0(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled) = 1;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds);
  *v2 = 0u;
  v2[1] = 0u;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double *sub_1006B60B0(uint64_t a1, int64_t a2)
{
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_61;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (__OFSUB__(v9, 3))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v9 - 3 > 0)
  {
    v10 = v7 / 2;
    v40 = v8 / 2;
    v11 = 1;
    v38 = a1;
    v39 = a2;
    v12 = sub_100035300(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = v10;
    v2 = v12;
    a1 = v38;
    a2 = v39;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v9 - 2;
    while (1)
    {
      v4 = (v16 + v13);
      if (__OFADD__(v16, v13))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v5 = v15 + v40;
      if (__OFADD__(v15, v40))
      {
        goto LABEL_56;
      }

      v6 = *(v2 + 2);
      v18 = *(v2 + 3);
      v3 = v6 + 1;
      if (v6 >= v18 >> 1)
      {
        v22 = v2;
        v23 = v13;
        v24 = sub_100035300((v18 > 1), v6 + 1, 1, v22);
        v13 = v23;
        v2 = v24;
        a1 = v38;
        a2 = v39;
      }

      *(v2 + 2) = v3;
      v19 = &v2[2 * v6];
      *(v19 + 4) = v4;
      *(v19 + 5) = v5;
      if (v16 < 1)
      {
        if (v16 < 0)
        {
          if (v15 != v16 && (v16 ^ v15) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (__OFSUB__(0, v15))
        {
          goto LABEL_59;
        }

        if (v15 != v16 && -v15 != v16)
        {
          goto LABEL_23;
        }
      }

      v20 = -v11;
      if (__OFSUB__(0, v11))
      {
        goto LABEL_60;
      }

      v11 = v14;
      v14 = v20;
LABEL_23:
      v21 = __OFADD__(v16, v14);
      v16 += v14;
      if (v21)
      {
        goto LABEL_57;
      }

      v21 = __OFADD__(v15, v11);
      v15 += v11;
      if (v21)
      {
        goto LABEL_58;
      }

      if (--v17 <= 1)
      {
        goto LABEL_28;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = *&_swiftEmptyArrayStorage[2];
LABEL_28:
  if (v3 >= 4)
  {
    v3 = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      v25 = sub_1000477CC(a1 * a2, v2);
      v4 = v26;
      v5 = v27;
      v6 = v28;
      if (v28)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();

        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = _swiftEmptyArrayStorage;
        }

        v31 = *(v30 + 2);

        if (__OFSUB__(v6 >> 1, v5))
        {
          goto LABEL_75;
        }

        if (v31 != (v6 >> 1) - v5)
        {
          goto LABEL_76;
        }

        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_40;
        }

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_39;
      }

      while (1)
      {
        sub_1005E7F60(v25, v4, v5, v6);
        v4 = v29;
LABEL_39:
        swift_unknownObjectRelease();
LABEL_40:
        v32 = *(v4 + 2);
        v5 = v32 - 2;
        if (v32 < 2)
        {
LABEL_66:
          __break(1u);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v4;
          if (!isUniquelyReferenced_nonNull_native || v5 > *(v4 + 3) >> 1)
          {
            v4 = sub_100035300(isUniquelyReferenced_nonNull_native, v32, 1, v4);
            v41 = v4;
          }

          sub_1004A72D0(0, 2, 0);
          a2 = *(v4 + 2);
          if (a2 >= 2)
          {
            v41 = v4;
            if ((a2 - 1) <= *(v4 + 3) >> 1)
            {
              goto LABEL_46;
            }

            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_68:
        v4 = sub_100035300(1, a2, 1, v4);
        v41 = v4;
LABEL_46:
        v25 = &v41;
        sub_1004A72D0(1uLL, 2, 0);
        v41 = v4;
        v34 = v3 + 2;
        if (__OFADD__(v3, 2))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v34 < v3)
        {
          goto LABEL_70;
        }

        v21 = __OFADD__(v34, 1);
        v35 = v3 + 3;
        if (v21)
        {
          goto LABEL_71;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        v36 = *(v2 + 2);
        if (v36 < v3 || v36 < v35)
        {
          goto LABEL_73;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          sub_100394CF8(v2, (v2 + 4), v3, (2 * v35) | 1);
          return v41;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_unknownObjectRelease();
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return v2;
}

double *sub_1006B648C(double *result, uint64_t a2)
{
  v2 = a2 * result;
  if ((a2 * result) >> 64 != (a2 * result) >> 63)
  {
    goto LABEL_31;
  }

  if (v2 < 1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = result / 2;
  v4 = a2 / 2;
  result = sub_100035300(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v3;
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = v2 + 1;
  v11 = -1;
  while (1)
  {
    v12 = v9 + v5;
    if (__OFADD__(v9, v5))
    {
      break;
    }

    if (__OFADD__(v8, v4))
    {
      goto LABEL_26;
    }

    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v20 = v5;
      result = sub_100035300((v13 > 1), v14 + 1, 1, v6);
      v5 = v20;
      v6 = result;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 16 * v14;
    *(v15 + 32) = v12;
    *(v15 + 40) = v8 + v4;
    if (v9 < 0)
    {
      v17 = -v9;
      if (__OFSUB__(0, v9))
      {
        goto LABEL_30;
      }

      if (v8 != v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v16 = v8 == v9;
      if (!v9)
      {
        goto LABEL_15;
      }

      if (v8 != v9)
      {
        v17 = 1 - v9;
LABEL_14:
        v16 = v8 == v17;
LABEL_15:
        if (!v16)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = -v11;
    if (__OFSUB__(0, v11))
    {
      goto LABEL_29;
    }

    v11 = v7;
    v7 = v18;
LABEL_19:
    v19 = __OFADD__(v9, v7);
    v9 += v7;
    if (v19)
    {
      goto LABEL_27;
    }

    v19 = __OFADD__(v8, v11);
    v8 += v11;
    if (v19)
    {
      goto LABEL_28;
    }

    if (--v10 <= 1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1006B660C(int64x2_t *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v46.receiver = v2;
  v46.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  [(int64x2_t *)&v46 frame];
  result = sub_1006B4D5C(v6, v7, v8);
  if (!a1[1].i64[0])
  {
    __break(1u);
    goto LABEL_27;
  }

  if (!result)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = a1[2];
  v12 = a1[2].i64[0];
  if (v12 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_31;
  }

  v13 = v12 % result;
  _VF = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (_VF)
  {
    goto LABEL_28;
  }

  if (!v10)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (v11.i64[1] == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_32;
  }

  v16 = v11.i64[1] % v10 + 1;
  if (__OFADD__(v11.i64[1] % v10, 1))
  {
    goto LABEL_30;
  }

  v17.f64[0] = v15;
  if (v2[v5] > 1u)
  {
    if (v2[v5] == 2)
    {
      v17.f64[1] = v16;
      __asm { FMOV            V2.2D, #15.0 }

      recta.origin = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x406A000000000000uLL)), vmulq_f64(v17, _Q2));
      y = recta.origin.y;
      v28 = 0x406A000000000000;
LABEL_21:
      v25 = *&v28;
      v26 = [v2 traitCollection];
      goto LABEL_22;
    }
  }

  else if (v2[v5])
  {
    v17.f64[1] = v16;
    __asm { FMOV            V2.2D, #15.0 }

    v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4067E00000000000uLL)), vmulq_f64(v17, _Q2));
    goto LABEL_18;
  }

  v17.f64[1] = v16;
  __asm { FMOV            V2.2D, #15.0 }

  v22 = vaddq_f64(vmulq_f64(vcvtq_f64_s64(v11), vdupq_n_s64(0x4056000000000000uLL)), vmulq_f64(v17, _Q2));
  y = v22.y;
  if (v2[v5] > 1u)
  {
    recta.origin = v22;
    goto LABEL_20;
  }

  if (v2[v5])
  {
LABEL_18:
    recta.origin = v22;
    y = v22.y;
LABEL_20:
    v28 = 0x4067E00000000000;
    goto LABEL_21;
  }

  v25 = 88.0;
  v26 = [v2 traitCollection];
LABEL_22:
  v29 = v26;
  v30 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v30)
  {
    v47.origin.x = recta.origin.x;
    v47.origin.y = y;
    v47.size.width = v25;
    v47.size.height = v25;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = recta.origin.x;
    v48.origin.y = y;
    v48.size.width = v25;
    v48.size.height = v25;
    MaxY = CGRectGetMaxY(v48);
    v33 = *&v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{MinX, MaxY}];
    v35 = v34;
    v49.origin.x = recta.origin.x;
    v49.origin.y = y;
    v49.size.width = v25;
    v49.size.height = v25;
    MaxX = CGRectGetMaxX(v49);
  }

  else
  {
    v33 = *&v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
    [v2 convertPoint:v33 fromCoordinateSpace:{recta.origin.x, y}];
    v35 = v37;
    v50.origin.x = recta.origin.x;
    v50.origin.y = y;
    v50.size.width = v25;
    v50.size.height = v25;
    MaxX = CGRectGetMinX(v50);
  }

  v38 = MaxX;
  v51.origin.x = recta.origin.x;
  v51.origin.y = y;
  v51.size.width = v25;
  v51.size.height = v25;
  [v2 convertPoint:v33 fromCoordinateSpace:{v38, CGRectGetMaxY(v51)}];
  v40 = v39;
  v41 = dbl_1007DE1A0[v2[v5]];
  *&recta.size.width = v2;
  *&recta.size.height = ObjectType;
  [(CGSize *)&recta.size frame];
  v42 = CGRectGetHeight(v52) - dbl_1007DE1C0[v2[v5]] - v40;
  [v33 center];
  return [v33 setCenter:{v41 - v35 + v43, v42 + v44}];
}

void sub_1006B696C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v92.receiver = v2;
  v92.super_class = ObjectType;
  v6 = v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v92, "frame");
  v9 = sub_1006B4D5C(v6, v7, v8);
  v11 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    goto LABEL_80;
  }

  v12 = v9;
  v13 = v10;
  v91.receiver = v2;
  v91.super_class = ObjectType;
  v14 = v2[v5];
  objc_msgSendSuper2(&v91, "frame");
  v16.f64[0] = v15;
  v87 = sub_1006B4CD4(v14, v16, v17);
  sub_1006B5960();
  if (v11 < 0)
  {
LABEL_81:
    __break(1u);
  }

  else
  {
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    if (!v11)
    {
LABEL_68:
      v72 = &v2[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
      *v72 = v22;
      v72[1] = v23;
      v72[2] = v24;
      v72[3] = v25;
      return;
    }

    if (v12)
    {
      _ZF = v13 == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v85 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
      v86 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView;
      v88 = a1 + 32;
      v89 = *(a1 + 16);
      v83 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
      swift_beginAccess();
      v27 = 0;
      v28 = 0;
      v29 = v12 / 2 - 1;
      v30 = v13 / 2;
      v31 = v13 / 2 - 1;
      v32 = v12 * v31;
      v81 = (v12 * v31) >> 64 != (v12 * v31) >> 63;
      v33 = v29 + v12 * v31;
      v34 = __OFADD__(v29, v32);
      v80 = v34;
      v79 = (v12 * v30) >> 64 != (v12 * v30) >> 63;
      _VF = __OFADD__(v29, v12 * v30);
      v36 = v29 + v12 * v30;
      v37 = _VF;
      v75 = v33 + 1;
      v76 = v36;
      v38 = __OFADD__(v33, 1);
      v77 = v38;
      v78 = v37;
      v73 = v36 + 1;
      v39 = __OFADD__(v36, 1);
      v74 = v39;
      __asm { FMOV            V0.2D, #15.0 }

      v82 = v5;
      v84 = v11;
      while (1)
      {
        if (v28 == v89)
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        v45 = *(v88 + 16 * v28);
        v46 = *(v88 + 16 * v28);
        if (v46 == 0x8000000000000000 && v12 == -1)
        {
          goto LABEL_72;
        }

        if (__OFADD__(v46 % v12, 1))
        {
          goto LABEL_70;
        }

        if (*(&v45 + 1) == 0x8000000000000000 && v13 == -1)
        {
          goto LABEL_73;
        }

        if (__OFADD__(*(&v45 + 1) % v13, 1))
        {
          goto LABEL_71;
        }

        if (v2[v5] > 1u)
        {
          if (v2[v5] == 2)
          {
            goto LABEL_40;
          }
        }

        else if (v2[v5])
        {
          goto LABEL_40;
        }

        if (v2[v5] > 1u)
        {
          if (v81)
          {
            goto LABEL_74;
          }

          if (v80)
          {
            goto LABEL_75;
          }

          if (v79)
          {
            goto LABEL_76;
          }

          if (v78)
          {
            goto LABEL_77;
          }

          sub_10002849C(&qword_100980550);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1007B1E00;
          if (v77)
          {
            goto LABEL_78;
          }

          *(inited + 32) = v75;
          *(inited + 40) = v76;
          if (v74)
          {
            goto LABEL_79;
          }

          *(inited + 48) = v73;
          v48 = sub_100084504(inited);
          swift_setDeallocating();
          if (!v48[2])
          {
            goto LABEL_45;
          }

          goto LABEL_41;
        }

LABEL_40:
        v48 = _swiftEmptySetSingleton;
        if (!_swiftEmptySetSingleton[2])
        {
          goto LABEL_45;
        }

LABEL_41:
        v49 = static Hasher._hash(seed:_:)();
        v50 = -1 << *(v48 + 32);
        v51 = v49 & ~v50;
        if ((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51))
        {
          v52 = ~v50;
          while (*(v48[6] + 8 * v51) != v28)
          {
            v51 = (v51 + 1) & v52;
            if (((*(v48 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v51) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

          goto LABEL_25;
        }

LABEL_45:

        v53 = *&v2[v86];
        [v2 convertRect:v53 fromCoordinateSpace:?];
        v95.origin.x = v22;
        v95.origin.y = v23;
        v95.size.width = v24;
        v95.size.height = v25;
        if (!CGRectIntersectsRect(v94, v95) || v27 >= v87)
        {
          goto LABEL_25;
        }

        swift_beginAccess();
        v55 = *&v2[v85];
        if (*(v55 + 16) && (v56 = sub_1003D7340(v28), (v57 & 1) != 0))
        {
          v58 = v27;
          v59 = *(*(v55 + 56) + 8 * v56);
          swift_endAccess();
          v60 = v59;
        }

        else
        {
          v58 = v27;
          swift_endAccess();
          type metadata accessor for ArtworkView();
          v61 = static ArtworkView.iconArtworkView.getter();
          swift_beginAccess();
          v60 = v61;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = *&v2[v85];
          *&v2[v85] = 0x8000000000000000;
          sub_1000529FC(v60, v28, isUniquelyReferenced_nonNull_native);
          *&v2[v85] = v90;
          swift_endAccess();
          [v53 addSubview:v60];
        }

        [v60 setHidden:{0, v73}];
        v63 = *&v2[v83];
        v64 = *(v63 + 16);
        if (v64)
        {
          v65 = *(v63 + 8 * (v28 % v64) + 32);
          if (v65)
          {
            v66 = v65;
            v67 = ArtworkView.image.getter();
            if (v67)
            {
              v68 = v67;
              sub_100005744(0, &qword_1009744B0);
              v69 = v66;
              v70 = static NSObject.== infix(_:_:)();

              if (v70)
              {
                goto LABEL_23;
              }
            }

            else
            {
              v43 = v66;
            }

            v93.value.super.isa = v65;
            v93.is_nil = 0;
            ArtworkView.setImage(image:animated:)(v93, v44);
LABEL_23:

            v5 = v82;
          }
        }

        ArtworkView.frame.setter();

        v27 = v58 + 1;
        v11 = v84;
LABEL_25:
        if (++v28 == v11)
        {
          goto LABEL_68;
        }
      }
    }
  }

  __break(1u);
}

void sub_1006B701C()
{
  if (v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
    v2 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
    rect_8 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds + 8];
    v3 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds + 16];
    v4 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds + 24];
    sub_1006B5960();
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    height = v12.size.height;
    v9 = CGRectGetWidth(v12);
    v13.origin.x = v2;
    v13.origin.y = rect_8;
    v13.size.width = v3;
    v13.size.height = v4;
    if (CGRectGetWidth(v13) < v9 || (v14.origin.x = x, v14.origin.y = y, v14.size.width = width, v14.size.height = height, v10 = CGRectGetHeight(v14), v15.origin.x = v2, v15.origin.y = rect_8, v15.size.width = v3, v15.size.height = v4, CGRectGetHeight(v15) < v10))
    {
      [v0 setNeedsLayout];
      *v1 = x;
      v1[1] = y;
      v1[2] = width;
      v1[3] = height;
    }
  }
}

uint64_t sub_1006B7118@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v223 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v223);
  v207 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v212 = &v194 - v5;
  v231 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v222 = *(v231 - 8);
  __chkstk_darwin(v231);
  v216 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v194 - v8;
  v9 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v9 - 8);
  v217 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v214 = (&v194 - v12);
  __chkstk_darwin(v13);
  v211 = &v194 - v14;
  __chkstk_darwin(v15);
  v226 = (&v194 - v16);
  v17 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v17 - 8);
  v215 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v208 = &v194 - v20;
  __chkstk_darwin(v21);
  v227 = &v194 - v22;
  __chkstk_darwin(v23);
  v218 = &v194 - v24;
  v25 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v220 = *(v25 - 8);
  v221 = v25;
  __chkstk_darwin(v25);
  v206 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v205 = &v194 - v28;
  __chkstk_darwin(v29);
  v204 = &v194 - v30;
  __chkstk_darwin(v31);
  v213 = (&v194 - v32);
  __chkstk_darwin(v33);
  v225 = &v194 - v34;
  __chkstk_darwin(v35);
  v210 = &v194 - v36;
  __chkstk_darwin(v37);
  v209 = &v194 - v38;
  __chkstk_darwin(v39);
  v224 = (&v194 - v40);
  v41 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v41 - 8);
  v197 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v196 = &v194 - v44;
  __chkstk_darwin(v45);
  v200 = &v194 - v46;
  __chkstk_darwin(v47);
  v199 = &v194 - v48;
  __chkstk_darwin(v49);
  v219 = &v194 - v50;
  __chkstk_darwin(v51);
  v195 = &v194 - v52;
  __chkstk_darwin(v53);
  v198 = &v194 - v54;
  __chkstk_darwin(v55);
  v203 = &v194 - v56;
  __chkstk_darwin(v57);
  v202 = &v194 - v58;
  __chkstk_darwin(v59);
  v201 = &v194 - v60;
  __chkstk_darwin(v61);
  v229 = &v194 - v62;
  v63 = type metadata accessor for ShelfBackground();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v194 - v68;
  v70 = sub_10002849C(&unk_1009731F0);
  v230 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v194 - v71;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v73 = v236;
  if (v236)
  {
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v74 = v236;
  if (v236)
  {
    v75 = v235;

    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    v233 = v76 != 0;
  }

  else
  {
    v233 = 0;
  }

  swift_getKeyPath();
  v234 = v72;
  ReadOnlyLens.subscript.getter();

  if (v235)
  {
    v77 = ShelfHeader.hasTrailingArtwork.getter();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = static ShelfBackground.== infix(_:_:)();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_1006B9288(a1);
  if (sub_1006B9D50(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_1001EE328(v233, v232);
    return (*(v230 + 8))(v234, v70);
  }

  if (v78)
  {
    goto LABEL_15;
  }

  v81 = 0;
LABEL_17:
  v194 = v70;
  if (!v80)
  {
    LODWORD(v229) = v81;
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    if (v235)
    {
      v85 = v219;
      ShelfHeader.configuration.getter();

      v86 = type metadata accessor for ShelfHeader.Configuration();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v113 = type metadata accessor for ShelfHeader.Configuration();
      (*(*(v113 - 8) + 56))(v219, 1, 1, v113);
    }

    v114 = v221;
    if (v77)
    {
      v115 = v214;
      *v214 = xmmword_1007DE1E0;
      v116 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v117 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      v118 = *(v117 - 8);
      v119 = *(v118 + 104);
      v227 = (v117 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v119(v115, v116, v117);
      v120 = *(v118 + 56);
      v228 = v117;
      v120(v115, 0, 1, v117);
      if (qword_10096E758 != -1)
      {
        swift_once();
      }

      v121 = sub_1000056A8(v114, qword_1009D2670);
      sub_1001EFDF0(v121, v213);
      v122 = 10.0;
      v123 = v204;
      if (qword_10096E788 != -1)
      {
        swift_once();
      }

      v124 = 1;
      v125 = qword_1009D2700;
LABEL_107:
      v177 = v123;
LABEL_108:
      v178 = sub_1000056A8(v114, v125);
      sub_1001EFDF0(v178, v177);
      v179 = v208;
      (*(v220 + 56))(v208, v124, 1, v114);
      v180 = v213;
      v181 = v205;
      sub_1001EFDF0(v213, v205);
      v182 = v206;
      sub_1001EFDF0(v123, v206);
      sub_100031660(v179, v215, &qword_1009794E8);
      v183 = v214;
      sub_100031660(v214, v217, &qword_1009794E0);
      v184 = v222;
      (*(v222 + 104))(v216, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
      sub_100028BB8();
      v185 = static UIColor.defaultLine.getter();
      sub_10002B894(v183, &qword_1009794E0);
      sub_10002B894(v179, &qword_1009794E8);
      sub_1001EFF9C(v123);
      sub_1001EFF9C(v180);
      sub_10002B894(v219, &unk_100984380);
      (*(v230 + 8))(v234, v194);
      v186 = v223;
      v187 = *(v223 + 32);
      v188 = v207;
      sub_1001EFEC4(v181, v207, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1001EFEC4(v182, v188 + v186[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1000476A0(v215, v188 + v186[6], &qword_1009794E8);
      *(v188 + v186[7]) = v229 & 1;
      *(v188 + v187) = 0;
      v189 = v233;
      *(v188 + v186[9]) = v233;
      *(v188 + v186[14]) = v122;
      *(v188 + v186[12]) = 0;
      *(v188 + v186[13]) = v185;
      v190 = v217;
      (*(v184 + 32))(v188 + v186[11], v216, v231);
      type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
      v191 = v228;
      v192 = *(v228 - 1);
      if ((*(v192 + 48))(v190, 1, v228) == 1)
      {
        sub_10002B894(v190, &qword_1009794E0);
        if (v189)
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v192 + 104))(v188 + v186[10], *v193, v191);
      }

      else
      {
        (*(v192 + 32))(v188 + v186[10], v190, v191);
      }

      v166 = v188;
      return sub_1001EFEC4(v166, v232, type metadata accessor for TitleHeaderView.Style);
    }

    v126 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v127 = *(*(v126 - 8) + 56);
    v227 = (v126 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v127(v214, 1, 1, v126);
    v228 = v126;
    if (v73)
    {
      if (!v233)
      {
        v145 = v200;
        sub_100031660(v219, v200, &unk_100984380);
        v146 = type metadata accessor for ShelfHeader.Configuration();
        v147 = *(v146 - 8);
        if ((*(v147 + 48))(v145, 1, v146) == 1)
        {
          sub_10002B894(v145, &unk_100984380);
          v148 = 0;
        }

        else
        {
          v148 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v147 + 8))(v145, v146);
        }

        v123 = v204;
        sub_100512504(v148, v213);

        v122 = 16.0;
        if (qword_10096E780 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_1009D26E8;
        goto LABEL_107;
      }

      v128 = v199;
      sub_100031660(v219, v199, &unk_100984380);
      v129 = type metadata accessor for ShelfHeader.Configuration();
      v130 = *(v129 - 8);
      if ((*(v130 + 48))(v128, 1, v129) == 1)
      {
        sub_10002B894(v128, &unk_100984380);
        v131 = 0;
      }

      else
      {
        v131 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v130 + 8))(v128, v129);
      }

      v123 = v204;
      sub_100512504(v131, v213);

      if (qword_10096E798 != -1)
      {
        swift_once();
      }

      v171 = qword_1009D2730;
    }

    else
    {
      if (!v233)
      {
        v167 = v197;
        sub_100031660(v219, v197, &unk_100984380);
        v168 = type metadata accessor for ShelfHeader.Configuration();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v167, 1, v168) == 1)
        {
          sub_10002B894(v167, &unk_100984380);
          v170 = 0;
        }

        else
        {
          v170 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v169 + 8))(v167, v168);
        }

        v123 = v204;
        sub_100512504(v170, v213);

        v122 = 16.0;
        if (qword_10096E778 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_1009D26D0;
        goto LABEL_107;
      }

      v141 = v196;
      sub_100031660(v219, v196, &unk_100984380);
      v142 = type metadata accessor for ShelfHeader.Configuration();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_10002B894(v141, &unk_100984380);
        v144 = 0;
      }

      else
      {
        v144 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v143 + 8))(v141, v142);
      }

      v123 = v204;
      sub_100512504(v144, v213);

      if (qword_10096E790 != -1)
      {
        swift_once();
      }

      v171 = qword_1009D2718;
    }

    v176 = sub_1000056A8(v114, v171);
    sub_1001EFDF0(v176, v123);
    v122 = 16.0;
    if (qword_10096E770 != -1)
    {
      swift_once();
    }

    v124 = 0;
    v125 = qword_1009D26B8;
    v177 = v208;
    goto LABEL_108;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  if (v235)
  {
    v83 = v229;
    ShelfHeader.configuration.getter();

    v84 = type metadata accessor for ShelfHeader.Configuration();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = type metadata accessor for ShelfHeader.Configuration();
    (*(*(v87 - 8) + 56))(v229, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v226;
    *v226 = xmmword_1007DE1E0;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v217 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v219 = v90;
    v93(v88, 0, 1, v90);
    if (qword_10096E758 != -1)
    {
      swift_once();
    }

    v94 = v221;
    v95 = sub_1000056A8(v221, qword_1009D2670);
    sub_1001EFDF0(v95, v224);
    v96 = 10.0;
    v97 = v209;
    if (qword_10096E788 != -1)
    {
      swift_once();
    }

    v98 = 1;
    v99 = qword_1009D2700;
  }

  else
  {
    v101 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v102 = *(*(v101 - 8) + 56);
    v217 = (v101 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v102(v226, 1, 1, v101);
    v219 = v101;
    if (v233)
    {
      if (v80 == 1)
      {
        v103 = v201;
        sub_100031660(v229, v201, &unk_100984380);
        v104 = type metadata accessor for ShelfHeader.Configuration();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v97 = v209;
        if (v106 == 1)
        {
          sub_10002B894(v103, &unk_100984380);
          v107 = 0;
        }

        else
        {
          v107 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v105 + 8))(v103, v104);
        }

        v94 = v221;
        sub_100512504(v107, v224);

        if (qword_10096E7C0 != -1)
        {
          swift_once();
        }

        v149 = qword_1009D27A8;
      }

      else
      {
        v132 = v202;
        sub_100031660(v229, v202, &unk_100984380);
        v133 = type metadata accessor for ShelfHeader.Configuration();
        v134 = *(v133 - 8);
        v135 = (*(v134 + 48))(v132, 1, v133);
        v97 = v209;
        if (v135 == 1)
        {
          sub_10002B894(v132, &unk_100984380);
          v136 = 0;
        }

        else
        {
          v136 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v134 + 8))(v132, v133);
        }

        v94 = v221;
        sub_100512504(v136, v224);

        if (qword_10096E7B0 != -1)
        {
          swift_once();
        }

        v149 = qword_1009D2778;
      }

      v150 = sub_1000056A8(v94, v149);
      sub_1001EFDF0(v150, v97);
      v96 = 16.0;
      if (qword_10096E770 != -1)
      {
        swift_once();
      }

      v98 = 0;
      v99 = qword_1009D26B8;
      v100 = v218;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v108 = v203;
      sub_100031660(v229, v203, &unk_100984380);
      v109 = type metadata accessor for ShelfHeader.Configuration();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v108, 1, v109);
      v94 = v221;
      v97 = v209;
      if (v111 == 1)
      {
        sub_10002B894(v108, &unk_100984380);
        v112 = 0;
      }

      else
      {
        v112 = ShelfHeader.Configuration.eyebrowColor.getter();
        (*(v110 + 8))(v108, v109);
      }

      sub_100512504(v112, v224);

      v96 = 16.0;
      if (qword_10096E7B8 != -1)
      {
        swift_once();
      }

      v98 = 1;
      v99 = qword_1009D2790;
    }

    else
    {
      v94 = v221;
      v97 = v209;
      if (v73)
      {
        v137 = v198;
        sub_100031660(v229, v198, &unk_100984380);
        v138 = type metadata accessor for ShelfHeader.Configuration();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_10002B894(v137, &unk_100984380);
          v140 = 0;
        }

        else
        {
          v140 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v139 + 8))(v137, v138);
        }

        sub_10051250C(v140, v224);

        v96 = 16.0;
        if (qword_10096E7A8 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_1009D2760;
      }

      else
      {
        v172 = v195;
        sub_100031660(v229, v195, &unk_100984380);
        v173 = type metadata accessor for ShelfHeader.Configuration();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v172, 1, v173) == 1)
        {
          sub_10002B894(v172, &unk_100984380);
          v175 = 0;
        }

        else
        {
          v175 = ShelfHeader.Configuration.eyebrowColor.getter();
          (*(v174 + 8))(v172, v173);
        }

        sub_100512504(v175, v224);

        v96 = 16.0;
        if (qword_10096E7A0 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_1009D2748;
      }
    }
  }

  v100 = v97;
LABEL_73:
  v151 = sub_1000056A8(v94, v99);
  sub_1001EFDF0(v151, v100);
  v152 = v218;
  (*(v220 + 56))(v218, v98, 1, v94);
  v153 = v224;
  v154 = v210;
  sub_1001EFDF0(v224, v210);
  sub_1001EFDF0(v97, v225);
  sub_100031660(v152, v227, &qword_1009794E8);
  v155 = v226;
  v156 = v211;
  sub_100031660(v226, v211, &qword_1009794E0);
  v157 = v222;
  (*(v222 + 104))(v228, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
  sub_100028BB8();
  v221 = static UIColor.defaultLine.getter();
  sub_10002B894(v155, &qword_1009794E0);
  sub_10002B894(v152, &qword_1009794E8);
  sub_1001EFF9C(v97);
  sub_1001EFF9C(v153);
  sub_10002B894(v229, &unk_100984380);
  (*(v230 + 8))(v234, v194);
  v158 = v223;
  v159 = *(v223 + 32);
  v160 = v212;
  sub_1001EFEC4(v154, v212, type metadata accessor for TitleHeaderView.TextConfiguration);
  v161 = v156;
  sub_1001EFEC4(v225, v160 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_1000476A0(v227, v160 + v158[6], &qword_1009794E8);
  *(v160 + v158[7]) = 0;
  *(v160 + v159) = 0;
  v162 = v233;
  *(v160 + v158[9]) = v233;
  *(v160 + v158[14]) = v96;
  *(v160 + v158[12]) = 0;
  *(v160 + v158[13]) = v221;
  (*(v157 + 32))(v160 + v158[11], v228, v231);
  type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v163 = v219;
  v164 = *(v219 - 8);
  if ((*(v164 + 48))(v161, 1, v219) == 1)
  {
    sub_10002B894(v161, &qword_1009794E0);
    if (v162)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v164 + 104))(v160 + v158[10], *v165, v163);
  }

  else
  {
    (*(v164 + 32))(v160 + v158[10], v161, v163);
  }

  v166 = v160;
  return sub_1001EFEC4(v166, v232, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1006B9060()
{
  sub_10002849C(&qword_100985F38);
  v0 = type metadata accessor for Shelf.ContentType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B5370;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1000833C4(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100992088 = v7;
  return result;
}

uint64_t sub_1006B9288(unint64_t a1)
{
  v94 = sub_10002849C(&qword_10098CB20);
  __chkstk_darwin(v94);
  v97 = &v89 - v2;
  v3 = sub_10002849C(&unk_1009731F0);
  v100 = *(v3 - 8);
  __chkstk_darwin(v3);
  v93 = &v89 - v4;
  v5 = type metadata accessor for ShelfBackground();
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  __chkstk_darwin(v5);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v89 - v9);
  __chkstk_darwin(v10);
  v90 = (&v89 - v11);
  __chkstk_darwin(v12);
  v101 = &v89 - v13;
  __chkstk_darwin(v14);
  v92 = &v89 - v15;
  __chkstk_darwin(v16);
  v98 = &v89 - v17;
  v18 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v99 = a1;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v29, &unk_10098FFB0);
  v36 = v100;
  sub_1000476A0(v32, v35, &unk_10098FFB0);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10002B894(v35, &unk_10098FFB0);
LABEL_6:
    v40 = v101;
    goto LABEL_7;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v38 = v102;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = ShelfHeader.hasTrailingArtwork.getter();

  v40 = v101;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v20, &unk_10098FFB0);
  sub_1000476A0(v23, v26, &unk_10098FFB0);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v44 = v92;
    ReadOnlyLens.subscript.getter();

    v45 = *(v100 + 8);
    v45(v26, v3);
    v46 = v96;
    v47 = v98;
    v48 = v44;
    v49 = v95;
    (*(v96 + 32))(v98, v48, v95);
    v50 = v93;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v45(v50, v3);
    v51 = v94[12];
    v52 = v46[2];
    v53 = v97;
    v52(v97, v40, v49);
    v100 = v51;
    v52(&v53[v51], v47, v49);
    v54 = v46[11];
    v55 = v54(v53, v49);
    if (v55 == enum case for ShelfBackground.color(_:))
    {
      v56 = v55;
      v57 = v90;
      v52(v90, v53, v49);
      v58 = v46;
      v59 = v57;
      v92 = v58[12];
      (v92)(v57, v49);
      v94 = *v57;
      v60 = sub_10002849C(&qword_100972A40);
      v93 = *(v60 + 48);
      if (v54(&v53[v100], v49) == v56)
      {
        v61 = v93;
        v62 = v89;
        v52(v89, &v97[v100], v49);
        (v92)(v62, v49);
        v63 = *v62;
        v64 = *(v60 + 48);
        v65 = ShelfLayoutContext.traitCollection.getter();
        v66 = v94;
        v67 = [v94 resolvedColorWithTraitCollection:v65];

        v68 = ShelfLayoutContext.traitCollection.getter();
        v69 = [v63 resolvedColorWithTraitCollection:v68];

        sub_100028BB8();
        LOBYTE(v68) = static NSObject.== infix(_:_:)();

        if ((v68 & 1) == 0)
        {
          v85 = *(v96 + 8);
          v85(v101, v49);
          v85(v98, v49);
          v86 = type metadata accessor for ShelfBackgroundStyle();
          v87 = *(*(v86 - 8) + 8);
          v87(v62 + v64, v86);
          v87(&v61[v90], v86);
          v88 = v97;
          v85(&v97[v100], v49);
          v85(v88, v49);
          return 2;
        }

        v70 = type metadata accessor for ShelfBackgroundStyle();
        v71 = *(*(v70 - 8) + 8);
        v71(v62 + v64, v70);
        v71(&v61[v90], v70);
      }

      else
      {
        v72 = type metadata accessor for ShelfBackgroundStyle();
        (*(*(v72 - 8) + 8))(&v93[v59], v72);
      }

      v46 = v96;
      v53 = v97;
    }

    v73 = enum case for ShelfBackground.none(_:);
    v74 = v46[13];
    v75 = v91;
    v74(v91, enum case for ShelfBackground.none(_:), v49);
    v99 = sub_1006BA1B4();
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = v46[1];
    v77(v75, v49);
    if ((v76 & 1) == 0)
    {
      v74(v75, v73, v49);
      v78 = static ShelfBackground.== infix(_:_:)();
      v77(v75, v49);
      if (v78)
      {
        v77(v101, v49);
        v77(v98, v49);
        v79 = v100;
LABEL_20:
        v77(&v53[v79], v49);
        v77(v53, v49);
        return 2;
      }
    }

    v80 = v74;
    v74(v75, v73, v49);
    v81 = v101;
    v82 = static ShelfBackground.== infix(_:_:)();
    v77(v75, v49);
    if (v82)
    {
      v80(v75, v73, v49);
      v83 = v98;
      v84 = dispatch thunk of static Equatable.== infix(_:_:)();
      v77(v75, v49);
      v77(v81, v49);
      v77(v83, v49);
      v79 = v100;
      if ((v84 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v77(v81, v49);
      v77(v98, v49);
    }

    v42 = &qword_10098CB20;
    v43 = v53;
    goto LABEL_23;
  }

  v42 = &unk_10098FFB0;
  v43 = v26;
LABEL_23:
  sub_10002B894(v43, v42);
  return 0;
}

uint64_t sub_1006B9D50(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for Shelf.ContentType();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = type metadata accessor for ShelfHeader.Configuration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&unk_1009731F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (ShelfHeader.configuration.getter(), , v22 = ShelfHeader.Configuration.includeSeparator.getter(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v23, &unk_10098FFB0);
    sub_1000476A0(v24, v8, &unk_10098FFB0);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10002B894(v8, &unk_10098FFB0);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      ReadOnlyLens.subscript.getter();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_10096EDC8 != -1)
      {
        swift_once();
      }

      v30 = sub_100295E2C(v28, qword_100992088);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

unint64_t sub_1006BA1B4()
{
  result = qword_100981230;
  if (!qword_100981230)
  {
    type metadata accessor for ShelfBackground();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100981230);
  }

  return result;
}

uint64_t type metadata accessor for ProductRatingsView()
{
  result = qword_1009920C0;
  if (!qword_1009920C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1006BA2B8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DF10 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v4, qword_1009D0CB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v31 = v5 + 16;
  v6(v3, v30, v4);
  v23 = enum case for FontSource.useCase(_:);
  v28 = v1[13];
  v28(v3);
  v29 = type metadata accessor for StaticDimension();
  *(&v43 + 1) = v29;
  *v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v42);
  *(&v37 + 1) = v0;
  *&v38[0] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(&v36);
  v8 = v1[2];
  v8(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = v1[1];
  v22(v3, v0);
  *&v44[8] = xmmword_1007DE2E0;
  v9 = v30;
  v24 = v4;
  v30 = v6;
  v6(v3, v9, v4);
  v10 = v23;
  (v28)(v3, v23, v0);
  *(&v37 + 1) = v29;
  *&v38[0] = &protocol witness table for StaticDimension;
  sub_1000056E0(&v36);
  *(&v34 + 1) = v0;
  *&v35[0] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v33);
  v25 = v8;
  v26 = v1 + 2;
  v8(v11, v3, v0);
  v12 = v22;
  StaticDimension.init(_:scaledLike:)();
  v27 = v1 + 1;
  v12(v3, v0);
  if (qword_10096DF20 != -1)
  {
    swift_once();
  }

  v13 = v24;
  v14 = sub_1000056A8(v24, qword_1009D0CE0);
  v30(v3, v14, v13);
  v15 = v28;
  (v28)(v3, v10, v0);
  v16 = v10;
  if (qword_10096EDE0 != -1)
  {
    swift_once();
  }

  v17 = qword_1009D35C8;
  *&v39 = type metadata accessor for CappedSizeStaticDimension();
  *(&v39 + 1) = sub_1006BBB38(&unk_100991130, &type metadata accessor for CappedSizeStaticDimension);
  sub_1000056E0(v38 + 1);
  v18 = v17;
  CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)();
  v40 = xmmword_1007DE2F0;
  v41 = 0x4069C00000000000;
  if (qword_10096DF18 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v13, qword_1009D0CC8);
  v30(v3, v19, v13);
  v15(v3, v16, v0);
  *(&v34 + 1) = v29;
  *&v35[0] = &protocol witness table for StaticDimension;
  sub_1000056E0(&v33);
  v32[3] = v0;
  v32[4] = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v32);
  v25(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v12(v3, v0);
  *(v35 + 8) = xmmword_1007DE300;
  xmmword_1009D34D0 = v42;
  unk_1009D34E0 = v43;
  xmmword_1009D34F0 = *v44;
  unk_1009D3538 = v38[1];
  unk_1009D3548 = v39;
  unk_1009D3558 = v40;
  unk_1009D3508 = v36;
  *(&v35[1] + 1) = 0x4077000000000000;
  qword_1009D3500 = *&v44[16];
  qword_1009D3568 = v41;
  unk_1009D3518 = v37;
  unk_1009D3528 = v38[0];
  xmmword_1009D3590 = v35[0];
  unk_1009D35A0 = v35[1];
  result = *&v34;
  xmmword_1009D3570 = v33;
  unk_1009D3580 = v34;
  return result;
}

uint64_t sub_1006BA830()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_1009D35B0);
  sub_1000056A8(v7, qword_1009D35B0);
  if (qword_10096DF18 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0CC8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DF10 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0CB0);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

char *sub_1006BAA40(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v79 = type metadata accessor for DynamicTextAppearance();
  v10 = *(v79 - 8);
  __chkstk_darwin(v79);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v4[qword_1009920B8] = 0;
  type metadata accessor for DynamicLabel();
  *&v4[qword_100992090] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = type metadata accessor for RatingView();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v16 = &v15[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v16 = 0;
  v16[8] = 1;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v17 = qword_100982C88;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v15[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 0;
  *v16 = 0;
  v16[8] = 1;
  v15[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v18 = type metadata accessor for StarRow();
  v19 = objc_allocWithZone(v18);
  v20 = v17;
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 0, 0, 1, 0, 1);
  v15[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v21 = objc_allocWithZone(v18);
  *&v15[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 0, 0, 1, 0, 1);
  v82.receiver = v15;
  v82.super_class = v14;
  v22 = objc_msgSendSuper2(&v82, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v23 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v24 = *&v22[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v25 = *&v24[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v24[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v22[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v26 = v24;
  sub_1003A3A64(v25);

  if (*&v22[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v22 addSubview:?];
  }

  [v22 addSubview:{*&v22[v23], v79}];

  *&v5[qword_100992098] = v22;
  DynamicTextAppearance.init()();
  if (qword_10096DF20 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  sub_1000056A8(v27, qword_1009D0CE0);
  DynamicTextAppearance.withFontUseCase(_:)();
  v28 = *(v10 + 8);
  v29 = v79;
  v28(v12, v79);
  *&v5[qword_1009920A0] = DynamicLabel.__allocating_init(with:)();
  DynamicTextAppearance.init()();
  DynamicTextAppearance.withFontUseCase(_:)();
  v28(v12, v29);
  *&v5[qword_1009920A8] = DynamicLabel.__allocating_init(with:)();
  *&v5[qword_1009920B0] = [objc_allocWithZone(type metadata accessor for ProductRatingsHistogramView()) init];
  v81.receiver = v5;
  v81.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v81, "initWithFrame:", a1, a2, a3, a4);
  v31 = qword_100992090;
  v32 = *&v30[qword_100992090];
  sub_100028BB8();
  v33 = v30;
  v34 = v32;
  v35 = static UIColor.primaryText.getter();
  [v34 setTextColor:v35];

  v36 = *&v30[v31];
  v37 = v33;
  [v37 addSubview:v36];
  v38 = qword_100992098;
  v39 = *&v37[qword_100992098];
  v40 = static UIColor.primaryText.getter();
  v41 = *&v39[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
  *&v39[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = v40;
  v42 = v40;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003A2F78();
  }

  v43 = *&v37[v38];
  v44 = static UIColor.tertiaryText.getter();
  v45 = static UIColor.primaryText.getter();
  v46 = static UIColor.tertiaryText.getter();
  v47 = static UIColor.primaryText.getter();
  v48.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)(v44, v45, v46, v47).super.isa;
  isa = v48.super.isa;
  v50 = *&v43[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
  *&v43[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = v48;
  if (v50)
  {
    v51 = v48.super.isa;
    v52 = v50;
    v53 = static NSObject.== infix(_:_:)();

    if (v53)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v54 = v48.super.isa;
    v52 = 0;
  }

  sub_1003A2F78();
  v51 = isa;
LABEL_14:

  v55 = *&v37[v38];
  v56 = [v37 traitCollection];

  v57 = [v56 accessibilityContrast];
  v58 = v57 == 0;
  v59 = v55[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars];
  v55[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = v58;
  if ((v58 ^ v59))
  {
    v60 = *&v55[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
    if (v60)
    {
      v61 = *(v60 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v60 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v58;
      if (((v57 == 0) ^ v61))
      {
        sub_1003A450C();
      }
    }
  }

  v62 = qword_10096EDE8;
  v63 = *&v37[v38];
  if (v62 != -1)
  {
    swift_once();
  }

  [v63 setMaximumContentSizeCategory:qword_1009D35D0];

  [v37 addSubview:*&v37[v38]];
  v64 = qword_1009920A0;
  v65 = qword_10096EDE0;
  v66 = *&v37[qword_1009920A0];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = qword_1009D35C8;
  [v66 setMaximumContentSizeCategory:qword_1009D35C8];

  v68 = *&v37[v64];
  v69._object = 0x80000001007FBBB0;
  v69._countAndFlagsBits = 0xD000000000000012;
  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v69, 5, v70);
  v71 = String._bridgeToObjectiveC()();

  [v68 setText:v71];

  v72 = *&v37[v64];
  v73 = static UIColor.secondaryText.getter();
  [v72 setTextColor:v73];

  [v37 addSubview:*&v37[v64]];
  v74 = qword_1009920A8;
  [*&v37[qword_1009920A8] setMaximumContentSizeCategory:v67];
  v75 = *&v37[v74];
  v76 = static UIColor.secondaryText.getter();
  [v75 setTextColor:v76];

  [v37 addSubview:*&v37[v74]];
  [v37 addSubview:*&v37[qword_1009920B0]];
  sub_1006BB340();
  sub_10002849C(&qword_10097B110);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007B1890;
  *(v77 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v77 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v77 + 48) = type metadata accessor for UITraitAccessibilityContrast();
  *(v77 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v37;
}

void sub_1006BB340()
{
  v19 = type metadata accessor for FontUseCase();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DynamicTextAppearance();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_1006BB698();
  v18[1] = *&v0[qword_100992090];
  DynamicTextAppearance.init()();
  if (qword_10096EDD8 != -1)
  {
    swift_once();
  }

  v9 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v9, qword_1009D35B0);
  v20 = v0;
  v10 = v0;
  Conditional.evaluate(with:)();

  DynamicTextAppearance.withFontUseCase(_:)();
  (*(v1 + 8))(v3, v19);
  (*(v5 + 8))(v7, v4);
  dispatch thunk of DynamicLabel.dynamicTextAppearance.setter();
  v11 = *&v10[qword_100992098];
  v12 = [v10 traitCollection];
  v13 = [v12 accessibilityContrast];

  v14 = v13 == 0;
  v15 = *(v11 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars);
  *(v11 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars) = v14;
  if (v14 != v15)
  {
    v16 = *(v11 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView);
    if (v16)
    {
      v17 = *(v16 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v16 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v14;
      if (((v13 == 0) ^ v17))
      {
        sub_1003A450C();
      }
    }
  }
}

void sub_1006BB630(uint64_t a1)
{
  *(a1 + qword_1009920B8) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006BB698()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.isSizeClassCompact.getter();

  v4 = qword_1009920B8;
  v5 = v1[qword_1009920B8] | v3 ^ 1;
  [*&v1[qword_100992098] setHidden:v5 & 1];
  [*&v1[qword_1009920B0] setHidden:(v5 & 1) == 0];
  v6 = *&v1[qword_1009920A0];
  v7 = (v1[v4] & v3 & 1) == 0;

  return [v6 setHidden:v7];
}

id sub_1006BB768@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  if (qword_10096EDD0 != -1)
  {
    swift_once();
  }

  a1[3] = &type metadata for ProductRatingsLayout;
  a1[4] = sub_1006BBAE4();
  v4 = swift_allocObject();
  *a1 = v4;
  sub_10005DD08(&xmmword_1009D34D0, v4 + 16);
  v5 = *(v2 + qword_100992090);
  v6 = type metadata accessor for DynamicLabel();
  *(v4 + 264) = v6;
  *(v4 + 272) = &protocol witness table for UILabel;
  *(v4 + 240) = v5;
  type metadata accessor for RatingView();
  v7 = v5;
  Measurable.placeable.getter();
  v8 = *(v2 + qword_1009920A0);
  *(v4 + 344) = v6;
  *(v4 + 352) = &protocol witness table for UILabel;
  *(v4 + 320) = v8;
  v9 = *(v2 + qword_1009920A8);
  *(v4 + 384) = v6;
  *(v4 + 392) = &protocol witness table for UILabel;
  *(v4 + 360) = v9;
  v13 = *(v2 + qword_1009920B0);
  *(v4 + 424) = type metadata accessor for ProductRatingsHistogramView();
  *(v4 + 432) = sub_1006BBB38(&qword_100992128, type metadata accessor for ProductRatingsHistogramView);
  *(v4 + 400) = v13;
  *(v4 + 440) = *(v2 + qword_1009920B8);
  v10 = v8;
  v11 = v9;

  return v13;
}

void sub_1006BB964()
{
  v1 = *(v0 + qword_1009920B0);
}

void sub_1006BB9D4(uint64_t a1)
{
  v2 = *(a1 + qword_1009920B0);
}

unint64_t sub_1006BBA6C()
{
  result = qword_100992110;
  if (!qword_100992110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992110);
  }

  return result;
}

unint64_t sub_1006BBAE4()
{
  result = qword_100992120;
  if (!qword_100992120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992120);
  }

  return result;
}

uint64_t sub_1006BBB38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SearchFocusLayoutSectionProvider()
{
  result = qword_100992138;
  if (!qword_100992138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006BBC70(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  sub_10002849C(&unk_10097E130);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRetain();
  v8(v9, a5, a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1006BBD2C()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[1];
  if (v3 != v2)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v3 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_14:
        __break(1u);
        return;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    if (!__OFADD__(v3, 1))
    {
      v0[1] = v3 + 1;
      v6 = v0[2];
      v8 = v4;
      v6(&v7, &v8);

      return;
    }

    goto LABEL_13;
  }
}

uint64_t sub_1006BBE14(uint64_t a1, void *a2)
{
  v72 = a2;
  v3 = sub_10002849C(&qword_100972620);
  __chkstk_darwin(v3 - 8);
  v74 = &v59 - v4;
  v5 = sub_10002849C(&unk_100984000);
  __chkstk_darwin(v5 - 8);
  v75 = &v59 - v6;
  v76 = sub_10002849C(&qword_1009918C0);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v59 - v7;
  v8 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for SearchEntity();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100982AA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v16 - 8);
  v18 = &v59 - v17;
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v69 = &v59 - v24;
  __chkstk_darwin(v25);
  v70 = &v59 - v26;
  v27 = SearchAction.term.getter();
  if (!v28)
  {
    return 0;
  }

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    return 0;
  }

  v67 = v27;
  v68 = v28;
  SearchAction.entity.getter();
  if ((*(v10 + 48))(v15, 1, v9) != 1)
  {
    if (qword_10096EC78 != -1)
    {
      swift_once();
    }

    v59 = qword_1009D3290;
    if (qword_10096EC80 != -1)
    {
      swift_once();
    }

    v63 = qword_1009D3298;
    (*(v10 + 16))(v12, v15, v9);
    v31 = (*(v10 + 88))(v12, v9);
    v66 = a1;
    v65 = v20;
    v64 = v10;
    v61 = v9;
    if (v31 == enum case for SearchEntity.developers(_:))
    {
      v62 = "Search.ResultsTitle.InStories";
      v32 = 0xD000000000000020;
    }

    else
    {
      if (v31 != enum case for SearchEntity.stories(_:))
      {
        if (v31 == enum case for SearchEntity.arcade(_:))
        {
          v62 = "Search.ResultsTitle.InWatch";
          v33 = 0xD00000000000001CLL;
        }

        else
        {
          if (v31 != enum case for SearchEntity.watch(_:))
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v62 = "must be handled.";
          v33 = 0xD00000000000001BLL;
        }

        v60 = v33;
        goto LABEL_23;
      }

      v62 = "Search.ResultsTitle.InArcade";
      v32 = 0xD00000000000001DLL;
    }

    v60 = v32;
LABEL_23:
    sub_10002849C(&unk_100984010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    *(inited + 32) = 0x745F686372616573;
    *(inited + 40) = 0xEB000000006D7265;
    v35 = v68;
    *(inited + 48) = v67;
    *(inited + 56) = v35;

    v36 = sub_1001962CC(inited);
    swift_setDeallocating();
    sub_10002B894(inited + 32, &unk_100989050);
    v37._object = (v62 | 0x8000000000000000);
    v37._countAndFlagsBits = v60;
    localizedString(_:with:)(v37, v36);

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v38 = v72;
    v78[0] = v72;
    sub_1001469E0();
    v39 = v38;
    AttributedString.subscript.setter();
    v40 = v63;
    v78[0] = v63;
    sub_1002F4F4C();
    v41 = v40;
    AttributedString.subscript.setter();
    v78[0] = v67;
    v78[1] = v35;
    v42 = type metadata accessor for Locale();
    v43 = v74;
    (*(*(v42 - 8) + 56))(v74, 1, 1, v42);
    sub_1006BF63C(&unk_100984030, &type metadata accessor for AttributedString);
    sub_10007FED4();
    v44 = v75;
    AttributedStringProtocol.range<A>(of:options:locale:)();
    sub_10002B894(v43, &qword_100972620);
    if ((*(v73 + 48))(v44, 1, v76) == 1)
    {
      v45 = &unk_100984000;
    }

    else
    {
      v46 = v44;
      v44 = v71;
      sub_1003EBAA0(v46, v71);
      v47 = v59;
      v48 = v59;
      sub_1003EBB10();
      v49 = AttributedString.subscript.modify();
      v77 = v47;
      AttributedSubstring.subscript.setter();
      v49(v78, 0);
      v45 = &qword_1009918C0;
    }

    sub_10002B894(v44, v45);
    v50 = v64;
    v51 = v61;
    v52 = v65;
    v53 = *(v65 + 32);
    v53(v18, v22, v19);
    (*(v52 + 56))(v18, 0, 1, v19);
    (*(v50 + 8))(v15, v51);
    if ((*(v52 + 48))(v18, 1, v19) != 1)
    {

      v57 = v70;
      v53(v70, v18, v19);
      sub_100005744(0, &unk_100984040);
      (*(v52 + 16))(v69, v57, v19);
      v58 = NSAttributedString.init(_:)();
      (*(v52 + 8))(v57, v19);
      return v58;
    }

    goto LABEL_27;
  }

  sub_10002B894(v15, &unk_100982AA0);
  (*(v20 + 56))(v18, 1, 1, v19);
LABEL_27:
  sub_10002B894(v18, &qword_100975048);
  v54 = Action.title.getter();
  if (!v55)
  {
    return v67;
  }

  v56 = v54;

  return v56;
}

uint64_t sub_1006BC8E4(uint64_t a1)
{
  v2 = v1;
  sub_10002C0AC(a1, v9);
  type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_10002C0AC(v9, v8);
  sub_10002C0AC(v8, v7);

  v4 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v8);
  sub_100007000(v9);
  *(v2 + qword_100992130) = v4;
  sub_10002C0AC(a1, v9);
  sub_10002C0AC(v9, v8);
  v5 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(a1);
  sub_100007000(v9);
  return v5;
}

id sub_1006BC9E4(__objc2_class_ro *a1, uint64_t (*a2)(void), void (*a3)(char *, uint64_t), uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double *a10)
{
  v239 = a8;
  v234 = a7;
  v230 = a6;
  v231 = a5;
  v232 = a4;
  v253 = a3;
  v254 = a2;
  v255 = a10;
  v238 = a9;
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v241 = (&v226 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ItemLayoutContext();
  v247 = *(v13 - 8);
  v248 = v13;
  __chkstk_darwin(v13);
  v242 = (&v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v226 - v16;
  v228 = type metadata accessor for PageGrid();
  v229 = *(v228 - 8);
  __chkstk_darwin(v228);
  v227 = &v226 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v19 - 8);
  v233 = &v226 - v20;
  v21 = type metadata accessor for Shelf.ContentType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v237 = &v226 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v251 = &v226 - v25;
  __chkstk_darwin(v26);
  v28 = &v226 - v27;
  v29 = sub_10002849C(&unk_1009731F0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  *&v236 = &v226 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v226 - v33;
  __chkstk_darwin(v35);
  v240 = &v226 - v36;
  __chkstk_darwin(v37);
  v39 = &v226 - v38;
  v235 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v40 = *(v30 + 8);
  v245 = v29;
  v244 = v30 + 8;
  v243 = v40;
  v40(v39, v29);
  v249 = v28;
  v250 = v22;
  v43 = *(v22 + 88);
  v42 = (v22 + 88);
  v41 = v43;
  v246 = v21;
  v44 = (v43)(v28, v21);
  if (v44 == enum case for Shelf.ContentType.singleColumnList(_:) || v44 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v64 = v254();
    v65 = *(v64 + 16);
    v66 = _swiftEmptyArrayStorage;
    if (v65)
    {
      v256 = _swiftEmptyArrayStorage;
      sub_100144108(0, v65, 0);
      v251 = *(v247 + 16);
      v67 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      v226 = v64;
      v68 = v64 + v67;
      v237 = "outSectionProvider";
      v69 = *(v247 + 72);
      v249 = v247 + 8;
      v250 = v69;
      v236 = xmmword_1007B10D0;
      v66 = v256;
      v70 = v248;
      v71 = v242;
      v247 += 16;
      do
      {
        (v251)(v71, v68, v70);
        BasePageLayoutSectionProvider.componentTypeMappingProvider.getter();
        sub_10002A400(&aBlock, v260);
        if (dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)() && swift_conformsToProtocol2())
        {
          sub_100007000(&aBlock);
          dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
          v73 = v72;
        }

        else
        {
          sub_100007000(&aBlock);
          if (qword_10096D110 != -1)
          {
            swift_once();
          }

          v254 = type metadata accessor for OSLogger();
          v253 = sub_1000056A8(v254, qword_1009CE1E8);
          sub_10002849C(&unk_100972A10);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = v236;
          LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v74._object = (v237 | 0x8000000000000000);
          v74._countAndFlagsBits = 0xD000000000000047;
          LogMessage.StringInterpolation.appendLiteral(_:)(v74);
          swift_getKeyPath();
          v75 = v240;
          ItemLayoutContext.subscript.getter();

          swift_getKeyPath();
          v260 = v246;
          sub_1000056E0(&aBlock);
          v76 = v245;
          ReadOnlyLens.subscript.getter();

          v77 = v76;
          v71 = v242;
          v243(v75, v77);
          LogMessage.StringInterpolation.appendInterpolation(safe:)();
          sub_10002B894(&aBlock, &unk_1009711D0);
          v78._countAndFlagsBits = 0;
          v78._object = 0xE000000000000000;
          LogMessage.StringInterpolation.appendLiteral(_:)(v78);
          LogMessage.init(stringInterpolation:)();
          Logger.error(_:)();

          v73 = 0.0;
          v70 = v248;
        }

        (*v249)(v71, v70);
        v256 = v66;
        v80 = *(v66 + 2);
        v79 = *(v66 + 3);
        if (v80 >= v79 >> 1)
        {
          sub_100144108((v79 > 1), v80 + 1, 1);
          v66 = v256;
        }

        *(v66 + 2) = v80 + 1;
        v66[v80 + 4] = v73;
        v68 += v250;
        --v65;
      }

      while (v65);
      v49 = v235;
      v81 = v233;
    }

    else
    {
      v49 = v235;
      v81 = v233;
    }

    v91 = COERCE_DOUBLE(sub_1003E616C(v66));
    v92 = v231;
    if ((v93 & 1) != 0 || v91 <= 0.0)
    {

      goto LABEL_31;
    }

    v94 = static ComponentLayoutBuilder.verticalLayoutGroup(for:withItemHeights:in:itemSupplementaryProvider:asPartOf:)();

    v95 = [objc_opt_self() sectionWithGroup:v94];
    swift_getObjectType();
    dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &qword_10097F460);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v95 setBoundarySupplementaryItems:isa];

    dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
    sub_100005744(0, &unk_10097D670);
    v97 = Array._bridgeToObjectiveC()().super.isa;

    [v95 setDecorationItems:v97];

    v98 = v227;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.horizontalDirectionalMargins.getter();
    v100 = v99;
    v102 = v101;
    (*(v229 + 8))(v98, v228);
    sub_10002A400(v92, v92[3]);
    ShelfLayoutSpacingProvider.topPaddingValue(in:)();
    v104 = v103;
    sub_10002A400(v92, v92[3]);
    ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
    [v95 setContentInsets:{v104, v100, v105, v102}];
    BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
    v106 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
    v108 = v107;

    if (v106)
    {
      v261 = v106;
      v262 = v108;
      aBlock = _NSConcreteStackBlock;
      v258 = 1107296256;
      v259 = sub_1006BBC70;
      v260 = &unk_1008CED90;
      v106 = _Block_copy(&aBlock);
    }

    [v95 setVisibleItemsInvalidationHandler:{v106, v226}];
    _Block_release(v106);

    return v95;
  }

  if (v44 != enum case for Shelf.ContentType.scrollablePill(_:))
  {
    v242 = &v226;
    v252 = *(v252 + qword_100992130);
    __chkstk_darwin(v44);
    v47 = v235;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v82 = v251;
    v83 = v245;
    ReadOnlyLens.subscript.getter();

    v243(v34, v83);
    v241 = v41;
    v84 = (v41)(v82, v246);
    v85 = v232;
    if (v84 == enum case for Shelf.ContentType.action(_:))
    {
      v86 = ASKDeviceTypeGetCurrent();
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;
      if (v87 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v89 == v90)
      {
        goto LABEL_23;
      }

      v147 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v147)
      {
        goto LABEL_46;
      }

      v86 = ASKDeviceTypeGetCurrent();
      v184 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v186 = v185;
      if (v184 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v186 == v187)
      {
LABEL_23:

LABEL_46:
        v148 = (v254)(v84);
        v149 = *(v148 + 16);
        v42 = _swiftEmptyArrayStorage;
        v245 = v149;
        if (v149)
        {
          aBlock = _swiftEmptyArrayStorage;
          sub_100144108(0, v149, 0);
          v150 = type metadata accessor for SearchActionContentView(0);
          v42 = aBlock;
          v151 = v247 + 16;
          v253 = *(v247 + 16);
          v254 = v150;
          v152 = *(v247 + 80);
          v247 = v148;
          v153 = v148 + ((v152 + 32) & ~v152);
          v154 = *(v151 + 56);
          v155 = (v151 - 8);
          v156 = v149;
          do
          {
            v157 = v248;
            (v253)(v17, v153, v248);
            v158 = sub_100448E18(v17);
            (*v155)(v17, v157);
            aBlock = v42;
            v160 = *(v42 + 2);
            v159 = *(v42 + 3);
            if (v160 >= v159 >> 1)
            {
              sub_100144108((v159 > 1), v160 + 1, 1);
              v42 = aBlock;
            }

            *(v42 + 2) = v160 + 1;
            v42[v160 + 4] = v158;
            v153 += v154;
            --v156;
          }

          while (v156);
          v47 = v235;
          v161 = v233;
        }

        else
        {
LABEL_64:
          v161 = v233;
        }

        v168 = COERCE_DOUBLE(sub_1003E616C(v42));
        if ((v169 & 1) == 0 && v168 > 0.0)
        {
          v170 = *&v168;
          v171 = v227;
          ShelfLayoutContext.contentPageGrid.getter();
          PageGrid.columnCount.getter();
          v173 = v172;
          v174 = v229 + 8;
          v175 = *(v229 + 8);
          v175(v171, v228);
          v229 = v174;
          v253 = v175;
          if (v173 < 2.0)
          {
            goto LABEL_89;
          }

          v176 = v245;
          if (!v245)
          {
            goto LABEL_89;
          }

          v177 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v177 + 16) = v176;
          v178 = (v177 + 32);
          if (v176 >= 4)
          {
            v179 = v176 & 0x7FFFFFFFFFFFFFFCLL;
            v178 += v176 & 0x7FFFFFFFFFFFFFFCLL;
            v202 = vdupq_n_s64(v170);
            v203 = (v177 + 48);
            v204 = v176 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v203[-1] = v202;
              *v203 = v202;
              v203 += 2;
              v204 -= 4;
            }

            while (v204);
            if (v176 == v179)
            {
              goto LABEL_89;
            }
          }

          else
          {
            v179 = 0;
          }

          v205 = v176 - v179;
          do
          {
            *v178++ = v170;
            --v205;
          }

          while (v205);
LABEL_89:
          v206 = static ComponentLayoutBuilder.verticalLayoutGroup(for:withItemHeights:in:itemSupplementaryProvider:asPartOf:)();

          v207 = objc_opt_self();
          v254 = v206;
          v95 = [v207 sectionWithGroup:v206];
          swift_getObjectType();
          v208 = v231;
          dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
          sub_100005744(0, &qword_10097F460);
          v209 = Array._bridgeToObjectiveC()().super.isa;

          [v95 setBoundarySupplementaryItems:v209];

          dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
          sub_100005744(0, &unk_10097D670);
          v210 = Array._bridgeToObjectiveC()().super.isa;

          [v95 setDecorationItems:v210];

          v211 = v227;
          ShelfLayoutContext.contentPageGrid.getter();
          PageGrid.horizontalDirectionalMargins.getter();
          v213 = v212;
          v215 = v214;
          v253(v211, v228);
          sub_10002A400(v208, v208[3]);
          ShelfLayoutSpacingProvider.topPaddingValue(in:)();
          v217 = v216;
          sub_10002A400(v208, v208[3]);
          ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
          [v95 setContentInsets:{v217, v213, v218, v215}];
          BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
          v219 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
          v221 = v220;

          if (v219)
          {
            v261 = v219;
            v262 = v221;
            aBlock = _NSConcreteStackBlock;
            v258 = 1107296256;
            v259 = sub_1006BBC70;
            v260 = &unk_1008CED68;
            v219 = _Block_copy(&aBlock);
          }

          v183 = v249;
          v182 = v250;
          [v95 setVisibleItemsInvalidationHandler:v219];
          _Block_release(v219);

          goto LABEL_92;
        }

        sub_100005744(0, &unk_100990AB0);
        v180 = type metadata accessor for ShelfLayoutContext();
        v181 = *(v180 - 8);
        (*(v181 + 16))(v161, v47, v180);
        (*(v181 + 56))(v161, 0, 1, v180);
        v95 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
        sub_10002B894(v161, &qword_10097F480);
        v183 = v249;
        v182 = v250;
        goto LABEL_92;
      }

      v188 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v188)
      {
        goto LABEL_46;
      }
    }

    v248 = &v226;
    __chkstk_darwin(v84);
    __chkstk_darwin(v189);
    type metadata accessor for BasePageLayoutSectionProvider();
    v190 = method lookup function for BasePageLayoutSectionProvider();
    v191 = v85;
    v192 = v231;
    v193 = v239;
    v95 = v190(v47, sub_10002F0EC, &v226 - 4, v191, v231, v230, v234, v239, v238, v255);
    v194 = v236;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v195 = v237;
    v196 = v245;
    ReadOnlyLens.subscript.getter();

    v243(v194, v196);
    v197 = v241(v195, v246);
    if (v197 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v198 = v254();
      v199 = sub_10040C1D8(v47, v198, v232, v192, v230, v234, v193, v238, v255);

      v95 = v199;
      v182 = v250;
    }

    else
    {
      v182 = v250;
      if (v197 != enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v183 = v249;
        if (v197 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          [v95 setOrthogonalScrollingBehavior:2];
        }

        else
        {
          (*(v250 + 8))(v237, v246);
        }

        goto LABEL_92;
      }

      v200 = v254();
      v201 = sub_10040D51C(v47, v200, v232, v192, v230, v234, v239, v238, v255);

      v95 = v201;
    }

    v183 = v249;
LABEL_92:
    v222 = *(v182 + 8);
    v223 = v246;
    v222(v251, v246);
    v222(v183, v223);
    return v95;
  }

  v45 = v254();
  v46 = *(v45 + 16);
  v47 = &StringUserDefaultsDebugSetting;
  v48 = &StringUserDefaultsDebugSetting;
  v49 = v235;
  if (v46)
  {
    aBlock = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v42 = objc_opt_self();
    v254 = objc_opt_self();
    v253 = objc_opt_self();
    ObjectType = swift_getObjectType();
    v51 = v247 + 16;
    v250 = *(v247 + 16);
    v251 = ObjectType;
    v52 = *(v247 + 80);
    v247 = v45;
    v53 = v45 + ((v52 + 32) & ~v52);
    v249 = *(v51 + 56);
    v54 = v248;
    do
    {
      (v250)(v17, v53, v54);
      v55 = sub_1006BEB18(v17, 0, 0, 1);
      v57 = v56;
      v58 = [v42 absoluteDimension:v55];
      v59 = [v42 absoluteDimension:v57];
      v60 = [v254 sizeWithWidthDimension:v58 heightDimension:v59];

      dispatch thunk of ItemSupplementaryProvider.supplementaryItems(for:asPartOf:)();
      sub_100005744(0, &qword_100982860);
      v61 = Array._bridgeToObjectiveC()().super.isa;

      v62 = [v253 itemWithLayoutSize:v60 supplementaryItems:v61];

      (*(v51 - 8))(v17, v54);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v53 += v249;
      --v46;
    }

    while (v46);

    v63 = aBlock;
    v49 = v235;
    v48 = &StringUserDefaultsDebugSetting;
    v47 = &StringUserDefaultsDebugSetting;
  }

  else
  {

    v63 = _swiftEmptyArrayStorage;
  }

  KeyPath = swift_getKeyPath();
  aBlock = v63;
  v258 = 0;
  v259 = sub_1006BF5E0;
  v260 = KeyPath;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1006BBD2C();
  v254 = (v63 >> 62);
  if (v113)
  {

    swift_bridgeObjectRelease_n();
    v114 = 0.0;
    goto LABEL_39;
  }

  v253 = KeyPath;
  if (v63 >> 62)
  {
    v225 = v112;
    v115 = _CocoaArrayWrapper.endIndex.getter();
    v112 = v225;
  }

  else
  {
    v115 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v114 = v112;
  v81 = v258;
  if (v258 == v115)
  {
LABEL_38:

    swift_bridgeObjectRelease_n();
    v49 = v235;
    v48 = &StringUserDefaultsDebugSetting;
    v47 = &StringUserDefaultsDebugSetting;
LABEL_39:
    v81 = v233;
    if (v254)
    {
      goto LABEL_96;
    }

    if (!*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    goto LABEL_41;
  }

  v49 = v63 & 0xC000000000000001;
  v47 = (v63 & 0xFFFFFFFFFFFFFF8);
  v48 = &StringUserDefaultsDebugSetting;
  while (1)
  {
    if (v49)
    {
      v162 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v163 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_63;
      }

      goto LABEL_57;
    }

    if ((v81 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v81 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_95;
    }

    v162 = v63[v81 + 4];
    v163 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

LABEL_57:
    v164 = v162;
    v42 = [v164 layoutSize];
    v165 = [v42 heightDimension];
    [v165 dimension];
    v167 = v166;

    if (v114 < v167)
    {
      v114 = v167;
    }

    ++v81;
    if (v163 == v115)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_31:

    sub_100005744(0, &unk_100990AB0);
    v109 = type metadata accessor for ShelfLayoutContext();
    v110 = *(v109 - 8);
    (*(v110 + 16))(v81, v49, v109);
    (*(v110 + 56))(v81, 0, 1, v109);
    v95 = static NSCollectionLayoutSection.emptyLayoutSection(for:)();
    sub_10002B894(v81, &qword_10097F480);
    return v95;
  }

LABEL_41:
  if (v114 < 2.22507386e-308)
  {
    goto LABEL_31;
  }

  v116 = objc_opt_self();
  v117 = v227;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v119 = v118;
  v120 = v229 + 8;
  v121 = *(v229 + 8);
  v121(v117, v228);
  v122 = v121;
  v251 = v121;
  v229 = v120;
  v123 = [v116 estimatedDimension:v119];
  v124 = [v116 v47[42].ivars];
  v125 = [objc_opt_self() v48[42].weak:v123 ivar:v124lyt];

  v126 = objc_opt_self();
  sub_100005744(0, &qword_10098EFE0);
  v127 = Array._bridgeToObjectiveC()().super.isa;

  v254 = v125;
  v128 = [v126 horizontalGroupWithLayoutSize:v125 subitems:v127];

  v129 = objc_opt_self();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interColumnSpace.getter();
  v131 = v130;
  v122(v117, v228);
  v132 = [v129 fixedSpacing:v131];
  [v128 setInterItemSpacing:v132];

  v133 = objc_opt_self();
  v253 = v128;
  v95 = [v133 sectionWithGroup:v128];
  swift_getObjectType();
  v134 = v231;
  dispatch thunk of ShelfSupplementaryProvider.supplementaryItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &qword_10097F460);
  v135 = Array._bridgeToObjectiveC()().super.isa;

  [v95 setBoundarySupplementaryItems:v135];

  dispatch thunk of ShelfSupplementaryProvider.decorationItems(for:shelfLayoutSpacingProvider:asPartOf:)();
  sub_100005744(0, &unk_10097D670);
  v136 = Array._bridgeToObjectiveC()().super.isa;

  [v95 setDecorationItems:v136];

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  v138 = v137;
  v140 = v139;
  (v251)(v117, v228);
  sub_10002A400(v134, v134[3]);
  ShelfLayoutSpacingProvider.topPaddingValue(in:)();
  v142 = v141;
  sub_10002A400(v134, v134[3]);
  ShelfLayoutSpacingProvider.bottomPaddingValue(in:)();
  [v95 setContentInsets:{v142, v138, v143, v140}];
  [v95 setOrthogonalScrollingBehavior:1];
  BasePageLayoutSectionProvider.visibleItemsObserverProviders.getter();
  v144 = Array<A>.visibleItemsTransformer(for:observing:asPartOf:)();
  v146 = v145;

  if (v144)
  {
    v261 = v144;
    v262 = v146;
    aBlock = _NSConcreteStackBlock;
    v258 = 1107296256;
    v259 = sub_1006BBC70;
    v260 = &unk_1008CEDB8;
    v144 = _Block_copy(&aBlock);
  }

  [v95 setVisibleItemsInvalidationHandler:v144];
  _Block_release(v144);

  return v95;
}

void sub_1006BEA58(id *a1)
{
  v1 = *a1;
  swift_getAtKeyPath();
}

uint64_t sub_1006BEAC0()
{
  BasePageLayoutSectionProvider.deinit();

  return swift_deallocClassInstance();
}

double sub_1006BEB18(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v80 = a4;
  v75 = a2;
  v76 = a3;
  v5 = type metadata accessor for PageGrid();
  v78 = *(v5 - 8);
  __chkstk_darwin(v5);
  v77 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LabelPlaceholder();
  v89 = *(v7 - 8);
  __chkstk_darwin(v7);
  v79 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v88 = &v66 - v10;
  v11 = type metadata accessor for TextAppearance();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v87 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for DynamicTextAppearance();
  v13 = *(v90 - 8);
  __chkstk_darwin(v90);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  type metadata accessor for SearchAction();
  sub_1006BF63C(&unk_100983FF0, &type metadata accessor for SearchAction);
  ItemLayoutContext.typedModel<A>(as:)();
  v86 = v102[0];
  if (!v102[0])
  {
    return 0.0;
  }

  v85 = v24;
  v70 = v5;
  v74 = v7;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  DynamicTextAppearance.init()();
  if (qword_10096E708 != -1)
  {
    swift_once();
  }

  v73 = qword_1009D25D8;
  DynamicTextAppearance.withTextStyle(_:)();
  v71 = v13;
  v26 = v13 + 8;
  v25 = *(v13 + 8);
  v27 = v15;
  v28 = v90;
  v25(v27, v90);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v25(v18, v28);
  v29 = v21;
  v30 = v85;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v72 = v29;
  v25(v29, v28);
  swift_getKeyPath();
  v82 = a1;
  ItemLayoutContext.subscript.getter();

  v31 = v99;
  v32 = v87;
  TextAppearance.init()();
  DynamicTextAppearance.customTextStyle.getter();
  sub_10002A400(v102, v103);
  dispatch thunk of CustomTextStyle.font(compatibleWith:)();
  TextAppearance.font.setter();
  sub_100007000(v102);
  DynamicTextAppearance.textAlignment.getter();
  TextAppearance.textAlignment.setter();
  DynamicTextAppearance.lineBreakMode.getter();
  TextAppearance.lineBreakMode.setter();
  DynamicTextAppearance.numberOfLines.getter();
  TextAppearance.numberOfLines.setter();
  DynamicTextAppearance.lineSpacing.getter();
  TextAppearance.lineSpacing.setter();

  v33 = TextAppearance.font.getter();
  v34 = sub_1006BBE14(v86, v33);
  v81 = v35;
  v37 = v36;
  LODWORD(v31) = ~v36;

  if (!v31)
  {

    (*(v83 + 8))(v32, v84);
    v25(v30, v90);
    return 0.0;
  }

  v69 = v26;
  (*(v71 + 16))(v72, v30, v90);
  v68 = v37;
  v67 = v25;
  if (v37)
  {
    sub_1003EBB74(v34, v81, 1);
    LabelPlaceholder.Options.init(rawValue:)();
    v38 = v79;
    v39 = v34;
    LabelPlaceholder.init(_:with:where:)();
  }

  else
  {
    sub_1003EBB74(v34, v81, 0);
    LabelPlaceholder.Options.init(rawValue:)();
    v38 = v79;
    v39 = v34;
    LabelPlaceholder.init(_:with:where:)();
  }

  v41 = v74;
  (*(v89 + 32))(v88, v38, v74);

  v42 = Action.artwork.getter();

  v43 = v73;
  if (v42 && (v44 = [objc_opt_self() configurationWithTextStyle:v73 scale:2], swift_getKeyPath(), ItemLayoutContext.subscript.getter(), , v45 = v102[0], v46 = objc_msgSend(v44, "configurationWithTraitCollection:", v102[0]), v45, v44, v47 = static SystemImage.load(artwork:with:includePrivateImages:)(), , v46, v47))
  {
    [v47 size];
    v49 = v48;
    v51 = v50;

    *(&v100 + 1) = &type metadata for FixedSizedPlaceholder;
    v101 = sub_100168330();
    *&v99 = v49;
    *(&v99 + 1) = v51;
  }

  else
  {
    v101 = 0;
    v99 = 0u;
    v100 = 0u;
  }

  v98[3] = v41;
  v98[4] = &protocol witness table for LabelPlaceholder;
  v52 = sub_1000056E0(v98);
  (*(v89 + 16))(v52, v88, v41);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  sub_1000CB084(&v99, &v95);
  sub_10002C0AC(v98, v94);
  v94[8] = &type metadata for SearchLinkLayout;
  v94[9] = sub_1002679AC();
  v53 = swift_allocObject();
  v94[5] = v53;
  v54 = sub_100267A00();
  v55 = swift_allocObject();
  sub_10002C0AC(v94, v55 + 16);
  sub_1000CB084(&v95, &v92);
  if (v93)
  {
    sub_100005A38(&v92, v91);
    v56 = swift_allocObject();
    sub_100005A38(v91, v56 + 16);
    v57 = v43;
    sub_100007000(v94);
    sub_10002B894(&v95, &unk_10097B860);
    v58 = &type metadata for AutoAdjustingPlaceable;
    v59 = v54;
  }

  else
  {
    v60 = v43;
    sub_100007000(v94);
    sub_10002B894(&v95, &unk_10097B860);
    v56 = 0;
    v58 = 0;
    v59 = 0;
  }

  v53[2] = v56;
  v53[3] = 0;
  v53[4] = 0;
  v53[5] = v58;
  v53[6] = v59;
  v53[7] = v55;
  v53[10] = &type metadata for AutoAdjustingPlaceable;
  v53[11] = v54;
  v53[12] = v43;
  v53[13] = 0x4014000000000000;
  v96 = type metadata accessor for Margins();
  v97 = &protocol witness table for Margins;
  sub_1000056E0(&v95);
  Margins.init(insets:child:)();
  swift_unknownObjectRelease();
  sub_100005A38(&v95, v102);
  sub_100007000(v98);
  sub_10002B894(&v99, &unk_10097B860);
  if (v80)
  {
    swift_getKeyPath();
    v61 = v77;
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v78 + 8))(v61, v70);
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v62 = v99;
  sub_10002A400(v102, v103);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v64 = v63;

  sub_1003EBA78(v39, v81, v68);

  v40 = ceil(v64);
  sub_1006BF5E8(v102);
  (*(v89 + 8))(v88, v41);
  (*(v83 + 8))(v87, v84);
  v67(v85, v90);
  return v40;
}

uint64_t sub_1006BF63C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1006BF694(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView();
  *&v4[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_1006BF8F8()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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

void (*sub_1006BF974(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
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
  return sub_1006BFA1C;
}

void sub_1006BFA1C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_1006C0524(&qword_100973190, type metadata accessor for VideoView);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_100028004();
        v10 = v6;
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v18 = v3;
    sub_10047C6C8(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_100988CA8 + 8) = &off_1008CDCD0;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_1006C0524(&qword_100973190, type metadata accessor for VideoView);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_100028004();
        v15 = v6;
        v16 = static NSObject.== infix(_:_:)();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v21 = *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v3;
    v22 = v3;
    sub_10047C6C8(v21);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        *(v23 + qword_100988CA8 + 8) = &off_1008CDCD0;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_1006BFE74(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC8AppStore34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_100988CD0) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_1006C0030()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell()
{
  result = qword_1009921D0;
  if (!qword_1009921D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C0108()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1006C01E0(uint64_t **a1))()
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
  v2[4] = sub_1006BF974(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1006C0250(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1006C02A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1006C0310(uint64_t *a1))()
{
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
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1006C03AC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  sub_100028004();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1006C0524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006C056C()
{
  v1 = type metadata accessor for Locale();
  v66 = *(v1 - 8);
  v67 = v1;
  __chkstk_darwin(v1);
  v72 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10002849C(&qword_100973210);
  v69 = swift_allocObject();
  v65 = xmmword_1007B15F0;
  *(v69 + 16) = xmmword_1007B15F0;
  v7 = swift_allocObject();
  *(v7 + 16) = v0;
  type metadata accessor for NavigationActionDebugSetting();
  v8 = swift_allocObject();
  v8[7] = 0xD000000000000011;
  v8[8] = 0x8000000100820640;
  v8[10] = 0;
  v8[11] = 0;
  v8[9] = sub_1006C0D44;
  v8[12] = sub_1006C13FC;
  v8[13] = v7;
  v9 = v0;

  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v13 = *(v4 + 8);
  v13(v6, v3);
  v68 = v13;
  v73 = v10;
  v74 = v12;
  AnyHashable.init<A>(_:)();

  v14 = v69;
  *(v69 + 32) = v8;
  v15 = swift_allocObject();
  *(v15 + 16) = v9;
  v16 = swift_allocObject();
  v16[7] = 0xD00000000000001ALL;
  v16[8] = 0x8000000100820660;
  v16[10] = 0;
  v16[11] = 0;
  v16[9] = 0;
  v16[12] = sub_1006C1404;
  v16[13] = v15;
  v17 = v9;

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v13(v6, v3);
  v73 = v18;
  v74 = v20;
  AnyHashable.init<A>(_:)();

  *(v14 + 40) = v16;
  static Locale.storefront.getter();
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1007BCD60;
  v21 = Locale.identifier.getter();
  v23 = v22;
  v71 = type metadata accessor for InfoDebugSetting();
  v24 = swift_allocObject();
  v24[7] = 0x696669746E656449;
  v24[8] = 0xEA00000000007265;
  v24[9] = v21;
  v24[10] = v23;

  UUID.init()();
  v25 = UUID.uuidString.getter();
  v27 = v26;
  v28 = v68;
  v68(v6, v3);
  v73 = v25;
  v74 = v27;
  AnyHashable.init<A>(_:)();

  v29 = v64;
  *(v64 + 32) = v24;
  v30 = swift_allocObject();
  *(v30 + 56) = 0xD000000000000013;
  *(v30 + 64) = 0x8000000100820680;
  *(v30 + 72) = xmmword_1007DE6C0;
  UUID.init()();
  v31 = UUID.uuidString.getter();
  v33 = v32;
  v28(v6, v3);
  v73 = v31;
  v74 = v33;
  AnyHashable.init<A>(_:)();
  v29[5] = v30;
  Locale.paragraphLineHeightMultiple.getter();
  v34 = Double.description.getter();
  v36 = v35;
  v37 = swift_allocObject();
  v37[7] = 0xD000000000000014;
  v37[8] = 0x80000001008206A0;
  v37[9] = v34;
  v37[10] = v36;

  UUID.init()();
  v38 = UUID.uuidString.getter();
  v40 = v39;
  v28(v6, v3);
  v73 = v38;
  v74 = v40;
  AnyHashable.init<A>(_:)();

  v29[6] = v37;
  v41 = Locale.prefersSmallerText.getter();
  if (v41)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v41)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  v44 = swift_allocObject();
  v44[7] = 0xD000000000000014;
  v44[8] = 0x80000001008206C0;
  v44[9] = v42;
  v44[10] = v43;

  UUID.init()();
  v45 = UUID.uuidString.getter();
  v47 = v46;
  v48 = v68;
  v68(v6, v3);
  v73 = v45;
  v74 = v47;
  AnyHashable.init<A>(_:)();

  v29[7] = v44;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v49 = swift_allocObject();
  *(v49 + 56) = 0xD000000000000012;
  *(v49 + 64) = 0x80000001008206E0;
  *(v49 + 72) = 0;
  *(v49 + 80) = 0xD00000000000001DLL;
  *(v49 + 88) = 0x8000000100820700;
  *(v49 + 96) = 0;
  UUID.init()();
  v50 = UUID.uuidString.getter();
  v52 = v51;
  v48(v6, v3);
  v73 = v50;
  v74 = v52;
  AnyHashable.init<A>(_:)();
  v29[8] = v49;
  v53 = swift_allocObject();
  *(v53 + 16) = v65;
  type metadata accessor for DebugSection();
  v54 = swift_allocObject();
  UUID.init()();
  v55 = UUID.uuidString.getter();
  v57 = v56;
  v48(v6, v3);
  v54[2] = v55;
  v54[3] = v57;
  v54[4] = 0x6F726665726F7453;
  v54[5] = 0xEA0000000000746ELL;
  v54[6] = v69;
  *(v53 + 32) = v54;
  v58 = swift_allocObject();
  UUID.init()();
  v59 = UUID.uuidString.getter();
  v61 = v60;
  v48(v6, v3);
  v58[2] = v59;
  v58[3] = v61;
  v58[4] = 0x656C61636F4CLL;
  v58[5] = 0xE600000000000000;
  v58[6] = v29;
  *(v53 + 40) = v58;
  (*(v66 + 8))(v72, v67);
  return v53;
}

uint64_t sub_1006C0D70(uint64_t a1)
{
  v2 = type metadata accessor for FlowOrigin();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FlowAnimationBehavior();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for FlowPresentationContext();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v8 - 8);
  v10 = v29 - v9;
  v11 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for FlowPage();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v18 - 8);
  v20 = v29 - v19;
  v21 = sub_10002849C(&unk_100974490);
  v39 = a1;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1000F40E0(v20);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v24 = *(v15 + 104);
  v29[1] = v17;
  v24(v17, enum case for FlowPage.debugStorefrontPicker(_:), v14);
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 56);
  v29[0] = v13;
  v26(v13, 1, 1, v25);
  v27 = type metadata accessor for ReferrerData();
  (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
  v40 = 0u;
  v41 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v30 + 104))(v31, enum case for FlowPresentationContext.infer(_:), v32);
  (*(v34 + 104))(v33, enum case for FlowAnimationBehavior.infer(_:), v35);
  (*(v36 + 104))(v38, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v28 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v28, 1, v39, v20);

  return (*(v22 + 8))(v20, v21);
}

void sub_1006C1344()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 simulateStorefrontChange];
}

id sub_1006C13A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StorefrontSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006C140C(void *a1)
{
  if (*v1 != *a1)
  {
    goto LABEL_16;
  }

  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  type metadata accessor for BoolPreferencesDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  v4 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = *(v3 + 80);
  v6 = *(v1 + 80);
  if (v5)
  {
    if (v6 && (*(v3 + 72) == *(v1 + 72) && v5 == v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_14;
    }

LABEL_16:
    v7 = 0;
    return v7 & 1;
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  v7 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  return v7 & 1;
}

void sub_1006C1524()
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 80))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v0 + 88));
}

uint64_t sub_1006C15B0()
{

  v1 = OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100979740);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1006C1644()
{
  sub_10003D614(v0 + 16);

  v1 = OBJC_IVAR____TtC8AppStore27BoolPreferencesDebugSetting_key;
  v2 = sub_10002849C(&qword_100979740);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BoolPreferencesDebugSetting()
{
  result = qword_100992240;
  if (!qword_100992240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006C1780()
{
  sub_1006C1830();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006C1830()
{
  if (!qword_100992250)
  {
    v0 = type metadata accessor for PreferenceKey();
    if (!v1)
    {
      atomic_store(v0, &qword_100992250);
    }
  }
}

uint64_t sub_1006C18D4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096EDF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_100992318);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006C1ADC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100992378);
  sub_1000056A8(v4, qword_100992378);
  if (qword_10096EE08 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_100992360);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006C1CB0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100992390);
  sub_1000056A8(v4, qword_100992390);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1006C1E48(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1006C1EA0(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1006C1F10(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for AccountDetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1006C1FDC(a5);
}

id sub_1006C1F10(char a1)
{
  v2 = v1;
  v4 = [v2 contentView];
  if (a1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180);
    v5 = static UIColor.tableViewCellBackground.getter();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

id sub_1006C1FDC(SEL *a1)
{
  v2 = v1;
  v3 = [v1 *a1];
  v4 = [v2 contentView];
  if (v3)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180);
    v5 = static UIColor.tableViewCellBackground.getter();
  }

  v6 = v5;
  [v4 setBackgroundColor:v5];

  return [v2 setNeedsDisplay];
}

char *sub_1006C20B4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v98 = *(v10 - 8);
  __chkstk_darwin(v10);
  *&v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v89 - v13;
  v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldShowFullTitle] = 1;
  v15 = &v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageMarginRight];
  *v15 = 0;
  v15[8] = 1;
  v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_shouldResizeImage] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessoryView] = 0;
  v16 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessory;
  v17 = type metadata accessor for Accessory();
  v18 = *(*(v17 - 8) + 56);
  v18(&v5[v16], 1, 1, v17);
  v18(&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_secondaryAccessory], 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryMargin];
  *v19 = 0;
  v19[8] = 1;
  v20 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView;
  v21 = type metadata accessor for SeparatorView();
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorViewInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showTopSeparatorView] = 0;
  v23 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorViewInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_showBottomSeparatorView] = 0;
  v25 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096EDF0 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_100992318);
  v30 = *(v28 - 8);
  v31 = *(v30 + 16);
  v94 = v29;
  v96 = v31;
  v32 = v30 + 16;
  (v31)(v14);
  v34 = *(v30 + 56);
  v33 = v30 + 56;
  v93 = v34;
  v34(v14, 0, 1, v28);
  v35 = *(v98 + 13);
  v36 = enum case for DirectionalTextAlignment.none(_:);
  v98 = (v98 + 104);
  v92 = v35;
  (v35)(v97);
  v37 = type metadata accessor for DynamicTypeLabel();
  v38 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096EE08 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v28, qword_100992360);
  v91 = v32;
  v96(v14, v39, v28);
  v40 = v93;
  v93(v14, 0, 1, v28);
  v41 = v97;
  v42 = v10;
  v89 = v33;
  v90 = v10;
  v43 = v92;
  v92(v97, v36, v42);
  v44 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v96(v14, v94, v28);
  v40(v14, 0, 1, v28);
  v43(v41, v36, v90);
  v45 = objc_allocWithZone(v37);
  *&v5[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v46 = type metadata accessor for AccountDetailCollectionViewCell();
  v100.receiver = v5;
  v100.super_class = v46;
  v98 = v46;
  v47 = objc_msgSendSuper2(&v100, "initWithFrame:", a1, a2, a3, a4);
  sub_1006C4E1C();
  [v47 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v48 = [v47 contentView];
  v49 = sub_100005744(0, &qword_100970180);
  v50 = static UIColor.tableViewCellBackground.getter();
  [v48 setBackgroundColor:v50];

  v51 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageView;
  v52 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_imageView];
  static UIColor.mediaBorder.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v53 = *&v47[v51];
  v54 = [v47 traitCollection];
  static Separator.thickness(compatibleWith:)();

  dispatch thunk of RoundedCornerView.borderWidth.setter();
  v55 = *&v47[v51];
  v56 = [v47 backgroundColor];

  ArtworkView.backgroundColor.setter();
  [*&v47[v51] setContentMode:1];
  v57 = [v47 contentView];
  [v57 addSubview:*&v47[v51]];

  v58 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel;
  [*&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v59 = [v47 contentView];
  [v59 addSubview:*&v47[v58]];

  v60 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel;
  v61 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_subtitleLabel];
  *&v97 = v49;
  v62 = static UIColor.secondaryText.getter();
  [v61 setTextColor:v62];

  v63 = [v47 contentView];
  [v63 addSubview:*&v47[v60]];

  v64 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel;
  v65 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_detailLabel];
  v66 = static UIColor.secondaryText.getter();
  [v65 setTextColor:v66];

  v67 = [v47 contentView];
  [v67 addSubview:*&v47[v64]];

  v68 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView;
  v69 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_topSeparatorView];
  v70 = objc_opt_self();
  v71 = v69;
  v72 = [v70 separatorColor];
  v73 = *&v71[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v71[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v72;
  v74 = v72;

  [*&v71[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v74];
  [*&v47[v68] setHidden:1];
  v75 = [v47 contentView];
  [v75 addSubview:*&v47[v68]];

  v76 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView;
  v77 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_bottomSeparatorView];
  v78 = [v70 separatorColor];
  v79 = *&v77[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v77[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v78;
  v80 = v78;

  [*&v77[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v80];
  [*&v47[v76] setHidden:1];
  v81 = [v47 contentView];
  [v81 addSubview:*&v47[v76]];

  v82 = OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView;
  v83 = *&v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_backgroundSelectionView];
  v84 = static UIColor.tableViewCellSelectedBackground.getter();
  [v83 setBackgroundColor:v84];

  [*&v47[v82] setOpaque:0];
  [*&v47[v82] setUserInteractionEnabled:0];
  if (v47[OBJC_IVAR____TtC8AppStore31AccountDetailCollectionViewCell_isSelectable] == 1)
  {
    [v47 setSelectedBackgroundView:*&v47[v82]];
  }

  sub_10002849C(&qword_10097B110);
  v85 = swift_allocObject();
  v97 = xmmword_1007B10D0;
  *(v85 + 16) = xmmword_1007B10D0;
  *(v85 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v85 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v99[3] = v98;
  v99[0] = v47;
  v86 = v47;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v99);
  v87 = swift_allocObject();
  *(v87 + 16) = v97;
  *(v87 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v87 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v86;
}