void sub_1000E7BD4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1000E7C64()
{
  sub_10000C518(&qword_100930CA0);
  v0 = sub_100752DE4();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v3 = sub_100752E44();
    sub_10000D0FC(v3, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    v4 = [objc_allocWithZone(AMSUserNotificationAuthorizationOptions) init];
    [v4 setUserInitiated:1];
    v5 = [objc_allocWithZone(AMSUserNotificationAuthorizationTask) initWithBundleIdentifier:v2 options:v4];

    v6 = [v5 requestAuthorization];
    v11[4] = sub_1000E80C4;
    v11[5] = v0;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1000E7BD4;
    v11[3] = &unk_100867C80;
    v7 = _Block_copy(v11);

    [v6 addFinishBlock:v7];
    _Block_release(v7);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v8 = sub_100752E44();
    sub_10000D0FC(v8, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    sub_1000E8070();
    swift_allocError();
    *v9 = 0;
    sub_100752DA4();
  }

  return v0;
}

unint64_t sub_1000E8070()
{
  result = qword_100927FB0;
  if (!qword_100927FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FB0);
  }

  return result;
}

uint64_t sub_1000E80CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000E80E4()
{
  result = qword_100927FB8;
  if (!qword_100927FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100927FB8);
  }

  return result;
}

unint64_t sub_1000E8144()
{
  result = qword_100927FC0;
  if (!qword_100927FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FC0);
  }

  return result;
}

double sub_1000E81E0(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10074F704();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1000E82B4(a1, v4);
  v7 = v6;
  sub_1000E94F8(v4);
  return v7;
}

uint64_t sub_1000E82B4(uint64_t a1, id a2)
{
  v124 = a2;
  v3 = sub_10000C518(&qword_100927FD0);
  v116 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = &v88 - v4;
  v110 = sub_100748604();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v111 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100748624();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_100750E94();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v88 - v9;
  v101 = sub_100744654();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100750954();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v88 - v13;
  __chkstk_darwin(v14);
  v96 = &v88 - v15;
  v108 = sub_100750BD4();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v120 = &v88 - v18;
  v119 = sub_100741084();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100749A94();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v90 = &v88 - v22;
  v123 = sub_100744604();
  v23 = *(v123 - 8);
  __chkstk_darwin(v123);
  v25 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v26 - 8);
  v127 = sub_10000C518(&qword_100927FD8);
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v88 - v27;
  v28 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v28 - 8);
  v30 = &v88 - v29;
  v31 = sub_10074F704();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v128 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744624();
  sub_1000E962C(&qword_100927FE0, &type metadata accessor for ProductReview);
  v34 = a1;
  result = sub_1007468B4();
  v125 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v89 = v3;
  sub_100037990(v124, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v121 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    sub_100746914();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_1000E94F8(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v128, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  sub_100746964();
  v40 = v126;
  sub_100752EB4();
  sub_100744614();
  v41 = v123;
  v42 = (*(v23 + 88))(v25, v123);
  if (v42 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    goto LABEL_7;
  }

  if (v42 == enum case for ProductReview.ReviewSource.user(_:))
  {
    (*(v23 + 96))(v25, v41);
    v43 = *v25;
    sub_1000E9564();
    v44 = v127;
    sub_100752E84();
    v45 = sub_10028F604(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v128;
    sub_10074F674();
    v47 = sub_10007DC04();
    swift_getObjectType();
    sub_1004368B8(v43, v45 & 1, v45 & 1, v47);

    swift_unknownObjectRelease();

    (*(v122 + 8))(v40, v44);
    return (*(v121 + 8))(v46, v38);
  }

  if (v42 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
  {
LABEL_7:

    (*(v122 + 8))(v40, v127);
    (*(v121 + 8))(v128, v38);
    return (*(v23 + 8))(v25, v41);
  }

  (*(v23 + 96))(v25, v41);
  v48 = *v25;
  sub_1000E9564();
  sub_100752E84();
  v88 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v49 = v90;
    sub_1007468A4();
    v50 = v91;
    sub_100749A14();
    sub_1000E962C(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
    v51 = v93;
    sub_100754324();
    v52 = *(v92 + 8);
    v52(v50, v51);
    v52(v49, v51);
  }

  sub_10074F674();
  swift_getKeyPath();
  sub_100746914();

  v53 = v134;
  v54 = v117;
  sub_100744644();
  v55 = sub_1002AE534(v54, 0, v53);
  v118[1](v54, v119);
  v56 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
  v57 = [v55 length];
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v53;
  *(v58 + 32) = v56;
  *(v58 + 40) = 1;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_100047814;
  *(v59 + 24) = v58;
  v132 = sub_1000B18A8;
  v133 = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v131 = &unk_100867D88;
  v60 = _Block_copy(aBlock);
  v124 = v53;
  v61 = v56;

  [v55 enumerateAttributesInRange:0 options:v57 usingBlock:{0x100000, v60}];

  _Block_release(v60);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v63 = v94;
  sub_100750944();
  v64 = v95;
  sub_1007508F4();
  v65 = *(v97 + 8);
  v66 = v98;
  v65(v63, v98);
  sub_100750904();
  v65(v64, v66);
  sub_100750BB4();
  v119 = v61;
  sub_100750C04();
  v67 = sub_100744684();
  v69 = v68;
  v70 = sub_100744634();
  v71 = v99;
  sub_100744664();
  v72 = sub_1002AF1FC(v67, v69, v70, v71);

  (*(v100 + 8))(v71, v101);
  v118 = v72;
  isEscapingClosureAtFileLocation = v102;
  sub_100750E84();
  v53 = v115;
  if (qword_100921190 != -1)
  {
LABEL_20:
    swift_once();
  }

  v123 = v48;
  v73 = sub_100750534();
  sub_10000D0FC(v73, qword_1009811E8);
  sub_100750E54();
  (*(v104 + 8))(isEscapingClosureAtFileLocation, v105);
  sub_100750BB4();
  v74 = v106;
  sub_100750C14();
  if (qword_1009207C8 != -1)
  {
    swift_once();
  }

  v75 = v110;
  v76 = sub_10000D0FC(v110, qword_10097EDD8);
  (*(v109 + 16))(v111, v76, v75);
  v77 = v108;
  v131 = v108;
  v132 = &protocol witness table for LabelPlaceholder;
  v78 = sub_10000D134(aBlock);
  v79 = v107;
  v80 = *(v107 + 16);
  v81 = v120;
  v80(v78, v120, v77);
  v129[3] = v77;
  v129[4] = &protocol witness table for LabelPlaceholder;
  v82 = sub_10000D134(v129);
  v80(v82, v74, v77);
  v83 = v112;
  sub_100748614();
  sub_1000E962C(&qword_100927FF0, &type metadata accessor for ReviewSummaryLayout);
  v84 = v114;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v85 = v124;
  v86 = v89;
  sub_100751254();

  (*(v116 + 8))(v53, v86);
  (*(v113 + 8))(v83, v84);
  v87 = *(v79 + 8);
  v87(v74, v77);
  v87(v81, v77);
  (*(v122 + 8))(v126, v127);
  return (*(v121 + 8))(v128, v88);
}

uint64_t sub_1000E94F8(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100926C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E9564()
{
  result = qword_100927FE8;
  if (!qword_100927FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100927FE8);
  }

  return result;
}

uint64_t sub_1000E95BC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000E9614(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E962C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000E9674(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius] = 0x403B000000000000;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_itemLayoutContext;
  v20 = sub_1007469A4();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100921008 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v15, qword_100980D50);
  v23 = *(v16 + 16);
  v23(v18, v22, v15);
  v24 = type metadata accessor for DynamicTypeLinkedTextView();
  v25 = objc_allocWithZone(v24);
  *&v25[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v25[qword_100929BE8] = 0;
  v54.receiver = v25;
  v54.super_class = v24;
  v46 = v24;
  v26 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v27 = v26;
  sub_100748094();
  sub_1007480C4();

  v28 = v27;
  [v28 setSelectable:1];
  v29 = v28;
  [v29 setEditable:0];
  [v29 setScrollEnabled:0];
  [v29 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v29 setContentInsetAdjustmentBehavior:2];
  v30 = objc_opt_self();
  v31 = [v30 clearColor];
  [v29 setBackgroundColor:v31];

  [v29 setDelegate:v29];
  [v29 _setInteractiveTextSelectionDisabled:1];

  (*(v16 + 8))(v18, v15);
  *&v5[v21] = v29;
  v32 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *&v5[v32] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] = 0;
  v33 = type metadata accessor for BannerCollectionViewCell();
  v53.receiver = v5;
  v53.super_class = v33;
  v34 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v35 = [v34 contentView];
  [v34 layoutMargins];
  [v35 setLayoutMargins:?];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
  v37 = *&v34[v36];
  v38 = [v30 quaternarySystemFillColor];
  [v37 setBackgroundColor:v38];

  [*&v34[v36] _setCornerRadius:27.0];
  v39 = [v34 contentView];
  [v39 addSubview:*&v34[v36]];

  if (*&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] || *&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow])
  {
    v40 = v47;
    (*(v48 + 104))(v47, enum case for DirectionalTextAlignment.leading(_:), v49);
    sub_100150994(v40);
  }

  else
  {
    v44 = v46;
    v52.receiver = *&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
    receiver = v52.receiver;
    v52.super_class = v46;
    v45 = objc_msgSendSuper2(&v52, "textAlignment");
    v51.receiver = receiver;
    v51.super_class = v44;
    objc_msgSendSuper2(&v51, "setTextAlignment:", 1);
    v50.receiver = receiver;
    v50.super_class = v44;
    if (objc_msgSendSuper2(&v50, "textAlignment") != v45)
    {
      sub_100150D10();
    }
  }

  v41 = [v34 contentView];

  [v41 addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView]];
  return v34;
}

void sub_1000E9D5C(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView);
  if (v4)
  {
    v5 = *(v1 + v2);
    v6 = v4;
    sub_100743254();
  }
}

id sub_1000E9DE4(void *a1)
{
  v2 = v1;
  v4 = sub_10074AB44();
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] || *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow])
  {
    (*(v5 + 104))(v8, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_100150994(v8);
  }

  else
  {
    v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
    v16 = type metadata accessor for DynamicTypeLinkedTextView();
    v20.receiver = v15;
    v20.super_class = v16;
    v17 = objc_msgSendSuper2(&v20, "textAlignment");
    v19.receiver = v15;
    v19.super_class = v16;
    objc_msgSendSuper2(&v19, "setTextAlignment:", 1);
    v18.receiver = v15;
    v18.super_class = v16;
    if (objc_msgSendSuper2(&v18, "textAlignment") != v17)
    {
      sub_100150D10();
    }
  }

  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow];
  if (v9)
  {
    if (a1)
    {
      type metadata accessor for BannerButtonRow();
      v10 = v9;
      v11 = a1;
      v12 = sub_100753FC4();

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v13 = v9;
    }

    v10 = [v2 contentView];
    [v10 addSubview:v9];

LABEL_10:
  }

  return [v2 setNeedsLayout];
}

void sub_1000E9FEC()
{
  sub_100016C60(0, &qword_1009448C0);
  v1 = sub_100753A64();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v2;
    v5 = v3;
    v6 = [v4 configurationByApplyingConfiguration:v8];
    sub_1007432D4();
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v8 = v1;
    v4 = v3;
    v7 = v8;
    sub_1007432D4();
  }

  v1 = v8;
LABEL_7:
}

uint64_t sub_1000EA104()
{
  v1 = v0;
  v2 = sub_100751374();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BannerCollectionViewCell();
  v93.receiver = v0;
  v93.super_class = v4;
  objc_msgSendSuper2(&v93, "layoutSubviews");
  v5 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setFrame:{v7, v9, v11, v13}];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork];

  v16 = [v1 traitCollection];
  v17 = sub_1000EAD9C(v15);
  v19 = v18;
  v21 = v20;

  v22 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow] && (swift_beginAccess(), sub_100016C60(0, &qword_10093B420), , v23 = sub_1007532D4(), , (v23 & 1) != 0) && *&v1[v22])
  {
    *&v73 = *&v1[v22];
    type metadata accessor for BannerButtonRow();
    sub_100750434();
  }

  else
  {
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
  }

  v91[0] = v88;
  v91[1] = v89;
  v92 = v90;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
  [v24 setFrame:{v7, v9, v11, v13}];
  v25 = *&v1[v14];
  if (*&v1[v22])
  {
    if ((v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics] & 1) == 0)
    {
      v26 = 15.0;
      if (v25)
      {
        v27 = 15.0;
      }

      else
      {
        v27 = 22.0;
      }

      v60 = xmmword_1007AB750;
      v28 = 9.0;
      goto LABEL_18;
    }

LABEL_13:
    v60 = xmmword_1007AB740;
    v28 = 17.0;
    v27 = 0.0;
    v26 = 0.0;
    goto LABEL_18;
  }

  if (v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics])
  {
    goto LABEL_13;
  }

  if (v25)
  {
    v27 = 15.0;
  }

  else
  {
    v27 = 22.0;
  }

  v60 = xmmword_1007AB760;
  v28 = 9.0;
  v26 = v27;
LABEL_18:
  v72 = v24;
  type metadata accessor for DynamicTypeLinkedTextView();
  sub_100750434();
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView])
  {
    *&v73 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
    sub_1007433C4();
    sub_100750434();
  }

  else
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
  }

  sub_1000746BC(v91, v67);
  v29 = [v1 traitCollection];
  v30 = sub_1007537D4();

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v1 traitCollection];
    v33 = [v32 preferredContentSizeCategory];

    v31 = sub_100753924();
  }

  v73 = v60;
  v74 = v60;
  *&v75 = v28;
  *(&v75 + 1) = v27;
  *&v76 = v28;
  *(&v76 + 1) = v26;
  v77 = xmmword_1007AB770;
  v78 = xmmword_1007AB780;
  sub_100012160(&v61, v79);
  v80[0] = v69;
  v80[1] = v70;
  v85[0] = v67[0];
  v81 = v71;
  v82 = v17;
  v83 = v19;
  v34 = v21 & 1;
  v84 = v21 & 1;
  v85[1] = v67[1];
  v86 = v68;
  v87 = v31 & 1;
  v35 = [v1 traitCollection];
  v63 = v75;
  v64 = v76;
  v65 = v77;
  v66 = v78;
  v61 = v73;
  v62 = v74;
  if (v31)
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v71 = sub_1000EB8CC();
  }

  else
  {
    *(&v70 + 1) = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v71 = sub_1000EB820();
  }

  v36 = swift_allocObject();
  *&v69 = v36;
  sub_10000C824(v79, v36 + 112);
  sub_1000746BC(v80, v36 + 152);
  sub_1000746BC(v85, v36 + 216);
  v37 = v64;
  *(v36 + 48) = v63;
  *(v36 + 64) = v37;
  v38 = v66;
  *(v36 + 80) = v65;
  *(v36 + 96) = v38;
  v39 = v62;
  *(v36 + 16) = v61;
  *(v36 + 32) = v39;
  *(v36 + 192) = v17;
  *(v36 + 200) = v19;
  *(v36 + 208) = v34;
  sub_100012160(&v69, &v61);
  sub_10000C888(&v61, *(&v62 + 1));
  sub_100751244();

  sub_10000C620(&v61);
  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v40)
  {
    v41 = v40;
    [v1 bounds];
    v42 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = &v41[v42];
    v46 = v57;
    (*(v58 + 16))(v57, v45, v59);
    sub_100751324();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    (*(v44 + 8))(v46, v43);
    [v41 setFrame:{v48, v50, v52, v54}];
  }

  sub_1000EB878(&v73);
  return sub_10000C8CC(v91, &unk_100924A60);
}

double sub_1000EA800(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v6[5] = a2;
  sub_100750434();
  sub_10000C888(v6, v6[3]);
  sub_100751254();
  v4 = v3;
  sub_10000C620(v6);
  return v4;
}

uint64_t sub_1000EA8C0(uint64_t a1, double a2, double a3)
{
  result = sub_10074ED54();
  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v10 = _swiftEmptyArrayStorage;
LABEL_2:
  v11 = 16 * v8 + 32;
  while (1)
  {
    if (v9 == v8)
    {

      sub_100251474(a1, v10, a2, a3);
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v12 = v11 + 16;
    ++v8;

    v13 = sub_10074ECB4();
    v15 = v14;

    v11 = v12;
    if (v15)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1002554F8(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v17 = *(v10 + 2);
      v16 = *(v10 + 3);
      if (v17 >= v16 >> 1)
      {
        result = sub_1002554F8((v16 > 1), v17 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v17 + 1;
      v18 = &v10[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_1000EAA28()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for BannerCollectionViewCell();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  sub_1000EB9D8(0);
  sub_1000E9D5C(0);
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = 0;

  sub_1000E9FEC();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v0[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v0[v2] = 0;

  v5 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow;
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  sub_1000E9DE4(v6);
  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
}

id sub_1000EAB78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BannerCollectionViewCell()
{
  result = qword_100928028;
  if (!qword_100928028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EACD0()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000EAD9C(uint64_t result)
{
  v1 = result;
  if (result)
  {
    sub_100016C60(0, &qword_1009448C0);

    v2 = sub_100753A64();
    if ((sub_10074F1A4() & 1) == 0)
    {

      return 0x4042000000000000;
    }

    v3 = v2;
    if (sub_10074F1D4())
    {
      v4 = sub_100743AC4();
    }

    else
    {
      if ((sub_10074F1C4() & 1) == 0)
      {

LABEL_12:

        return 0x4042000000000000;
      }

      v4 = sub_10056028C(v1, v2);
    }

    v5 = v4;

    if (v5)
    {
      [v5 size];
      v7 = v6;

      return v7;
    }

    goto LABEL_12;
  }

  return result;
}

double sub_1000EAEE0(uint64_t a1, __int128 *a2, void *a3)
{
  v74 = a3;
  v70 = a2;
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v64[-v5];
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10000C518(&qword_10092BBF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v64[-v12];
  sub_10074ED44();
  v14 = sub_100743E44();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_10000C8CC(v13, &qword_10092BBF0);
  }

  else
  {
    v16 = sub_100743E34();
    (*(v15 + 8))(v13, v14);
    v17 = 0.0;
    if (v16)
    {
      return v17;
    }
  }

  v18 = v74;
  [v74 pageMarginInsets];
  sub_1007535B4();
  sub_100753BA4();
  if (qword_100921008 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v7, qword_100980D50);
  v20 = *(v8 + 16);
  v20(v10, v19, v7);
  v21 = type metadata accessor for DynamicTypeLinkedTextView();
  v22 = objc_allocWithZone(v21);
  *&v22[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v22[qword_100929BE8] = 0;
  v95.receiver = v22;
  v95.super_class = v21;
  v23 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v24 = v23;
  sub_100748094();
  sub_1007480C4();

  v25 = v24;
  [v25 setSelectable:1];
  v26 = v25;
  [v26 setEditable:0];
  [v26 setScrollEnabled:0];
  [v26 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v26 setContentInsetAdjustmentBehavior:2];
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  [v26 setDelegate:v26];
  [v26 _setInteractiveTextSelectionDisabled:1];

  (*(v8 + 8))(v10, v7);
  v28 = v26;
  sub_10074EDA4();
  v29 = sub_100753064();

  [v28 setText:v29];

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v68 = v28;
  v31 = sub_10074ED64();
  v32 = [v18 traitCollection];
  v33 = sub_1000EAD9C(v31);
  v67 = v34;
  v65 = v35;

  sub_10074ED54();
  sub_10000C518(&unk_10092BC50);
  v36 = sub_1007532D4();

  v37 = 0;
  v38 = 0;
  if (v36)
  {

    v37 = sub_1000EB9D0;
    v38 = a1;
  }

  v66 = v33;
  v72 = v38;
  v73 = v37;
  v71 = [v18 traitCollection];
  *(&v76 + 1) = &type metadata for DynamicSizePlaceholder;
  v39 = sub_1000EB7CC();
  *&v77 = v39;
  *&v75 = sub_1000EB7C4;
  *(&v75 + 1) = v30;
  v69 = v30;

  if (!sub_10074ED64())
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v44 = v72;
    v43 = v73;
    if (v36)
    {
      goto LABEL_10;
    }

LABEL_12:
    v39 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_13;
  }

  v40 = sub_100744D34();
  swift_allocObject();
  v41 = sub_100744D24();
  v42 = sub_1000EB978();
  v44 = v72;
  v43 = v73;
  if ((v36 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v45 = &type metadata for DynamicSizePlaceholder;
  v46 = v44;
  v47 = v43;
LABEL_13:
  sub_10001B5AC(v43);
  v48 = v71;
  if (sub_1007537D4())
  {
    v49 = 1;
  }

  else
  {
    v50 = [v48 preferredContentSizeCategory];
    v49 = sub_100753924();
  }

  v51 = v70[3];
  v86 = v70[2];
  v87 = v51;
  v52 = v70[5];
  v88 = v70[4];
  v89 = v52;
  v53 = v70[1];
  v84 = *v70;
  v85 = v53;
  sub_100012160(&v75, v90);
  v91[0] = v41;
  v91[1] = 0;
  v91[2] = 0;
  v91[3] = v40;
  v91[4] = v42;
  v55 = v66;
  v54 = v67;
  v91[5] = v66;
  v91[6] = v67;
  v56 = v65 & 1;
  v92 = v65 & 1;
  v93[0] = v47;
  v93[1] = v46;
  v93[2] = 0;
  v93[3] = v45;
  v93[4] = v39;
  v94 = v49 & 1;
  v57 = [v74 traitCollection];
  v77 = v86;
  v78 = v87;
  v79 = v88;
  v80 = v89;
  v75 = v84;
  v76 = v85;
  if (v49)
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    v83 = sub_1000EB8CC();
  }

  else
  {
    v82 = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    v83 = sub_1000EB820();
  }

  v58 = swift_allocObject();
  *&v81 = v58;
  sub_10000C824(v90, v58 + 112);
  sub_1000746BC(v91, v58 + 152);
  sub_1000746BC(v93, v58 + 216);
  v59 = v78;
  *(v58 + 48) = v77;
  *(v58 + 64) = v59;
  v60 = v80;
  *(v58 + 80) = v79;
  *(v58 + 96) = v60;
  v61 = v76;
  *(v58 + 16) = v75;
  *(v58 + 32) = v61;
  *(v58 + 192) = v55;
  *(v58 + 200) = v54;
  *(v58 + 208) = v56;
  sub_100012160(&v81, &v75);
  sub_10000C888(&v75, *(&v76 + 1));
  sub_100751254();

  sub_10000C620(&v75);
  sub_100753BC4();
  v17 = v62;

  sub_1000164A8(v73);

  sub_1000EB878(&v84);
  return v17;
}

uint64_t sub_1000EB78C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000EB7CC()
{
  result = qword_100928038;
  if (!qword_100928038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928038);
  }

  return result;
}

unint64_t sub_1000EB820()
{
  result = qword_100928040;
  if (!qword_100928040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928040);
  }

  return result;
}

unint64_t sub_1000EB8CC()
{
  result = qword_100928048;
  if (!qword_100928048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928048);
  }

  return result;
}

uint64_t sub_1000EB920()
{
  sub_10000C620(v0 + 112);
  if (*(v0 + 176))
  {
    sub_10000C620(v0 + 152);
  }

  if (*(v0 + 240))
  {
    sub_10000C620(v0 + 216);
  }

  return _swift_deallocObject(v0, 256, 7);
}

unint64_t sub_1000EB978()
{
  result = qword_100923048;
  if (!qword_100923048)
  {
    sub_100744D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100923048);
  }

  return result;
}

id sub_1000EB9D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork] = a1;

  v9 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView;
  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView];
  if (*&v2[v8])
  {
    if (!v10)
    {
      v11 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v12 = *&v2[v9];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v9];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v9] = v11;
      v18 = v11;

      if (v18)
      {
        v19 = [v2 contentView];
        [v19 addSubview:v18];
      }

      [v2 setNeedsLayout];

      if (*&v2[v8])
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    if (v10)
    {
      [v10 removeFromSuperview];
      v14 = *&v2[v9];
    }

    else
    {
      v14 = 0;
    }

    *&v2[v9] = 0;

    [v2 setNeedsLayout];
  }

  if (*&v2[v8])
  {
LABEL_17:
    (*(v5 + 104))(v7, enum case for DirectionalTextAlignment.leading(_:), v4);
    sub_100150994(v7);
    goto LABEL_18;
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow])
  {
    goto LABEL_17;
  }

  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView];
  v16 = type metadata accessor for DynamicTypeLinkedTextView();
  v23.receiver = v15;
  v23.super_class = v16;
  v17 = objc_msgSendSuper2(&v23, "textAlignment");
  v22.receiver = v15;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, "setTextAlignment:", 1);
  v21.receiver = v15;
  v21.super_class = v16;
  if (objc_msgSendSuper2(&v21, "textAlignment") != v17)
  {
    sub_100150D10();
  }

