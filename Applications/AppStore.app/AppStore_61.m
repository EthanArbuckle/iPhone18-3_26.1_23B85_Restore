unint64_t sub_1006DD05C()
{
  result = qword_100992B08;
  if (!qword_100992B08)
  {
    sub_10002D1A8(&qword_100992B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992B08);
  }

  return result;
}

void sub_1006DD0C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PageFacets.Facet.Option() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  type metadata accessor for PageFacets.Facet();
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);

  sub_1006DACEC(a1, v5, v6, v1 + v4);
}

uint64_t sub_1006DD19C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006DD1E4(uint64_t a1)
{
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v40 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v38[-v7];
  v9 = sub_10002849C(&qword_100973860);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v38[-v11];
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v42 = &v38[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v38[-v16];
  __chkstk_darwin(v18);
  v20 = &v38[-v19];
  __chkstk_darwin(v21);
  v23 = &v38[-v22];
  v43 = v1;
  v41 = *&v1[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel];
  dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
  v24 = *(v10 + 56);
  sub_1003DB684(v23, v12);
  v45 = a1;
  sub_1003DB684(a1, &v12[v24]);
  v44 = v4;
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_10002B894(v23, &qword_100972ED0);
    if (v25(&v12[v24], 1, v3) == 1)
    {
      sub_10002B894(v12, &qword_100972ED0);
      return sub_10002B894(v45, &qword_100972ED0);
    }
  }

  else
  {
    sub_1003DB684(v12, v20);
    if (v25(&v12[v24], 1, v3) != 1)
    {
      v36 = v44;
      (*(v44 + 32))(v8, &v12[v24], v3);
      sub_1006DEF18(&qword_100973878, &type metadata accessor for FontUseCase);
      v39 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v36 + 8);
      v37(v8, v3);
      sub_10002B894(v23, &qword_100972ED0);
      v37(v20, v3);
      sub_10002B894(v12, &qword_100972ED0);
      if (v39)
      {
        return sub_10002B894(v45, &qword_100972ED0);
      }

      goto LABEL_7;
    }

    sub_10002B894(v23, &qword_100972ED0);
    (*(v44 + 8))(v20, v3);
  }

  sub_10002B894(v12, &qword_100973860);
LABEL_7:
  v26 = v45;
  sub_1003DB684(v45, v17);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v27 = v43;
  v28 = *&v43[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v29 = [v43 traitCollection];
  v30 = v42;
  sub_1003DB684(v26, v42);
  if (v25(v30, 1, v3) == 1)
  {

    sub_10002B894(v30, &qword_100972ED0);
  }

  else
  {
    v31 = v44;
    v32 = v40;
    (*(v44 + 32))(v40, v30, v3);
    sub_1000367E8();
    v33 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v34 = [objc_opt_self() configurationWithFont:v33];
    [v28 setPreferredSymbolConfiguration:v34];

    (*(v31 + 8))(v32, v3);
  }

  [v27 setNeedsLayout];
  return sub_10002B894(v45, &qword_100972ED0);
}

char *sub_1006DD744(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = &v5[OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics];
  *(v17 + 3) = &type metadata for Double;
  *(v17 + 4) = &protocol witness table for Double;
  *v17 = 0;
  v18 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView] = v18;
  *v16 = UIFontTextStyleBody;
  *(v16 + 2) = 0;
  v19 = enum case for FontUseCase.preferredFont(_:);
  v20 = type metadata accessor for FontUseCase();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v16, v19, v20);
  (*(v21 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v22 = UIFontTextStyleBody;
  *&v5[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView]];
  v29 = *&v27[v28];
  v30 = [v27 tintColor];
  [v29 setTintColor:v30];

  v31 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel;
  [v27 addSubview:*&v27[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel]];
  v32 = *&v27[v31];
  v33 = [v27 tintColor];

  [v32 setTextColor:v33];
  return v27;
}

uint64_t sub_1006DDB98()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "layoutSubviews", v5);
  v8 = *&v1[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v9 = *&v1[OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel];
  v10 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE7DC(&v1[v10], v12);
  sub_1006DDD30(v8, &protocol witness table for UIView, v9, &protocol witness table for UIView, v12, v13);
  sub_1000FE894(v12);
  sub_10002A400(v13, v13[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of Layout.placeChildren(relativeTo:in:)();
  (*(v4 + 8))(v7, v3);
  return sub_100007000(v13);
}

uint64_t sub_1006DDD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v101 = a5;
  v100 = a4;
  v99 = a3;
  v105 = a2;
  v104 = a1;
  v106 = a6;
  v112 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy.Priority();
  v118 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for HorizontalAlignmentLayout.SizingPolicy();
  v119 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for HorizontalAlignmentLayout.HorizontalGravity();
  v8 = *(v109 - 8);
  __chkstk_darwin(v109);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HorizontalAlignmentLayout.ContainerDestinationOffset();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for HorizontalAlignmentLayout.ChildSourceOffset();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for HorizontalAlignmentLayout.VerticalAnchor();
  v117 = *(v114 - 8);
  __chkstk_darwin(v114);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for HorizontalAlignmentLayout.Child();
  v102 = *(v115 - 8);
  v103 = v115 - 8;
  v113 = v102;
  __chkstk_darwin(v115 - 8);
  v98 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v108 = &v77 - v24;
  v83 = *(v16 + 104);
  v84 = v16 + 104;
  v107 = v18;
  (v83)(v18, enum case for HorizontalAlignmentLayout.ChildSourceOffset.minY(_:), v15, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = v14;
  v81 = v14;
  *v14 = v25;
  v27 = *(v12 + 104);
  v96 = v12 + 104;
  v97 = v27;
  v88 = v11;
  v27(v14, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.absolute(_:), v11);
  v28 = v20;
  static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
  v29 = *(v12 + 8);
  v94 = v12 + 8;
  v95 = v29;
  v29(v26, v11);
  v30 = *(v16 + 8);
  v92 = v16 + 8;
  v93 = v30;
  v30(v18, v15);
  v122 = &type metadata for Double;
  v123 = &protocol witness table for Double;
  v121 = 0;
  v91 = enum case for HorizontalAlignmentLayout.HorizontalGravity.leading(_:);
  v31 = v8;
  v32 = *(v8 + 104);
  v89 = v8 + 104;
  v90 = v32;
  v33 = v10;
  v34 = v10;
  v35 = v109;
  v32(v34);
  v87 = enum case for HorizontalAlignmentLayout.SizingPolicy.Priority.default(_:);
  v36 = v118;
  v37 = *(v118 + 104);
  v85 = v118 + 104;
  v86 = v37;
  v39 = v111;
  v38 = v112;
  v37(v111);
  v40 = v110;
  static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
  v41 = *(v36 + 8);
  v118 = v36 + 8;
  v82 = v41;
  v41(v39, v38);
  v42 = v108;
  v78 = v28;
  v79 = v33;
  static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
  v43 = *(v119 + 8);
  v119 += 8;
  v101 = v43;
  v43(v40, v116);
  v44 = *(v31 + 8);
  v99 = v31 + 8;
  v100 = v44;
  v44(v33, v35);
  v45 = *(v117 + 8);
  v117 += 8;
  v80 = v45;
  v45(v28, v114);
  sub_100007000(&v121);
  v122 = &type metadata for CGFloat;
  v123 = &protocol witness table for CGFloat;
  v121 = 0;
  v46 = enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:);
  v47 = v83;
  v83(v107, enum case for HorizontalAlignmentLayout.ChildSourceOffset.midY(_:), v15);
  v48 = sub_10002849C(&qword_100985BB8);
  v49 = swift_allocBox();
  v51 = v50;
  v52 = *(v48 + 48);
  v53 = *(v113 + 16);
  v53(v50, v42, v115);
  v47(v51 + v52, v46, v15);
  v54 = v81;
  *v81 = v49;
  v55 = v88;
  v97(v54, enum case for HorizontalAlignmentLayout.ContainerDestinationOffset.relative(_:), v88);
  v56 = v78;
  v57 = v107;
  static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)();
  v95(v54, v55);
  v93(v57, v15);
  v120[4] = &protocol witness table for Double;
  v120[3] = &type metadata for Double;
  v120[0] = 0;
  v58 = v79;
  v59 = v109;
  v90(v79, v91, v109);
  v61 = v111;
  v60 = v112;
  v86(v111, v87, v112);
  v62 = v110;
  static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)();
  v82(v61, v60);
  v63 = v98;
  static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)();
  v101(v62, v116);
  v100(v58, v59);
  v80(v56, v114);
  sub_100007000(v120);
  sub_100007000(&v121);
  sub_10002849C(&qword_100985BC0);
  v64 = *(v102 + 72);
  v65 = v113;
  v66 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1007B1890;
  v68 = v67 + v66;
  v69 = v63;
  v70 = v63;
  v71 = v115;
  v53(v68, v69, v115);
  v72 = v108;
  v53(v68 + v64, v108, v71);
  v73 = type metadata accessor for HorizontalAlignmentLayout();
  v74 = v106;
  v106[3] = v73;
  v74[4] = sub_1006DEF18(&qword_100985BC8, &type metadata accessor for HorizontalAlignmentLayout);
  v74[5] = sub_1006DEF18(&unk_100985BD0, &type metadata accessor for HorizontalAlignmentLayout);
  sub_1000056E0(v74);
  HorizontalAlignmentLayout.init(children:)();
  v75 = *(v65 + 8);
  v75(v70, v71);
  return (v75)(v72, v71);
}

uint64_t sub_1006DE868(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v34 - v14;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v13);
  v16 = [v2 traitCollection];
  v17 = [v16 preferredContentSizeCategory];

  if (!a1)
  {
    v35 = v8;
    v24 = v6;

LABEL_7:
    v26 = *&v2[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
    dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
    v27 = [v2 traitCollection];
    sub_1003DB684(v15, v11);
    v28 = v24;
    if ((*(v24 + 48))(v11, 1, v5) == 1)
    {

      sub_10002B894(v15, &qword_100972ED0);
      v29 = v11;
    }

    else
    {
      v30 = *(v24 + 32);
      v31 = v35;
      v30(v35, v11, v5);
      sub_1000367E8();
      v32 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v33 = [objc_opt_self() configurationWithFont:v32];
      [v26 setPreferredSymbolConfiguration:v33];

      (*(v28 + 8))(v31, v5);
      v29 = v15;
    }

    return sub_10002B894(v29, &qword_100972ED0);
  }

  v18 = [a1 preferredContentSizeCategory];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
  }

  v35 = v8;
  v24 = v6;
  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

double sub_1006DEC78()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView);
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel);
  v3 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE7DC(v0 + v3, v7);
  sub_1006DDD30(v1, &protocol witness table for UIView, v2, &protocol witness table for UIView, v7, v8);
  sub_1000FE894(v7);
  sub_10002A400(v8, v8[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v5 = v4;
  sub_100007000(v8);
  return v5;
}

uint64_t sub_1006DEF18(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1006DEF60(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if (v10)
  {
    v11 = ArcadeDownloadPackCard.lockups.getter();
    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v12 = v9;
  }

  v13 = [a7 traitCollection];
  sub_1002F4FF4(v12, v13);

  return a1;
}

id sub_1006DF01C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_1009732C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
  if ((v9 & 1) == 0)
  {
    return sub_1002F1C34(v8);
  }

  v10 = ArcadeDownloadPackCard.lockups.getter();
  v11 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_1002F1F30(v10, v7, 1, a3);

  sub_1006DF228(v7);
  return [v3 layoutIfNeeded];
}

uint64_t sub_1006DF1E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006DF228(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009732C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1006DF2A0(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v66 = a4;
  v68 = a2;
  v12 = type metadata accessor for PerformanceTestCase();
  v64 = *(v12 - 8);
  v65 = v12;
  v13 = *(v64 + 64);
  __chkstk_darwin(v12);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v67 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v20 - 8);
  v69 = sub_1006DFB5C(a1, a6, a7);
  if (v69 && (objc_opt_self(), (v21 = swift_dynamicCastObjCClass()) != 0))
  {
    v62 = v21;
    v69 = v69;
    v22 = PerformanceTestCase.popToRoot.getter();
    v59 = a5;
    v60 = a3;
    v61 = v18;
    if (v22)
    {

      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for OSLogger();
      v58 = sub_1000056A8(v23, qword_1009CE278);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v24._countAndFlagsBits = 0x2074736554;
      v24._object = 0xE500000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v24);
      v25 = PerformanceTestCase.name.getter();
      v72 = &type metadata for String;
      v70 = v25;
      v71 = v26;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0);
      v27._countAndFlagsBits = 0x7420706F70202D20;
      v27._object = 0xEE00746F6F72206FLL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v27);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v18 = v61;
    }

    PerformanceTestCase.pushToURL.getter();
    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {
      v28 = v69;

      sub_10002B894(v16, &qword_100982460);
      v29 = [v62 visibleViewController];
      v68();
    }

    else
    {
      v31 = v67;
      (*(v18 + 32))(v67, v16, v17);
      v58 = sub_1006E0C1C(v31, v62, a7);
      if (qword_10096D140 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for OSLogger();
      v55 = sub_1000056A8(v56, qword_1009CE278);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v32._countAndFlagsBits = 0x2074736554;
      v32._object = 0xE500000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v32);
      v33 = PerformanceTestCase.name.getter();
      v72 = &type metadata for String;
      v70 = v33;
      v71 = v34;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0);
      v35._object = 0x80000001008215A0;
      v35._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v35);
      v72 = v17;
      v36 = sub_1000056E0(&v70);
      (*(v61 + 16))(v36, v31, v17);
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0);
      v37._object = 0x80000001008215C0;
      v37._countAndFlagsBits = 0xD000000000000010;
      LogMessage.StringInterpolation.appendLiteral(_:)(v37);
      v72 = sub_100005744(0, &qword_100975960);
      v57 = v17;
      v38 = v62;
      v70 = v62;
      v69 = v69;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10002B894(&v70, &unk_1009711D0);
      v39._countAndFlagsBits = 0;
      v39._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v39);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();

      v40 = v63;
      v41 = v64;
      v42 = v65;
      (*(v64 + 16))(v63, a1, v65);
      v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
      v44 = v31;
      v45 = (v13 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      (*(v41 + 32))(v46 + v43, v40, v42);
      *(v46 + v45) = v38;
      v47 = (v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8));
      v48 = v60;
      *v47 = v68;
      v47[1] = v48;
      v49 = swift_allocObject();
      v50 = v59;
      *(v49 + 16) = v66;
      *(v49 + 24) = v50;
      v51 = swift_allocObject();
      v52 = v58;
      *(v51 + 16) = v38;
      *(v51 + 24) = v52;
      v53 = v69;

      v54 = v52;
      sub_10021CE9C(sub_1006E1714, v46, sub_1006E17B0, v49, sub_1006E17D8, v51);

      (*(v61 + 8))(v44, v57);
    }
  }

  else
  {
    (v68)(v69);
    v30 = v69;
  }
}

void *sub_1006DFB5C(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = a3;
  v5 = sub_10002849C(&unk_100982A90);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v54 = v50 - v6;
  v7 = sub_10002849C(&unk_100974490);
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v51 = v50 - v8;
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v50[1] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationTab();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v64 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for OSLogger();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a2;
  v19 = [a2 viewControllers];
  if (v19)
  {
    v20 = v19;
    sub_100005744(0, &qword_1009711C0);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  __chkstk_darwin(v19);
  v50[-2] = a1;
  v59 = sub_1004F6538(sub_1006E17E0, &v50[-4], v21);

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v14, qword_1009CE278);
  v62 = v18;
  v63 = v15;
  (*(v15 + 16))(v18, v22, v14);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x2074736554;
  v23._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v23);
  v24 = PerformanceTestCase.name.getter();
  v68 = &type metadata for String;
  v65 = v24;
  v66 = v25;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v65, &unk_1009711D0);
  v26._object = 0x80000001008216B0;
  v26._countAndFlagsBits = 0xD000000000000011;
  LogMessage.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v64;
  v50[2] = a1;
  PerformanceTestCase.tab.getter();
  v28 = NavigationTab.rawValue.getter();
  v30 = v29;
  (*(v60 + 8))(v27, v61);
  v68 = &type metadata for String;
  v65 = v28;
  v66 = v30;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v65, &unk_1009711D0);
  v31._countAndFlagsBits = 0xD000000000000012;
  v31._object = 0x80000001008216D0;
  LogMessage.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v59;
  if (v59)
  {
    v33 = sub_100005744(0, &qword_1009711C0);
    v34 = v32;
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v66 = 0;
    v67 = 0;
  }

  v65 = v34;
  v68 = v33;
  v35 = v34;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v65, &unk_1009711D0);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  LogMessage.init(stringInterpolation:)();
  v37 = v62;
  Logger.info(_:)();

  (*(v63 + 8))(v37, v14);
  if (v32)
  {
    objc_opt_self();
    v38 = swift_dynamicCastObjCClass();
    if (v38)
    {
      v39 = [v38 topViewController];
      if (v39)
      {
        v40 = v39;
        type metadata accessor for TabPlaceholderViewController();
        v41 = swift_dynamicCastClass();

        if (v41)
        {
          PerformanceTestCase.tab.getter();
          static ActionMetrics.notInstrumented.getter();
          v42 = type metadata accessor for TabChangeAction();
          swift_allocObject();
          v43 = TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)();
          v44 = v51;
          v45 = v53;
          BaseObjectGraph.inject<A>(_:)();
          v68 = v42;
          v69 = sub_1006E1800(&qword_10098DBF8, &type metadata accessor for TabChangeAction);
          v65 = v43;
          v47 = v56;
          v46 = v57;
          v48 = v54;
          (*(v56 + 104))(v54, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v57);

          ActionDispatcher.perform(_:withMetrics:asPartOf:)();

          (*(v47 + 8))(v48, v46);
          (*(v52 + 8))(v44, v45);
          sub_100007000(&v65);
        }
      }
    }

    [v58 setSelectedViewController:v35];
  }

  return v32;
}

