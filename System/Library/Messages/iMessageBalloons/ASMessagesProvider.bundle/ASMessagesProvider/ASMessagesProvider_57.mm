uint64_t sub_66CAB8()
{
  result = sub_7581D0();
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

uint64_t sub_66CBC8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_66CC84()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel];
  v2 = sub_769210();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v4 = sub_769210();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_66CD30(uint64_t a1)
{
  v20 = sub_75DF60();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7581D0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  sub_758740();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_66D6E4(&qword_954FB8, &type metadata accessor for AppShowcaseType);
  sub_769430();
  sub_769430();
  if (v23 == v21 && v24 == v22)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_5:
    sub_758760();
    v16 = sub_764D90();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_666980(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = sub_76A950();
  v14 = *(v6 + 8);
  v14(v8, v5);
  v14(v11, v5);

  v15 = 0;
  if (v13)
  {
    goto LABEL_5;
  }

  return v15 & 1;
}

uint64_t sub_66D048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_66D088(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_66D0A0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_66D0D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_95F810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_66D148()
{
  v1 = v0;
  v43 = sub_760AD0();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_iconView;
  sub_759210();
  *(v0 + v8) = sub_759020();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_titleLabel;
  v42 = sub_75BB20();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_descriptionLabel;
  if (qword_93DA30 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F688);
  v13 = *(v11 - 8);
  v39 = *(v13 + 16);
  v39(v7, v12, v11);
  v14 = *(v13 + 56);
  v14(v7, 0, 1, v11);
  v15 = v2;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v15 + 104);
  v41 = v15 + 104;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v43);
  v17 = objc_allocWithZone(v42);
  *(v1 + v10) = sub_75BB10();
  v18 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_1DD00C(0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabel;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v11, qword_99E758);
  v39(v7, v21, v11);
  v14(v7, 0, 1, v11);
  v40(v4, v16, v43);
  v22 = objc_allocWithZone(v42);
  *(v1 + v20) = sub_75BB10();
  v23 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerLabelPresenter);
  *v23 = 0u;
  v23[1] = 0u;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkTitleLabel;
  v38 = v1;
  if (qword_93DA40 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v11, qword_99F6B8);
  v39(v7, v24, v11);
  v14(v7, 0, 1, v11);
  v25 = v43;
  LODWORD(v39) = v16;
  v26 = v40;
  v40(v4, v16, v43);
  v36 = v14;
  v27 = v42;
  v28 = objc_allocWithZone(v42);
  v29 = sub_75BB10();
  v30 = v7;
  v31 = v38;
  *(v38 + v37) = v29;
  v37 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v36(v30, 1, 1, v11);
  v26(v4, v39, v25);
  v32 = objc_allocWithZone(v27);
  *(v31 + v37) = sub_75BB10();
  v33 = OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView_type;
  v34 = enum case for AppShowcaseType.large(_:);
  v35 = sub_7581D0();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *(v31 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v31 + OBJC_IVAR____TtC18ASMessagesProvider21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_66D6E4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_66D734(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_productReviewActionsView;
  type metadata accessor for ProductReviewActionsView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView;
  type metadata accessor for SeparatorView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductReviewActionsCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView];
  sub_BE70(0, &qword_93E540);
  v15 = v14;
  v16 = sub_769FB0();
  [v15 setBackgroundColor:v16];

  [*&v11[v13] setHidden:1];
  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_productReviewActionsView]];

  return v11;
}

id sub_66D9E8()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for ProductReviewActionsCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_productReviewActionsView] setFrame:{v4, v6, v8, v10}];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  CGRectGetMinX(v14);
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  CGRectGetMinY(v15);
  v16.origin.x = v4;
  v16.origin.y = v6;
  v16.size.width = v8;
  v16.size.height = v10;
  CGRectGetWidth(v16);
  if (qword_93D2C8 != -1)
  {
    swift_once();
  }

  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider24ProductReviewActionsCell_separatorView];
  sub_769D20();
  return [v11 setFrame:?];
}

id sub_66DBE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_66DC84(char a1)
{
  v2 = v1;
  v4 = sub_759950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_76A410();
  v14 = sub_76A3F0();
  v15 = &enum case for SystemImage.speakerSlashFill(_:);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    sub_362208(v13, v10);
    sub_76A420();
    sub_502E14(v13);
  }

  else
  {
    if (a1)
    {
      v16 = &enum case for SystemImage.speakerSlashFill(_:);
    }

    else
    {
      v16 = &enum case for SystemImage.speakerWave3Fill(_:);
    }

    (*(v5 + 104))(v7, *v16, v4);
    sub_759930();
    (*(v5 + 8))(v7, v4);
    sub_76A390();
    sub_76A420();
  }

  if (a1)
  {
    v17 = 0xD00000000000002BLL;
  }

  else
  {
    v17 = 0xD000000000000029;
  }

  if (a1)
  {
    v18._countAndFlagsBits = 0xD00000000000002CLL;
  }

  else
  {
    v18._countAndFlagsBits = 0xD00000000000002ALL;
  }

  if (a1)
  {
    v19 = "upCollectionElementsObserver";
  }

  else
  {
    v15 = &enum case for SystemImage.speakerWave3Fill(_:);
    v19 = "sizeChangeObserver";
  }

  v20 = "on.Unmute.LargeContentTitle";
  if ((a1 & 1) == 0)
  {
    v20 = "on.Mute.LargeContentTitle";
  }

  v18._object = (v20 | 0x8000000000000000);
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  sub_75B750(v18, v26);
  v21 = sub_769210();

  [v2 setAccessibilityLabel:v21];

  (*(v5 + 104))(v7, *v15, v4);
  v22 = sub_759930();
  (*(v5 + 8))(v7, v4);
  [v2 setLargeContentImage:v22];

  v25._object = (v19 | 0x8000000000000000);
  v25._countAndFlagsBits = v17;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  sub_75B750(v25, v27);
  v23 = sub_769210();

  [v2 setLargeContentTitle:v23];
}

id sub_66DFD8(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v17 - v8;
  v17.receiver = v1;
  v17.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_76A370();
  v11 = sub_76A3F0();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_76A420();
  sub_76A410();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_362208(v6, v9);
    sub_76A420();

    sub_502E14(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithPointSize:4 weight:2 scale:a1];
    sub_76A220();
    sub_76A420();
  }

  v14 = v10;
  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];

  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  return v14;
}

id sub_66E2E4()
{
  if (qword_93D1B0 != -1)
  {
    swift_once();
  }

  v1 = qword_99DD30;
  qword_9A0690 = qword_99DD30;

  return v1;
}

char *sub_66E348()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_isHighlighted] = 0;
  v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator] = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView;
  *&v1[v6] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage] = 0;
  sub_75BB20();
  v7 = sub_7664A0();
  v33[3] = v7;
  v33[4] = &protocol witness table for FontSource;
  v8 = sub_B1B4(v33);
  if (qword_93E048 != -1)
  {
    v31 = v8;
    swift_once();
    v8 = v31;
  }

  v9 = qword_9A0690;
  *v8 = qword_9A0690;
  (*(*(v7 - 8) + 104))();
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v2);
  v10 = v9;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel] = sub_75BA50();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = type metadata accessor for SearchHintView();
  v32.receiver = v1;
  v32.super_class = v11;
  v12 = objc_msgSendSuper2(&v32, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel;
  v18 = qword_93D198;
  v19 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setTextColor:qword_99DD18];

  v20 = *&v16[v17];
  v21 = [v16 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_769B20();

  if (v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 2;
  }

  [v20 setNumberOfLines:v24];

  sub_BD88(&qword_9477F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77B6D0;
  *(v25 + 32) = sub_767B80();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  [v16 addSubview:*&v16[v17]];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView;
  v27 = qword_93D1A8;
  v28 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView];
  if (v27 != -1)
  {
    swift_once();
  }

  [v28 setTintColor:qword_99DD28];

  [v16 addSubview:*&v16[v26]];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView] setHidden:v16[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_showSeparator]];
  [v16 addSubview:*&v16[v29]];

  return v16;
}

void sub_66E8E4(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 traitCollection];
    if (qword_93D1B0 != -1)
    {
      swift_once();
    }

    v7 = [objc_opt_self() configurationWithTextStyle:qword_99DD30 scale:2];
    v8 = [v7 configurationWithTraitCollection:v6];

    v9 = [v5 imageWithConfiguration:v8];
  }

  else
  {
    v9 = 0;
  }

  v11.value.super.isa = v9;
  v11.is_nil = 0;
  sub_7591D0(v11, a3);
}

uint64_t sub_66EA38()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_7664F0();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75C170();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75C150();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = type metadata accessor for SearchHintView();
  v42.receiver = v0;
  v42.super_class = v14;
  objc_msgSendSuper2(&v42, "layoutSubviews");
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  v16 = v15;
  [v0 layoutMargins];
  sub_66ED7C(v15, v0, v13, v17, v18);

  (*(v8 + 16))(v10, v13, v7);
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView];
  v40 = sub_759210();
  v41 = &protocol witness table for UIView;
  v39 = v19;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
  v37 = sub_75BB20();
  v38 = &protocol witness table for UILabel;
  v36 = v20;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView];
  v34 = type metadata accessor for SeparatorView();
  v35 = &protocol witness table for UIView;
  v33 = v21;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  sub_75C160();
  [v1 bounds];
  v25 = v28;
  sub_75C120();
  (*(v31 + 8))(v25, v32);
  (*(v29 + 8))(v6, v30);
  return (*(v8 + 8))(v13, v7);
}

uint64_t sub_66ED7C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D1>, uint64_t a5@<D3>)
{
  v41 = a3;
  v9 = sub_76A920();
  v40 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7664A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_766CA0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = a1;
    v21 = [a2 traitCollection];
    if (qword_93D1B0 != -1)
    {
      swift_once();
    }

    v22 = [objc_opt_self() configurationWithTextStyle:qword_99DD30 scale:2];
    v23 = [v22 configurationWithTraitCollection:v21];

    v24 = [v20 imageWithConfiguration:v23];
    [v24 size];
  }

  else
  {
    v39 = v9;
    v25 = v16;
    if (qword_93E048 != -1)
    {
      swift_once();
    }

    v26 = qword_9A0690;
    *v15 = qword_9A0690;
    (*(v13 + 104))(v15, enum case for FontSource.textStyle(_:), v12);
    v48 = v12;
    v49 = &protocol witness table for FontSource;
    v27 = sub_B1B4(v47);
    (*(v13 + 16))(v27, v15, v12);
    v28 = v26;
    sub_766CB0();
    (*(v13 + 8))(v15, v12);
    sub_766470();
    v16 = v25;
    sub_766700();
    (*(v40 + 8))(v11, v39);
    (*(v17 + 8))(v19, v25);
  }

  v48 = &type metadata for CGFloat;
  v49 = &protocol witness table for CGFloat;
  v47[0] = a4;
  v46[8] = &type metadata for CGFloat;
  v46[9] = &protocol witness table for CGFloat;
  v46[5] = a5;
  if (qword_93E048 != -1)
  {
    swift_once();
  }

  v29 = qword_9A0690;
  *v15 = qword_9A0690;
  v30 = enum case for FontSource.textStyle(_:);
  v31 = *(v13 + 104);
  v31(v15, enum case for FontSource.textStyle(_:), v12);
  v46[3] = v16;
  v46[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v46);
  v44 = v12;
  v45 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v43);
  v40 = v16;
  v33 = *(v13 + 16);
  v33(v32, v15, v12);
  v34 = v29;
  sub_766CB0();
  v35 = *(v13 + 8);
  v35(v15, v12);
  *v15 = v34;
  v31(v15, v30, v12);
  v44 = v40;
  v45 = &protocol witness table for StaticDimension;
  sub_B1B4(v43);
  v42[3] = v12;
  v42[4] = &protocol witness table for FontSource;
  v36 = sub_B1B4(v42);
  v33(v36, v15, v12);
  sub_766CB0();
  v35(v15, v12);
  return sub_75C130();
}

double sub_66F3AC(void *a1)
{
  v2 = v1;
  v27[1] = a1;
  v27[2] = swift_getObjectType();
  v28 = sub_75C170();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75C150();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v27 - v12;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconImage];
  v15 = v14;
  [v2 layoutMargins];
  sub_66ED7C(v14, a1, v13, v16, v17);

  (*(v8 + 16))(v10, v13, v7);
  v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_iconView];
  v36 = sub_759210();
  v37 = &protocol witness table for UIView;
  v35 = v18;
  v19 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
  v33 = sub_75BB20();
  v34 = &protocol witness table for UILabel;
  v32 = v19;
  v20 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_separatorView];
  v30 = type metadata accessor for SeparatorView();
  v31 = &protocol witness table for UIView;
  v29 = v20;
  v21 = v18;
  v22 = v19;
  v23 = v20;
  sub_75C160();
  sub_75C110();
  v25 = v24;
  (*(v4 + 8))(v6, v28);
  (*(v8 + 8))(v13, v7);
  return v25;
}

id sub_66F738()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_66F7FC(char *a1, id a2)
{
  v3 = [a2 preferredContentSizeCategory];
  v4 = sub_769B20() & 1;

  v5 = [a1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  LODWORD(v5) = sub_769B20() & 1;
  if (v4 != v5)
  {
    v7 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider14SearchHintView_titleLabel];
    v8 = [a1 traitCollection];
    v9 = [v8 preferredContentSizeCategory];
    v10 = sub_769B20();

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    [v7 setNumberOfLines:v11];

    [a1 setNeedsLayout];
  }
}

uint64_t sub_66F938(void *a1, void *a2)
{
  v91 = a1;
  v96 = sub_75C170();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v3;
  __chkstk_darwin(v4);
  v94 = &v70 - v5;
  v90 = sub_766AF0();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = &v70 - v8;
  __chkstk_darwin(v9);
  v81 = &v70 - v10;
  __chkstk_darwin(v11);
  v83 = &v70 - v12;
  __chkstk_darwin(v13);
  v85 = &v70 - v14;
  v86 = sub_766D70();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_76A920();
  v77 = *(v97 - 8);
  __chkstk_darwin(v97);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7664A0();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_766CA0();
  v76 = *(v22 - 8);
  __chkstk_darwin(v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_75C150();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v79 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v99 = &v70 - v28;
  v98 = a2;
  [a2 pageMarginInsets];
  v30 = v29;
  v32 = v31;
  if (qword_93E048 != -1)
  {
    swift_once();
  }

  v33 = qword_9A0690;
  *v21 = qword_9A0690;
  v72 = enum case for FontSource.textStyle(_:);
  v71 = v19[13];
  v71(v21);
  v70 = v19 + 13;
  v109 = v18;
  v110 = &protocol witness table for FontSource;
  v34 = sub_B1B4(&v108);
  v73 = v19[2];
  v74 = v19 + 2;
  v73(v34, v21, v18);
  v35 = v33;
  sub_766CB0();
  v75 = v19[1];
  v75(v21, v18);
  sub_766470();
  sub_766700();
  v77[1](v17, v97);
  (*(v76 + 8))(v24, v22);
  v109 = &type metadata for CGFloat;
  v110 = &protocol witness table for CGFloat;
  v108 = v30;
  v106 = &type metadata for CGFloat;
  v107 = &protocol witness table for CGFloat;
  v105 = v32;
  v36 = v35;
  *v21 = v35;
  v37 = v72;
  v38 = v71;
  (v71)(v21, v72, v18);
  v104[3] = v22;
  v104[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v104);
  v102 = v18;
  v103 = &protocol witness table for FontSource;
  v39 = sub_B1B4(&v101);
  v40 = v73;
  v73(v39, v21, v18);
  v41 = v36;
  v77 = v41;
  sub_766CB0();
  v42 = v75;
  v75(v21, v18);
  *v21 = v41;
  v38(v21, v37, v18);
  v102 = v22;
  v103 = &protocol witness table for StaticDimension;
  sub_B1B4(&v101);
  v100[3] = v18;
  v100[4] = &protocol witness table for FontSource;
  v43 = sub_B1B4(v100);
  v40(v43, v21, v18);
  sub_766CB0();
  v42(v21, v18);
  sub_75C130();
  sub_75C140();
  v44 = sub_7670D0();
  swift_allocObject();
  v97 = sub_7670B0();
  v45 = v78;
  sub_766AE0();
  v46 = objc_opt_self();
  v47 = v98;
  v48 = [v98 traitCollection];
  v49 = [v46 preferredFontForTextStyle:v77 compatibleWithTraitCollection:v48];

  v50 = v80;
  sub_766AD0();

  v51 = *(v88 + 8);
  v52 = v90;
  v51(v45, v90);
  v53 = v81;
  sub_766A30();
  v51(v50, v52);
  v54 = v83;
  sub_766A90();
  v51(v53, v52);
  v55 = [v47 traitCollection];
  v56 = [v55 preferredContentSizeCategory];
  sub_769B20();

  sub_766AA0();
  v51(v54, v52);
  sub_766D50();
  v57 = v91;
  v58 = v82;
  sub_766DA0();
  sub_766D40();
  (*(v84 + 8))(v58, v86);
  swift_allocObject();
  v59 = sub_7670B0();
  v60 = v87;
  v61 = v89;
  (*(v87 + 16))(v79, v99, v89);
  v106 = v44;
  v107 = &protocol witness table for LayoutViewPlaceholder;
  v105 = v97;
  sub_134D8(&v108, v104);
  v102 = v44;
  v103 = &protocol witness table for LayoutViewPlaceholder;
  v101 = v59;

  v62 = v94;
  sub_75C160();
  v63 = v95;
  v64 = v93;
  v65 = v96;
  (*(v95 + 16))(v93, v62, v96);
  v66 = (*(v63 + 80) + 16) & ~*(v63 + 80);
  v67 = swift_allocObject();
  (*(v63 + 32))(v67 + v66, v64, v65);
  swift_allocObject();
  v68 = sub_767090();

  (*(v63 + 8))(v62, v65);
  sub_BEB8(&v108);
  (*(v60 + 8))(v99, v61);
  return v68;
}

uint64_t sub_670538()
{
  v1 = sub_75C170();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_670668(void *a1)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    swift_getObjectType();
    v2 = a1;
    sub_761FB0();
  }
}