LABEL_18:
  sub_1000E9FEC();
  return [v2 setNeedsLayout];
}

void sub_1000EBC80()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundViewCornerRadius) = 0x403B000000000000;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_messageTextView;
  if (qword_100921008 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v5, qword_100980D50);
  v13 = *(v6 + 16);
  v13(v8, v12, v5);
  v14 = type metadata accessor for DynamicTypeLinkedTextView();
  v15 = objc_allocWithZone(v14);
  *&v15[qword_100929BE0] = _swiftEmptyArrayStorage;
  *&v15[qword_100929BE8] = 0;
  v22.receiver = v15;
  v22.super_class = v14;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  v17 = v16;
  sub_100748094();
  sub_1007480C4();

  v18 = v17;
  [v18 setSelectable:1];
  v19 = v18;
  [v19 setEditable:0];
  [v19 setScrollEnabled:0];
  [v19 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v19 setContentInsetAdjustmentBehavior:2];
  v20 = [objc_opt_self() clearColor];
  [v19 setBackgroundColor:v20];

  [v19 setDelegate:v19];
  [v19 _setInteractiveTextSelectionDisabled:1];

  (*(v6 + 8))(v8, v5);
  *(v1 + v11) = v19;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_roundedBackgroundView;
  *(v1 + v21) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_bottomSeparatorView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtwork) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkTintColor) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_leadingArtworkSymbolConfiguration) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_buttonRow) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24BannerCollectionViewCell_shouldUseArcadeMetrics) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000EC0C8()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A584();
  sub_100039C50(v4, qword_10097DA08);
  sub_10000D0FC(v4, qword_10097DA08);
  if (qword_1009211D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009812A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074A574();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1000EC248(uint64_t a1, uint64_t *a2, NSString **a3)
{
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10074A584();
  sub_100039C50(v9, a2);
  sub_10000D0FC(v9, a2);
  v10 = *a3;
  *v8 = UIFontTextStyleCaption1;
  v8[1] = v10;
  (*(v6 + 104))(v8, enum case for FontUseCase.preferredFontDerivative(_:), v5);
  v11 = UIFontTextStyleCaption1;
  sub_10074A574();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000EC384()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A584();
  sub_100039C50(v4, qword_10097DA50);
  sub_10000D0FC(v4, qword_10097DA50);
  *v3 = 0xD000000000000018;
  *(v3 + 1) = 0x800000010076AA00;
  *(v3 + 2) = sub_1000EC4E4;
  *(v3 + 3) = 0;
  *(v3 + 4) = UIFontWeightRegular;
  (*(v1 + 104))(v3, enum case for FontUseCase.systemFont(_:), v0);
  sub_10074A574();
  return (*(v1 + 8))(v3, v0);
}

void sub_1000EC4E8()
{
  v0 = UIContentSizeCategoryExtraSmall;
  v1 = UIContentSizeCategoryLarge;
  if ((sub_100753964() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (sub_100753964())
  {
    v2 = sub_100753944();

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
  if ((sub_100753964() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (sub_100753964())
  {
    sub_100753944();
  }
}

void sub_1000EC680()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for TransitionViewContainer();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong superview];

    if (v3)
    {
      sub_100009D34();
      v4 = v0;
      v5 = sub_100753FC4();

      if (v5)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;
          [v4 bounds];
          [v7 setFrame:?];
        }
      }
    }
  }
}

void sub_1000EC798(void *a1)
{
  v1 = a1;
  sub_1000EC680();
}

id sub_1000EC808()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitionViewContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000EC88C()
{
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

double sub_1000EC978()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074EDB4();
  sub_1000ECBE4(&qword_1009280E0, &type metadata accessor for Banner);
  sub_1007468B4();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  if (sub_10074ED64())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  sub_10074ED54();
  sub_10000C518(&unk_10092BC50);
  v7 = sub_1007532D4();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v13 = v9;
  *(&v13 + 1) = 0x402E000000000000;
  v14 = v9;
  v15 = xmmword_1007AB890;
  v16 = v5;
  v17 = 0x4022000000000000;
  v18 = v8;
  v19 = xmmword_1007AB770;
  v20 = xmmword_1007AB780;
  v10 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  sub_1000EAEE0(v4, &v13, v10);
  v6 = v11;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_1000ECBE4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000ECC30(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_preferredIconWidth] = 0x404F000000000000;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle;
  v18 = enum case for Artwork.Style.roundedRect(_:);
  v19 = sub_10074F314();
  (*(*(v19 - 8) + 104))(&v5[v17], v18, v19);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel;
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100981A28);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_100745C84());
  *&v5[v20] = sub_100745C74();
  v25 = type metadata accessor for IconSilhouetteView();
  v32.receiver = v5;
  v32.super_class = v25;
  v26 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel;
  v28 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel];
  v29 = v26;
  [v28 setTextAlignment:1];
  sub_10000D198();
  v30 = sub_100753E94();
  [v29 setBackgroundColor:v30];

  [v29 addSubview:*&v26[v27]];
  return v29;
}

id sub_1000ECFC4()
{
  v1 = v0;
  v2 = sub_10074F314();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IconSilhouetteView();
  v18.receiver = v1;
  v18.super_class = v6;
  objc_msgSendSuper2(&v18, "layoutSubviews");
  (*(v3 + 16))(v5, &v1[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle], v2);
  [v1 frame];
  sub_10074F2E4();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [v1 _setCornerRadius:v8];
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel];
  sub_1007477B4();
  [v9 sizeThatFits:{v10, v11}];
  v13 = v12;
  v15 = v14;
  sub_1007477B4();
  v16 = CGRectGetMidX(v19) - v13 * 0.5;
  sub_1007477B4();
  return [v9 setFrame:{v16, CGRectGetMidY(v20) - v15 * 0.5, v13, v15}];
}

id sub_1000ED2F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IconSilhouetteView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IconSilhouetteView()
{
  result = qword_100928118;
  if (!qword_100928118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000ED3F8()
{
  result = sub_10074F314();
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

void sub_1000ED4A4()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_preferredIconWidth) = 0x404F000000000000;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_iconStyle;
  v10 = enum case for Artwork.Style.roundedRect(_:);
  v11 = sub_10074F314();
  (*(*(v11 - 8) + 104))(v1 + v9, v10, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18IconSilhouetteView_titleLabel;
  if (qword_100921450 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100981A28);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

void *sub_1000ED750()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  v2 = v1;
  return v1;
}

void (*sub_1000ED788(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_1000ED7E0;
}

void sub_1000ED7E0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_100251B60(v2);
  }

  else
  {
    sub_100251B60(*a1);
  }
}

uint64_t sub_1000ED8A4()
{
  swift_getObjectType();

  return sub_1007477B4();
}

uint64_t sub_1000ED8D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000EDAAC(&qword_100928138, type metadata accessor for LargeLockupCollectionViewCell);

  return AvatarShowcaseDisplaying.applyAvatars(from:asPartOf:)(a1, a2, ObjectType, v5);
}

uint64_t sub_1000ED994(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v4 = sub_1000EDAAC(&qword_100928138, type metadata accessor for LargeLockupCollectionViewCell);

  return a3(ObjectType, v4);
}

uint64_t sub_1000EDAAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EDAF4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097DA78);
  sub_10000D0FC(v0, qword_10097DA78);
  return sub_100750504();
}

char *sub_1000EDB48()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing] = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100920580 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_10097E4A0;
  v17[3] = unk_10097E4B0;
  v18 = qword_10097E4C0;
  v17[0] = xmmword_10097E480;
  v17[1] = *algn_10097E490;
  v5 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *&v1[v4] = sub_1001F0408(v17, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_100746BA4();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v9 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
  v13 = v10;
  [v12 setContentMode:2];
  [*&v10[v11] setClipsToBounds:1];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [v13 addSubview:*&v10[v11]];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  [*&v13[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView] setContentMode:2];
  [*&v13[v14] setClipsToBounds:1];
  [v13 addSubview:*&v13[v14]];

  return v13;
}

void sub_1000EDDDC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
    v5 = Strong;
    [v3 setHidden:1];
    v5[qword_100982290] = 1;
    *&v5[qword_10093CB38 + 8] = &off_100867EE0;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    sub_1007537E4();

    [v5 _setCornerRadius:20.0];
    [v1 insertSubview:v5 aboveSubview:v3];
    [v1 setNeedsLayout];
  }
}

void (*sub_1000EDF08(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000EDF5C;
}

void sub_1000EDF5C(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v23 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView);
      v7 = v23;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300);
        v10 = v4;
        v11 = sub_100753FC4();

        v12 = *(a1 + 8);
        if (v11)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }

          [*(v12 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
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
    sub_1000EDDDC();

    v22 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView);
      v15 = [v6 superview];
      if (v15)
      {
        v16 = v15;
        sub_100016C60(0, &qword_100922300);
        v17 = v4;
        v18 = sub_100753FC4();

        v19 = *(a1 + 8);
        if (v18)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }

          [*(v19 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();
    v22 = v23;
  }
}

void sub_1000EE300()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "frame", v4);
  v7 = enum case for FloatingPointRoundingRule.up(_:);
  v8 = *(v3 + 104);
  v8(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_100753B04();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v6, v2);
  v8(v6, v7, v2);
  sub_100753B04();
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
  if (!CGRectEqualToRect(v33, v34) && (v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing] & 1) == 0)
  {
    v26 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
    if (v26)
    {

      [v0 bounds];
      v8(v6, v7, v2);
      sub_100753B84();
      v28 = v27;
      v30 = v29;
      v17(v6, v2);
      v31 = [v0 traitCollection];
      v26(v28, v30);
      sub_1000164A8(v26);
    }
  }
}

id sub_1000EE5D0()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing];
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
      if (v8 && (v9 = v8, v10 = *(v8 + qword_10093CB50), v9, v11 = [v10 image], v10, v11))
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

    v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
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
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v20 frame];
  }

  else
  {
    if (Strong)
    {
      [v0 bounds];
      [v3 setFrame:?];
    }

    v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    [v18 setFrame:?];
    v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView];
    [v0 bounds];
  }

  return [v19 setFrame:?];
}

void sub_1000EE878()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_10093CB78];
    if (v1)
    {
      v5 = Strong;
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000F0A90;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005171C8;
      aBlock[3] = &unk_100868010;
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

void sub_1000EEA04()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10058070C(0, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_10093CB78);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_1000EEAC8()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong traitCollection];
    v2 = sub_1007537E4();

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
      v7[4] = sub_1000F03EC;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000CF7B0;
      v7[3] = &unk_100867F48;
      v6 = _Block_copy(v7);

      [v5 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];

      swift_unknownObjectRelease();
      _Block_release(v6);
    }
  }
}

void sub_1000EEC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v8 - 8);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v67 - v11;
  v12 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v12 - 8);
  v73 = &v67 - v13;
  v14 = sub_100744864();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - v17;
  v19 = sub_100744894();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100747D94();
  v26 = __chkstk_darwin(v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = &OBJC_METACLASS____TtC22SubscribePageExtension24BannerCollectionViewCell;
  if (a1)
  {
    v69 = v25;
    v70 = v24;
    v71 = a2;
    v30 = *(v20 + 104);
    v67 = v4;
    v31 = v28;
    v30(v22, enum case for VideoFillMode.scaleAspectFill(_:), v19, v26);

    sub_10074EC14();
    sub_10074F2A4();
    sub_100750504();

    v32 = sub_1007504F4();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    v33 = a3;
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v34 = v73;
    sub_10074EC24();
    v35 = sub_100741264();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v74;
    sub_10074EBE4();
    v37 = v75;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView);
    v38 = v31;
    v4 = v67;
    v68 = v38;
    v72 = v33;
    v39 = sub_1007464A4();
    sub_10000C8CC(v37, &unk_1009281C0);
    sub_10000C8CC(v36, &unk_1009281C0);
    sub_10000C8CC(v34, &unk_100923970);
    sub_10000C8CC(v76, &unk_1009276E0);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong superview];
      if (v42)
      {
        v43 = v42;
        sub_100016C60(0, &qword_100922300);
        v44 = v4;
        v45 = sub_100753FC4();

        if (v45)
        {
          v46 = swift_unknownObjectWeakLoadStrong();
          if (v46)
          {
            v47 = v46;
            [v46 removeFromSuperview];
          }

          [*&v44[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView] setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1000EDDDC();

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      sub_10074EC14();
      v53 = sub_10074F1E4();

      [v52 setBackgroundColor:v53];
    }

    sub_10074EC14();
    v54 = sub_10074F1E4();

    a2 = v71;
    if (!v54)
    {
      sub_100016C60(0, &qword_100923500);
      v54 = sub_100753E34();
    }

    [v4 setBackgroundColor:v54];

    (*(v69 + 8))(v68, v70);
    v48 = &selRef_initWithTitle_style_target_action_;
    v29 = &OBJC_METACLASS____TtC22SubscribePageExtension24BannerCollectionViewCell;
  }

  else
  {
    v48 = &selRef_initWithTitle_style_target_action_;
    if (a2)
    {

      v49 = sub_10074F1E4();
      if (!v49)
      {
        sub_100016C60(0, &qword_100923500);
        v49 = sub_100753E34();
      }

      v50 = v49;
      [v4 setBackgroundColor:v49];

      v29 = &OBJC_METACLASS____TtC22SubscribePageExtension24BannerCollectionViewCell;
    }
  }

  [*&v4[v29[8].cache] v48[77]];
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 v48[77]];
  }

  [*&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView] v48[77]];
  v57 = sub_1000EF4C4(a2, a1);
  v58 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  v59 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v58 = v57;
  v58[1] = v60;
  sub_1000164A8(v59);
  v61 = *v58;
  if (*v58)
  {

    [v4 bounds];
    v63 = v62;
    v65 = v64;
    v66 = [v4 traitCollection];
    v61(v63, v65);
    sub_1000164A8(v61);
  }
}

void (*sub_1000EF4C4(uint64_t a1, uint64_t a2))(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    a1 = sub_10074EC14();
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
    return sub_1000F0490;
  }

  if (a1)
  {

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1000EF5C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1007442C4();
  sub_1007526C4();
  if (v10)
  {
    if (!sub_1007482C4())
    {
      [*&v2[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView] setHidden:1];
      v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView];
      sub_100748234();
      sub_1001F0D88();

      v8 = sub_100748234();
      [v3 bounds];
      sub_1000F0508(v8, v10, v7);
      goto LABEL_6;
    }
  }

  v5 = sub_1007482B4();
  v6 = sub_1007482C4();
  sub_1000EEC78(v5, v6, a2);
LABEL_6:
}

void sub_1000EF6F0(double a1, double a2, uint64_t a3, char a4)
{
  v7 = sub_10074F284();
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
        v14 = &qword_10093CB50;
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
      v14 = &OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
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

  sub_1007442C4();
  v16 = v16;
  sub_1007526C4();

  if (!v19[4])
  {

    goto LABEL_11;
  }

  if (qword_100920238 != -1)
  {
    swift_once();
  }

  v17 = sub_1007504F4();
  sub_10000D0FC(v17, qword_10097DA78);
  sub_1007504C4();
  sub_10074F294();
  v18 = sub_10074F254();
  (*(v8 + 8))(v10, v7);
  sub_10074F374();
  [v16 setContentMode:v18];
  sub_100016C60(0, &qword_10092BFC0);
  sub_1000F04A0();
  sub_100744204();
}