id sub_1006E0360(id *a1)
{
  v2 = type metadata accessor for NavigationTab();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_10098DC00);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_10002849C(&qword_100975528);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v26 - v15;
  result = [*a1 tabBarItem];
  if (result)
  {
    v18 = result;
    [result tag];
    NavigationTab.init(intValue:)();

    PerformanceTestCase.tab.getter();
    (*(v3 + 56))(v12, 0, 1, v2);
    v19 = *(v5 + 48);
    sub_100127D74(v16, v7);
    sub_100127D74(v12, &v7[v19]);
    v20 = *(v3 + 48);
    if (v20(v7, 1, v2) == 1)
    {
      sub_10002B894(v12, &qword_100975528);
      sub_10002B894(v16, &qword_100975528);
      if (v20(&v7[v19], 1, v2) == 1)
      {
        sub_10002B894(v7, &qword_100975528);
        v21 = 1;
        return (v21 & 1);
      }
    }

    else
    {
      v22 = v27;
      sub_100127D74(v7, v27);
      if (v20(&v7[v19], 1, v2) != 1)
      {
        v23 = &v7[v19];
        v24 = v26;
        (*(v3 + 32))(v26, v23, v2);
        sub_1006E1800(&unk_10098DC10, &type metadata accessor for NavigationTab);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *(v3 + 8);
        v25(v24, v2);
        sub_10002B894(v12, &qword_100975528);
        sub_10002B894(v16, &qword_100975528);
        v25(v27, v2);
        sub_10002B894(v7, &qword_100975528);
        return (v21 & 1);
      }

      sub_10002B894(v12, &qword_100975528);
      sub_10002B894(v16, &qword_100975528);
      (*(v3 + 8))(v22, v2);
    }

    sub_10002B894(v7, &qword_10098DC00);
    v21 = 0;
    return (v21 & 1);
  }

  __break(1u);
  return result;
}

void sub_1006E07B8(uint64_t a1, void *a2, void (*a3)(void))
{
  v24 = a3;
  v4 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for OSLogger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v5, qword_1009CE278);
  (*(v6 + 16))(v8, v9, v5);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x2074736554;
  v10._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v11 = PerformanceTestCase.name.getter();
  v28 = &type metadata for String;
  v25 = v11;
  v26 = v12;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v25, &unk_1009711D0);
  v13._object = 0x80000001008215E0;
  v13._countAndFlagsBits = 0xD000000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v13);
  v14 = [a2 visibleViewController];
  v15 = v14;
  if (v14)
  {
    v14 = sub_100005744(0, &qword_1009711C0);
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v25 = v15;
  v28 = v14;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v25, &unk_1009711D0);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v16);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  (*(v6 + 8))(v8, v5);
  v17 = [a2 visibleViewController];
  v24();

  v18 = [a2 visibleViewController];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for ArticleContainerViewController();
    v20 = swift_dynamicCastClass();

    if (v20)
    {
      v21 = [a2 visibleViewController];
      if (v21)
      {
        v22 = v21;
        [v21 dismissViewControllerAnimated:0 completion:0];
      }
    }
  }
}

uint64_t sub_1006E0B8C(void *a1, void *a2)
{
  v3 = [a1 visibleViewController];
  if (v3)
  {
    v4 = v3;
    sub_100005744(0, &qword_1009711C0);
    v5 = a2;
    v6 = static NSObject.== infix(_:_:)();

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1006E0C1C(uint64_t a1, void *a2, uint64_t a3)
{
  v71 = a3;
  v72 = a2;
  v64 = a1;
  v58 = type metadata accessor for LogMessage.StringInterpolation();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v54 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v51 - v5;
  v56 = type metadata accessor for OSLogger();
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_10002849C(&unk_100982A90);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v51 - v7;
  v66 = sub_10002849C(&unk_100974490);
  v69 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v51 - v8;
  v63 = type metadata accessor for FlowOrigin();
  v9 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FlowPresentationContext();
  v11 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for FlowAnimationBehavior();
  v13 = *(v59 - 8);
  __chkstk_darwin(v59);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v51 - v18;
  v20 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v20 - 8);
  v22 = &v51 - v21;
  v23 = type metadata accessor for FlowPage();
  __chkstk_darwin(v23);
  v77 = 0;
  v75 = 0u;
  v76 = 0u;
  (*(v25 + 104))(&v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.unknown(_:));
  v26 = type metadata accessor for URL();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v22, v64, v26);
  (*(v27 + 56))(v22, 0, 1, v26);
  v28 = type metadata accessor for ReferrerData();
  (*(*(v28 - 8) + 56))(v19, 1, 1, v28);
  v73 = 0u;
  v74 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v13 + 104))(v15, enum case for FlowAnimationBehavior.never(_:), v59);
  (*(v11 + 104))(v60, enum case for FlowPresentationContext.infer(_:), v61);
  (*(v9 + 104))(v62, enum case for FlowOrigin.inapp(_:), v63);
  static FlowActionPresentation.stackPush.getter();
  v29 = type metadata accessor for FlowAction();
  swift_allocObject();
  v30 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v32 = v65;
  v31 = v66;
  BaseObjectGraph.inject<A>(_:)();
  *(&v76 + 1) = v29;
  v77 = sub_1006E1800(&qword_100986BA0, &type metadata accessor for FlowAction);
  *&v75 = v30;
  v34 = v67;
  v33 = v68;
  v35 = v70;
  (*(v68 + 104))(v67, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v70);

  ActionDispatcher.perform(_:withMetrics:asPartOf:)();

  (*(v33 + 8))(v34, v35);
  (*(v69 + 8))(v32, v31);
  sub_100007000(&v75);
  v36 = v72;
  v37 = [v72 visibleViewController];
  if (v37)
  {
    v38 = v37;
    type metadata accessor for LoadingPageViewController();
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      v40 = v39;

      return v40;
    }
  }

  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v42 = v56;
  v43 = sub_1000056A8(v56, qword_1009CE278);
  (*(v55 + 16))(v52, v43, v42);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v44._countAndFlagsBits = 0xD000000000000036;
  v44._object = 0x8000000100821610;
  LogMessage.StringInterpolation.appendLiteral(_:)(v44);
  v45 = [v36 visibleViewController];
  v46 = v45;
  if (v45)
  {
    v45 = sub_100005744(0, &qword_1009711C0);
  }

  else
  {
    *(&v75 + 1) = 0;
    *&v76 = 0;
  }

  *&v75 = v46;
  *(&v76 + 1) = v45;
  v47 = v53;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v75, &unk_1009711D0);
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v48);
  (*(v57 + 16))(v54, v47, v58);
  LogMessage.init(stringInterpolation:)();
  v49 = v56;
  v50 = v52;
  Logger.error(_:)();

  (*(v55 + 8))(v50, v49);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1006E1714()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1006E07B8(v0 + v2, v4, v5);
}