uint64_t sub_670710(void *a1, uint64_t a2, uint64_t a3)
{
  v57[1] = a3;
  v61 = a1;
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v57[0] = v57 - v4;
  v60 = sub_75B660();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_764930();
  v6 = *(v62 - 8);
  __chkstk_darwin(v62);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v57 - v10;
  v12 = sub_BD88(&unk_959540);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v57 - v14;
  v16 = sub_BD88(&unk_94F1F0);
  v63 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v57 - v17;
  swift_getKeyPath();
  sub_75C7B0();
  v19 = v16;

  sub_75C7E0();
  sub_768760();
  (*(v13 + 8))(v15, v12);
  swift_getKeyPath();
  sub_768750();
  v20 = v62;

  (*(v6 + 32))(v8, v11, v20);
  v21 = (*(v6 + 88))(v8, v20);
  if (v21 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v21 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v6 + 8))(v8, v20);
    swift_getKeyPath();
    v22 = v58;
    sub_768750();

    v23 = sub_51DB60();
    (*(v59 + 8))(v22, v60);
    v24 = v61;
    if ([v61 overrideUserInterfaceStyle] != v23)
    {
      [v24 setOverrideUserInterfaceStyle:v23];
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      sub_134D8(v68, v66);
      v25 = v24;
      sub_BD88(&unk_944DA0);
      sub_BD88(&unk_952540);
      if (swift_dynamicCast())
      {
        sub_10914(v64, v67);
        sub_B170(v67, v67[3]);
        if (sub_762A10())
        {
          sub_75E5C0();
        }

        swift_getObjectType();
        sub_75D990();

        sub_BEB8(v67);
      }

      else
      {

        v65 = 0;
        memset(v64, 0, sizeof(v64));
        sub_10A2C(v64, &unk_9513E0);
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v24)
    {
      swift_getObjectType();
      v26 = v24;
      sub_761FA0();
    }

    swift_getObjectType();
    v27 = swift_conformsToProtocol2();
    if (v27 && v24)
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = v19;
      v31 = *(v28 + 8);
      v32 = v24;
      v33 = v31(ObjectType, v28);
      v19 = v30;
      v34 = v33;
      v35 = (v33 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
      v36 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
      *v35 = 0;
      v35[1] = 0;
      sub_F704(v36);
      [*&v34[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
    }

    v37 = [objc_opt_self() standardUserDefaults];
    v38 = sub_38F8EC();

    if (v38)
    {
      v39 = v61;
      [v61 bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v48 = [objc_opt_self() blueColor];
      v49 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
      v50 = sub_6F4BD4(v48, v41, v43, v45, v47);
      v51 = v18;
      sub_B170(v68, v68[3]);
      v52 = v57[0];
      sub_7690D0();
      sub_6F47B4(v52);
      sub_10A2C(v52, &unk_93FF30);
      v53 = [v39 contentView];
      v54 = [v53 viewWithTag:58236912];

      [v54 removeFromSuperview];
      v55 = [v39 contentView];
      [v55 addSubview:v50];

      v18 = v51;
    }
  }

  (*(v63 + 8))(v18, v19);
  return sub_BEB8(v68);
}

void sub_670F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v9 - 8);
  v11 = &v38[-1] - v10;
  v12 = sub_BD88(&unk_94F1F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38[-1] - v14;
  swift_getObjectType();
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    ObjectType = swift_getObjectType();
    sub_13EB80(a2, a5, ObjectType, v17);
  }

  else
  {
    type metadata accessor for TodayDebugSectionBackgroundView();
    if (swift_dynamicCastClass())
    {
      sub_38FDC4(a2);
    }

    else
    {
      v19 = type metadata accessor for InteractiveSectionBackgroundView();
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = v20;
        type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
        v37 = v19;
        sub_768900();
        sub_768ED0();
        sub_2F318C(a2, a4, a5);
        v38[3] = v37;
        v38[4] = &off_88A558;
        v38[0] = v21;
        v22 = a1;
        sub_420A64(v38);

        sub_10A2C(v38, &unk_94A510);
      }
    }
  }

  v23 = [objc_opt_self() standardUserDefaults];
  v24 = sub_38F8EC();

  if (v24)
  {
    [a1 bounds];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = [objc_opt_self() redColor];
    v34 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
    v35 = sub_6F4BD4(v33, v26, v28, v30, v32);
    sub_75DAA0();
    swift_getKeyPath();
    sub_768750();

    (*(v13 + 8))(v15, v12);
    sub_6F47B4(v11);
    sub_10A2C(v11, &unk_93FF30);
    v36 = [a1 viewWithTag:58236912];
    [v36 removeFromSuperview];

    [a1 addSubview:v35];
  }
}

double sub_67137C(double a1, double a2)
{
  v5 = sub_75D850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = sub_75CF00();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_11E030(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = sub_75CE70();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v26 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v26 = qword_946938;
      }

      v28 = sub_BE38(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v6 + 8))(v11, v20);
    }

    sub_75CDB0();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

uint64_t sub_671744()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_9A0698);
  sub_BE38(v0, qword_9A0698);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_6718A8(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_75CDE0();
  if (qword_93D508 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v45 = sub_BE38(v6, qword_99E728);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = sub_766CA0();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  sub_766CB0();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  sub_75CED0();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v49);
  v19 = v36;
  v36(v18, v5, v2);
  sub_766CB0();
  v43(v5, v2);
  sub_75CEA0();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v49);
  v19(v22, v5, v2);
  sub_766CB0();
  v43(v5, v2);
  sub_75CE90();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_BE38(v41, qword_99E6E0);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v49);
  v19(v25, v5, v2);
  sub_766CB0();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  sub_75CEF0();
  v40 = v13;
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v23, qword_99E7A0);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_B1B4(v49);
  v19(v27, v5, v2);
  sub_766CB0();
  v26(v5, v2);
  sub_75CE50();
  if (qword_93D550 != -1)
  {
    swift_once();
  }

  v28 = sub_BE38(v23, qword_99E800);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v49);
  v19(v29, v5, v2);
  sub_766CB0();
  v26(v5, v2);
  sub_75CEE0();
  if (qword_93D538 != -1)
  {
    swift_once();
  }

  v30 = sub_BE38(v23, qword_99E7B8);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_B1B4(v49);
  v19(v32, v5, v2);
  sub_766CB0();
  v33 = v43;
  v43(v5, v2);
  sub_75CE60();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_B1B4(v49);
  v19(v34, v5, v2);
  sub_766CB0();
  v33(v5, v2);
  return sub_75CDF0();
}

uint64_t sub_672124()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75D2C0();
  sub_161DC(v4, qword_9A06B0);
  v18 = sub_BE38(v4, qword_9A06B0);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v16 = sub_BE38(v5, qword_99E7A0);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_766CA0();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_B1B4(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_766CB0();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_B1B4(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v19);
  v9(v11, v3, v0);
  sub_766CB0();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_75D2A0();
}

id sub_672498()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_960BF0 = result;
  return result;
}

id sub_6724E4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_9498F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_93E060 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_960BF0);
  sub_767960();
  v7 = sub_767980();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  sub_769F60();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

void sub_672884()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  sub_75D650();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  sub_75D650();
  MinX = CGRectGetMinX(v12);
  sub_75D650();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  sub_75D650();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

void sub_672B58(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_clickActionHandler];
  *v6 = a1;
  v6[1] = a2;
  sub_F714(a1);
  sub_F704(v7);
  if (*v6)
  {
    v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v8 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v9 = *&v2[v3];
    }

    else
    {
      v9 = 0;
    }

    *&v2[v3] = v8;
    v10 = v8;

    [v2 addGestureRecognizer:v10];
  }
}

char *sub_672CA4(void *a1)
{
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = sub_75CF00();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_11D37C(a1);
  if (qword_93E050 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v5, qword_9A0698);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_93D508;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  v23 = sub_BE38(v22, qword_99E728);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  sub_75BA40();

  sub_BE70(0, &qword_93E540);
  v25 = sub_769FD0();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = sub_76A1C0();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_3E31BC();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_93D530;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v22, qword_99E7A0);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  sub_75BA40();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v38 = sub_769FF0();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_93D550;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_BE38(v22, qword_99E800);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    sub_75BA40();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = sub_769FE0();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = sub_769FF0();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = sub_769FD0();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v52 = qword_93D538;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_BE38(v22, qword_99E7B8);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  sub_75BA40();

  return v40;
}

uint64_t sub_6733AC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
LABEL_7:
  sub_BE70(0, &qword_93E550);
  v10 = v7;
  v11 = sub_76A1C0();

  v12 = v11 ^ 1;
  return v12 & 1;
}

id sub_6734C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_startedAsFlowPreview] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_presenter] = a1;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph] = a2;
  v10.receiver = v3;
  v10.super_class = ObjectType;

  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  sub_67571C(qword_960CA0);
  v8 = v7;
  sub_75EB40();

  return v8;
}

void sub_673654()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  sub_75A160();
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController];
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v1 view];
  if (!v7)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  [v8 insertSubview:v9 atIndex:0];

LABEL_6:
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  v13 = [v1 view];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v24 = v16;
  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = 0;
  sub_761920();
}

void sub_673870()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController];
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v11 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 setFrame:{v4, v6, v8, v10}];

LABEL_5:
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  if (!v14)
  {
    return;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v16 = v15;
  [v15 setFrame:{v4, v6, v8, v10}];
}

void sub_673A54(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_contentViewController];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = [v4 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 removeFromSuperview];

  v7 = *&v1[v3];
  if (v7)
  {
    [v7 removeFromParentViewController];
    v8 = *&v1[v3];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  *&v1[v3] = a1;
  v13 = a1;

  if (!a1)
  {
    return;
  }

  [v1 addChildViewController:v13];
  if ([v1 isViewLoaded])
  {
    v9 = [v1 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v13 view];
      if (v11)
      {
        v12 = v11;
        [v10 insertSubview:v11 atIndex:0];

        goto LABEL_11;
      }

LABEL_17:
      __break(1u);
      return;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
}

uint64_t sub_673BAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_760280();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v25 - v7;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v12 - 8);
  v14 = v25 - v13;
  v15 = type metadata accessor for FlowDestination();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_38EE0(a2, v28);

  sub_146CF0(v19, v28, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10A2C(v14, &unk_9442D0);
    return 0;
  }

  sub_61AE8(v14, v18);
  sub_758AA0();
  sub_758A90();
  v20 = [v25[1] traitCollection];
  sub_D2028(v8);

  sub_68DF8(v11, type metadata accessor for FlowPresentationHints);
  sub_68DF8(v18, type metadata accessor for FlowDestination);
  v22 = v26;
  v21 = v27;
  (*(v26 + 32))(v5, v8, v27);
  v23 = (*(v22 + 88))(v5, v21);
  result = 1;
  if (v23 != enum case for FlowPresentationContext.presentModal(_:) && v23 != enum case for FlowPresentationContext.presentModalFormSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalPageSheet(_:) && v23 != enum case for FlowPresentationContext.presentModalFullScreen(_:))
  {
    (*(v22 + 8))(v5, v21);
    return 0;
  }

  return result;
}

unint64_t sub_673F44(uint64_t a1, uint64_t a2)
{
  v79 = a2;
  ObjectType = swift_getObjectType();
  v4 = sub_7687B0();
  __chkstk_darwin(v4 - 8);
  v77 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75A3A0();
  v75 = *(v6 - 8);
  __chkstk_darwin(v6);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v78 = &v71 - v12;
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  __chkstk_darwin(v16);
  v73 = &v71 - v17;
  v18 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v71 - v19;
  v21 = sub_BD88(&unk_9442D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v71 - v22;
  v24 = type metadata accessor for FlowDestination();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = (&v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = v2;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_startedAsFlowPreview] == 1)
  {
    v72 = sub_758B20();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      sub_38EE0(v79, &v81);
      swift_retain_n();
      sub_146CF0(v29, &v81, v23);
      if ((*(v25 + 48))(v23, 1, v24) == 1)
      {
        sub_10A2C(v23, &unk_9442D0);
        if (qword_93DF00 != -1)
        {
          swift_once();
        }

        v30 = sub_768FF0();
        sub_BE38(v30, qword_9A0430);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77DC20;
        *(&v82 + 1) = ObjectType;
        *&v81 = v80;
        v31 = v80;
        sub_7685C0();
        sub_10A2C(&v81, &unk_93FBD0);
        sub_768540();
        *(&v82 + 1) = v72;
        *&v81 = v29;

        sub_7685E0();
        sub_10A2C(&v81, &unk_93FBD0);
        sub_768EA0();
      }

      else
      {
        sub_61AE8(v23, v27);
        v51 = v80;
        v52 = [v80 traitCollection];
        v53 = sub_758A60();
        v55 = v54;
        sub_758A80();
        v83 = 0;
        v81 = 0u;
        v82 = 0u;
        v56 = sub_471418(v27, v52, v53, v55, v20, &v81, *&v51[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph], 1);

        sub_10A2C(&v81, &unk_9442E0);
        sub_10A2C(v20, &unk_944FF0);
        sub_673A54(v56);

        return sub_68DF8(v27, type metadata accessor for FlowDestination);
      }
    }
  }

  sub_758B20();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;

    goto LABEL_9;
  }

  sub_75AB10();
  if (!swift_dynamicCastClass())
  {
LABEL_39:
    v68 = *&v80[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
    v69 = sub_BD88(&unk_93F630);
    sub_768860();
    v70 = *(v69 - 8);
    if ((*(v70 + 48))(v10, 1, v69) != 1)
    {
      sub_32A6C0(a1, 1, v68, v10);

      return (*(v70 + 8))(v10, v69);
    }

    v43 = v10;
    return sub_10A2C(v43, &unk_93F980);
  }

  result = sub_75AB00();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

LABEL_38:

    goto LABEL_39;
  }

  v66 = result;
  v67 = sub_76A860();
  result = v66;
  if (!v67)
  {
    goto LABEL_38;
  }

LABEL_17:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }
  }

  v44 = swift_dynamicCastClass();
  if (!v44)
  {

    goto LABEL_39;
  }

  v34 = v44;
LABEL_9:

  v35 = v80;
  if ((sub_673BAC(v34, v79) & 1) == 0)
  {
    (*(v75 + 104))(v76, enum case for NavigationTab.infer(_:), v6);
    sub_BD88(&unk_93F5C0);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_77D9F0;
    *(v45 + 32) = a1;

    sub_768790();
    sub_75B6B0();
    swift_allocObject();
    v46 = sub_75B690();
    v47 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
    v48 = sub_BD88(&unk_93F630);
    v49 = v78;
    sub_768860();
    v50 = *(v48 - 8);
    if ((*(v50 + 48))(v49, 1, v48) != 1)
    {
      sub_32ACB0(v46, 1, v47, v49);

      return (*(v50 + 8))(v49, v48);
    }

    v43 = v49;
    return sub_10A2C(v43, &unk_93F980);
  }

  v36 = [v35 tabBarController];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 transientViewController];
    if (v38)
    {

      [v37 setTransientViewController:0 animated:0];
      v39 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
      v40 = sub_BD88(&unk_93F630);
      v41 = v73;
      sub_768860();
      v42 = *(v40 - 8);
      if ((*(v42 + 48))(v41, 1, v40) != 1)
      {
        sub_32A6C0(a1, 1, v39, v41);

        return (*(v42 + 8))(v41, v40);
      }

      v43 = v41;
      return sub_10A2C(v43, &unk_93F980);
    }
  }

  v57 = *&v35[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph];
  v58 = sub_BD88(&unk_93F630);
  sub_768860();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v15, 1, v58) == 1)
  {
    sub_10A2C(v15, &unk_93F980);
  }

  else
  {
    sub_32A6C0(a1, 1, v57, v15);

    (*(v59 + 8))(v15, v58);
  }

  v60 = [v35 navigationController];
  v61 = [v60 topViewController];

  if (v61)
  {
    sub_3C80C();
    v62 = v35;
    v63 = sub_76A1C0();

    if (v63)
    {
      v64 = [v62 navigationController];
      if (v64)
      {
        v65 = v64;
      }
    }
  }
}