uint64_t type metadata accessor for AppPromotionMediaContainerView()
{
  result = qword_100928198;
  if (!qword_100928198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000EFB1C()
{
  result = sub_100746BA4();
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

void sub_1000EFBF4(void *a1)
{
  sub_1000F0204();
  swift_unknownObjectWeakAssign();
  sub_1000EDDDC();
}

uint64_t (*sub_1000EFC44(uint64_t **a1))()
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
  v2[4] = sub_1000EDF08(v2);
  return sub_1000181A8;
}

uint64_t sub_1000EFCBC()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000EFFD0(&qword_1009281B8, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000EFD30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000EFFD0(&qword_1009281B8, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000EFDBC(uint64_t *a1))()
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
  sub_1000EFFD0(&qword_1009281B8, type metadata accessor for AppPromotionMediaContainerView);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1000EFE78(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100016C60(0, &qword_100922300);
  v4 = v1;
  v5 = sub_100753FC4();

  return v5 & 1;
}

id sub_1000EFF08()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "frame");
}

uint64_t sub_1000EFFD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F0060()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_100920580 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_10097E4A0;
  v9[3] = unk_10097E4B0;
  v10 = qword_10097E4C0;
  v9[0] = xmmword_10097E480;
  v9[1] = *algn_10097E490;
  v4 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *(v1 + v3) = sub_1001F0408(v9, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
  v6 = enum case for MediaOverlayStyle.matchSystem(_:);
  v7 = sub_100746BA4();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_refetchArtworkBlock);
  *v8 = 0;
  v8[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_1000F0204()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000EFFD0(&qword_1009230E0, type metadata accessor for VideoView);
    v1 = [Strong superview];
    if (v1)
    {
      v2 = v1;
      sub_100016C60(0, &qword_100922300);
      v3 = v0;
      v4 = sub_100753FC4();

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_artworkView];

        [v7 setHidden:0];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1000F037C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F03B4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000F03F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000F0410()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F0448()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000F04A0()
{
  result = qword_1009281E0;
  if (!qword_1009281E0)
  {
    sub_100016C60(255, &qword_10092BFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009281E0);
  }

  return result;
}

uint64_t sub_1000F0508(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10074F284();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = sub_10074F8A4();
  v34[4] = &protocol witness table for AppPromotion;
  v34[0] = a1;
  sub_10000C824(v34, v33);

  sub_10000C518(&unk_100923100);
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = sub_10074F814();
    sub_10074F834();
    sub_100741D54();
    v13 = swift_dynamicCastClass();
    v29 = v11;
    if (v13)
    {
      sub_100741D44();
      v14 = sub_10074EF24();
    }

    else
    {

      sub_10074F834();
      v14 = sub_10074EF24();
    }

    v30 = a2;
    if (v14)
    {

      sub_10074F294();
      sub_10074F254();
      v31 = v8;
      v15 = *(v8 + 8);
      v15(v10, v7);
      sub_10074F374();
      v28 = a3;
      v16 = *&a3[qword_10092D678];
      sub_10074F324();
      sub_100743364();
      [v16 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      sub_10074F294();
      v17 = sub_10074F254();
      v15(v10, v7);
      [v16 setContentMode:v17];
      sub_1007433C4();
      sub_1000EFFD0(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();

      v8 = v31;
      a3 = v28;
    }

    if (v12)
    {
      sub_10074F294();
      sub_10074F254();
      v18 = *(v8 + 8);
      v31 = v8 + 8;
      v28 = v18;
      (v18)(v10, v7);
      sub_10074F374();
      v19 = *&a3[qword_10092D670];
      v20 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
      v21 = *(v19 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
      sub_10074F324();
      sub_100743364();
      [v21 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();

      v22 = *(v19 + v20);
      sub_10074F294();
      v23 = sub_10074F254();
      (v28)(v10, v7);
      [v22 setContentMode:v23];

      v24 = *(v19 + v20);
      sub_1007433C4();
      sub_1000EFFD0(&qword_100925570, &type metadata accessor for ArtworkView);
      v25 = v24;
      sub_100744204();
    }

    else
    {
    }
  }

  return sub_10000C620(v34);
}

uint64_t sub_1000F0AA8(unint64_t a1, unint64_t a2)
{
  v4 = sub_10074BCC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F3F4();
  v32[3] = v8;
  v32[4] = sub_1000F14D4(&qword_10092AC70, &type metadata accessor for Feature);
  v9 = sub_10000D134(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_10074FC74();
  sub_10000C620(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_100747924();
    if (sub_1007532D4())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = sub_100754574();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_1007478B4();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_1000F0DA4()
{
  result = sub_1000F105C();
  if (!result)
  {
    sub_100747E74();
    if (swift_dynamicCastClass())
    {
      v1 = type metadata accessor for AdvertsSearchResultContentView();
      v2 = &unk_100928220;
      v3 = type metadata accessor for AdvertsSearchResultContentView;
    }

    else
    {
      sub_1007474C4();
      if (swift_dynamicCastClass())
      {
        v1 = type metadata accessor for BundleSearchResultContentView();
        v2 = &unk_100928218;
        v3 = type metadata accessor for BundleSearchResultContentView;
      }

      else
      {
        sub_100742374();
        if (swift_dynamicCastClass())
        {
          v1 = type metadata accessor for AppSearchResultContentView();
          v2 = &unk_100928210;
          v3 = type metadata accessor for AppSearchResultContentView;
        }

        else
        {
          sub_1007493C4();
          if (swift_dynamicCastClass())
          {
            v1 = type metadata accessor for EditorialSearchResultContentView();
            v2 = &unk_100928208;
            v3 = type metadata accessor for EditorialSearchResultContentView;
          }

          else
          {
            sub_100741ED4();
            if (swift_dynamicCastClass())
            {
              v1 = type metadata accessor for InAppPurchaseSearchResultContentView();
              v2 = &unk_100928200;
              v3 = type metadata accessor for InAppPurchaseSearchResultContentView;
            }

            else
            {
              sub_10074C814();
              if (swift_dynamicCastClass())
              {
                v1 = type metadata accessor for LockupCollectionSearchResultContentView();
                v2 = &unk_1009281F8;
                v3 = type metadata accessor for LockupCollectionSearchResultContentView;
              }

              else
              {
                sub_100742574();
                if (swift_dynamicCastClass())
                {
                  v1 = type metadata accessor for AppEventSearchResultContentView();
                  v2 = &unk_1009281F0;
                  v3 = type metadata accessor for AppEventSearchResultContentView;
                }

                else
                {
                  sub_1007476D4();
                  result = swift_dynamicCastClass();
                  if (!result)
                  {
                    return result;
                  }

                  v1 = type metadata accessor for GuidedSearchResultContentView();
                  v2 = &unk_1009281E8;
                  v3 = type metadata accessor for GuidedSearchResultContentView;
                }
              }
            }
          }
        }
      }
    }

    sub_1000F14D4(v2, v3);
    return v1;
  }

  return result;
}

uint64_t sub_1000F105C()
{
  v0 = sub_10074CE44();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v22[-v5];
  __chkstk_darwin(v7);
  v9 = &v22[-v8];
  __chkstk_darwin(v10);
  v12 = &v22[-v11];
  sub_1007493C4();
  if (!swift_dynamicCastClass())
  {
    goto LABEL_7;
  }

  v24 = v3;
  sub_1007440F4();
  (*(v1 + 104))(v9, enum case for SearchResultCondensedBehavior.always(_:), v0);
  sub_1000F14D4(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior);
  sub_100753274();
  sub_100753274();
  if (v27 != v25 || v28 != v26)
  {
    v23 = sub_100754754();
    v14 = *(v1 + 8);
    v14(v9, v0);
    v14(v12, v0);

    v3 = v24;
    if (v23)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_100741ED4();
    if (swift_dynamicCastClass())
    {
      sub_1007440F4();
      (*(v1 + 104))(v3, enum case for SearchResultCondensedBehavior.always(_:), v0);
      sub_1000F14D4(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior);
      sub_100753274();
      sub_100753274();
      if (v27 == v25 && v28 == v26)
      {
        v18 = *(v1 + 8);
        v18(v3, v0);
        v18(v6, v0);

LABEL_12:
        v15 = type metadata accessor for CondensedInAppPurchaseContentView();
        v16 = &unk_100928230;
        v17 = type metadata accessor for CondensedInAppPurchaseContentView;
        goto LABEL_13;
      }

      v19 = sub_100754754();
      v20 = *(v1 + 8);
      v20(v3, v0);
      v20(v6, v0);

      if (v19)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  v13 = *(v1 + 8);
  v13(v9, v0);
  v13(v12, v0);

LABEL_6:
  v15 = type metadata accessor for CondensedEditorialSearchResultContentView();
  v16 = &unk_100928238;
  v17 = type metadata accessor for CondensedEditorialSearchResultContentView;
LABEL_13:
  sub_1000F14D4(v16, v17);
  return v15;
}

uint64_t sub_1000F14D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F151C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1000F15B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_10000C518(&qword_100928338);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_10074E984();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_10000C518(&unk_10092E450);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_1007469A4();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.uber(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_100746914();

      swift_getKeyPath();
      v29 = v46;
      sub_1007525B4();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_1000F1E3C();
      sub_100753274();
      sub_100753274();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_100754754();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_1007468F4();
    v24 = v33;
    sub_100752994();
    sub_1000F1EA0();
    v25 = v34;
    sub_100752954();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

uint64_t sub_1000F1B1C(void *a1, uint64_t a2, void *a3)
{
  v20 = a1;
  sub_10003E054();
  v5 = a1;
  sub_10000C518(&qword_100928328);
  if (swift_dynamicCast())
  {
    sub_100012160(&v16, v21);
    v6 = objc_opt_self();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1000F1DFC;
    *(v8 + 24) = v7;
    v18 = sub_100045E0C;
    v19 = v8;
    *&v16 = _NSConcreteStackBlock;
    *(&v16 + 1) = 1107296256;
    *&v17 = sub_10011B528;
    *(&v17 + 1) = &unk_100868088;
    v9 = _Block_copy(&v16);
    v10 = v5;

    [v6 performWithoutAnimation:v9];
    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      if (swift_weakLoadStrong())
      {
        v13 = v22;
        v14 = v23;
        sub_10000C888(v21, v22);
        v15 = (*(v14 + 8))(v13, v14);
        sub_1003C9E70(v15, a3);
      }

      sub_10000C620(v21);
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    return sub_1000F1D5C(&v16);
  }

  return result;
}

uint64_t sub_1000F1D5C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100928330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F1DC4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000F1E1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000F1E3C()
{
  result = qword_100926DD0;
  if (!qword_100926DD0)
  {
    sub_10074E984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926DD0);
  }

  return result;
}

unint64_t sub_1000F1EA0()
{
  result = qword_100943B30;
  if (!qword_100943B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100943B30);
  }

  return result;
}

uint64_t sub_1000F1EF4(uint64_t a1)
{

  return a1;
}

uint64_t sub_1000F1F50()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753E74();
  qword_10097DA98 = result;
  return result;
}

char *sub_1000F1F94(double a1, double a2, double a3, double a4)
{
  v9 = sub_100741E54();
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel;
  sub_100745C84();
  *&v4[v12] = sub_100745C64();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel;
  *&v4[v13] = sub_100745C64();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  *&v4[v14] = sub_100745C64();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton;
  v16 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v4[v15] = sub_100154454(0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_100741DD4();
  v18 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v4[v17] = sub_10027562C(v11, 1);
  _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_tileOffset] = 0;
  v19 = type metadata accessor for CondensedInAppPurchaseContentView();
  v37.receiver = v4;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v24 = v20;
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel]];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel]];
  v27 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView]];
  v28 = *&v24[v25];
  v29 = [v24 tintColor];
  [v28 setTextColor:v29];

  [*&v24[v25] setNumberOfLines:1];
  [*&v24[v26] setNumberOfLines:1];
  v30 = *&v24[v26];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 labelColor];
  [v32 setTextColor:v33];

  v34 = *&v24[v27];
  v35 = [v31 secondaryLabelColor];
  [v34 setTextColor:v35];

  sub_1000F4700();
  return v24;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.layoutSubviews()()
{
  v1 = v0;
  v191 = sub_100750F54();
  v189 = *(v191 - 8);
  __chkstk_darwin(v191);
  v190 = (v176 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v188 = v176 - v4;
  v5 = sub_100750F84();
  v193 = *(v5 - 8);
  __chkstk_darwin(v5);
  v192 = v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100750354();
  v204 = *(v206 - 8);
  __chkstk_darwin(v206);
  v203 = v176 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_100750CC4();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v199 = v176 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_100750CB4();
  v227 = *(v222 - 8);
  __chkstk_darwin(v222);
  v198 = v176 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_100750C64();
  v229 = *(v223 - 8);
  __chkstk_darwin(v223);
  v197 = v176 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_100750D04();
  v205 = *(v200 - 8);
  __chkstk_darwin(v200);
  v187 = v176 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = v176 - v13;
  v14 = sub_100741B94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v176 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v226 = v176 - v19;
  v20 = type metadata accessor for CondensedInAppPurchaseContentView();
  v257.receiver = v0;
  v257.super_class = v20;
  objc_msgSendSuper2(&v257, "layoutSubviews");
  sub_1007477B4();
  v21 = [v0 traitCollection];
  v22 = sub_100753804();

  (*(v15 + 16))(v17, &v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics], v14);
  v225 = v1;
  v202 = v14;
  if (v22)
  {
    sub_100741B44();
    v23 = *(v15 + 8);
    v201 = v15 + 8;
    v190 = v23;
    v23(v17, v14);
    v24 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v253 = type metadata accessor for InAppPurchaseView();
    v254 = &protocol witness table for UIView;
    v252[0] = v24;
    v25 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v26 = sub_100745C84();
    v251 = &protocol witness table for UILabel;
    v250 = v26;
    v249[0] = v25;
    v27 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];
    v248 = &protocol witness table for UILabel;
    v247 = v26;
    v246[0] = v27;
    v28 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    v245 = &protocol witness table for UILabel;
    v244 = v26;
    v243[0] = v28;
    v29 = *&v225[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton];
    v30 = type metadata accessor for OfferButton();
    v242 = &protocol witness table for UIView;
    v241 = v30;
    v240[0] = v29;
    sub_10000C518(&unk_100923060);
    v31 = *(sub_100750CF4() - 8);
    v193 = *(v31 + 72);
    v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v188 = (4 * v193);
    v33 = swift_allocObject();
    v189 = v33;
    *(v33 + 16) = xmmword_1007AB1A0;
    *&v221 = v33 + v32;
    v187 = v24;
    v34 = v25;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    sub_100741A94();
    *(&v238 + 1) = &type metadata for CGFloat;
    v239 = &protocol witness table for CGFloat;
    *&v237 = v38;
    sub_100741B54();
    LODWORD(v185) = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v194 = v229[13];
    v196 = (v229 + 13);
    v39 = v197;
    (v194)(v197);
    v209 = sub_10000C518(&unk_100944F30);
    v40 = v227;
    v41 = *(v227 + 72);
    v195 = *(v227 + 80);
    v42 = (v195 + 32) & ~v195;
    v207 = 3 * v41;
    v219 = v41;
    v220 = 2 * v41;
    v43 = swift_allocObject();
    v218 = xmmword_1007A5620;
    *(v43 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v231 = v43;
    *&v217 = sub_1000F5060(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v216 = sub_10000C518(&unk_100944F40);
    v215 = sub_100016BFC();
    v44 = v198;
    v45 = v222;
    sub_1007543A4();
    LODWORD(v214) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v46 = v228;
    v47 = *(v228 + 104);
    v212 = (v228 + 104);
    v213 = v47;
    v48 = v199;
    v49 = v224;
    v47(v199);
    sub_100750CE4();
    v208 = *(v46 + 8);
    v228 = v46 + 8;
    v208(v48, v49);
    v50 = *(v40 + 8);
    v227 = v40 + 8;
    v211 = v50;
    v50(v44, v45);
    v51 = v229[1];
    ++v229;
    v210 = v51;
    v52 = v223;
    v51(v39, v223);
    sub_1000F4268(&v234);
    sub_10000C620(&v237);
    v53 = v250;
    v54 = v251;
    v55 = sub_10000C888(v249, v250);
    *(&v238 + 1) = v53;
    v239 = v54[1];
    v56 = sub_10000D134(&v237);
    (*(*(v53 - 8) + 16))(v56, v55, v53);
    sub_100741AF4();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    LODWORD(v192) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v57 = v194;
    (v194)(v39);
    v191 = v42;
    v58 = swift_allocObject();
    *(v58 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v230[0] = v58;
    v59 = v222;
    sub_1007543A4();
    v213(v48, v214, v49);
    v60 = v193;
    sub_100750CE4();
    v208(v48, v49);
    v211(v44, v59);
    v210(v39, v52);
    sub_1000F4268(&v231);
    sub_10000C620(&v234);
    sub_10000C620(&v237);
    v184 = (2 * v60);
    v61 = v247;
    v62 = v248;
    v63 = sub_10000C888(v246, v247);
    *(&v238 + 1) = v61;
    v239 = v62[1];
    v64 = sub_10000D134(&v237);
    (*(*(v61 - 8) + 16))(v64, v63, v61);
    sub_100741AE4();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    (v57)(v39, v192, v52);
    v65 = swift_allocObject();
    *(v65 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v230[0] = v65;
    v66 = v222;
    sub_1007543A4();
    v67 = v224;
    v213(v48, v214, v224);
    v68 = v184;
    sub_100750CE4();
    v208(v48, v67);
    v211(v44, v66);
    v69 = v39;
    v70 = v39;
    v71 = v223;
    v210(v69, v223);
    sub_1000F4268(&v231);
    sub_10000C620(&v234);
    sub_10000C620(&v237);
    v193 += v68;
    v72 = v244;
    v73 = v245;
    v74 = sub_10000C888(v243, v244);
    *(&v238 + 1) = v72;
    v239 = v73[1];
    v75 = sub_10000D134(&v237);
    (*(*(v72 - 8) + 16))(v75, v74, v72);
    sub_100741B04();
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v76 = v71;
    (v194)(v70, v192, v71);
    v77 = swift_allocObject();
    *(v77 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    v230[0] = v77;
    v78 = v222;
    sub_1007543A4();
    v79 = v224;
    v213(v48, v214, v224);
    sub_100750CE4();
    v208(v48, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_1000F4268(&v231);
    sub_10000C620(&v234);
    sub_10000C620(&v237);
    sub_100741B54();
    v236 = 0;
    v234 = 0u;
    v235 = 0u;
    (v194)(v70, v185, v76);
    v80 = swift_allocObject();
    *(v80 + 16) = v218;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v231 = v80;
    sub_1007543A4();
    v213(v48, v214, v79);
    sub_100750CE4();
    v81 = v48;
    v82 = v225;
    v83 = v187;
    v208(v81, v79);
    v211(v44, v78);
    v210(v70, v76);
    sub_1000F4268(&v234);
    sub_10000C620(&v237);
    v84 = v186;
    sub_100750CD4();
    sub_10000C620(v240);
    sub_10000C620(v243);
    sub_10000C620(v246);
    sub_10000C620(v249);
    sub_10000C620(v252);
    v85 = v203;
    v86 = v200;
    sub_100751124();
    (*(v204 + 8))(v85, v206);
    [v83 frame];
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v95 = [v82 traitCollection];
    LOBYTE(v85) = sub_1007537F4();

    sub_100741AB4();
    sub_10000C888(v252, v253);
    v96 = [v82 traitCollection];
    sub_100750574();
    v98 = v97;

    if (v85)
    {
      sub_10000C620(v252);
      v99 = v88 - v98;
    }

    else
    {
      v99 = v88 + v98;
      sub_10000C620(v252);
    }

    v175 = v205;
    [v83 setFrame:{v99, v90 + 0.0, v92, v94}];
    v190(v226, v202);
    (*(v175 + 8))(v84, v86);
  }

  else
  {
    v100 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v255 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v101 = v255;
    v256 = v100;
    v102 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];
    v253 = sub_100745C84();
    v254 = &protocol witness table for UILabel;
    v252[0] = v102;
    v201 = v15;
    v103 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    v251 = &protocol witness table for UILabel;
    v250 = v253;
    v249[0] = v103;
    v182 = v5;
    v104 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton];
    v105 = type metadata accessor for OfferButton();
    v248 = &protocol witness table for UIView;
    v247 = v105;
    v246[0] = v104;
    v181 = v100;
    v180 = v101;
    v106 = v102;
    v107 = v103;
    v108 = v104;
    v109 = [v1 traitCollection];
    sub_100741AD4();
    sub_10000C888(v243, v244);
    sub_100750574();
    v194 = v17;
    sub_100741A94();
    v178 = sub_100751034();
    v179 = sub_10000C518(&unk_1009231A0);
    v110 = swift_allocObject();
    v221 = xmmword_1007A5CF0;
    *(v110 + 16) = xmmword_1007A5CF0;
    *(v110 + 32) = v109;
    v177 = v109;
    v111 = sub_100751044();
    sub_10074FC64();

    sub_10000C620(v243);
    sub_10000C518(&unk_100923060);
    v112 = *(sub_100750CF4() - 8);
    v185 = *(v112 + 72);
    v113 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v114 = swift_allocObject();
    v176[1] = v114;
    *(v114 + 16) = xmmword_1007A97A0;
    v226 = (v114 + v113);
    sub_1007503C4();
    sub_100741AF4();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    LODWORD(v186) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v115 = v229;
    v116 = v229[13];
    v184 = (v229 + 13);
    v195 = v116;
    v117 = v197;
    v118 = v223;
    v116(v197);
    v196 = sub_10000C518(&unk_100944F30);
    v119 = v227;
    v120 = *(v227 + 72);
    v121 = *(v227 + 80);
    v207 = 3 * v120;
    v219 = 2 * v120;
    v220 = v121;
    *&v218 = v120;
    v183 = (v121 + 32) & ~v121;
    v122 = swift_allocObject();
    v217 = xmmword_1007A5620;
    *(v122 + 16) = xmmword_1007A5620;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v234 = v122;
    v215 = sub_1000F5060(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v214 = sub_10000C518(&unk_100944F40);
    v216 = sub_100016BFC();
    v123 = v198;
    v124 = v222;
    sub_1007543A4();
    LODWORD(v213) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v125 = v118;
    v126 = v228;
    v127 = *(v228 + 104);
    v211 = (v228 + 104);
    v212 = v127;
    v128 = v199;
    v129 = v224;
    v127(v199);
    sub_100750CE4();
    v130 = *(v126 + 8);
    v228 = v126 + 8;
    v210 = v130;
    v130(v128, v129);
    v131 = *(v119 + 8);
    v227 = v119 + 8;
    v209 = v131;
    v132 = v124;
    v131(v123, v124);
    v133 = v115[1];
    v229 = v115 + 1;
    v208 = v133;
    v133(v117, v125);
    sub_1000F4268(&v237);
    sub_10000C620(v240);
    sub_10000C620(v243);
    v134 = v253;
    v135 = v254;
    v136 = sub_10000C888(v252, v253);
    v244 = v134;
    v245 = v135[1];
    v137 = sub_10000D134(v243);
    (*(*(v134 - 8) + 16))(v137, v136, v134);
    sub_100741AE4();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    v138 = v125;
    (v195)(v117, v186, v125);
    v139 = swift_allocObject();
    *(v139 + 16) = v217;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v234 = v139;
    sub_1007543A4();
    v140 = v224;
    v212(v128, v213, v224);
    v141 = v185;
    sub_100750CE4();
    v210(v128, v140);
    v209(v123, v132);
    v142 = v117;
    v143 = v117;
    v144 = v138;
    v208(v142, v138);
    sub_1000F4268(&v237);
    sub_10000C620(v240);
    sub_10000C620(v243);
    v176[0] = 2 * v141;
    v145 = v250;
    v146 = v251;
    v147 = sub_10000C888(v249, v250);
    v244 = v145;
    v245 = v146[1];
    v148 = sub_10000D134(v243);
    (*(*(v145 - 8) + 16))(v148, v147, v145);
    sub_100741B04();
    v239 = 0;
    v237 = 0u;
    v238 = 0u;
    (v195)(v143, v186, v144);
    v149 = swift_allocObject();
    *(v149 + 16) = v217;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v234 = v149;
    sub_1007543A4();
    v150 = v224;
    v212(v128, v213, v224);
    v151 = v176[0];
    sub_100750CE4();
    v210(v128, v150);
    v209(v123, v132);
    v152 = v223;
    v208(v143, v223);
    sub_1000F4268(&v237);
    sub_10000C620(v240);
    sub_10000C620(v243);
    v186 = (v151 + v185);
    sub_100741B34();
    sub_100741A94();
    v241 = &type metadata for CGFloat;
    v242 = &protocol witness table for CGFloat;
    v240[0] = v153;
    (v195)(v143, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v152);
    v154 = swift_allocObject();
    *(v154 + 16) = v217;
    sub_100750CA4();
    sub_100750C84();
    sub_100750C94();
    *&v237 = v154;
    sub_1007543A4();
    v155 = v224;
    v212(v128, v213, v224);
    sub_100750CE4();
    v210(v128, v155);
    v209(v123, v132);
    v208(v143, v152);
    sub_10000C620(v243);
    sub_1000F4268(v240);
    v156 = v187;
    sub_100750CD4();
    sub_100741A94();
    v157 = swift_allocObject();
    *(v157 + 16) = v221;
    v158 = v177;
    *(v157 + 32) = v177;
    v159 = v158;
    v160 = sub_100751044();
    sub_10074FC64();

    sub_100741A94();
    v161 = swift_allocObject();
    *(v161 + 16) = v221;
    *(v161 + 32) = v159;
    v162 = v159;
    v163 = sub_100751044();
    sub_10074FC64();

    sub_100741A94();
    v164 = swift_allocObject();
    *(v164 + 16) = v221;
    *(v164 + 32) = v162;
    v229 = v162;
    v165 = sub_100751044();
    sub_10074FC64();

    sub_100741B64();
    sub_10000C888(v243, v244);
    sub_100750574();
    sub_10000C620(v243);
    type metadata accessor for InAppPurchaseView();
    sub_1007503C4();
    v166 = v200;
    v241 = v200;
    v242 = &protocol witness table for VerticalFlowLayout;
    v167 = sub_10000D134(v240);
    v168 = v205;
    (*(v205 + 16))(v167, v156, v166);
    sub_10000C824(v243, &v237);
    v236 = &protocol witness table for Double;
    *(&v235 + 1) = &type metadata for Double;
    *&v234 = 0;
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v169 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v170 = *(v189 + 104);
    v171 = v191;
    v170(v188, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v191);
    v230[3] = sub_1007507D4();
    v230[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v230);
    sub_1007507C4();
    v170(v190, v169, v171);
    v172 = v192;
    sub_100750F74();

    sub_10000C620(v243);
    (*(v168 + 8))(v156, v166);
    (*(v201 + 8))(v194, v202);
    sub_10000C620(v246);
    sub_10000C620(v249);
    sub_10000C620(v252);

    v173 = v203;
    v174 = v182;
    sub_100751124();
    (*(v204 + 8))(v173, v206);
    (*(v193 + 8))(v172, v174);
  }
}

uint64_t type metadata accessor for CondensedInAppPurchaseContentView()
{
  result = qword_1009283A8;
  if (!qword_1009283A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F4268(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100931390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.prepareForReuse()()
{
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel) setText:0];
  [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton) setHidden:1];
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView);

  [v1 setHidden:1];
}

Swift::Void __swiftcall CondensedInAppPurchaseContentView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v4 = sub_100741B94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedInAppPurchaseContentView();
  v27.receiver = v1;
  v27.super_class = v8;
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", isa);
  if (isa)
  {
    v9 = [(objc_class *)isa preferredContentSizeCategory];
  }

  else
  {
    v9 = 0;
  }

  v10 = &selRef_initWithTitle_style_target_action_;
  v11 = [v2 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = &stru_1008F2000;
  if (!v9)
  {

LABEL_12:
    sub_1000F4700();
    [v2 v13[51].attr];
    goto LABEL_13;
  }

  v14 = sub_100753094();
  v16 = v15;
  if (v14 == sub_100753094() && v16 == v17)
  {

    v13 = &stru_1008F2000;
    v10 = &selRef_initWithTitle_style_target_action_;
    if (isa)
    {
      goto LABEL_14;
    }

LABEL_16:
    v20 = 2;
    goto LABEL_17;
  }

  v19 = sub_100754754();

  v13 = &stru_1008F2000;
  v10 = &selRef_initWithTitle_style_target_action_;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!isa)
  {
    goto LABEL_16;
  }

LABEL_14:
  v20 = sub_100753804() & 1;
LABEL_17:
  v21 = [v2 v10[129]];
  v22 = sub_100753804();

  if (v20 == 2 || ((v22 ^ v20) & 1) != 0)
  {
    v23 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    (*(v5 + 16))(v7, &v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics], v4);
    v24.super.isa = [v2 v10[129]];
    v25 = v24.super.isa;
    v26 = sub_100741B74(v24);

    (*(v5 + 8))(v7, v4);
    [v23 setNumberOfLines:v26];
    [v2 v13[51].attr];
  }
}

id sub_1000F4700()
{
  v1 = v0;
  v40 = sub_100750534();
  v44 = *(v40 - 8);
  __chkstk_darwin(v40);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100741B94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
  v9 = sub_100016C60(0, &qword_100923AB0);
  v39 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics;
  v10 = *(v5 + 16);
  v42 = v9;
  v43 = v5 + 16;
  v37 = v4;
  v10(v7, &v0[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_metrics], v4);
  v11 = v10;
  v35 = v10;
  sub_100741AA4();
  v38 = *(v5 + 8);
  v36 = v5 + 8;
  v38(v7, v4);
  v12 = [v0 traitCollection];
  v13 = sub_100753C14();

  v14 = *(v44 + 8);
  v44 += 8;
  v41 = v14;
  v15 = v40;
  v14(v3, v40);
  [v8 setFont:v13];

  [v8 setLineBreakMode:4];
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];
  v17 = v39;
  v18 = v37;
  v11(v7, &v1[v39], v37);
  sub_100741B84();
  v19 = v18;
  v20 = v38;
  v38(v7, v19);
  v21 = [v1 traitCollection];
  v22 = sub_100753C14();

  v41(v3, v15);
  [v16 setFont:v22];

  [v16 setLineBreakMode:4];
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
  v23 = &v1[v17];
  v24 = v37;
  v25 = v35;
  v35(v7, v23, v37);
  sub_100741AC4();
  v20(v7, v24);
  v26 = [v1 traitCollection];
  v27 = sub_100753C14();

  v41(v3, v40);
  v28 = v34;
  [v34 setFont:v27];

  v25(v7, &v1[v39], v24);
  v29.super.isa = [v1 traitCollection];
  isa = v29.super.isa;
  v31 = sub_100741B74(v29);

  v38(v7, v24);
  [v28 setNumberOfLines:v31];
  return [v28 setLineBreakMode:4];
}

id CondensedInAppPurchaseContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedInAppPurchaseContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000F4C60()
{
  sub_100741ED4();
  sub_1000F5060(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_1007468B4();
  if (v3)
  {
    sub_100741EC4();
    v1 = sub_1006C301C();

    v2._rawValue = v1;
    sub_100744224(v2);
  }

  return result;
}

uint64_t sub_1000F4D38(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5060(&qword_100928368, type metadata accessor for CondensedInAppPurchaseContentView);
  result = sub_1000F5060(&qword_100928370, type metadata accessor for CondensedInAppPurchaseContentView);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F4E0C()
{
  result = sub_100741B94();
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

void sub_1000F4EC0()
{
  v1 = sub_100741E54();
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel;
  sub_100745C84();
  *(v0 + v4) = sub_100745C64();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel;
  *(v0 + v5) = sub_100745C64();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel;
  *(v0 + v6) = sub_100745C64();
  v7 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton;
  v8 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v0 + v7) = sub_100154454(0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView;
  sub_100741DD4();
  v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *(v0 + v9) = sub_10027562C(v3, 1);
  _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_tileOffset) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1000F5060(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000F5200(unint64_t a1)
{
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v47 = &v45 - v7;
  __chkstk_darwin(v8);
  v56 = &v45 - v9;
  __chkstk_darwin(v10);
  v50 = &v45 - v11;
  __chkstk_darwin(v12);
  v46 = &v45 - v13;
  __chkstk_darwin(v14);
  v49 = &v45 - v15;
  sub_100016C60(0, &qword_100928438);
  isa = sub_100753294().super.isa;
  v17 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v59.receiver = v1;
  v59.super_class = v17;
  objc_msgSendSuper2(&v59, "prepareForCollectionViewUpdates:", isa);

  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    if (a1 >> 62)
    {
      v18 = sub_100754664();
      if (!v18)
      {
        return;
      }
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        return;
      }
    }

    if (v18 < 1)
    {
      __break(1u);
    }

    else
    {
      v19 = 0;
      v48 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate;
      v54 = a1;
      v55 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate;
      v58 = a1 & 0xC000000000000001;
      v20 = (v4 + 32);
      v51 = v4 + 8;
      v52 = (v4 + 16);
      v21 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
      v53 = v18;
      do
      {
        if (v58)
        {
          v22 = sub_100754574();
        }

        else
        {
          v22 = *(a1 + 8 * v19 + 32);
        }

        v23 = v22;
        if (![v22 v21[40]])
        {
          v24 = [v23 indexPathAfterUpdate];
          if (v24)
          {
            v25 = v46;
            v26 = v24;
            sub_100741744();

            v27 = *v20;
            v28 = v49;
            (*v20)(v49, v25, v3);
            (*v52)(v50, v28, v3);
            v29 = v48;
            v30 = *&v1[v48];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v1[v29] = v30;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v30 = sub_1002558B8(0, *(v30 + 2) + 1, 1, v30);
              *&v1[v48] = v30;
            }

            v33 = *(v30 + 2);
            v32 = *(v30 + 3);
            if (v33 >= v32 >> 1)
            {
              v30 = sub_1002558B8(v32 > 1, v33 + 1, 1, v30);
            }

            *(v30 + 2) = v33 + 1;
            v27(&v30[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v33], v50, v3);
            v34 = v49;
            *&v1[v48] = v30;
            (*(v4 + 8))(v34, v3);
            v18 = v53;
            a1 = v54;
            v21 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
          }
        }

        if ([v23 v21[40]] == 1 && (v35 = objc_msgSend(v23, "indexPathBeforeUpdate")) != 0)
        {
          v36 = v47;
          v37 = v35;
          sub_100741744();

          v38 = *v20;
          v39 = v56;
          (*v20)(v56, v36, v3);
          (*v52)(v57, v39, v3);
          v40 = v55;
          v41 = *&v1[v55];
          v42 = swift_isUniquelyReferenced_nonNull_native();
          *&v1[v40] = v41;
          if ((v42 & 1) == 0)
          {
            v41 = sub_1002558B8(0, *(v41 + 2) + 1, 1, v41);
            *&v1[v55] = v41;
          }

          v44 = *(v41 + 2);
          v43 = *(v41 + 3);
          if (v44 >= v43 >> 1)
          {
            v41 = sub_1002558B8(v43 > 1, v44 + 1, 1, v41);
          }

          *(v41 + 2) = v44 + 1;
          v38(&v41[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v44], v57, v3);
          *&v1[v55] = v41;

          (*(v4 + 8))(v56, v3);
          v18 = v53;
          a1 = v54;
          v21 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
        }

        else
        {
        }

        ++v19;
      }

      while (v18 != v19);
    }
  }
}

char *sub_1000F5814(uint64_t a1)
{
  v2 = v1;
  isa = sub_100741704().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "initialLayoutAttributesForAppearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToSlideInAppearAnimate];

  v9 = sub_10046E0A0(a1, v8);

  if (v9)
  {
    [v7 setAlpha:0.4];
    v10 = sub_1000F61B8();
    v11 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  return v7;
}

char *sub_1000F5934(uint64_t a1)
{
  v2 = v1;
  isa = sub_100741704().super.isa;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v5 = objc_msgSendSuper2(&v13, "finalLayoutAttributesForDisappearingItemAtIndexPath:", isa);

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout.LayoutAttributes();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    return v5;
  }

  v7 = v6;
  v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_indexPathsToFadeDisappearAnimate];

  v9 = sub_10046E0A0(a1, v8);

  if (v9)
  {
    v10 = sub_1000F67A0();
    v11 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation];
    *&v7[OBJC_IVAR____TtCC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout16LayoutAttributes_animation] = v10;
  }

  [v7 setZIndex:1];
  return v7;
}

id sub_1000F5A44(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_1007417F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v10 = a1;
  v11 = a4(v9);

  (*(v7 + 8))(v9, v6);

  return v11;
}

void *sub_1000F5B4C(double a1, double a2, double a3, double a4)
{
  v30 = sub_1007417F4();
  v9 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout();
  v38.receiver = v4;
  v38.super_class = v11;
  result = objc_msgSendSuper2(&v38, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (result)
  {
    v13 = result;
    v14 = sub_100016C60(0, &qword_100923730);
    v15 = sub_1007532A4();

    if (v15 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
    {
      v37 = _swiftEmptyArrayStorage;
      v17 = v4;
      v4 = &v37;
      result = sub_1007545C4();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v18 = 0;
      v31 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate;
      v34 = v15 & 0xFFFFFFFFFFFFFF8;
      v35 = OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled;
      v27 = v9 + 1;
      v28 = v17;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = sub_100754574();
          goto LABEL_14;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v18 >= *(v34 + 16))
        {
          goto LABEL_25;
        }

        v19 = *(v15 + 8 * v18 + 32);
LABEL_14:
        v9 = v19;
        [v19 copy];
        sub_100754314();
        swift_unknownObjectRelease();
        if (!swift_dynamicCast())
        {
          goto LABEL_8;
        }

        v20 = i;
        v21 = v14;
        v22 = v36;
        [v36 setZIndex:3];
        if ((*(v17 + v35) & 1) != 0 && (v23 = [v17 collectionView]) != 0)
        {
          v33 = v23;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v32 = sub_10064D5B8();
            swift_unknownObjectRelease();
            v24 = [v22 indexPath];
            v25 = v29;
            sub_100741744();

            v26 = sub_100741774();
            (*v27)(v25, v30);
            if (v26 < v32)
            {
              [v22 setZIndex:4];
            }

            v9 = v22;
            v17 = v28;
            goto LABEL_7;
          }
        }

        else
        {
        }

        v9 = v22;
LABEL_7:
        v14 = v21;
        i = v20;
LABEL_8:
        ++v18;
        v4 = &v37;
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
        if (i == v18)
        {

          return v37;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

id sub_1000F61B8()
{
  v1 = [v0 collectionView];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  [v1 frame];
  Width = CGRectGetWidth(v18);
  CATransform3DMakeTranslation(&v17, Width, 0.0, 0.0);
  v4 = sub_100753064();
  v5 = [objc_opt_self() animationWithKeyPath:v4];

  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 valueWithCATransform3D:&v17];
  [v7 setFromValue:v8];

  v9 = *&CATransform3DIdentity.m33;
  *&v17.m31 = *&CATransform3DIdentity.m31;
  *&v17.m33 = v9;
  v10 = *&CATransform3DIdentity.m43;
  *&v17.m41 = *&CATransform3DIdentity.m41;
  *&v17.m43 = v10;
  v11 = *&CATransform3DIdentity.m13;
  *&v17.m11 = *&CATransform3DIdentity.m11;
  *&v17.m13 = v11;
  v12 = *&CATransform3DIdentity.m23;
  *&v17.m21 = *&CATransform3DIdentity.m21;
  *&v17.m23 = v12;
  v13 = [v6 valueWithCATransform3D:&v17];
  [v7 setToValue:v13];

  v14 = v7;
  v15 = CACurrentMediaTime();
  [v14 setBeginTime:v15 + sub_100741754() * 0.05];
  [v14 setFillMode:kCAFillModeBackwards];
  [v14 setMass:1.0];
  [v14 setStiffness:250.0];
  [v14 setDamping:28.0];
  [v14 setInitialVelocity:0.0];
  [v14 settlingDuration];
  [v14 setDuration:?];

  return v14;
}

id sub_1000F6410(void *a1)
{
  v15 = a1;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v15 copy];
  sub_100754314();
  swift_unknownObjectRelease();
  sub_100016C60(0, &qword_100923730);
  if (swift_dynamicCast())
  {
    v7 = v16;
    [v16 setZIndex:3];
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
    {
      v8 = [v1 collectionView];
      if (v8)
      {
        v9 = v8;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = sub_10064D5B8();
          swift_unknownObjectRelease();
          v11 = [v7 indexPath];
          sub_100741744();

          v12 = sub_100741774();
          (*(v3 + 8))(v6, v2);
          if (v12 < v10)
          {
            [v7 setZIndex:4];
          }
        }
      }
    }

    return v7;
  }

  else
  {
    v14 = v15;

    return v14;
  }
}

id sub_1000F6734(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1000F67A0()
{
  v0 = sub_100753064();
  v1 = [objc_opt_self() animationWithKeyPath:v0];

  v2 = v1;
  [v2 setBeginTime:CACurrentMediaTime()];
  [v2 setDuration:0.1];
  v3 = v2;
  isa = sub_100753424().super.super.isa;
  [v3 setFromValue:isa];

  v5 = sub_100753424().super.super.isa;
  [v3 setToValue:v5];

  v6 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v7) = 1043207291;
  LODWORD(v8) = 1059816735;
  LODWORD(v9) = 1.0;
  v10 = [v6 initWithControlPoints:v7 :0.0 :v8 :v9];
  [v3 setTimingFunction:v10];

  return v3;
}

unint64_t sub_1000F68EC()
{
  result = qword_100928440;
  if (!qword_100928440)
  {
    type metadata accessor for InformationRibbonCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100928440);
  }

  return result;
}

uint64_t sub_1000F6954(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_10092E450);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  swift_getKeyPath();
  sub_100746914();

  sub_1007525C4();
  (*(v4 + 8))(v6, v3);
  sub_100746904();
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v7 = v11;
  v8 = sub_10007DC04();
  v9 = sub_10025E1F8();
  if (v9)
  {
    sub_10025CA48(v9, v7, a2, v8);
  }

  return swift_unknownObjectRelease();
}

