uint64_t sub_1002A39F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933250);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002A3A68()
{
  result = qword_100930378;
  if (!qword_100930378)
  {
    sub_100745FF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930378);
  }

  return result;
}

uint64_t sub_1002A3AC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A3B18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1002A3B50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  *&v59 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - v6;
  v8 = sub_10000C518(&qword_100930360);
  __chkstk_darwin(v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  *&v0[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v0[v10], 1, 1, v11);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_100750624();
  sub_1002A2D40();
  sub_1007512E4();
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
  v13 = enum case for PrivacyTypeStyle.productPage(_:);
  v14 = sub_100745FF4();
  (*(*(v14 - 8) + 104))(&v1[v12], v13, v14);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separatorView] = 0;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separator;
  v16 = sub_100751374();
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_iconView] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_100921258 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  v18 = sub_10000D0FC(v17, qword_100981440);
  v19 = *(v17 - 8);
  v57 = *(v19 + 16);
  v57(v7, v18, v17);
  v56 = *(v19 + 56);
  v56(v7, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v55 = *(v3 + 104);
  v55(v59, enum case for DirectionalTextAlignment.none(_:), v2);
  v21 = sub_100745C84();
  v54 = v2;
  v22 = v21;
  v23 = objc_allocWithZone(v21);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100921268 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v17, qword_100981470);
  v57(v7, v24, v17);
  v56(v7, 0, 1, v17);
  v55(v59, v20, v54);
  v25 = objc_allocWithZone(v22);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel] = sub_100745C74();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categoryViews] = _swiftEmptyArrayStorage;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v60, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:0];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = [v26 contentView];
  sub_100016C60(0, &qword_100923500);
  v30 = sub_100753E04();
  [v29 setBackgroundColor:v30];

  v31 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  v32 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView];
  v33 = sub_100753E04();
  [v32 setBackgroundColor:v33];

  v34 = [v26 contentView];
  [v34 addSubview:*&v26[v31]];

  v35 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_iconView;
  v36 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_iconView];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  sub_100743224();

  v40 = qword_1009207B0;
  v41 = *&v26[v35];
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = qword_1009302D8;
  sub_1007432D4();

  [*&v26[v31] addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel;
  v44 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_titleLabel];
  sub_100745C34();

  [*&v26[v31] addSubview:*&v26[v43]];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel;
  v46 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_detailLabel];
  sub_100745C34();

  v47 = *&v26[v45];
  v48 = sub_100753DF4();
  [v47 setTextColor:v48];

  [*&v26[v31] addSubview:*&v26[v45]];
  sub_1002A0934();
  v49 = [objc_opt_self() defaultCenter];
  [v49 addObserver:v26 selector:"lowMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  sub_10000C518(&unk_1009249D0);
  v50 = swift_allocObject();
  v59 = xmmword_1007A5A00;
  *(v50 + 16) = xmmword_1007A5A00;
  *(v50 + 32) = sub_100751624();
  *(v50 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D44();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = v59;
  *(v51 + 32) = sub_1007519E4();
  *(v51 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v26;
}

void sub_1002A446C()
{
  v1 = sub_10000C518(&qword_100930360);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_contentContainerView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_itemLayoutContext;
  v4 = sub_1007469A4();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_shadowView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_roundedCornerView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_artwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories) = _swiftEmptyArrayStorage;
  type metadata accessor for PrivacyCategoryView();
  sub_100750624();
  sub_1002A2D40();
  sub_1007512E4();
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_style;
  v6 = enum case for PrivacyTypeStyle.productPage(_:);
  v7 = sub_100745FF4();
  (*(*(v7 - 8) + 104))(v0 + v5, v6, v7);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separatorView) = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_separator;
  v9 = sub_100751374();
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  sub_100754644();
  __break(1u);
}

void sub_1002A46C8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    v8 = [v2 contentView];
    [v8 addSubview:v7];
  }

LABEL_4:
}

void sub_1002A478C()
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

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }

  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView];
  if (v6)
  {
    v7 = v6;
    [v0 bounds];
    [v7 setFrame:?];
  }
}

id sub_1002A4A40(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_itemLayoutContext;
  v4 = sub_1007469A4();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productTapToRateView] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension44GenericProductReviewActionCollectionViewCell_productReviewActionsView] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1002A4B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewActionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewActionCollectionViewCell()
{
  result = qword_1009303A8;
  if (!qword_1009303A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A4C1C()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002A4CB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100748024();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1002ABA1C(&qword_100930468, &type metadata accessor for ComponentDecoration), v7 = sub_100752FA4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1002ABA1C(&qword_100930470, &type metadata accessor for ComponentDecoration);
      v15 = sub_100753014();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1002A4ED0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_100754474();
  }

  else if (*(a2 + 16) && (sub_100016C60(0, &unk_100929820), v5 = sub_100753FB4(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_100753FC4();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1002A4FE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100742F54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1002ABA1C(&qword_100925BC0, &type metadata accessor for PageFacets.Facet.Option), v7 = sub_100752FA4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1002ABA1C(&qword_100925BC8, &type metadata accessor for PageFacets.Facet.Option);
      v15 = sub_100753014();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1002A5200(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1002ABA1C(&qword_100947C40, &type metadata accessor for IndexPath), v7 = sub_100752FA4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1002ABA1C(&qword_100927EA0, &type metadata accessor for IndexPath);
      v15 = sub_100753014();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1002A5418(uint64_t a1, uint64_t a2)
{
  v3 = sub_10074E984();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1002ABA1C(&qword_10092B4F8, &type metadata accessor for Shelf.ContentType), v7 = sub_100752FA4(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1002ABA1C(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
      v15 = sub_100753014();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1002A5630(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_100753094(), sub_100754834(), sub_100753174(), v3 = sub_100754884(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_100753094();
      v9 = v8;
      if (v7 == sub_100753094() && v9 == v10)
      {
        break;
      }

      v12 = sub_100754754();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

char *sub_1002A5784(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = v66 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView;
  sub_1007433C4();
  *&v4[v17] = sub_1007431D4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView] = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel;
  v73 = sub_100745C84();
  *&v5[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v69 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel;
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100981968);
  v21 = *(v19 - 8);
  v70 = *(v21 + 16);
  v70(v16, v20, v19);
  v23 = *(v21 + 56);
  v22 = v21 + 56;
  v72 = v23;
  v23(v16, 0, 1, v19);
  v24 = enum case for DirectionalTextAlignment.none(_:);
  v26 = *(v11 + 104);
  v25 = v11 + 104;
  v71 = v26;
  v26(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v27 = objc_allocWithZone(v73);
  *&v5[v69] = sub_100745C74();
  v69 = v10;
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerButton;
  v29 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v28] = sub_100154454(0);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v19, qword_100980A38);
  v70(v16, v31, v19);
  v72(v16, 0, 1, v19);
  v71(v13, v24, v69);
  v32 = objc_allocWithZone(v73);
  *&v5[v30] = sub_100745C74();
  v33 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabelPresenter];
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerDisplayProperties] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkPresenter] = 0;
  v67 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v34 = v25;
  v35 = v24;
  if (qword_100921420 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v19, qword_100981998);
  v70(v16, v36, v19);
  v37 = v72;
  v72(v16, 0, 1, v19);
  v66[2] = v22;
  v38 = v69;
  v39 = v71;
  v71(v13, v35, v69);
  v40 = v73;
  v41 = objc_allocWithZone(v73);
  v66[1] = v34;
  *&v5[v67] = sub_100745C74();
  v70 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v37(v16, 1, 1, v19);
  v39(v13, v35, v38);
  v42 = objc_allocWithZone(v40);
  *(v70 + v5) = sub_100745C74();
  v43 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_type;
  v44 = enum case for AppShowcaseType.large(_:);
  v45 = sub_100742384();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___lockupViews] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews] = 0;
  v74.receiver = v5;
  v74.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v74, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v51 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel;
  [*&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel] setNumberOfLines:1];
  v52 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel;
  v53 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel];
  sub_100016C60(0, &qword_100923500);
  v54 = v53;
  v55 = sub_100753DF4();
  [v54 setTextColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView]];
  [v50 addSubview:*&v50[v51]];
  [v50 addSubview:*&v50[v52]];
  v56 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v57 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 secondaryLabelColor];
  [v59 setTextColor:v60];

  [*&v50[v56] setHidden:1];
  [*&v50[v56] setAlpha:0.0];
  [v50 addSubview:*&v50[v56]];
  v61 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v62 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v63 = [v58 labelColor];
  [v62 setTextColor:v63];

  [*&v50[v61] setHidden:1];
  [*&v50[v61] setAlpha:0.0];
  [v50 addSubview:*&v50[v61]];
  [v50 addSubview:*&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerButton]];
  v64 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel;
  [*&v50[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v50[v64] setText:0];
  [*&v50[v64] setHidden:1];
  [v50 addSubview:*&v50[v64]];

  return v50;
}

void sub_1002A600C(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (!v4)
  {
    v8 = a1;
    v6 = a1;
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = a1;
  [v4 removeFromSuperview];
  v6 = *&v1[v3];
  if (v6)
  {
LABEL_3:
    v7 = v6;
    [v1 addSubview:v7];
  }

LABEL_4:
}

id sub_1002A60B8()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = sub_100742384();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  __chkstk_darwin(v13);
  v58 = &v54 - v14;
  __chkstk_darwin(v15);
  v55 = &v54 - v16;
  __chkstk_darwin(v17);
  v57 = &v54 - v18;
  __chkstk_darwin(v19);
  v21 = &v54 - v20;
  __chkstk_darwin(v22);
  v24 = &v54 - v23;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  v26 = v7[2];
  v72 = v25;
  v73 = v7 + 2;
  v71 = v26;
  v26(v24, &v1[v25], v6);
  v27 = v7[13];
  v64 = enum case for AppShowcaseType.smallAlignedLeft(_:);
  v27(v21);
  sub_1002ABA1C(&qword_100930460, &type metadata accessor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v76 != v74 || (v28 = 0, v77 != v75))
  {
    v28 = (sub_100754754() & 1) == 0;
  }

  v29 = v7[1];
  v29(v21, v6);
  v70 = v29;
  v29(v24, v6);
  v30 = v7;

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel] setTextAlignment:v28];
  v56 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel];
  [v56 setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel] setTextAlignment:v28];
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel] setTextAlignment:v28];
  v59 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  [v59 setTextAlignment:v28];
  v31 = v57;
  v32 = v71;
  v71(v57, &v1[v72], v6);
  v33 = v55;
  v32(v55, v31, v6);
  v67 = v7[11];
  v68 = v7 + 11;
  v34 = v67(v33, v6);
  v66 = enum case for AppShowcaseType.large(_:);
  if (v34 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100921408 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    v36 = sub_10000D0FC(v35, qword_100981950);
    v37 = v61;
    (*(*(v35 - 8) + 16))(v61, v36, v35);
  }

  else if (v34 == enum case for AppShowcaseType.small(_:) || v34 == v64)
  {
    v37 = v61;
    if (qword_100921410 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    v39 = sub_10000D0FC(v35, qword_100981968);
    (*(*(v35 - 8) + 16))(v37, v39, v35);
  }

  else
  {
    v37 = v61;
    if (qword_100921410 != -1)
    {
      swift_once();
    }

    v35 = sub_100750534();
    v38 = sub_10000D0FC(v35, qword_100981968);
    (*(*(v35 - 8) + 16))(v37, v38, v35);
    v70(v31, v6);
    v31 = v33;
  }

  v70(v31, v6);
  sub_100750534();
  v40 = *(v35 - 8);
  v61 = *(v40 + 56);
  (v61)(v37, 0, 1, v35);
  sub_100745BA4();
  v41 = v58;
  v71(v58, &v1[v72], v6);
  v42 = v60;
  (v30[4])(v60, v41, v6);
  v43 = v67(v42, v6);
  v69 = v1;
  if (v43 == v66)
  {
    v44 = 2;
    v46 = v62;
    v45 = v63;
  }

  else
  {
    v44 = 1;
    v46 = v62;
    v45 = v63;
    if (v43 != enum case for AppShowcaseType.small(_:) && v43 != v64)
    {
      (v70)(v42, v6, 1);
      v44 = 1;
    }
  }

  [v56 setNumberOfLines:v44];
  v47 = v71;
  v71(v46, &v69[v72], v6);
  v48 = v65;
  v47(v65, v46, v6);
  v49 = v67(v48, v6);
  if (v49 == v66)
  {
    if (qword_100921428 != -1)
    {
      swift_once();
    }

    v50 = qword_1009819B0;
LABEL_33:
    v52 = sub_10000D0FC(v35, v50);
    (*(v40 + 16))(v45, v52, v35);
    goto LABEL_34;
  }

  if (v49 == enum case for AppShowcaseType.small(_:) || v49 == v64)
  {
    if (qword_100921410 != -1)
    {
      swift_once();
    }

    v50 = qword_100981968;
    goto LABEL_33;
  }

  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v51 = sub_10000D0FC(v35, qword_100981968);
  (*(v40 + 16))(v45, v51, v35);
  v70(v46, v6);
  v46 = v65;
LABEL_34:
  v70(v46, v6);
  (v61)(v45, 0, 1, v35);
  sub_100745BA4();
  return [v69 setNeedsLayout];
}