uint64_t sub_1006E1800(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006E1848(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        LOBYTE(v4) = sub_1005F2EF8(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_1005F2EF8(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_1006E1A84(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E1C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a1 < 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1006E1EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1006E1FA0(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v7 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v21 = a3;
    result = _CocoaArrayWrapper.endIndex.getter();
    a3 = v21;
    if (v8 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v18 = 0;
    return v18 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v8)
  {
    goto LABEL_28;
  }

  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  v11 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a1 < 0)
  {
    v10 = a1;
  }

  if (v7)
  {
    v11 = v10;
  }

  v12 = a2 & 0xFFFFFFFFFFFFFF8;
  v13 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if (a2 < 0)
  {
    v12 = a2;
  }

  if (a2 >> 62)
  {
    v13 = v12;
  }

  if (v11 == v13)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    a3(0);
    v14 = a2 & 0xC000000000000001;
    v15 = 4;
    v7 = v8;
    while (1)
    {
      v16 = v15 - 4;
      v17 = v15 - 3;
      if (__OFADD__(v15 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v19 = a3;
        v20 = _CocoaArrayWrapper.endIndex.getter();
        a3 = v19;
        v8 = v20;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v14)
        {
LABEL_20:
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_25;
        }
      }

      if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_1006E3544(a4, a5);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v18)
      {
        ++v15;
        if (v17 != v7)
        {
          continue;
        }
      }

      return v18 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E21AC(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_100028BB8();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1006E23EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdamId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1006E3544(&qword_100972728, &type metadata accessor for AdamId);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E2600()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ItemLayoutContext.index.getter();
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v5 = sub_1006E2728(v3);
  v6 = sub_1006E2DD4(v5);

  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v4 % v8;
    if ((v9 & 0x8000000000000000) == 0)
    {
      v10 = *(v6 + v9 + 32);

      (*(v1 + 8))(v3, v0);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E2728(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36[-1] - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  if ((v36[0] & 1) == 0)
  {
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.columnCount.getter();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 <= 1.0)
    {
      return sub_1005E9D74(a1);
    }

    sub_1006E3174(v36);
    v15 = v36[0];
    v16 = v36[1];
    v17 = *&v36[2];
    if (v37)
    {
      v18 = 0;
    }

    else
    {
      v21 = v36[3];
      v20 = v36[4];
      v22 = *&v36[5];
      swift_beginAccess();
      v23 = *(v1 + 16);
      if (*(v23 + 16) && (v24 = sub_1003D750C(v21, v20, v22), (v25 & 1) != 0))
      {
        v18 = *(*(v23 + 56) + 8 * v24);
      }

      else
      {
        v18 = 0;
      }

      swift_endAccess();
    }

    swift_beginAccess();
    v26 = *(v2 + 16);
    if (*(v26 + 16) && (v27 = sub_1003D750C(v15, v16, v17), (v28 & 1) != 0))
    {
      v19 = *(*(v26 + 56) + 8 * v27);
      swift_endAccess();

      if (!v18)
      {
LABEL_16:

        goto LABEL_23;
      }
    }

    else
    {
      swift_endAccess();
      v19 = sub_1005E9D74(a1);
      if (!v18)
      {
        goto LABEL_16;
      }
    }

    v29 = *(v18 + 16);
    if (v29)
    {
      v30 = *(v18 + 8 * v29 + 24);

      if (*(v19 + 16))
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_23:
    v30 = 0;
    if (*(v19 + 16))
    {
LABEL_24:
      v31 = *(v19 + 32);

      if (v30)
      {
        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = sub_1006E1EBC(v30, v31);

        if ((v32 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v31)
      {
LABEL_31:

LABEL_32:
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *(v2 + 16);
        *(v2 + 16) = 0x8000000000000000;
        sub_1000514BC(v19, v15, v16, isUniquelyReferenced_nonNull_native, v17);
        *(v2 + 16) = v35;
        swift_endAccess();
        return v19;
      }

LABEL_30:
      v19 = sub_1005E7908(v19);
      goto LABEL_31;
    }

LABEL_20:

    if (v30)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return sub_1005E9F84(a1);
}

Swift::Int sub_1006E2B3C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

void sub_1006E2BBC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
}

Swift::Int sub_1006E2C18()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  Hasher._combine(_:)(*&v4);
  return Hasher._finalize()();
}

uint64_t sub_1006E2CC4()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TodayCardGridTracker.TrackedSectionKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_1006E2D80()
{
  result = qword_100992C38;
  if (!qword_100992C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992C38);
  }

  return result;
}

uint64_t sub_1006E2DD4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = result + 32;
  v5 = _swiftEmptyArrayStorage;
  v6 = &_swiftEmptyArrayStorage[4];
LABEL_3:
  v8 = *(v1 + 16);
  if (v3 != v8)
  {
    if (v3 >= v8)
    {
LABEL_29:
      __break(1u);
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 8 * v3);

        if (v9)
        {
          v7 = *(v9 + 16);
          if (v7)
          {
            break;
          }
        }

        ++v3;
        v10 = *(v1 + 16);
        if (v3 == v10)
        {
          goto LABEL_25;
        }

        if (v3 >= v10)
        {
          goto LABEL_29;
        }
      }

      v11 = 0;
      ++v3;
      while (v11 < v7)
      {
        v12 = *(v9 + v11 + 32);
        if (!v2)
        {
          v13 = *(v5 + 3);
          if (((v13 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_32;
          }

          v26 = *(v9 + v11 + 32);
          v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
          if (v14 <= 1)
          {
            v15 = 1;
          }

          else
          {
            v15 = v14;
          }

          sub_10002849C(&qword_10096FC68);
          v16 = swift_allocObject();
          v17 = 2 * j__malloc_size_2(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = (v16 + 4);
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = (v5 + 4);
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 4, v20, v19);
              v17 = v21;
            }

            v5[2] = 0.0;
          }

          v6 = &v18[v19];
          v2 = (v17 >> 1) - v19;

          v5 = v16;
          v12 = v26;
        }

        v22 = __OFSUB__(v2--, 1);
        if (v22)
        {
          goto LABEL_31;
        }

        ++v11;
        *v6 = v12;
        v6 = (v6 + 1);
        v7 = *(v9 + 16);
        if (v11 == v7)
        {
          goto LABEL_3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_25:

  v23 = *(v5 + 3);
  if (v23 < 2)
  {
    return v5;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v2);
  v25 = v24 - v2;
  if (!v22)
  {
    *(v5 + 2) = v25;
    return v5;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1006E2FBC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = result + 32;
    v6 = &_swiftEmptyArrayStorage[4];
    while (1)
    {
      *&v21[0] = v3;
      result = sub_1000073E8(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = *(v2 + 3);
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10002849C(&unk_100992C40);
        v10 = swift_allocObject();
        v11 = (j__malloc_size_2(v10) - 32) / 40;
        *(v10 + 2) = v9;
        *(v10 + 3) = 2 * v11;
        v12 = (v10 + 4);
        v13 = *(v2 + 3) >> 1;
        if (*(v2 + 2))
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0.0;
        }

        v6 = (v12 + 40 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v23;
      v17 = v24;
      *(v6 + 4) = v25;
      *v6 = v16;
      *(v6 + 1) = v17;
      v6 += 5;
      v5 += 32;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = *(v2 + 3);
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    *(v2 + 2) = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1006E3174@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v1 - 8);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v29 - v4;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = ShelfLayoutContext.index.getter();
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v30 = *(v10 + 8);
  v30(v14, v9);
  v32 = *(v38 + 16);

  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v16 = v15;
  v17 = *(v6 + 8);
  v31 = v5;
  v29 = v17;
  v17(v8, v5);
  v18 = v36;
  v19 = v37;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10013DAA8(v19);
  v20 = (*(v10 + 48))(v18, 1, v9);
  if (v20 == 1)
  {
    result = sub_10013DAA8(v18);
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_5:
    v27 = v35;
    v28 = v32;
    *v35 = v34;
    v27[1] = v28;
    v27[2] = v16;
    v27[3] = v22;
    v27[4] = v23;
    v27[5] = v24;
    *(v27 + 48) = v20 == 1;
    return result;
  }

  (*(v10 + 32))(v33, v18, v9);
  result = ShelfLayoutContext.index.getter();
  v22 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    swift_getKeyPath();
    v25 = v33;
    ReadOnlyLens.subscript.getter();

    v23 = *(v38 + 16);

    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.containerWidth.getter();
    v24 = v26;
    v29(v8, v31);
    result = (v30)(v25, v9);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006E3544(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006E358C(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC8AppStore29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC8AppStore29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  *v9 = sub_1006E42C4;
  v9[1] = v8;

  sub_10001F63C(v10);

  v11 = [objc_allocWithZone(_UINavigationBarPalette) initWithContentView:v7];
  [v11 _setDisplaysWhenSearchActive:a3 & 1];
  [v11 _setContentViewMarginType:a2];
  [v11 setClipsToBounds:0];
  *(v3 + 65) = 0;
  [v11 setPreferredHeight:1.0];
  [v11 setMinimumHeight:0.0];
  [v11 setPreferredHeight:0.0];
  v12 = v11;
  [a1 _setBottomPalette:v12];

  swift_unknownObjectWeakAssign();
}

void sub_1006E3738(void *a1)
{
  if (*(v1 + 24))
  {
    if ((*(v1 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 32);
        if (!v5)
        {

          if (!*(v1 + 32))
          {
            return;
          }

          goto LABEL_9;
        }

        v22 = *(v1 + 64);
        v6 = *(v1 + 48);

        sub_10000827C(v6);
        v7 = [v4 contentView];
        sub_100028004();
        LayoutMarginsAware<>.layoutFrame.getter();
        v9 = v8;
        v11 = v10;
        v13 = v12;
        v15 = v14;

        v24.origin.x = v9;
        v24.origin.y = v11;
        v24.size.width = v13;
        v24.size.height = v15;
        Width = CGRectGetWidth(v24);
        v17 = [v4 contentView];
        v18 = v5(Width);

        [v4 setPreferredHeight:v18];
        v19 = 0.0;
        if ((v22 & 1) == 0)
        {
          v19 = v18;
        }

        [v4 setMinimumHeight:v19];

        sub_10001F63C(v6);
        *(v1 + 65) = 1;
      }
    }
  }

  if (!*(v1 + 32))
  {
    return;
  }

LABEL_9:
  v20 = *(v1 + 48);
  v21 = *(v1 + 64);

  sub_10000827C(v20);
  if (v21)
  {
    [a1 _scrollToTopIfPossible:1];
  }

  sub_10001F63C(v20);
}

void sub_1006E3954()
{
  if (*(v0 + 24))
  {
    if ((*(v0 + 65) & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = *(v0 + 32);
        if (v2)
        {
          v3 = *(v0 + 64);
          v4 = *(v0 + 48);
          v18 = Strong;

          sub_10000827C(v4);
          v5 = [v18 contentView];
          sub_100028004();
          LayoutMarginsAware<>.layoutFrame.getter();
          v7 = v6;
          v9 = v8;
          v11 = v10;
          v13 = v12;

          v20.origin.x = v7;
          v20.origin.y = v9;
          v20.size.width = v11;
          v20.size.height = v13;
          Width = CGRectGetWidth(v20);
          v15 = [v18 contentView];
          v16 = v2(Width);

          [v18 setPreferredHeight:v16];
          v17 = 0.0;
          if ((v3 & 1) == 0)
          {
            v17 = v16;
          }

          [v18 setMinimumHeight:v17];

          sub_10001F63C(v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

void sub_1006E3B08()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 32);
        if (v3)
        {
          v4 = *(v0 + 48);
          v5 = *(v0 + 64);
          v19 = Strong;

          sub_10000827C(v4);
          v6 = [v19 contentView];
          sub_100028004();
          LayoutMarginsAware<>.layoutFrame.getter();
          v8 = v7;
          v10 = v9;
          v12 = v11;
          v14 = v13;

          v21.origin.x = v8;
          v21.origin.y = v10;
          v21.size.width = v12;
          v21.size.height = v14;
          Width = CGRectGetWidth(v21);
          v16 = [v19 contentView];
          v17 = v3(Width);

          [v19 preferredHeight];
          if (v18 != v17)
          {
            [v19 setPreferredHeight:v17];
            [v19 setMinimumHeight:v17];
            if (v5)
            {
              [v19 setMinimumHeight:0.0];
            }

            sub_1006E3D2C();
          }

          Strong = sub_10001F63C(v4);
          v2 = v19;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

uint64_t sub_1006E3CD4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1006E3D2C();
  }

  return result;
}

void sub_1006E3D2C()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return;
  }

  if (*(v0 + 65) != 1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = *(v0 + 32);
  if (!v3)
  {
    goto LABEL_15;
  }

  v25 = Strong;
  v4 = *(v0 + 48);
  if (!v4)
  {
    sub_1006E42CC(v3, *(v0 + 40), 0);
    v23 = v1;
    [v23 setAlpha:1.0];

    Strong = v25;
LABEL_15:

    return;
  }

  sub_1006E42CC(v3, *(v0 + 40), *(v0 + 48));
  sub_10000827C(v4);
  v5 = [v25 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  Width = CGRectGetWidth(v27);
  v15 = [v25 contentView];
  v16 = v3(Width);

  v17 = [v25 contentView];
  v18 = v4(Width);

  [v25 frame];
  Height = CGRectGetHeight(v28);
  v20 = *(v0 + 24);
  if (v20)
  {
    v21 = (Height - v18) / (v16 - v18);
    if (v21 <= 0.0)
    {
      v21 = 0.0;
    }

    if (v21 <= 1.0)
    {
      v22 = v21;
    }

    else
    {
      v22 = 1.0;
    }

    v24 = v20;
    [v24 setAlpha:v22];

    sub_10001F63C(v4);

    sub_10001F63C(v4);
    Strong = v24;
    goto LABEL_15;
  }

  sub_10001F63C(v4);

  sub_10001F63C(v4);
}

uint64_t sub_1006E3FE0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 32);
    if (v3)
    {
      v4 = *(v0 + 48);
      v17 = v2;
      if (*(v0 + 64))
      {
        v5 = *(v0 + 24);
        if (v5)
        {

          sub_10000827C(v4);
          v6 = [v5 isHidden];
          Height = 0.0;
          if ((v6 & 1) == 0)
          {
            v8 = [v17 contentView];
            [v8 frame];
            v10 = v9;
            v12 = v11;
            v14 = v13;
            v16 = v15;

            v19.origin.x = v10;
            v19.origin.y = v12;
            v19.size.width = v14;
            v19.size.height = v16;
            Height = CGRectGetHeight(v19);
          }
        }

        else
        {

          sub_10000827C(v4);
          Height = 0.0;
        }

        [v17 setMinimumHeight:Height];
        [v17 minimumHeight];
        [v17 setPreferredHeight:?];
      }

      else
      {
        sub_1006E42CC(v3, *(v0 + 40), v4);
      }

      return sub_10001F63C(v4);
    }

    else
    {

      return _objc_release_x1(0, v2);
    }
  }

  return result;
}

uint64_t sub_1006E419C()
{
  swift_unknownObjectWeakDestroy();

  sub_10040392C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1006E4210(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1006E4228(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1006E4270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1006E42CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_10000827C(a3);
  }

  return result;
}

uint64_t sub_1006E432C()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataRibbonTextStyle();
  sub_100005644(v4, qword_1009D3710);
  sub_1000056A8(v4, qword_1009D3710);
  if (qword_10096E000 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D0F80);
  (*(v1 + 16))(v3, v5, v0);
  static MetadataRibbonTextStyle.useCase(_:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1006E44AC(uint64_t a1, uint64_t *a2, NSString **a3)
{
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for MetadataRibbonTextStyle();
  sub_100005644(v9, a2);
  sub_1000056A8(v9, a2);
  v10 = *a3;
  *v8 = UIFontTextStyleCaption1;
  v8[1] = v10;
  (*(v6 + 104))(v8, enum case for FontUseCase.preferredFontDerivative(_:), v5);
  v11 = UIFontTextStyleCaption1;
  static MetadataRibbonTextStyle.useCase(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1006E45E8()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataRibbonTextStyle();
  sub_100005644(v4, qword_1009D3758);
  sub_1000056A8(v4, qword_1009D3758);
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x80000001008217A0;
  *(v3 + 2) = sub_1006E4748;
  *(v3 + 3) = 0;
  *(v3 + 4) = UIFontWeightRegular;
  (*(v1 + 104))(v3, enum case for FontUseCase.systemFont(_:), v0);
  static MetadataRibbonTextStyle.useCase(_:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_1006E474C()
{
  v0 = UIContentSizeCategoryExtraSmall;
  v1 = UIContentSizeCategoryLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (static UIContentSizeCategory.<= infix(_:_:)())
  {
    v2 = static UIContentSizeCategory.< infix(_:_:)();

    if (v2)
    {
      return;
    }
  }

  else
  {
  }

  v3 = v1;
  v4 = UIContentSizeCategoryAccessibilityMedium;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (static UIContentSizeCategory.<= infix(_:_:)())
  {
    static UIContentSizeCategory.< infix(_:_:)();
  }
}

uint64_t AppEventFormattedDatePresenter.__allocating_init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_1006E6CE8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

Swift::Void __swiftcall AppEventFormattedDatePresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1006E4910(uint64_t a1)
{
  v3 = type metadata accessor for Calendar();
  v134 = *(v3 - 8);
  object = v3;
  __chkstk_darwin(v3);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v136 = &v102 - v10;
  __chkstk_darwin(v11);
  v137 = &v102 - v12;
  v13 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v13 - 8);
  v132 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v139 = type metadata accessor for Date();
  v21 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v133 = &v102 - v24;
  __chkstk_darwin(v25);
  v27 = &v102 - v26;
  __chkstk_darwin(v28);
  v138 = &v102 - v29;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v127 = v7;
    v31 = *(v1 + 32);
    if (!a1)
    {
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(0, 0xE000000000000000, 0, ObjectType, v31);
      return swift_unknownObjectRelease();
    }

    v126 = v6;
    v129 = v31;

    v32 = AppEventFormattedDate.displayText.getter();
    v128 = a1;
    if (v33)
    {
      v34 = v32;
      v35 = v33;
LABEL_14:
      v67 = swift_getObjectType();
      v68 = AppEventFormattedDate.showLiveIndicator.getter();
      (*(v129 + 32))(v34, v35, v68 & 1, v67);

      swift_unknownObjectRelease();
    }

    AppEventFormattedDate.countdownToDate.getter();
    v37 = v21;
    v40 = *(v21 + 48);
    v38 = v21 + 48;
    v39 = v40;
    v41 = v139;
    if (v40(v20, 1, v139) != 1)
    {
      v122 = v39;
      v123 = v38;
      v43 = v138;
      v44 = v20;
      v45 = *(v37 + 32);
      v45(v138, v44, v41);
      v46 = AppEventFormattedDate.countdownStringKey.getter();
      if (!v47)
      {
        (*(v37 + 8))(v43, v41);
        goto LABEL_13;
      }

      v105 = v45;
      v106 = v37 + 32;
      v103 = v46;
      v116 = v47;
      static Calendar.current.getter();
      v120 = sub_10002849C(&qword_10098C3C0);
      v48 = type metadata accessor for Calendar.Component();
      v49 = *(v48 - 8);
      v50 = *(v49 + 72);
      v118 = *(v49 + 80);
      v51 = (v118 + 32) & ~v118;
      v121 = v51;
      v124 = 4 * v50;
      v114 = 5 * v50;
      v52 = swift_allocObject();
      v113 = xmmword_1007B5360;
      v115 = v52;
      *(v52 + 1) = xmmword_1007B5360;
      v125 = v37;
      v53 = v52 + v51;
      v112 = enum case for Calendar.Component.year(_:);
      v104 = v49;
      v54 = *(v49 + 104);
      v54(v52 + v51);
      v111 = enum case for Calendar.Component.month(_:);
      v55 = v50;
      v54(&v53[v50]);
      v50 *= 2;
      v119 = v55;
      v110 = enum case for Calendar.Component.day(_:);
      v107 = v50;
      v54(&v53[v50]);
      v109 = v50 + v55;
      v108 = enum case for Calendar.Component.hour(_:);
      v54(&v53[v50 + v55]);
      v117 = enum case for Calendar.Component.minute(_:);
      v54(&v53[v124]);
      sub_100082EBC(v115);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Date.init()();
      Calendar.dateComponents(_:from:)();

      v56 = *(v125 + 8);
      v125 += 8;
      v115 = v56;
      v56(v27, v139);
      v57 = *(v134 + 1);
      v57(v5, object);
      static Calendar.current.getter();
      v58 = v121;
      v59 = swift_allocObject();
      *(v59 + 16) = v113;
      v60 = v59 + v58;
      (v54)(v60, v112, v48);
      (v54)(v60 + v119, v111, v48);
      (v54)(v60 + v107, v110, v48);
      (v54)(v60 + v109, v108, v48);
      v114 = v49 + 104;
      *&v113 = v54;
      (v54)(v60 + v124, v117, v48);
      sub_100082EBC(v59);
      swift_setDeallocating();
      v124 = v48;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      Calendar.dateComponents(_:from:)();
      v61 = v137;
      v62 = object;
      v63 = v139;

      v57(v5, v62);
      static Calendar.current.getter();
      Calendar.date(from:)();
      v134 = v57;
      v57(v5, v62);
      v64 = v122;
      if (v122(v17, 1, v63) == 1)
      {

        v65 = v126;
        v66 = *(v127 + 8);
        v66(v136, v126);
        v66(v61, v65);
        v115(v138, v63);
        v42 = v17;
        goto LABEL_11;
      }

      v69 = v17;
      v70 = v105;
      v105(v133, v69, v63);
      static Calendar.current.getter();
      v71 = v132;
      Calendar.date(from:)();
      v72 = v71;
      v134(v5, v62);
      v73 = v64(v71, 1, v63);
      v74 = v63;
      v75 = v127;
      if (v73 != 1)
      {
        v79 = v130;
        v70(v130, v72, v63);
        static Calendar.current.getter();
        v80 = v121;
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1007B10D0;
        v82 = v124;
        (v113)(v81 + v80, v117, v124);
        sub_100082EBC(v81);
        swift_setDeallocating();
        v83 = v82;
        v84 = v79;
        (*(v104 + 8))(v81 + v80, v83);
        swift_deallocClassInstance();
        v85 = v131;
        v86 = v133;
        Calendar.dateComponents(_:from:to:)();

        v134(v5, v62);
        v87 = DateComponents.minute.getter();
        v89 = v88;
        v90 = *(v75 + 8);
        v91 = v126;
        v90(v85, v126);
        if ((v89 & 1) == 0)
        {
          v95._countAndFlagsBits = v103;
          v95._object = v116;
          v96._countAndFlagsBits = 0;
          v96._object = 0xE000000000000000;
          v97 = localizedStringWithCount(_:count:comment:)(v95, v87, v96);
          object = v97._object;

          v140 = v97;
          sub_10007FED4();
          v34 = StringProtocol.localizedUppercase.getter();
          v35 = v98;
          v99 = v84;
          v100 = v139;
          v101 = v115;
          v115(v99, v139);
          v101(v86, v100);
          v90(v136, v91);
          v90(v137, v91);
          v101(v138, v100);

          goto LABEL_14;
        }

        v92 = v84;
        v93 = v139;
        v94 = v115;
        v115(v92, v139);
        v94(v86, v93);
        v90(v136, v91);
        v90(v137, v91);
        v94(v138, v93);
        goto LABEL_13;
      }

      v76 = v115;
      v115(v133, v63);
      v20 = v72;
      v77 = *(v75 + 8);
      v78 = v126;
      v77(v136, v126);
      v77(v137, v78);
      v76(v138, v74);
    }

    v42 = v20;
LABEL_11:
    sub_10002B894(v42, &qword_100979710);
LABEL_13:
    v34 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_14;
  }

  return result;
}

uint64_t AppEventFormattedDatePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    v6 = *(v2 + v4);
  }

  sub_1006E4910(v6);
  swift_unknownObjectRelease();
}

void (*AppEventFormattedDatePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1006E57F0;
}

void sub_1006E57F0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
    swift_beginAccess();
    v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
    v7 = 0;
    if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
    {
      v7 = *(v4 + v5);
    }

    sub_1006E4910(v7);
  }

  free(v3);
}

uint64_t AppEventFormattedDatePresenter.init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1006E6CE8(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1006E592C()
{
  v1 = sub_10002849C(&qword_100992D18);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  sub_1006E5BEC((&v8 - v2));
  v4 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  sub_1006E7080(v3, v0 + v4);
  swift_endAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v0 + v4, 1, v5))
  {
    v6 = *(v0 + v4);
  }

  sub_1006E4910(v6);

  sub_100031660(v0 + v4, v3, &qword_100992D18);
  sub_1006E60C8(v3);
  return sub_10002B894(v3, &qword_100992D18);
}

uint64_t AppEventFormattedDatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10001F64C(v0 + 24);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate, &qword_100992D18);

  return v0;
}

uint64_t AppEventFormattedDatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_10001F64C(v0 + 24);
  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate, &qword_100992D18);

  return swift_deallocClassInstance();
}

uint64_t sub_1006E5BEC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for Date();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v34 - v13;
  v14 = *(v1 + 16);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
LABEL_28:
    v32 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(v16);
    v33 = *(*(v32 - 8) + 56);

    return v33(a1, 1, 1, v32);
  }

LABEL_3:
  result = Date.init(timeIntervalSinceNow:)();
  v18 = v14 & 0xC000000000000001;
  v37 = a1;
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v14 + 32);
  }

  v20 = v38 + 56;
  a1 = v9;
  v35 = *(v38 + 56);
  v35(v8, 1, 1, v9);
  if (!v15)
  {
    v9 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v36 = v8;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  v36 = v8;
  if (v9)
  {
LABEL_8:
    v34 = v20;
    v15 = 0;
    v8 = (v38 + 48);
    v41 = (v38 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v40 = (v38 + 8);
    while (1)
    {
      if (v18)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v16 = _CocoaArrayWrapper.endIndex.getter();
          if (!v16)
          {
            goto LABEL_28;
          }

          goto LABEL_3;
        }
      }

      v45 = v22;
      AppEventFormattedDate.displayFromDate.getter();
      if ((*v8)(v5, 1, a1) == 1)
      {

        sub_10002B894(v5, &qword_100979710);
      }

      else
      {
        v44 = v19;
        v23 = v9;
        v24 = v14;
        v25 = v18;
        v26 = v42;
        v27 = *v41;
        (*v41)(v42, v5, a1);
        if (static Date.> infix(_:_:)())
        {

          v29 = v36;
          sub_10002B894(v36, &qword_100979710);
          (*v40)(v43, a1);
          v27(v29, v26, a1);
          v35(v29, 0, 1, a1);
          v28 = v44;
          goto LABEL_24;
        }

        (*v40)(v26, a1);

        v18 = v25;
        v14 = v24;
        v9 = v23;
      }

      ++v15;
      v21 = v45;
      v19 = v45;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v21 = v19;
LABEL_22:
  (*(v38 + 8))(v43, a1);
  v28 = v21;
  v29 = v36;
LABEL_24:
  v30 = v37;
  *v37 = v28;
  v31 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  sub_1006E714C(v29, v30 + *(v31 + 20));
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_1006E60C8(uint64_t a1)
{
  v3 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar.SearchDirection();
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Calendar.MatchingPolicy();
  v65 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Calendar();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DateComponents();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Date();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v62 - v12;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_10002849C(&qword_100992D18);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v22 - 8);
  v81 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v62 - v31;
  v82 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer;
  v83 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer);
  if (v33)
  {
    [v33 invalidate];
  }

  v34 = a1;
  sub_100031660(a1, v21, &qword_100992D18);
  v35 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v21, 1, v35) == 1)
  {
    sub_10002B894(v21, &qword_100992D18);
    v37 = v84;
    (*(v9 + 56))(v32, 1, 1, v84);
  }

  else
  {
    sub_100031660(&v21[*(v35 + 20)], v32, &qword_100979710);
    sub_1006E70F0(v21);
    v37 = v84;
  }

  Date.init()();
  sub_100031660(v34, v18, &qword_100992D18);
  if (v36(v18, 1, v35) == 1)
  {
    sub_10002B894(v18, &qword_100992D18);
    (*(v9 + 56))(v28, 1, 1, v37);
  }

  else
  {

    sub_1006E70F0(v18);
    AppEventFormattedDate.countdownToDate.getter();

    if ((*(v9 + 48))(v28, 1, v37) != 1)
    {
      v46 = v79;
      (*(v9 + 32))(v79, v28, v37);
      if (static Date.> infix(_:_:)())
      {
        v47 = v72;
        static Calendar.current.getter();
        sub_10002849C(&qword_10098C3C0);
        v48 = type metadata accessor for Calendar.Component();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1007B10D0;
        (*(v49 + 104))(v51 + v50, enum case for Calendar.Component.second(_:), v48);
        sub_100082EBC(v51);
        swift_setDeallocating();
        (*(v49 + 8))(v51 + v50, v48);
        swift_deallocClassInstance();
        Calendar.dateComponents(_:from:)();

        v52 = *(v78 + 8);
        v78 += 8;
        v62 = v52;
        v52(v47, v73);
        static Calendar.current.getter();
        v53 = v65;
        (*(v65 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v75);
        v55 = v66;
        v54 = v67;
        (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v76);
        v57 = v69;
        v56 = v70;
        v58 = v15;
        v59 = v68;
        (*(v69 + 104))(v68, enum case for Calendar.RepeatedTimePolicy.first(_:), v70);
        v60 = v72;
        Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
        v61 = v59;
        v15 = v58;
        v37 = v84;
        (*(v57 + 8))(v61, v56);
        (*(v54 + 8))(v55, v76);
        (*(v53 + 8))(v74, v75);
        v62(v60, v73);
        (*(v63 + 8))(v77, v64);
        (*(v9 + 8))(v79, v37);
        sub_10002B894(v32, &qword_100979710);
        sub_1006E714C(v71, v32);
      }

      else
      {
        (*(v9 + 8))(v46, v37);
      }

      goto LABEL_10;
    }
  }

  sub_10002B894(v28, &qword_100979710);
LABEL_10:
  v38 = v83;
  v39 = v81;
  sub_100031660(v32, v81, &qword_100979710);
  if ((*(v9 + 48))(v39, 1, v37) == 1)
  {
    (*(v9 + 8))(v15, v37);
    sub_10002B894(v32, &qword_100979710);
    sub_10002B894(v39, &qword_100979710);
    v40 = 0;
  }

  else
  {
    v41 = v80;
    (*(v9 + 32))(v80, v39, v37);
    isa = Date._bridgeToObjectiveC()().super.isa;

    v40 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v38 target:"update" selector:0 userInfo:0 repeats:0.0];

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v40 forMode:NSRunLoopCommonModes];

    v44 = *(v9 + 8);
    v44(v41, v37);
    v44(v15, v37);
    sub_10002B894(v32, &qword_100979710);
  }

  v45 = *(v38 + v82);
  *(v38 + v82) = v40;
}

uint64_t sub_1006E6C1C()
{

  sub_1006E592C();
}

uint64_t sub_1006E6CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_1006E592C();
  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  [v9 addObserver:v3 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v10 = [v8 defaultCenter];
  [v10 addObserver:v3 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  return v3;
}

void sub_1006E6E98()
{
  sub_1006E702C(319, &unk_100992D58, type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006E6F8C()
{
  type metadata accessor for AppEventFormattedDate();
  if (v0 <= 0x3F)
  {
    sub_1006E702C(319, &qword_10098BDD0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006E702C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1006E7080(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100992D18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006E70F0(uint64_t a1)
{
  v2 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006E714C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006E72E4()
{
  v1 = type metadata accessor for LayoutRect();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OffsetGridLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for IconGridView();
  v10.receiver = v0;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_1006E751C();
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  swift_beginAccess();

  sub_1002A51C0(v7);

  type metadata accessor for OffsetGridLayout();
  swift_allocObject();
  OffsetGridLayout.init(metrics:views:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  dispatch thunk of OffsetGridLayout.placeChildren(relativeTo:in:)();

  return (*(v2 + 8))(v4, v1);
}

void sub_1006E751C()
{
  v1 = v0;
  v2 = type metadata accessor for OffsetGridLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OffsetGridLayout();
  static OffsetGridLayout.Metrics.centerOffsetLayout(with:interItemSpacing:lineSpacing:numberOfRows:originOffset:)();
  v6 = static OffsetGridLayout.numberOfViewsNeeded(toFill:with:)();
  (*(v3 + 8))(v5, v2);
  v7 = OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews;
  swift_beginAccess();
  v8 = *&v0[v7];
  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == v6)
    {
      return;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) == v6)
  {
    return;
  }

  v9 = *&v0[v7];
  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v23 = v12;
    swift_beginAccess();
    sub_10002849C(&qword_100977078);
    ReusePool.recycle(_:)();
    swift_endAccess();
  }

  while (v10 != v11);

LABEL_12:
  *&v0[v7] = _swiftEmptyArrayStorage;

  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  for (; v6; --v6)
  {
    swift_beginAccess();
    sub_10002849C(&qword_100977078);
    ReusePool.dequeue(or:)();
    swift_endAccess();
    v14 = v23;
    swift_beginAccess();
    v15 = v14;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v7) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v16 = [v15 superview];
    if (!v16 || (v17 = v16, sub_100028004(), v18 = v1, v19 = static NSObject.== infix(_:_:)(), v17, v18, (v19 & 1) == 0))
    {
      [v1 addSubview:v15];
    }
  }

  v20 = *(v1 + OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader);
    if (v21)
    {

      sub_1006E7990(v20, v21);
    }
  }
}

uint64_t sub_1006E795C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ArtworkView();
  result = static ArtworkView.iconArtworkView.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1006E7990(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v5 = OBJC_IVAR____TtC8AppStore12IconGridView_artworkViews;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    goto LABEL_41;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v22 = a1 >> 62;
      result = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = *(v2 + v5);
      v8 = v5 >> 62;
      if (!result)
      {
        break;
      }

      if (v8)
      {
        v9 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v9)
      {
      }

      v10 = 0;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v5 + 8 * v10 + 32);
        }

        v13 = v12;
        a1 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v22)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *(v11 + 16);
        }

        if (!v14)
        {
          goto LABEL_38;
        }

        v15 = v10 % v14;
        if (v21)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v15 >= *(v11 + 16))
          {
            goto LABEL_40;
          }
        }

        ImpressionableArtwork.art.getter();

        Artwork.config(using:)();
        Artwork.style.getter();
        ArtworkView.style.setter();
        type metadata accessor for ArtworkView();
        sub_10009A098();
        v2 = a2;
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        ++v10;
        if (a1 == v9)
        {
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }
    }

    if (v8)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v16 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return result;
      }
    }

    if (v16 >= 1)
    {

      v17 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v18 = *(v5 + 8 * v17 + 32);
        }

        v20 = v18;
        ++v17;
        v24.value.super.isa = 0;
        v24.is_nil = 1;
        ArtworkView.show(image:isAnimationPermitted:)(v24, v19);
      }

      while (v16 != v17);
    }

    __break(1u);
  }

  return result;
}