char *sub_1000F6AF8(int64_t *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView);
  v3 = a1[2];
  if (v3)
  {
    sub_10001E46C(0, v3, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = (a1 + 4);
    v7 = _swiftEmptyArrayStorage[2];
    v8 = a1 + 5;
    v9 = v3;
    do
    {
      v10 = *v8;
      v17 = v5;
      v11 = v5[3];
      if (v7 >= v11 >> 1)
      {
        sub_10001E46C((v11 > 1), v7 + 1, 1);
        v5 = v17;
      }

      v5[2] = v7 + 1;
      v5[v7 + 4] = v10;
      v8 += 2;
      ++v7;
      --v9;
    }

    while (v9);
    sub_100037D2C(v5);
    sub_1007545C4();
    v12 = objc_opt_self();
    do
    {
      v13 = *v6;
      v6 += 2;
      v14 = [v12 blackColor];
      v15 = [v14 colorWithAlphaComponent:v13];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_100037D2C(_swiftEmptyArrayStorage);
  }

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = _swiftEmptyArrayStorage;

  return sub_100037ED0();
}

id sub_1000F6CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1000F8070(a2, a3);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = a1;
  v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016C60(0, &qword_10092BE10);
  isa = sub_100753294().super.isa;

  [v8 setBackgroundEffects:isa];

  [v8 setOverrideUserInterfaceStyle:*&v3[v7]];

  return [v3 setNeedsLayout];
}