uint64_t sub_1002A6A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a3;
  v117 = a2;
  v114 = a4;
  v125 = sub_100750B04();
  __chkstk_darwin(v125);
  v113 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = &v100 - v7;
  __chkstk_darwin(v8);
  v111 = &v100 - v9;
  __chkstk_darwin(v10);
  v110 = &v100 - v11;
  __chkstk_darwin(v12);
  v109 = &v100 - v13;
  v14 = sub_100750304();
  v126 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v17 - 8);
  v104 = &v100 - v18;
  v101 = sub_10074C3E4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10000C518(&unk_100925560);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v100 - v21;
  v124 = sub_1007479B4();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v100 - v26;
  v28 = sub_100742384();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v120 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v116 = &v100 - v32;
  v34 = __chkstk_darwin(v33);
  v36 = &v100 - v35;
  v37 = *(v29 + 16);
  v118 = a1;
  v115 = v29 + 16;
  v108 = v37;
  (v37)(&v100 - v35, a1, v28, v34);
  v119 = v29;
  v38 = *(v29 + 88);
  v107 = (v29 + 88);
  v106 = v38;
  v39 = v38(v36, v28);
  v105 = enum case for AppShowcaseType.large(_:);
  if (v39 != enum case for AppShowcaseType.large(_:) && v39 != enum case for AppShowcaseType.small(_:) && v39 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (*(v119 + 8))(v36, v28);
  }

  v40 = [v122 traitCollection];
  v41 = sub_100753804();
  v121 = v27;
  if (v41)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v42 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v42 = qword_10093FF58;
  }

  v43 = v124;
  v44 = sub_10000D0FC(v124, v42);
  v45 = v123;
  (*(v123 + 16))(v24, v44, v43);

  v46 = *(v45 + 32);
  v47 = v121;
  v46(v121, v24, v43);
  if (v117)
  {
    v48 = v100;
    v49 = v20;
    v50 = v101;
    (*(v100 + 104))(v49, enum case for OfferButtonSubtitlePosition.below(_:), v101);
    (*(v48 + 56))(v104, 1, 1, v50);
    sub_1002ABA1C(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);

    sub_10074A9C4();
    sub_100747984();

    (*(v102 + 8))(v22, v103);
  }

  else
  {
    sub_100747964();
    sub_100747994();
  }

  v51 = v116;
  v52 = v118;
  v53 = v108;
  v108(v116, v118, v28);
  v54 = v120;
  v53(v120, v52, v28);
  v55 = v106(v54, v28);
  if (v55 == v105)
  {
    (*(v119 + 8))(v51, v28);
    *v16 = UIFontTextStyleFootnote;
    v56 = v126;
    v57 = *(v126 + 104);
    LODWORD(v106) = enum case for FontSource.textStyle(_:);
    v122 = v57;
    v116 = (v126 + 104);
    (v57)(v16);
    v140[3] = v125;
    v140[4] = &protocol witness table for StaticDimension;
    sub_10000D134(v140);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v58 = sub_10000D134(&v137);
    v59 = *(v56 + 16);
    v117 = v56 + 16;
    v59(v58, v16, v14);
    v60 = UIFontTextStyleFootnote;
    sub_100750B14();
    v61 = *(v56 + 8);
    v126 = v56 + 8;
    v108 = v61;
    (v61)(v16, v14);
    if (qword_100921408 != -1)
    {
      swift_once();
    }

    v62 = sub_100750534();
    v120 = sub_10000D0FC(v62, qword_100981950);
    v63 = *(v62 - 8);
    v64 = *(v63 + 16);
    v65 = v63 + 16;
    v64(v16, v120, v62);
    v66 = enum case for FontSource.useCase(_:);
    (v122)(v16, enum case for FontSource.useCase(_:), v14);
    v138 = v14;
    v139 = &protocol witness table for FontSource;
    v67 = sub_10000D134(&v137);
    v59(v67, v16, v14);
    sub_100750B14();
    v68 = v108;
    (v108)(v16, v14);
    v69 = v120;
    v118 = v62;
    v120 = v64;
    v115 = v65;
    v64(v16, v69, v62);
    LODWORD(v119) = v66;
    (v122)(v16, v66, v14);
    v138 = v125;
    v139 = &protocol witness table for StaticDimension;
    sub_10000D134(&v137);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v70 = sub_10000D134(&v134);
    v107 = v59;
    v59(v70, v16, v14);
    sub_100750B14();
    v68(v16, v14);
    if (qword_100921410 != -1)
    {
      swift_once();
    }

    v71 = v118;
    v72 = sub_10000D0FC(v118, qword_100981968);
    v73 = v120;
    (v120)(v16, v72, v71);
    v74 = v119;
    (v122)(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v75 = sub_10000D134(&v134);
    v76 = v107;
    v107(v75, v16, v14);
    sub_100750B14();
    v77 = v108;
    (v108)(v16, v14);
    v73(v16, v72, v71);
    v78 = v122;
    (v122)(v16, v74, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v79 = sub_10000D134(&v134);
    v76(v79, v16, v14);
    sub_100750B14();
    v77(v16, v14);
    if (qword_100921418 != -1)
    {
      swift_once();
    }

    v80 = v118;
    v81 = sub_10000D0FC(v118, qword_100981980);
    (v120)(v16, v81, v80);
    v78(v16, v119, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v82 = sub_10000D134(&v134);
    v76(v82, v16, v14);
    sub_100750B14();
    v77(v16, v14);
    *v16 = UIFontTextStyleBody;
    v78(v16, v106, v14);
    v135 = v14;
    v136 = &protocol witness table for FontSource;
    v83 = sub_10000D134(&v134);
    v76(v83, v16, v14);
    v84 = UIFontTextStyleBody;
    sub_100750B14();
    v77(v16, v14);
    if (qword_100921420 != -1)
    {
      swift_once();
    }

    v85 = v118;
    v106 = sub_10000D0FC(v118, qword_100981998);
    v86 = v120;
    (v120)(v16, v106, v85);
    v78(v16, v119, v14);
    v87 = v125;
    v135 = v125;
    v136 = &protocol witness table for StaticDimension;
    sub_10000D134(&v134);
    v132 = v14;
    v133 = &protocol witness table for FontSource;
    v88 = sub_10000D134(&v131);
    v89 = v107;
    v107(v88, v16, v14);
    sub_100750B14();
    v90 = v108;
    (v108)(v16, v14);
    v86(v16, v106, v85);
    v91 = v119;
    v78(v16, v119, v14);
    v132 = v87;
    v133 = &protocol witness table for StaticDimension;
    sub_10000D134(&v131);
    v129 = v14;
    v130 = &protocol witness table for FontSource;
    v92 = sub_10000D134(&v128);
    v89(v92, v16, v14);
    sub_100750B14();
    v90(v16, v14);
    if (qword_100921428 != -1)
    {
      swift_once();
    }

    v93 = v118;
    v94 = sub_10000D0FC(v118, qword_1009819B0);
    (v120)(v16, v94, v93);
    (v122)(v16, v91, v14);
    v129 = v125;
    v130 = &protocol witness table for StaticDimension;
    sub_10000D134(&v128);
    v127[3] = v14;
    v127[4] = &protocol witness table for FontSource;
    v95 = sub_10000D134(v127);
    v89(v95, v16, v14);
    sub_100750B14();
    v90(v16, v14);
    sub_100742754();
    return (*(v123 + 8))(v121, v124);
  }

  else
  {
    v97 = v55;
    v98 = enum case for AppShowcaseType.small(_:);
    sub_1002A7D08(v114);
    v99 = *(v119 + 8);
    v99(v51, v28);
    result = (*(v123 + 8))(v47, v124);
    if (v97 != v98 && v97 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      return (v99)(v120, v28);
    }
  }

  return result;
}

uint64_t sub_1002A7D08@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = sub_100750304();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_100750B04();
  __chkstk_darwin(v50);
  v59 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = v47 - v7;
  __chkstk_darwin(v8);
  v57 = v47 - v9;
  __chkstk_darwin(v10);
  v56 = v47 - v11;
  __chkstk_darwin(v12);
  v55 = v47 - v13;
  v14 = sub_100742384();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, enum case for AppShowcaseType.smallAlignedLeft(_:), v14, v16);
  sub_1002ABA1C(&qword_100930460, &type metadata accessor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v78[0] == v75[0] && v78[1] == v75[1])
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_100754754();
  }

  (*(v15 + 8))(v18, v14);

  v54 = sub_1007507D4();
  v78[3] = v54;
  v78[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v78);
  sub_1007507C4();
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100981968);
  v21 = *(v19 - 8);
  v22 = *(v21 + 16);
  v61 = v21 + 16;
  v62 = v19;
  v22(v4, v20, v19);
  v60 = enum case for FontSource.useCase(_:);
  v52 = v2[13];
  v52(v4);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v23 = sub_10000D134(v75);
  v24 = v2 + 2;
  v65 = v2[2];
  v65(v23, v4, v1);
  sub_100750B14();
  v64 = v2[1];
  v64(v4, v1);
  v76 = v54;
  v77 = &protocol witness table for ZeroDimension;
  sub_10000D134(v75);
  sub_1007507C4();
  v22(v4, v20, v19);
  v25 = v60;
  v26 = v52;
  (v52)(v4, v60, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v72);
  v65(v27, v4, v1);
  sub_100750B14();
  v64(v4, v1);
  v48 = v20;
  v63 = v22;
  v22(v4, v20, v62);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v28 = sub_10000D134(v72);
  v65(v28, v4, v1);
  sub_100750B14();
  v53 = v2 + 1;
  v64(v4, v1);
  if (qword_100921418 != -1)
  {
    swift_once();
  }

  v29 = v62;
  v30 = sub_10000D0FC(v62, qword_100981980);
  v63(v4, v30, v29);
  v26(v4, v25, v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v72);
  v32 = v65;
  v65(v31, v4, v1);
  sub_100750B14();
  v33 = v64;
  v64(v4, v1);
  *v4 = UIFontTextStyleBody;
  v26(v4, enum case for FontSource.textStyle(_:), v1);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v72);
  v32(v34, v4, v1);
  v35 = UIFontTextStyleBody;
  sub_100750B14();
  v33(v4, v1);
  v47[1] = v24;
  v36 = v60;
  if (qword_100921420 != -1)
  {
    swift_once();
  }

  v37 = v62;
  v38 = sub_10000D0FC(v62, qword_100981998);
  v63(v4, v38, v37);
  v39 = v36;
  v40 = v52;
  (v52)(v4, v39, v1);
  v41 = v50;
  v73 = v50;
  v74 = &protocol witness table for StaticDimension;
  sub_10000D134(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v42 = sub_10000D134(v69);
  v43 = v65;
  v65(v42, v4, v1);
  sub_100750B14();
  v44 = v64;
  v64(v4, v1);
  v63(v4, v48, v37);
  (v40)(v4, v60, v1);
  v70 = v41;
  v71 = &protocol witness table for StaticDimension;
  sub_10000D134(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_10000D134(v66);
  v43(v45, v4, v1);
  sub_100750B14();
  v44(v4, v1);
  v67 = v54;
  v68 = &protocol witness table for ZeroDimension;
  sub_10000D134(v66);
  sub_1007507C4();
  return sub_100742754();
}

uint64_t sub_1002A8738()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100750354();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100742384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742764();
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742784();
  v44 = *(v11 - 8);
  v45 = v11;
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v43 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76.receiver = v0;
  v76.super_class = ObjectType;
  v47 = ObjectType;
  objc_msgSendSuper2(&v76, "layoutSubviews", v12);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v14], v4);
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerDisplayProperties];

  v42 = v10;
  sub_1002A6A38(v7, v15, v0, v10);

  (*(v5 + 8))(v7, v4);
  v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView];
  v74 = sub_1007433C4();
  v75 = &protocol witness table for UIView;
  v41 = v16;
  v73 = v16;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v18 = *&v0[v17];
  if (v18)
  {
    v19 = sub_1007441E4();
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v69 = 0;
    v70 = 0;
  }

  v68 = v18;
  v71 = v19;
  v72 = v20;
  v40 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel];
  v21 = v40;
  v22 = sub_100745C84();
  v66 = v22;
  v67 = &protocol witness table for UILabel;
  v64 = &protocol witness table for UILabel;
  v65 = v21;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel];
  v63 = v22;
  v62 = v23;
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerButton];
  v60 = type metadata accessor for OfferButton();
  v61 = &protocol witness table for UIView;
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel];
  v58 = &protocol witness table for UILabel;
  v59 = v24;
  v57 = v22;
  v55 = &protocol witness table for UILabel;
  v56 = v25;
  v26 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v54 = v22;
  v52 = &protocol witness table for UILabel;
  v53 = v26;
  v27 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v51 = v22;
  v50 = v27;
  v28 = v41;
  v29 = v18;
  v30 = v40;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v43;
  sub_100742774();
  sub_1007477B4();
  v37 = v46;
  sub_100742744();
  (*(v48 + 8))(v37, v49);
  return (*(v44 + 8))(v36, v45);
}

double sub_1002A8BD4()
{
  v1 = sub_100742384();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100742764();
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742784();
  v42 = *(v8 - 8);
  v43 = v8;
  __chkstk_darwin(v8);
  v41 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_type;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v10], v1);
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerDisplayProperties];

  v40 = v7;
  sub_1002A6A38(v4, v11, v0, v7);

  (*(v2 + 8))(v4, v1);
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView];
  v68 = sub_1007433C4();
  v69 = &protocol witness table for UIView;
  v39 = v12;
  v67 = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView;
  swift_beginAccess();
  v14 = *&v0[v13];
  if (v14)
  {
    v15 = sub_1007441E4();
    v16 = &protocol witness table for UIView;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v63 = 0;
    v64 = 0;
  }

  v62 = v14;
  v65 = v15;
  v66 = v16;
  v38 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel];
  v17 = v38;
  v18 = sub_100745C84();
  v60 = v18;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v17;
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel];
  v57 = v18;
  v56 = v19;
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerButton];
  v54 = type metadata accessor for OfferButton();
  v55 = &protocol witness table for UIView;
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel];
  v52 = &protocol witness table for UILabel;
  v53 = v20;
  v51 = v18;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v48 = v18;
  v46 = &protocol witness table for UILabel;
  v47 = v22;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v45 = v18;
  v44 = v23;
  v24 = v39;
  v25 = v14;
  v26 = v38;
  v27 = v19;
  v28 = v20;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v41;
  sub_100742774();
  sub_1002ABA1C(&qword_100930458, &type metadata accessor for AppShowcaseLockupViewLayout);
  v33 = v43;
  sub_100750404();
  v35 = v34;
  (*(v42 + 8))(v32, v33);
  return v35;
}

double sub_1002A9024(uint64_t a1, void *a2)
{
  v140 = a2;
  v3 = sub_100742764();
  __chkstk_darwin(v3 - 8);
  v125 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100742784();
  v127 = *(v5 - 8);
  v128 = v5;
  __chkstk_darwin(v5);
  v126 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007455E4();
  v109 = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin(v7);
  v108 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v107 - v10;
  v11 = sub_1007479B4();
  v138 = *(v11 - 8);
  v139 = v11;
  __chkstk_darwin(v11);
  v120 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v137 = &v107 - v14;
  v136 = sub_100750534();
  v133 = *(v136 - 8);
  __chkstk_darwin(v136);
  v134 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10074CD14();
  v16 = *(v141 - 8);
  __chkstk_darwin(v141);
  v121 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v107 - v19;
  __chkstk_darwin(v20);
  v130 = &v107 - v21;
  v22 = sub_100742384();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v124 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v118 = &v107 - v26;
  __chkstk_darwin(v27);
  v117 = &v107 - v28;
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  __chkstk_darwin(v35);
  v37 = &v107 - v36;
  __chkstk_darwin(v38);
  v40 = &v107 - v39;
  v143 = a1;
  sub_1007428F4();
  v115 = *(v23 + 32);
  v116 = v23 + 32;
  v115(v37, v40, v22);
  v144 = v23;
  v42 = v23 + 88;
  v41 = *(v23 + 88);
  v43 = v41(v37, v22);
  v135 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:) || v43 == enum case for AppShowcaseType.small(_:))
  {
    v44 = v16;
  }

  else
  {
    v44 = v16;
    if (v43 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v144 + 8))(v37, v22);
    }
  }

  v45 = sub_100750F34();
  swift_allocObject();
  v123 = sub_100750F14();
  v142 = v22;
  sub_100742914();
  v122 = sub_10074EF34();
  v113 = v46;

  v47 = v142;
  sub_1007428F4();
  (*(v144 + 16))(v31, v34, v47);
  v48 = v41(v31, v47);
  v49 = v136;
  v114 = v41;
  v112 = v42;
  if (v48 == v135)
  {
    v50 = v134;
    if (qword_100921408 != -1)
    {
      swift_once();
    }

    v51 = qword_100981950;
LABEL_18:
    v56 = sub_10000D0FC(v49, v51);
    v55 = v133;
    (*(v133 + 16))(v50, v56, v49);
    v129 = *(v144 + 8);
    v129(v34, v47);
    goto LABEL_19;
  }

  v50 = v134;
  if (v48 == enum case for AppShowcaseType.small(_:) || v48 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100921410 != -1)
    {
      swift_once();
    }

    v51 = qword_100981968;
    goto LABEL_18;
  }

  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v52 = sub_10000D0FC(v49, qword_100981968);
  v53 = v133;
  (*(v133 + 16))(v50, v52, v49);
  v54 = *(v144 + 8);
  v54(v34, v47);
  v129 = v54;
  v54(v31, v47);
  v50 = v134;
  v55 = v53;
LABEL_19:
  v57 = sub_100016C60(0, &qword_100923AB0);
  v58 = v140;
  v59 = [v140 traitCollection];
  sub_100753C14();

  (*(v55 + 8))(v50, v49);
  v60 = sub_10074F3F4();
  v158[3] = v60;
  v134 = sub_1002ABA1C(&qword_10092AC70, &type metadata accessor for Feature);
  v158[4] = v134;
  v61 = sub_10000D134(v158);
  v62 = *(v60 - 8);
  v63 = *(v62 + 104);
  LODWORD(v133) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v131 = v62 + 104;
  v132 = v63;
  v63(v61);
  sub_10074FC74();
  sub_10000C620(v158);
  v64 = v130;
  sub_10074CD04();
  sub_10074CCE4();
  v65 = *(v44 + 8);
  v122 = v44 + 8;
  v130 = v65;
  (v65)(v64, v141);
  v111 = sub_1007428E4();
  v66 = v49;
  if (qword_100921410 != -1)
  {
    swift_once();
    v66 = v49;
  }

  sub_10000D0FC(v66, qword_100981968);
  v67 = [v58 traitCollection];
  v113 = v57;
  sub_100753C14();

  v68 = v117;
  sub_1007428F4();
  v69 = v118;
  v70 = v68;
  v71 = v142;
  v115(v118, v70, v142);
  v72 = v114(v69, v71);
  if (v72 == v135 || v72 == enum case for AppShowcaseType.small(_:))
  {
    v73 = v140;
  }

  else
  {
    v73 = v140;
    if (v72 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v69, v71);
    }
  }

  v157[3] = v60;
  v157[4] = v134;
  v74 = sub_10000D134(v157);
  v132(v74, v133, v60);
  sub_10074FC74();
  sub_10000C620(v157);
  v75 = v119;
  sub_10074CD04();
  sub_10074CCE4();
  (v130)(v75, v141);
  v76 = [v73 traitCollection];
  if (sub_100753804())
  {
    v77 = v136;
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v78 = qword_10093FF40;
  }

  else
  {
    v77 = v136;
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v78 = qword_10093FF58;
  }

  v79 = v139;
  v80 = sub_10000D0FC(v139, v78);
  v81 = v138;
  v82 = v120;
  (*(v138 + 16))(v120, v80, v79);

  (*(v81 + 32))(v137, v82, v79);
  sub_100747964();
  sub_100747994();
  swift_allocObject();
  v140 = sub_100750F14();
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v77, qword_100980A38);
  v83 = [v73 traitCollection];
  sub_100753C14();

  v155 = v60;
  v156 = v134;
  v84 = sub_10000D134(v154);
  v132(v84, v133, v60);
  sub_10074FC74();
  sub_10000C620(v154);
  v85 = v121;
  sub_10074CD04();
  sub_10074CCE4();
  (v130)(v85, v141);
  v86 = v143;
  sub_100742914();
  v87 = sub_10074EF04();

  if (v87)
  {
    v141 = v45;
    v88 = v73;
    v89 = v107;
    sub_100749ED4();
    v90 = v108;
    v91 = v109;
    v92 = v110;
    (*(v109 + 104))(v108, enum case for OfferLabelStyle.preorder(_:), v110);
    v93 = sub_1007455D4();
    v94 = *(v91 + 8);
    v94(v90, v92);
    v94(v89, v92);
    if (v93)
    {
      sub_10000C888(v154, v155);
      v86 = v143;
      sub_1007503B4();

      v73 = v88;
      v45 = v141;
      goto LABEL_40;
    }

    v73 = v88;
    v45 = v141;
  }

  sub_10000C888(v154, v155);
  sub_1007503B4();
LABEL_40:
  v95 = sub_1002AB0F8(v86);
  v96 = v142;
  if (v95)
  {
    swift_allocObject();
    v97 = sub_100750F14();
  }

  else
  {
    v97 = 0;
  }

  v98 = v124;
  sub_1007428F4();
  sub_100742914();
  v99 = sub_10074EF04();

  sub_1002A6A38(v98, v99, v73, v125);

  v129(v98, v96);
  v153[14] = &protocol witness table for LayoutViewPlaceholder;
  v153[13] = v45;
  v153[10] = v123;
  if (v97)
  {
    v100 = &protocol witness table for LayoutViewPlaceholder;
    v101 = v45;
  }

  else
  {
    v101 = 0;
    v100 = 0;
    v153[7] = 0;
    v153[6] = 0;
  }

  v153[5] = v97;
  v153[8] = v101;
  v153[9] = v100;
  sub_10000C824(v158, v153);
  sub_10000C824(v157, &v152);
  v151[8] = v45;
  v151[9] = &protocol witness table for LayoutViewPlaceholder;
  v151[5] = v140;
  sub_10000C824(v154, v151);
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;

  v102 = v126;
  sub_100742774();
  sub_1002ABA1C(&qword_100930458, &type metadata accessor for AppShowcaseLockupViewLayout);
  v103 = v128;
  sub_100750404();
  v105 = v104;

  (*(v127 + 8))(v102, v103);
  (*(v138 + 8))(v137, v139);
  sub_10000C620(v157);
  sub_10000C620(v158);
  sub_10000C620(v154);
  return v105;
}