void sub_674BA8()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  sub_761930();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_674D00()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_overlayViewController];
  if (v2)
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_761930();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_761920();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_674DE4()
{
  v0 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v0 - 8);
  v46 = &v36 - v1;
  v2 = sub_75A3A0();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_758B40();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75F340();
  v40 = *(v6 - 8);
  v41 = v6;
  __chkstk_darwin(v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_760280();
  v8 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  v14 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = sub_765490();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_767210();
  __chkstk_darwin(v21 - 8);
  sub_767200();
  v36 = sub_767230();
  v22 = objc_allocWithZone(v36);
  swift_errorRetain();
  v23 = sub_767220();
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v18 + 104))(v20, enum case for FlowPage.viewController(_:), v17);
  v24 = sub_7570A0();
  (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
  v25 = sub_759E30();
  (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
  v50 = 0u;
  v51 = 0u;
  sub_768790();
  (*(v8 + 104))(v37, enum case for FlowPresentationContext.push(_:), v38);
  (*(v40 + 104))(v39, enum case for FlowAnimationBehavior.never(_:), v41);
  (*(v43 + 104))(v42, enum case for FlowOrigin.inapp(_:), v44);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v26 = sub_758AD0();
  *(&v53 + 1) = v36;
  *&v52 = v23;
  v27 = v23;
  v28 = v46;
  v29 = v27;
  sub_758A70();
  sub_10A2C(&v52, &unk_93FBD0);
  (*(v47 + 104))(v45, enum case for NavigationTab.infer(_:), v48);
  sub_BD88(&unk_93F5C0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77D9F0;
  *(v30 + 32) = v26;

  sub_768790();
  sub_75B6B0();
  swift_allocObject();
  v31 = sub_75B690();
  v32 = *(v49 + OBJC_IVAR____TtC18ASMessagesProvider25LoadingPageViewController_objectGraph);
  v33 = sub_BD88(&unk_93F630);
  sub_768860();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v28, 1, v33) == 1)
  {

    return sub_10A2C(v28, &unk_93F980);
  }

  else
  {
    sub_32ACB0(v31, 1, v32, v28);

    return (*(v34 + 8))(v28, v33);
  }
}