id sub_1000F6DE0()
{
  result = [objc_opt_self() colorEffectSaturate:1.5];
  qword_100928450 = result;
  return result;
}

void sub_1000F6E60(double a1, uint64_t a2, SEL *a3, uint64_t a4, void *a5)
{
  sub_100016C60(0, &unk_10092F760);
  v9 = [objc_opt_self() *a3];
  v10 = [swift_getObjCClassFromMetadata() effectCompositingColor:v9 withMode:a4 alpha:a1];

  if (v10)
  {
    *a5 = v10;
  }

  else
  {
    __break(1u);
  }
}

id sub_1000F6F44(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() _effectWithBlurRadius:a1 scale:0.125];
  if (result)
  {
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000F6FC4()
{
  sub_10000C518(&unk_1009231A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  if (qword_100920248 != -1)
  {
    swift_once();
  }

  v1 = qword_100928448;
  *(v0 + 32) = qword_100928448;
  v2 = qword_100920250;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100928450;
  *(v0 + 40) = qword_100928450;
  v5 = qword_100920258;
  v6 = v4;
  if (v5 == -1)
  {
    v7 = v6;
  }

  else
  {
    swift_once();
    v7 = qword_100928450;
  }

  v8 = qword_100928458;
  *(v0 + 48) = qword_100928458;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007AC000;
  v10 = qword_100928448;
  *(v9 + 32) = qword_100928448;
  *(v9 + 40) = v7;
  v11 = qword_100920260;
  v12 = v8;
  v13 = v10;
  v14 = v7;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = qword_100928460;
  *(v9 + 48) = qword_100928460;
  *&xmmword_10097DAB0 = v0;
  *(&xmmword_10097DAB0 + 1) = v9;

  return v15;
}

uint64_t sub_1000F717C()
{
  sub_10000C518(&unk_1009231A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007AC000;
  if (qword_100920248 != -1)
  {
    swift_once();
  }

  v1 = qword_100928448;
  *(v0 + 32) = qword_100928448;
  v2 = qword_100920250;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = qword_100928450;
  *(v0 + 40) = qword_100928450;
  v5 = qword_100920268;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_100928468;
  *(v0 + 48) = qword_100928468;
  v8 = qword_100920280;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  qword_10097DAC0 = v0;
  *algn_10097DAC8 = *(&xmmword_10097DAB0 + 1);
}

id sub_1000F72DC()
{
  sub_10000C518(&unk_1009231A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A7210;
  if (qword_100920248 != -1)
  {
    swift_once();
  }

  v1 = qword_100928448;
  *(v0 + 32) = qword_100928448;
  v2 = qword_100920258;
  v3 = v1;
  if (v2 == -1)
  {
    v4 = v3;
  }

  else
  {
    swift_once();
    v4 = qword_100928448;
  }

  v5 = qword_100928458;
  *(v0 + 40) = qword_100928458;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A7210;
  *(v6 + 32) = v4;
  v7 = qword_100920260;
  v8 = v5;
  v9 = v4;
  if (v7 != -1)
  {
    swift_once();
  }

  v10 = qword_100928460;
  *(v6 + 40) = qword_100928460;
  qword_10097DAD0 = v0;
  *algn_10097DAD8 = v6;

  return v10;
}

char *sub_1000F744C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  *&v1[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView;
  *&v1[v5] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType] = kCAGradientLayerAxial;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = 0;
  v6 = &v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style];
  v7 = qword_100920280;
  v8 = kCAGradientLayerAxial;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = *(&xmmword_10097DAB0 + 1);
  *v6 = xmmword_10097DAB0;
  v6[1] = v9;
  v1[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade] = 1;
  v42.receiver = v1;
  v42.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setClipsToBounds:0];
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:1];

  [v14 setUserInteractionEnabled:0];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  [*&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*&v14[v16] setClipsToBounds:0];
  v17 = [*&v14[v16] layer];
  [v17 setAllowsGroupBlending:0];

  [*&v14[v16] setUserInteractionEnabled:0];
  [v14 addSubview:*&v14[v16]];
  if (v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade] == 1)
  {
    [v14 insertSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v14[v16]];
  }

  else
  {
    [*&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
  }

  v18 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView;
  v19 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = v19;
    sub_10001E46C(0, v20, 0);
    v22 = _swiftEmptyArrayStorage;
    v23 = _swiftEmptyArrayStorage[2];
    v24 = (a1 + 40);
    v25 = v20;
    do
    {
      v26 = *v24;
      v41 = v22;
      v27 = v22[3];
      if (v23 >= v27 >> 1)
      {
        sub_10001E46C((v27 > 1), v23 + 1, 1);
        v22 = v41;
      }

      v22[2] = v23 + 1;
      v22[v23 + 4] = v26;
      v24 += 2;
      ++v23;
      --v25;
    }

    while (v25);
  }

  else
  {
    v28 = v19;
    v22 = _swiftEmptyArrayStorage;
  }

  sub_100037D2C(v22);

  v29 = *&v14[v18];
  if (v20)
  {
    v40 = *&v14[v18];
    v30 = v29;
    sub_1007545C4();
    v31 = objc_opt_self();
    v32 = 32;
    do
    {
      v33 = *(a1 + v32);
      v34 = [v31 blackColor];
      v35 = [v34 colorWithAlphaComponent:v33];

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v32 += 16;
      --v20;
    }

    while (v20);

    v29 = v40;
  }

  else
  {
    v36 = v29;
  }

  *&v29[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_100037ED0();

  v37 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setMasksToBounds:0];

  v38 = [*&v14[v18] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setCompositingFilter:kCAFilterDestOut];

  return v14;
}

void sub_1000F79C4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView);
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType);
  [v4 setType:v5];

  v6 = sub_100753094();
  v8 = v7;
  if (v6 == sub_100753094() && v8 == v9)
  {

    v12 = &off_1008626E0;
    v13 = 5;
  }

  else
  {
    v11 = sub_100754754();

    if (v11)
    {
      v12 = &off_1008626E0;
    }

    else
    {
      v12 = &off_100862680;
    }

    v13 = v12[2];
    if (!v13)
    {

      sub_100037D2C(_swiftEmptyArrayStorage);

      goto LABEL_18;
    }
  }

  v25 = v1;

  sub_10001E46C(0, v13, 0);
  v14 = _swiftEmptyArrayStorage;
  v15 = _swiftEmptyArrayStorage[2];
  v16 = 5;
  v17 = v13;
  do
  {
    v18 = v12[v16];
    v26 = v14;
    v19 = v14[3];
    if (v15 >= v19 >> 1)
    {
      sub_10001E46C((v19 > 1), v15 + 1, 1);
      v14 = v26;
    }

    v14[2] = v15 + 1;
    v14[v15 + 4] = v18;
    v16 += 2;
    ++v15;
    --v17;
  }

  while (v17);
  sub_100037D2C(v14);
  sub_1007545C4();
  v20 = objc_opt_self();
  v21 = 4;
  do
  {
    v22 = *&v12[v21];
    v23 = [v20 blackColor];
    v24 = [v23 colorWithAlphaComponent:v22];

    sub_1007545A4();
    sub_1007545D4();
    sub_1007545E4();
    sub_1007545B4();
    v21 += 2;
    --v13;
  }

  while (v13);

LABEL_18:
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_100037ED0();

  sub_1000F7CD8();
}

void sub_1000F7CD8()
{
  v1 = v0;
  v2 = sub_100753094();
  v4 = v3;
  if (v2 == sub_100753094() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_100754754();

    if ((v7 & 1) == 0)
    {
      v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle];
      v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY];
      v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY];
      v11 = 0.5;
      if (v8 == 0.0)
      {
        v12 = 0.5;
      }

      else
      {
        v21 = (v9 + v10) * 0.5;
        CGAffineTransformMakeRotation(&v28, *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle]);
        v30.x = 0.0;
        v30.y = v9 - v21;
        v22 = CGPointApplyAffineTransform(v30, &v28);
        v11 = v22.x + 0.5;
        v9 = v21 + v22.y;
        CGAffineTransformMakeRotation(&v28, v8);
        v31.x = 0.0;
        v31.y = v10 - v21;
        v23 = CGPointApplyAffineTransform(v31, &v28);
        v12 = v23.x + 0.5;
        v10 = v21 + v23.y;
      }

      v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
      v25 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v9}];

      v26 = [v24 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v12, v10}];

      return;
    }
  }

  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
  v14 = [v0 traitCollection];
  v15 = sub_1007537F4();

  if (v15)
  {
    v16 = 0.7;
  }

  else
  {
    v16 = 0.3;
  }

  v17 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v16, 1.0}];

  v18 = [v1 traitCollection];
  v19 = sub_1007537F4();

  if (v19)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0;
  }

  v27 = [v13 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v20, 0.0}];
}

void sub_1000F8070(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style + 8);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style) = a1;
  *v3 = a2;

  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView);

  sub_100016C60(0, &qword_10092BE10);
  isa = sub_100753294().super.isa;

  [v4 setBackgroundEffects:isa];
}

id sub_1000F8150()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView];
  result = [v2 superview];
  if (result)
  {

    [v0 bounds];
    return [v2 setFrame:?];
  }

  return result;
}

id sub_1000F8298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10074FB54();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;

  sub_1000F8070(a2, a3);
  sub_10074FB74();
  (*(v8 + 104))(v10, enum case for TodayCard.Style.white(_:), v7);
  sub_1000F8684();
  sub_100753274();
  sub_100753274();
  if (v20[2] == v20[0] && v20[3] == v20[1])
  {
    v14 = 1;
  }

  else if (sub_100754754())
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v14;
  v17 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016C60(0, &qword_10092BE10);
  isa = sub_100753294().super.isa;

  [v17 setBackgroundEffects:isa];

  [v17 setOverrideUserInterfaceStyle:*&v4[v16]];
  return [v4 setNeedsLayout];
}

uint64_t sub_1000F85F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000F8638(uint64_t result, int a2, int a3)
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

unint64_t sub_1000F8684()
{
  result = qword_1009239F0;
  if (!qword_1009239F0)
  {
    sub_10074FB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009239F0);
  }

  return result;
}