id sub_1002AA120(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v42 = sub_1007441C4();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100750304();
  v39 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_100750B04();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_10074F7B4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002AB410(a1, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000C8CC(v15, &qword_10093F5C0);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    result = *&v2[v20];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v22 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView;
    swift_beginAccess();
    v23 = *&v2[v22];
    if (v23 || ((*(v17 + 56))(v12, 1, 1, v16), v38 = UIFontTextStyleFootnote, *v7 = UIFontTextStyleFootnote, v24 = v39, (*(v39 + 104))(v7, enum case for FontSource.textStyle(_:), v5), v47 = v5, v48 = &protocol witness table for FontSource, v25 = sub_10000D134(v46), (*(v24 + 16))(v25, v7, v5), v26 = v38, sub_100750B14(), (*(v24 + 8))(v7, v5), (*(v40 + 104))(v44, enum case for WordmarkView.Alignment.center(_:), v42), v27 = v43, v47 = v43, v48 = &protocol witness table for StaticDimension, v28 = sub_10000D134(v46), v29 = v41, (*(v41 + 16))(v28, v9, v27), v30 = objc_allocWithZone(sub_1007441E4()), v31 = v2, v32 = sub_1007441B4(), (*(v29 + 8))(v9, v27), v33 = v32, v2 = v31, sub_1002A600C(v33), (v23 = *&v31[v22]) != 0))
    {
      [v23 setTintColor:v45];
      v34 = *&v2[v22];
      if (v34)
      {
        [v34 setHidden:0];
      }
    }

    swift_beginAccess();
    v35 = *&v2[v22];
    if (v35)
    {
      swift_endAccess();
      v36 = v35;
      v37 = [v2 traitCollection];
      sub_1007441A4();

      return (*(v17 + 8))(v19, v16);
    }

    else
    {
      (*(v17 + 8))(v19, v16);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1002AA714(uint64_t *a1, void *a2, void *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A7210;
    v9 = *(v3 + *a2);
    v10 = *(v3 + *a3);
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    *(v3 + v4) = v6;
    v11 = v9;
    v12 = v10;
  }

  return v6;
}

void sub_1002AA7C0(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_1002AA714(&OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___lockupViews, &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel, &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel);
    v5 = &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews;
    v6 = &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
    v7 = &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  }

  else
  {
    if (([*(v2 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_1002AA714(&OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews, &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel, &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel);
    v5 = &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___lockupViews;
    v6 = &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel;
    v7 = &OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel;
  }

  v8 = sub_1002AA714(v5, v6, v7);
  v9 = v8;
  if ((a2 & 1) == 0)
  {
    if (v4 >> 62)
    {
      v15 = sub_100754664();
    }

    else
    {
      v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_100754574();
        }

        else
        {
          if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_39;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v9 >> 62)
    {
      v20 = sub_100754664();
      if (v20)
      {
LABEL_30:
        v4 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v21 = sub_100754574();
          }

          else
          {
            if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v21 = *(v9 + 8 * v4 + 32);
          }

          v22 = v21;
          v23 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_42;
          }

          [v21 setAlpha:1.0];
          [v22 setHidden:0];

          ++v4;
        }

        while (v23 != v20);
      }
    }

    else
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_30;
      }
    }

    return;
  }

  if (v8 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v11 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = sub_100754574();
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      [v12 setHidden:0];

      ++v11;
      if (v14 == i)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

LABEL_45:
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = v4;
  *(v25 + 24) = v9;
  v33 = sub_1001F74AC;
  v34 = v25;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000CF7B0;
  v32 = &unk_10086F278;
  v26 = _Block_copy(&v29);

  v27 = swift_allocObject();
  *(v27 + 16) = v4;
  v33 = sub_1001F7504;
  v34 = v27;
  v29 = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_100144DD8;
  v32 = &unk_10086F2C8;
  v28 = _Block_copy(&v29);

  [v24 animateWithDuration:4 delay:v26 options:v28 animations:0.33 completion:0.0];
  _Block_release(v28);
  _Block_release(v26);
}

uint64_t type metadata accessor for AppShowcaseLockupView()
{
  result = qword_100930448;
  if (!qword_100930448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AADF0()
{
  result = sub_100742384();
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

uint64_t sub_1002AAF00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_1002AAFBC()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel];
  v2 = sub_100753064();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel];
  v4 = sub_100753064();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_1002AB068()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002AB0A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002AB0C0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002AB0F8(uint64_t a1)
{
  v20 = sub_100748024();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100742384();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v19 = a1;
  sub_1007428F4();
  (*(v6 + 104))(v8, enum case for AppShowcaseType.large(_:), v5);
  sub_1002ABA1C(&qword_100930460, &type metadata accessor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v23 == v21 && v24 == v22)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);

LABEL_5:
    sub_100742914();
    v16 = sub_10074EDD4();

    v17 = v20;
    (*(v2 + 104))(v4, enum case for ComponentDecoration.arcade(_:), v20);
    v15 = sub_1002A4CB8(v4, v16);

    (*(v2 + 8))(v4, v17);
    return v15 & 1;
  }

  v13 = sub_100754754();
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

uint64_t sub_1002AB410(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093F5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002AB480()
{
  v1 = v0;
  v43 = sub_10074AB44();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView;
  sub_1007433C4();
  *(v0 + v8) = sub_1007431D4();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_wordmarkView) = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_titleLabel;
  v42 = sub_100745C84();
  *(v1 + v9) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_descriptionLabel;
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981968);
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
  *(v1 + v10) = sub_100745C74();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerButton;
  v19 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v18) = sub_100154454(0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabel;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v11, qword_100980A38);
  v39(v7, v21, v11);
  v14(v7, 0, 1, v11);
  v40(v4, v16, v43);
  v22 = objc_allocWithZone(v42);
  *(v1 + v20) = sub_100745C74();
  v23 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerLabelPresenter);
  *v23 = 0u;
  v23[1] = 0u;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_offerDisplayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkPresenter) = 0;
  v37 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkTitleLabel;
  v38 = v1;
  if (qword_100921420 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v11, qword_100981998);
  v39(v7, v24, v11);
  v14(v7, 0, 1, v11);
  v25 = v43;
  LODWORD(v39) = v16;
  v26 = v40;
  v40(v4, v16, v43);
  v36 = v14;
  v27 = v42;
  v28 = objc_allocWithZone(v42);
  v29 = sub_100745C74();
  v30 = v7;
  v31 = v38;
  *(v38 + v37) = v29;
  v37 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_crossLinkSubtitleLabel;
  v36(v30, 1, 1, v11);
  v26(v4, v39, v25);
  v32 = objc_allocWithZone(v27);
  *(v31 + v37) = sub_100745C74();
  v33 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_type;
  v34 = enum case for AppShowcaseType.large(_:);
  v35 = sub_100742384();
  (*(*(v35 - 8) + 104))(v31 + v33, v34, v35);
  *(v31 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___lockupViews) = 0;
  *(v31 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView____lazy_storage___crossLinkViews) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002ABA1C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002ABA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_iconView;
  *&v5[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = &v5[OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_continueCallback];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = &v5[OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_manageCallback];
  *v13 = a3;
  *(v13 + 1) = a4;

  v20._object = 0x8000000100774D90;
  v20._countAndFlagsBits = 0xD00000000000002BLL;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  sub_1007458B4(v20, v22);
  v21._countAndFlagsBits = 0xD00000000000002CLL;
  v21._object = 0x8000000100774DC0;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_1007458B4(v21, v23);
  v14 = sub_100753064();

  v15 = sub_100753064();

  v19.receiver = v5;
  v19.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v19, "initWithTitle:detailText:icon:contentLayout:", v14, v15, 0, 2);

  v17 = v16;
  [v17 setModalInPresentation:1];

  return v17;
}

void sub_1002ABC08()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100752AC4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100743B04();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "viewDidLoad", v9);
  v12 = [objc_opt_self() configurationWithPointSize:54.0];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_iconView];
  v25 = v12;
  [v13 setPreferredSymbolConfiguration:?];
  (*(v8 + 104))(v11, enum case for SystemImage.locationSquareFill(_:), v7);
  v14 = sub_100743AE4();
  (*(v8 + 8))(v11, v7);
  [v13 setImage:v14];

  v15 = [v1 headerView];
  v16 = [v15 customIconContainerView];

  if (v16)
  {
    [v16 addSubview:v13];
  }

  v17 = [objc_opt_self() boldButton];
  v31._countAndFlagsBits = 0xD00000000000002ELL;
  v31._object = 0x8000000100774E30;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_1007458B4(v31, v33);
  v18 = sub_100753064();

  [v17 setTitle:v18 forState:0];

  [v17 addTarget:v1 action:"didTapContinue" forControlEvents:64];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_100752A14();
  sub_1000277BC(&v26);
  sub_1000277BC(&v28);
  sub_100753C74();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v20 = [v1 buttonTray];
  [v20 addButton:v17];

  v21 = [objc_opt_self() linkButton];
  v32._object = 0x8000000100774E60;
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_1007458B4(v32, v34);
  v22 = sub_100753064();

  [v21 setTitle:v22 forState:0];

  [v21 addTarget:v1 action:"didTapManage" forControlEvents:64];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_100752A14();
  sub_1000277BC(&v26);
  sub_1000277BC(&v28);
  sub_100753C74();
  v19(v6, v3);
  v23 = [v1 buttonTray];
  [v23 addButton:v21];
}

uint64_t sub_1002AC124()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLayoutSubviews", v9);
  sub_1002AC3D4();
  sub_1000A7FA0();
  v12 = sub_100753774();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1002AC978;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10086F318;
  v14 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v11, v7);
}

void sub_1002AC3D4()
{
  v1 = [v0 headerView];
  v8 = [v1 customIconContainerView];

  if (v8)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_iconView];
    [v2 sizeToFit];
    [v8 bounds];
    MidX = CGRectGetMidX(v10);
    [v2 frame];
    v4 = MidX - CGRectGetWidth(v11) * 0.5;
    [v8 bounds];
    MidY = CGRectGetMidY(v12);
    [v2 frame];
    v6 = MidY - CGRectGetHeight(v13) * 0.5;
    [v2 frame];
    Width = CGRectGetWidth(v14);
    [v2 frame];
    [v2 setFrame:{v4, v6, Width, CGRectGetHeight(v15)}];
  }
}

void sub_1002AC544()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  MidX = 0.0;
  if (Strong && (v2 = Strong, v3 = [Strong headerView], v2, v4 = objc_msgSend(v3, "customIconContainerView"), v3, v4))
  {
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MidX = CGRectGetMidX(v28);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  swift_beginAccess();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
    if (v13)
    {
      return;
    }

    goto LABEL_12;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension39OnboardingLocationPrivacyViewController_iconView);

  [v16 frame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v29.origin.x = v18;
  v29.origin.y = v20;
  v29.size.width = v22;
  v29.size.height = v24;
  if (MidX == CGRectGetMidX(v29))
  {
    v25 = v13;
  }

  else
  {
    v25 = 1;
  }

  if (v25 == 1)
  {
LABEL_12:
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      sub_1002AC3D4();
    }
  }
}

uint64_t sub_1002AC940()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002AC980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1002AC998(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_separatorView] = v10;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_separatorView];
  sub_100016C60(0, &qword_100923500);
  v15 = v14;
  v16 = sub_100753DB4();
  [v15 setBackgroundColor:v16];

  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_productTapToRateView]];

  return v11;
}

id sub_1002ACC1C()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  CGRectGetMinX(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  CGRectGetMinY(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  CGRectGetWidth(v20);
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_separatorView];
  sub_100753B24();
  [v11 setFrame:?];
  if (([v11 isHidden] & 1) == 0)
  {
    sub_100753B14();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension34ProductTapToRateCollectionViewCell_productTapToRateView] setFrame:{v4, v6, v8, v10}];
}

id sub_1002ACECC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002ACF70()
{
  v0 = sub_100748604();
  sub_100039C50(v0, qword_10097EDD8);
  sub_10000D0FC(v0, qword_10097EDD8);
  v2[3] = sub_10000C518(&unk_100923180);
  v2[4] = sub_10002DDC8(&qword_1009231B0, &unk_100923180);
  sub_10000D134(v2);
  sub_10000C518(&unk_100923AE0);
  sub_100743484();
  return sub_1007485F4();
}

uint64_t sub_1002AD078()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753DF4();
  qword_1009304F0 = result;
  return result;
}