uint64_t sub_67571C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LoadingPageViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_675800@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v205 = a2;
  v206 = a3;
  v198 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v198);
  v182 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v189 = &v167 - v6;
  v204 = sub_75CFE0();
  v197 = *(v204 - 8);
  __chkstk_darwin(v204);
  v194 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v203 = &v167 - v9;
  v10 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v10 - 8);
  v193 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v192 = &v167 - v13;
  __chkstk_darwin(v14);
  v202 = &v167 - v15;
  __chkstk_darwin(v16);
  v201 = &v167 - v17;
  v18 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v18 - 8);
  v181 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v180 = &v167 - v21;
  __chkstk_darwin(v22);
  v188 = &v167 - v23;
  __chkstk_darwin(v24);
  v187 = &v167 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v195 = *(v26 - 8);
  v196 = v26;
  __chkstk_darwin(v26);
  v179 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v178 = &v167 - v29;
  __chkstk_darwin(v30);
  v177 = &v167 - v31;
  __chkstk_darwin(v32);
  v191 = (&v167 - v33);
  __chkstk_darwin(v34);
  v186 = &v167 - v35;
  __chkstk_darwin(v36);
  v185 = &v167 - v37;
  __chkstk_darwin(v38);
  v184 = &v167 - v39;
  __chkstk_darwin(v40);
  v200 = (&v167 - v41);
  v42 = sub_BD88(&unk_948010);
  __chkstk_darwin(v42 - 8);
  v169 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v172 = &v167 - v45;
  __chkstk_darwin(v46);
  v171 = &v167 - v47;
  __chkstk_darwin(v48);
  v174 = &v167 - v49;
  __chkstk_darwin(v50);
  v190 = &v167 - v51;
  __chkstk_darwin(v52);
  v168 = &v167 - v53;
  __chkstk_darwin(v54);
  v170 = &v167 - v55;
  __chkstk_darwin(v56);
  v173 = &v167 - v57;
  __chkstk_darwin(v58);
  v176 = &v167 - v59;
  __chkstk_darwin(v60);
  v175 = &v167 - v61;
  __chkstk_darwin(v62);
  v199 = &v167 - v63;
  v64 = sub_75B660();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v167 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v167 - v69;
  v71 = sub_75AEF0();
  v72 = 0;
  if (v71)
  {
    v72 = sub_75AFE0();
  }

  v207 = v72;
  sub_75B000();
  v74 = v73;
  if (v73)
  {
  }

  v183 = v74;
  sub_75B010();
  v76 = v75;
  if (v75)
  {
  }

  sub_75AF00();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = sub_75B650();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v205;
  v80 = sub_67C9EC(a1, v205);
  v81 = sub_67C7C8(a1, v79);
  if (v77)
  {
    sub_36492C(v76 != 0, v206);
  }

  v83 = v76;
  v167 = v76;
  if (v80)
  {
    if (v207)
    {

      v84 = sub_764AF0();

      v85 = v184;
      v86 = v199;
      if (v84)
      {
        sub_759820();

        v87 = 0;
      }

      else
      {
        v87 = 1;
      }
    }

    else
    {
      v87 = 1;
      v85 = v184;
      v86 = v199;
    }

    v91 = sub_759810();
    v92 = *(v91 - 8);
    (*(v92 + 56))(v86, v87, 1, v91);
    v93 = sub_75CFD0();
    v194 = *(v93 - 1);
    (*(v194 + 7))(v201, 1, 1, v93);
    v205 = v93;
    if (v83)
    {
      v94 = (v92 + 48);
      v95 = v86;
      if (v80 == 1)
      {
        v96 = v175;
        sub_1ED18(v95, v175, &unk_948010);
        if ((*v94)(v96, 1, v91) == 1)
        {
          sub_10A2C(v96, &unk_948010);
          v97 = 0;
        }

        else
        {
          v97 = sub_7597B0();
          (*(v92 + 8))(v96, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_5E740C(v97, v200);

        if (qword_93DE80 != -1)
        {
          swift_once();
        }

        v109 = qword_9A0298;
      }

      else
      {
        v101 = v176;
        sub_1ED18(v95, v176, &unk_948010);
        if ((*v94)(v101, 1, v91) == 1)
        {
          sub_10A2C(v101, &unk_948010);
          v102 = 0;
        }

        else
        {
          v102 = sub_7597B0();
          (*(v92 + 8))(v101, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_5E740C(v102, v200);

        if (qword_93DE70 != -1)
        {
          swift_once();
        }

        v109 = qword_9A0268;
      }

      v110 = sub_BE38(v107, v109);
      sub_C1D58(v110, v85);
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v111 = 0;
      v112 = qword_9A01A8;
      v113 = v108;
    }

    else
    {
      if (v80 == 1)
      {
        v98 = v86;
        v99 = v173;
        sub_1ED18(v98, v173, &unk_948010);
        if ((*(v92 + 48))(v99, 1, v91) == 1)
        {
          sub_10A2C(v99, &unk_948010);
          v100 = 0;
        }

        else
        {
          v100 = sub_7597B0();
          (*(v92 + 8))(v99, v91);
        }

        v107 = v196;
        v108 = v187;
        sub_5E740C(v100, v200);

        if (qword_93DE78 != -1)
        {
          swift_once();
        }

        v111 = 1;
        v112 = qword_9A0280;
      }

      else
      {
        v103 = (v92 + 48);
        if (v183)
        {
          v104 = v86;
          v105 = v170;
          sub_1ED18(v104, v170, &unk_948010);
          if ((*v103)(v105, 1, v91) == 1)
          {
            sub_10A2C(v105, &unk_948010);
            v106 = 0;
          }

          else
          {
            v106 = sub_7597B0();
            (*(v92 + 8))(v105, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_5E7414(v106, v200);

          if (qword_93DE68 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_9A0250;
        }

        else
        {
          v130 = v86;
          v131 = v168;
          sub_1ED18(v130, v168, &unk_948010);
          if ((*v103)(v131, 1, v91) == 1)
          {
            sub_10A2C(v131, &unk_948010);
            v132 = 0;
          }

          else
          {
            v132 = sub_7597B0();
            (*(v92 + 8))(v131, v91);
          }

          v107 = v196;
          v108 = v187;
          sub_5E740C(v132, v200);

          if (qword_93DE60 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_9A0238;
        }
      }

      v113 = v85;
    }

    LODWORD(v196) = v83 != 0;
    v152 = sub_BE38(v107, v112);
    sub_C1D58(v152, v113);
    (*(v195 + 56))(v108, v111, 1, v107);
    v153 = v200;
    v154 = v185;
    sub_C1D58(v200, v185);
    v155 = v186;
    sub_C1D58(v85, v186);
    v156 = v188;
    sub_1ED18(v108, v188, &qword_9439E0);
    v157 = v201;
    sub_1ED18(v201, v202, &qword_9439D8);
    v158 = v197;
    v159 = v204;
    (*(v197 + 104))(v203, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
    sub_BE70(0, &qword_93E540);
    v195 = sub_769FB0();

    sub_10A2C(v157, &qword_9439D8);
    sub_10A2C(v108, &qword_9439E0);
    sub_15CFA0(v85, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_15CFA0(v153, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10A2C(v199, &unk_948010);
    v160 = v198;
    v161 = *(v198 + 32);
    v162 = v189;
    sub_C1E18(v154, v189, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_C1E18(v155, v162 + v160[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_109C4(v156, v162 + v160[6], &qword_9439E0);
    *(v162 + v160[7]) = 0;
    *(v162 + v161) = 0;
    *(v162 + v160[9]) = v196;
    *(v162 + v160[14]) = 0x4030000000000000;
    *(v162 + v160[12]) = 0;
    *(v162 + v160[13]) = v195;
    v163 = v202;
    (*(v158 + 32))(v162 + v160[11], v203, v159);
    v164 = v194;
    v165 = v205;
    if ((*(v194 + 6))(v163, 1, v205) == 1)
    {
      sub_10A2C(v163, &qword_9439D8);
      if (v167)
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v166 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v164 + 13))(v162 + v160[10], *v166, v165);
    }

    else
    {
      (*(v164 + 4))(v162 + v160[10], v163, v165);
    }

    v151 = v162;
    return sub_C1E18(v151, v206, type metadata accessor for TitleHeaderView.Style);
  }

  LODWORD(v205) = v81;
  if (v207)
  {

    v88 = sub_764AF0();

    v89 = v190;
    if (v88)
    {
      sub_759820();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }
  }

  else
  {
    v90 = 1;
    v89 = v190;
  }

  v114 = sub_759810();
  v115 = *(v114 - 8);
  (*(v115 + 56))(v89, v90, 1, v114);
  v116 = sub_75CFD0();
  v202 = *(v116 - 8);
  (*(v202 + 56))(v192, 1, 1, v116);
  v117 = (v115 + 48);
  v203 = v116;
  if (v183)
  {
    if (v83)
    {
      v118 = v174;
      sub_1ED18(v89, v174, &unk_948010);
      if ((*v117)(v118, 1, v114) == 1)
      {
        sub_10A2C(v118, &unk_948010);
        v119 = 0;
      }

      else
      {
        v119 = sub_7597B0();
        (*(v115 + 8))(v118, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_5E740C(v119, v191);

      if (qword_93DE58 != -1)
      {
        swift_once();
      }

      v127 = qword_9A0220;
LABEL_68:
      v133 = sub_BE38(v124, v127);
      sub_C1D58(v133, v126);
      if (qword_93DE30 != -1)
      {
        swift_once();
      }

      v134 = 0;
      v135 = qword_9A01A8;
      v136 = v125;
      goto LABEL_84;
    }

    v122 = v171;
    sub_1ED18(v89, v171, &unk_948010);
    if ((*v117)(v122, 1, v114) == 1)
    {
      sub_10A2C(v122, &unk_948010);
      v123 = 0;
    }

    else
    {
      v123 = sub_7597B0();
      (*(v115 + 8))(v122, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_5E740C(v123, v191);

    if (qword_93DE40 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_9A01D8;
  }

  else
  {
    if (v83)
    {
      v120 = v172;
      sub_1ED18(v89, v172, &unk_948010);
      if ((*v117)(v120, 1, v114) == 1)
      {
        sub_10A2C(v120, &unk_948010);
        v121 = 0;
      }

      else
      {
        v121 = sub_7597B0();
        (*(v115 + 8))(v120, v114);
      }

      v124 = v196;
      v125 = v180;
      v126 = v177;
      sub_5E740C(v121, v191);

      if (qword_93DE50 != -1)
      {
        swift_once();
      }

      v127 = qword_9A0208;
      goto LABEL_68;
    }

    v128 = v169;
    sub_1ED18(v89, v169, &unk_948010);
    if ((*v117)(v128, 1, v114) == 1)
    {
      sub_10A2C(v128, &unk_948010);
      v129 = 0;
    }

    else
    {
      v129 = sub_7597B0();
      (*(v115 + 8))(v128, v114);
    }

    v124 = v196;
    v125 = v180;
    v126 = v177;
    sub_5E740C(v129, v191);

    if (qword_93DE38 != -1)
    {
      swift_once();
    }

    v134 = 1;
    v135 = qword_9A01C0;
  }

  v136 = v126;
LABEL_84:
  LODWORD(v201) = v83 != 0;
  v137 = sub_BE38(v124, v135);
  sub_C1D58(v137, v136);
  (*(v195 + 56))(v125, v134, 1, v124);
  v138 = v191;
  v139 = v178;
  sub_C1D58(v191, v178);
  v140 = v179;
  sub_C1D58(v126, v179);
  v141 = v181;
  sub_1ED18(v125, v181, &qword_9439E0);
  v142 = v192;
  sub_1ED18(v192, v193, &qword_9439D8);
  v143 = v197;
  (*(v197 + 104))(v194, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v204);
  sub_BE70(0, &qword_93E540);
  v200 = sub_769FB0();

  sub_10A2C(v142, &qword_9439D8);
  sub_10A2C(v125, &qword_9439E0);
  sub_15CFA0(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_15CFA0(v138, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v190, &unk_948010);
  v144 = v198;
  v145 = *(v198 + 32);
  v146 = v182;
  sub_C1E18(v139, v182, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_C1E18(v140, v146 + v144[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_109C4(v141, v146 + v144[6], &qword_9439E0);
  *(v146 + v144[7]) = v205 & 1;
  *(v146 + v145) = 0;
  *(v146 + v144[9]) = v201;
  *(v146 + v144[14]) = 0x4030000000000000;
  *(v146 + v144[12]) = 0;
  *(v146 + v144[13]) = v200;
  (*(v143 + 32))(v146 + v144[11], v194, v204);
  v147 = v193;
  v149 = v202;
  v148 = v203;
  if ((*(v202 + 48))(v193, 1, v203) == 1)
  {
    sub_10A2C(v147, &qword_9439D8);
    if (v167)
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v150 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v149 + 104))(v146 + v144[10], *v150, v148);
  }

  else
  {
    (*(v149 + 32))(v146 + v144[10], v147, v148);
  }

  v151 = v146;
  return sub_C1E18(v151, v206, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_677158()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

void sub_6771B0(void *a1)
{
  v3 = sub_757500();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    v14 = sub_75AF30();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_68755C(&qword_960E10, &type metadata accessor for IndexSet);
        sub_76A590();
        do
        {
          aBlock[6] = v13;
          sub_76A540();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_687668;
        *(v21 + 24) = v20;
        aBlock[4] = sub_2EC28;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1EB578;
        aBlock[3] = &unk_89C038;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_677594(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v48 = a4;
  v49 = a2;
  v50 = a3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = 0;
  if (sub_75AEE0())
  {
    return v14;
  }

  sub_75AF10();
  v44 = a1;
  v15 = sub_75AED0();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v45 = v5;
  v46 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v49;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_10;
  }

  v28 = v18 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v18 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v28 || v18 == enum case for Shelf.ContentType.action(_:))
  {
LABEL_7:
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (v18 != enum case for Shelf.ContentType.ribbonBar(_:))
  {
    if (v18 == enum case for Shelf.ContentType.editorialCard(_:) || v18 == enum case for Shelf.ContentType.videoCard(_:))
    {
      goto LABEL_7;
    }

    if (v18 != enum case for Shelf.ContentType.brick(_:) && v18 != enum case for Shelf.ContentType.categoryBrick(_:))
    {
      if (v18 == enum case for Shelf.ContentType.reviews(_:) || v18 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v18 == enum case for Shelf.ContentType.framedVideo(_:) || v18 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v18 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v18 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_7;
      }

      if (v18 != enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        if (v18 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v18 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v18 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v18 == enum case for Shelf.ContentType.posterLockup(_:) || v18 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          goto LABEL_7;
        }

        if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
        {
          if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
          {
            (*(v46 + 8))(v10, v45);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_3AC688();
  if (v21)
  {
    v23 = v44;
    v24 = v50;
    v25 = sub_681330(v44, v20, v21, v22, v50, v48);
    v27 = v45;
    v26 = v46;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v47;
  v27 = v45;
  v16(v47, v13, v45);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_89D438;
    v26 = v46;
LABEL_45:
    v23 = v44;
    [v20 bounds];
    v35 = v34;
    v24 = v50;
    v25 = sub_68164C(v23, v36, v37, v13, v33, v35, v50, v48);
    goto LABEL_46;
  }

  v26 = v46;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell();
    v34 = &off_8924D0;
    goto LABEL_45;
  }

  v41 = *(v46 + 8);
  v41(v31, v27);
  v42 = sub_3AC688();
  v23 = v44;
  if (v42)
  {
    sub_6819A4(v44, v13, v42, v43, v50, v20, v48);
    if (!v25)
    {
      v41(v13, v27);
      return 0;
    }

    v24 = v50;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_679978(v23, v24)}];
    sub_677EA8(v23, v24, v20);
    sub_BE70(0, &unk_956240);
    isa = sub_769450().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_682808();
    sub_BE70(0, &unk_957FA0);
    v39 = sub_769450().super.isa;

    [v14 setDecorationItems:v39];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_76A730(62);
  v54._object = 0x80000000007F05F0;
  v54._countAndFlagsBits = 0xD00000000000002ELL;
  sub_769370(v54);
  sub_76A7F0();
  v55._countAndFlagsBits = 0x7463657320746120;
  v55._object = 0xEC000000206E6F69;
  sub_769370(v55);
  v51 = v23;
  v56._countAndFlagsBits = sub_76A910();
  sub_769370(v56);

  result = sub_76A840();
  __break(1u);
  return result;
}

id sub_677CC4(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v3 = sub_766CA0();
  sub_BE38(v3, qword_99FE18);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_7671E0();
  sub_7666E0();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

double *sub_677EA8(uint64_t a1, void *a2, void *a3)
{
  sub_75AFF0();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_67A694(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_BD88(&unk_93F5C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_77D9F0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_678058(uint64_t a1, void *a2, void *a3, uint64_t a4))()
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_679978(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_761120();
  sub_768900();
  sub_768ED0();
  v44 = v47;
  sub_75E3E0();
  sub_7688F0();
  v45 = v47;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollCoordinator();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  v25 = v24;
  v26 = v4[2];
  v27 = *(v9 + 80);
  v28 = *(v9 + 96);
  swift_unknownObjectRetain();
  v29 = v43;

  v30 = sub_205CFC(a1, v16, v18, v20, v22, v25, v29, v26, a4, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_459B54(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  sub_75AFE0();
  sub_764A70();

  v32 = sub_768AB0();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10A2C(v12, &unk_93FF30);
    v34 = 1;
  }

  else
  {
    sub_768A90();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = sub_768A80();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_678C3C(v15, v36, v45, v30);

  sub_10A2C(v15, &qword_93FFC0);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_6874D8;
}

uint64_t sub_67847C()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_768AB0();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = sub_75AF30();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = 0;
    v43 = result;
    v44 = (v41 + 48);
    v42 = (v41 + 32);
    v39 = v5;
    v40 = (v41 + 16);
    v34 = v41 + 40;
    v35 = (v41 + 8);
    v37 = v12;
    v38 = v11;
    v36 = v13;
    do
    {
      sub_75AFE0();
      sub_764A70();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10A2C(v5, &unk_93FF30);
      }

      else
      {
        v16 = *v42;
        (*v42)(v11, v5, v6);
        swift_beginAccess();
        v17 = v8;
        v18 = v6;
        (*v40)(v8, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v1[7];
        v20 = v46;
        v21 = v1;
        v1[7] = 0x8000000000000000;
        v23 = sub_663D5C(v15);
        v24 = v20[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_76A9B0();
          __break(1u);
          return result;
        }

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_45C108();
          }
        }

        else
        {
          sub_456470(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_663D5C(v15);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_22;
          }

          v23 = v28;
        }

        v8 = v17;
        v30 = v46;
        if (v27)
        {
          v6 = v18;
          (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v17, v18);
        }

        else
        {
          v46[(v23 >> 6) + 8] |= 1 << v23;
          *(v30[6] + 8 * v23) = v15;
          v6 = v18;
          v16((v30[7] + *(v41 + 72) * v23), v17, v18);
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_20;
          }

          v30[2] = v33;
        }

        v1 = v21;
        v21[7] = v30;

        swift_endAccess();

        v11 = v38;
        (*v35)(v38, v6);
        v5 = v39;
      }

      ++v15;
      result = v43;
    }

    while (v43 != v15);
  }

  return result;
}

void sub_678898(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    sub_768610();
  }
}

uint64_t sub_678974()
{
  v1 = sub_768A80();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_768AB0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764A70();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &unk_93FF30);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v0 + 112))
    {

      sub_75F4B0();

      if (*(v0 + 112))
      {

        sub_768A90();
        v12 = sub_75F4A0();

        (*(v2 + 8))(v4, v1);
        (*(v9 + 8))(v11, v8);
        return v12;
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_678C3C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_768A80();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(sub_75FA60());
  v18 = sub_75FA50();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1ED18(a1, v9, &qword_93FFC0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10A2C(v9, &qword_93FFC0);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  sub_761C40();
  swift_allocObject();
  swift_retain_n();
  sub_761C50();
  sub_75FA40();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    sub_7624B0();
    swift_allocObject();
    v19 = a2;
    sub_7624C0();
    sub_75FA40();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    sub_75FED0();
    swift_allocObject();
    v22 = v21;
    sub_75FEE0();
    sub_75FA40();
  }

  if (v20)
  {
    sub_68755C(&qword_960D28, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator);

    sub_75FA40();
  }

  return v18;
}

double sub_679008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v46 = a4;
  v43 = a3;
  v42[1] = a2;
  v49 = a1;
  v48 = sub_75B660();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v42[0] = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v42 - v6;
  v8 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v8 - 8);
  v10 = v42 - v9;
  v11 = sub_764930();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v42 - v16;
  v49 = sub_75AFE0();
  v50 = v17;
  sub_764940();
  v47 = v7;
  v44 = v10;
  if (v43)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v18 = v45;
    v19 = v48;
    (*(v45 + 104))(v7, enum case for ShelfBackground.none(_:), v48);
  }

  else
  {
    sub_75AF10();
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_75AF00();
    v19 = v48;
    v18 = v45;
  }

  v20 = v50;
  (*(v12 + 16))(v14, v50, v11);
  v21 = (*(v12 + 88))(v14, v11);
  v22 = v44;
  v23 = v46;
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v24 = &off_89D438;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v12 + 8))(v14, v11);
      v26 = v47;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v24 = &off_8924D0;
  }

  v25 = (v24[2])();
  v26 = v47;
  v20 = v50;
  if ((v27 & 1) == 0)
  {
    v28 = *&v25;

    v29 = v28;
    (*(v18 + 8))(v26, v19);
    sub_10A2C(v22, &qword_951BE0);
    (*(v12 + 8))(v20, v11);
    return v29;
  }

LABEL_11:
  v45 = v11;
  v30 = sub_3AC688();
  if (v30)
  {
    v32 = v30;
    v33 = v31;
    v34 = v42[0];
    sub_7648F0();
    *&v35 = COERCE_DOUBLE((*(v33 + 48))(v22, v26, v34, v23, v32, v33));
    v37 = v36;

    v38 = *(v18 + 8);
    v39 = v34;
    v40 = v48;
    v38(v39, v48);
    v38(v26, v40);
    sub_10A2C(v22, &qword_951BE0);
    (*(v12 + 8))(v50, v45);
    v29 = 0.0;
    if ((v37 & 1) == 0)
    {
      return *&v35;
    }
  }

  else
  {

    (*(v18 + 8))(v26, v19);
    sub_10A2C(v22, &qword_951BE0);
    (*(v12 + 8))(v20, v45);
    return 0.0;
  }

  return v29;
}

double sub_67957C(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_764930();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = sub_75AFE0();
  sub_764940();
  v34 = v16;
  if (v33)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v18 = 0;
    v19 = v35;
  }

  else
  {
    v33 = v17;
    sub_75AF10();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_75AFF0();
    if (v20)
    {

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v35;
  }

  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v22 = &off_89D438;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell();
    v22 = &off_8924D0;
  }

  v23 = (v22[1])();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    v28 = *&v23;

    v27 = v28;
    goto LABEL_18;
  }

LABEL_14:
  if (sub_3AC688())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_6855A0(v19);

LABEL_18:
  sub_10A2C(v8, &qword_951BE0);
  (*(v10 + 8))(v15, v9);
  return v27;
}

double sub_679978(uint64_t a1, void *a2)
{
  v5 = sub_764930();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v32 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v33 = &v32 - v8;
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75AF30() > a1)
  {
    if (qword_93DD18 != -1)
    {
      swift_once();
    }

    v13 = sub_75E080();
    sub_BE38(v13, qword_99FE90);
    sub_766470();
    sub_75E070();
    (*(v10 + 8))(v12, v9);
    sub_75AFF0();
    if (v14)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v16 = a1 - 1;
      }

      else
      {
        v16 = 0;
      }

      top = sub_679008(a1, v16, a1 < 1, a2);
    }

    v18 = v34;
    v17 = v35;
    v19 = v33;
    v20 = sub_75AF30();
    if (a1 + 1 < v20)
    {
      v21 = a1 + 1;
    }

    else
    {
      v21 = 0;
    }

    (*(*v2 + 536))(a1, v21, a1 + 1 >= v20, a2);
    sub_75AF10();
    if (sub_683E8C())
    {
      goto LABEL_46;
    }

    v22 = sub_3AC688();
    if (!v22)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v18 + 8))(v19, v17);
      return top;
    }

    v24 = v22;
    v35 = v23;
    [a2 pageMarginInsets];
    v26 = v25;
    v27 = sub_75AED0();
    v28 = v32;
    (*(v18 + 16))(v32, v19, v17);
    v29 = (*(v18 + 88))(v28, v17);
    if (v29 != enum case for Shelf.ContentType.smallLockup(_:) && v29 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v29 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v30 = 1;
LABEL_45:
        (*(v35 + 32))(v30 & 1, a2, v24, v26, v26);
        goto LABEL_46;
      }

      if (v29 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v29 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v29 != enum case for Shelf.ContentType.action(_:))
      {
        if (v29 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v29 != enum case for Shelf.ContentType.editorialCard(_:) && v29 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v30 = 1;
          if (v29 == enum case for Shelf.ContentType.brick(_:) || v29 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v29 != enum case for Shelf.ContentType.reviews(_:) && v29 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v29 != enum case for Shelf.ContentType.framedVideo(_:) && v29 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v29 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v29 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v29 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v29 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v29 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v29 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v29 != enum case for Shelf.ContentType.posterLockup(_:) && v29 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v29 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v30 = v27;
                if (v29 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v18 + 8))(v28, v17);
                  v30 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v30 = v27;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_679FB8(uint64_t a1, void *a2)
{
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (sub_75AF30() > a1)
  {
    sub_75AF10();
    if (!sub_683E8C())
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_684040(a1, v15);

        if (v16)
        {
          (*(v6 + 16))(v8, v11, v5);
          v17 = (*(v6 + 88))(v8, v5);
          v18 = *(v6 + 8);
          if (v17 == enum case for Shelf.ContentType.annotation(_:) || v17 == enum case for Shelf.ContentType.productCapability(_:) || v17 == enum case for Shelf.ContentType.productPageLink(_:) || v17 == enum case for Shelf.ContentType.privacyType(_:))
          {
            v18(v11, v5);
            return 30.0;
          }

          v18(v8, v5);
        }

        PageTraitEnvironment.pageColumnMargin.getter();
        v12 = v19;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_67A2B0(uint64_t a1)
{
  v2 = sub_75B660();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v13 - v7;
  if (sub_75AF30() <= a1)
  {
    v11 = 0;
  }

  else
  {
    sub_75AF00();
    (*(v3 + 104))(v5, enum case for ShelfBackground.none(_:), v2);
    sub_68755C(&qword_9439F8, &type metadata accessor for ShelfBackground);
    v9 = sub_7691C0();
    v10 = *(v3 + 8);
    v10(v5, v2);
    v10(v8, v2);
    v11 = v9 ^ 1;
  }

  return v11 & 1;
}

double sub_67A49C(uint64_t a1, void *a2)
{
  v4 = sub_75B660();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_75AF30() > a1)
  {
    sub_75AF00();
    if ((*(v5 + 88))(v7, v4) == enum case for ShelfBackground.color(_:))
    {
      (*(v5 + 96))(v7, v4);

      v8 = *(sub_BD88(&unk_959640) + 48);
      v9 = sub_75EDA0();
      (*(*(v9 - 8) + 8))(v7 + v8, v9);
      return sub_679978(a1, a2);
    }

    (*(v5 + 8))(v7, v4);
  }

  return UIEdgeInsetsZero.top;
}

double sub_67A694(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (sub_75AF30() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_75AFF0();
  if (v17)
  {
    v48 = v16;
    v49 = v17;
    v18 = sub_75AF40();
    v50 = v10;
    if (v18)
    {
      v44 = sub_764C60();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_93C5E0 != -1)
      {
        swift_once();
      }

      v21 = qword_9481A0;
      v45 = a2;
      v46 = v20;
      if (v20)
      {
        v20 = sub_769210();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v44 = v22;
        v24 = v22;
        v25 = [v24 font];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v27 = 0;
        }

        [v24 setFont:v27];

        v23 = v44;
      }

      [v21 sizeThatFits:{v13, v15}];
      v30 = v29;
      v11 = v31;

      v28 = v30 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];

      a2 = v45;
    }

    else
    {
      v28 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [a2 pageMarginInsets];
    if (a1 >= 1)
    {
      v32 = a1 - 1;
    }

    else
    {
      v32 = 0;
    }

    sub_679008(a1, v32, a1 < 1, a2);
    v33 = sub_75AF50();
    v46 = type metadata accessor for TitleHeaderView(0);
    v34 = sub_75B000();
    v36 = v35;
    v37 = sub_75AF90();
    v38 = sub_684270(v33 != 0, a2);
    v39 = v50;
    (*(*v4 + 632))(a1, a2);
    LOBYTE(v42) = 1;
    sub_1995E0(v34, v36, v37, v48, v49, v33, 0, 0, v13, v15, v28, v11, 0, 0, v38, v39, v42, a2);
    v13 = v40;

    sub_15CFA0(v39, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}

uint64_t sub_67AB6C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v33 = a4;
  v6 = sub_75B660();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_76A950() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000000007D87A0 == a2 || (sub_76A950() & 1) != 0)
  {
    v10 = sub_769210();
    v11 = sub_769210();
    v12.super.isa = sub_757550().super.isa;
    v13 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
LABEL_5:
    v14 = v13;

LABEL_6:
    return v14;
  }

  if (sub_769240() == a1 && v16 == a2)
  {

    goto LABEL_20;
  }

  v18 = sub_76A950();

  if (v18)
  {
LABEL_20:
    sub_7575D0();
    sub_75AF00();
    v20 = (*(v7 + 88))(v9, v6);
    v21 = enum case for ShelfBackground.interactive(_:);
    v10 = sub_769210();
    if (v20 == v21)
    {
      type metadata accessor for InteractiveTitleHeaderView();
      sub_769BD0();
      v11 = sub_769210();

      v12.super.isa = sub_757550().super.isa;
      v13 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_769BD0();
    v22 = sub_769210();

    isa = sub_757550().super.isa;
    v24 = [v33 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v22 forIndexPath:isa];

    (*(v7 + 8))(v9, v6);
    return v24;
  }

  if (sub_769240() == a1 && v19 == a2)
  {

LABEL_24:
    v26 = sub_769210();
    type metadata accessor for InfiniteScrollFooterView();
    sub_769BD0();
    v27 = sub_769210();

    v12.super.isa = sub_757550().super.isa;
    v14 = [v33 dequeueReusableSupplementaryViewOfKind:v26 withReuseIdentifier:v27 forIndexPath:v12.super.isa];

    goto LABEL_6;
  }

  v25 = sub_76A950();

  if (v25)
  {
    goto LABEL_24;
  }

  v36._countAndFlagsBits = 0xD00000000000001CLL;
  v36._object = 0x80000000007F0580;
  if (sub_7693C0(v36))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v29 = sub_769210();
    sub_769BD0();
    v30 = sub_769210();

    v31 = v33;
    [v33 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v29 withReuseIdentifier:v30];

    v10 = sub_769210();
    sub_769BD0();
    v11 = sub_769210();

    v12.super.isa = sub_757550().super.isa;
    v13 = [v31 dequeueReusableSupplementaryViewOfKind:v10 withReuseIdentifier:v11 forIndexPath:v12.super.isa];
    goto LABEL_5;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  sub_76A730(29);

  v34 = 0xD00000000000001BLL;
  v35 = 0x80000000007F05D0;
  v37._countAndFlagsBits = a1;
  v37._object = a2;
  sub_769370(v37);
  result = sub_76A840();
  __break(1u);
  return result;
}

void sub_67B160(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v165 = a5;
  v173 = a4;
  v169 = a1;
  v10 = *v6;
  v171 = a6;
  v172 = v10;
  v11 = sub_75B660();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = (&v149 - v16);
  __chkstk_darwin(v18);
  v20 = &v149 - v19;
  v21 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v21 - 8);
  v164 = (&v149 - v22);
  v157 = sub_764A60();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v155 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v154 = &v149 - v25;
  v163 = sub_765240();
  v162 = *(v163 - 8);
  __chkstk_darwin(v163);
  v161 = &v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v27 - 8);
  v160 = &v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v153);
  v170 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_769240() == a2 && v30 == a3)
  {

LABEL_5:
    v32 = type metadata accessor for InteractiveTitleHeaderView();
    v33 = v169;
    v149 = v32;
    v34 = swift_dynamicCastClass();
    v151 = v11;
    v150 = v12;
    v152 = v20;
    if (v34)
    {
      v159 = v34;
      v35 = *(v34 + OBJC_IVAR____TtC18ASMessagesProvider26InteractiveTitleHeaderView_titleView);
      v36 = v33;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v35 = swift_dynamicCastClassUnconditional();
      v159 = 0;
    }

    sub_75A110();
    sub_768900();
    v37 = v35;
    sub_768ED0();
    v167 = v7;
    v168 = v174[0];
    v38 = v7[2];
    v39 = v172[10];
    v40 = v172[12];
    v41 = sub_75AF90();
    v42 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
    v43 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);

    sub_1935B4(v41);
    *(v37 + v42) = v41;

    sub_1935C8(v43);

    v169 = v38;
    v44 = sub_75B000();
    v46 = v45;
    v47 = (v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
    v48 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
    v49 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);

    sub_192F94(v44, v46);
    *v47 = v44;
    v47[1] = v46;

    sub_193028(v48, v49);

    v50 = *(v37 + v42);

    if (v50)
    {
      v51 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView);
      if (v51)
      {
        v52 = *(v37 + v42);
        v53 = v170;
        (*&stru_1A8.segname[(swift_isaMask & *v37) + 8])();
        v54 = v160;
        sub_C1D58(v53, v160);

        v55 = v51;
        sub_15CFA0(v53, type metadata accessor for TitleHeaderView.Style);
        sub_6C27B0(v52, v54, v37);

        sub_15CFA0(v54, type metadata accessor for TitleHeaderView.TextConfiguration);
        v56 = v161;
        sub_765250();
        sub_765210();
        (*(v162 + 8))(v56, v163);
        sub_765330();
        sub_759210();
        sub_68755C(&qword_945810, &type metadata accessor for ArtworkView);
        sub_75A050();
      }
    }

    v58 = sub_75AF50();
    v59 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
    v60 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);

    sub_193754(v58);
    *(v37 + v59) = v58;

    sub_193868(v60);

    v158 = *(v37 + v59);
    v61 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
    v62 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);
    sub_75AFF0();
    if (v63)
    {
      v64 = sub_769210();
    }

    else
    {
      v64 = 0;
    }

    [v62 setText:v64];

    v65 = *(v37 + v59);
    if (v65)
    {
      v66 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
      if (v66)
      {
        v67 = v170;
        (*&stru_1A8.segname[(swift_isaMask & *v37) + 8])();
        v68 = v160;
        sub_C1D58(v67 + *(v153 + 20), v160);

        v69 = v66;
        sub_15CFA0(v67, type metadata accessor for TitleHeaderView.Style);
        sub_6C27B0(v65, v68, v37);
        sub_15CFA0(v68, type metadata accessor for TitleHeaderView.TextConfiguration);
        v70 = v161;
        sub_765250();
        sub_765210();
        (*(v162 + 8))(v70, v163);
        sub_765330();
        sub_759210();
        sub_68755C(&qword_945810, &type metadata accessor for ArtworkView);
        sub_75A050();
      }
    }

    v71 = v158 != 0;
    v72 = swift_allocObject();
    *(v72 + 16) = v39;
    v73 = v172;
    v74 = v172[11];
    *(v72 + 24) = v74;
    *(v72 + 32) = v40;
    *(v72 + 40) = v71;
    *(v72 + 48) = v73;
    v75 = (v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);
    *v75 = sub_68741C;
    v75[1] = v72;

    [*(v37 + v61) setNumberOfLines:{sub_684270(v71, v37)}];

    v76 = v173;
    v77 = sub_75AF40();
    v166 = v39;
    if (v77)
    {
      v172 = v74;
      sub_75AFE0();
      v78 = v154;
      sub_764A80();

      v79 = v155;
      sub_764A40();
      sub_68755C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
      v80 = v157;
      v81 = sub_76A520();
      v82 = *(v156 + 8);
      v82(v79, v80);
      v82(v78, v80);
      if (v81)
      {
        sub_BE70(0, &qword_93E540);
        v83 = sub_769FD0();
        v84 = v83;
      }

      else
      {
        v83 = 0;
      }

      v92 = v37;
      v93 = sub_764C60();
      v94 = v164;
      *v164 = v93;
      v94[1] = v95;
      v94[2] = v83;
      v96 = type metadata accessor for Accessory();
      v94[3] = 0;
      v94[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v96 - 8) + 56))(v94, 0, 1, v96);
      (*&stru_248.segname[(swift_isaMask & *v92) + 16])(v94, v171);

      sub_10A2C(v94, &qword_93FF90);
      v97 = swift_allocObject();
      v91 = v167;
      swift_weakInit();
      v98 = swift_allocObject();
      v99 = v172;
      v98[2] = v166;
      v98[3] = v99;
      v98[4] = v40;
      v98[5] = v97;
      v100 = v173;
      v98[6] = v173;
      v101 = (v92 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v76 = v100;
      v102 = *v101;
      *v101 = sub_687474;
      v101[1] = v98;

      sub_F704(v102);
    }

    else
    {
      v85 = type metadata accessor for Accessory();
      v86 = v164;
      (*(*(v85 - 8) + 56))(v164, 1, 1, v85);
      v87 = *&stru_248.segname[(swift_isaMask & *v37) + 16];
      v88 = v37;
      v87(v86, v171);
      sub_10A2C(v86, &qword_93FF90);
      v89 = (v88 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      v90 = *(v88 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
      *v89 = 0;
      v89[1] = 0;
      sub_F704(v90);
      v91 = v167;
    }

    v103 = v170;
    v104 = v165;
    (*(*v91 + 632))(v76, v165);
    (*&stru_1A8.segname[(swift_isaMask & *v37) + 16])(v103);
    v105 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
    v106 = v105;

    v107 = v159;
    if (v105)
    {
      sub_75B010();
      if (v108)
      {
        v109 = sub_769210();
      }

      else
      {
        v109 = 0;
      }

      [v106 setText:v109];

      v91 = v167;
    }

    if (v107)
    {
      swift_beginAccess();
      if (*(v91[8] + 16))
      {
        sub_663D5C(v76);
        if (v110)
        {
          v175 = v149;
          v176 = &off_884600;
          v174[0] = v107;
          v107 = v107;

          sub_2035D0(v174);

          sub_10A2C(v174, &unk_94A510);
        }
      }
    }

    else
    {
      v111 = v152;
      sub_75AF00();
      [v37 setOverrideUserInterfaceStyle:sub_51DB60()];
      (*(v150 + 8))(v111, v151);
    }

    [v104 pageMarginInsets];
    v114 = v113;
    v116 = v115;
    v118 = v117;
    if (v76 >= 1)
    {
      v119 = v76 - 1;
    }

    else
    {
      v119 = 0;
    }

    v120 = v112 + sub_679008(v76, v119, v76 < 1, v104);
    [v37 setLayoutMargins:{v120, v114, v116, v118}];
    v121 = (v37 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
    *v121 = v120;
    v121[1] = v114;
    v121[2] = v116;
    v121[3] = v118;
    [v37 setNeedsLayout];
    [v37 setNeedsLayout];

    return;
  }

  v31 = sub_76A950();

  if (v31)
  {
    goto LABEL_5;
  }

  if (sub_769240() == a2 && v57 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v123 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC18ASMessagesProvider24InfiniteScrollFooterView_activityIndicator);

    [v123 startAnimating];
    return;
  }

  v152 = v20;
  v122 = sub_76A950();

  if (v122)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (sub_769BC0() == a2 && v124 == a3)
  {
    goto LABEL_48;
  }

  v125 = sub_76A950();

  if (v125)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (sub_769BC0() == a2 && v132 == a3)
  {
    goto LABEL_48;
  }

  v133 = sub_76A950();

  if (v133)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (sub_769BC0() == a2 && v134 == a3)
  {
LABEL_48:

LABEL_50:
    v126 = v169;
    swift_getObjectType();
    v127 = swift_conformsToProtocol2();
    if (v127 && v126)
    {
      v128 = v127;
      ObjectType = swift_getObjectType();
      v130 = v126;
      v131 = v152;
      sub_75AF00();
      (*(v128 + 8))(v131, v171, ObjectType, v128, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v12 + 8))(v131, v11);
    }

    return;
  }

  v135 = sub_76A950();

  if (v135)
  {
    goto LABEL_50;
  }

  v136 = type metadata accessor for InteractiveSectionBackgroundView();
  if (sub_769BC0() == a2 && v137 == a3)
  {
  }

  else
  {
    v138 = sub_76A950();

    if ((v138 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (sub_76A950() & 1) != 0)
      {
        sub_75AF00();
        if ((*(v12 + 88))(v17, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v17, v11);
          return;
        }

        (*(v12 + 96))(v17, v11);
        v144 = *v17;
        v145 = *(sub_BD88(&unk_959640) + 48);
        v146 = sub_75EDA0();
        (*(*(v146 - 8) + 8))(v17 + v145, v146);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x80000000007D87A0 != a3) && (sub_76A950() & 1) == 0 || sub_75AF30() < 1)
        {
          return;
        }

        if (__OFSUB__(sub_75AF30(), 1))
        {
          __break(1u);
          return;
        }

        sub_75AF00();
        if ((*(v12 + 88))(v14, v11) != enum case for ShelfBackground.color(_:))
        {
          (*(v12 + 8))(v14, v11);
          return;
        }

        (*(v12 + 96))(v14, v11);
        v144 = *v14;
        v147 = *(sub_BD88(&unk_959640) + 48);
        v148 = sub_75EDA0();
        (*(*(v148 - 8) + 8))(v14 + v147, v148);
      }

      [v169 setBackgroundColor:v144];

      return;
    }
  }

  v139 = v169;
  v140 = swift_dynamicCastClass();
  if (v140)
  {
    v141 = v140;
    swift_beginAccess();
    if (*(v7[8] + 16))
    {
      sub_663D5C(v173);
      if (v142)
      {
        v175 = v136;
        v176 = &off_88A558;
        v174[0] = v141;
        v143 = v139;

        sub_2035D0(v174);

        sub_10A2C(v174, &unk_94A510);
      }
    }
  }
}

uint64_t sub_67C7C8(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_764930();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_75AF10();
  v10 = sub_3AC688();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      sub_75AF10();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10A2C(v5, &qword_951BE0);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_67C9EC(uint64_t a1, void *a2)
{
  v4 = sub_BD88(&qword_9439F0);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_75B660();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (sub_75AF30() < 1)
  {
    return 0;
  }

  sub_75AF00();
  v19 = v66;
  sub_75AF00();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_68755C(&qword_9439F8, &type metadata accessor for ShelfBackground);
    v42 = sub_7691C0();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = sub_75B650();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = sub_75B650();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = sub_7691C0();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10A2C(v6, &qword_9439F0);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_BD88(&unk_959640);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = sub_75EDA0();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_BE70(0, &qword_93E540);
  LOBYTE(v34) = sub_76A1C0();

  if (v34)
  {
    v37 = sub_75EDA0();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = sub_75EDA0();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

double sub_67D1CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = sub_764A60();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = sub_75FA00();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = sub_757640();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_BD88(&qword_946810);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = sub_764930();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  sub_75AF10();
  v27 = sub_3AC688();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    sub_7575D0();
    if (sub_75AEF0())
    {
      v29 = sub_7575D0();
      v30 = sub_6850C8(v29);
    }

    else
    {
      v30 = 0;
    }

    sub_7575D0();
    if (sub_75AEF0())
    {
      sub_7575D0();
      v90 = sub_75AFE0();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_684370(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    sub_75AFD0();
    (*(v80 + 16))(v18, a1, v82);
    sub_769080();
    v97 = *(v4 + 24);

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    sub_769020();
    sub_75F9F0();
    v37 = sub_681104(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      sub_75F9B0();
      v41 = v93;
      sub_295EC4(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    sub_75AFA0();
    v44 = sub_75ACC0();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10A2C(v43, &unk_955F20);
    if (v45 != 1)
    {
      v46 = v94;
      sub_75F990();
      v47 = v93;
      sub_295EC4(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = sub_7699D0();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      sub_75F9E0();
      v54 = v93;
      sub_295EC4(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!sub_7575D0())
    {
      v56 = v94;
      sub_75F9A0();
      v57 = v93;
      sub_295EC4(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      sub_764A80();

      v60 = v77;
      sub_764A20();
      sub_68755C(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
      v61 = v79;
      v62 = sub_76A520();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        sub_75F9D0();
        v65 = v93;
        sub_295EC4(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_BEB8(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_67DB9C(uint64_t a1, void *a2)
{
  v4 = sub_764930();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7575D0();
  sub_75AF10();
  v8 = sub_764910();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_3DF2F8(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_764910();
    v18 = v17;
    swift_beginAccess();
    isa = sub_20623C(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_764910();
    v20 = sub_769210();

    isa = sub_757550().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

void sub_67DDE4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v241 = a6;
  v272 = *&a5;
  v271 = a4;
  v262 = a3;
  v276 = a2;
  v273 = *v6;
  v260 = sub_768A80();
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v228 = &v221 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_768AB0();
  v263 = *(v267 - 1);
  __chkstk_darwin(v267);
  v233 = &v221 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v254 = &v221 - v11;
  __chkstk_darwin(v12);
  v251 = &v221 - v13;
  __chkstk_darwin(v14);
  v230 = &v221 - v15;
  __chkstk_darwin(v16);
  v231 = &v221 - v17;
  v236 = sub_757500();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = &v221 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_75B660();
  v249 = *(v250 - 8);
  __chkstk_darwin(v250);
  v248 = &v221 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_764A60();
  v246 = *(v247 - 8);
  __chkstk_darwin(v247);
  v245 = &v221 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v21 - 8);
  v23 = &v221 - v22;
  v265 = sub_75FA00();
  v264 = *(v265 - 8);
  __chkstk_darwin(v265);
  v25 = &v221 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v244 = &v221 - v27;
  __chkstk_darwin(v28);
  v266 = &v221 - v29;
  v30 = sub_757640();
  v256 = *(v30 - 8);
  __chkstk_darwin(v30);
  v240 = v31;
  v255 = &v221 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v32 - 8);
  v253 = sub_BD88(&unk_944D90);
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v261 = &v221 - v33;
  v270 = sub_764930();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270);
  v35 = &v221 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v257 = &v221 - v37;
  __chkstk_darwin(v38);
  v40 = &v221 - v39;
  v41 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v41 - 8);
  v237 = &v221 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v243 = &v221 - v44;
  __chkstk_darwin(v45);
  v242 = &v221 - v46;
  __chkstk_darwin(v47);
  v229 = &v221 - v48;
  __chkstk_darwin(v49);
  v232 = &v221 - v50;
  __chkstk_darwin(v51);
  v53 = &v221 - v52;
  v54 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v54 - 8);
  v238 = &v221 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v239 = &v221 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v221 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v274 = v6;
  v275 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v226 = v30;
    v258 = a1;
    v70 = v273[10];
    v71 = v276;
    v268 = v273[12];
    if ((sub_75AF80() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v225 = swift_conformsToProtocol2();
    if (!v225)
    {
      __break(1u);
      return;
    }

    sub_75AFD0();
    v72 = *(v256 + 16);
    v223 = v256 + 16;
    v222 = v72;
    v72(v255, v71, v226);
    sub_769080();
    v282 = *(v274 + 24);

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    v73 = v276;
    sub_768AE0();
    sub_75F9F0();
    v74 = sub_680BD0(v73, v271);
    v75 = v244;
    if (v74)
    {
      sub_75F9B0();
      sub_295EC4(v75, v25);
      v76 = *(v264 + 8);
      v77 = v265;
      v76(v25, v265);
      v76(v75, v77);
    }

    sub_75AFA0();
    v78 = sub_75ACC0();
    v79 = (*(*(v78 - 8) + 48))(v23, 1, v78);
    sub_10A2C(v23, &unk_955F20);
    if (v79 != 1)
    {
      sub_75F990();
      sub_295EC4(v75, v25);
      v80 = *(v264 + 8);
      v81 = v265;
      v80(v25, v265);
      v80(v75, v81);
    }

    if (!sub_7575D0())
    {
      sub_75F9A0();
      sub_295EC4(v75, v25);
      v82 = *(v264 + 8);
      v83 = v265;
      v82(v25, v265);
      v82(v75, v83);
    }

    sub_7575D0();
    v84 = v257;
    sub_75AF10();
    sub_7575D0();
    v227 = v70;
    v85 = sub_75AED0();
    v86 = v269;
    v87 = v84;
    v88 = v270;
    (*(v269 + 16))(v35, v87, v270);
    v89 = (*(v86 + 88))(v35, v88);
    v90 = v272;
    if (v89 == enum case for Shelf.ContentType.smallLockup(_:) || v89 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v89 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v89 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v89 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v89 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v89 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v89 == enum case for Shelf.ContentType.editorialCard(_:) || v89 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v89 == enum case for Shelf.ContentType.brick(_:) || v89 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v89 == enum case for Shelf.ContentType.reviews(_:) || v89 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v89 == enum case for Shelf.ContentType.framedVideo(_:) || v89 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v89 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v89 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v89 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v89 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v89 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v89 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v89 == enum case for Shelf.ContentType.posterLockup(_:) || v89 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v89 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v89 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v269 + 8))(v35, v270);
              goto LABEL_43;
            }

LABEL_38:
            if (v85)
            {
              goto LABEL_39;
            }

LABEL_43:
            v106 = [v271 traitCollection];
            v107 = sub_7699D0();

            if ((v107 & 1) == 0)
            {
              v224 = 0;
              v110 = v266;
LABEL_46:
              v114 = v258;
              ObjectType = swift_getObjectType();
              sub_7575D0();
              sub_75AFE0();
              v116 = v245;
              sub_764A80();

              (*(v225 + 80))(&v284, v261, COERCE_DOUBLE(*&v90), v110, v116, v271, ObjectType);
              (*(v246 + 8))(v116, v247);
              sub_7575D0();
              v117 = v248;
              sub_75AF00();
              v118 = sub_51DB60();
              (*(v249 + 8))(v117, v250);
              if ([v114 overrideUserInterfaceStyle] != v118)
              {
                [v114 setOverrideUserInterfaceStyle:v118];
              }

              sub_134D8(&v284, &v282);
              *(&v280 + 1) = sub_BE70(0, &qword_93FF60);
              *&v279 = v114;
              v119 = v114;
              sub_758EF0();
              sub_10A2C(&v282, &unk_963040);
              sub_BEB8(&v279);
              swift_getObjectType();
              v120 = swift_conformsToProtocol2();
              if (v120 && v114)
              {
                v121 = v120;
                v122 = swift_getObjectType();
                v123 = *(v121 + 8);
                v124 = v119;
                v125 = v123(v122, v121);
                v114 = v258;
                v126 = v125;
                v127 = (v125 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
                v128 = *(v125 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
                *v127 = 0;
                v127[1] = 0;
                sub_F704(v128);
                [*&v126[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];
              }

              swift_getObjectType();
              v129 = swift_conformsToProtocol2();
              v130 = v251;
              if (v129 && v114)
              {
                v131 = swift_allocObject();
                swift_weakInit();
                v132 = v255;
                v133 = v226;
                v222(v255, v276, v226);
                v134 = v256;
                v135 = (*(v256 + 80) + 40) & ~*(v256 + 80);
                v136 = (v240 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
                v137 = swift_allocObject();
                *(v137 + 2) = v227;
                v138 = v268;
                *(v137 + 3) = v273[11];
                *(v137 + 4) = v138;
                (*(v134 + 32))(&v137[v135], v132, v133);
                v114 = v258;
                *&v137[v136] = v131;
                v139 = &v119[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
                v140 = *&v119[OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselCollectionViewCell_didSelectHandler];
                *v139 = sub_68734C;
                v139[1] = v137;
                v141 = v119;

                sub_F704(v140);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_761120();
                sub_768900();
                v142 = v119;
                sub_768ED0();
                v143 = v282;
                swift_getObjectType();
                v144 = sub_75EF20();
                v145 = v142;
                sub_761100();

                v114 = v258;
              }

              *&v277[0] = v119;
              *(&v277[0] + 1) = v225;
              v146 = v119;
              sub_BD88(&qword_95CD80);
              sub_BD88(&qword_95CD88);
              if (swift_dynamicCast())
              {
                sub_10914(&v279, &v282);
                sub_761120();
                sub_768900();
                sub_768ED0();
                v147 = v279;
                sub_B170(&v282, v283);
                sub_761530();

                sub_BEB8(&v282);
              }

              else
              {
                v281 = 0;
                v280 = 0u;
                v279 = 0u;
                sub_10A2C(&v279, &unk_95CD90);
              }

              v148 = v224;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_75E3E0();
                v149 = v146;
                sub_7688F0();
                v150 = v282;
                if (v282)
                {
                  v151 = v149;
                  v152 = v150;
                  sub_75E3D0();

                  v149 = v152;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                sub_134D8(&v284, &v279);
                v153 = v146;
                sub_BD88(&unk_944DA0);
                sub_BD88(&unk_952540);
                if (swift_dynamicCast())
                {
                  sub_10914(v277, &v282);
                  sub_B170(&v282, v283);
                  if (sub_762A10())
                  {
                    sub_75E5C0();
                  }

                  v114 = v258;
                  swift_getObjectType();
                  sub_75D990();

                  sub_BEB8(&v282);
                }

                else
                {

                  v278 = 0;
                  memset(v277, 0, sizeof(v277));
                  sub_10A2C(v277, &unk_9513E0);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                swift_getObjectType();
                v154 = v146;
                sub_761FA0();
              }

              sub_7575D0();
              sub_75AFE0();
              if (v148)
              {
                v155 = [v241 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v156 = swift_dynamicCastClass();
                if (v156)
                {
                  v157 = v156;
                  v158 = [v156 _orthogonalScrollingSections];
                  v159 = v234;
                  sub_7574D0();

                  v114 = v258;
                  v160 = sub_7575D0();
                  v161 = sub_7574F0(v160);
                  (*(v235 + 8))(v159, v236);
                  if (v161)
                  {
                    [v146 frame];
                    v163 = v162;
                    v165 = v164;
                    v167 = v166;
                    v169 = v168;
                    v170 = v232;
                    sub_764A70();
                    v171 = v263;
                    v172 = *(v263 + 48);
                    v173 = v267;
                    if (v172(v170, 1, v267) == 1)
                    {

                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_BEB8(&v284);
                      sub_10A2C(v170, &unk_93FF30);
                      return;
                    }

                    v193 = v231;
                    v275 = *(v171 + 32);
                    v275(v231, v170, v173);
                    sub_134D8(&v284, &v282);
                    sub_B170(&v282, v283);
                    v194 = v229;
                    sub_7690D0();
                    if (v172(v194, 1, v173) == 1)
                    {

                      (*(v263 + 8))(v193, v173);
                      (*(v269 + 8))(v257, v270);
                      (*(v264 + 8))(v266, v265);
                      (*(v252 + 8))(v261, v253);
                      sub_BEB8(&v284);
                      v182 = v194;
                      goto LABEL_92;
                    }

                    v271 = v165;
                    v272 = v163;
                    v275(v230, v194, v173);
                    [v157 _layoutFrameForSection:sub_7575D0()];
                    v196 = v195;
                    v198 = v197;
                    v200 = v199;
                    v202 = v201;
                    [v157 _offsetForOrthogonalScrollingSection:sub_7575D0()];
                    v204 = v274;
                    v205 = *(v274 + 112);
                    v206 = v266;
                    if (v205)
                    {
                      v207 = v203;

                      v208 = v231;
                      v209 = v196;
                      sub_75F4B0();

                      v210 = v263;
                      v211 = v198;
                      if (*(v204 + 112))
                      {

                        v212 = v228;
                        sub_768A90();
                        v279 = v207;
                        *&v280 = v200;
                        *(&v280 + 1) = v202;
                        LOBYTE(v281) = 0;
                        v205 = sub_75F490();

                        (*(v259 + 8))(v212, v260);
                      }

                      else
                      {
                        v205 = 0;
                      }

                      v213 = v253;
                      v214 = v252;
                      v215 = v272;
                    }

                    else
                    {
                      v209 = v196;
                      v210 = v263;
                      v213 = v253;
                      v214 = v252;
                      v208 = v231;
                      v215 = v272;
                      v211 = v198;
                    }

                    v216 = *&v271;
                    v285.origin.x = v209;
                    v285.origin.y = v211;
                    v285.size.width = v200;
                    v285.size.height = v202;
                    v217 = -CGRectGetMinY(v285);
                    v286.origin.x = v215;
                    v286.origin.y = v216;
                    v286.size.width = v167;
                    v286.size.height = v169;
                    CGRectOffset(v286, 0.0, v217);
                    v218 = v230;
                    if (v205)
                    {

                      sub_75F4B0();
                    }

                    sub_685CF4(&v282, v205);

                    v219 = *(v210 + 8);
                    v220 = v267;
                    v219(v218, v267);
                    v219(v208, v220);
                    (*(v269 + 8))(v257, v270);
                    (*(v264 + 8))(v206, v265);
                    (*(v214 + 8))(v261, v213);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v114)
              {
                v174 = v146;
                [v174 frame];
                sub_678974();
                swift_getObjectType();
                sub_7633C0();
              }

              v175 = v242;
              sub_764A70();
              v176 = v263;
              v177 = *(v263 + 48);
              v178 = v267;
              if (v177(v175, 1, v267) == 1)
              {
                v179 = v175;
                v180 = v266;
                sub_10A2C(v179, &unk_93FF30);
              }

              else
              {
                (*(v176 + 32))(v130, v175, v178);
                if (*(v274 + 112))
                {

                  [v146 frame];
                  sub_75F500();
                }

                v180 = v266;
                (*(v176 + 8))(v130, v178);
              }

              sub_134D8(&v284, &v282);
              sub_B170(&v282, v283);
              v181 = v243;
              sub_7690D0();
              if (v177(v181, 1, v178) == 1)
              {

                (*(v269 + 8))(v257, v270);
                (*(v264 + 8))(v180, v265);
                (*(v252 + 8))(v261, v253);
                sub_BEB8(&v284);
                v182 = v181;
LABEL_92:
                sub_10A2C(v182, &unk_93FF30);
LABEL_103:
                sub_BEB8(&v282);
                return;
              }

              v183 = v178;
              (*(v176 + 32))(v254, v181, v178);
              v184 = v237;
              sub_764A70();
              if (v177(v184, 1, v178) == 1)
              {
                sub_10A2C(v184, &unk_93FF30);
                v185 = 1;
                v186 = v260;
                v187 = v259;
                v188 = v239;
              }

              else
              {
                v188 = v239;
                sub_768A90();
                (*(v176 + 8))(v184, v183);
                v185 = 0;
                v186 = v260;
                v187 = v259;
              }

              v189 = v238;
              (*(v187 + 56))(v188, v185, 1, v186);
              if (*(v274 + 112))
              {
                sub_1ED18(v188, v189, &qword_93FFC0);
                v190 = (*(v187 + 48))(v189, 1, v186);

                if (v190 == 1)
                {
                  sub_10A2C(v189, &qword_93FFC0);
                }

                else
                {
                  sub_768A70();
                  (*(v187 + 8))(v189, v186);
                }

                v191 = v233;
                sub_768A40();

                [v146 frame];
                sub_75F4B0();

                (*(v176 + 8))(v191, v267);
              }

              [v146 frame];
              v192 = *(v274 + 112);

              sub_685CF4(&v282, v192);

              sub_10A2C(v188, &qword_93FFC0);
              (*(v176 + 8))(v254, v267);
              (*(v269 + 8))(v257, v270);
              (*(v264 + 8))(v180, v265);
              (*(v252 + 8))(v261, v253);
LABEL_102:
              sub_BEB8(&v284);
              goto LABEL_103;
            }

            sub_75F9E0();
            v224 = 0;
LABEL_45:
            v108 = v75;
            v109 = v75;
            v110 = v266;
            sub_295EC4(v108, v25);
            v111 = *(v264 + 8);
            v112 = v25;
            v113 = v265;
            v111(v112, v265);
            v111(v109, v113);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    sub_75F9C0();
    v224 = 1;
    goto LABEL_45;
  }

  v268 = v62;
  v63 = a1;
  sub_7575D0();
  v264 = v273[12];
  v64 = sub_75AFE0();
  v266 = v63;
  [v63 frame];
  v265 = sub_678974();
  sub_761120();
  sub_768900();
  sub_768ED0();
  v65 = v284;
  sub_75E3E0();
  sub_7688F0();
  v66 = v284;
  sub_764A70();
  v67 = v263;
  v68 = v267;
  if ((*(v263 + 48))(v53, 1, v267) == 1)
  {
    sub_10A2C(v53, &unk_93FF30);
    v69 = 1;
  }

  else
  {
    sub_768A90();
    (*(v67 + 8))(v53, v68);
    v69 = 0;
  }

  (*(v259 + 56))(v61, v69, 1, v260);
  v91 = v65;
  v267 = v91;
  v92 = v274;
  v93 = sub_678C3C(v61, v65, v66, 0);

  sub_10A2C(v61, &qword_93FFC0);
  type metadata accessor for ShelfComponentContainerDelegate();
  v273 = v66;
  v94 = v275;
  swift_unknownObjectRetain();
  v95 = sub_7575D0();
  sub_764940();
  v96 = sub_764900();
  (*(v269 + 8))(v40, v270);
  v97 = *(v92 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v263 = v93;
  v99 = sub_51FBD0(v94, v95, v96 & 1, v97, v93, &protocol witness table for CompoundScrollObserver, v265);

  swift_unknownObjectRetain();

  v100 = v266;
  v101 = swift_getObjectType();
  v102 = sub_7575D0();
  WitnessTable = swift_getWitnessTable();
  v104 = v268;
  v105 = *(v268 + 32);

  v105(v64, v102, v262, *&v272, v99, WitnessTable, v271, v101, v104);

  swift_unknownObjectRelease();
}

void sub_680594(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = sub_757640();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_9467B0);
  __chkstk_darwin(v13 - 8);
  v14 = sub_BD88(&unk_944D90);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = sub_757550().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      sub_75AFD0();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      sub_769080();
      v40 = v5[3];

      sub_BD88(&qword_9467C0);
      sub_2A3AD4();
      sub_768AE0();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        sub_75AF60();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_BEB8(v41);
            return;
          }

LABEL_6:
          sub_BD88(&unk_941A18);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_77B6D0;
          v33((v28 + v27), a1, v38);
          v29 = sub_769450().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = sub_757550().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  sub_75AF60();
  v39 = sub_757550().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_680A04(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_764930();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_3AD19C(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_680BD0(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  sub_7575D0();
  v15 = *(v4 + 80);
  sub_75AF10();
  sub_7575D0();
  v39 = v15;
  v40 = v14;
  v16 = sub_75AED0();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = sub_7575D0();
  if (v19)
  {
    v24 = sub_75AF70();
    result = sub_7575C0();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_6850C8(v23);
  v36[1] = v20;
  v27 = v26;
  sub_7575D0();
  v28 = v37;
  sub_75AF10();
  v36[0] = a1;
  sub_7575D0();
  v29 = sub_75AF20();
  v30 = sub_680A04(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = sub_7575C0();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_681104(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7575D0();
  v6 = sub_75AF20();
  sub_7575D0();
  sub_75AF10();
  sub_7575D0();
  v7 = sub_75AF20();
  v8 = sub_680A04(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_7575C0();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_6812D4(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  sub_7574C0(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

id sub_681330(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = sub_764A60();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  sub_75AFE0();
  v16 = sub_764AD0();

  v17 = sub_75AF70();
  sub_75AFE0();
  sub_764A80();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_769820();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_678058(v33, v34, v19, v18);
  aBlock[4] = sub_6874D8;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_4E4820;
  aBlock[3] = &unk_89BFC0;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_68164C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate();
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = sub_764900();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_51FBD0(v13, a1, v14 & 1, v16, v15, v17, 0);

  swift_unknownObjectRetain();

  v20 = sub_75AFE0();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_77D9F0;
  *(v32 + 32) = v30;
  sub_BE70(0, &qword_957F90);
  v33 = v30;
  isa = sub_769450().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_6819A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = sub_764930();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_960D30);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_BD88(&qword_941BD0);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = sub_757640();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_6850C8(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_680A04(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_77E280;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_BD88(&qword_95B250);
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              sub_757540();
              v54 = sub_67D1CC(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_7C15C(0, *(v49 + 2) + 1, 1, v49);
              }

              v59 = *(v49 + 2);
              v58 = *(v49 + 3);
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_7C15C(v58 > 1, v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              *(v49 + 2) = v59 + 1;
              sub_109C4(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &qword_941BD0);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = *(v49 + 2);
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < *(v49 + 2))
          {
            sub_1ED18(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &qword_941BD0);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_109C4(v34, v20, &unk_960D30);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = sub_7699E0();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_682E10(v67, v68);
          sub_BE70(0, &unk_956250);
          isa = sub_769450().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_679978(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          sub_769440();
          if (*(&dword_10 + (v128 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v128 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (sub_76A860() != 1 || !sub_76A860())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_BE70(0, &qword_957F90);
            v41 = sub_769450().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_679FB8(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            sub_769440();
            if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v129 & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_7694C0();
            }

            sub_769500();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        sub_769440();
        if (*(&dword_10 + (v129 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v129 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_BE70(0, &qword_957F90);
          v95 = sub_769450().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

double *sub_682808()
{
  v0 = sub_75B660();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75AF00();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v5 = *(sub_BD88(&qword_94B9A8) + 48);
    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77D9F0;
    v7 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_769BC0();
    v8 = sub_769210();

    v9 = [v7 backgroundDecorationItemWithElementKind:v8];

    *(v6 + 32) = v9;
    v10 = sub_75EDA0();
    (*(*(v10 - 8) + 8))(&v3[v5], v10);
  }

  else if (v4 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v11 = sub_BD88(&qword_94B3C0);
    v12 = v11[12];
    v13 = v11[16];
    v14 = v11[20];
    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77D9F0;
    v15 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_769BC0();
    v16 = sub_769210();

    v17 = [v15 backgroundDecorationItemWithElementKind:v16];

    *(v6 + 32) = v17;
    v18 = sub_75EDA0();
    (*(*(v18 - 8) + 8))(&v3[v14], v18);
    v19 = sub_763400();
    v20 = *(*(v19 - 8) + 8);
    v20(&v3[v13], v19);
    v20(&v3[v12], v19);
  }

  else if (v4 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v21 = *(sub_BD88(&qword_959950) + 48);
    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77D9F0;
    v22 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_769BC0();
    v23 = sub_769210();

    v24 = [v22 backgroundDecorationItemWithElementKind:v23];

    *(v6 + 32) = v24;
    v25 = sub_75EDA0();
    (*(*(v25 - 8) + 8))(&v3[v21], v25);
    v26 = sub_763E10();
    (*(*(v26 - 8) + 8))(v3, v26);
  }

  else if (v4 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v27 = enum case for ShelfBackground.interactive(_:);
    v28 = v4;
    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77D9F0;
    v29 = objc_opt_self();
    if (v28 == v27)
    {
      type metadata accessor for InteractiveSectionBackgroundView();
      sub_769BC0();
      v30 = sub_769210();

      v31 = [v29 backgroundDecorationItemWithElementKind:v30];

      *(v6 + 32) = v31;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_769BC0();
      v32 = sub_769210();

      v33 = [v29 backgroundDecorationItemWithElementKind:v32];

      *(v6 + 32) = v33;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v6;
}

double *sub_682E10(double a1, double a2)
{
  v4 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_75ACC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_75AFA0();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_955F20);
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    (*(v8 + 16))(v10, v13, v7);
    v14 = (*(v8 + 88))(v10, v7);
    if (v14 == enum case for ItemBackground.ad(_:) || v14 == enum case for ItemBackground.insetAd(_:) || v14 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v17 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v18 = objc_opt_self();
      v19 = [v18 absoluteDimension:a1 + 16.0];
      v20 = [v18 absoluteDimension:a2];
      v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

      v22 = v21;
      sub_305A2C();
      v23 = v17;
      v24 = sub_769210();

      v25 = [objc_opt_self() supplementaryItemWithLayoutSize:v22 elementKind:v24 containerAnchor:v23];

      [v25 setZIndex:-1];
      sub_BD88(&unk_93F5C0);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_77D9F0;
      *(v26 + 32) = v25;

      (*(v8 + 8))(v13, v7);
      return v26;
    }

    v28 = *(v8 + 8);
    v28(v13, v7);
    v28(v10, v7);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_68321C(uint64_t a1, uint64_t a2)
{
  v45 = sub_BD88(&unk_9467B0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_768AB0();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_7574A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&qword_94D5B0);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_7574B0();
  swift_beginAccess();
  sub_757500();
  sub_68755C(&qword_94D5B8, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_7696F0();
    sub_68755C(&qword_94D5C0, &type metadata accessor for IndexSet.Index);
    v19 = sub_7691C0();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_769710();
    v22 = *v21;
    v20(v49, 0);
    sub_769700();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_663D5C(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_75F4D0();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_452008(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_76A6E0();
    v17 = v44;
    sub_769090();
    sub_768C70();
    (*v41)(v17, v45);
  }

  return sub_10A2C(v15, &qword_94D5B0);
}

uint64_t sub_6837B4(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_BD88(&unk_9467B0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_7574A0();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94D5B0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_7574B0();
  sub_757500();
  sub_68755C(&qword_94D5B8, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_7696F0();
    sub_68755C(&qword_94D5C0, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = sub_7691C0();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_769710();
    v16 = *v15;
    v14(v24, 0);
    sub_769700();
    v25 = v16;
    sub_76A6E0();
    v17 = v20;
    sub_769090();
    sub_768C70();
  }

  return sub_10A2C(v9, &qword_94D5B0);
}

void sub_683AF8(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_BD88(&unk_9467B0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_757640();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_BE70(0, &qword_93FF60);
  v11 = sub_769460();

  if (!(v11 >> 62))
  {
    v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_76A860();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_76A770();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_757590();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_7575D0();
        sub_76A6E0();
        v23 = v34;
        sub_769090();
        sub_768C70();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

BOOL sub_683E8C()
{
  v0 = sub_764930();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_75AF10();
  (*(v1 + 32))(v3, v6, v0);
  v7 = (*(v1 + 88))(v3, v0);
  if (v7 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v8 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v7 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v8 = type metadata accessor for InformationRibbonCollectionViewCell();
  }

  else
  {
    (*(v1 + 8))(v3, v0);
    v8 = 0;
  }

  return v8 != 0;
}

uint64_t sub_684040(uint64_t a1, uint64_t a2)
{
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (sub_75AF30() > a1)
  {
    sub_75AF10();
    if (!sub_683E8C() && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_684270(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = sub_769A00();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_6842D8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    sub_75AFB0();
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_684370(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = sub_764930();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  sub_769DA0();
  if ((a2 & 1) == 0)
  {
    v17 = sub_3AC688();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      swift_getObjectType();
      [a4 pageMarginInsets];
      (*(v20 + 32))(0, a4, v19, v20, v21);
      v22 = [a4 traitCollection];
      LOBYTE(v19) = (*(*v6 + 696))(a1, v22);

      if (v19)
      {
        v23 = sub_680A04(a1, a3, a4);
        (*(v13 + 16))(v16, a1, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != enum case for Shelf.ContentType.annotation(_:) && v24 != enum case for Shelf.ContentType.productCapability(_:) && v24 != enum case for Shelf.ContentType.productPageLink(_:) && v24 != enum case for Shelf.ContentType.privacyType(_:))
        {
          (*(v13 + 8))(v16, v12);
          PageTraitEnvironment.pageColumnMargin.getter();
          if (!__OFSUB__(v23, 1))
          {
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

        if (__OFSUB__(v23, 1))
        {
          __break(1u);
          goto LABEL_13;
        }
      }
    }
  }
}

uint64_t sub_68466C(uint64_t a1)
{
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_95B250);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_77E280;
  *(v6 + 32) = sub_7575D0();
  *(v6 + 40) = a1;
  sub_757540();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_75AFC0();
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_6847E8(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (sub_7699E0())
    {
      v8 = sub_769A00() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_684BDC()
{
  sub_677158();

  return swift_deallocClassInstance();
}

void sub_684C28()
{
  sub_768C80();
  if (*(v0 + 112))
  {

    sub_75F4E0();
  }
}

uint64_t sub_684C84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_960E40);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_757500();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_1ED18(a1, v9, &unk_960E40);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10A2C(v9, &unk_960E40);
    if (v2[14])
    {

      sub_75F4E0();
    }

    swift_beginAccess();
    v2[7] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_BD88(&qword_9467C0);
    v21[0] = 0;
    sub_2A3AD4();
    v16 = v22;
    sub_768610();

    (*(v11 + 8))(v15, v10);
  }

  sub_67847C();
  sub_1ED18(v24, v6, &unk_960E40);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10A2C(v6, &unk_960E40);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_BD88(&qword_9467C0);
  sub_2A3AD4();
  sub_768610();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_6850C8(uint64_t a1)
{
  if (sub_75AF30() <= a1 || (sub_75AEE0() & 1) != 0)
  {
    return 0;
  }

  v2 = sub_75AF20();
  if (sub_683E8C())
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_685184(uint64_t a1, void *a2)
{
  v44 = a2;
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v43 = &v33[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v40 = &v33[-v10];
  v11 = sub_768390();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_BE70(0, &qword_940340);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_7699A0();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_47E01C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v38 = v4 + 32;
  v39 = v4 + 16;
  v37 = v4 + 88;
  v36 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v34 = enum case for Shelf.ContentType.informationRibbon(_:);
  v41 = a1;
  v42 = (v4 + 8);

  v24 = 0;
  v35 = v4;
  while (v21)
  {
LABEL_10:
    v26 = v40;
    v27 = *(v4 + 16);
    v27(v40, *(v41 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v3);
    (*(v4 + 32))(v17, v26, v3);
    v28 = v43;
    v27(v43, v17, v3);
    v29 = (*(v4 + 88))(v28, v3);
    if (v29 == v36)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v29 == v34)
    {
      type metadata accessor for InformationRibbonCollectionViewCell();
    }

    else
    {
      (*v42)(v43, v3);
      if (!sub_3AC688())
      {
        goto LABEL_4;
      }
    }

    if (v44)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_764910();
      v31 = v17;
      v32 = sub_769210();

      [v44 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v32];

      v17 = v31;
      v4 = v35;
    }

LABEL_4:
    v21 &= v21 - 1;
    result = (*v42)(v17, v3);
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v22)
    {
    }

    v21 = *(v18 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double sub_6855A0(void *a1)
{
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_766CA0();
  sub_BE38(v2, qword_99FE18);
  v3 = [a1 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = sub_7671E0();
  sub_7666E0();
  v8 = v7;

  return v8;
}

void sub_6856BC(void *a1)
{
  [a1 reloadData];

  sub_678898(a1);
}

uint64_t sub_685700(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_768AB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v19 = sub_7601B0();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_134D8(v21, v53);
          sub_B170(v53, v53[3]);
          v23 = v48;
          sub_7690D0();
          sub_BEB8(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10A2C(v23, &unk_93FF30);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_B170(v44, v44[3]);
            sub_7690D0();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10A2C(v10, &unk_93FF30);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_768A90();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_768A80();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_1ED18(v27, v40, &qword_93FFC0);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10A2C(v31, &qword_93FFC0);
              }

              else
              {
                sub_768A70();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_768A40();

              sub_75F4D0();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10A2C(v32, &qword_93FFC0);
              v35(v34, v37);
            }

            else
            {
              sub_10A2C(v27, &qword_93FFC0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10A2C(v51, &qword_956660);
  }
}

uint64_t sub_685CF4(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_768AB0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_134D8(a1, v53);
  sub_BD88(&unk_944DA0);
  sub_BD88(&qword_956658);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_10914(v51, v54);
    sub_B170(v54, v54[3]);
    v19 = sub_7601B0();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_134D8(v21, v53);
          sub_B170(v53, v53[3]);
          v23 = v48;
          sub_7690D0();
          sub_BEB8(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10A2C(v23, &unk_93FF30);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_B170(v44, v44[3]);
            sub_7690D0();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10A2C(v10, &unk_93FF30);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_768A90();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_768A80();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_1ED18(v27, v40, &qword_93FFC0);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10A2C(v31, &qword_93FFC0);
              }

              else
              {
                sub_768A70();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_768A40();

              sub_75F4B0();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10A2C(v32, &qword_93FFC0);
              v35(v34, v37);
            }

            else
            {
              sub_10A2C(v27, &qword_93FFC0);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_BEB8(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10A2C(v51, &qword_956660);
  }
}

void sub_68634C(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t))
{
  v3 = v2;
  v102 = *v2;
  v6 = sub_BD88(&qword_93FFC0);
  __chkstk_darwin(v6 - 8);
  v90 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = v86 - v9;
  v10 = sub_764930();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v96 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v98 = v86 - v14;
  v15 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v15 - 8);
  v91 = v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = v86 - v18;
  __chkstk_darwin(v19);
  v95 = v86 - v20;
  v21 = sub_768AB0();
  v99 = *(v21 - 8);
  v100 = v21;
  __chkstk_darwin(v21);
  v89 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v92 = v86 - v24;
  __chkstk_darwin(v25);
  v94 = v86 - v26;
  if (sub_7575E0() >= 2)
  {
    v88 = v11;
    v86[3] = v2[2];
    v27 = *(v102 + 96);
    v86[2] = *(v102 + 80);
    v86[1] = v27;
    v28 = sub_75AF80();
    v29 = sub_BE70(0, &qword_93FF60);
    v107 = v29;
    v106[0] = a1;
    v30 = a1;
    v87 = v28;
    sub_760910();
    sub_BEB8(v106);
    swift_getObjectType();
    v31 = swift_conformsToProtocol2();
    v101 = a2;
    if (v31 && v30)
    {
      sub_761120();
      sub_768900();
      v32 = v30;
      v86[0] = v29;
      v33 = v32;
      sub_768ED0();
      v34 = v106[0];
      swift_getObjectType();
      v35 = sub_75EF20();
      v36 = v33;
      sub_7610C0();
    }

    v105 = v30;
    v37 = v30;
    sub_BD88(&qword_95CD88);
    if (swift_dynamicCast())
    {
      sub_10914(v103, v106);
      sub_761120();
      sub_768900();
      sub_768ED0();
      v38 = *&v103[0];
      sub_B170(v106, v107);
      sub_761540();

      sub_BEB8(v106);
    }

    else
    {
      v104 = 0;
      memset(v103, 0, sizeof(v103));
      sub_10A2C(v103, &unk_95CD90);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      sub_75E3E0();
      v39 = v37;
      sub_7688F0();
      v40 = v106[0];
      if (v106[0])
      {
        v41 = v39;
        v42 = v40;
        sub_75E390();

        v39 = v42;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v30)
    {
      swift_getObjectType();
      v43 = v37;
      sub_761FB0();
    }

    swift_getObjectType();
    v44 = swift_conformsToProtocol2();
    v45 = v88;
    if (v44 && v30)
    {
      v46 = v44;
      ObjectType = swift_getObjectType();
      v48 = *(v46 + 8);
      v49 = v37;
      v48(ObjectType, v46);
    }

    if (v87)
    {
      swift_getObjectType();
      v50 = swift_conformsToProtocol2();
      if (v50 && v30)
      {
        v51 = v50;
        v52 = swift_getObjectType();
        v53 = *(v51 + 40);
        v54 = v37;
        v53(v52, v51);
      }

      sub_7575D0();
      v55 = sub_683E8C();
      sub_7575D0();
      if (v55)
      {
        sub_75AFE0();
        v56 = v95;
        sub_764A70();
        v58 = v99;
        v57 = v100;
        if ((*(v99 + 48))(v56, 1, v100) == 1)
        {

          sub_10A2C(v56, &unk_93FF30);
        }

        else
        {
          v70 = v94;
          (*(v58 + 32))(v94, v56, v57);
          if (v3[14])
          {

            sub_75F4D0();
          }

          (*(v58 + 8))(v70, v57);
        }

        return;
      }

      v59 = v98;
      sub_75AF10();
      sub_7575D0();
      v60 = sub_75AED0();
      v61 = v96;
      (*(v45 + 16))(v96, v59, v10);
      v62 = (*(v45 + 88))(v61, v10);
      v63 = v97;
      if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.editorialCard(_:) || v62 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.brick(_:) || v62 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.reviews(_:) || v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.framedVideo(_:) || v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v62 == enum case for Shelf.ContentType.posterLockup(_:) || v62 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v60)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v85 = v97;
        (*(v45 + 8))(v61, v10);
        v63 = v85;
      }

      v64 = v63;
      v65 = sub_75AF30();
      if (sub_7575D0() < v65)
      {
        v66 = sub_7575C0();
        sub_7575D0();
        if (v66 < sub_75AF20())
        {
          sub_75AFD0();
          sub_B170(v106, v107);
          sub_7690D0();
          v67 = v64;
          v68 = v99;
          v69 = v100;
          v101 = *(v99 + 48);
          if (v101(v67, 1, v100) == 1)
          {
            (*(v45 + 8))(v59, v10);
            sub_10A2C(v67, &unk_93FF30);
          }

          else
          {
            (*(v68 + 32))(v92, v67, v69);
            sub_7575D0();
            sub_75AFE0();
            v71 = v91;
            sub_764A70();
            v72 = v3;
            if (v101(v71, 1, v69) == 1)
            {
              sub_10A2C(v71, &unk_93FF30);
              v73 = 1;
              v74 = v93;
            }

            else
            {
              v75 = v93;
              sub_768A90();
              v74 = v75;
              (*(v68 + 8))(v71, v69);
              v73 = 0;
            }

            v76 = sub_768A80();
            v77 = *(v76 - 8);
            (*(v77 + 56))(v74, v73, 1, v76);
            if (v72[14])
            {
              v78 = v90;
              sub_1ED18(v74, v90, &qword_93FFC0);
              v79 = (*(v77 + 48))(v78, 1, v76);

              if (v79 == 1)
              {
                sub_10A2C(v78, &qword_93FFC0);
              }

              else
              {
                sub_768A70();
                (*(v77 + 8))(v78, v76);
              }

              v84 = v89;
              v83 = v92;
              sub_768A40();

              sub_75F4D0();

              v82 = v99;
              v81 = v100;
              (*(v99 + 8))(v84, v100);
              v80 = v72[14];
            }

            else
            {
              v80 = 0;
              v82 = v99;
              v81 = v100;
              v83 = v92;
            }

            sub_685700(v106, v80);

            sub_10A2C(v93, &qword_93FFC0);
            (*(v82 + 8))(v83, v81);
            (*(v45 + 8))(v98, v10);
          }

          sub_BEB8(v106);
          return;
        }
      }

LABEL_56:
      (*(v45 + 8))(v59, v10);
    }
  }
}

uint64_t sub_687278()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6872B0()
{
  v1 = sub_757640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_68734C(uint64_t a1)
{
  sub_757640();

  return sub_68466C(a1);
}

uint64_t sub_68743C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_6874A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_687544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_68755C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6875A4()
{
  v1 = sub_757500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_687668()
{
  v1 = *(sub_757500() - 8);
  v2 = *(v0 + 16);
  sub_7574C0(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

uint64_t sub_68779C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = (swift_isaMask & *v0);
  v4 = sub_BD88(&unk_960E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = *&stru_3D8.segname[v2 & v1];
  v8 = *(&stru_3D8.reloff + (v2 & v1));
  sub_75AF30();
  sub_684C28();
  v9 = [v0 collectionView];
  [v9 reloadData];

  v10 = *(&stru_3D8.size + (v2 & v1));
  if (sub_75EB70())
  {
    sub_75CA90();
  }

  v11 = sub_68B888();
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 2) = v7;
    *(v14 + 3) = v3[126];
    *(v14 + 4) = v3[127];
    *(v14 + 5) = v10;
    *(v14 + 6) = v3[129];
    *(v14 + 7) = v8;
    *(v14 + 8) = v13;
    v15 = &v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v16 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v15 = sub_68DBF0;
    v15[1] = v14;

    sub_F704(v16);
  }

  v17 = sub_68B888();
  v18 = sub_757500();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_684C84(v6);

  sub_10A2C(v6, &unk_960E40);
  sub_75EB60();
}

void sub_687A58()
{
  v1 = sub_7572A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_960D80))
  {

    sub_757290();
    sub_75B580();

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_687B40()
{
  v1 = v0;
  v2 = sub_7572A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7587B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v1 + v10, v14);
  if (v15)
  {
    sub_134D8(v14, v13);
    sub_10A2C(v14, &qword_93FED0);
    sub_B170(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    sub_7587C0();
    (*(v7 + 8))(v9, v6);
    result = sub_BEB8(v13);
  }

  else
  {
    result = sub_10A2C(v14, &qword_93FED0);
  }

  if (*(v1 + qword_960D80))
  {

    sub_757290();
    sub_75B570();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_687DC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v27 = a3;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_764940();
  v14 = sub_3AC688();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    if (sub_75AEF0())
    {
      v25 = sub_6850C8(a2);
    }

    else
    {
      v25 = 0;
    }

    v17 = sub_764970();
    (*(v8 + 16))(v10, v13, v7);
    v18 = (*(v8 + 88))(v10, v7);
    if (v18 != enum case for Shelf.ContentType.smallLockup(_:) && v18 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_12:
        v20 = 1;
        goto LABEL_13;
      }

      if (v18 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v18 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v18 != enum case for Shelf.ContentType.action(_:))
      {
        if (v18 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_12;
        }

        if (v18 != enum case for Shelf.ContentType.editorialCard(_:) && v18 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v20 = 1;
          if (v18 == enum case for Shelf.ContentType.brick(_:) || v18 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_13;
          }

          if (v18 != enum case for Shelf.ContentType.reviews(_:) && v18 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v18 != enum case for Shelf.ContentType.framedVideo(_:) && v18 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v18 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v18 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v18 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_13;
            }

            if (v18 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v18 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v18 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v18 != enum case for Shelf.ContentType.posterLockup(_:) && v18 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v20 = v17;
                if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v8 + 8))(v10, v7);
                  v20 = 0;
                }
              }

              goto LABEL_13;
            }
          }
        }
      }
    }

    v20 = v17;
LABEL_13:
    sub_684370(v13, v20 & 1, v25, v4, v27);
    (*(v26 + 24))(a1, v20 & 1, v4, *&v4[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_artworkLoader], v16);
  }

  return (*(v8 + 8))(v13, v7);
}

double *sub_68822C()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_75B660();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __chkstk_darwin(v6);
  v9 = (&v34 - v8);
  v10 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v11 = (*(v1 + 1248))(v7);
  v12 = sub_2A3B54(v11);
  if (v12)
  {
    v13 = v12;
    sub_769440();
    if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v10 = v35;
  }

  v14 = sub_677CC4(v0);
  if (v14)
  {
    v15 = v14;
    sub_769440();
    if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v10 = v35;
  }

  if (sub_75AF30() < 1)
  {
    goto LABEL_14;
  }

  sub_75AF00();
  if ((*(v3 + 88))(v9, v2) != enum case for ShelfBackground.color(_:))
  {
    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  (*(v3 + 96))(v9, v2);

  v16 = *(sub_BD88(&unk_959640) + 48);
  v17 = sub_75EDA0();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_769210();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v9 = v23;
  sub_769440();
  if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_769500();

    v10 = v35;
LABEL_14:
    if (sub_75AF30() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_75AF30(), 1))
    {
      sub_75AF00();
      if ((*(v3 + 88))(v5, v2) == enum case for ShelfBackground.color(_:))
      {
        (*(v3 + 96))(v5, v2);

        v24 = *(sub_BD88(&unk_959640) + 48);
        v25 = sub_75EDA0();
        (*(*(v25 - 8) + 8))(v5 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_769210();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_769440();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        return v35;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }

      return v10;
    }

    __break(1u);
LABEL_23:
    sub_7694C0();
  }

  return v10;
}

void sub_688904()
{
  v0 = sub_68B888();
  if (v0)
  {
    v4 = v0;
    v1 = [v4 configuration];
    sub_BE70(0, &unk_960E50);
    v2 = sub_76A440();

    sub_68822C();
    sub_BE70(0, &unk_956240);
    isa = sub_769450().super.isa;

    [v2 setBoundarySupplementaryItems:isa];

    [v4 setConfiguration:v2];
  }
}

void sub_688A20()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_767160();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_761930();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_761920();

        sub_6BC898();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_688B34(uint64_t a1)
{
  v3 = [v1 collectionView];
  sub_685184(a1, v3);

  sub_688904();
}

uint64_t sub_688BEC(uint64_t a1)
{
  v3 = sub_BD88(&unk_960E40);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }

  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    sub_BD88(&unk_941A18);
    v12 = sub_757640();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_77B6D0;
    (*(v13 + 16))(v15 + v14, a1, v12);
    isa = sub_769450().super.isa;

    [v11 reloadItemsAtIndexPaths:isa];
  }

  v17 = sub_68B888();
  v18 = sub_757500();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_684C84(v6);

  return sub_10A2C(v6, &unk_960E40);
}

uint64_t sub_688E40(uint64_t a1)
{
  v2 = v1;
  v29 = a1;
  v28 = swift_isaMask & *v1;
  v3 = sub_757500();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = v5;
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_960E40);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v26 - v8;
  v10 = [v1 collectionView];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 collectionViewLayout];

    [v12 invalidateLayout];
  }

  v13 = sub_68B888();
  v14 = *(v4 + 16);
  v15 = v29;
  v14(v9, v29, v3);
  (*(v4 + 56))(v9, 0, 1, v3);
  sub_684C84(v9);

  sub_10A2C(v9, &unk_960E40);
  v16 = objc_opt_self();
  v17 = v27;
  v14(v27, v15, v3);
  v18 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v19 = swift_allocObject();
  v20 = v28;
  *(v19 + 16) = *(v28 + 1000);
  *(v19 + 32) = *(v20 + 1016);
  *(v19 + 40) = *(v20 + 1024);
  *(v19 + 56) = *(v20 + 1040);
  *(v19 + 64) = v2;
  (*(v4 + 32))(v19 + v18, v17, v3);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_68DD5C;
  *(v21 + 24) = v19;
  aBlock[4] = sub_47164;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1EB578;
  aBlock[3] = &unk_89C310;
  v22 = _Block_copy(aBlock);
  v23 = v2;

  [v16 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_6891FC()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = *&stru_3D8.segname[v2];
  v4 = *(&stru_3D8.reloff + v2);
  if (sub_75AF30())
  {
    if (qword_93DEF8 != -1)
    {
      swift_once();
    }

    v5 = sub_768FF0();
    sub_BE38(v5, qword_9A0418);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77DC20;
    v26 = v3;
    v6 = *(v2 + 1024);
    v27 = *(v2 + 1008);
    v29 = *(&v6 + 1);
    v30 = v4;
    v28 = type metadata accessor for BaseShelfViewController();
    v26 = v0;
    v7 = v0;
    sub_7685C0();
    sub_10A2C(&v26, &unk_93FBD0);
    sub_768540();
    swift_getErrorValue();
    v28 = v25;
    v8 = sub_B1B4(&v26);
    (*(*(v25 - 8) + 16))(v8);
    sub_7685E0();
    sub_10A2C(&v26, &unk_93FBD0);
    sub_768EA0();
  }

  else
  {
    sub_767230();
    swift_errorRetain();
    swift_unknownObjectRetain();
    v9 = sub_7671F0();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    v12 = v9;
    sub_761930();

    v13 = *&v1[v10];
    *&v1[v10] = v9;
    v24 = v12;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v26 = v17;
      *&v27 = v19;
      *(&v27 + 1) = v21;
      v28 = v23;
      LOBYTE(v29) = 0;
      sub_761920();

      sub_6BC898();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_6895E8()
{
  v1 = [v0 collectionView];
  sub_685594();

  sub_688904();
}

void sub_689650()
{
  v1 = [v0 collectionView];
  sub_6771B0(v1);

  sub_688904();
}

uint64_t sub_6896B8()
{
  v1 = swift_isaMask & *v0;
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v2 = sub_768FF0();
  sub_BE38(v2, qword_9A0418);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  v3 = *(v1 + 1016);
  v8 = *(v1 + 1000);
  v9 = v3;
  v10 = *(v1 + 1032);
  *(&v9 + 1) = type metadata accessor for BaseShelfViewController();
  *&v8 = v0;
  v4 = v0;
  sub_7685C0();
  sub_10A2C(&v8, &unk_93FBD0);
  sub_768540();
  swift_getErrorValue();
  *(&v9 + 1) = v7;
  v5 = sub_B1B4(&v8);
  (*(*(v7 - 8) + 16))(v5);
  sub_7685E0();
  sub_10A2C(&v8, &unk_93FBD0);
  sub_768EA0();
}

uint64_t sub_68992C(uint64_t a1)
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

uint64_t sub_689A7C(uint64_t a1)
{
  if (a1)
  {
    v2 = swift_isaMask & *v1;
    sub_75B5B0();
    swift_allocObject();

    *(v1 + qword_960D80) = sub_75B5A0();

    if (!*(v1 + qword_960D80))
    {
      return result;
    }

    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = *(v2 + 1000);
    *(v5 + 32) = *(v2 + 1016);
    *(v5 + 40) = *(v2 + 1024);
    *(v5 + 56) = *(v2 + 1040);
    *(v5 + 64) = v4;

    sub_75B550();
  }

  else
  {
    *(v1 + qword_960D80) = 0;
  }
}

uint64_t sub_689BFC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v28 = swift_isaMask & *v0;
  v3 = sub_768380();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7683C0();
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_7683E0();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  aBlock[0] = *(v0 + qword_960D48);
  swift_unknownObjectRetain();
  sub_75CA70();
  v13 = *&stru_3D8.segname[v2 & v1];
  v14 = *&stru_3D8.segname[(v2 & v1) + 8];
  sub_75D370();
  swift_unknownObjectRelease();
  if (*(*(v0 + qword_960D50) + 112))
  {

    sub_75F4E0();
  }

  sub_68D518();
  sub_BE70(0, &qword_940340);
  v25 = sub_769970();
  sub_7683D0();
  sub_75CA80();
  sub_768450();
  v26 = *(v7 + 8);
  v15 = v27;
  v26(v9, v27);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  v18 = v28;
  *(v17 + 32) = *(v28 + 1016);
  *(v17 + 40) = *(v18 + 1024);
  *(v17 + 56) = *(v18 + 1040);
  *(v17 + 64) = v16;
  aBlock[4] = sub_68DC08;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_89C270;
  v19 = _Block_copy(aBlock);

  v20 = v29;
  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_68DC1C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_1A93C4(&qword_9406F0, &qword_940350);
  v21 = v32;
  v22 = v34;
  sub_76A5A0();
  v23 = v25;
  sub_769930();
  _Block_release(v19);

  (*(v33 + 8))(v21, v22);
  (*(v30 + 8))(v20, v31);
  return (v26)(v12, v15);
}

void sub_68A0DC()
{
  v1 = v0;
  v16 = *(&stru_3D8.size + (swift_isaMask & *v0));
  v17.receiver = v0;
  v17.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v2 = *(v0 + qword_960D78);
  if (v2)
  {
    sub_BE70(0, &unk_960E30);
    type metadata accessor for FlowPreviewing();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = v2;
    v5 = [objc_allocWithZone(ObjCClassFromMetadata) initWithDelegate:v4];
    v6 = [v1 collectionView];
    if (!v6)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v7 = v6;
    [v6 addInteraction:v5];
  }

  v8 = [v1 collectionView];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = sub_68A350();
  [v9 setCollectionViewLayout:v10];

  sub_75DB60();
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setAlwaysBounceVertical:1];
  }

  v13 = [v1 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 setPrefetchDataSource:v1];
  }

  v15 = [v1 collectionView];
  sub_5AFC2C(v15);
}

id sub_68A350()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  sub_68822C();
  sub_BE70(0, &unk_956240);
  isa = sub_769450().super.isa;

  [v4 setBoundarySupplementaryItems:isa];

  v6 = type metadata accessor for BaseCollectionCompositionalLayout();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = *(v3 + 1000);
  *(v8 + 32) = *&stru_3D8.segname[(v2 & v1) + 16];
  *(v8 + 40) = *(v3 + 1024);
  *(v8 + 56) = *(&stru_3D8.reloff + (v2 & v1));
  *(v8 + 64) = v7;
  v9 = objc_allocWithZone(v6);
  v13[4] = sub_68DBBC;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_507AD4;
  v13[3] = &unk_89C1F8;
  v10 = _Block_copy(v13);

  v11 = [v9 initWithSectionProvider:v10 configuration:v4];

  _Block_release(v10);

  return v11;
}

void sub_68A574(void *a1)
{
  v1 = a1;
  sub_68A0DC();
}

uint64_t sub_68A5BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomeFullyVisible");
  if (*(*&v0[qword_960D50] + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75EBB0();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();
}

void sub_68A728(void *a1)
{
  v1 = a1;
  sub_68A5BC();
}

id sub_68A770()
{
  v1 = swift_isaMask & *v0;
  v2 = sub_7572A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 1016);
  v9[0] = *(v1 + 1000);
  v9[1] = v6;
  v9[2] = *(v1 + 1032);
  v7 = type metadata accessor for BaseShelfViewController();
  v10.receiver = v0;
  v10.super_class = v7;
  result = objc_msgSendSuper2(&v10, "as_viewWillBecomeFullyVisible");
  if (*(v0 + qword_960D80))
  {

    sub_757290();
    sub_75B560();

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_68A8DC(void *a1)
{
  v1 = a1;
  sub_68A770();
}

id sub_68A924(char a1)
{
  v3 = swift_isaMask & *v1;
  v4 = sub_7572A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 1016);
  v11[0] = *(v3 + 1000);
  v11[1] = v8;
  v11[2] = *(v3 + 1032);
  v9 = type metadata accessor for BaseShelfViewController();
  v12.receiver = v1;
  v12.super_class = v9;
  result = objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  if (*(v1 + qword_960D80))
  {

    sub_757290();
    sub_75B560();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_68AA98(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_68A924(a3);
}

uint64_t sub_68AAEC(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_7572A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&stru_3D8.segname[(v5 & v4) + 16];
  v12 = *(&stru_3D8.reloff + (v5 & v4));
  v16 = *(v6 + 1000);
  v17 = v16;
  v18 = v11;
  v15 = *(v6 + 1024);
  v19 = v15;
  v20 = v12;
  v13 = type metadata accessor for BaseShelfViewController();
  v21.receiver = v2;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1);
  if (sub_75EB70())
  {
    sub_757290();
    sub_757270();
    (*(v8 + 8))(v10, v7);
    sub_75CAA0();
  }

  if (*(*(v2 + qword_960D50) + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75EBB0();
  sub_75B3F0();
}

void sub_68AD40(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_68AAEC(a3);
}

uint64_t sub_68AD94()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  v3 = sub_7572A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 1016);
  v10[0] = *(v2 + 1000);
  v10[1] = v7;
  v10[2] = *(v2 + 1032);
  v8 = type metadata accessor for BaseShelfViewController();
  v11.receiver = v1;
  v11.super_class = v8;
  objc_msgSendSuper2(&v11, "as_viewWillBecomePartiallyVisible");
  if (*(*&v1[qword_960D50] + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  if (*&v1[qword_960D80])
  {

    sub_757290();
    sub_75B590();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_68AF78(void *a1)
{
  v1 = a1;
  sub_68AD94();
}

uint64_t sub_68AFC0(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_7572A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_768D60();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&qword_940CB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = *&stru_3D8.segname[(v5 & v4) + 16];
  v16 = *(&stru_3D8.reloff + (v5 & v4));
  v22 = *(v6 + 1000);
  v23 = v22;
  v24 = v15;
  v21 = *(v6 + 1024);
  v25 = v21;
  v26 = v16;
  v17 = type metadata accessor for BaseShelfViewController();
  v27.receiver = v2;
  v27.super_class = v17;
  objc_msgSendSuper2(&v27, "viewWillDisappear:", a1 & 1);
  if (sub_75EB70())
  {
    sub_768D50();
    sub_757290();
    sub_757270();
    (*(v8 + 8))(v10, v7);
    sub_75CAC0();
    v18 = sub_75CAD0();
    (*(*(v18 - 8) + 56))(v14, 0, 1, v18);
    sub_75CAB0();
  }

  if (*(v2 + qword_960D68) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    v19 = v23;
    sub_761070();
  }

  if (*(*(v2 + qword_960D50) + 112))
  {

    sub_75F510();
  }

  sub_75B430();
  sub_75B410();
  sub_75B3F0();

  sub_75B410();
  sub_75B390();

  if (*(v2 + qword_960D80))
  {

    sub_757290();
    sub_75B590();

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void sub_68B3A0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_68AFC0(a3);
}

void sub_68B3F4()
{
  v1 = *&stru_3D8.segname[swift_isaMask & *v0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  if (*(v0 + qword_960D68) == 1)
  {
    sub_761120();
    sub_768900();
    sub_768ED0();
    sub_761070();
  }
}

void sub_68B4E8(void *a1)
{
  v1 = a1;
  sub_68B3F4();
}

void sub_68B530(uint64_t a1)
{
  v4 = *&stru_3D8.segname[swift_isaMask & *v1];
  v5 = *&stru_3D8.segname[(swift_isaMask & *v1) + 16];
  v6 = *(&stru_3D8.offset + (swift_isaMask & *v1));
  v7.receiver = v1;
  v7.super_class = type metadata accessor for BaseShelfViewController();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1, v4, v5, v6);
  if ([v1 isViewLoaded])
  {
    sub_688904();
    v3 = [v1 collectionView];
    sub_6856BC(v3);
  }
}