id sub_1000F86DC(uint64_t a1)
{
  sub_100016C60(0, &unk_10092F760);
  result = [swift_getObjCClassFromMetadata() effectCompositingColor:a1 withMode:0 alpha:0.4];
  if (result)
  {
    v3 = result;
    sub_10000C518(&unk_1009231A0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1007AC000;
    if (qword_100920270 != -1)
    {
      swift_once();
    }

    v5 = qword_100928470;
    *(v4 + 32) = qword_100928470;
    *(v4 + 40) = v3;
    v6 = qword_100920278;
    v7 = v5;
    v8 = v3;
    if (v6 != -1)
    {
      swift_once();
    }

    v9 = qword_100928478;
    *(v4 + 48) = qword_100928478;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007AC000;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    *(v10 + 48) = v9;
    v11 = v9;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000F8858()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientMaskView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientType) = kCAGradientLayerAxial;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style;
  v4 = qword_100920280;
  v5 = kCAGradientLayerAxial;
  if (v4 != -1)
  {
    swift_once();
  }

  *(v0 + v3) = xmmword_10097DAB0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_includeTopGradientFade) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t type metadata accessor for SearchResultsPageLayoutSectionProvider()
{
  result = qword_1009284F0;
  if (!qword_1009284F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F8A2C(uint64_t a1)
{
  swift_allocObject();
  sub_10000C824(a1, v5);
  sub_10000C824(v5, &v4);
  v2 = sub_10074CB64();
  sub_10000C620(a1);
  sub_10000C620(v5);
  return v2;
}

id sub_1000F8AB8(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(char *, uint64_t, uint64_t), uint64_t a8, uint64_t a9, void *a10)
{
  v65 = a7;
  v62 = a8;
  v63 = a4;
  v66 = a5;
  v67 = a6;
  v64 = a10;
  v58 = a9;
  v12 = sub_1007469A4();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074E984();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v57 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v20 = sub_10000C518(&unk_10092E450);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v54 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v26 = &v49 - v25;
  v27 = a2(v24);
  v28 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v29 = *(v21 + 8);
  v55 = v21 + 8;
  v56 = v20;
  v53 = v29;
  v29(v26, v20);
  v59 = v19;
  v60 = v15;
  v30 = *(v15 + 88);
  v61 = v14;
  v31 = v30(v19, v14);
  if (v31 == enum case for Shelf.ContentType.searchResult(_:) && *(v27 + 16) && (v32 = v50, v33 = v51, v34 = v52, (*(v51 + 16))(v50, v27 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v52), sub_100747E74(), sub_1000FA888(&qword_100927520, &type metadata accessor for AdvertsSearchResult), sub_1007468B4(), (*(v33 + 8))(v32, v34), (v31 = v68) != 0))
  {

    v35 = sub_1000F911C(v28, v27, v63, v66, v67, v65, v62, v58, v64);

    sub_10074CB84();
    v36 = v60;
    v37 = v61;
  }

  else
  {
    v52 = &v49;
    __chkstk_darwin(v31);
    __chkstk_darwin(v38);
    sub_10074CBA4();
    v39 = sub_10074CBB4();
    v40 = v58;
    v41 = v28;
    v51 = v27;
    v42 = v62;
    v50 = v39(v28, sub_1000FA880, &v49 - 4, v63, v66, v67, v65, v62, v58, v64);
    v43 = v54;
    sub_100747C04();
    swift_getKeyPath();
    v45 = v56;
    v44 = v57;
    sub_1007525B4();

    v53(v43, v45);
    v37 = v61;
    v46 = v30(v44, v61);
    if (v46 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = sub_1003EFB6C(v41, v51, v63, v66, v67, v65, v42, v40, v64);

      v36 = v60;
    }

    else
    {
      v35 = v50;
      v36 = v60;
      if (v46 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v47 = sub_1003F0EB0(v41, v51, v63, v66, v67, v65, v62, v40, v64);

        v35 = v47;
      }

      else if (v46 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        [v50 setOrthogonalScrollingBehavior:{2, v66, v67}];
      }

      else
      {

        (*(v36 + 8))(v57, v37);
      }
    }
  }

  (*(v36 + 8))(v59, v37);
  return v35;
}

uint64_t sub_1000F911C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, void *a9)
{
  v156 = a8;
  v146 = a7;
  v161 = a4;
  *&v157 = a3;
  v147 = a1;
  v165 = a9;
  v152 = sub_10074E984();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v155 = v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10000C518(&unk_10092E450);
  v149 = *(v150 - 1);
  __chkstk_darwin(v150);
  v148 = v129 - v13;
  v14 = sub_10074F704();
  v143 = *(v14 - 8);
  __chkstk_darwin(v14);
  v142 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  i = sub_10074CE44();
  v16 = *(i - 1);
  __chkstk_darwin(i);
  v154 = v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v153 = v129 - v19;
  __chkstk_darwin(v20);
  v160 = v129 - v21;
  __chkstk_darwin(v22);
  v159 = v129 - v23;
  v24 = sub_1007469A4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v32 = v129 - v30;
  if (!*(a2 + 16))
  {
    goto LABEL_7;
  }

  v139 = *(a2 + 16);
  v138 = v16;
  v33 = *(v25 + 16);
  v34 = a2;
  v140 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v163 = v33;
  v164 = (v25 + 16);
  (v33)(v129 - v30, a2 + v140, v24, v31);
  v35 = sub_100747E74();
  sub_1000FA888(&qword_100927520, &type metadata accessor for AdvertsSearchResult);
  v144 = v35;
  sub_1007468B4();
  v36 = v169;
  if (!v169)
  {
    v29 = (*(v25 + 8))(v32, v24);
    goto LABEL_6;
  }

  v158 = v24;
  v141 = v32;
  if (sub_100747E54())
  {
    (*(v25 + 8))(v141, v158);

LABEL_6:
    a2 = v34;
LABEL_7:
    v145 = a2;
    i = v129;
    __chkstk_darwin(v29);
    __chkstk_darwin(v37);
    sub_10074CBA4();
    v38 = sub_10074CBB4();
    v39 = v147;
    v40 = v157;
    v41 = v161;
    v42 = v146;
    v160 = a5;
    v163 = a6;
    v164 = v38(v147, sub_1000FA8D0, &v129[-4], v157, v161, a5, a6, v146, v156, v165);
    v43 = v148;
    sub_100747C04();
    swift_getKeyPath();
    v44 = v155;
    v45 = v150;
    sub_1007525B4();

    (*(v149 + 8))(v43, v45);
    v46 = v151;
    v47 = v152;
    v48 = (*(v151 + 88))(v44, v152);
    if (v48 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v49 = sub_1003EFB6C(v39, v145, v40, v41, v160, v163, v42, v156, v165);
    }

    else
    {
      v50 = v164;
      if (v48 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v49 = sub_1003F0EB0(v147, v145, v157, v161, v160, v163, v146, v156, v165);
      }

      else if (v48 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v49 = v164;
        [v164 setOrthogonalScrollingBehavior:2];
      }

      else
      {
        (*(v46 + 8))(v155, v47);
        return v50;
      }
    }

    return v49;
  }

  v135 = v36;
  v137 = v14;
  v51 = sub_100744104();
  v161 = sub_1000FA888(&unk_100928540, &type metadata accessor for SearchResult);
  v162 = v51;
  sub_1007468B4();
  v136 = v25;
  v155 = v27;
  if (v169)
  {
    if (sub_1000F0DA4())
    {
      sub_100748B84();
      v53 = v52;
    }

    else
    {

      v53 = 0.0;
    }
  }

  else
  {
    v53 = 0.0;
  }

  v55 = objc_opt_self();
  v56 = [v55 fractionalWidthDimension:1.0];
  v132 = v55;
  v57 = [v55 absoluteDimension:v53];
  v131 = objc_opt_self();
  v58 = [v131 sizeWithWidthDimension:v56 heightDimension:v57];

  swift_getObjectType();
  v59 = v58;
  sub_10074B564();
  sub_100016C60(0, &unk_10092E470);
  isa = sub_100753294().super.isa;

  v61 = [objc_opt_self() itemWithLayoutSize:v59 supplementaryItems:isa];

  v62 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v63 = swift_allocObject();
  v157 = xmmword_1007A5CF0;
  *(v63 + 16) = xmmword_1007A5CF0;
  *(v63 + 32) = v61;
  v64 = sub_100016C60(0, &qword_100923478);
  v133 = v61;
  v129[2] = v64;
  v65 = sub_100753294().super.isa;

  v130 = v62;
  v134 = v59;
  v66 = [v62 horizontalGroupWithLayoutSize:v59 subitems:v65];

  v67 = swift_allocObject();
  *(v67 + 16) = v157;
  *(v67 + 32) = v66;
  v172 = v67;
  v68 = v140;
  sub_100631794(v34, v34 + v140, 1, (2 * v139) | 1);
  v70 = v69;
  v71 = *(v69 + 16);
  v139 = v66;
  if (v71)
  {
    v171 = _swiftEmptyArrayStorage;
    sub_10001E46C(0, v71, 0);
    v129[1] = v70;
    v72 = v70 + v68;
    v151 = v138 + 104;
    v150 = (v138 + 8);
    v73 = v171;
    v74 = (v136 + 8);
    v75 = *(v136 + 72);
    LODWORD(v148) = enum case for SearchResultCondensedBehavior.always(_:);
    v76 = v155;
    v77 = v158;
    v149 = v75;
    do
    {
      v163(v76, v72, v77);
      sub_1007468B4();
      v78 = v169;
      if (!v169)
      {
        goto LABEL_55;
      }

      v152 = sub_1007493C4();
      if (swift_dynamicCastClass())
      {
        *&v157 = v78;
        v79 = v74;
        sub_1007440F4();
        (*v151)(v160, v148, i);
        sub_1000FA888(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior);
        sub_100753274();
        sub_100753274();
        if (v169 == v167 && v170 == v168)
        {
          v80 = *v150;
          v81 = i;
          (*v150)(v160, i);
          v80(v159, v81);

          v76 = v155;
          v74 = v79;
          v75 = v149;
LABEL_28:
          type metadata accessor for CondensedEditorialSearchResultContentView();
          v85 = type metadata accessor for CondensedEditorialSearchResultContentView;
          v86 = &unk_100928238;
          goto LABEL_37;
        }

        v82 = sub_100754754();
        v83 = *v150;
        v84 = i;
        (*v150)(v160, i);
        v83(v159, v84);

        v76 = v155;
        v75 = v149;
        if (v82)
        {
          goto LABEL_28;
        }
      }

      v87 = sub_100741ED4();
      if (swift_dynamicCastClass())
      {
        *&v157 = v87;
        sub_1007440F4();
        (*v151)(v154, v148, i);
        sub_1000FA888(&qword_100928228, &type metadata accessor for SearchResultCondensedBehavior);
        sub_100753274();
        sub_100753274();
        if (v169 == v167 && v170 == v168)
        {
          v88 = *v150;
          v89 = i;
          (*v150)(v154, i);
          v88(v153, v89);

          v76 = v155;
          v75 = v149;
LABEL_34:
          type metadata accessor for CondensedInAppPurchaseContentView();
          v85 = type metadata accessor for CondensedInAppPurchaseContentView;
          v86 = &unk_100928230;
LABEL_37:
          sub_1000FA888(v86, v85);
          v77 = v158;
          goto LABEL_38;
        }

        LODWORD(v145) = sub_100754754();
        v90 = *v150;
        v91 = i;
        (*v150)(v154, i);
        v90(v153, v91);

        v76 = v155;
        v75 = v149;
        if (v145)
        {
          goto LABEL_34;
        }
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for AdvertsSearchResultContentView();
        v85 = type metadata accessor for AdvertsSearchResultContentView;
        v86 = &unk_100928220;
        goto LABEL_37;
      }

      sub_1007474C4();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for BundleSearchResultContentView();
        v85 = type metadata accessor for BundleSearchResultContentView;
        v86 = &unk_100928218;
        goto LABEL_37;
      }

      sub_100742374();
      if (swift_dynamicCastClass())
      {
        type metadata accessor for AppSearchResultContentView();
        v85 = type metadata accessor for AppSearchResultContentView;
        v86 = &unk_100928210;
        goto LABEL_37;
      }

      if (swift_dynamicCastClass())
      {
        type metadata accessor for EditorialSearchResultContentView();
        v85 = type metadata accessor for EditorialSearchResultContentView;
        v86 = &unk_100928208;
        goto LABEL_37;
      }

      v94 = swift_dynamicCastClass();
      v77 = v158;
      if (v94)
      {
        type metadata accessor for InAppPurchaseSearchResultContentView();
        v95 = type metadata accessor for InAppPurchaseSearchResultContentView;
        v96 = &unk_100928200;
      }

      else
      {
        sub_10074C814();
        if (swift_dynamicCastClass())
        {
          type metadata accessor for LockupCollectionSearchResultContentView();
          v95 = type metadata accessor for LockupCollectionSearchResultContentView;
          v96 = &unk_1009281F8;
        }

        else
        {
          sub_100742574();
          if (swift_dynamicCastClass())
          {
            type metadata accessor for AppEventSearchResultContentView();
            v95 = type metadata accessor for AppEventSearchResultContentView;
            v96 = &unk_1009281F0;
          }

          else
          {
            sub_1007476D4();
            if (!swift_dynamicCastClass())
            {

LABEL_55:
              (*v74)(v76, v77);
              v93 = 0;
              goto LABEL_56;
            }

            type metadata accessor for GuidedSearchResultContentView();
            v95 = type metadata accessor for GuidedSearchResultContentView;
            v96 = &unk_1009281E8;
          }
        }
      }

      sub_1000FA888(v96, v95);
LABEL_38:
      sub_100748B84();
      v93 = v92;

      (*v74)(v76, v77);
LABEL_56:
      v171 = v73;
      v98 = v73[2];
      v97 = v73[3];
      if (v98 >= v97 >> 1)
      {
        sub_10001E46C((v97 > 1), v98 + 1, 1);
        v73 = v171;
      }

      v73[2] = v98 + 1;
      v73[v98 + 4] = v93;
      v72 += v75;
      --v71;
    }

    while (v71);
  }

  v99 = sub_1007499E4();

  sub_1004A00C8(v99);
  v100 = v172;
  v101 = v172 >> 62;
  if (v172 >> 62)
  {
    goto LABEL_71;
  }

  v102 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = 0; v102; i = v101)
  {
    v101 = 0;
    v103 = 0.0;
    while (1)
    {
      if ((v100 & 0xC000000000000001) != 0)
      {
        v104 = sub_100754574();
      }

      else
      {
        if (v101 >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v104 = *(v100 + 8 * v101 + 32);
      }

      v105 = v104;
      v106 = (v101 + 1);
      if (__OFADD__(v101, 1))
      {
        break;
      }

      v107 = [v104 layoutSize];
      v108 = [v107 heightDimension];

      [v108 dimension];
      v110 = v109;

      v103 = v103 + v110;
      ++v101;
      if (v106 == v102)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    v102 = sub_100754664();
  }

  v103 = 0.0;
LABEL_73:
  v111 = i;
  if (i)
  {
    result = sub_100754664();
  }

  else
  {
    result = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v112 = v137;
  v113 = v143;
  v114 = v142;
  if (!__OFSUB__(result, 1))
  {
    v115 = ((result - 1) & ~((result - 1) >> 63));
    sub_100747B84();
    sub_10074F5B4();
    v117 = v116;
    v118 = *(v113 + 8);
    v118(v114, v112);
    v119 = v132;
    v120 = [v132 fractionalWidthDimension:1.0];
    v121 = [v119 absoluteDimension:v103 + v117 * v115];
    v122 = [v131 sizeWithWidthDimension:v120 heightDimension:v121];

    if (v111)
    {
      sub_100754654();
    }

    else
    {
      sub_100754764();
    }

    v123 = sub_100753294().super.isa;

    v124 = [v130 verticalGroupWithLayoutSize:v122 subitems:v123];

    v125 = objc_opt_self();
    sub_100747B84();
    sub_10074F5B4();
    v127 = v126;
    v118(v114, v137);
    v128 = [v125 fixedSpacing:v127];
    [v124 setInterItemSpacing:v128];

    v49 = [objc_opt_self() sectionWithGroup:v124];

    (*(v136 + 8))(v141, v158);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000FA83C()
{
  sub_10074CBC4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000FA888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FA8D8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_100754724();
  v18 = *(v1 - 8);
  v19 = v1;
  __chkstk_darwin(v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100928550);
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  v7 = sub_100747524();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074ECD4();
  sub_1000FAD94(&qword_100928558, &type metadata accessor for Action);
  sub_1007468B4();
  if (v21[0])
  {
    sub_100744FD4();
    sub_1000FAD94(&unk_100928560, &type metadata accessor for SearchAdAction);
    sub_1007468B4();
    v11 = v21[0];
    if (v21[0])
    {
    }

    if (sub_10074ECC4() && (, !v11))
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      if (qword_100921B28 != -1)
      {
        swift_once();
      }

      v14 = sub_100743CB4();
      sub_10000D0FC(v14, qword_100982A80);
      sub_100743C74();
      swift_getKeyPath();
      sub_100746914();

      v21[5] = v21[0];
      sub_100743464();
      swift_unknownObjectRelease();
      (*(v17 + 8))(v6, v4);
      sub_100743C84();
      sub_10000C888(v21, v21[3]);
      swift_getKeyPath();
      sub_100746914();

      sub_100536120();
      sub_100750564();
      swift_unknownObjectRelease();
      (*(v18 + 8))(v3, v19);
      sub_10000C620(v21);
      v12 = v20;
    }

    else
    {
      (*(v8 + 104))(v10, enum case for ComponentSeparator.Position.bottom(_:), v7);
      v12 = v20;
    }

    sub_100747534();

    v13 = 0;
  }

  else
  {
    v13 = 1;
    v12 = v20;
  }

  v15 = sub_100747564();
  return (*(*(v15 - 8) + 56))(v12, v13, 1, v15);
}

uint64_t sub_1000FAD94(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000FADEC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel;
  if (qword_1009210D8 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100980FC0);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_100745C84());
  *&v5[v18] = sub_100745C74();
  v37.receiver = v5;
  v37.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 grayColor];
  [v32 setTextColor:v33];

  v34 = *&v28[v29];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v35 = v34;
  sub_100745BF4();

  [v28 addSubview:*&v28[v29]];
  return v28;
}

double sub_1000FB270(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_100750E94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_100750BD4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750E84();
  if (qword_1009210D8 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  sub_10000D0FC(v13, qword_100980FC0);
  sub_100750E54();
  (*(v5 + 8))(v7, v4);
  sub_100750BB4();

  sub_100750BF4();
  v14 = [a3 traitCollection];
  sub_100750BC4();
  v16 = v15;

  (*(v10 + 8))(v12, v9);
  return v16;
}

void sub_1000FB4E4()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension20ProductNoRatingsView_statusLabel;
  if (qword_1009210D8 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  v11 = sub_10000D0FC(v10, qword_100980FC0);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_100745C84());
  *(v1 + v9) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

id sub_1000FB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v9 = [v7 contentView];
  [a6 pageMarginInsets];
  [v9 setLayoutMargins:?];

  v10 = sub_100744D04();
  sub_10030B4D8(v10, v11);
  v12 = sub_100744CF4();

  return sub_10030B4E4(v12, v13);
}

double sub_1000FB868(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = sub_100748B54();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100748B74();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10074CD14();
  v55 = *(v54 - 8);
  *&v10 = __chkstk_darwin(v54).n128_u64[0];
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 pageMarginInsets];
  sub_100753BA4();
  v13 = [a5 traitCollection];
  v14 = sub_1007537D4();

  v15 = 4;
  if ((v14 & 1) == 0)
  {
    v15 = 1;
  }

  v52 = v15;
  v45 = a1;
  sub_100744D04();
  v44 = v16;
  v17 = sub_100038D38();
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  sub_10000D0FC(v18, qword_10097F928);
  v19 = [a5 traitCollection];
  sub_100753C14();

  v20 = sub_10074F3F4();
  v62 = v20;
  v21 = sub_1000FBF98(&qword_10092AC70, &type metadata accessor for Feature);
  v63 = v21;
  v22 = sub_10000D134(v61);
  v23 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v24 = *(v20 - 8);
  v43 = v17;
  v25 = *(v24 + 104);
  v25(v22, enum case for Feature.measurement_with_labelplaceholder(_:), v20);
  sub_10074FC74();
  v53 = a5;
  sub_10000C620(v61);
  sub_10074CD04();
  sub_10074CCE4();
  v26 = *(v55 + 8);
  v55 += 8;
  v26(v12, v54);
  v45 = sub_100744CF4();
  v44 = v27;
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v18, qword_10097F940);
  v28 = [v53 traitCollection];
  sub_100753C14();

  v59 = v20;
  v60 = v21;
  v29 = sub_10000D134(v58);
  v25(v29, v23, v20);
  sub_10074FC74();
  sub_10000C620(v58);
  sub_10074CD04();
  sub_10074CCE4();
  v26(v12, v54);
  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v30 = v47;
  v31 = sub_10000D0FC(v47, qword_10097F910);
  (*(v46 + 16))(v48, v31, v30);
  v32 = v62;
  v33 = v63;
  v34 = sub_10000C888(v61, v62);
  v57[3] = v32;
  v57[4] = *(v33 + 8);
  v35 = sub_10000D134(v57);
  (*(*(v32 - 8) + 16))(v35, v34, v32);
  v36 = v59;
  v37 = v60;
  v38 = sub_10000C888(v58, v59);
  v56[3] = v36;
  v56[4] = *(v37 + 8);
  v39 = sub_10000D134(v56);
  (*(*(v36 - 8) + 16))(v39, v38, v36);
  v40 = v49;
  sub_100748B64();
  sub_1000FBF98(&unk_100933210, &type metadata accessor for EditorialQuoteLayout);
  v41 = v51;
  sub_100750404();
  (*(v50 + 8))(v40, v41);
  sub_10000C620(v58);
  sub_10000C620(v61);
  return a2;
}

uint64_t sub_1000FBF98(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000FBFE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];
    if (v2)
    {
      v3 = v2;
      isa = sub_100741704().super.isa;
      [v1 collectionView:v3 didSelectItemAtIndexPath:isa];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000FC0A8()
{
  v1 = v0;
  v46 = swift_isaMask & *v0;
  v2 = sub_1007521E4();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100752224();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_100752244();
  v48 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v45 - v8;
  v9 = sub_1007417F4();
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  __chkstk_darwin(v9);
  v45 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v45 - v12;
  v13 = sub_10074CBD4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_100930688;
  result = swift_beginAccess();
  v19 = *(v0 + v17);
  if (!v19)
  {
    return result;
  }

  v20 = v19;
  aBlock[6] = sub_10074BDE4();
  aBlock[7] = v21;
  sub_1007544E4();
  sub_10074CBE4();
  sub_10074CD74();
  v23 = v22;

  result = (*(v14 + 8))(v16, v13);
  if (v23)
  {
    return result;
  }

  sub_10074BDD4();
  v24 = v58;
  sub_100741764();
  result = [v1 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v25 = result;
  v26.super.isa = sub_100741704().super.isa;
  result = [v1 collectionView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v27 = result;
  [result contentInset];
  v29 = v28;

  [v25 _scrollToItemAtIndexPath:v26.super.isa atScrollPosition:1 additionalInsets:1 animated:{16.0 - v29, 0.0, 0.0, 0.0}];
  if (sub_10074BDC4())
  {
    sub_10074BDD4();
    if ((v30 & 1) == 0)
    {
      sub_1000A7FA0();
      v31 = sub_100753774();
      sub_100752234();
      v32 = v47;
      sub_1007522B4();
      v48 = *(v48 + 8);
      (v48)(v6, v55);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = v56;
      v34 = v57;
      v36 = v45;
      (*(v56 + 16))(v45, v58, v57);
      v37 = (*(v35 + 80) + 80) & ~*(v35 + 80);
      v38 = swift_allocObject();
      v39 = v46;
      *(v38 + 16) = *(v46 + 552);
      *(v38 + 24) = *(v39 + 560);
      *(v38 + 40) = *(v39 + 576);
      *(v38 + 48) = *(v39 + 584);
      *(v38 + 64) = *(v39 + 600);
      *(v38 + 72) = v33;
      (*(v35 + 32))(v38 + v37, v36, v34);
      aBlock[4] = sub_1000FC8E8;
      aBlock[5] = v38;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100868258;
      v40 = _Block_copy(aBlock);

      v41 = v49;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10002DCDC();
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      v42 = v51;
      v43 = v54;
      sub_1007543A4();
      sub_100753734();
      _Block_release(v40);

      (*(v53 + 8))(v42, v43);
      v44 = v41;
      v24 = v58;
      (*(v50 + 8))(v44, v52);
      (v48)(v32, v55);
    }
  }

  return (*(v56 + 8))(v24, v57);
}

uint64_t sub_1000FC7EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FC824()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000FC994(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000FC9AC()
{
  v1 = sub_100743184();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v5 - 8);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v34 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore);
  v12 = [v11 ams_activeiTunesAccount];
  v13 = [v12 ams_DSID];

  v14 = objc_opt_self();
  v15 = [v14 standardUserDefaults];
  v16 = v13;
  v17 = sub_100753064();
  [v15 setObject:v16 forKey:v17];

  sub_100741444();
  v18 = sub_100741454();
  v19 = *(v18 - 8);
  v34 = *(v19 + 56);
  v34(v10, 0, 1, v18);
  sub_1000FEAE4(v10);
  sub_10074B274();
  v20 = sub_100743154();
  (*(v2 + 8))(v4, v1);
  if ((v20 & 1) == 0)
  {
    return;
  }

  v21 = [v11 ams_activeiTunesAccount];
  v22 = [v21 ams_DSID];

  v23 = [v14 standardUserDefaults];
  v24 = sub_1006FE43C();

  if (v22)
  {
    if (v24)
    {
      sub_100016C60(0, &qword_10092BE20);
      v25 = v22;
      v26 = sub_100753FC4();

      v27 = v26 ^ 1;
LABEL_7:

      goto LABEL_10;
    }

    v27 = 1;
  }

  else
  {
    if (v24)
    {
      v27 = 1;
      goto LABEL_7;
    }

    v27 = 0;
  }

LABEL_10:
  v28 = [v14 standardUserDefaults];
  v29 = v35;
  sub_1006FE534(v35);

  LODWORD(v28) = (*(v19 + 48))(v29, 1, v18);
  sub_10000C8CC(v29, &unk_100928740);
  if (v28 == 1 || (v27 & 1) != 0)
  {
    v30 = v22;
    v31 = [v14 standardUserDefaults];
    v32 = v30;
    v33 = sub_100753064();
    [v31 setObject:v32 forKey:v33];

    sub_100741444();
    v34(v10, 0, 1, v18);
    sub_1000FECC4(v10);
  }
}

uint64_t sub_1000FCE1C()
{
  v1 = sub_10000C518(&unk_100928740);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_100753064();
  [v7 setObject:v8 forKey:v9];

  sub_100741444();
  v10 = sub_100741454();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_1000FEEA4(v4);
}

uint64_t sub_1000FCF94()
{
  v1 = sub_10000C518(&unk_100928740);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  v5 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore) ams_activeiTunesAccount];
  v6 = [v5 ams_DSID];

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = v6;
  v9 = sub_100753064();
  [v7 setObject:v8 forKey:v9];

  sub_100741444();
  v10 = sub_100741454();
  (*(*(v10 - 8) + 56))(v4, 0, 1, v10);
  return sub_1000FF084(v4);
}