id sub_1006E7D04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconGridView()
{
  result = qword_100992EC0;
  if (!qword_100992EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006E7E38()
{
  sub_10017CFA0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006E7F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v36 = a5;
  v37 = a4;
  v42 = a3;
  v43 = a6;
  v44 = a7;
  v45 = a8;
  v40 = a1;
  v9 = type metadata accessor for Shelf.ContentType();
  v46 = *(v9 - 8);
  __chkstk_darwin(v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PageGrid.Direction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  v17 = sub_10002849C(&qword_100974650);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_100031660(a2, &v34 - v21, &unk_10098FFB0);
  sub_100031660(v42, &v22[*(v17 + 48)], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();

  v23 = *(v12 + 104);
  v24 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v48)
  {
    v24 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v25 = *v24;
  v41 = v16;
  v42 = v11;
  v26 = v11;
  v27 = v39;
  v23(v16, v25, v26);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v28 = *(v46 + 88);
  v38 = v9;
  v29 = v28(v27, v9);
  if (v29 == enum case for Shelf.ContentType.accessibilityFeatures(_:) || v29 == enum case for Shelf.ContentType.accessibilityParagraph(_:))
  {
    v33 = v41;
    v32 = v42;
    (*(v12 + 16))(v35, v41, v42);
    sub_1006E8884();
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v12 + 8))(v33, v32);
    return sub_10002B894(v22, &qword_100974650);
  }

  else
  {
    v47 = v36;
    sub_100031660(v22, v19, &qword_100974650);
    v30 = *(v17 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v12 + 8))(v41, v42);
    sub_10002B894(v22, &qword_100974650);
    sub_10002B894(&v19[v30], &unk_10098FFB0);
    sub_10002B894(v19, &unk_10098FFB0);
    return (*(v46 + 8))(v27, v38);
  }
}

uint64_t sub_1006E840C()
{
  sub_1006E8830();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1006E84F0()
{
  sub_1006E8830();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1006E85D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006E91BC();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_1006E8630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v20[4] = a4;
  *&v20[2] = a6;
  *&v20[3] = a7;
  v20[0] = a5;
  v20[1] = a1;
  v10 = sub_10002849C(&qword_100974650);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v20 - v15;
  v17 = *v7;
  sub_100031660(a2, v20 - v15, &unk_10098FFB0);
  sub_100031660(a3, &v16[*(v11 + 56)], &unk_10098FFB0);
  v20[5] = v17;
  sub_100031660(v16, v13, &qword_100974650);
  v18 = *(v11 + 56);
  sub_10010E37C();

  PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v16, &qword_100974650);

  sub_10002B894(&v13[v18], &unk_10098FFB0);
  return sub_10002B894(v13, &unk_10098FFB0);
}

unint64_t sub_1006E8830()
{
  result = qword_100992ED0;
  if (!qword_100992ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992ED0);
  }

  return result;
}

uint64_t sub_1006E8884()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v34 = &v31 - v1;
  v39 = type metadata accessor for PageGrid.HorizontalMargins();
  v2 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v5 - 8);
  v43 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  sub_10002849C(&qword_100970EF0);
  v16 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v40 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v32 = v18;
  *(v18 + 16) = xmmword_1007B23A0;
  v19 = v18 + v17;
  v45 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v44 = 0x4030000000000000;
  v45 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v35 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v42 = *(v2 + 104);
  v38 = v2 + 104;
  v42(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v37 = v19;
  v41 = v15;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v44 = 0x4034000000000000;
  v45 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v26 = v40;
  v36 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v31 = 2 * v26;
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = vdupq_n_s64(0x4041000000000000uLL);
  (v42)(v4, v35, v39);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v33 = v9;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v27 = v40;
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v35 = enum case for PageGrid.HorizontalMargins.readableContentGuide(_:);
  v28 = v42;
  v42(v4);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v31 = 4 * v27;
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v29 = v39;
  v28(v4, v35, v39);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  (v42)(v4, v35, v29);
  LOBYTE(v45) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v45 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v32;
}

unint64_t sub_1006E91BC()
{
  result = qword_100992ED8;
  if (!qword_100992ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992ED8);
  }

  return result;
}

id sub_1006E9210(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  RibbonBarItem.accessibilityLabel.getter();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  [v3 setAccessibilityLabel:v6];

  v7 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel];
  RibbonBarItem.title.getter();
  v8 = String._bridgeToObjectiveC()();

  [v7 setText:v8];

  v9 = RibbonBarItem.artwork.getter();
  if (v9)
  {
    Artwork.size.getter();
    v25 = v10;
    v26 = v11;

    *&v12 = v25;
    *(&v12 + 1) = v26;
  }

  else
  {
    v12 = 0uLL;
  }

  v13 = &v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  *v13 = v12;
  v13[16] = v9 == 0;
  v14 = RibbonBarItem.artwork.getter();
  if (v14)
  {
  }

  v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork] = v14 != 0;
  v15 = RibbonBarItem.artwork.getter();
  if (v15)
  {
    sub_10005B114(v15, a2);
  }

  else
  {
    v16 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
    ArtworkView.image.setter();
    [v16 setHidden:1];
  }

  v17 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
  v18 = RibbonBarItem.artworkTintColor.getter();
  [v17 setTintColor:v18];

  v19 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
  if (v19)
  {
    v20 = objc_allocWithZone(UITapGestureRecognizer);

    v21 = [v20 initWithTarget:v3 action:"handleTap"];
    v22 = *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer];
    *&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer] = v21;
    v23 = v21;

    if (v23)
    {
      [v3 addGestureRecognizer:v23];
      sub_10001F63C(v19);
    }

    else
    {
      sub_10001F63C(v19);
    }
  }

  else if (*&v3[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer])
  {
    [v3 removeGestureRecognizer:?];
  }

  return [v3 setNeedsLayout];
}