char *sub_1002AD0BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v62 - v13;
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v63 = v4;
  v64 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v15, qword_100980CF0);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v65 = objc_opt_self();
  v22 = [v65 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_10025F574(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100016B4C(v14, v11, &unk_100928A40);
  v26 = v25;
  sub_100745BA4();

  sub_10000C8CC(v14, &unk_100928A40);
  v27 = *(v16 + 8);
  v66 = v15;
  v27(v18, v15);

  v28 = v63;
  *&v63[v64] = v26;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel;
  sub_100745C84();
  *&v28[v29] = sub_100745C64();
  v30 = &v28[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = sub_100744654();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v68.receiver = v28;
  v68.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_backgroundView];
  v39 = [v65 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_100260550();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  *v49 = 0;
  *(v49 + 1) = 0;
  v51 = v48;
  sub_1000164A8(v50);
  [*&v51[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v52 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel;
  v53 = qword_1009207D0;
  v54 = *&v34[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel];
  if (v53 != -1)
  {
    swift_once();
  }

  [v54 setTextColor:qword_1009304F0];

  v55 = *&v34[v52];
  sub_100016C60(0, &qword_100923AB0);
  v56 = qword_100921190;
  v57 = v55;
  if (v56 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v66, qword_1009811E8);
  v58 = [v34 traitCollection];

  v59 = sub_100753C14();
  [v57 setFont:v59];

  [*&v34[v52] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v52]];
  sub_10000C518(&unk_1009249D0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1007A5A00;
  *(v60 + 32) = sub_1007519E4();
  *(v60 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1002AD86C()
{
  v1 = sub_10000C518(&qword_1009305B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_100744654();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitle + 8];
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitle];
  v18 = v8;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100016B4C(&v0[v11], v3, &qword_1009305B8);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10000C8CC(v3, &qword_1009305B8);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v15 = sub_1002AF1FC(v17, v9, v10, v7);

  (*(v5 + 8))(v7, v4);
  [v18 setAttributedText:v15];
}

uint64_t sub_1002ADB6C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100748604();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_100748624();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = sub_1007537D4();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer];
  sub_1007477B4();
  [v17 setFrame:{sub_10010FD98(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_1009207C8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v3, qword_10097EDD8);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  sub_1007485E4();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  sub_100750434();
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel];
  v34 = sub_100745C84();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  sub_100748614();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_1002AF60C(&unk_1009305C0, &type metadata accessor for ReviewSummaryLayout);
  v27 = v32;
  sub_100751244();

  [v17 bounds];
  v28 = [v1 traitCollection];
  sub_100751254();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

double sub_1002AE008()
{
  v1 = v0;
  v2 = sub_100748604();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748624();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009207C8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v2, qword_10097EDD8);
  (*(v3 + 16))(v5, v10, v2);
  v16[11] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  sub_100750434();
  v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel);
  v16[4] = sub_100745C84();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v11;
  v12 = v11;
  sub_100748614();
  sub_1002AF60C(&unk_1009305C0, &type metadata accessor for ReviewSummaryLayout);
  sub_100751254();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t type metadata accessor for ReviewSummaryView()
{
  result = qword_100930548;
  if (!qword_100930548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AE3DC()
{
  sub_1002AE494();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002AE494()
{
  if (!qword_100930558)
  {
    sub_100744654();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100930558);
    }
  }
}

uint64_t sub_1002AE534(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_10000C518(&qword_100930568);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_10000C518(&qword_100930570);
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = sub_100741054();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100741034();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100741064();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100930578);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = sub_100750534();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = sub_100741084();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_100921180 != -1)
    {
      swift_once();
    }

    v29 = sub_10000D0FC(v16, qword_1009811B8);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_100921188 != -1)
    {
      swift_once();
    }

    v31 = qword_1009811D0;
  }

  else
  {
    if (qword_100921170 != -1)
    {
      swift_once();
    }

    v32 = sub_10000D0FC(v16, qword_100981188);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_100921178 != -1)
    {
      swift_once();
    }

    v31 = qword_1009811A0;
  }

  v33 = sub_10000D0FC(v16, v31);
  v30(v66, v33, v16);
  sub_100741074();
  (*(v10 + 16))(v15, v12, v9);
  sub_1002AF60C(&qword_100930580, &type metadata accessor for AttributedString.Runs);
  sub_1007534C4();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      sub_1007534F4();
      sub_1002AF60C(&qword_100930588, &type metadata accessor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = sub_100753014();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10000C8CC(v15, &qword_100930578);
        sub_100016C60(0, &qword_10092E500);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = sub_100753854();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = sub_100753514();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      sub_100753504();
      sub_100741024();
      sub_100745D94();
      sub_1002AF60C(&unk_100930590, &type metadata accessor for JetFontAttribute);
      v42 = v78;
      sub_100741044();
      (*v68)(v40, v41);
      v43 = sub_100745D84();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100016C60(0, &qword_100923AB0);
      v81 = sub_100753C14();
      sub_10002DDC8(&qword_1009305A0, &qword_100930570);
      v34 = sub_1007410B4();
      sub_100741004();
      sub_1002AF60C(&qword_1009305A8, &type metadata accessor for AttributeScopes.UIKitAttributes);
      v35 = sub_100741104();
      sub_10000C518(&qword_1009305B0);
      sub_1000168F0();
      sub_100741194();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10000C8CC(v79, &qword_100930570);
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100016C60(0, &qword_100923AB0);
    v81 = sub_100753C14();
    sub_10002DDC8(&qword_1009305A0, &qword_100930570);
    v46 = sub_1007410B4();
    sub_100741004();
    sub_1002AF60C(&qword_1009305A8, &type metadata accessor for AttributeScopes.UIKitAttributes);
    v47 = sub_100741104();
    sub_10000C518(&qword_1009305B0);
    sub_1000168F0();
    sub_100741194();
    v47(v80, 0);

    v46(v82, 0);
    sub_10000C8CC(v79, &qword_100930570);
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = sub_100754744();
  __break(1u);
  return result;
}

uint64_t sub_1002AF1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_100744654();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    return 0;
  }

  v11 = objc_allocWithZone(NSMutableAttributedString);
  v12 = sub_100753064();
  v13 = [v11 initWithString:v12];

  if (!a3)
  {
    return v13;
  }

  sub_100016C60(0, &qword_1009448C0);

  v14 = sub_100753A64();
  if (sub_10074F1D4())
  {
    v15 = sub_100743AC4();
  }

  else
  {
    if ((sub_10074F1C4() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v15 = sub_10056028C(a3, v14);
  }

  v16 = v15;

  if (!v16)
  {
LABEL_15:

    return v13;
  }

  v14 = [objc_allocWithZone(NSTextAttachment) init];
  sub_100016C60(0, &qword_100923500);
  v17 = sub_100753DF4();
  v18 = [v16 imageWithTintColor:v17];

  [v14 setImage:v18];
  (*(v8 + 16))(v10, a4, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v20 = objc_allocWithZone(NSAttributedString);
    v21 = sub_100753064();
    v22 = [v20 initWithString:v21];

    [v13 insertAttributedString:v22 atIndex:0];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 insertAttributedString:v23 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v19 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v24 = objc_allocWithZone(NSAttributedString);
    v25 = sub_100753064();
    v26 = [v24 initWithString:v25];

    [v13 appendAttributedString:v26];
    v23 = [objc_opt_self() attributedStringWithAttachment:v14];
    [v13 appendAttributedString:v23];
    goto LABEL_13;
  }

  result = sub_100754744();
  __break(1u);
  return result;
}

uint64_t sub_1002AF5C0@<X0>(uint64_t *a1@<X8>)
{
  sub_100741014();
  result = sub_100741004();
  *a1 = result;
  return result;
}

uint64_t sub_1002AF60C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002AF654()
{
  v1 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_100750534();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v7, qword_100980CF0);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_10025F574(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100016B4C(v6, v3, &unk_100928A40);
  v18 = v17;
  sub_100745BA4();

  sub_10000C8CC(v6, &unk_100928A40);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleLabel;
  sub_100745C84();
  *(v19 + v20) = sub_100745C64();
  v21 = (v19 + OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = sub_100744654();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002AFA10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

uint64_t sub_1002AFA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v98 = a3;
  v9 = sub_10074F964();
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v92 - v12;
  __chkstk_darwin(v14);
  v94 = &v92 - v15;
  __chkstk_darwin(v16);
  v93 = &v92 - v17;
  v18 = sub_10000C518(&qword_100930640);
  __chkstk_darwin(v18 - 8);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v95 = &v92 - v22;
  __chkstk_darwin(v23);
  v25 = &v92 - v24;
  *&v27 = __chkstk_darwin(v26).n128_u64[0];
  v29 = &v92 - v28;
  v101 = v6;
  [v6 bounds];
  v32 = sub_100708060(v30, v31, a1, a6);
  v97 = a1;
  v33 = sub_100747AA4();
  sub_10000C518(&qword_100930638);
  sub_1002B09B8();
  sub_100752964();
  v34 = aBlock;
  if (aBlock == 2)
  {
    v34 = sub_10074F8D4();
  }

  v96 = v9;
  v99 = v33;
  if ((v34 & v32 & 1) == 0)
  {
    v94 = v13;
    v55 = sub_10074F914();
    v56 = [a6 traitCollection];
    v57 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
    v58 = [v55 length];
    v59 = swift_allocObject();
    *(v59 + 16) = 0;
    *(v59 + 24) = v56;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    v60 = swift_allocObject();
    *(v60 + 16) = sub_100047814;
    *(v60 + 24) = v59;
    v106 = sub_1000B18A8;
    v107 = v60;
    aBlock = _NSConcreteStackBlock;
    v103 = 1107296256;
    v104 = sub_100047044;
    v105 = &unk_10086F3F8;
    v61 = _Block_copy(&aBlock);
    v62 = v56;
    v63 = v57;

    [v55 enumerateAttributesInRange:0 options:v58 usingBlock:{0x100000, v61}];

    _Block_release(v61);
    LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

    if ((v55 & 1) == 0)
    {
      v29 = v95;
      v44 = *&v101[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
      v64 = v63;
      sub_10074F974();
      v65 = v96;
      (*(v100 + 56))(v29, 0, 1, v96);
      v66 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
      v67 = v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
      v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 0;
      v68 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
      v69 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
      v70 = v64;
      [v69 setNumberOfLines:0];
      if (v67 != v44[v66])
      {
        sub_100260550();
      }

      v52 = v70;
      sub_10025FF08(v70);
      v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      sub_1002B111C(v29, v20);
      v71 = v100;
      if ((*(v100 + 48))(v20, 1, v65) != 1)
      {
        v77 = v94;
        (*(v71 + 32))(v94, v20, v65);
        v78 = v92;
        (*(v71 + 16))(v92, v77, v65);
        v79 = (*(v71 + 88))(v78, v65);
        if (v79 == enum case for Paragraph.Alignment.left(_:))
        {
          v80 = 0;
          v72 = v101;
        }

        else
        {
          v72 = v101;
          if (v79 == enum case for Paragraph.Alignment.center(_:))
          {
            v80 = 1;
          }

          else if (v79 == enum case for Paragraph.Alignment.right(_:))
          {
            v80 = 2;
          }

          else if (v79 == enum case for Paragraph.Alignment.justified(_:))
          {
            v80 = 3;
          }

          else if (v79 == enum case for Paragraph.Alignment.localized(_:))
          {
            v80 = 4;
          }

          else
          {
            (*(v71 + 8))(v78, v65);
            v80 = 0;
          }
        }

        [*&v44[v68] setTextAlignment:v80];
        (*(v71 + 8))(v94, v65);
        goto LABEL_39;
      }

      v54 = v20;
      goto LABEL_14;
    }

LABEL_45:
    __break(1u);
    return result;
  }

  v35 = sub_10074F8E4();
  v36 = [a6 traitCollection];
  v37 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v35];
  v95 = [v35 length];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = 1;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1002B1424;
  *(v39 + 24) = v38;
  v106 = sub_1002B1408;
  v107 = v39;
  aBlock = _NSConcreteStackBlock;
  v103 = 1107296256;
  v104 = sub_100047044;
  v105 = &unk_10086F498;
  v40 = _Block_copy(&aBlock);
  v41 = v36;
  v42 = v37;

  [v35 enumerateAttributesInRange:0 options:v95 usingBlock:{0x100000, v40}];

  _Block_release(v40);
  LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

  if (v35)
  {
    __break(1u);
    goto LABEL_45;
  }

  v44 = *&v101[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_bodyTextView];
  v45 = v42;
  sub_10074F974();
  v46 = v96;
  (*(v100 + 56))(v29, 0, 1, v96);
  v47 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v48 = v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
  v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 1;
  v49 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  v50 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  v51 = v45;
  [v50 setNumberOfLines:v49];
  if (v48 != v44[v47])
  {
    sub_100260550();
  }

  v52 = v51;
  sub_10025FF08(v51);
  v44[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  sub_1002B111C(v29, v25);
  v53 = v100;
  if ((*(v100 + 48))(v25, 1, v46) != 1)
  {
    v73 = v93;
    (*(v53 + 32))(v93, v25, v46);
    v74 = v94;
    (*(v53 + 16))(v94, v73, v46);
    v75 = (*(v53 + 88))(v74, v46);
    if (v75 == enum case for Paragraph.Alignment.left(_:))
    {
      v76 = 0;
      v72 = v101;
    }

    else
    {
      v72 = v101;
      if (v75 == enum case for Paragraph.Alignment.center(_:))
      {
        v76 = 1;
      }

      else if (v75 == enum case for Paragraph.Alignment.right(_:))
      {
        v76 = 2;
      }

      else if (v75 == enum case for Paragraph.Alignment.justified(_:))
      {
        v76 = 3;
      }

      else if (v75 == enum case for Paragraph.Alignment.localized(_:))
      {
        v76 = 4;
      }

      else
      {
        (*(v53 + 8))(v94, v46);
        v76 = 0;
      }
    }

    [v50 setTextAlignment:v76];
    (*(v53 + 8))(v73, v46);
    goto LABEL_39;
  }

  v54 = v25;
LABEL_14:
  sub_10000C8CC(v54, &qword_100930640);
  v72 = v101;
LABEL_39:
  [v44 setNeedsLayout];

  sub_10000C8CC(v29, &qword_100930640);
  sub_100747A94();
  sub_100744704();
  v81 = sub_1007532D4();

  v82 = v98;
  if (v81)
  {
    v83 = sub_100747A94();
    v84 = sub_100747A84();
    v85 = sub_100747A74();
    sub_100508AAC(v83, v84, v85);
  }

  v86 = sub_100747A64();
  if (v86)
  {
    v87 = *&v72[OBJC_IVAR____TtC22SubscribePageExtension36ProductDescriptionCollectionViewCell_developerLinkView];
    v88 = v86;
    sub_10074ECB4();
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    *(v89 + 24) = v88;

    sub_100745BD4();

    v90 = &v87[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_tapHandler];
    v91 = *&v87[OBJC_IVAR____TtC22SubscribePageExtension17DeveloperLinkView_tapHandler];
    *v90 = sub_1002B11CC;
    v90[1] = v89;
    sub_1000164A8(v91);
    [v87 setNeedsLayout];
  }

  [v72 setNeedsLayout];
}

uint64_t sub_1002B064C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_1002B07AC()
{
  sub_10000C518(&qword_100930638);
  sub_1002B09B8();
  sub_100752954();
  return 3;
}

uint64_t sub_1002B0824()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

unint64_t sub_1002B09B8()
{
  result = qword_1009305D8;
  if (!qword_1009305D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009305D8);
  }

  return result;
}

unint64_t sub_1002B0A10()
{
  result = qword_100930628;
  if (!qword_100930628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930628);
  }

  return result;
}

unint64_t sub_1002B0A68()
{
  result = qword_100930630;
  if (!qword_100930630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100930630);
  }

  return result;
}

uint64_t sub_1002B0ABC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10074AF74();
  __chkstk_darwin(v5 - 8);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074AF94();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930648);
  sub_1002B09B8();
  sub_100752E84();
  v9 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 2)
  {
    sub_100747AA4();
    v9 = sub_10074F8D4();
  }

  v43 = sub_100747AA4();
  if (v9)
  {
    v10 = sub_10074F8E4();
    v41 = 3;
  }

  else
  {
    v10 = sub_10074F914();
    v41 = 0;
  }

  v48 = a4;
  v11 = [a4 traitCollection];
  v12 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v10];
  v49 = [v10 length];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = v11;
  *(v13 + 32) = v12;
  *(v13 + 40) = 1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002B1424;
  *(v14 + 24) = v13;
  v59 = sub_1002B1408;
  v60 = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v58 = &unk_10086F510;
  v15 = _Block_copy(aBlock);
  v16 = v11;
  v17 = v12;

  v42 = v10;
  [v10 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v15}];

  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v20 = v17;
    v21 = sub_100747A94();
    v22 = sub_100747A84();
    v23 = sub_100747A74();
    if (sub_100747A64())
    {
      v49 = sub_10074ECB4();
      v25 = v24;
    }

    else
    {
      v49 = 0;
      v25 = 0;
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v20;
    *(v26 + 24) = v27;
    v28 = sub_100750F34();
    swift_allocObject();
    v29 = v20;
    v30 = sub_100750EF4();
    v58 = v28;
    v59 = &protocol witness table for LayoutViewPlaceholder;
    aBlock[0] = v30;
    v31 = swift_allocObject();
    v31[2] = v21;
    v31[3] = v22;
    v32 = v48;
    v31[4] = v23;
    v31[5] = v32;
    swift_allocObject();

    swift_unknownObjectRetain();
    v33 = sub_100750EF4();
    v56[3] = v28;
    v56[4] = &protocol witness table for LayoutViewPlaceholder;
    v56[0] = v33;
    v34 = type metadata accessor for DeveloperLinkView();
    v35 = swift_allocObject();
    v36 = v49;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v25;
    swift_allocObject();
    v37 = sub_100750EF4();
    v55[3] = v28;
    v55[4] = &protocol witness table for LayoutViewPlaceholder;
    v55[0] = v37;
    sub_100744704();
    LOBYTE(v34) = sub_1007532D4();

    if (v34)
    {
      sub_10000C824(v56, v53);
    }

    else
    {
      v54 = 0;
      memset(v53, 0, sizeof(v53));
    }

    sub_1007065A0(v44);
    sub_10000C824(aBlock, &v52);
    sub_10000C824(v56, &v51);
    sub_10000C824(v55, &v50);
    v38 = v45;
    sub_10074AF84();
    sub_1002B12FC(&qword_100930650, &type metadata accessor for ProductDescriptionLayout);
    v39 = v47;
    sub_100750404();

    (*(v46 + 8))(v38, v39);
    sub_10000C8CC(v53, &unk_100928A00);
    sub_10000C620(v55);
    sub_10000C620(v56);
    return sub_10000C620(aBlock);
  }

  return result;
}

uint64_t sub_1002B1104(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B111C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100930640);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B118C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002B11E4()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1002B122C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002B126C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002B12B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002B12FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v7 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v7 = -2;
  }

  if (v7 < 0)
  {
    v7 = -1;
  }

  return (v7 + 1);
}

uint64_t sub_1002B1428()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10074F654();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v2 - 8);
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  sub_10000C518(&qword_100923E90);
  sub_10074F584();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A5A00;
  sub_10001CC10();
  sub_10074F614();
  sub_10074F604();
  sub_10074F614();
  sub_10074F644();
  sub_10074F614();
  sub_10074F614();
  result = sub_10074F544();
  qword_100930658 = v6;
  return result;
}