void sub_1000FD10C(uint64_t a1)
{
  v2 = sub_10074ABC4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for FamilyCircleLookupResult.notInFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily] = 0;
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v10[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = 0;
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v11[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily] = v8;
    }
  }

  else if (v7 == enum case for FamilyCircleLookupResult.inFamily(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = *v6;
    swift_beginAccess();
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v13[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily] = 1;
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v14[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer] = v12;
    }

    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v15[OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily] = 0;
    }
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_1000FD3A0()
{
  if (qword_100921D98 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_100982F20);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000D134(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_100752424();
  sub_10000C8CC(v4, &unk_100923520);
  sub_100752D04();
}

uint64_t sub_1000FD56C(uint64_t a1, void *a2)
{
  v5 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_100741454();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_1000FF264(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000C8CC(v7, &unk_100928740);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  if (!a2)
  {
LABEL_9:
    (*(v9 + 8))(v14, v8);
    return 0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_accountStore);
  v16 = a2;
  v17 = [v15 ams_activeiTunesAccount];
  if (!v17 || (v18 = v17, v19 = [v17 ams_DSID], v18, !v19))
  {

    goto LABEL_9;
  }

  sub_100016C60(0, &qword_1009327F0);
  if (sub_100753FC4())
  {
    sub_100741444();
    sub_1007413C4();
    v21 = v20;

    v22 = *(v9 + 8);
    v22(v11, v8);
    v22(v14, v8);
    return v21;
  }

  (*(v9 + 8))(v14, v8);

  return 0;
}

double sub_1000FD82C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v7 - 8);
  v9 = v47 - v8;
  v10 = sub_100743184();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0xD000000000000012 && 0x800000010076B480 == a2 || (sub_100754754() & 1) != 0)
  {
    sub_10074B274();
    v14 = sub_100743154();
LABEL_5:
    v15 = v14;
    (*(v11 + 8))(v13, v10);
    *(a3 + 24) = &type metadata for Bool;
    v17 = v15 & 1;
LABEL_6:
    *a3 = v17;
    return result;
  }

  if (a1 == 0xD000000000000016 && 0x800000010076B4A0 == a2 || (sub_100754754() & 1) != 0)
  {
    sub_10074B274();
    v14 = sub_100743174();
    goto LABEL_5;
  }

  if (a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL || (sub_100754754() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isInFamily;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000011 && 0x800000010076B2B0 == a2 || (sub_100754754() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_isFamilyOrganizer;
    goto LABEL_15;
  }

  if (a1 == 0x74616572436E6163 && a2 == 0xEF796C696D614665 || (sub_100754754() & 1) != 0)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28InAppMessagesContextProvider_canCreateFamily;
LABEL_15:
    v19 = *(v3 + v18);
    if (v19 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v19 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (a1 == 0xD000000000000011 && 0x8000000100768EF0 == a2 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000014 && 0x800000010076B4C0 == a2 || (sub_100754754() & 1) != 0)
  {
    goto LABEL_16;
  }

  v47[1] = v3;
  if (a1 == 0xD00000000000001ELL && 0x800000010076B4E0 == a2 || (sub_100754754() & 1) != 0)
  {
    v20 = objc_opt_self();
    v21 = [v20 standardUserDefaults];
    sub_1006FE08C(v9);

    v22 = [v20 standardUserDefaults];
    v23 = sub_1006FDF94();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000001BLL && 0x800000010076B500 == a2 || (sub_100754754() & 1) != 0)
  {
    v28 = objc_opt_self();
    v29 = [v28 standardUserDefaults];
    sub_1006FDE38(v9);

    v22 = [v28 standardUserDefaults];
    v23 = sub_1006FDD40();
    goto LABEL_36;
  }

  if (a1 == 0xD000000000000023 && 0x800000010076B520 == a2 || (sub_100754754() & 1) != 0)
  {
    v30 = objc_opt_self();
    v31 = [v30 standardUserDefaults];
    sub_1006FE2E0(v9);

    v22 = [v30 standardUserDefaults];
    v23 = sub_1006FE1E8();
    goto LABEL_36;
  }

  if (a1 == 0xD00000000000002BLL && 0x800000010076B550 == a2 || (sub_100754754() & 1) != 0)
  {
    v32 = objc_opt_self();
    v33 = [v32 standardUserDefaults];
    sub_1006FE534(v9);

    v22 = [v32 standardUserDefaults];
    v23 = sub_1006FE43C();
LABEL_36:
    v24 = v23;

    v25 = sub_1000FD56C(v9, v24);
    v27 = v26;

    sub_10000C8CC(v9, &unk_100928740);
    if ((v27 & 1) == 0)
    {
      *(a3 + 24) = &type metadata for Double;
      *a3 = v25;
      return result;
    }

    goto LABEL_16;
  }

  if ((a1 != 0xD000000000000033 || 0x800000010076B580 != a2) && (sub_100754754() & 1) == 0)
  {
    v46 = sub_1000FF334();
    if (v46 != 2)
    {
      *(a3 + 24) = &type metadata for Bool;
      v17 = v46 & 1;
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 standardUserDefaults];
  sub_1006FE2E0(v9);

  v36 = [v34 standardUserDefaults];
  v37 = sub_1006FE1E8();

  v38 = COERCE_DOUBLE(sub_1000FD56C(v9, v37));
  LOBYTE(v36) = v39;

  sub_10000C8CC(v9, &unk_100928740);
  if (v36 & 1) != 0 || (v40 = [v34 standardUserDefaults], sub_1006FE534(v9), v40, v41 = objc_msgSend(v34, "standardUserDefaults"), v42 = sub_1006FE43C(), v41, v43 = COERCE_DOUBLE(sub_1000FD56C(v9, v42)), v45 = v44, v42, sub_10000C8CC(v9, &unk_100928740), (v45))
  {
LABEL_16:
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  result = v38 - v43;
  *(a3 + 24) = &type metadata for Double;
  *a3 = v38 - v43;
  return result;
}

uint64_t sub_1000FE16C()
{
  v0 = sub_1007521E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752224();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00);
  v8 = sub_100753774();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1000FF30C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_1008682A8;
  v10 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1000FE404()
{
  v0 = sub_100749B54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100749B44();
    sub_100749B34();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = sub_100016C60(0, &qword_100926D00);
    v7 = sub_100753774();
    v8[3] = v6;
    v8[4] = &protocol witness table for OS_dispatch_queue;
    v8[0] = v7;
    sub_100752D64();

    (*(v1 + 8))(v3, v0);
    sub_10000C620(v8);
  }
}

uint64_t type metadata accessor for InAppMessagesMetricsDelegate()
{
  result = qword_100928730;
  if (!qword_100928730)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FEA54()
{
  result = sub_1007527A4();
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

uint64_t sub_1000FEAE4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740);
  return sub_10000C8CC(v7, &unk_100928740);
}

uint64_t sub_1000FECC4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740);
  return sub_10000C8CC(v7, &unk_100928740);
}

uint64_t sub_1000FEEA4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740);
  return sub_10000C8CC(v7, &unk_100928740);
}

uint64_t sub_1000FF084(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = [objc_opt_self() standardUserDefaults];
  sub_1000FF264(a1, v7);
  sub_1000FF264(v7, v4);
  v9 = sub_100741454();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v4, 1, v9) != 1)
  {
    isa = sub_1007413D4().super.isa;
    (*(v10 + 8))(v4, v9);
  }

  v12 = sub_100753064();
  [v8 setObject:isa forKey:v12];

  swift_unknownObjectRelease();
  sub_10000C8CC(a1, &unk_100928740);
  return sub_10000C8CC(v7, &unk_100928740);
}

uint64_t sub_1000FF264(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF2D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000FF314(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000FF334()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_100753094();
  }

  v2 = objc_allocWithZone(FAEligiblityEvaluationRequest);
  v3 = sub_100753064();
  v4 = sub_100753064();

  v5 = [v2 initWithPropertyName:v3 bundleID:v4];

  v12[0] = 0;
  v6 = [v5 fetchEligibilityWithError:v12];
  if (v12[0])
  {
    v7 = qword_100921D98;
    v8 = v12[0];
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_100752E44();
    sub_10000D0FC(v9, qword_100982F20);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v12[3] = sub_100016C60(0, &unk_100928750);
    v12[0] = v8;
    v10 = v8;
    sub_100752424();
    sub_10000C8CC(v12, &unk_100923520);
    sub_100752D04();
  }

  if (v6 == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (v6 != 1);
  }
}

uint64_t *sub_1000FF640@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