char *sub_1006E94A4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v10 - 8);
  v12 = &v59 - v11;
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v59 - v18;
  v20 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v21 = type metadata accessor for ItemLayoutContext();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D17A8);
  v25 = *(v23 - 8);
  v63 = *(v25 + 16);
  v64 = v24;
  v63(v19);
  v62 = *(v25 + 56);
  v62(v19, 0, 1, v23);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v22] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v27 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v5[v27] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  *&v5[v28] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v29 = &v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = 1;
  v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_clickAction] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_objectGraph] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer] = 0;
  v30 = &v5[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v65.receiver = v5;
  v65.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  ObjectType = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView;
  v33 = *&v32[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView];
  sub_100005744(0, &qword_100970180);
  v34 = v32;
  v35 = v33;
  v36 = static UIColor.placeholderBackgroundStandout.getter();
  [v35 setBackgroundColor:v36];

  v60 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView;
  v37 = qword_10096DA40;
  v38 = *&v34[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView];
  if (v37 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Shadow();
  v40 = sub_1000056A8(v39, qword_1009CFD20);
  v41 = *(v39 - 8);
  (*(v41 + 16))(v12, v40, v39);
  (*(v41 + 56))(v12, 0, 1, v39);
  dispatch thunk of ShadowView.shadow.setter();

  v42 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel] setNumberOfLines:1];
  v43 = *&v34[v42];
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  v47 = *&v34[v42];
  (v63)(v19, v64, v23);
  v62(v19, 0, 1, v23);
  v48 = v47;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v49 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView;
  v50 = *&v34[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
  v51 = [v44 clearColor];
  ArtworkView.placeholderColor.setter();

  v52 = [v34 contentView];
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v53 = [v34 contentView];
  [v53 addSubview:*&v34[v60]];

  v54 = [v34 contentView];
  [v54 addSubview:*(ObjectType + v32)];

  v55 = [v34 contentView];
  [v55 addSubview:*&v34[v49]];

  v56 = [v34 contentView];
  [v56 addSubview:*&v34[v42]];

  sub_10002849C(&qword_10097B110);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1007B1E00;
  *(v57 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v57 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v57 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v57 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v57 + 64) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v57 + 72) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v34;
}

double sub_1006E9C80()
{
  v1 = v0;
  v2 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v15 - v8;
  v10 = [v0 traitCollection];
  v11 = v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    sub_1006EA400(v10, v5);
  }

  else if (v11)
  {
    sub_1006EA738();
  }

  else
  {
    sub_1006EA7D8();
  }

  (*(v3 + 32))(v9, v5, v2);
  RibbonBarItemCellLayout.Metrics.artworkSize.getter();
  v13 = v12;
  (*(v3 + 8))(v9, v2);
  return v13;
}

uint64_t sub_1006E9E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CornerStyle();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v5);
  sub_1006EA084(v16);
  sub_10002A400(v16, v16[3]);
  [v1 bounds];
  v8 = [v1 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v16);
  v9 = *&v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView];
  [v1 bounds];
  [v9 setFrame:?];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView];
  [v1 bounds];
  [v10 setFrame:?];
  [v1 bounds];
  CGRectGetHeight(v18);
  v11 = enum case for CornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v7, enum case for CornerStyle.continuous(_:), v3);
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();
  v13 = *(v4 + 8);
  v13(v7, v3);
  v12(v7, v11, v3);
  dispatch thunk of ShadowView.setCorner(radius:style:)();
  return (v13)(v7, v3);
}

uint64_t sub_1006EA084@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v23 - v10;
  v12 = [v1 traitCollection];
  v13 = v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize + 16];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    sub_1006EA400(v12, v7);
  }

  else if (v13)
  {
    sub_1006EA738();
  }

  else
  {
    sub_1006EA7D8();
  }

  (*(v5 + 32))(v11, v7, v4);
  if (v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork])
  {
    v14 = *&v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView];
    v15 = type metadata accessor for ArtworkView();
    v16 = sub_1006EC774(&qword_100989780, &type metadata accessor for ArtworkView);
    v17 = v14;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v14 = 0;
    v23[6] = 0;
    v23[7] = 0;
  }

  v23[8] = v15;
  v23[9] = v16;
  v23[5] = v14;
  v18 = *&v2[OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel];
  v23[3] = type metadata accessor for DynamicTypeLabel();
  v23[4] = &protocol witness table for UILabel;
  v23[0] = v18;
  v19 = type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  v20 = v18;
  v21 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  a1[3] = v19;
  result = sub_1006EC774(&qword_100992F68, &type metadata accessor for RibbonBarItemCellLayout);
  a1[4] = result;
  *a1 = v21;
  return result;
}

void sub_1006EA400(UITraitCollection a1@<X3>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v13[0] = type metadata accessor for AspectRatio();
  v3 = *(v13[0] - 8);
  __chkstk_darwin(v13[0]);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontSource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for FontUseCase();
  v11 = sub_1000056A8(v10, qword_1009D17A8);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  (*(v7 + 104))(v9, enum case for FontSource.useCase(_:), v6);
  isa = FontSource.font(compatibleWith:)(a1).super.isa;
  (*(v7 + 8))(v9, v6);
  [(objc_class *)isa lineHeight];
  AspectRatio.init(_:_:)();
  AspectRatio.width(fromHeight:)();
  (*(v3 + 8))(v5, v13[0]);
  v13[35] = &type metadata for Double;
  v13[36] = &protocol witness table for Double;
  v13[31] = &protocol witness table for Double;
  v13[32] = 0x4020000000000000;
  v13[30] = &type metadata for Double;
  v13[27] = 0x4024000000000000;
  v13[25] = &type metadata for Double;
  v13[26] = &protocol witness table for Double;
  v13[21] = &protocol witness table for Double;
  v13[22] = 0x402C000000000000;
  v13[20] = &type metadata for Double;
  v13[16] = &protocol witness table for Double;
  v13[17] = 0;
  v13[15] = &type metadata for Double;
  v13[11] = &protocol witness table for Double;
  v13[12] = 0;
  v13[10] = &type metadata for Double;
  v13[6] = &protocol witness table for Double;
  v13[7] = 0x4010000000000000;
  v13[5] = &type metadata for Double;
  v13[2] = 0x4010000000000000;
  RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)();
}