uint64_t sub_1002B172C()
{
  result = sub_10074E514();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1002B1864(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = sub_100742964();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016B4C(v5 + v10, v15, &unk_100930240);
  if (v16)
  {
    sub_10000C824(v15, v14);
    sub_10000C8CC(v15, &unk_100930240);
    sub_10000C888(v14, v14[3]);
    (*(v7 + 104))(v9, *a1, v6);
    sub_100742974();
    (*(v7 + 8))(v9, v6);
    v11 = sub_10000C620(v14);
  }

  else
  {
    v11 = sub_10000C8CC(v15, &unk_100930240);
  }

  return a2(v11);
}

uint64_t sub_1002B1A28()
{
  v1 = v0;
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B73B0;
  swift_getWitnessTable();
  sub_10074E534();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10074E524();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1002BD0F8(&qword_100930880, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  swift_getWitnessTable();
  v5 = *&v1[qword_10097EE38];

  v6 = v1;
  v7 = v5;
  sub_10074B884();
  sub_10074E3E4();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10074E3D4();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_10074DA64();
  sub_10074B884();
  sub_10074DCF4();
  swift_allocObject();
  *(v2 + 80) = sub_10074DCE4();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10074E364();
  swift_allocObject();
  *(v2 + 96) = sub_10074E354();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10074E6D4();
  swift_allocObject();
  *(v2 + 112) = sub_10074E6C4();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10074DA64();
  sub_10074E074();
  swift_allocObject();
  *(v2 + 128) = sub_10074E064();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_100930678];
  v10 = sub_1002BD0F8(&qword_100930888, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_100930670];
  v12 = sub_1002BD0F8(&unk_100930890, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  swift_getWitnessTable();
  sub_10074E284();
  swift_allocObject();

  *(v2 + 176) = sub_10074E274();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_100930668];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10074DC04();
  swift_allocObject();

  *(v2 + 208) = sub_10074DBF4();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  swift_getWitnessTable();
  sub_10074E4A4();
  swift_allocObject();
  *(v2 + 224) = sub_10074E494();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10074D7C4();
  swift_allocObject();
  return sub_10074D7B4();
}

uint64_t sub_1002B1F88(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v34 = swift_isaMask & *v2;
  v6 = sub_100750FA4();
  __chkstk_darwin(v6 - 8);
  v7 = *((v5 & v4) + 0x238);
  v8 = *((v5 & v4) + 0x240);
  v9 = *((v5 & v4) + 0x248);
  v10 = *((v5 & v4) + 0x250);
  v11 = *((v5 & v4) + 0x258);
  v32 = *((v5 & v4) + 0x228);
  v33 = v7;
  v35 = v32;
  v36 = v7;
  v37 = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;
  v12 = sub_100749204();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - v15;
  (*(v13 + 16))(&v31 - v15, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v18 = qword_100930680;
    swift_beginAccess();
    v19 = *(v2 + v18);
    if (v19)
    {
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 2) = v32;
      v22 = v33;
      *(v21 + 3) = *(v34 + 560);
      *(v21 + 4) = v22;
      *(v21 + 5) = v8;
      *(v21 + 6) = v9;
      *(v21 + 7) = v10;
      *(v21 + 8) = v11;
      *(v21 + 9) = v20;
      v23 = &v19[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v24 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v23 = sub_1002BCA20;
      v23[1] = v21;
      v25 = v19;

      sub_1000164A8(v24);
    }

    sub_10074B824();
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v27 = *(v16 + 1);
    sub_100751094();
    swift_getWitnessTable();
    swift_errorRetain();

    sub_10001B5AC(v27);
    v28 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v28);
    sub_1000164A8(v27);
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v29 = objc_allocWithZone(sub_100750FC4());
    v30 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v30);
    swift_getWitnessTable();
    return sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1002B2580@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10097EE00;
  swift_beginAccess();
  v4 = sub_10074E514();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1002B2608(uint64_t a1)
{
  v3 = qword_10097EE00;
  swift_beginAccess();
  v4 = sub_10074E514();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1002B27AC(char a1)
{
  v2 = *(v1 + qword_10097EE50);
  *(v1 + qword_10097EE50) = a1;
  return sub_1002B6640(v2);
}

uint64_t sub_1002B27C4()
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
  sub_10074D9D4();
  sub_10000C518(&qword_100930960);
  sub_10000C518(&qword_100930968);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v6, *(&v7 + 1));
    sub_100745654();
    sub_10000C620(&v6);
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_10000C8CC(&v6, &qword_100930970);
  }

  type metadata accessor for TodayCardGridTracker();
  result = sub_1007526C4();
  v5 = v10;
  if (v10)
  {
    swift_beginAccess();
    *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002B2998(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009308D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000C518(&qword_100930828);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016B4C(a1, &v16[-1] - v7, &qword_100930828);
  v9 = sub_10000C518(&qword_100930830);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(v8, &qword_100930828);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_1007451A4();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10074E424();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000C518(&qword_100930950);
    v13 = sub_10002DDC8(&qword_100930958, &qword_100930950);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_100748A74();
  if (v17)
  {
    return sub_10000C620(v16);
  }

  return result;
}

uint64_t sub_1002B2C24()
{
  if ((*(v0 + qword_10097EE10) & 1) == 0)
  {
    return sub_10074B8A4();
  }

  return result;
}

uint64_t sub_1002B2C60()
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
  sub_10074DA64();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v4 = swift_allocObject();
  sub_10000C824(v7, v4 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_100012160(v7, v5 + 16);
  *(v4 + 56) = v5;
  sub_1002BD0F8(&qword_100927DA0, type metadata accessor for GenericPageItemSupplementaryProvider);
  return v4;
}

void *sub_1002B2DB4()
{
  v1 = v0;
  v119 = swift_isaMask & *v0;
  v2 = sub_1007457B4();
  v114 = *(v2 - 8);
  v115 = v2;
  __chkstk_darwin(v2);
  v106 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v109 = (&v101 - v5);
  v113 = sub_10000C518(&unk_10092E450);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v101 - v8;
  v9 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v9 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = sub_100747C14();
  v117 = *(v14 - 8);
  v118 = v14;
  __chkstk_darwin(v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v120 = sub_10000C518(&qword_1009262D0);
  v20 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = sub_10074C3F4();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = _swiftEmptyArrayStorage;
  sub_100749264();
  v29 = (*(v26 + 88))(v28, v25);
  v107 = v16;
  v111 = v19;
  if (v29 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v26 + 96))(v28, v25);
    sub_10000C620(v28);
    v30 = [v0 traitCollection];
    if (qword_100921718 != -1)
    {
      swift_once();
    }

    v31 = sub_100750B04();
    sub_10000D0FC(v31, qword_1009820C8);
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007A5CF0;
    *(v32 + 32) = v30;
    v33 = v30;
    v34 = sub_100751044();
    sub_100750544();
    v36 = v35;

    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:v36];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    type metadata accessor for InfiniteScrollFooterView();
    v41 = v40;
    sub_1007539C4();
    v42 = sub_100753064();

    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = v43;
    sub_100753284();
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v45 = v125;
  }

  else
  {
    (*(v26 + 8))(v28, v25);
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = qword_100930688;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (!v47)
  {
    return v45;
  }

  v48 = v47;
  sub_1007518F4();

  v49 = v120;
  v50 = sub_100751744();
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
  sub_10074DA04();
  v57 = v117;
  v56 = v118;
  if ((*(v117 + 48))(v13, 1, v118) == 1)
  {
    sub_10000C8CC(v13, &qword_100942730);
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
  sub_100747C04();
  swift_getKeyPath();
  v62 = v57;
  v63 = v109;
  v64 = v113;
  sub_1007525B4();

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

  v69 = *(sub_10000C518(&unk_100930940) + 48);
  v70 = sub_100748E34();
  (*(*(v70 - 8) + 8))(v63 + v69, v70);
  v71 = objc_opt_self();
  v72 = [v71 fractionalWidthDimension:1.0];
  v73 = [v71 absoluteDimension:2000.0];
  v74 = [objc_opt_self() sizeWithWidthDimension:v72 heightDimension:v73];

  v75 = sub_100753064();
  v76 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v74 elementKind:v75 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v76 setExtendsBoundary:0];
  v77 = v76;
  sub_100753284();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

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
    sub_1007518F4();

    v80 = v120;
    v81 = sub_100751744();
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
      sub_10074DA04();
      if ((*(v57 + 48))(v84, 1, v56) == 1)
      {
        sub_10000C8CC(v84, &qword_100942730);
      }

      else
      {
        v85 = v107;
        (*(v57 + 32))(v107, v84, v56);
        v86 = v105;
        sub_100747C04();
        swift_getKeyPath();
        v87 = v106;
        v88 = v113;
        sub_1007525B4();

        (*(v112 + 8))(v86, v88);
        v90 = v114;
        v89 = v115;
        if ((*(v114 + 88))(v87, v115) == enum case for ShelfBackground.color(_:))
        {
          (*(v90 + 96))(v87, v89);

          v91 = *(sub_10000C518(&unk_100930940) + 48);
          v92 = sub_100748E34();
          (*(*(v92 - 8) + 8))(v87 + v91, v92);
          v93 = objc_opt_self();
          v94 = [v93 fractionalWidthDimension:1.0];
          v95 = [v93 absoluteDimension:2000.0];
          v96 = [objc_opt_self() sizeWithWidthDimension:v94 heightDimension:v95];

          v97 = sub_100753064();
          v98 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v96 elementKind:v97 alignment:5 absoluteOffset:{0.0, 2000.0}];

          [v98 setExtendsBoundary:0];
          v99 = v98;
          sub_100753284();
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();

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

double sub_1002B3D00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_isaMask & *v3;
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007539C4() == a1 && v8 == a2)
  {

    goto LABEL_11;
  }

  v10 = sub_100754754();

  if (v10)
  {
LABEL_11:

    sub_1007539D4();
    *(a3 + 24) = sub_10000C518(&qword_100930928);
    *(a3 + 32) = sub_10002DDC8(&unk_100930930, &qword_100930928);
    sub_10000D134(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_100754754() & 1) != 0 || a1 == 0xD000000000000010 && 0x800000010076E340 == a2 || (sub_100754754() & 1) != 0)
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
    *(a3 + 24) = sub_10000C518(&qword_100930910);
    *(a3 + 32) = sub_10002DDC8(&unk_100930918, &qword_100930910);
    sub_10000D134(a3);
    sub_100016C60(0, &qword_10092DB20);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10074D744();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002B4110()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = sub_10000C518(&qword_1009308D8);
  __chkstk_darwin(v5 - 8);
  v47 = v33 - v6;
  v7 = sub_10000C518(&unk_1009308E0);
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
  v40 = sub_100749204();
  v10 = sub_100752884();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v41 = v33 - v11;
  v12 = sub_10000C518(&unk_100930838);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  __chkstk_darwin(v12);
  v39 = v33 - v14;
  v15 = sub_10000C518(&qword_1009262A8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  v33[1] = *(v1 + qword_10097EE08);
  sub_100749244();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1002BCD60;
  *(v19 + 24) = 0;
  sub_10000C518(&unk_1009308F0);
  *&v20 = v9;
  *(&v20 + 1) = *v35;
  *v50 = v20;
  *&v50[16] = v34;
  v51 = v38;
  v52 = v37;
  v53 = v36;
  type metadata accessor for BaseDiffableShelfViewController();
  v38 = &protocol conformance descriptor for SyncEvent<A>;
  sub_10002DDC8(&qword_1009262B0, &unk_1009308F0);
  sub_100752574();
  sub_100752584();

  sub_10000C620(v50);
  (*(v16 + 8))(v18, v15);
  sub_100749254();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002BCDC4;
  *(v21 + 24) = 0;
  v22 = sub_10000C518(&qword_100930848);
  v23 = sub_10002DDC8(&qword_100930850, &qword_100930848);
  sub_100752574();
  v24 = v39;
  v36 = v22;
  v37 = v23;
  sub_100752584();

  sub_10000C620(v50);
  (*(v49 + 8))(v24, v48);
  sub_10074B874();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002BCE28;
  *(v25 + 24) = 0;
  sub_100752F14();
  swift_getWitnessTable();
  sub_100752574();
  v26 = v41;
  sub_100752584();

  sub_10000C620(v50);
  (*(v42 + 8))(v26, v43);
  sub_1007492B4();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1002BCE8C;
  *(v27 + 24) = 0;
  sub_10000C518(&qword_100930900);
  sub_10002DDC8(&qword_100930908, &qword_100930900);
  sub_100752574();
  v28 = v44;
  sub_100752584();

  sub_10000C620(v50);
  (*(v45 + 8))(v28, v46);
  if (*(v1 + qword_100930690))
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1002BCF18;
    *(v29 + 24) = 0;

    sub_100752574();
    v30 = v47;
    sub_100752584();

    sub_10000C620(v50);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v47;
  }

  (*(v49 + 56))(v30, v31, 1, v48);
  return sub_10000C8CC(v30, &qword_1009308D8);
}

void sub_1002B4984(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v28 = sub_10000C518(&qword_1009308D0);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v8 = sub_10000C518(&qword_100930828);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_10000C518(&qword_100930830);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1002B2998(v10);
  sub_10000C8CC(v10, &qword_100930828);
  v13 = sub_1007451B4();
  v14 = qword_100930688;
  if (v13)
  {
    swift_beginAccess();
    v15 = *&v2[v14];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    sub_1007451A4();
    sub_10074CD24();
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
    sub_1007451A4();
    sub_1007451C4();
    sub_10074CD94();
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
  sub_10074E6E4();
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
    sub_100749AB4();
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

  sub_10074DA54();
  if (sub_100745194())
  {
    sub_100744294();
  }
}

uint64_t sub_1002B4DD0(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_100016B4C(a2, v5, &unk_100923520);

  sub_1002B5574(v2, v5);
  return sub_10000C8CC(&v4, &unk_100930870);
}

id sub_1002B4E50()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];

    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    return sub_10074DA54();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B4F60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28[1] = a1;
  v28[0] = swift_isaMask & *v2;
  v5 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = sub_1007469A4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v33 = v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(sub_1007417F4() - 8);
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
      sub_1002BA34C();
      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_10000C8CC(v7, &unk_100923200);
      }

      else
      {
        v20 = *v17;
        v21 = v33;
        (*v17)(v33, v7, v8);
        v20(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100254AA4(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_100254AA4(v22 > 1, v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
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

  if (!v19[2])
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
  sub_10074DA34();
  swift_getObjectType();
  sub_10074BAB4();

  return swift_unknownObjectRelease();
}

uint64_t sub_1002B5350@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  v11 = *(v2 + qword_100930670);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_100016B4C(v11 + v12, v10, &unk_100923C00);
  v13 = sub_1007417F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v7, 1, 1, v13);
  swift_beginAccess();
  sub_10003E1A0(v7, v11 + v12);
  swift_endAccess();
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {
    sub_10000C8CC(v10, &unk_100923C00);
    return sub_100016B4C(a1, a2, &unk_100923C00);
  }

  else
  {
    (*(v14 + 32))(a2, v10, v13);
    return (v15)(a2, 0, 1, v13);
  }
}

uint64_t sub_1002B5574(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - v5;
  v7 = sub_1007417F4();
  v60 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v59 = &v57 - v11;
  v12 = sub_100752294();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016B4C(a2, v93, &unk_100923520);
  if (v93[3])
  {
    sub_100016C60(0, &qword_100922300);
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
      sub_100016C60(0, &qword_100926D00);
      *v15 = sub_100753774();
      (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
      v26 = sub_1007522C4();
      v27 = *(v13 + 8);
      v13 += 8;
      v27(v15, v12);
      if (v26)
      {
        v77 = xmmword_100931330;
        v78 = xmmword_100931340;
        v79 = xmmword_100931350;
        v75 = xmmword_100931310;
        v76 = xmmword_100931320;
        v83 = v71;
        v84 = v72;
        v85 = v73;
        v81 = v69;
        v82 = v70;
        v87 = xmmword_100931310;
        v88 = xmmword_100931320;
        v90 = xmmword_100931340;
        v91 = xmmword_100931350;
        v80 = qword_100931360;
        v86 = v74;
        v92 = qword_100931360;
        v89 = xmmword_100931330;
        sub_100016B4C(&v75, &v63, &unk_1009308C0);
        xmmword_100931330 = v83;
        xmmword_100931340 = v84;
        xmmword_100931350 = v85;
        qword_100931360 = v86;
        xmmword_100931310 = v81;
        xmmword_100931320 = v82;
        sub_10000C8CC(&v87, &unk_1009308C0);
        sub_1001664D8(&v69, &v63);
        sub_1002BB944(v61, a1, v62);
        v65 = xmmword_100931330;
        v66 = xmmword_100931340;
        v67 = xmmword_100931350;
        v68 = qword_100931360;
        v63 = xmmword_100931310;
        v64 = xmmword_100931320;
        xmmword_100931310 = v75;
        xmmword_100931320 = v76;
        xmmword_100931330 = v77;
        xmmword_100931340 = v78;
        xmmword_100931350 = v79;
        qword_100931360 = v80;
        sub_10000C8CC(&v63, &unk_1009308C0);
        sub_100166534(&v69);
      }

      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
    sub_10000C8CC(v93, &unk_100923520);
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
    v32 = sub_1007532A4();

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
        result = sub_10000C8CC(&v63, &unk_1009308C0);
        __break(1u);
        return result;
      }

      v37 = v36;
      v38 = v35;
      isa = sub_100741704().super.isa;
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
        sub_100016C60(0, &qword_100926D00);
        *v15 = sub_100753774();
        (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
        v47 = sub_1007522C4();
        v48 = *(v13 + 8);
        v13 += 8;
        v48(v15, v12);
        v49 = v57;
        if (v47)
        {
          v77 = xmmword_100931330;
          v78 = xmmword_100931340;
          v79 = xmmword_100931350;
          v75 = xmmword_100931310;
          v76 = xmmword_100931320;
          v83 = v71;
          v84 = v72;
          v85 = v73;
          v81 = v69;
          v82 = v70;
          v87 = xmmword_100931310;
          v88 = xmmword_100931320;
          v90 = xmmword_100931340;
          v91 = xmmword_100931350;
          v80 = qword_100931360;
          v86 = v74;
          v92 = qword_100931360;
          v89 = xmmword_100931330;
          sub_100016B4C(&v75, &v63, &unk_1009308C0);
          xmmword_100931330 = v83;
          xmmword_100931340 = v84;
          xmmword_100931350 = v85;
          qword_100931360 = v86;
          xmmword_100931310 = v81;
          xmmword_100931320 = v82;
          sub_10000C8CC(&v87, &unk_1009308C0);
          sub_1001664D8(&v69, &v63);
          sub_1002BB944(v61, v58, v93);
          v65 = xmmword_100931330;
          v66 = xmmword_100931340;
          v67 = xmmword_100931350;
          v68 = qword_100931360;
          v63 = xmmword_100931310;
          v64 = xmmword_100931320;
          xmmword_100931310 = v75;
          xmmword_100931320 = v76;
          xmmword_100931330 = v77;
          xmmword_100931340 = v78;
          xmmword_100931350 = v79;
          qword_100931360 = v80;
          sub_10000C8CC(&v63, &unk_1009308C0);
          sub_100166534(&v69);

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

  v50 = *&v61[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v51 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v6, 1, v51) == 1)
  {
    return sub_10000C8CC(v6, &unk_100923960);
  }

  sub_1003C0E00(v58, 1, v50, v6);

  return (*(v52 + 8))(v6, v51);
}

id sub_1002B5E6C()
{
  v1 = [v0 navigationItem];

  return v1;
}

uint64_t sub_1002B5EA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for BaseShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1002BD0F8(&qword_1009308B8, type metadata accessor for BaseShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

unint64_t sub_1002B5F58@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  a1[3] = &type metadata for GenericPageGridProvider;
  result = sub_1000E1FD4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

unint64_t sub_1002B5FB0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for GenericPageShelfLayoutSpacingProvider;
  result = sub_1002BCD0C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1002B5FE4()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = type metadata accessor for GenericPageShelfSupplementaryProvider();
  v4 = *(v0 + qword_10097EE08);
  v5 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v6 = *((v2 & v1) + 0x230);
  WitnessTable = swift_getWitnessTable();
  v8 = sub_10049C448(v4, v5, v3, v6, WitnessTable);
  sub_1002BD0F8(&qword_1009308A0, type metadata accessor for GenericPageShelfSupplementaryProvider);

  return v8;
}

uint64_t sub_1002B60DC@<X0>(uint64_t *a1@<X8>)
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
  v6 = sub_10074DA44();
  v24[3] = swift_getObjectType();
  v24[0] = v6;
  v7 = sub_10074DA34();
  v25[3] = swift_getObjectType();
  v25[0] = v7;
  sub_10000C5B4(v24, v22);
  sub_10000C610(v22, v20);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v21)
  {
    v18 = v21;
    v8 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v10 = v8[2];
    v9 = v8[3];
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100254A80((v9 > 1), v10 + 1, 1, v8);
    }

    v8[2] = v10 + 1;
    *&v8[2 * v10 + 4] = v18;
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v25, v22);
  sub_10000C610(v22, v20);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v21)
  {
    v19 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100254A80(0, v8[2] + 1, 1, v8);
    }

    v12 = v8[2];
    v11 = v8[3];
    v13 = v19;
    if (v12 >= v11 >> 1)
    {
      v17 = sub_100254A80((v11 > 1), v12 + 1, 1, v8);
      v13 = v19;
      v8 = v17;
    }

    v8[2] = v12 + 1;
    *&v8[2 * v12 + 4] = v13;
  }

  swift_arrayDestroy();
  sub_10074DA64();
  v14 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_10000C824(v22, v20);

  v15 = sub_10074CB64();
  result = sub_10000C620(v22);
  a1[3] = v14;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v15;
  return result;
}