char *sub_1000FF668(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = sub_10074AB44();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = sub_100747144();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = (&v99 - v27);
  v28 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = sub_100752AC4();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory();
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  sub_100745C84();
  v49 = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  sub_100752A94();
  sub_10000C8CC(v124, &unk_100923520);
  sub_10000C8CC(v125, &unk_100923520);
  sub_100753C74();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = sub_1007439C4();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = sub_100747134();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_100016B4C(v33, v30, &unk_100928A90);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10000C8CC(v30, &unk_100928A90);
    v57 = 0;
  }

  else
  {
    v57 = sub_100743964();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_1003AFADC(v57, v105);

  if (qword_100920AE8 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_10000D0FC(v122, qword_10097FF70);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_10010A978(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_10010A978(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_100016B4C(v61, v111, &unk_100940600);
  v65 = v103;
  sub_100016B4C(v103, v120, &qword_100928A88);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_100016C60(0, &qword_100923500);
  v99 = sub_100753DB4();
  sub_10000C8CC(v65, &qword_100928A88);
  sub_10000C8CC(v61, &unk_100940600);
  sub_10010A9E0(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(v104, &unk_100928A90);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_10010AAF8(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10010AAF8(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100066578(v64, v70 + v68[6], &unk_100940600);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10000C8CC(v71, &qword_100928A88);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_10010AAF8(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_10010AAF8(v74, v109 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView];
  v81 = sub_100753DB4();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = sub_100750534();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  sub_100745BA4();

  v93 = *&v77[v82];
  sub_100745C34();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = sub_100753064();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  sub_100745BF4();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_1001005A8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (sub_100754754() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_10010063C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074AB44();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = sub_100754754(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      sub_100745C84();

      v27 = sub_100745C64();
      [v27 setNumberOfLines:1];
      v28 = sub_100753064();

      [v27 setText:v28];

      v29 = sub_100745C34();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *((swift_isaMask & *v3) + 0x1C0);
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_10010A978(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_10010A9E0(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_10010A978(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = sub_100750534();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_10010A9E0(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      sub_100745BA4();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_10010A978(v39, v48, v46);
      sub_10010A9E0(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_10010A9E0(v41, v36);
      if (v42)
      {
        v43 = sub_100753064();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      sub_100745BF4();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_100100BDC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      sub_10074F3D4();
      sub_10010AA40(&unk_100928A50, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = sub_100753014();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_1007433C4();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_10074F324();
    sub_100743364();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_100100D7C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *(v3 + *a2);
  if (a1)
  {
    if (v6)
    {
      sub_10074F3D4();
      sub_10010AA40(&unk_100928A50, &type metadata accessor for Artwork);

      v7 = sub_100753014();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v8 = *a3;
  v9 = *(v5 + *a3);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(v5 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + v8) = 0;
}

void sub_100100E7C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      sub_10074F3D4();
      sub_10010AA40(&unk_100928A50, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = sub_100753014();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_1007433C4();
    v6 = sub_1007431D4();
    sub_10074F324();
    sub_100743364();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView] = v6;
  }
}

void sub_100101014(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_10074AB44();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_100745BF4();
    [v4 addSubview:v14];
  }
}

id sub_100101150(uint64_t a1)
{
  v3 = sub_100752AC4();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style];
  swift_beginAccess();
  sub_10010A978(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_10010A41C(v16, a1);
  result = sub_10010A9E0(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = sub_100750534();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    sub_100745BA4();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      sub_100745BA4();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = sub_100753064();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_100016B4C(&v17[v14[6]], v27, &unk_100940600);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10000C8CC(v27, &unk_100940600);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_10010AAF8(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (sub_100745C84(), v50 = sub_100745C64(), sub_100100FFC(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, sub_100752A94(), sub_10000C8CC(&v91, &unk_100923520), sub_10000C8CC(&v93, &unk_100923520), sub_100753C74(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          sub_100745BA4();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? sub_100753064() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              sub_100745C34();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
      if (v60 || (sub_100745C84(), v67 = sub_100745C64(), sub_100101008(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, sub_100752A94(), sub_10000C8CC(&v91, &unk_100923520), sub_10000C8CC(&v93, &unk_100923520), sub_100753C74(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          sub_100745BA4();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? sub_100753064() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              sub_100745C34();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_10010A9E0(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100101BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style;
  swift_beginAccess();
  return sub_10010A978(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_100101C4C(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_style;
  swift_beginAccess();
  sub_10010A978(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_10010AB60(a1, v1 + v6);
  swift_endAccess();
  sub_100101150(v5);
  sub_10010A9E0(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_10010A9E0(v5, type metadata accessor for TitleHeaderView.Style);
}

void sub_100101D58(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

void sub_100101E80(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10000C518(&unk_100928A60);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_100016B4C(a1, v17, &qword_10093FDB0);
  sub_100016B4C(v2 + v18, &v17[v19], &qword_10093FDB0);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10000C8CC(v17, &qword_10093FDB0);
      return;
    }
  }

  else
  {
    sub_100016B4C(v17, v13, &qword_10093FDB0);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_10010AAF8(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_10050D4C8(v13, v26);
      sub_10010A9E0(v26, type metadata accessor for Accessory);
      sub_10010A9E0(v13, type metadata accessor for Accessory);
      sub_10000C8CC(v17, &qword_10093FDB0);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_10010A9E0(v13, type metadata accessor for Accessory);
  }

  sub_10000C8CC(v17, &unk_100928A60);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_100016B4C(v33, v31, &qword_10093FDB0);
  swift_beginAccess();
  sub_10010AA88(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_100016B4C(v21, v32, &qword_10093FDB0);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10000C8CC(v23, &qword_10093FDB0);
    sub_100101D58(0);
  }

  else
  {
    sub_10050A2DC(v30);
    v25 = v24;
    sub_10010A9E0(v23, type metadata accessor for Accessory);
    sub_100101D58(v25);
  }
}

double sub_100102390(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v46 = sub_100753094();
    v47 = v18;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v45 = sub_100753094();
    v24 = v23;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v44 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v44 = sub_100753094();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = sub_100753094();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*((swift_isaMask & *v3) + 0x1C0))(v39);
  [v3 layoutMargins];
  LOBYTE(v43) = 1;
  sub_1003D5958(v46, v47, v19, v45, v24, v25, v44, v30, a1, a2, v12, v14, v34, v36, v38, v9, v43, v3);
  v41 = v40;

  sub_10010A9E0(v9, type metadata accessor for TitleHeaderView.Style);
  return v41;
}

id sub_100102818()
{
  v1 = sub_100750354();
  v422 = *(v1 - 8);
  v423 = v1;
  __chkstk_darwin(v1);
  v421 = &v397 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = sub_100747154();
  v418 = *(v420 - 8);
  __chkstk_darwin(v420);
  v417 = &v397 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747144();
  v412 = *(v4 - 8);
  v413 = v4;
  __chkstk_darwin(v4);
  v414 = &v397 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = sub_100747184();
  v416 = *(v419 - 8);
  __chkstk_darwin(v419);
  v415 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = sub_100747134();
  v433 = *(v439 - 8);
  __chkstk_darwin(v439);
  v411 = &v397 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v438 = &v397 - v9;
  v10 = sub_100747174();
  v452 = *(v10 - 8);
  v453 = v10;
  __chkstk_darwin(v10);
  v405 = &v397 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v451 = &v397 - v13;
  __chkstk_darwin(v14);
  v450 = &v397 - v15;
  __chkstk_darwin(v16);
  v437 = &v397 - v17;
  v18 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v18 - 8);
  v427 = &v397 - v19;
  v20 = sub_100740E74();
  v431 = *(v20 - 1);
  v432 = v20;
  __chkstk_darwin(v20);
  v430 = &v397 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100750534();
  v400 = *(v22 - 8);
  v401 = v22;
  __chkstk_darwin(v22);
  v399 = &v397 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v426 = *(v455 - 1);
  __chkstk_darwin(v455);
  v454 = &v397 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v435 = &v397 - v26;
  __chkstk_darwin(v27);
  v406 = &v397 - v28;
  __chkstk_darwin(v29);
  v403 = &v397 - v30;
  v424 = sub_10000C518(&qword_1009289F8);
  v409 = *(v424 - 8);
  __chkstk_darwin(v424);
  v402 = &v397 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v404 = &v397 - v33;
  __chkstk_darwin(v34);
  v445 = &v397 - v35;
  __chkstk_darwin(v36);
  v449 = &v397 - v37;
  __chkstk_darwin(v38);
  v444 = &v397 - v39;
  __chkstk_darwin(v40);
  v448 = &v397 - v41;
  __chkstk_darwin(v42);
  v436 = &v397 - v43;
  __chkstk_darwin(v44);
  v398 = &v397 - v45;
  __chkstk_darwin(v46);
  v440 = &v397 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v410 = &v397 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v408 = &v397 - v51;
  __chkstk_darwin(v52);
  v407 = &v397 - v53;
  __chkstk_darwin(v54);
  v425 = &v397 - v55;
  __chkstk_darwin(v56);
  v397 = &v397 - v57;
  __chkstk_darwin(v58);
  v442 = &v397 - v59;
  __chkstk_darwin(v60);
  v62 = &v397 - v61;
  v429 = sub_100751344();
  v63 = *(v429 - 1);
  __chkstk_darwin(v429);
  v65 = &v397 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_100751374();
  v66 = *(v446 - 1);
  __chkstk_darwin(v446);
  v68 = &v397 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for TitleHeaderView(0);
  v494.receiver = v0;
  v494.super_class = v434;
  v69 = objc_msgSendSuper2(&v494, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v428 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v447 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v443 = v62;
  sub_10010A9E0(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v429);
  *(&v492 + 1) = sub_1007507D4();
  v493 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v491);
  sub_1007507C4();
  sub_100751354();
  [v0 bounds];
  sub_100751324();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v446);
  [v428 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v442;
  v85 = sub_1007477B4();
  v446 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v447[5];
    if (qword_100920AD0 != -1)
    {
      swift_once();
    }

    v87 = sub_10000D0FC(v455, qword_10097FF28);
    v88 = sub_10010A2FC(v84 + v86, v87);
    v89 = v453;
    v90 = v454;
    v91 = v445;
    if (!v88)
    {
      if (qword_100920AD8 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_10010A9E0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_10010A9E0(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v453;
    v90 = v454;
    v91 = v445;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v441 = v83;
    v442 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v429 = v92;
    v93 = [v429 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = sub_100753094();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v453;
LABEL_20:
      v434 = *(v452 + 56);
      v113 = (v434)(v440, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork])
    {

      if (sub_10074F1D4())
      {
        sub_100016C60(0, &qword_100923AB0);
        v101 = v443;
        v446();
        v102 = v403;
        sub_10010A978(v101, v403, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_10010A9E0(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v399;
        v103 = v400;
        v105 = v401;
        (*(v400 + 16))(v399, v102 + *(v455 + 6), v401);
        sub_10010A9E0(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = sub_100753C14();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          sub_1007432D4();
        }

        v74 = v442;
      }

      else
      {
        v115 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v443;
          v446();
          v119 = v403;
          sub_10010A978(v118, v403, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_10010A9E0(v118, type metadata accessor for TitleHeaderView.Style);
          sub_1005E530C(v117, v119, v74);

          sub_10010A9E0(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          sub_100743324();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            sub_1007432D4();
          }
        }
      }
    }

    v123 = v397;
    (v446)(v98);
    sub_10010A978(v123, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10010A9E0(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = sub_1007433C4();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v491 + 1) = 0;
      *&v492 = 0;
    }

    *&v491 = v127;
    *(&v492 + 1) = v125;
    v493 = v126;
    v128 = sub_100745C84();
    v490 = &protocol witness table for UILabel;
    v489 = v128;
    v129 = v429;
    v488[0] = v429;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_100016B4C(&v491, v481, &unk_100928A00);
    v130 = v489;
    v131 = v490;
    v132 = sub_10000C888(v488, v489);
    v479 = v130;
    v480 = v131[1];
    v133 = sub_10000D134(v478);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v455;
    v135 = v406;
    v136 = *(v406 + *(v455 + 8));
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v136;
    v137 = *(v455 + 9);
    v138 = sub_100750B04();
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v139 = sub_10000D134(v472);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v470 = v138;
    v471 = &protocol witness table for StaticDimension;
    v142 = sub_10000D134(v469);
    v140(v142, v135 + v141, v138);
    sub_100016B4C(&v485, &v463, &qword_10092BC30);
    v143 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v144 = v465;
      v145 = sub_10000C888(&v463, *(&v464 + 1));
      *(&v467 + 1) = v143;
      v468 = *(v144 + 8);
      v146 = sub_10000D134(&v466);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_10000C620(&v463);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10000C8CC(&v463, &qword_10092BC30);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_100016B4C(&v482, v460, &qword_10092BC30);
    v151 = v461;
    v83 = v441;
    v74 = v442;
    v90 = v454;
    v91 = v445;
    if (v461)
    {
      v152 = v462;
      v153 = sub_10000C888(v460, v461);
      *(&v464 + 1) = v151;
      v465 = *(v152 + 8);
      v154 = sub_10000D134(&v463);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_10000C620(v460);
    }

    else
    {
      sub_10000C8CC(v460, &qword_10092BC30);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v155 = v455;
    v156 = v406;
    sub_10000C824(v406 + *(v455 + 12), v460);
    sub_10000C824(v156 + *(v155 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v157 = v398;
    sub_100747164();
    sub_10000C8CC(&v482, &qword_10092BC30);
    sub_10000C8CC(&v485, &qword_10092BC30);
    sub_10010A9E0(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C620(v488);
    sub_10000C8CC(&v491, &unk_100928A00);
    v89 = v453;
    v434 = *(v452 + 56);
    (v434)(v157, 0, 1, v453);
    sub_100066578(v157, v440, &qword_1009289F8);
    v158 = v429;
    result = [v429 font];
    if (!result)
    {
      goto LABEL_185;
    }

    v160 = result;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = sub_100753094();
      v165 = v164;

      *&v491 = v163;
      *(&v491 + 1) = v165;

      v166 = v430;
      sub_100740E54();
      sub_1000D5C0C();
      sub_1007542C4();
      LOBYTE(v162) = v167;
      (v431)[1](v166, v432);

      if (v162)
      {

        v168 = 0;
        v74 = v442;
        v89 = v453;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v442;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return result;
        }

        v89 = v453;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v429;
    sub_1003DD238(v168);

LABEL_46:
    v173 = v425;
    (v446)(v113);
    v174 = v427;
    sub_100016B4C(v173 + v447[6], v427, &unk_100940600);
    sub_10010A9E0(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v426 + 48))(v174, 1, v455) == 1)
    {
      sub_10000C8CC(v174, &unk_100940600);
      (v434)(v436, 1, 1, v89);
      goto LABEL_88;
    }

    sub_10010AAF8(v174, v435, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
    if (v176)
    {
      result = [v176 font];
      if (!result)
      {
        goto LABEL_183;
      }

      v177 = result;
      v178 = *&v74[v175];
      if (!v178 || (v179 = [v178 text]) == 0)
      {

        v186 = 0;
        v187 = *&v74[v175];
        if (!v187)
        {
          goto LABEL_57;
        }

LABEL_56:
        v188 = v187;
        sub_1003DD238(v186);

        goto LABEL_57;
      }

      v180 = v179;
      v181 = sub_100753094();
      v183 = v182;

      *&v491 = v181;
      *(&v491 + 1) = v183;

      v184 = v430;
      sub_100740E54();
      sub_1000D5C0C();
      sub_1007542C4();
      LOBYTE(v180) = v185;
      (v431)[1](v184, v432);

      if (v180)
      {

        v186 = 0;
        v74 = v442;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v177 lineHeight];
        v226 = v225;

        v227 = ceil(v226 * 1.3);
        v74 = v442;
        if ((*&v227 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v227 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v227 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v186 = v227;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v189 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel;
    v190 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
    if (!v190)
    {
      goto LABEL_66;
    }

    result = [v190 font];
    if (!result)
    {
      goto LABEL_184;
    }

    v191 = result;
    v192 = *&v74[v189];
    if (!v192 || (v193 = [v192 text]) == 0)
    {

      v200 = 0;
      v201 = *&v74[v189];
      if (!v201)
      {
        goto LABEL_66;
      }

LABEL_65:
      v202 = v201;
      sub_1003DD238(v200);

      goto LABEL_66;
    }

    v194 = v193;
    v195 = sub_100753094();
    v197 = v196;

    *&v491 = v195;
    *(&v491 + 1) = v197;

    v198 = v430;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    LOBYTE(v194) = v199;
    (v431)[1](v198, v432);

    if (v194)
    {

      v200 = 0;
      v74 = v442;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v191 lineHeight];
      v229 = v228;

      v230 = ceil(v229 * 1.3);
      v74 = v442;
      if ((*&v230 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v230 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v230 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v200 = v230;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v203 = *&v74[v175];
    if (!v203)
    {
      sub_10010A9E0(v435, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v445;
      goto LABEL_70;
    }

    v204 = v443;
    v446();
    v205 = *(v204 + v447[9]);
    v206 = v203;
    sub_10010A9E0(v204, type metadata accessor for TitleHeaderView.Style);
    v91 = v445;
    if (v205 == 2)
    {
      sub_10010A9E0(v435, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v434)(v436, 1, 1, v453);
      v83 = v441;
      goto LABEL_88;
    }

    v493 = 0;
    v491 = 0u;
    v492 = 0u;
    v207 = sub_100745C84();
    v490 = &protocol witness table for UILabel;
    v489 = v207;
    v488[0] = v206;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_100016B4C(&v491, v481, &unk_100928A00);
    v208 = v489;
    v209 = v490;
    v210 = sub_10000C888(v488, v489);
    v479 = v208;
    v480 = v209[1];
    v211 = sub_10000D134(v478);
    (*(*(v208 - 1) + 16))(v211, v210, v208);
    v212 = v455;
    v213 = v435;
    v214 = *&v435[*(v455 + 8)];
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v214;
    v215 = *(v455 + 9);
    v216 = sub_100750B04();
    v473 = v216;
    v474 = &protocol witness table for StaticDimension;
    v217 = sub_10000D134(v472);
    v218 = *(*(v216 - 8) + 16);
    v218(v217, &v213[v215], v216);
    v219 = *(v212 + 10);
    v470 = v216;
    v471 = &protocol witness table for StaticDimension;
    v220 = sub_10000D134(v469);
    v218(v220, &v213[v219], v216);
    sub_100016B4C(&v485, &v463, &qword_10092BC30);
    v221 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v222 = v465;
      v223 = sub_10000C888(&v463, *(&v464 + 1));
      *(&v467 + 1) = v221;
      v468 = *(v222 + 8);
      v224 = sub_10000D134(&v466);
      (*(*(v221 - 8) + 16))(v224, v223, v221);
      sub_10000C620(&v463);
    }

    else
    {
      sub_10000C8CC(&v463, &qword_10092BC30);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_100016B4C(&v482, v460, &qword_10092BC30);
    v231 = v461;
    v74 = v442;
    v90 = v454;
    if (v461)
    {
      v232 = v462;
      v233 = sub_10000C888(v460, v461);
      *(&v464 + 1) = v231;
      v465 = *(v232 + 8);
      v234 = sub_10000D134(&v463);
      (*(*(v231 - 8) + 16))(v234, v233, v231);
      sub_10000C620(v460);
    }

    else
    {
      sub_10000C8CC(v460, &qword_10092BC30);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v83 = v441;
    v235 = v455;
    v236 = v435;
    sub_10000C824(&v435[*(v455 + 12)], v460);
    sub_10000C824(v236 + *(v235 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v237 = v436;
    sub_100747164();
    sub_10000C8CC(&v482, &qword_10092BC30);
    sub_10000C8CC(&v485, &qword_10092BC30);
    sub_10000C8CC(&v491, &unk_100928A00);
    sub_10010A9E0(v236, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000C620(v488);
    v434 = *(v452 + 56);
    (v434)(v237, 0, 1, v453);
LABEL_88:
    v238 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel];
    result = [v238 font];
    if (!result)
    {
      goto LABEL_182;
    }

    v89 = result;
    v239 = [v238 text];
    v435 = v238;
    if (!v239)
    {

      v245 = 0;
      goto LABEL_98;
    }

    v240 = v239;
    v241 = sub_100753094();
    v74 = v242;

    *&v491 = v241;
    *(&v491 + 1) = v74;

    v243 = v430;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
    v86 = v244;
    (v431)[1](v243, v432);

    if (v86)
    {

      v245 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v247 = v246;

    v248 = ceil(v247 * 1.3);
    if ((*&v248 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v248 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_10000D0FC(v455, qword_10097FF40);
    sub_10010A2FC(v84 + v86, v114);
    sub_10010A9E0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v248 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v245 = v248;
LABEL_97:
  v74 = v442;
LABEL_98:
  sub_1003DD238(v245);
  v249 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork])
  {

    if (sub_10074F1D4())
    {
      sub_100016C60(0, &qword_100923AB0);
      v250 = v443;
      v446();
      v251 = v403;
      sub_10010A978(v250 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v250, type metadata accessor for TitleHeaderView.Style);
      v252 = v399;
      v253 = v400;
      v254 = v401;
      (*(v400 + 16))(v399, v251 + *(v455 + 6), v401);
      sub_10010A9E0(v251, type metadata accessor for TitleHeaderView.TextConfiguration);
      v255 = v74;
      v256 = [v74 traitCollection];
      v257 = sub_100753C14();

      (*(v253 + 8))(v252, v254);
      v258 = *&v255[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];
      if (v258)
      {
        v259 = objc_opt_self();
        v260 = v258;
        v261 = [v259 configurationWithFont:v257];
        sub_1007432D4();
      }

      v74 = v442;
      v91 = v445;
      v90 = v454;
    }

    else
    {
      v262 = v90;
      v263 = v74;
      v264 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView;
      v265 = *(v263 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView);
      if (v265)
      {
        v266 = *(v263 + v249);
        v267 = v443;
        v446();
        v268 = v403;
        sub_10010A978(v267 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);

        v269 = v265;
        v262 = v454;
        sub_10010A9E0(v267, type metadata accessor for TitleHeaderView.Style);
        sub_1005E530C(v266, v268, v263);

        sub_10010A9E0(v268, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_100743324();

        v270 = *(v263 + v264);
        if (v270)
        {
          v271 = v270;
          sub_1007432D4();
        }
      }

      v74 = v263;
      v91 = v445;
      v90 = v262;
    }
  }

  v272 = v443;
  v446();
  v273 = *(v272 + v447[9]);
  v274 = sub_10010A9E0(v272, type metadata accessor for TitleHeaderView.Style);
  if (v273 == 2)
  {
    v275 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel];
    v274 = v275;
  }

  else
  {
    v275 = 0;
  }

  v276 = v443;
  (v446)(v274);
  v277 = *(v276 + v447[9]);
  v278 = sub_10010A9E0(v276, type metadata accessor for TitleHeaderView.Style);
  if (v277 == 2)
  {
    v279 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel];
    v278 = v279;
  }

  else
  {
    v279 = 0;
  }

  v280 = v407;
  (v446)(v278);
  sub_10010A978(v280 + v447[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10010A9E0(v280, type metadata accessor for TitleHeaderView.Style);
  v281 = *&v74[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];
  if (v281)
  {
    v282 = sub_1007433C4();
    v283 = &protocol witness table for UIView;
    v284 = v281;
  }

  else
  {
    v284 = 0;
    v282 = 0;
    v283 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  v285 = v435;
  *&v491 = v284;
  *(&v492 + 1) = v282;
  v493 = v283;
  v286 = sub_100745C84();
  v490 = &protocol witness table for UILabel;
  v489 = v286;
  v488[0] = v285;
  if (v275)
  {
    v287 = &protocol witness table for UILabel;
    v288 = v275;
    v289 = v286;
  }

  else
  {
    v288 = 0;
    v289 = 0;
    v287 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v288;
  *(&v486 + 1) = v289;
  v487 = v287;
  v431 = v279;
  v432 = v275;
  if (v279)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v279;
  }

  else
  {
    v291 = 0;
    v286 = 0;
    v290 = 0;
    *&v483 = 0;
    *(&v482 + 1) = 0;
  }

  *&v482 = v291;
  *(&v483 + 1) = v286;
  v484 = v290;
  sub_100016B4C(&v491, v481, &unk_100928A00);
  v292 = v489;
  v293 = v490;
  v294 = sub_10000C888(v488, v489);
  v479 = v292;
  v480 = v293[1];
  v295 = sub_10000D134(v478);
  (*(*(v292 - 1) + 16))(v295, v294, v292);
  v297 = v454;
  v296 = v455;
  v298 = *(v454 + *(v455 + 8));
  v476 = &type metadata for Float;
  v477 = &protocol witness table for Float;
  v475 = v298;
  v299 = *(v455 + 9);
  v300 = sub_100750B04();
  v473 = v300;
  v474 = &protocol witness table for StaticDimension;
  v301 = sub_10000D134(v472);
  v302 = *(*(v300 - 8) + 16);
  v302(v301, v297 + v299, v300);
  v303 = *(v296 + 10);
  v470 = v300;
  v471 = &protocol witness table for StaticDimension;
  v304 = sub_10000D134(v469);
  v302(v304, v297 + v303, v300);
  sub_100016B4C(&v485, &v463, &qword_10092BC30);
  v305 = *(&v464 + 1);
  if (*(&v464 + 1))
  {
    v306 = v465;
    v307 = sub_10000C888(&v463, *(&v464 + 1));
    *(&v467 + 1) = v305;
    v468 = *(v306 + 8);
    v308 = sub_10000D134(&v466);
    (*(*(v305 - 8) + 16))(v308, v307, v305);
    v309 = v431;
    v310 = v281;
    v311 = v435;
    v312 = v432;
    sub_10000C620(&v463);
  }

  else
  {
    v313 = v431;
    v314 = v281;
    v315 = v435;
    v316 = v432;
    sub_10000C8CC(&v463, &qword_10092BC30);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v317 = v444;
  sub_100016B4C(&v482, v460, &qword_10092BC30);
  v318 = v461;
  if (v461)
  {
    v319 = v462;
    v320 = sub_10000C888(v460, v461);
    *(&v464 + 1) = v318;
    v465 = *(v319 + 8);
    v321 = sub_10000D134(&v463);
    (*(*(v318 - 8) + 16))(v321, v320, v318);
    sub_10000C620(v460);
  }

  else
  {
    sub_10000C8CC(v460, &qword_10092BC30);
    v463 = 0u;
    v464 = 0u;
    v465 = 0;
  }

  v323 = v454;
  v322 = v455;
  sub_10000C824(v454 + *(v455 + 12), v460);
  sub_10000C824(v323 + *(v322 + 13), v459);
  v458 = &protocol witness table for Double;
  v457 = &type metadata for Double;
  v456 = 0x4020000000000000;
  sub_100747164();
  sub_10010A9E0(v323, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C8CC(&v482, &qword_10092BC30);
  sub_10000C8CC(&v485, &qword_10092BC30);
  sub_10000C620(v488);
  v324 = sub_10000C8CC(&v491, &unk_100928A00);
  v325 = v408;
  (v446)(v324);
  v326 = *(v325 + v447[9]);
  sub_10010A9E0(v325, type metadata accessor for TitleHeaderView.Style);
  sub_10000C518(&qword_100928A10);
  v454 = *(v409 + 72);
  v327 = (*(v409 + 80) + 32) & ~*(v409 + 80);
  if (v326)
  {
    v328 = v453;
    if (v326 == 1)
    {
      v329 = v91;
      v330 = v454;
      v435 = swift_allocObject();
      v331 = &v435[v327];
      sub_100016B4C(v440, &v435[v327], &qword_1009289F8);
      v332 = v452 + 16;
      (*(v452 + 16))(&v331[v330], v437, v328);
      (v434)(&v331[v330], 0, 1, v328);
      sub_100016B4C(v436, &v331[2 * v330], &qword_1009289F8);
      v333 = (v332 + 32);
      v334 = (v332 + 16);
      v455 = _swiftEmptyArrayStorage;
      v335 = 3;
      v450 = v331;
      v336 = v331;
      do
      {
        v337 = v449;
        sub_100016B4C(v336, v449, &qword_1009289F8);
        sub_100066578(v337, v329, &qword_1009289F8);
        if ((*v333)(v329, 1, v328) == 1)
        {
          sub_10000C8CC(v329, &qword_1009289F8);
        }

        else
        {
          v338 = *v334;
          (*v334)(v451, v329, v328);
          v339 = v455;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v339 = sub_100255918(0, v339[2] + 1, 1, v339);
          }

          v341 = v339[2];
          v340 = v339[3];
          if (v341 >= v340 >> 1)
          {
            v339 = sub_100255918(v340 > 1, v341 + 1, 1, v339);
          }

          v339[2] = v341 + 1;
          v342 = (*(v452 + 80) + 32) & ~*(v452 + 80);
          v455 = v339;
          v328 = v453;
          v338(v339 + v342 + *(v452 + 72) * v341, v451, v453);
          v329 = v445;
        }

        v336 += v454;
        --v335;
      }

      while (v335);
      goto LABEL_149;
    }

    v360 = v454;
    v435 = swift_allocObject();
    v361 = &v435[v327];
    sub_100016B4C(v440, &v435[v327], &qword_1009289F8);
    v362 = v452;
    (*(v452 + 16))(v361 + v360, v437, v328);
    (v434)(v361 + v360, 0, 1, v328);
    v363 = v404;
    sub_100016B4C(v361, v404, &qword_1009289F8);
    v364 = v402;
    sub_100066578(v363, v402, &qword_1009289F8);
    v365 = *(v362 + 48);
    v366 = (v362 + 32);
    v367 = v365(v364, 1, v328);
    v368 = v328;
    v451 = (v362 + 32);
    if (v367 == 1)
    {
      sub_10000C8CC(v364, &qword_1009289F8);
      v455 = _swiftEmptyArrayStorage;
    }

    else
    {
      v369 = *v366;
      (*v366)(v405, v364, v368);
      v370 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v372 = v370[2];
      v371 = v370[3];
      v455 = v370;
      if (v372 >= v371 >> 1)
      {
        v455 = sub_100255918(v371 > 1, v372 + 1, 1, v455);
      }

      v373 = v455;
      v455[2] = v372 + 1;
      v374 = v373 + ((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v372;
      v368 = v453;
      v369(v374, v405, v453);
      v364 = v402;
    }

    v375 = v404;
    sub_100016B4C(v361 + v454, v404, &qword_1009289F8);
    sub_100066578(v375, v364, &qword_1009289F8);
    if (v365(v364, 1, v368) == 1)
    {
      sub_10000C8CC(v364, &qword_1009289F8);
      v357 = v438;
      v358 = v439;
      v359 = v433;
    }

    else
    {
      v376 = *v451;
      (*v451)(v405, v364, v368);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v358 = v439;
      v359 = v433;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v455 = sub_100255918(0, v455[2] + 1, 1, v455);
      }

      v357 = v438;
      v379 = v455[2];
      v378 = v455[3];
      if (v379 >= v378 >> 1)
      {
        v455 = sub_100255918(v378 > 1, v379 + 1, 1, v455);
      }

      v380 = v455;
      v455[2] = v379 + 1;
      v376(&v380[((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v379], v405, v453);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v343 = v454;
    v344 = 2 * v454;
    v435 = swift_allocObject();
    v345 = &v435[v327];
    sub_100016B4C(v440, &v435[v327], &qword_1009289F8);
    sub_100016B4C(v436, &v345[v343], &qword_1009289F8);
    v346 = v453;
    v347 = v452 + 16;
    (*(v452 + 16))(&v345[v344], v437, v453);
    (v434)(&v345[v344], 0, 1, v346);
    v348 = (v347 + 32);
    v349 = (v347 + 16);
    v455 = _swiftEmptyArrayStorage;
    v350 = 3;
    v451 = v345;
    do
    {
      v351 = v448;
      sub_100016B4C(v345, v448, &qword_1009289F8);
      sub_100066578(v351, v317, &qword_1009289F8);
      if ((*v348)(v317, 1, v346) == 1)
      {
        sub_10000C8CC(v317, &qword_1009289F8);
      }

      else
      {
        v352 = *v349;
        (*v349)(v450, v317, v346);
        v353 = v455;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v353 = sub_100255918(0, v353[2] + 1, 1, v353);
        }

        v355 = v353[2];
        v354 = v353[3];
        if (v355 >= v354 >> 1)
        {
          v353 = sub_100255918(v354 > 1, v355 + 1, 1, v353);
        }

        v353[2] = v355 + 1;
        v346 = v453;
        v356 = (*(v452 + 80) + 32) & ~*(v452 + 80);
        v455 = v353;
        v352(v353 + v356 + *(v452 + 72) * v355, v450, v453);
        v317 = v444;
      }

      v345 += v454;
      --v350;
    }

    while (v350);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v357 = v438;
    v358 = v439;
    v359 = v433;
  }

  v381 = swift_deallocClassInstance();
  v382 = v442;
  v383 = v443;
  (v446)(v381);
  v384 = *(v359 + 16);
  v384(v357, v383 + v447[10], v358);
  sub_10010A9E0(v383, type metadata accessor for TitleHeaderView.Style);
  v385 = *&v382[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v385)
  {
    v386 = sub_100016C60(0, &qword_100922300);
    v387 = &protocol witness table for UIView;
  }

  else
  {
    v386 = 0;
    v387 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  *&v491 = v385;
  *(&v492 + 1) = v386;
  v493 = v387;
  v388 = v443;
  v389 = v446;
  v446();
  v390 = v447;
  v391 = *(v388 + v447[14]);
  v392 = v385;
  sub_10010A9E0(v388, type metadata accessor for TitleHeaderView.Style);
  v489 = &type metadata for CGFloat;
  v490 = &protocol witness table for CGFloat;
  v488[0] = v391;
  v393 = (v384)(v411, v438, v439);
  v394 = v410;
  (v389)(v393);
  (*(v412 + 16))(v414, v394 + v390[11], v413);
  sub_10010A9E0(v394, type metadata accessor for TitleHeaderView.Style);
  (*(v418 + 104))(v417, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v420);
  v395 = v415;
  sub_100747104();
  v396 = v421;
  sub_100747114();

  (*(v422 + 8))(v396, v423);
  (*(v416 + 8))(v395, v419);
  (*(v433 + 8))(v438, v439);
  (*(v452 + 8))(v437, v453);
  sub_10000C8CC(v436, &qword_1009289F8);
  return sub_10000C8CC(v440, &qword_1009289F8);
}