uint64_t sub_1006EAA18(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(a2, 1, v7, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t type metadata accessor for RibbonBarItemCollectionViewCell()
{
  result = qword_100992F50;
  if (!qword_100992F50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006EACC0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1006EADA8()
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_1006EC774(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1006EAE40(uint64_t a1)
{
  result = sub_1006EC774(&qword_100992F60, type metadata accessor for RibbonBarItemCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double *sub_1006EAE98(unint64_t a1, uint64_t isa, double a3, double a4)
{
  v10 = type metadata accessor for FontSource();
  v115 = *(v10 - 8);
  v116 = v10;
  __chkstk_darwin(v10);
  v114 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticDimension();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v117 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10002849C(&qword_100984990);
  v14 = *(v142 - 8);
  __chkstk_darwin(v142);
  v141 = &v113 - v15;
  v140 = type metadata accessor for TextAppearance();
  v16 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v138 = &v113 - v19;
  __chkstk_darwin(v20);
  v137 = &v113 - v21;
  __chkstk_darwin(v22);
  v136 = &v113 - v23;
  __chkstk_darwin(v24);
  v135 = &v113 - v25;
  __chkstk_darwin(v26);
  v134 = &v113 - v27;
  v133 = type metadata accessor for LabelPlaceholder();
  v28 = *(v133 - 8);
  __chkstk_darwin(v133);
  *&v153 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v30 = *(v144 - 8);
  __chkstk_darwin(v144);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = (&v113 - v34);
  __chkstk_darwin(v36);
  v121 = &v113 - v37;
  __chkstk_darwin(v38);
  v122 = &v113 - v39;
  if (a1 >> 62)
  {
LABEL_55:
    v40 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = isa;
  if (v40)
  {
    v152 = v14;
    v175 = _swiftEmptyArrayStorage;
    v143 = v40;
    sub_100144108(0, v40 & ~(v40 >> 63), 0);
    if (v143 < 0)
    {
      __break(1u);
LABEL_57:
      swift_once();
      goto LABEL_43;
    }

    v130 = v35;
    v131 = v32;
    v35 = v175;
    v4 = JUMeasuringSizeExpanded[0];
    v5 = JUMeasuringSizeExpanded[1];
    v41 = sub_100005744(0, &qword_1009730E0);
    v42 = v30;
    v43 = 0;
    v44 = a1;
    v128 = a1 & 0xC000000000000001;
    v129 = v41;
    v120 = v42;
    v126 = (v42 + 32);
    v127 = v16 + 1;
    v124 = (v152 + 8);
    v125 = (v28 + 16);
    v123 = (v28 + 8);
    v132 = a1;
    ++v16;
    do
    {
      if (v128)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v44 + 8 * v43 + 32);
      }

      v152 = v35;
      v46 = RibbonBarItem.title.getter();
      v148 = v47;
      v149 = v46;
      v48 = RibbonBarItem.artwork.getter();
      if (v48)
      {
        Artwork.size.getter();
        v50 = v49;
        v52 = v51;

        v146 = v52;
        v147 = v50;
      }

      else
      {
        v146 = 0;
        v147 = 0;
      }

      v151 = v45;
      v53 = RibbonBarItem.artwork.getter();
      if (v53)
      {
      }

      if (qword_10096E2B8 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for FontUseCase();
      sub_1000056A8(v54, qword_1009D17A8);
      v55 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      v56 = v139;
      TextAppearance.init()();
      v57 = v138;
      v150 = v55;
      TextAppearance.withFont(_:)();
      v58 = *v16;
      v59 = v140;
      (*v16)(v56, v140);
      v60 = v137;
      TextAppearance.withTextAlignment(_:)();
      v58(v57, v59);
      v61 = v136;
      TextAppearance.withLineBreakMode(_:)();
      v58(v60, v59);
      v62 = v135;
      TextAppearance.withLineSpacing(_:)();
      v58(v61, v59);
      TextAppearance.withNumberOfLines(_:)();
      v58(v62, v59);
      v63.super.isa = v145;
      LabelPlaceholder.Options.init(rawValue:)();
      LabelPlaceholder.init(_:with:where:)();
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        v64 = v131;
        sub_1006EA400(v63, v131);
        v65 = v130;
      }

      else
      {
        v65 = v130;
        v64 = v131;
        if (v48)
        {
          CGSize.fitting(_:mode:)();
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4028000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0;
          v155 = &type metadata for Double;
          v154 = 0;
        }

        else
        {
          v174 = &protocol witness table for Double;
          *(&v173 + 1) = &type metadata for Double;
          v171 = &protocol witness table for Double;
          *&v172 = 0x4020000000000000;
          v170 = &type metadata for Double;
          v169[0] = 0x4024000000000000;
          v168 = &protocol witness table for Double;
          v167 = &type metadata for Double;
          v165 = &protocol witness table for Double;
          v166 = 0x4024000000000000;
          v164 = &type metadata for Double;
          v162 = &protocol witness table for Double;
          v163 = 0x401C000000000000;
          v161 = &type metadata for Double;
          v159 = &protocol witness table for Double;
          v160 = 0x401C000000000000;
          v158 = &type metadata for Double;
          v156 = &protocol witness table for Double;
          v157 = 0x4024000000000000;
          v155 = &type metadata for Double;
          v154 = 0x4024000000000000;
        }

        RibbonBarItemCellLayout.Metrics.init(artworkSize:interimSpacing:leadingSpacing:trailingSpacing:artworkBottomSpacing:artworkTopSpacing:labelBottomSpacing:labelTopSpacing:)();
      }

      (*v126)(v65, v64, v144);
      if (v53)
      {
        v66 = type metadata accessor for EmptyPlaceable();
        swift_allocObject();
        v67 = EmptyPlaceable.init()();
        *(&v173 + 1) = v66;
        v174 = sub_1006EC774(&qword_1009768B0, &type metadata accessor for EmptyPlaceable);
        *&v172 = v67;
      }

      else
      {
        v174 = 0;
        v172 = 0u;
        v173 = 0u;
      }

      v68 = v133;
      v170 = v133;
      v171 = &protocol witness table for LabelPlaceholder;
      v69 = sub_1000056E0(v169);
      v70 = v153;
      (*v125)(v69, v153, v68);
      type metadata accessor for RibbonBarItemCellLayout();
      swift_allocObject();
      *&v172 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
      sub_1006EC774(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout);
      v71 = v141;
      dispatch thunk of CustomLayout.layout.getter();
      swift_getOpaqueTypeConformance2();
      v72 = v142;
      dispatch thunk of Placeable.measure(toFit:with:)();
      v74 = v73;

      (*v124)(v71, v72);
      (*v123)(v70, v68);
      v35 = v152;
      v175 = v152;
      v76 = *(v152 + 2);
      v75 = *(v152 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_100144108((v75 > 1), v76 + 1, 1);
        v35 = v175;
      }

      ++v43;
      *(v35 + 2) = v76 + 1;
      v35[v76 + 4] = v74;
      isa = v63.super.isa;
      v44 = v132;
    }

    while (v143 != v43);
    v30 = v120;
  }

  else
  {
    v35 = _swiftEmptyArrayStorage;
  }

  v77 = v121;
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    sub_1006EA400(isa, v77);
  }

  else
  {
    sub_1006EA738();
  }

  a1 = v122;
  v78 = v77;
  v79 = v144;
  (*(v30 + 32))(v122, v78, v144);
  RibbonBarItemCellLayout.Metrics.trailingSpacing.getter();
  (*(v30 + 8))(a1, v79);
  v30 = *(v35 + 2);
  if (!v30)
  {
    goto LABEL_51;
  }

  v32 = 0;
  v80 = 0.0;
  v14 = &qword_100973210;
  v28 = &unk_1007B0BB0;
  v153 = xmmword_1007B0B70;
  while (1)
  {
    if (v32 >= *(v35 + 2))
    {
      __break(1u);
      goto LABEL_55;
    }

    v81 = v35[v32 + 4];
    v5 = v80 + v81;
    if (v80 + v81 == a3)
    {
      goto LABEL_51;
    }

    if (v80 + v81 >= a3)
    {
      break;
    }

    ++v32;
    type metadata accessor for RibbonBarItemCellLayout();
    static RibbonBarItemCellLayout.interItemSpacing.getter();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    isa = swift_allocObject();
    *(isa + 16) = v153;
    v82 = v145;
    *(isa + 32) = v145;
    v83 = v82;
    a1 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    Double.rawValue(in:)();
    v4 = v84;

    v80 = v5 + v4;
    if (v30 == v32)
    {
      goto LABEL_51;
    }
  }

  sub_10002A400(&v172, *(&v173 + 1));
  isa = v145;
  AnyDimension.value(with:)();
  v86 = a3 + a4 + v85;
  if (v86 <= v5)
  {
LABEL_51:
    v107 = v35;
    goto LABEL_52;
  }

  v16 = v35;
  a3 = v86 - v5;
  v4 = (v32 + 1);
  v5 = (v86 - v5) / v4 * 0.5;
  if (qword_10096E2B8 != -1)
  {
    goto LABEL_57;
  }

LABEL_43:
  v87 = type metadata accessor for FontUseCase();
  v88 = sub_1000056A8(v87, qword_1009D17A8);
  v89 = v114;
  (*(*(v87 - 8) + 16))(v114, v88, v87);
  v91 = v115;
  v90 = v116;
  (*(v115 + 104))(v89, enum case for FontSource.useCase(_:), v116);
  v170 = v90;
  v171 = &protocol witness table for FontSource;
  v92 = sub_1000056E0(v169);
  (*(v91 + 16))(v92, v89, v90);
  v93 = v117;
  StaticDimension.init(_:scaledLike:)();
  (*(v91 + 8))(v89, v90);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v94 = swift_allocObject();
  *(v94 + 16) = v153;
  *(v94 + 32) = isa;
  v95 = isa;
  v96 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v97 = v119;
  dispatch thunk of AnyDimension.rawValue(in:)();
  v99 = v98;

  (*(v118 + 8))(v93, v97);
  v100 = (a3 + v5 + v99) / v4;
  v101 = swift_allocObject();
  *(v101 + 16) = v153;
  *(v101 + 32) = v95;
  v102 = v95;
  v103 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  Double.rawValue(in:)();
  v105 = v104;

  if (v100 < v105)
  {
    v105 = v100;
  }

  v106 = *(v16 + 2);
  if (v106)
  {
    v169[0] = _swiftEmptyArrayStorage;
    sub_100144108(0, v106, 0);
    v107 = v169[0];
    v108 = *(v169[0] + 16);
    v109 = 4;
    do
    {
      v110 = v16[v109];
      v169[0] = v107;
      v111 = *(v107 + 3);
      if (v108 >= v111 >> 1)
      {
        sub_100144108((v111 > 1), v108 + 1, 1);
        v107 = v169[0];
      }

      *(v107 + 2) = v108 + 1;
      v107[v108 + 4] = v105 + v110;
      ++v109;
      ++v108;
      --v106;
    }

    while (v106);
  }

  else
  {

    v107 = _swiftEmptyArrayStorage;
  }

LABEL_52:
  sub_100007000(&v172);
  return v107;
}

double sub_1006EBDA0(uint64_t a1, void *a2)
{
  v3 = sub_10002849C(&qword_100984990);
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - v4;
  v5 = type metadata accessor for RibbonBarItemCellLayout.Metrics();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = v44 - v8;
  v9 = type metadata accessor for TextAppearance();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v44 - v14;
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  __chkstk_darwin(v22);
  v24 = v44 - v23;
  __chkstk_darwin(v25);
  v46 = v44 - v26;
  v53 = type metadata accessor for LabelPlaceholder();
  v51 = *(v53 - 8);
  *&v27 = __chkstk_darwin(v53).n128_u64[0];
  v45 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a2 traitCollection];
  v44[2] = RibbonBarItem.title.getter();
  v44[1] = v30;
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for FontUseCase();
  sub_1000056A8(v31, qword_1009D17A8);
  v32 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  TextAppearance.init()();
  v47 = v32;
  TextAppearance.withFont(_:)();
  v33 = *(v10 + 8);
  v33(v12, v9);
  TextAppearance.withTextAlignment(_:)();
  v33(v15, v9);
  TextAppearance.withLineBreakMode(_:)();
  v33(v18, v9);
  TextAppearance.withLineSpacing(_:)();
  v33(v21, v9);
  TextAppearance.withNumberOfLines(_:)();
  v33(v24, v9);
  LabelPlaceholder.Options.init(rawValue:)();
  v34 = v45;
  LabelPlaceholder.init(_:with:where:)();
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v35 = v48;
    sub_1006EA400(v29, v48);
  }

  else
  {
    v35 = v48;
    sub_1006EA738();
  }

  (*(v49 + 32))(v52, v35, v50);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v36 = v53;
  v57[3] = v53;
  v57[4] = &protocol witness table for LabelPlaceholder;
  v37 = sub_1000056E0(v57);
  v38 = v51;
  (*(v51 + 16))(v37, v34, v36);
  type metadata accessor for RibbonBarItemCellLayout();
  swift_allocObject();
  *&v58 = RibbonBarItemCellLayout.init(metrics:artwork:titleLabel:)();
  sub_1006EC774(&qword_100984998, &type metadata accessor for RibbonBarItemCellLayout);
  v39 = v54;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v40 = v56;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v42 = v41;

  (*(v55 + 8))(v39, v40);
  (*(v38 + 8))(v34, v36);
  return v42;
}

void sub_1006EC414()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_titleLabel;
  if (qword_10096E2B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D17A8);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v11) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v16 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkSize;
  *v18 = 0;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_hasArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_clickAction) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_gestureRecognizer) = 0;
  v19 = (v1 + OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_tapAction);
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR____TtC8AppStore31RibbonBarItemCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v20) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1006EC774(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1006EC9F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006ECA60(uint64_t a1)
{
  v3 = type metadata accessor for ShelfBackgroundGradientLocation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for ShelfBackground();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    v17 = *(sub_10002849C(&qword_100972A40) + 48);
    v18 = *(v1 + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView);
    v19 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v20 = [v18 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10002849C(&qword_100973210);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1007B15F0;
    *(v21 + 32) = v16;
    *(v21 + 40) = v16;
    *&v18[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v21;
    v22 = v16;

    sub_1001C0CEC();

    v23 = type metadata accessor for ShelfBackgroundStyle();
    return (*(*(v23 - 8) + 8))(v14 + v17, v23);
  }

  else if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v11 + 96))(v14, v10);
    v25 = *v14;
    v26 = sub_10002849C(&qword_100978418);
    v27 = v26[12];
    v28 = v26[16];
    v48 = v26[20];
    v29 = *(v4 + 32);
    v29(v9, v14 + v27, v3);
    v29(v6, v14 + v28, v3);
    v30 = *(v1 + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView);
    ShelfBackgroundGradientLocation.point.getter();
    v32 = v31;
    v34 = v33;
    v35 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v32, v34}];

    ShelfBackgroundGradientLocation.point.getter();
    v37 = v36;
    v39 = v38;
    v40 = [v30 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v37, v39}];

    *&v30[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v25;

    sub_1001C0CEC();
    v41 = *(v4 + 8);
    v41(v6, v3);
    v41(v9, v3);
    v42 = type metadata accessor for ShelfBackgroundStyle();
    return (*(*(v42 - 8) + 8))(v14 + v48, v42);
  }

  else
  {
    v43 = *(v1 + OBJC_IVAR____TtC8AppStore29GradientSectionBackgroundView_gradientView);
    v44 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

    v45 = [v43 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

    sub_10002849C(&qword_100973210);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1007B15F0;
    sub_100028BB8();
    *(v46 + 32) = static UIColor.defaultBackground.getter();
    *(v46 + 40) = static UIColor.defaultBackground.getter();
    *&v43[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v46;

    sub_1001C0CEC();
    return (*(v11 + 8))(v14, v10);
  }
}

NSString sub_1006ED0B8()
{
  result = String._bridgeToObjectiveC()();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_10096EE78 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_10096EE78 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

double sub_1006ED19C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(qword_10097DB40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10002849C(&qword_100970F20);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D280 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();
  v15 = sub_1001C2E40(a1);
  (*(v11 + 8))(v14, v10);
  return v15;
}

double sub_1006ED3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_10002849C(qword_10097DB40);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = type metadata accessor for StateLens();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_10002C0AC(v26, v34);
  sub_10002849C(&qword_100973D50);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  StateLens.init(_:)();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_1006ED69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = a6;
  v10 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_10002849C(&unk_1009731C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_10002C0AC(a1, v26);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductMedia();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v19 = *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_10057A438(v19);

    v20 = v25;
    v21 = [v25 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_10057A32C(v23);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1006ED930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10002849C(&unk_10097DAF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v41 - v14;
  v16 = sub_10002849C(&unk_1009731C0);
  v42 = *(v16 - 8);
  v43 = v16;
  __chkstk_darwin(v16);
  v18 = v41 - v17;
  sub_10002C0AC(a1, v45);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for InAppPurchaseLockup();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v44;
    (*(v13 + 16))(v15, a2, v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v21 = v41[1];
    sub_100059168(v20, a3, a4, a5, a6);
    InAppPurchaseLockup.parent.getter();
    v22 = Lockup.title.getter();
    v24 = v23;

    if (v24)
    {
      v25._countAndFlagsBits = 0x465F4E4F5F444441;
      v25._object = 0xEE005050415F524FLL;
      v26._object = 0x8000000100800630;
      v26._countAndFlagsBits = 0xD000000000000031;
      localizedString(_:comment:)(v25, v26);
      sub_10002849C(&unk_10097E350);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007B10D0;
      *(v27 + 56) = &type metadata for String;
      *(v27 + 64) = sub_1000BFD1C();
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;

      String.init(format:_:)();

      v28 = objc_allocWithZone(NSMutableAttributedString);
      v29 = String._bridgeToObjectiveC()();
      v30 = [v28 initWithString:v29];

      v31 = objc_allocWithZone(NSString);
      v32 = String._bridgeToObjectiveC()();

      v33 = [v31 initWithString:v32];

      v34 = String._bridgeToObjectiveC()();

      v35 = [v33 rangeOfString:v34 options:4];
      v37 = v36;

      v38 = [v21 tintColor];
      v45[0] = v38;
      sub_10002849C(&qword_100973268);
      v39 = Optional._bridgeToObjectiveC()();

      [v30 addAttribute:NSForegroundColorAttributeName value:v39 range:{v35, v37}];
      swift_unknownObjectRelease();
      v40 = *(*&v21[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
      if (!v40)
      {

        return (*(v42 + 8))(v18, v43);
      }

      [v40 setAttributedText:v30];
    }

    return (*(v42 + 8))(v18, v43);
  }

  return result;
}

uint64_t sub_1006EDDD0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v20[0] = a6;
  v10 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_10002849C(&unk_1009731C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_10002C0AC(a1, v21);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for UpsellBreakout();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v20[2];
    (*(v11 + 16))(v13, a2, v10);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    sub_100755A34(v19, a4, a3, v20[0]);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_1006EDFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = type metadata accessor for ComponentLayoutOptions();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_10097DAF0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_10002849C(&unk_1009731C0);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_10002C0AC(a1, v73);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Action();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  type metadata accessor for NilState();
  v64 = v21;
  WritableStateLens.init(_:)();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_textLabel];
  Action.title.getter();
  dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_separatorView];
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = Action.presentationStyle.getter();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_100005744(0, &qword_100970180);
    v35 = static UIColor.primaryText.getter();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_10028F24C(v36);
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
  sub_100611864(v40, v67);
  sub_10002B894(v40, &qword_100984340);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == 1 || (static ComponentLayoutOptions.fixedHeightContainer.getter(), v45 = dispatch thunk of SetAlgebra.isSuperset(of:)(), v42(v30, v34), (v45 & 1) != 0))
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

  v53 = Action.artwork.getter();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_1006123AC();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  static ComponentLayoutOptions.fixedHeightContainer.getter();
  v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC8AppStore24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
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

uint64_t sub_1006EE6A0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = type metadata accessor for ComponentLayoutOptions();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FontSource();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for Separator.Position();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Separator();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_10097DAF0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_10002849C(&unk_1009731C0);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_10002C0AC(a1, v95);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Lockup();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    type metadata accessor for NilState();
    v75 = v33;
    WritableStateLens.init(_:)();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = type metadata accessor for StaticDimension();
    v97 = &protocol witness table for StaticDimension;
    sub_1000056E0(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_1000056E0(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    StaticDimension.init(_:scaledLike:)();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v39 = v90;
    static ComponentLayoutOptions.separatorHidden.getter();
    sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
    v40 = v91;
    v41 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000C112C(v44, &v46[v45], &unk_100970E10);
      swift_endAccess();
      sub_1002B0944();
      sub_10002B894(v44, &unk_100970E10);
      v47 = v90;
      static ComponentLayoutOptions.fixedHeightContainer.getter();
      v48 = v91;
      LOBYTE(v45) = dispatch thunk of SetAlgebra.isSuperset(of:)();
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
        Separator.verticalOutset.getter();
        sub_10002A400(v95, v96);
        AnyDimension.value(with:)();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_100007000(v95);
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
      v54 = OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_1000C112C(v52, &v46[v54], &unk_100970E10);
      swift_endAccess();
      sub_1002B0944();
      sub_10002B894(v52, &unk_100970E10);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      static ComponentLayoutOptions.hasBackground.getter();
      v57 = v91;
      v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_separatorView];
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

    v62 = *&v46[OBJC_IVAR____TtC8AppStore29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_10002849C(&unk_100973240);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = type metadata accessor for OfferStyle();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = type metadata accessor for OfferEnvironment();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_10002849C(&unk_1009701A0);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = type metadata accessor for OfferTint();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_1004F3190(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10002B894(v72, &unk_100973AD0);
    v62[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v62 setNeedsLayout];
    sub_10002B894(v70, &unk_100970150);
    sub_10002B894(v68, &unk_100970160);
    sub_10002B894(v66, &qword_100973AE0);
    sub_10002B894(v64, &unk_100973230);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_1006EF444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10002849C(&unk_10097DAF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10002849C(&unk_1009731C0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&qword_100973D50);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1006EF668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10002849C(&unk_1009731C0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyFooter();
  result = swift_dynamicCast();
  if (result)
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v18 = sub_100708188(&qword_100973280, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_1006EF8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v46 = a2;
  v47 = a6;
  v49 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v44 - v16);
  v18 = sub_10002849C(&unk_1009732B0);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v48 = &v44 - v19;
  v20 = sub_10002849C(&unk_10097DAF0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v24 = sub_10002849C(&unk_1009731C0);
  v50 = *(v24 - 8);
  v51 = v24;
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  sub_10002C0AC(a1, v57);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for SmallBreakout();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v46, v20);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v28 = [v47 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    SmallBreakout.details.getter();
    v29 = BreakoutDetails.badgeColorOverride.getter();

    v45 = v26;
    if (v29)
    {
      if (qword_10096D008 != -1)
      {
        swift_once();
      }

      v30 = sub_1000056A8(v12, qword_1009CDEA0);
      sub_1000C2608(v30, v17);
      v31 = *v17;
      v32 = v29;

      *v17 = v29;
      sub_1000C2608(v17, v14);
      sub_10002849C(&qword_100973F50);
      v33 = v48;
      Conditional<>.init(value:)();

      sub_1000C266C(v17);
    }

    else
    {
      if (qword_10096D008 != -1)
      {
        swift_once();
      }

      v34 = sub_1000056A8(v12, qword_1009CDEA0);
      sub_1000C2608(v34, v17);
      sub_10002849C(&qword_100973F50);
      v33 = v48;
      Conditional<>.init(value:)();
    }

    v35 = v53;
    v36 = SmallBreakout.details.getter();
    v37 = v52;
    (*(v52 + 16))(v11, v33, v35);
    (*(v37 + 56))(v11, 0, 1, v35);
    sub_1003A9938(v36, v11, v49);

    sub_10002B894(v11, &unk_100975ED0);
    v38 = SmallBreakout.backgroundColor.getter();
    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v38;
    v40 = ObjectType;
    v56.receiver = v7;
    v56.super_class = ObjectType;
    objc_msgSendSuper2(&v56, "setBackgroundColor:", v38);
    v41 = *&v7[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
    v55.receiver = v7;
    v55.super_class = v40;
    v42 = v41;
    v43 = objc_msgSendSuper2(&v55, "backgroundColor");
    ArtworkView.backgroundColor.setter();

    [v7 setNeedsLayout];

    (*(v37 + 8))(v33, v35);
    return (*(v50 + 8))(v45, v51);
  }

  return result;
}

uint64_t sub_1006EFEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = type metadata accessor for OfferButtonSubtitlePosition();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10002849C(&unk_1009701A0);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_10002849C(&unk_10097DAF0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_10002849C(&unk_1009731C0);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_10002C0AC(a1, v67);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ArcadeShowcase();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = ArcadeShowcase.iconArtworks.getter();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = _CocoaArrayWrapper.endIndex.getter();
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
        type metadata accessor for ArtworkLoader();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = v35;

        sub_1006E7990(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = ArcadeShowcase.offerDisplayProperties.getter();
        v40 = ArcadeShowcase.unsubscribedAction.getter();
        v41 = ArcadeShowcase.subscribedAction.getter();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_100708188(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
        AccessibilityConditional.init(value:axValue:)();
        v42 = sub_10002849C(&unk_100973240);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_100708188(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
        v45 = v58;
        AccessibilityConditional.init(value:axValue:)();
        sub_10064AFA4(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10002B894(v20, &unk_100973230);
        type metadata accessor for ArcadeSubscriptionManager();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v46 = v67[0];
        ArcadeShowcase.subscribedDescription.getter();
        ArcadeShowcase.unsubscribedDescription.getter();
        v47 = type metadata accessor for ArcadeOfferLabelPresenter();
        swift_allocObject();
        v48 = v46;
        v49 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
        sub_100708188(&unk_100973250, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        ArcadeOfferLabelPresenter.view.setter();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_1000315F8(v67, &v33[v50], &unk_1009711D0);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1006F088C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10002849C(&unk_10097DAF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10002849C(&unk_1009731C0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10002C0AC(a1, v28);
  sub_10002849C(&qword_100973D50);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_1006F0AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_10002849C(&unk_10097DAF0);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for WritableStateLens();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Optional();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_10002C0AC(v38, v39);
  sub_10002849C(&qword_100973D50);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    WritableStateLens.init(_:)();
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

uint64_t sub_1006F0E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_10002849C(&unk_10097DAF0);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = type metadata accessor for WritableStateLens();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_10002C0AC(v20, v25);
  sub_10002849C(&qword_100973D50);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  WritableStateLens.init(_:)();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

double sub_1006F1124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_10002849C(qword_10097DB40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10002849C(&qword_10096FEE8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = type metadata accessor for Annotation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v32);
  sub_10002849C(&qword_100973D50);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  StateLens.init(_:)();
  v23 = sub_100708188(&unk_100992FC0, type metadata accessor for AnnotationCollectionViewCell);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_1006F141C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10002849C(qword_10097DB40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10002849C(&qword_100970F20);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductMedia();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v21 = sub_10057C46C(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1006F1650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F1704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F17A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F1838(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_10002849C(qword_10097DB40);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24[-v14];
  v16 = sub_10002849C(&qword_100970F20);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v24[-v18];
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppPromotion();
  swift_dynamicCast();
  (*(v13 + 16))(v15, a4, v12);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v20 = v25;
  ObjectType = swift_getObjectType();
  v22 = sub_100100904(a2, v20, a7, v7, ObjectType);
  (*(v17 + 8))(v19, v16);

  return v22;
}

double sub_1006F1AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F1B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F1BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F1CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(qword_10097DB40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10002849C(&qword_100970F20);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  type metadata accessor for SmallPlayerCardView();
  static SmallPlayerCardView.size(fitting:traitEnvironment:)();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  return v14;
}

double sub_1006F1E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F1F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F20D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F218C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F2228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F22C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F2540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F25DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F2658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F270C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F27A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F2824(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10002849C(qword_10097DB40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10002849C(&qword_100970F20);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_1005AF874(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_1006F29E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F2BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10002849C(qword_10097DB40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10002849C(&qword_100970F20);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_1002A0A18(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

void sub_1006F2DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(qword_10097DB40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_10002849C(&qword_100970F20);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1006F2F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F3000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F309C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006F3138(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_10002849C(&qword_100975768);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  WritableStateLens.init(_:)();
  sub_100135E04();
  WritableStateLens<A>.updateValue(_:)();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1006F3458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F350C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F35A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F36D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F3774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F39E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F3B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F3BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F3C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(qword_10097DB40);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10002849C(&qword_100970F20);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v13, qword_1009CEA50);
  type metadata accessor for FlowcaseItemLayout();
  sub_100708188(&unk_100979610, &type metadata accessor for FlowcaseItemLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  if (qword_10096D4D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Separator();
  sub_1000056A8(v14, qword_1009CEA68);
  CGSize.adding(separator:in:)();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  return v16;
}

double sub_1006F3F4C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_10002849C(qword_10097DB40);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_10002849C(&qword_100970F20);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_10002C0AC(a1, v30);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppEvent();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_1006F41C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F4310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F44DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F4570(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10002849C(qword_10097DB40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23[-v13];
  v15 = sub_10002849C(&qword_100970F20);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23[-v17];
  sub_10002C0AC(a1, v23);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppPromotion();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v19 = v24;
  ObjectType = swift_getObjectType();
  v21 = sub_1005397D8(a2, v19, a7, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v21;
}

double sub_1006F47F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10002849C(qword_10097DB40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-v11];
  v13 = sub_10002849C(&qword_100970F20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19[-v15];
  sub_10002C0AC(a1, v19);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Ratings();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a3, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v17 = sub_10005CE38(v20, a6, 1);
  (*(v14 + 8))(v16, v13);

  return v17;
}

double sub_1006F4A20(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10002849C(qword_10097DB40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  v15 = sub_10002849C(&qword_100970F20);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v20[-v17];
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppShowcase();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_100104C50(v21, a7);
  (*(v16 + 8))(v18, v15);

  return a2;
}

double sub_1006F4CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F4E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F4E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F4F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F4FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F5060(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10002849C(qword_10097DB40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_10002849C(&qword_100970F20);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_10077DC28(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

double sub_1006F5250(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(qword_10097DB40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10002849C(&qword_100970F20);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for AspectRatio();
  sub_1000056A8(v15, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  (*(v11 + 8))(v14, v10);
  return a1;
}

uint64_t sub_1006F5460(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10002849C(&unk_1009731C0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  (*(v8 + 8))(v11, v7);
  return 0;
}

double sub_1006F5620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006ED3AC(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1006F56D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0AAC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1006F5770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1006F0E64(a1, a2, a3, a4, WitnessTable);
}

double sub_1006F57EC(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10002849C(qword_10097DB40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-v9];
  v11 = sub_10002849C(&qword_100970F20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  sub_10002C0AC(a1, v17);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for UpsellBreakout();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a4, v7);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v15 = sub_100757820(a2);
  (*(v12 + 8))(v14, v11);

  return v15;
}

uint64_t sub_1006F5A0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_10097DAF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10002849C(&unk_1009731C0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  type metadata accessor for NilState();
  WritableStateLens.init(_:)();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_1006F5B98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = type metadata accessor for FootnoteLayout.Metrics();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FootnoteLayout();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(qword_10097DB40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v39 = sub_10002849C(&qword_100970F20);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v18 = &v36 - v17;
  sub_10002C0AC(a1, v51);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Footnote();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  type metadata accessor for NilState();
  v36 = v18;
  StateLens.init(_:)();
  Footnote.text.getter();
  v19 = Footnote.presentationStyle.getter();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  sub_1000056A8(v20, qword_1009D09B0);
  v45 = a4;
  v21 = [a4 traitCollection];
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v23 = type metadata accessor for Feature();
  v51[3] = v23;
  v51[4] = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v24 = sub_1000056E0(v51);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v25 = v22;
  isFeatureEnabled(_:)();
  sub_100007000(v51);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v10 + 8))(v12, v9);
  if ((v19 & 2) != 0)
  {
    if (qword_10096CF48 != -1)
    {
      swift_once();
    }

    [qword_1009CDB60 size];
    v26 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v27 = LayoutViewPlaceholder.init(representing:)();
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
  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_1000056A8(v40, qword_1009CDB48);
  (*(v38 + 16))(v41, v30, v29);
  sub_10002C0AC(v51, v47);
  sub_10005FC74(&v48, v46);
  v31 = v42;
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  [v28 pageMarginInsets];
  CGSize.subtracting(insets:)();
  sub_100708188(&qword_100992FD0, &type metadata accessor for FootnoteLayout);
  v32 = v44;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  CGSize.adding(outsets:)();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_100007000(v51);
  (*(v37 + 8))(v36, v39);
  sub_10002B894(&v48, &qword_100975610);

  return v34;
}

double sub_1006F6338(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v31 = a3;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Separator();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ComponentLayoutOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(qword_10097DB40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v32 = sub_10002849C(&qword_100970F20);
  v18 = *(v32 - 8);
  v19 = __chkstk_darwin(v32);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v11 + 8))(v13, v10);
  swift_getObjectType();
  sub_1000586D8(a4, v9);
  type metadata accessor for InAppPurchaseLockupView();
  v22 = sub_1004A1F00(a4);
  if (v17)
  {
    v23 = v22;
    Separator.verticalOutset.getter();
    sub_10002A400(v35, v35[3]);
    v24 = v27;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v9, v34);
    (*(v18 + 8))(v21, v32);
    sub_100007000(v35);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v23 = v25;
    (*(v33 + 8))(v9, v34);
    (*(v18 + 8))(v21, v32);
  }

  return v23;
}

double sub_1006F67F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10002849C(qword_10097DB40);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_10002849C(&qword_100970F20);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15];
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppEvent();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v17 = v25;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = v19;
  v21 = type metadata accessor for AppEventView();
  v22 = sub_10016862C(v20, v17, a5, a3, v21, ObjectType);
  (*(v14 + 8))(v16, v13);

  return v22;
}

double sub_1006F6A38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10002849C(qword_10097DB40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-v9];
  v11 = sub_10002849C(&qword_100970F20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  sub_10002C0AC(a1, v20);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppPromotion();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v15 = v21;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v18 = sub_1005397D8(v17, v15, a4, ObjectType);
  (*(v12 + 8))(v14, v11);

  return v18;
}

double sub_1006F6C64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10002849C(qword_10097DB40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = sub_10002849C(&qword_100970F20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-v13];
  sub_10002C0AC(a1, v22);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductCapability();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v15 = ProductCapability.title.getter();
  v17 = v16;
  v18 = ProductCapability.caption.getter();
  v19 = ProductCapability.artwork.getter();
  swift_getObjectType();
  v20 = sub_1004F2388(v15, v17, v18, v19, a4);

  (*(v12 + 8))(v14, v11);

  return v20;
}

double sub_1006F6ED8(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_10002849C(qword_10097DB40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_10002849C(&qword_100970F20);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_10002C0AC(a1, v24);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for EditorialLink();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v18 = v24[5];
  sub_10002849C(&unk_100973270);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v23[1] = v18;
  dispatch thunk of LinkLoader.availablePresentation(for:)();

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

  v21 = sub_1005104B4(v19, v20, a6, a3);
  sub_1000C0220(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_1006F7180(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for AspectRatio();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_10002849C(qword_10097DB40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10002849C(&qword_100970F20);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_10002C0AC(a1, &v106);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Quote();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  type metadata accessor for NilState();
  v90 = v20;
  StateLens.init(_:)();
  v21 = v105;
  [a5 pageMarginInsets];
  v22._object = 0x80000001007FC650;
  v22._countAndFlagsBits = 0xD000000000000010;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v110 = localizedString(_:comment:)(v22, v23);
  v24 = sub_100072384(v110);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_10096CEA8 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_1009CD920;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_1009CD978;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_1009CD818;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_10096CE98 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_1009CD870;
  }

  else
  {
    if (qword_10096CEA0 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_1009CD8C8;
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
  sub_100072738(&v106, v102);
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
  v96 = sub_1000723D0(&v106);

  *&v97 = v21;
  Quote.text.getter();
  v37 = v36;
  v38 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for FontUseCase();
  v39 = sub_1000056A8(v94, qword_1009CD9D0);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_10096E898;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_100005744(0, &unk_100993000);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_100708188(&qword_100976620, type metadata accessor for Key);
  v50.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_100397150(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = String._bridgeToObjectiveC()();
    v56 = Dictionary._bridgeToObjectiveC()().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_100072770(v102);
  }

  else
  {

    sub_100072770(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = type metadata accessor for Feature();
  v100 = v66;
  v67 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v101 = v67;
  v68 = sub_1000056E0(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  isFeatureEnabled(_:)();
  sub_100007000(v99);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  sub_10002B894(v65, &qword_100972ED0);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for StaticDimension();
  sub_1000056A8(v71, qword_1009CDA00);
  AnyDimension.topMargin(from:in:)();
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v71, qword_1009CDA18);
  AnyDimension.bottomMargin(from:in:)();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  Quote.credit.getter();
  if (v72)
  {
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v94, qword_1009CD9E8);
    v100 = v66;
    v101 = v67;
    v73 = sub_1000056E0(v99);
    v70(v73, v69, v66);
    isFeatureEnabled(_:)();
    sub_100007000(v99);
    v74 = v98;
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v71, qword_1009CDA30);
    AnyDimension.topMargin(from:in:)();
    v75 = v74;
    v76 = v93;
    v77 = &StringUserDefaultsDebugSetting;
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v71, qword_1009CDA48);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &StringUserDefaultsDebugSetting;
  }

  if (Quote.artwork.getter())
  {
    Artwork.size.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    if ((Quote.isFullWidthArtwork.getter() & 1) == 0)
    {
      [v75 v77[53].ivar_lyt];
      [v75 v77[53].ivar_lyt];
    }

    AspectRatio.height(fromWidth:)();
    v78 = v95;
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v71, qword_1009CDA60);
    v79 = v82;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();

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

double sub_1006F8144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10002849C(qword_10097DB40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v28 = sub_10002849C(&qword_100970F20);
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  sub_10002C0AC(a1, &v30);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Action();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  v14 = v33;
  swift_getObjectType();
  v15 = [a4 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
    [a4 pageMarginInsets];
  }

  v29 = v14;

  sub_10002849C(&unk_100980530);
  if (swift_dynamicCast())
  {
    sub_10002A400(&v30, *(&v31 + 1));
    v17 = SearchAdOpportunityProviding.isSearchAd.getter();
    sub_100007000(&v30);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_10002B894(&v30, &unk_100992FE0);
    v17 = 0;
  }

  v18 = Action.title.getter();
  v20 = v19;
  v21 = Action.artwork.getter();
  if (v21)
  {
  }

  v22 = sub_10028F24C(a4);
  if (qword_10096EB38 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for ActionLayout.Metrics();
  v24 = sub_1000056A8(v23, qword_1009D2F68);
  v25 = sub_100614920(v24, a4, v18, v20, v21 != 0, v22, v17 & 1);

  (*(v11 + 8))(v13, v28);

  return v25;
}

uint64_t sub_1006F8544(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10002849C(qword_10097DB40);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - v13;
  v15 = sub_10002849C(&qword_100980638);
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Paragraph();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  StateLens.init(_:)();
  v18 = aBlock[6];
  sub_100135E04();
  v39 = v15;
  v37 = v17;
  StateLens<A>.currentValue.getter();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v36 = Paragraph.isCollapsed.getter();
  }

  else
  {
    v36 = LOBYTE(aBlock[0]);
  }

  v19 = Paragraph.text.getter();
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
  *(v25 + 16) = sub_100126854;
  *(v25 + 24) = v24;
  aBlock[4] = sub_100126848;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  aBlock[3] = &unk_1008CFBD8;
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
    sub_100766148(v28, v36 & 1, a6, v31, v32, v33, v34, a3, a4);

    sub_100318A20(v35[0], a6);
    (*(v38 + 8))(v37, v39);
  }

  return result;
}

double sub_1006F89AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v47 = v46 - v8;
  v9 = type metadata accessor for AspectRatio();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(qword_10097DB40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - v15;
  v17 = sub_10002849C(&qword_100970F20);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v19 = v46 - v18;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for FramedVideo();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  type metadata accessor for NilState();
  v48 = v19;
  StateLens.init(_:)();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (FramedVideo.artwork.getter())
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    (*(v10 + 8))(v12, v9);
    FramedMedia.isFullWidth.getter();
  }

  v20 = FramedMedia.caption.getter();
  v21 = [v20 length];

  if (v21 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v22)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for FontUseCase();
      sub_1000056A8(v23, qword_1009D15F8);
      v24 = type metadata accessor for Feature();
      v52 = v24;
      v53 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
      v25 = sub_1000056E0(aBlock);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    }

    v26 = FramedMedia.caption.getter();
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
    *(v31 + 16) = sub_10010279C;
    *(v31 + 24) = v30;
    v53 = sub_1001027AC;
    v54 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v52 = &unk_1008CFAE8;
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
      v35 = qword_10096E220;
      v26 = v34;
      if (v35 == -1)
      {
LABEL_12:
        v36 = type metadata accessor for FontUseCase();
        v37 = sub_1000056A8(v36, qword_1009D15E0);
        v38 = *(v36 - 8);
        v39 = v47;
        (*(v38 + 16))(v47, v37, v36);
        (*(v38 + 56))(v39, 0, 1, v36);
        v40 = type metadata accessor for Feature();
        v52 = v40;
        v53 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
        v41 = sub_1000056E0(aBlock);
        (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10002B894(v39, &qword_100972ED0);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for StaticDimension();
        sub_1000056A8(v42, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v42, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  CGSize.integral.getter();
  v44 = v43;
  (*(v49 + 8))(v48, v50);

  return v44;
}

double sub_1006F931C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v112 = a5;
  ObjectType = a2;
  v7 = type metadata accessor for PrivacyTypeLayout();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v100 = *(v9 - 8);
  v101 = v9;
  __chkstk_darwin(v9);
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontUseCase();
  v107 = *(v11 - 8);
  v108 = v11;
  __chkstk_darwin(v11);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PrivacyTypeStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v109 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v19 = type metadata accessor for PrivacyTypeLayout.Metrics();
  v103 = *(v19 - 8);
  v104 = v19;
  __chkstk_darwin(v19);
  v87 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = sub_10002849C(qword_10097DB40);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v28 = sub_10002849C(&qword_100970F20);
  v90 = *(v28 - 8);
  v91 = v28;
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_10002C0AC(a1, v119);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyType();
  swift_dynamicCast();
  (*(v25 + 16))(v27, ObjectType, v24);
  v31 = v112;
  type metadata accessor for NilState();
  v89 = v30;
  StateLens.init(_:)();
  v32 = v119[5];
  v33 = PrivacyType.artwork.getter();
  PrivacyType.style.getter();
  ObjectType = swift_getObjectType();
  sub_10035FDE8(v33, v18, v31, v23);

  v34 = *(v14 + 8);
  v88 = v18;
  v34(v18, v13);
  v35 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v36 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v85 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v84 = LayoutViewPlaceholder.init(representing:)();
  v102 = v23;
  PrivacyTypeLayout.Metrics.iconSize.getter();
  v111 = v35;
  v37 = v109;
  swift_allocObject();
  v38 = LayoutViewPlaceholder.init(representing:)();
  PrivacyType.style.getter();
  v39 = (*(v14 + 88))(v37, v13);
  v86 = v36;
  v83 = v38;
  if (v39 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v39 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v39 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v46 = v106;
      if (qword_10096E090 != -1)
      {
        swift_once();
      }

      v47 = v108;
      v48 = sub_1000056A8(v108, qword_1009D1130);
      (*(v107 + 16))(v46, v48, v47);
      v45 = 4;
      goto LABEL_13;
    }

    v42 = v106;
    if (qword_10096E088 != -1)
    {
      swift_once();
    }

    v43 = v108;
    v44 = sub_1000056A8(v108, qword_1009D1118);
    (*(v107 + 16))(v42, v44, v43);
    v34(v37, v13);
    goto LABEL_9;
  }

  if (qword_10096E088 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v40 = v108;
    v41 = sub_1000056A8(v108, qword_1009D1118);
    (*(v107 + 16))(v106, v41, v40);
LABEL_9:
    v45 = 1;
LABEL_13:
    v109 = v45;
    sub_100005744(0, &qword_1009730E0);
    v49 = v112;
    v50 = [v112 traitCollection];
    v51 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.title.getter();
    v52 = type metadata accessor for Feature();
    v119[3] = v52;
    v98 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
    v119[4] = v98;
    v53 = sub_1000056E0(v119);
    v105 = v32;
    v54 = *(v52 - 8);
    v55 = *(v54 + 104);
    v97 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v95 = v54 + 104;
    v96 = v55;
    v55(v53);
    v56 = v51;
    isFeatureEnabled(_:)();
    sub_100007000(v119);
    v57 = v99;
    v82 = v56;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v58 = v101;
    v32 = v100[1];
    v32(v57, v101);
    if (qword_10096E098 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v108, qword_1009D1148);
    v59 = [v49 traitCollection];
    v60 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyType.detail.getter();
    v118[3] = v52;
    v118[4] = v98;
    v61 = sub_1000056E0(v118);
    v96(v61, v97, v52);
    v62 = v60;
    isFeatureEnabled(_:)();
    sub_100007000(v118);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v32(v57, v58);
    v63 = PrivacyType.categories.getter();
    v64 = v63;
    if (v63 >> 62)
    {
      v74 = v63;
      v75 = _CocoaArrayWrapper.endIndex.getter();
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
      v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v70 = *(v68 + 8 * v67 + 32);
    }

    v71 = sub_10037A62C(v70, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_100033548(0, *(v69 + 2) + 1, 1, v69);
    }

    v73 = *(v69 + 2);
    v72 = *(v69 + 3);
    if (v73 >= v72 >> 1)
    {
      v69 = sub_100033548((v72 > 1), v73 + 1, 1, v69);
    }

    ++v67;

    v116 = v111;
    v117 = &protocol witness table for LayoutViewPlaceholder;
    *&v115 = v71;
    *(v69 + 2) = v73 + 1;
    sub_100005A38(&v115, &v69[5 * v73 + 4]);
    v68 = v66;
  }

  while (v65 != v67);
LABEL_29:

  v76 = [v112 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v77 = v111;
  swift_allocObject();
  v78 = LayoutViewPlaceholder.init(representing:)();
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
  sub_10002C0AC(v119, v114);
  sub_10002C0AC(v118, &v113);

  PrivacyType.style.getter();
  v79 = v92;
  PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)();
  sub_100708188(&qword_10097AA30, &type metadata accessor for PrivacyTypeLayout);
  v80 = v94;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v93 + 8))(v79, v80);
  sub_100007000(v118);
  sub_100007000(v119);
  (*(v107 + 8))(v106, v108);
  (*(v103 + 8))(v102, v104);
  (*(v90 + 8))(v89, v91);

  return a3;
}

double sub_1006FA0C8(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v48 = a5;
  v40 = a4;
  v41 = a3;
  v37 = type metadata accessor for FloatingPointRoundingRule();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FontSource();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for Separator.Position();
  v10 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Separator();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ComponentLayoutOptions();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(qword_10097DB40);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v45 = sub_10002849C(&qword_100970F20);
  v42 = *(v45 - 8);
  v22 = __chkstk_darwin(v45);
  v24 = &v35 - v23;
  (*(v19 + 16))(v21, v41, v18, v22);
  type metadata accessor for NilState();
  v41 = v24;
  StateLens.init(_:)();
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v18) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = v17;
  v26 = v38;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v39);
  *v9 = UIFontTextStyleBody;
  v27 = v44;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v44);
  v51 = type metadata accessor for StaticDimension();
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(v50);
  v49[3] = v27;
  v49[4] = &protocol witness table for FontSource;
  v28 = sub_1000056E0(v49);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v43;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    Separator.verticalOutset.getter();
    (*(v46 + 8))(v30, v47);
    sub_10002A400(v50, v51);
    v31 = v35;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v32 = v48;
    AnyDimension.value(in:rounded:)();
    (*(v36 + 8))(v31, v37);
    sub_100007000(v50);
  }

  else
  {
    v33 = v43;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v32 = v48;
    Separator.height(in:)();
    (*(v46 + 8))(v33, v47);
  }

  swift_getObjectType();
  sub_1002B1794(v32);
  (*(v42 + 8))(v41, v45);
  return a1;
}

double sub_1006FA838(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v32 = a3;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Separator();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(qword_10097DB40);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v31 = sub_10002849C(&qword_100970F20);
  v18 = *(v31 - 8);
  v19 = __chkstk_darwin(v31);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  swift_getObjectType();
  sub_100631DB4(a4, v13);
  static ComponentLayoutOptions.separatorHidden.getter();
  sub_100708188(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v8 + 8))(v10, v7);
  v22 = sub_100633FAC(a4);
  if (v17)
  {
    v23 = v22;
    Separator.verticalOutset.getter();
    sub_10002A400(v35, v35[3]);
    v24 = v27;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
    sub_100007000(v35);
  }

  else
  {
    CGSize.adding(separator:in:)();
    v23 = v25;
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
  }

  return v23;
}

double sub_1006FACEC(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = type metadata accessor for FloatingPointRoundingRule();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AspectRatio();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(qword_10097DB40);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_10002849C(&qword_100970F20);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for FramedArtwork();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  type metadata accessor for NilState();
  v63 = v23;
  StateLens.init(_:)();
  if ((FramedMedia.isFullWidth.getter() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = FramedArtwork.artwork.getter();
  v26 = v66;
  if (v25)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    FramedMedia.isFullWidth.getter();
    if ((FramedMedia.isFullWidth.getter() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.width(fromHeight:)();
      v29(v16, v13);
    }
  }

  v30 = FramedMedia.caption.getter();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    FramedMedia.ordinal.getter();
    if (v32)
    {
      if (qword_10096E228 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for FontUseCase();
      sub_1000056A8(v33, qword_1009D15F8);
      v34 = type metadata accessor for Feature();
      v68 = v34;
      v69 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
      v35 = sub_1000056E0(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      isFeatureEnabled(_:)();
      sub_100007000(aBlock);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      if (qword_10096E690 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for StaticDimension();
      sub_1000056A8(v36, qword_1009D2368);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_10096E6A0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v36, qword_1009D2398);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v37(v26, v38);
      if (qword_10096E698 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v36, qword_1009D2380);
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v37(v26, v38);
    }

    v39 = FramedMedia.caption.getter();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_100126854;
    *(v44 + 24) = v43;
    v69 = sub_100126848;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006606C4;
    v68 = &unk_1008CFCF0;
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
      v48 = qword_10096E220;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = type metadata accessor for FontUseCase();
        v50 = sub_1000056A8(v49, qword_1009D15E0);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = type metadata accessor for Feature();
        v68 = v53;
        v69 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
        v54 = sub_1000056E0(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        isFeatureEnabled(_:)();
        sub_100007000(aBlock);
        static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

        sub_10002B894(v52, &qword_100972ED0);
        if (qword_10096E690 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for StaticDimension();
        sub_1000056A8(v55, qword_1009D2368);
        AnyDimension.topMargin(from:in:)();
        if (qword_10096E698 != -1)
        {
          swift_once();
        }

        sub_1000056A8(v55, qword_1009D2380);
        AnyDimension.bottomMargin(from:in:)();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  CGSize.integral.getter();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_1006FB8DC(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = type metadata accessor for PrivacyFooterLayout.Metrics();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PrivacyFooterLayout();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for LabelPlaceholderCompatibility();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(qword_10097DB40);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v40 = sub_10002849C(&qword_100970F20);
  v20 = *(v40 - 8);
  __chkstk_darwin(v40);
  v22 = &v39 - v21;
  sub_10002C0AC(a1, v48);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyFooter();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E078 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  sub_1000056A8(v23, qword_1009D10E8);
  v24 = [v46 traitCollection];
  v25 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyFooter.bodyText.getter();
  LinkableText.styledText.getter();

  v26 = dispatch thunk of StyledText.asAttributedString(using:)();

  v27 = type metadata accessor for Feature();
  v49 = v27;
  v50 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v28 = sub_1000056E0(v48);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  v29 = v26;
  v30 = v25;
  isFeatureEnabled(_:)();
  sub_100007000(v48);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v13 + 8))(v15, v39);
  if (qword_10096D520 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_1000056A8(v42, qword_1009CEBE8);
  (*(v41 + 16))(v43, v32, v31);
  v33 = v49;
  v34 = v50;
  v35 = sub_10002A400(v48, v49);
  v47[3] = v33;
  v47[4] = *(v34 + 8);
  v36 = sub_1000056E0(v47);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  PrivacyFooterLayout.init(metrics:bodyLabel:actionButtons:)();
  sub_100708188(&unk_10098DE10, &type metadata accessor for PrivacyFooterLayout);
  v37 = v45;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v44 + 8))(v12, v37);
  (*(v20 + 8))(v22, v40);
  sub_100007000(v48);

  return a3;
}

unint64_t sub_1006FBF5C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v66 = a5;
  v69 = a3;
  v70 = type metadata accessor for LabelPlaceholderCompatibility();
  v53 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for PrivacyHeaderLayout();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FontUseCase();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(qword_10097DB40);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v61 = sub_10002849C(&qword_100970F20);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v20 = &v52 - v19;
  sub_10002C0AC(a1, v78);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyHeader();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  type metadata accessor for NilState();
  v57 = v20;
  StateLens.init(_:)();
  v21 = v81;
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v11, qword_1009D10D0);
  v23 = [v66 traitCollection];
  v71 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v12 + 16))(v14, v22, v11);
  v55 = type metadata accessor for DynamicTypeLinkedLabel();
  v24 = objc_allocWithZone(v55);
  v25 = sub_1002F5B8C(v14, 0, 0);
  PrivacyHeader.bodyText.getter();
  v26 = LinkableText.linkedSubstrings.getter();
  v27 = sub_1000D6F24(v26, sub_10041DBBC);

  v28 = LinkableText.styledText.getter();
  v54 = v25;
  sub_1002F6004(v28, 0, v27);

  result = PrivacyHeader.supplementaryItems.getter();
  v30 = result;
  if (result >> 62)
  {
    v51 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v30 = v51;
    v31 = result;
  }

  else
  {
    v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v21;
  if (v31)
  {
    if (v31 < 1)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v68 = v30 & 0xC000000000000001;
    v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v33 = (v53 + 8);
    v34 = _swiftEmptyArrayStorage;
    v69 = v30;
    do
    {
      if (v68)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      PrivacyHeaderSupplementaryItem.bodyText.getter();
      LinkableText.styledText.getter();

      v35 = v71;
      v36 = dispatch thunk of StyledText.asAttributedString(using:)();

      v37 = type metadata accessor for Feature();
      v79 = v37;
      v80 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
      v38 = sub_1000056E0(v78);
      (*(*(v37 - 8) + 104))(v38, v67, v37);
      v39 = v36;
      v40 = v35;
      isFeatureEnabled(_:)();
      sub_100007000(v78);
      LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*v33)(v8, v70);
      sub_10002C0AC(v78, &v75);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1000337A4(0, *(v34 + 2) + 1, 1, v34);
      }

      v42 = *(v34 + 2);
      v41 = *(v34 + 3);
      if (v42 >= v41 >> 1)
      {
        v34 = sub_1000337A4((v41 > 1), v42 + 1, 1, v34);
      }

      ++v32;

      sub_100007000(v78);
      *(v34 + 2) = v42 + 1;
      sub_100005A38(&v75, &v34[5 * v42 + 4]);
    }

    while (v31 != v32);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v43 = [v66 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v44 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v45 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096E5A0 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = sub_1000056A8(v60, qword_1009D1FD8);
  (*(v58 + 16))(v62, v47, v46);
  PrivacyHeader.isDetailHeader.getter();
  v79 = v55;
  v80 = &protocol witness table for UIView;
  v78[0] = v54;
  v48 = v54;
  sub_1002A4AF4(v34);

  v76 = v44;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  *&v75 = v45;
  v73 = v44;
  v72 = v45;
  swift_retain_n();
  v49 = v63;
  PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
  sub_100708188(&unk_10097E560, &type metadata accessor for PrivacyHeaderLayout);
  v50 = v65;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v64 + 8))(v49, v50);
  (*(v59 + 8))(v57, v61);
}

double sub_1006FC9B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SmallBreakoutLayout();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(qword_10097DB40);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v28 = sub_10002849C(&qword_100970F20);
  v16 = *(v28 - 8);
  v17 = __chkstk_darwin(v28);
  v19 = &v27 - v18;
  (*(v13 + 16))(v15, a2, v12, v17);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  sub_100128864(a4, v8);
  swift_getObjectType();
  sub_100129BEC();
  v20 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v21 = LayoutViewPlaceholder.init(representing:)();
  v34 = v20;
  v35 = &protocol witness table for LayoutViewPlaceholder;
  v33 = v21;
  swift_allocObject();
  v22 = LayoutViewPlaceholder.init(representing:)();
  v31 = v20;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v22;
  SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
  sub_100708188(&qword_10098D0B0, &type metadata accessor for SmallBreakoutLayout);
  v23 = v29;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v25 = v24;
  (*(v9 + 8))(v11, v23);
  (*(v16 + 8))(v19, v28);
  return v25;
}

double sub_1006FCD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v26 = a3;
  v28 = type metadata accessor for ArcadeState();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(qword_10097DB40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_10002849C(&qword_100970F20);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_10002C0AC(a1, &v29);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ArcadeShowcase();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  type metadata accessor for NilState();
  StateLens.init(_:)();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v18 = v29;
  ArcadeSubscriptionManager.subscriptionState.getter();
  if (ArcadeState.isSubscribed.getter())
  {
    v19 = ArcadeShowcase.subscribedDescription.getter();
  }

  else
  {
    v19 = ArcadeShowcase.unsubscribedDescription.getter();
  }

  v21 = v19;
  v22 = v20;
  v23 = v27;
  swift_getObjectType();
  v24 = sub_10011DC28(v21, v22, v23);

  (*(v7 + 8))(v9, v28);
  (*(v15 + 8))(v17, v14);

  return v24;
}

double sub_1006FD080(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v54 = type metadata accessor for EditorialQuoteLayout.Metrics();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for EditorialQuoteLayout();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LabelPlaceholderCompatibility();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(qword_10097DB40);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v49 - v15;
  v55 = sub_10002849C(&qword_100970F20);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = v49 - v17;
  sub_10002C0AC(a1, &v69);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for EditorialQuote();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  type metadata accessor for NilState();
  v51 = v18;
  StateLens.init(_:)();
  v19 = v72;
  [a5 pageMarginInsets];
  CGSize.subtracting(insets:)();
  v20 = [a5 traitCollection];
  LOBYTE(v13) = UITraitCollection.isSizeClassCompact.getter();

  v21 = 4;
  if ((v13 & 1) == 0)
  {
    v21 = 1;
  }

  v60 = v21;
  v50 = v19;
  EditorialQuote.text.getter();
  v49[1] = v22;
  v23 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096D4F8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  sub_1000056A8(v24, qword_1009CEBA8);
  v25 = [a5 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v26 = type metadata accessor for Feature();
  v61 = a5;
  v27 = v26;
  v70 = v26;
  v28 = sub_100708188(&qword_100972E50, &type metadata accessor for Feature);
  v71 = v28;
  v29 = sub_1000056E0(&v69);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v31 = *(v27 - 8);
  v49[0] = v23;
  v32 = *(v31 + 104);
  v32(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  isFeatureEnabled(_:)();
  sub_100007000(&v69);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33 = *(v63 + 8);
  v63 += 8;
  v33(v12, v62);
  v50 = EditorialQuote.attribution.getter();
  if (qword_10096D500 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v24, qword_1009CEBC0);
  v34 = [v61 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v67 = v27;
  v68 = v28;
  v35 = sub_1000056E0(v66);
  v32(v35, v30, v27);
  isFeatureEnabled(_:)();
  sub_100007000(v66);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v33(v12, v62);
  if (qword_10096D4F0 != -1)
  {
    swift_once();
  }

  v36 = v54;
  v37 = sub_1000056A8(v54, qword_1009CEB90);
  (*(v52 + 16))(v56, v37, v36);
  v38 = v70;
  v39 = v71;
  v40 = sub_10002A400(&v69, v70);
  v65[3] = v38;
  v65[4] = *(v39 + 8);
  v41 = sub_1000056E0(v65);
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v67;
  v43 = v68;
  v44 = sub_10002A400(v66, v67);
  v64[3] = v42;
  v64[4] = *(v43 + 8);
  v45 = sub_1000056E0(v64);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  v46 = v57;
  EditorialQuoteLayout.init(metrics:quoteLabel:attributionLabel:)();
  sub_100708188(&unk_10098D260, &type metadata accessor for EditorialQuoteLayout);
  v47 = v59;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  (*(v58 + 8))(v46, v47);
  (*(v53 + 8))(v51, v55);
  sub_100007000(v66);
  sub_100007000(&v69);

  return a3;
}