id sub_1002B6430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1002B64AC(uint64_t a1)
{
  v3 = qword_100930680;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1002B6564(uint64_t a1)
{
  v3 = qword_100930688;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1002B6640(uint64_t result)
{
  v2 = qword_10097EE50;
  if (*(v1 + qword_10097EE50) == (result & 1))
  {
    return result;
  }

  v3 = qword_1009306A8;
  if (!*(v1 + qword_10097EE50) || *(v1 + qword_1009306A8))
  {
    v4 = *(v1 + qword_1009306A8);
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
  if (*(v1 + qword_1009306A8))
  {
    sub_1002BD0F8(&qword_100930978, type metadata accessor for BarButtonItemHidingScrollObserver);
  }

  sub_100749AD4();

  v4 = *(v1 + qword_1009306A8);
  if (v4)
  {
LABEL_5:
    *(v4 + 24) = *(v1 + v2);

    sub_1003773B8();
  }

  return result;
}

void sub_1002B678C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = sub_10000C518(&unk_100930838);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = *((v3 & v2) + 0x258);
  v10 = *(v4 + 568);
  v47[0] = *(v4 + 552);
  v47[1] = v10;
  v47[2] = *(v4 + 584);
  v48 = v9;
  v11 = type metadata accessor for BaseDiffableShelfViewController();
  v49.receiver = v1;
  v49.super_class = v11;
  objc_msgSendSuper2(&v49, "viewDidLoad");
  [v1 setInstallsStandardGestureForInteractiveMovement:0];
  sub_1004955D8(0, 0, 1);
  v12 = [v1 view];
  if (!v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  sub_100016C60(0, &qword_100923500);
  v14 = sub_100753E04();
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

  swift_getWitnessTable();
  sub_10074DA24();
  (*((swift_isaMask & *v1) + 0x498))();
  sub_100749214();
  v20 = [v1 collectionView];
  if (!v20)
  {
    goto LABEL_16;
  }

  v21 = v20;
  [v20 setPrefetchDataSource:v1];

  v22 = qword_100930688;
  swift_beginAccess();
  v23 = *(v1 + v22);
  if (v23)
  {
    v46 = v5;
    v24 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
    type metadata accessor for DiffableFlowPreviewPresenter();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000C518(&qword_100930848);
    swift_allocObject();
    v26 = v23;
    v45 = v24;
    swift_retain_n();
    *(v25 + 32) = sub_100752F04();
    v44 = v26;
    swift_unknownObjectWeakAssign();
    *(v25 + 24) = v24;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1002BCA98;
    *(v27 + 24) = 0;
    sub_10002DDC8(&qword_100930850, &qword_100930848);
    sub_100752574();
    sub_100752584();

    sub_10000C620(v47);
    (*(v6 + 8))(v8, v46);
    v28 = sub_1002BD0F8(&qword_100930858, type metadata accessor for DiffableFlowPreviewPresenter);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v25;
    v30[4] = v28;

    v31 = v1;
    v32 = sub_1002BCB84(v25, v31, sub_1002BCB78, v30, v45);

    v33 = *(v31 + qword_100930698);
    *(v31 + qword_100930698) = v32;
    v34 = v32;

    *(v31 + qword_100930690) = v25;

    v35 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v34];
    v36 = [v31 collectionView];
    if (v36)
    {
      v37 = v36;
      [v36 addInteraction:v35];

      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  if (*(v1 + qword_1009306A0))
  {
    v38 = [v1 collectionView];
    sub_10074B534();
  }

  v39 = *(v1 + qword_1009306A8);
  if (v39)
  {
    v40 = *((swift_isaMask & *v1) + 0x3F8);

    v42 = v40(v41);
    v43 = *(v39 + 16);
    *(v39 + 16) = v42;
  }
}

void sub_1002B6E54(void *a1)
{
  v1 = a1;
  sub_1002B678C();
}

uint64_t sub_1002B6E9C(char a1)
{
  v2 = v1;
  v5 = *((swift_isaMask & *v2) + 0x228);
  v6 = *((swift_isaMask & *v2) + 0x238);
  v7 = *((swift_isaMask & *v2) + 0x248);
  v8 = *((swift_isaMask & *v2) + 0x258);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1 & 1, v5, v6, v7, v8);
  if ((*(v2 + qword_10097EE10) & 1) == 0)
  {
    sub_10074B8A4();
  }

  sub_100749234();
  return sub_100744254();
}

void sub_1002B6FA0(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002B6E9C(a3);
}

void sub_1002B6FF4(char a1)
{
  v2 = v1;
  v6 = *((swift_isaMask & *v2) + 0x228);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  sub_100749224();
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v4 = v6;
  sub_10074B104();
  sub_100748464();
  sub_100752754();
  if (v6)
  {
    v5 = v6;
    sub_100748444();

    v4 = v5;
  }
}

void sub_1002B714C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002B6FF4(a3);
}

void sub_1002B71A0(char a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v6 = swift_isaMask & *v2;
  v7 = sub_100752BC4();
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
  sub_100752BB4();
  sub_100749284();
  (*(v8 + 8))(v10, v7);
  if (*(v2 + qword_10097EE48) == 1)
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    v14 = *&v16[0];
    sub_10074B0D4();
  }

  sub_100748464();
  sub_100752764();
  sub_100752D34();
  v15 = *&v16[0];
  sub_100748434();
}

void sub_1002B73C4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002B71A0(a3);
}

uint64_t sub_1002B7418(char a1)
{
  v2 = v1;
  v5 = *((swift_isaMask & *v2) + 0x228);
  v6 = *((swift_isaMask & *v2) + 0x238);
  v7 = *((swift_isaMask & *v2) + 0x248);
  v8 = *((swift_isaMask & *v2) + 0x258);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1 & 1, v5, v6, v7, v8);
  sub_100749274();
  return sub_100744254();
}

void sub_1002B74F8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002B7418(a3);
}

void sub_1002B7580(void *a1)
{
  v1 = a1;
  sub_1002B7AC8(&selRef_didReceiveMemoryWarning, &protocol conformance descriptor for DiffablePagePresenter<A>, &ViewControllerPresenter.viewDidReceiveMemoryWarning());
}

uint64_t sub_1002B75FC()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3 = *((swift_isaMask & *v0) + 0x238);
  v4 = *((swift_isaMask & *v0) + 0x248);
  v5 = *((swift_isaMask & *v0) + 0x258);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v6, "as_viewWillBecomePartiallyVisible", v2, v3, v4, v5);
  return sub_1007492D4();
}

void sub_1002B76BC(void *a1)
{
  v1 = a1;
  sub_1002B75FC();
}

void sub_1002B7704()
{
  v1 = *((swift_isaMask & *v0) + 0x228);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v2, "as_viewDidBecomePartiallyVisible");
  swift_getWitnessTable();
  sub_100742AE4();
  if (*(v0 + qword_10097EE48) == 1)
  {
    sub_10074B184();
    sub_100752764();
    sub_100752D34();
    sub_10074B0D4();
  }

  sub_100744254();
  sub_100748464();
  sub_100752764();
  sub_100752D34();
  sub_100748434();
}

void sub_1002B78A4(void *a1)
{
  v1 = a1;
  sub_1002B7704();
}

void sub_1002B78EC()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v3, "as_viewWillBecomeFullyVisible");
  sub_1007492C4();
  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  sub_10074B104();
  sub_100748464();
  sub_100752754();
  if (v2)
  {
    v1 = v2;
    sub_100748444();
  }

  sub_100744254();
}

void sub_1002B7A4C(void *a1)
{
  v1 = a1;
  sub_1002B78EC();
}

uint64_t sub_1002B7AC8(SEL *a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  v8 = *((swift_isaMask & *v3) + 0x230);
  v9.receiver = v3;
  v9.super_class = type metadata accessor for BaseDiffableShelfViewController();
  objc_msgSendSuper2(&v9, *a1);
  WitnessTable = swift_getWitnessTable();
  return a3(v8, WitnessTable);
}

void sub_1002B7BB0(void *a1)
{
  v1 = a1;
  sub_1002B7AC8(&selRef_as_viewDidBecomeFullyVisible, &protocol conformance descriptor for DiffablePagePresenter<A>, &AppStoreViewControllerPresenter.viewDidBecomeFullyVisible());
}

id sub_1002B7C2C(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = swift_isaMask & *v1;
  v6 = sub_10000C518(&qword_100930828);
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

    sub_1002B27C4();
    v16 = sub_10000C518(&qword_100930830);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    sub_1002B2998(v8);
    sub_10000C8CC(v8, &qword_100930828);
    result = [v1 view];
    if (result)
    {
      v17 = result;
      [result bounds];

      swift_getWitnessTable();
      sub_10074DA54();
      return sub_1004955D8(0, 0, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1002B7EAC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1002B7C2C(a3);
}

id sub_1002B7F18(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = swift_isaMask;
  v10 = swift_isaMask & *v3;
  v11 = sub_10000C518(&qword_100930828);
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
    *&v24 = sub_1002BCA8C;
    *(&v24 + 1) = v18;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v23 = sub_1003ED3AC;
    *(&v23 + 1) = &unk_10086F8A8;
    v19 = _Block_copy(&aBlock);
    v20 = v4;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
    sub_1002B27C4();
    v21 = sub_10000C518(&qword_100930830);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    sub_1002B2998(v13);
    sub_10000C8CC(v13, &qword_100930828);
    swift_getWitnessTable();
    return sub_10074DA54();
  }

  return result;
}

void sub_1002B81C0(double a1, double a2, uint64_t a3, void *a4)
{
  v10 = *((swift_isaMask & *a4) + 0x228);
  v11 = *((swift_isaMask & *a4) + 0x238);
  v12 = *((swift_isaMask & *a4) + 0x248);
  v13 = *((swift_isaMask & *a4) + 0x258);
  type metadata accessor for BaseDiffableShelfViewController();
  sub_1004955D8(*&a1, *&a2, 0);
  v7 = [a4 collectionView];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 collectionViewLayout];

    [v9 invalidateLayout];
  }
}

void sub_1002B82DC(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1002B7F18(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_1002B835C()
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
    v10 = objc_allocWithZone(sub_10000C518(&unk_100930800));
    v11 = sub_10074CD84();
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

    sub_100751894();

    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B8558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v28 = a7;
  v29 = a8;
  v14 = sub_10000C518(&qword_100927510);
  __chkstk_darwin(v14 - 8);
  v16 = v27 - v15;
  v17 = sub_10000C518(&unk_100930810);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v27 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = qword_100930688;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (!v24)
    {

      (*(v18 + 56))(v16, 1, 1, v17);
      goto LABEL_6;
    }

    v25 = v24;
    sub_10074CD44();

    if ((*(v18 + 48))(v16, 1, v17) == 1)
    {

LABEL_6:
      sub_10000C8CC(v16, &qword_100927510);
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
    v26 = sub_10074D9A4();

    (*(v18 + 8))(v20, v17);
    return v26;
  }

  return result;
}

uint64_t sub_1002B8824()
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
  v4 = sub_10074D9B4();

  return v4;
}

id sub_1002B89C0()
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
    sub_100016C60(0, &qword_10092E460);
    isa = sub_100753294().super.isa;

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
    v18[4] = sub_1002BC5F0;
    v18[5] = v14;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1002B6430;
    v18[3] = &unk_10086F7E0;
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

uint64_t sub_1002B8C70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _UNKNOWN **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a4;
  v16 = sub_100752314();
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
  sub_10000C518(&qword_1009307F8);
  v28 = a1;
  v31 = v21;
  v32 = &off_10086F738;

  v22 = v21;
  sub_1007522F4();
  sub_100752724();

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
  v23 = sub_10074DA74();

  return v23;
}

uint64_t sub_1002B8EA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v40 = a8;
  v36 = a1;
  v14 = sub_1007457B4();
  v38 = *(v14 - 8);
  v39 = v14;
  __chkstk_darwin(v14);
  v16 = (&v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_10000C518(&unk_10092E450);
  v37 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v20 - 8);
  v22 = &v35 - v21;
  v23 = sub_100747C14();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v35 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v24 + 56))(v22, 1, 1, v23);
    return sub_10000C8CC(v22, &qword_100942730);
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
  sub_10074DA04();

  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10000C8CC(v22, &qword_100942730);
  }

  (*(v24 + 32))(v26, v22, v23);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v37 + 8))(v19, v17);
  v30 = v38;
  v29 = v39;
  if ((*(v38 + 88))(v16, v39) == enum case for ShelfBackground.color(_:))
  {
    (*(v30 + 96))(v16, v29);
    v31 = *v16;
    v32 = *(sub_10000C518(&unk_100930940) + 48);
    v33 = sub_100748E34();
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

void sub_1002B9318(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a7;
  v53 = a8;
  v51 = a6;
  v49 = sub_1007457B4();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v50 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_10000C518(&unk_10092E450);
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v44 - v14;
  v16 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_100747C14();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v54 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_1009262D0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v45 = a1;
    v28 = qword_100930688;
    swift_beginAccess();
    v29 = *&v27[v28];
    if (!v29)
    {

      return;
    }

    v30 = v29;

    sub_1007518F4();
    v31 = sub_100751744();
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
      sub_10074DA04();

      v35 = (*(v20 + 48))(v18, 1, v19);
      v36 = v54;
      if (v35 != 1)
      {
        (*(v34 + 32))(v54, v18, v19);
        sub_100747C04();
        swift_getKeyPath();
        v37 = v50;
        v38 = v47;
        sub_1007525B4();

        (*(v46 + 8))(v15, v38);
        v39 = v48;
        v40 = v49;
        if ((*(v48 + 88))(v37, v49) == enum case for ShelfBackground.color(_:))
        {
          (*(v39 + 96))(v37, v40);
          v41 = *v37;
          v42 = *(sub_10000C518(&unk_100930940) + 48);
          v43 = sub_100748E34();
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

    sub_10000C8CC(v18, &qword_100942730);
  }
}

uint64_t sub_1002B98F0(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  sub_100016B4C(a2, &v7, &unk_100923520);
  sub_100016B4C(&v6, &v4, &unk_100930870);
  v2 = v4;

  sub_1002B4DD0(v2, v5);

  sub_10000C8CC(&v6, &unk_100930870);
  return sub_10000C8CC(v5, &unk_100923520);
}

uint64_t sub_1002B99CC()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = sub_10074B834();

    if (v2)
    {
      sub_100746BF4();
    }
  }

  return result;
}

uint64_t sub_1002B9AA0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v6 = v4;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_1007469A4();
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
    sub_100747B44();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      return sub_10000C8CC(v12, &unk_100923200);
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
      sub_10074DA34();
      v22 = v21;
      ObjectType = swift_getObjectType();
      v25(v18, v16, v24, *(v6 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph), ObjectType, v22);

      swift_unknownObjectRelease();
      return (*(v14 + 8))(v16, v13);
    }
  }

  return result;
}

uint64_t sub_1002B9D88(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *, uint64_t, void, uint64_t, uint64_t))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_1002B9AA0(v14, v15, v17, a6);

  return (*(v11 + 8))(v13, v10);
}

void sub_1002B9EEC(void *a1, uint64_t a2, void (*a3)(id, char *, void *, void, uint64_t, uint64_t))
{
  v6 = swift_isaMask & *v3;
  v7 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1007469A4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = sub_100741704().super.isa;
  v25 = [a1 cellForItemAtIndexPath:isa];

  if (v25)
  {
    v24 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v23 = a3;
      v15 = v25;
      sub_100747B44();
      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_10000C8CC(v9, &unk_100923200);
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
        sub_10074DA34();
        v20 = v19;
        ObjectType = swift_getObjectType();
        v23(v15, v13, v24, *(v3 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph), ObjectType, v20);

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

uint64_t sub_1002BA240(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *, void *, void, uint64_t, uint64_t))
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = a3;
  v13 = a1;
  sub_1002B9EEC(v12, v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002BA34C()
{
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  return sub_10074D9E4();
}

uint64_t sub_1002BA440(void *a1, uint64_t a2, void *a3)
{
  sub_1007417F4();
  v5 = sub_1007532A4();
  v6 = a3;
  v7 = a1;
  sub_1002B4F60(v6, v5);
}

uint64_t sub_1002BA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v47 = a2;
  v48 = a5;
  v46 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v10 - 8);
  v40 = (&v37 - v11);
  v45 = sub_1007469A4();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_100747C14();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 1168);
  v41 = a3;
  v42 = a4;
  v21(v55, a3, a4, v18);
  sub_100016B4C(v55, &v49, &qword_100930820);
  v22 = (v9 + 552);
  v23 = (v9 + 568);
  v24 = (v9 + 584);
  if (*(&v50 + 1))
  {
    sub_100012160(&v49, &v53);
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
    sub_10074DA34();
    swift_getObjectType();
    sub_10074BAE4();
    swift_unknownObjectRelease();
    sub_10000C620(&v53);
    v26 = v37;
    v27 = v38;
    v28 = v39;
  }

  else
  {
    sub_10000C8CC(&v49, &qword_100930820);
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
  sub_10074D9F4();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000C8CC(v15, &qword_100942730);
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
    sub_10074DA44();
    swift_getObjectType();
    sub_10074BE84();
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_100012160(&v53, &v49);
      sub_10074DA34();
      swift_getObjectType();
      sub_10074BAD4();
      swift_unknownObjectRelease();
      sub_10000C620(&v49);
      (*(v17 + 8))(v20, v16);
    }

    else
    {
      (*(v17 + 8))(v20, v16);
      sub_10000C8CC(&v53, &qword_100930820);
    }
  }

  v29 = v40;
  sub_10074D9E4();
  v30 = v44;
  v31 = v45;
  v32 = (*(v44 + 48))(v29, 1, v45);
  v33 = v43;
  if (v32 == 1)
  {
    sub_10000C8CC(v55, &qword_100930820);
    v34 = &unk_100923200;
    v35 = v29;
  }

  else
  {
    (*(v30 + 32))(v43, v29, v31);
    sub_10074DA14();
    swift_getObjectType();
    sub_10074B574();
    swift_unknownObjectRelease();
    if (v54)
    {
      sub_100012160(&v53, &v49);
      sub_10074DA34();
      swift_getObjectType();
      sub_10074BAC4();
      swift_unknownObjectRelease();
      sub_10000C620(&v49);
      (*(v30 + 8))(v33, v31);
      v34 = &qword_100930820;
      v35 = v55;
    }

    else
    {
      (*(v30 + 8))(v33, v31);
      sub_10000C8CC(v55, &qword_100930820);
      v35 = &v53;
      v34 = &qword_100930820;
    }
  }

  return sub_10000C8CC(v35, v34);
}

uint64_t sub_1002BAC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a5;
  v47 = a1;
  v9 = swift_isaMask & *v6;
  v10 = sub_10000C518(&unk_100923200);
  __chkstk_darwin(v10 - 8);
  v41 = (&v38 - v11);
  v12 = sub_1007469A4();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v44 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_100747C14();
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
    sub_100012160(&v50, &v54);
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
    sub_10074DA34();
    swift_getObjectType();
    sub_10074BB14();
    swift_unknownObjectRelease();
    sub_10000C620(&v54);
    v27 = v38;
    v28 = v39;
    v29 = v40;
  }

  else
  {
    sub_10000C8CC(&v50, &qword_100930820);
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
  sub_10074D9F4();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000C8CC(v16, &qword_100942730);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    sub_10074DA44();
    swift_getObjectType();
    sub_10074BE84();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100012160(&v54, &v50);
      sub_10074DA34();
      swift_getObjectType();
      sub_10074BB04();
      swift_unknownObjectRelease();
      sub_10000C620(&v50);
      (*(v18 + 8))(v21, v17);
    }

    else
    {
      (*(v18 + 8))(v21, v17);
      sub_10000C8CC(&v54, &qword_100930820);
    }
  }

  v30 = v41;
  sub_10074D9E4();
  v32 = v45;
  v31 = v46;
  v33 = (*(v45 + 48))(v30, 1, v46);
  v34 = v44;
  if (v33 == 1)
  {
    v35 = &unk_100923200;
    v36 = v30;
  }

  else
  {
    (*(v32 + 32))(v44, v30, v31);
    sub_10074DA14();
    swift_getObjectType();
    sub_10074B574();
    swift_unknownObjectRelease();
    if (v55)
    {
      sub_100012160(&v54, &v50);
      sub_10074DA34();
      swift_getObjectType();
      sub_10074BAF4();
      swift_unknownObjectRelease();
      sub_10000C620(&v50);
      return (*(v32 + 8))(v34, v31);
    }

    (*(v32 + 8))(v34, v31);
    v35 = &qword_100930820;
    v36 = &v54;
  }

  return sub_10000C8CC(v36, v35);
}

uint64_t sub_1002BB2C4(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(id, id, uint64_t, uint64_t, char *))
{
  v11 = sub_1007417F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100753094();
  v17 = v16;
  sub_100741744();
  v18 = a3;
  v19 = a4;
  v20 = a1;
  a7(v18, v19, v15, v17, v14);

  return (*(v12 + 8))(v14, v11);
}

Class sub_1002BB410(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_10000C518(&unk_100923C00);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  if (a4)
  {
    sub_100741744();
    v13 = sub_1007417F4();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  else
  {
    v13 = sub_1007417F4();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = a3;
  v15 = a1;
  sub_1002B5350(v9, v12);

  sub_10000C8CC(v9, &unk_100923C00);
  sub_1007417F4();
  v16 = *(v13 - 8);
  v17 = (*(v16 + 48))(v12, 1, v13);
  v18 = 0;
  if (v17 != 1)
  {
    isa = sub_100741704().super.isa;
    (*(v16 + 8))(v12, v13);
    v18 = isa;
  }

  return v18;
}

void sub_1002BB61C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1002BC724();

  swift_unknownObjectRelease();
}

void sub_1002BB6BC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002BB6A0(v4);
}

void sub_1002BB740(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002BB724(v4);
}

void sub_1002BB7C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002BB7A8(v4);
}

void sub_1002BB848(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1002BB82C(v4);
}

void sub_1002BB8D4(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_1002BB8B0(v6, a4);
}

uint64_t sub_1002BB944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph);
  v10 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    result = sub_10000C8CC(v8, &unk_100923960);
    v13 = 0;
  }

  else
  {
    v13 = sub_1003C0E00(a2, 1, v9, v8);
    result = (*(v11 + 8))(v8, v10);
  }

  *a3 = v13;
  return result;
}

void sub_1002BBAB4(void *a1)
{
  v1 = a1;
  sub_1002B1824();
}

void sub_1002BBAFC(void *a1)
{
  v1 = a1;
  sub_1002B1844();
}

uint64_t sub_1002BBB44()
{

  v1 = qword_10097EE00;
  v2 = sub_10074E514();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

id sub_1002BBC9C()
{
  v2 = *((swift_isaMask & *v0) + 0x228);
  v3 = *((swift_isaMask & *v0) + 0x238);
  v4 = *((swift_isaMask & *v0) + 0x248);
  v5 = *((swift_isaMask & *v0) + 0x258);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for BaseDiffableShelfViewController();
  return objc_msgSendSuper2(&v6, "dealloc", v2, v3, v4, v5);
}

uint64_t sub_1002BBD44(uint64_t a1)
{

  v2 = qword_10097EE00;
  v3 = sub_10074E514();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
}

id sub_1002BBFAC()
{
  v1 = [v0 collectionView];

  return v1;
}

void sub_1002BBFE4(void *a1)
{
  [v1 setCollectionView:a1];
}

void (*sub_1002BC02C(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 collectionView];
  return sub_1002BC088;
}

void sub_1002BC088(id *a1)
{
  v1 = *a1;
  [a1[1] setCollectionView:?];
}

void *sub_1002BC0D0()
{
  v0 = sub_1002BC9DC();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002BC100(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002B65BC();
  return sub_10001BB78;
}

void *sub_1002BC170()
{
  v0 = sub_1002BC998();
  v1 = v0;
  return v0;
}

uint64_t (*sub_1002BC1A0(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002B6504();
  return sub_10001BB78;
}

uint64_t (*sub_1002BC218(uint64_t *a1))()
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
  *(v2 + 32) = sub_1002B2698();
  return sub_1000181A8;
}

uint64_t sub_1002BC4B4()
{
  sub_1002BC988();
}

uint64_t sub_1002BC5B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002BC624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002BC63C()
{

  return _swift_deallocObject(v0, 80, 7);
}

id sub_1002BC6F8()
{
  v0 = sub_1002BC978();

  return v0;
}

uint64_t sub_1002BC724()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = swift_isaMask & *v0;
  v4 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_100747C14();
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
  sub_10074DA04();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000C8CC(v6, &qword_100942730);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100749AA4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1002BC998()
{
  v1 = qword_100930680;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002BC9DC()
{
  v1 = qword_100930688;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002BCA54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t (*sub_1002BCA98(void *a1))(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002BCCF0;
}

uint64_t sub_1002BCAFC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002BCB38()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002BCB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002BD0F8(&qword_100930858, type metadata accessor for DiffableFlowPreviewPresenter);
  v9 = sub_10000C518(&unk_100930860);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_100925588];
  *&v10[qword_100925588 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_100925580];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_100925598] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1002BCCB8()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002BCD0C()
{
  result = qword_1009308A8;
  if (!qword_1009308A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009308A8);
  }

  return result;
}

void (*sub_1002BCD60(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002BD05C;
}

uint64_t (*sub_1002BCDC4(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002BD188;
}

uint64_t (*sub_1002BCE28(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002BD000;
}

id (*sub_1002BCE8C(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002BCFDC;
}

uint64_t (*sub_1002BCF18(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002BD188;
}

uint64_t (*sub_1002BCF7C())(void *a1)
{
  v1 = (*(v0 + 16))();
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_1002BCCB0;
}

uint64_t sub_1002BD0F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002BD19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10092E450);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_10074E8B4();
  sub_1002BD5E0(&qword_1009309E0, &type metadata accessor for Badge);
  result = sub_1007468B4();
  v9 = v13;
  if (v13)
  {
    v10 = sub_100746954();
    swift_getKeyPath();
    sub_100746914();

    swift_getKeyPath();
    sub_1007525B4();

    (*(v5 + 8))(v7, v4);
    v11 = *(v13 + 16);

    sub_100394A70(v9, v10, 0, v11, 0, a2);
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView] setHidden:1];
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1002BD3C8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1002BD424(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002BD4EC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_10038D69C();
}

uint64_t sub_1002BD540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1002BD5E0(&qword_1009309E8, type metadata accessor for BadgeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1002BD5E0(unint64_t *a1, void (*a2)(uint64_t))
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

UIColor sub_1002BD628()
{
  sub_10000D198();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100753EC4(v2, v1).super.isa;
  qword_10097EE60 = result.super.isa;
  return result;
}

UIColor sub_1002BD6CC()
{
  sub_10000D198();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  result.super.isa = sub_100753EC4(v5, v6).super.isa;
  qword_10097EE68 = result.super.isa;
  return result;
}

id sub_1002BD7A0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC22SubscribePageExtension16AdBackgroundView_isBorderHidden] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_1009207E0;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_10097EE60];
  v13 = [v12 layer];
  if (qword_1009207E8 != -1)
  {
    swift_once();
  }

  v14 = [qword_10097EE68 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  [v15 setBorderWidth:1.0];

  [v12 setUserInteractionEnabled:0];
  sub_10000C518(&unk_1009249D0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007A5A00;
  *(v16 + 32) = sub_100751624();
  *(v16 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v12;
}

void sub_1002BDA88(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC22SubscribePageExtension16AdBackgroundView_isBorderHidden) & 1) == 0)
  {
    v2 = [a1 layer];
    if (qword_1009207E8 != -1)
    {
      swift_once();
    }

    v3 = [qword_10097EE68 CGColor];
    [v2 setBorderColor:v3];
  }
}

unint64_t sub_1002BDB54()
{
  sub_100754534(34);

  sub_100741784();
  v1._countAndFlagsBits = sub_100754714();
  sub_1007531B4(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1007531B4(v2);
  sub_100741774();
  v3._countAndFlagsBits = sub_100754714();
  sub_1007531B4(v3);

  return 0xD00000000000001DLL;
}

void sub_1002BDC48(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_1002BDCF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_collectionViewTableLayout;
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_collectionViewTableLayout) = 0;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 50) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_hideAllButton) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_doneButtonItem) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_flowPreviewing) = 0;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_presenter) = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_artworkLoader) = v25;
  sub_10000C518(&qword_100930B98);
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_shelfDataSource) = sub_100478468(v9);
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
  v12 = v10;

  if (v12)
  {

    v13 = sub_10062DFAC(v12, a2);

    swift_unknownObjectWeakAssign();
    sub_1002C2804(&qword_100930BA0, v14, type metadata accessor for PurchasesViewController);
    v15 = v13;
    sub_10074B6C4();
    v16 = v15;
    sub_10074B6E4();
    v17 = sub_100753064();

    [v16 setTitle:v17];

    *(v16 + OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_prefersLargeTitle) = 0;
    v18 = [v16 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = sub_1002C2804(&qword_100930BA8, 255, &type metadata accessor for PurchasesContentPresenter);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = v19;

    v22 = v16;
    v23 = sub_1002C26D4(a1, v22, sub_1002BCB78, v21, a2);

    v24 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_flowPreviewing];
    *&v22[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_flowPreviewing] = v23;
  }

  else
  {
    __break(1u);
  }
}

void sub_1002BE0F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100748DA4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v97 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v97 - v12;
  v111.receiver = v1;
  v111.super_class = ObjectType;
  objc_msgSendSuper2(&v111, "viewDidLoad", v11);
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  v16 = sub_100016C60(0, &qword_100923500);
  v17 = sub_100753E04();
  [v15 setBackgroundColor:v17];

  v18 = [v1 collectionView];
  if (!v18)
  {
    return;
  }

  v104 = v13;
  v105 = v9;
  v101 = v6;
  v102 = v3;
  v107 = v4;
  v108 = v16;
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_shelfDataSource];
  v106 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v110.receiver = v24;
  v110.super_class = v23;

  v26 = objc_msgSendSuper2(&v110, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v103 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v109.receiver = v32;
  v109.super_class = v31;
  v35 = objc_msgSendSuper2(&v109, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_didScrollHandler];
  *v40 = sub_1002C2868;
  v40[1] = v39;

  sub_1000164A8(v41);

  v42 = *&v1[v36];
  v43 = v42;
  sub_10062BAF4(v42);
  v44 = *&v1[v27];
  v45 = v44;
  sub_10062BB08(v44);
  v46 = v106;
  v47 = v106;
  v48 = sub_100753E04();
  [v47 setBackgroundColor:v48];

  [v47 setAlwaysBounceVertical:1];
  v49 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_collectionViewTableLayout;
  v50 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_collectionViewTableLayout];
  if (!v50)
  {
    goto LABEL_18;
  }

  [v50 setSeparatorInset:{0.0, 92.0, 0.0, 20.0}];
  v51 = *&v1[v49];
  v52 = v102;
  if (!v51)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  [v51 _setShowsAdditionalSeparators:0];
  sub_10000C518(&qword_100930BC8);
  v53 = sub_10074E984();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_1007A5A00;
  (*(v54 + 104))(v56 + v55, enum case for Shelf.ContentType.purchasesLockup(_:), v53);
  v57 = sub_1001A9F00(v56);
  swift_setDeallocating();
  (*(v54 + 8))(v56 + v55, v53);
  swift_deallocClassInstance();
  v58 = v47;
  sub_10064B698(v57, v46);

  sub_1002C2870(v46);

  sub_10074B6D4();
  v59 = v104;
  sub_10074B694();
  v60 = v107;
  v61 = v105;
  (*(v107 + 104))(v105, enum case for PurchasesContentMode.hidden(_:), v52);
  sub_1002C2804(&qword_100930BB8, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(v56) = sub_100753014();
  v64 = *(v60 + 8);
  v62 = v60 + 8;
  v63 = v64;
  v64(v61, v52);
  v64(v59, v52);
  if ((v56 & 1) == 0)
  {
    v99 = v58;
    v100 = v63;
    v65 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v65 setLayoutMargins:?];
    sub_1002BECB4();
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl;
    v67 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentedControl];

    [v67 removeTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v68 = &v65[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler];
    v69 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension20SegmentedControlView_segmentDidChangeHandler];
    *v68 = sub_1002C2AAC;
    v68[1] = v66;
    swift_retain_n();
    sub_1000164A8(v69);

    v70 = v67;
    v71 = v65;
    [v70 addTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v72 = sub_10074B644();
    v73 = *(v72 + 16);
    if (v73)
    {
      v97 = v1;
      v98 = v72;
      v74 = *(v107 + 16);
      v75 = v72 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
      v105 = *(v107 + 72);
      v106 = v74;
      v107 = v62;
      v77 = v100;
      v76 = v101;
      do
      {
        (v106)(v76, v75, v52);
        v78 = v71;
        v79 = *&v71[v108];
        sub_100748D74();
        v80 = sub_100753064();

        v81 = sub_100748D84();
        v77(v76, v52);
        [v79 insertSegmentWithTitle:v80 atIndex:v81 animated:0];

        v71 = v78;
        v75 += v105;
        --v73;
      }

      while (v73);

      v1 = v97;
    }

    else
    {
    }

    v82 = *&v71[v108];
    v83 = v104;
    sub_10074B694();
    v84 = sub_100748D84();
    v100(v83, v52);
    [v82 setSelectedSegmentIndex:v84];

    v58 = v99;
  }

  v85 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar];
  v112._countAndFlagsBits = 0x484352414553;
  v112._object = 0xE600000000000000;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_1007458B4(v112, v113);
  v86 = sub_100753064();

  [v85 setPlaceholder:v86];

  [v85 setHidden:1];
  [v85 setDelegate:v1];
  v87 = [objc_allocWithZone(UIImage) init];
  [v85 setBackgroundImage:v87];

  v88 = [v1 view];
  if (!v88)
  {
    goto LABEL_20;
  }

  v89 = v88;
  [v88 addSubview:v85];

  v90 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_flowPreviewing];
  if (v90)
  {
    v91 = objc_allocWithZone(UIContextMenuInteraction);
    v92 = v90;
    v93 = [v91 initWithDelegate:v92];
    [v58 addInteraction:v93];
  }

  v94 = [v1 navigationItem];
  v95 = [v94 rightBarButtonItem];

  v96 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_doneButtonItem] = v95;
}

void sub_1002BEBC4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong view];
    if (v4)
    {
      v5 = v4;
      [v4 endEditing:1];

      v6 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar];
      [a1 contentOffset];
      [v6 frame];
      CGRectGetHeight(v7);
      [v6 frame];
      [v6 setFrame:?];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002BECB4()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_1002C2B68(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_segmentedControlView];
  v50[3] = type metadata accessor for SegmentedControlView();
  v50[4] = &protocol witness table for UIView;
  v50[0] = v10;
  sub_10000C824(v50, v49);
  sub_10000C824(v49, v48);
  v11 = swift_allocObject();
  sub_100032CCC(v49, v11 + 16);
  v12 = v10;
  sub_10000C620(v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_10000C620(v48);
    return;
  }

  v14 = Strong;
  v15 = *(v8 + 24);
  if (v15)
  {
    [v15 setHidden:1];
  }

  v16 = v12;
  [v16 setHidden:0];
  v17 = [v16 superview];
  v18 = [v14 contentView];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      sub_100016C60(0, &qword_100922300);
      v20 = sub_100753FC4();

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v19 = v17;
  }

  else if (!v18)
  {
    goto LABEL_18;
  }

LABEL_17:
  v21 = [v14 contentView];
  [v21 bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v16 setFrame:{v23, v25, v27, v29}];
  [v16 setAutoresizingMask:18];
  v30 = [v14 contentView];
  [v30 addSubview:v16];

LABEL_18:
  v31 = *(v8 + 24);
  *(v8 + 24) = v10;
  v32 = v16;

  if (*(v8 + 65))
  {
    v33 = [v14 contentView];
    sub_100016C60(0, &qword_100922300);
    sub_1007477B4();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v51.origin.x = v35;
    v51.origin.y = v37;
    v51.size.width = v39;
    v51.size.height = v41;
    CGRectGetWidth(v51);
    v42 = [v14 contentView];
    sub_10000C888(v48, v48[3]);
    sub_100750404();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  *(v8 + 32) = sub_1002C2AEC;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_1002C2AF4(v45, v46, v47);

  sub_10000C620(v48);
}

void sub_1002BF0EC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1002BF148(a1);
  }
}

id sub_1002BF148(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_100748DA4();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v10 = result;
  [result endEditing:1];

  v11 = [a1 selectedSegmentIndex];
  v12 = enum case for PurchasesContentMode.all(_:);
  v13 = *(v5 + 104);
  v13(v8, enum case for PurchasesContentMode.all(_:), v4);
  v14 = sub_100748D84();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = sub_100748D84(), v15(v8, v4), v16 == v11))
  {
    sub_1002BDC48(0);
LABEL_5:
    v13(v8, v12, v4);
    return sub_10074B6A4();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = sub_100748D84();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v37._object = 0x8000000100775400;
    v37._countAndFlagsBits = 0xD000000000000014;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_1007458B4(v37, v38);
    v36 = ObjectType;
    v35[0] = v2;
    ObjectType = v2;
    v18 = sub_100753064();

    v19 = v36;
    if (v36)
    {
      v20 = sub_10000C888(v35, v36);
      v32[1] = v32;
      v33 = v18;
      v21 = *(v19 - 8);
      v22 = __chkstk_darwin(v20);
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_100754734();
      (*(v21 + 8))(v24, v19);
      v18 = v33;
      sub_10000C620(v35);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:0 target:v25 action:"unhideAll"];

    swift_unknownObjectRelease();
    v27 = ObjectType;
    sub_1002BDC48(v26);
    v28 = [v27 navigationItem];
    v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_hideAllButton];
    [v28 setRightBarButtonItem:v29];

    v30 = [v27 navigationItem];
    v31 = [v30 rightBarButtonItem];

    [v31 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_1002BF630(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100744254();
}

void sub_1002BF6B8(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100744254();
}

void sub_1002BF728()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v50.origin.x = v5;
  v50.origin.y = v7;
  v50.size.width = v9;
  v50.size.height = v11;
  CGRectGetWidth(v50);
  v12 = [v0 view];
  if (!v12)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;

  [v1 sizeThatFits:{v15, v17}];
  [v1 frame];
  [v1 setFrame:?];
  v18 = [v0 collectionView];
  if (v18)
  {
    v19 = v18;
    [v1 frame];
    Height = CGRectGetHeight(v51);
    [v19 contentInset];
    [v19 setContentInset:Height];
  }

  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView];
  if (v21)
  {
    v22 = v21;
    v23 = [v0 view];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 safeAreaLayoutGuide];

      [v25 layoutFrame];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      [v0 pageMarginInsets];
      v36 = sub_10010FD98(v27, v29, v31, v33, v34, v35);
      v38 = v37;
      v40 = v39;
      v42 = v41;
      [v1 frame];
      MaxY = CGRectGetMaxY(v52);
      v53.origin.x = v36;
      v53.origin.y = v38;
      v53.size.width = v40;
      v53.size.height = v42;
      v44 = CGRectGetHeight(v53);
      [v1 frame];
      v45 = v44 - CGRectGetMaxY(v54);
      v46 = v22;
      [v0 pageMarginInsets];
      v48 = v47;
      v55.origin.x = v36;
      v55.origin.y = v38;
      v55.size.width = v40;
      v55.size.height = v42;
      [v46 setFrame:{v48, MaxY, CGRectGetWidth(v55), v45}];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

void sub_1002BFA70(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_initWithTitle_style_target_action_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &stru_1008F2000;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    v15 = &stru_1008F2000;
    sub_100752474();
    v10 = &selRef_initWithTitle_style_target_action_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[129]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[31].attr);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    sub_100752474();
  }

  else
  {
  }
}

void sub_1002BFEC0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100748DA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  sub_10074B694();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_1002C2804(&qword_100930BB8, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(a1) = sub_100753014();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &stru_1008F2000;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension31PurchasesCollectionViewDelegate_shelfDataSource];
  v22 = [v20 snapshotPageTraitEnvironment];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v19 reloadData];
  if (v19)
  {
    v34[1] = v34;
    v35 = *(v21 + 24);
    __chkstk_darwin(v23);
    v34[-2] = v19;
    v34[-1] = v21;
    v24 = v19;

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    v17 = &stru_1008F2000;
    sub_100752474();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[61].attr];
  v28 = [v2 collectionView];
  v29 = [v27 v17[61].attr];
  *&v26[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[61].attr];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v32 = [v28 reloadData];
  if (v28)
  {
    v35 = *(v30 + 24);
    __chkstk_darwin(v32);
    v34[-2] = v28;
    v34[-1] = v30;
    v33 = v28;

    sub_10000C518(&qword_100925350);
    sub_10017C038();
    sub_100752474();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_1002C071C()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  if (sub_10074B674())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10074B964();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_100750F94();
    v8 = objc_allocWithZone(sub_100750FC4());
    v9 = sub_100750FB4();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10074B964();
      return;
    }
  }

  __break(1u);
}

void sub_1002C091C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  if (v2)
  {
    sub_100750FC4();
    if (swift_dynamicCastClass())
    {
      v3 = v2;
      sub_10074B974();

      v4 = *&v0[v1];
      *&v0[v1] = 0;

      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];

        sub_10074B964();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1002C0A04()
{
  v1 = v0;
  sub_100751094();
  sub_1002C2804(&qword_100930B90, 255, &type metadata accessor for PurchasesContentPresenter);
  swift_errorRetain();

  v2 = sub_100751054();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_10074B964();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C0B84()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  v5 = [v1 collectionView];
  if (v5)
  {
    v6 = v5;
    [v5 setHidden:0];
  }

  sub_1002C2D14();
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1002C22F8;
  *(v9 + 24) = v8;
  v12[4] = sub_1000C0C28;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10011B528;
  v12[3] = &unk_10086FC40;
  v10 = _Block_copy(v12);

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_1002C0D78()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong collectionView];

    if (!v2)
    {
      __break(1u);
      return;
    }

    [v2 reloadData];
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 collectionView];

    if (v5)
    {
      [v5 layoutIfNeeded];
    }
  }
}

void sub_1002C0E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_1002C2D14();
  }

  else
  {
    v17 = *(v16 + 24);
    if (v17)
    {
      if (*(v16 + 65) == 1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v17 setHidden:1];
          [v19 setMinimumHeight:0.0];
          [v19 setPreferredHeight:0.0];

          *(v16 + 65) = 0;
        }
      }
    }
  }

  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView());

  v21 = sub_100421C68(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_emptyStateView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v7[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v7[v22] = v21;
  v25 = v21;

  [v25 setUserInteractionEnabled:0];
  v26 = [v7 view];
  if (!v26)
  {
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  [v26 addSubview:v25];

  v28 = [v7 view];
  if (!v28)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v29 = v28;
  [v28 setNeedsLayout];
}

void sub_1002C1084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = [v3 collectionView];
  if (v10)
  {
    v11 = v10;
    (*(v8 + 16))(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
    v12 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v13 = swift_allocObject();
    *(v13 + 2) = a2;
    *(v13 + 3) = a3;
    *(v13 + 4) = v3;
    (*(v8 + 32))(&v13[v12], aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1002C2230;
    *(v14 + 24) = v13;
    aBlock[4] = sub_100045E0C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_10086FBC8;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_1002C129C(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_10000C518(&unk_1009405F0);
    v8 = sub_1007417F4();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1007A5A00;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = sub_100753294().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_1002C1410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007417F4();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_100752294();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016B4C(a2, v103, &unk_100923520);
  if (v104)
  {
    sub_100016C60(0, &qword_100922300);
    if (swift_dynamicCast())
    {
      v21 = v72;
      [v21 bounds];
      LOBYTE(v97) = 1;
      *&v79 = v21;
      *(&v79 + 1) = v22;
      *&v80 = v23;
      *(&v80 + 1) = v24;
      *&v81 = v25;
      BYTE8(v81) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v82 = _Q0;
      v83 = _Q0;
      v84 = 15;
      sub_100016C60(0, &qword_100926D00);
      *v20 = sub_100753774();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_1007522C4();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_100931330;
        v88 = xmmword_100931340;
        v89 = xmmword_100931350;
        v85 = xmmword_100931310;
        v86 = xmmword_100931320;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_100931310;
        v98 = xmmword_100931320;
        v100 = xmmword_100931340;
        v101 = xmmword_100931350;
        v90 = qword_100931360;
        v96 = v84;
        v102 = qword_100931360;
        v99 = xmmword_100931330;
        sub_100016B4C(&v85, &v73, &unk_1009308C0);
        xmmword_100931330 = v93;
        xmmword_100931340 = v94;
        xmmword_100931350 = v95;
        qword_100931360 = v96;
        xmmword_100931310 = v91;
        xmmword_100931320 = v92;
        sub_10000C8CC(&v97, &unk_1009308C0);
        v32 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
        v33 = sub_10000C518(&unk_100923210);
        sub_1001664D8(&v79, &v73);
        sub_1007526C4();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10000C8CC(v16, &unk_100923960);
        }

        else
        {
          sub_1003C0E00(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_100931330;
        v76 = xmmword_100931340;
        v77 = xmmword_100931350;
        v78 = qword_100931360;
        v73 = xmmword_100931310;
        v74 = xmmword_100931320;
        xmmword_100931310 = v85;
        xmmword_100931320 = v86;
        xmmword_100931330 = v87;
        xmmword_100931340 = v88;
        xmmword_100931350 = v89;
        qword_100931360 = v90;
        sub_10000C8CC(&v73, &unk_1009308C0);
        sub_100166534(&v79);

        return;
      }

      __break(1u);
      goto LABEL_27;
    }

    v66 = a1;
  }

  else
  {
    v66 = a1;
    sub_10000C8CC(v103, &unk_100923520);
  }

  v35 = [v71 collectionView];
  if (!v35)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v36 = v35;
  v37 = [v35 indexPathsForSelectedItems];

  if (!v37)
  {
LABEL_20:
    v61 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
    v62 = sub_10000C518(&unk_100923210);
    sub_1007526C4();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10000C8CC(v11, &unk_100923960);
    }

    else
    {
      sub_1003C0E00(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_1007532A4();

  if (!*(v39 + 16))
  {

    goto LABEL_20;
  }

  v40 = v69;
  (*(v69 + 16))(v6, v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)), v38);

  v41 = *(v40 + 32);
  v42 = v68;
  v41(v68, v6, v38);
  v43 = [v71 collectionView];
  if (!v43)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = v42;
  isa = sub_100741704().super.isa;
  v47 = [v44 cellForItemAtIndexPath:isa];

  if (!v47)
  {
    (*(v69 + 8))(v45, v70);
    goto LABEL_20;
  }

  v48 = v47;
  [v48 bounds];
  LOBYTE(v97) = 1;
  *&v79 = v47;
  *(&v79 + 1) = v49;
  *&v80 = v50;
  *(&v80 + 1) = v51;
  *&v81 = v52;
  BYTE8(v81) = 1;
  __asm { FMOV            V0.2D, #10.0 }

  v82 = _Q0;
  v83 = _Q0;
  v84 = 15;
  sub_100016C60(0, &qword_100926D00);
  *v20 = sub_100753774();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_1007522C4();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_100931330;
  v88 = xmmword_100931340;
  v89 = xmmword_100931350;
  v85 = xmmword_100931310;
  v86 = xmmword_100931320;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_100931310;
  v98 = xmmword_100931320;
  v100 = xmmword_100931340;
  v101 = xmmword_100931350;
  v90 = qword_100931360;
  v96 = v84;
  v102 = qword_100931360;
  v99 = xmmword_100931330;
  sub_100016B4C(&v85, &v73, &unk_1009308C0);
  xmmword_100931330 = v93;
  xmmword_100931340 = v94;
  xmmword_100931350 = v95;
  qword_100931360 = v96;
  xmmword_100931310 = v91;
  xmmword_100931320 = v92;
  sub_10000C8CC(&v97, &unk_1009308C0);
  v55 = *&v71[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_objectGraph];
  v56 = sub_10000C518(&unk_100923210);
  sub_1001664D8(&v79, &v73);
  v57 = v67;
  sub_1007526C4();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10000C8CC(v57, &unk_100923960);
  }

  else
  {
    sub_1003C0E00(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_100931330;
  v76 = xmmword_100931340;
  v77 = xmmword_100931350;
  v78 = qword_100931360;
  v73 = xmmword_100931310;
  v74 = xmmword_100931320;
  xmmword_100931310 = v85;
  xmmword_100931320 = v86;
  xmmword_100931330 = v87;
  xmmword_100931340 = v88;
  xmmword_100931350 = v89;
  qword_100931360 = v90;
  sub_10000C8CC(&v73, &unk_1009308C0);
  sub_100166534(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_1002C1E68()
{

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension23PurchasesViewController_flowPreviewing);
}

uint64_t sub_1002C216C()
{
  v1 = sub_1007417F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002C2230()
{
  v1 = *(sub_1007417F4() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_1002C129C(v2, v3, v4, v5);
}

uint64_t sub_1002C22A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002C22C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1002C2300(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000C518(&qword_100930BC0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_1007417F4();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016C60(0, &qword_100925390);
  v11 = sub_1007532A4();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_100754664();
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
        v16 = sub_100754574();
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
        sub_100741744();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_100741784();
        sub_1007544E4();
        v23 = v34;
        sub_100752EE4();
        sub_100752AD4();

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

uint64_t sub_1002C2694()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1002C26D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1002C2804(&qword_100930BA8, 255, &type metadata accessor for PurchasesContentPresenter);
  v9 = sub_10000C518(&qword_100930BB0);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_100925588];
  *&v10[qword_100925588 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_100925580];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_100925598] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_1002C2804(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1002C2870(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    sub_1007539D4();
    v4 = sub_100753064();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView();
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    sub_1007539D4();
    v7 = sub_100753064();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    sub_1007539D4();
    v10 = sub_100753064();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_100016C60(0, &qword_10092DB20);
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_100753064();
    v13 = sub_100753064();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = sub_100753064();
    v15 = sub_100753064();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_1002C2AB4()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1002C2AF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_1000164A8(a3);
  }

  return result;
}

void sub_1002C2B68(void *a1, uint64_t a2, char a3)
{
  _s18PaletteContentViewCMa();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = &v7[OBJC_IVAR____TtCC22SubscribePageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  v10 = *&v7[OBJC_IVAR____TtCC22SubscribePageExtension29NavigationBarPalettePresenter18PaletteContentView_didLayoutSubviews];
  *v9 = sub_1002C3938;
  v9[1] = v8;

  sub_1000164A8(v10);

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

void sub_1002C2D14()
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

          sub_10001B5AC(v4);
          v5 = [v18 contentView];
          sub_100009D34();
          sub_1007477B4();
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

          sub_1000164A8(v4);
          *(v0 + 65) = 1;
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1002C2EC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1002C30EC();
  }

  return result;
}

void sub_1002C2F20()
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

          sub_10001B5AC(v4);
          v6 = [v19 contentView];
          sub_100009D34();
          sub_1007477B4();
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

            sub_1002C30EC();
          }

          Strong = sub_1000164A8(v4);
          v2 = v19;
        }

        _objc_release_x1(Strong, v2);
      }
    }
  }
}

void sub_1002C30EC()
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
    sub_1002C38B4(v3, *(v0 + 40), 0);
    v23 = v1;
    [v23 setAlpha:1.0];

    Strong = v25;
LABEL_15:

    return;
  }

  sub_1002C38B4(v3, *(v0 + 40), *(v0 + 48));
  sub_10001B5AC(v4);
  v5 = [v25 contentView];
  sub_100009D34();
  sub_1007477B4();
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

    sub_1000164A8(v4);

    sub_1000164A8(v4);
    Strong = v24;
    goto LABEL_15;
  }

  sub_1000164A8(v4);

  sub_1000164A8(v4);
}