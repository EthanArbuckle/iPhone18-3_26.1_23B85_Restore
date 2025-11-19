double sub_100250E58(double a1, double a2)
{
  v5 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v5 - 8);
  v35 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 traitCollection];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension15BannerButtonRow_buttonViews;
  swift_beginAccess();
  v13 = *&v2[v12];
  if (v13 >> 62)
  {
LABEL_28:
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_100754664();
  }

  else
  {
    v38 = v13 & 0xFFFFFFFFFFFFFF8;
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v15 = 0;
  v37 = v13 & 0xC000000000000001;
  v16 = _swiftEmptyArrayStorage;
  v33 = v11;
  v36 = v13;
  do
  {
    v34 = v16;
    v17 = v15;
    while (1)
    {
      if (v37)
      {
        v18 = sub_100754574();
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v38 + 16))
        {
          goto LABEL_27;
        }

        v18 = *(v13 + 8 * v17 + 32);
        v15 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }
      }

      v19 = v18;
      sub_100754214();
      v20 = sub_1007541F4();
      v11 = *(v20 - 8);
      if (v11[6](v10, 1, v20) != 1)
      {
        break;
      }

      sub_10000C8CC(v10, &qword_100932470);

LABEL_7:
      ++v17;
      v13 = v36;
      if (v15 == v14)
      {
        v11 = v33;
        v16 = v34;
        goto LABEL_25;
      }
    }

    v21 = v35;
    sub_10003BB1C(v10, v35);
    v22 = sub_1007541B4();
    v24 = v23;
    v25 = v11[1];
    ++v11;
    (v25)(v21, v20);
    sub_10000C8CC(v10, &qword_100932470);

    if (!v24)
    {
      goto LABEL_7;
    }

    v16 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_1002554F8(0, *(v16 + 2) + 1, 1, v16);
    }

    v11 = v33;
    v28 = *(v16 + 2);
    v27 = *(v16 + 3);
    if (v28 >= v27 >> 1)
    {
      v16 = sub_1002554F8((v27 > 1), v28 + 1, 1, v16);
    }

    *(v16 + 2) = v28 + 1;
    v29 = &v16[16 * v28];
    *(v29 + 4) = v22;
    *(v29 + 5) = v24;
    v13 = v36;
  }

  while (v15 != v14);
LABEL_25:

  v30 = sub_100251474(v11, v16, a1, a2);

  return v30;
}

uint64_t type metadata accessor for BannerButtonRow()
{
  result = qword_10092F060;
  if (!qword_10092F060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100251300()
{
  sub_1002513A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002513A0()
{
  if (!qword_10092F070)
  {
    sub_10000C724(&qword_10092AF00);
    sub_100251410();
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_10092F070);
    }
  }
}

unint64_t sub_100251410()
{
  result = qword_10092AF08;
  if (!qword_10092AF08)
  {
    sub_10000C724(&qword_10092AF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092AF08);
  }

  return result;
}

double sub_100251474(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v59[1] = a1;
  v7 = sub_10000C518(&unk_100944920);
  __chkstk_darwin(v7 - 8);
  v69 = v59 - v8;
  v68 = sub_100754074();
  v9 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007541F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v66 = v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v59 - v15;
  v17 = *(a2 + 16);
  if (!v17)
  {

    return -10.0;
  }

  v70 = _swiftEmptyArrayStorage;
  sub_10001E554(0, v17, 0);
  v18 = v70;
  v65 = objc_opt_self();
  v64 = enum case for UIButton.Configuration.CornerStyle.capsule(_:);
  v62 = (v12 + 16);
  v63 = (v9 + 104);
  v60 = (v12 + 8);
  v61 = (v12 + 32);
  v19 = a2 + 40;
  v20 = 0.0;
  v59[0] = v17;
  v21 = 0.0;
  do
  {

    sub_100754164();

    sub_1007541C4();
    v22 = v65;
    v23 = [v65 tintColor];
    v24 = [v23 colorWithAlphaComponent:0.08];

    sub_100754114();
    v25 = [v22 tintColor];
    sub_100754124();
    (*v63)(v67, v64, v68);
    sub_100754084();
    sub_1007540C4();
    v26 = v69;
    sub_100751A04();
    v27 = sub_1007519F4();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    sub_100754144();
    v28 = v66;
    (*v62)(v66, v16, v11);
    type metadata accessor for ButtonPlaceholder();
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder____lazy_storage___button) = 0;
    (*v61)(v29 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration, v28, v11);
    v30 = sub_1003F8C1C();
    [v30 sizeThatFits:{a3, a4}];
    v32 = v31;
    v33 = [v30 titleLabel];
    if (!v33)
    {
      goto LABEL_6;
    }

    v34 = v33;
    v35 = [v30 subtitleLabel];
    if (v35)
    {
      v36 = v35;

LABEL_6:
      sub_100750994();
      v38 = v37;
      v32 = v39;
      goto LABEL_8;
    }

    sub_100753F74();
    sub_100750994();
    v38 = v40;

LABEL_8:

    swift_setDeallocating();
    v41 = *v60;
    (*v60)(v29 + OBJC_IVAR____TtC22SubscribePageExtension17ButtonPlaceholder_configuration, v11);

    swift_deallocClassInstance();
    v41(v16, v11);
    v42 = fmax(v32, 30.0);
    if (v20 <= v38)
    {
      v20 = v38;
    }

    if (v21 <= v42)
    {
      v21 = v42;
    }

    v70 = v18;
    v44 = v18[2];
    v43 = v18[3];
    if (v44 >= v43 >> 1)
    {
      sub_10001E554((v43 > 1), v44 + 1, 1);
      v18 = v70;
    }

    v18[2] = v44 + 1;
    v45 = &v18[2 * v44];
    v45[4] = v38;
    v45[5] = v42;
    v19 += 16;
    --v17;
  }

  while (v17);
  v46 = v59[0] - 1;
  v47 = a3 + (v59[0] - 1) * -10.0;
  v48 = v59[0];
  if (v47 / v59[0] < v20)
  {
    if (v44)
    {
      v49 = (v44 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v50 = (v18 + 7);
      v51 = 0.0;
      v52 = v49;
      do
      {
        v53 = *(v50 - 2);
        v54 = *v50;
        v50 += 4;
        v51 = v51 + v53 + v54;
        v52 -= 2;
      }

      while (v52);
      if (v44 + 1 == v49)
      {
LABEL_26:

        return v20;
      }
    }

    else
    {
      v49 = 0;
      v51 = 0.0;
    }

    v55 = v44 - v49 + 1;
    v56 = &v18[2 * v49 + 5];
    do
    {
      v57 = *v56;
      v56 += 2;
      v51 = v51 + v57;
      --v55;
    }

    while (v55);
    goto LABEL_26;
  }

  return v46 * 10.0 + v20 * v48;
}

uint64_t sub_100251B14()
{

  return _swift_deallocObject(v0, 33, 7);
}

void sub_100251B60(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_100251C28()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100746A54();
  sub_100039C50(v4, qword_10097E958);
  v37 = sub_10000D0FC(v4, qword_10097E958);
  if (qword_100920ED0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009809C0);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v46 = v1[13];
  v46(v3, enum case for FontSource.useCase(_:), v0);
  v45 = sub_100750B04();
  v64[3] = v45;
  v64[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v61);
  v12 = v1[2];
  v44 = v1 + 2;
  v41 = v12;
  v12(v11, v3, v0);
  sub_100750B14();
  v13 = v1[1];
  v43 = v1 + 1;
  v47 = v13;
  v13(v3, v0);
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v5, qword_1009809D8);
  v8(v3, v36, v5);
  v46(v3, v10, v0);
  v62 = v45;
  v14 = v45;
  v63 = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  v38 = v10;
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v58);
  v39 = v1 + 13;
  v16 = v41;
  v41(v15, v3, v0);
  sub_100750B14();
  v47(v3, v0);
  v17 = v36;
  v42 = v5;
  v40 = v8;
  v36 = v9;
  v8(v3, v17, v5);
  v18 = v38;
  v19 = v46;
  v46(v3, v38, v0);
  v59 = v14;
  v60 = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v55);
  v16(v20, v3, v0);
  sub_100750B14();
  v47(v3, v0);
  v21 = v18;
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v22 = v42;
  v35 = sub_10000D0FC(v42, qword_100980A38);
  v23 = v40;
  v40(v3, v35, v22);
  v19(v3, v21, v0);
  v56 = v45;
  v57 = &protocol witness table for StaticDimension;
  sub_10000D134(v55);
  v24 = v23;
  v53 = v0;
  v54 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v52);
  v26 = v41;
  v41(v25, v3, v0);
  sub_100750B14();
  v27 = v26;
  v47(v3, v0);
  v28 = v35;
  v24(v3, v35, v42);
  v46(v3, v21, v0);
  v29 = v45;
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v49);
  v27(v30, v3, v0);
  sub_100750B14();
  v31 = v47;
  v47(v3, v0);
  v40(v3, v28, v42);
  v46(v3, v38, v0);
  v50 = v29;
  v51 = &protocol witness table for StaticDimension;
  sub_10000D134(v49);
  v48[3] = v0;
  v48[4] = &protocol witness table for FontSource;
  v32 = sub_10000D134(v48);
  v27(v32, v3, v0);
  sub_100750B14();
  v31(v3, v0);
  return sub_100746A44();
}

char *sub_1002522AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_itemLayoutContext;
  v17 = sub_1007469A4();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_avatarShowcase] = 0;
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  sub_1007433C4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_artworkView] = sub_1007431D4();
  if (qword_100920ED8 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_1009809D8);
  v21 = *(v19 - 8);
  v44 = *(v21 + 16);
  v44(v15, v20, v19);
  v43 = *(v21 + 56);
  v43(v15, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v42 = *(v11 + 104);
  v42(v46, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = sub_100745C84();
  v41 = v10;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100920EF8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v19, qword_100980A38);
  v44(v15, v26, v19);
  v43(v15, 0, 1, v19);
  v42(v46, v22, v41);
  v27 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_subtitleLabel] = sub_100745C74();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_artworkView]];

  v31 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_titleLabel;
  v32 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_100745C34();

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[v31]];

  v34 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_subtitleLabel;
  v35 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_100016C60(0, &qword_100923500);
  v36 = v35;
  v37 = sub_100753DF4();
  [v36 setTextColor:v37];

  v38 = *&v28[v34];
  sub_100745C34();

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[v34]];

  return v28;
}

uint64_t sub_10025292C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_100750354();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100746A54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100746A74();
  v9 = *(v31 - 8);
  *&v10 = __chkstk_darwin(v31).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54.receiver = v1;
  v54.super_class = ObjectType;
  v34 = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v10);
  if (qword_100920690 != -1)
  {
    swift_once();
  }

  v13 = sub_10000D0FC(v5, qword_10097E958);
  (*(v6 + 16))(v8, v13, v5);
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_artworkView];
  v52 = sub_1007433C4();
  v53 = &protocol witness table for UIView;
  v51 = v14;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v15)
  {
    v16 = sub_100745C84();
    v17 = &protocol witness table for UILabel;
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v47 = 0;
    v48 = 0;
  }

  v46 = v18;
  v49 = v16;
  v50 = v17;
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_titleLabel];
  v20 = sub_100745C84();
  v44 = v20;
  v45 = &protocol witness table for UILabel;
  v43 = v19;
  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  v42 = &protocol witness table for UILabel;
  v41 = v20;
  v40 = v21;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v22)
  {
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v37 = 0;
    v36 = 0;
  }

  v35 = v22;
  v38 = v20;
  v39 = v23;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  sub_100746A64();
  v29 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  sub_100746A34();
  (*(v32 + 8))(v4, v33);
  sub_100253830(&qword_100928138, type metadata accessor for LargeLockupCollectionViewCell);
  sub_10074AAF4();
  return (*(v9 + 8))(v12, v31);
}

id sub_100252DE4(char a1, uint64_t a2)
{
  v5 = sub_10074AB44();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100920ED0 != -1)
    {
      swift_once();
    }

    v16 = sub_100750534();
    v17 = sub_10000D0FC(v16, qword_1009809C0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_100745C84());
    v20 = sub_100745C74();
    v2 = v15;
    sub_10024CEE0(v20, &OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_100253094()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100920F20 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100980AB0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_100745C84());
  v15 = sub_100745C74();
  sub_10024CEE0(v15, &OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_100745C34();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016C60(0, &qword_100923500);
      v18 = v17;
      v19 = sub_100753DE4();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for LargeLockupCollectionViewCell()
{
  result = qword_10092F0A0;
  if (!qword_10092F0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100253454()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100253530()
{
  v0 = sub_10074F284();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074F244();
  sub_100253830(&qword_1009290A0, &type metadata accessor for Artwork.Crop);
  v4 = sub_100753014();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return 6;
  }

  else
  {
    return sub_10074F254();
  }
}

uint64_t sub_100253660()
{
  sub_100743204();
  sub_1007433C4();
  sub_100253830(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1002536F8(uint64_t a1)
{
  result = sub_100253830(&qword_10092F0B0, type metadata accessor for LargeLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100253750()
{
  if (qword_100920690 != -1)
  {
    swift_once();
  }

  v0 = sub_100746A54();
  sub_10000D0FC(v0, qword_10097E958);
  sub_100746A74();
  sub_100253830(&qword_10092F0B8, &type metadata accessor for LargeLockupLayout);
  return sub_100750D34();
}

uint64_t sub_100253830(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t LargeGameCenterPlayerLayout.Metrics.displayNameTopSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 56);

  return sub_100012160(a1, v1 + 56);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelBottomSpace.setter(__int128 *a1)
{
  sub_10000C620(v1 + 96);

  return sub_100012160(a1, v1 + 96);
}

uint64_t LargeGameCenterPlayerLayout.Metrics.labelMargin.setter(__int128 *a1)
{
  sub_10000C620(v1 + 136);

  return sub_100012160(a1, v1 + 136);
}

double static LargeGameCenterPlayerLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, void *a2, double a3)
{
  swift_getObjectType();

  return sub_1002569DC(a1, a2, a3);
}

double LargeGameCenterPlayerLayout.measurements(fitting:in:)(void *a1, double a2)
{
  swift_getObjectType();

  return sub_1002569DC(v2, a1, a2);
}

uint64_t LargeGameCenterPlayerLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v83 = a1;
  v84 = a2;
  v82 = sub_100754724();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100750D04();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100750354();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_100750CF4();
  v15 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100750CB4();
  v73 = *(v17 - 8);
  v92 = v73;
  __chkstk_darwin(v17);
  v89 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100750CC4();
  v91 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100750C64();
  v93 = *(v90 - 8);
  __chkstk_darwin(v90);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v21;
  sub_10000C888(v6 + 23, v6[26]);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinX(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetMinY(v102);
  sub_100750394();
  sub_10000C518(&unk_100923060);
  v22 = *(v15 + 72);
  v69 = v15;
  v23 = v92;
  v24 = v17;
  v85 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v67 = v22;
  v72 = swift_allocObject();
  v71 = xmmword_1007A5A00;
  *(v72 + 1) = xmmword_1007A5A00;
  v25 = v6[31];
  v26 = v7[32];
  v27 = sub_10000C888(v7 + 28, v7[31]);
  v99 = v25;
  v100 = *(v26 + 8);
  v28 = sub_10000D134(&v98);
  (*(*(v25 - 8) + 16))(v28, v27, v25);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0;
  v29 = *(v93 + 104);
  v65 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v93 + 104;
  v64 = v29;
  v29(v21);
  v30 = v91;
  v31 = *(v91 + 104);
  v32 = v87;
  v62 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v33 = v88;
  v63 = v91 + 104;
  v61 = v31;
  v31(v87);
  sub_10000C518(&unk_100944F30);
  v34 = swift_allocObject();
  *(v34 + 16) = v71;
  sub_100750C84();
  v94 = v34;
  sub_100257A60(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  sub_10000C518(&unk_100944F40);
  sub_100016BFC();
  v35 = v89;
  sub_1007543A4();
  v36 = v86;
  v37 = v32;
  sub_100750CE4();
  v38 = *(v23 + 8);
  v73 = v24;
  v92 = v23 + 8;
  v38(v35, v24);
  v39 = *(v30 + 8);
  v91 = v30 + 8;
  v39(v37, v33);
  v40 = v90;
  v41 = *(v93 + 8);
  v93 += 8;
  v41(v36, v90);
  sub_1000F4268(&v95);
  sub_10000C620(&v98);
  LODWORD(v23) = *(v7 + 176);
  sub_10000C888(v7 + 33, v7[36]);
  if (v23 == 1)
  {
    sub_1007503B4();
    v42 = v7[36];
    v43 = v7[37];
    v44 = sub_10000C888(v7 + 33, v42);
    v99 = v42;
    v100 = *(v43 + 8);
    v45 = sub_10000D134(&v98);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    v97 = &protocol witness table for Double;
    v96 = &type metadata for Double;
    v95 = 0;
    v46 = v38;
    v47 = v86;
    v64(v86, v65, v40);
    v48 = v87;
    v49 = v88;
    v61(v87, v62, v88);
    v50 = v89;
    sub_100750C94();
    v51 = v68;
    sub_100750CE4();
    v46(v50, v73);
    v39(v48, v49);
    v41(v47, v40);
    sub_1000F4268(&v95);
    sub_10000C620(&v98);
    v52 = v72;
    v54 = v72[2];
    v53 = v72[3];
    if (v54 >= v53 >> 1)
    {
      v52 = sub_1002561C8(v53 > 1, v54 + 1, 1, v72, &unk_100923060, &unk_1007A5CA0, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v52 + 2) = v54 + 1;
    (*(v69 + 32))(&v52[v85 + v54 * v67], v51, v70);
  }

  else
  {
    sub_1007503B4();
    sub_10000C888(v7 + 33, v7[36]);
    sub_100750394();
  }

  v55 = v77;
  sub_100750CD4();
  v103.origin.x = a3;
  v103.origin.y = a4;
  v103.size.width = a5;
  v103.size.height = a6;
  CGRectGetMinX(v103);
  sub_10000C888(v7 + 17, v7[20]);
  v56 = v80;
  sub_100536120();
  sub_100750564();
  v57 = *(v81 + 8);
  v58 = v82;
  v57(v56, v82);
  sub_10000C888(v7 + 23, v7[26]);
  sub_100750384();
  CGRectGetMaxY(v104);
  v105.origin.x = a3;
  v105.origin.y = a4;
  v105.size.width = a5;
  v105.size.height = a6;
  CGRectGetWidth(v105);
  sub_10000C888(v7 + 17, v7[20]);
  sub_100536120();
  sub_100750564();
  v57(v56, v58);
  v106.origin.x = a3;
  v106.origin.y = a4;
  v106.size.width = a5;
  v106.size.height = a6;
  CGRectGetHeight(v106);
  sub_10000C888(v7 + 23, v7[26]);
  sub_100750384();
  CGRectGetMaxY(v107);
  v59 = v74;
  sub_100750C74();
  (*(v78 + 8))(v55, v79);
  (*(v75 + 8))(v59, v76);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  CGRectGetMinX(v108);
  v109.origin.x = a3;
  v109.origin.y = a4;
  v109.size.width = a5;
  v109.size.height = a6;
  CGRectGetMinY(v109);
  v110.origin.x = a3;
  v110.origin.y = a4;
  v110.size.width = a5;
  v110.size.height = a6;
  CGRectGetWidth(v110);
  sub_10000C888(v7 + 28, v7[31]);
  sub_100750384();
  CGRectGetMaxY(v111);
  sub_10000C888(v7 + 33, v7[36]);
  sub_100750384();
  CGRectGetMaxY(v112);
  sub_10000C888(v7 + 12, v7[15]);
  sub_100536120();
  sub_100750564();
  v57(v56, v58);
  return sub_100750314();
}

void *sub_1002548E8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F1D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_1009231C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254AF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F198);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_100254C1C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F1B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_10092F1B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254D74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100254EA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&unk_10092F780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_100254FF4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F0E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_10092F0E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255160(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F138);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002552A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F108);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_10092F110);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002553D8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F118);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1002554F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_1009232C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255604(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_1009232F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1002557A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_100929410);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_10025598C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_10092F130);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[11 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 88 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_100929F28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255ADC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_1009253E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100255BE0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_100923320);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100255D50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&unk_10092F9F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(&qword_10092FE70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100255E84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&unk_1009259C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100255FB8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C518(a5);
  v14 = *(sub_10000C518(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_10000C518(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_1002561C8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000C518(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1002563A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000C518(&qword_100923360);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1002564D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000C518(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 4);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10025661C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_10000C518(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

void *sub_10025673C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000C518(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1002568A8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_10000C518(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000C518(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double sub_1002569DC(uint64_t a1, void *a2, double a3)
{
  v118 = sub_100754724();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v115 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_100750D04();
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_100750CF4();
  v8 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100750CB4();
  v10 = *(v121 - 8);
  __chkstk_darwin(v121);
  v109 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_100750CC4();
  v125 = *(v112 - 8);
  __chkstk_darwin(v112);
  v111 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100750C64();
  v13 = *(v110 - 8);
  __chkstk_darwin(v110);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10074CD14();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = a1;
  v20 = sub_100038D38();
  if (qword_100921230 != -1)
  {
    swift_once();
  }

  v98 = sub_100750534();
  sub_10000D0FC(v98, qword_1009813C8);
  v122 = a2;
  v21 = [a2 traitCollection];
  v100 = v20;
  sub_100753C14();

  v22 = sub_10074F3F4();
  v135 = v22;
  v97 = sub_100257A60(&qword_10092AC70, &type metadata accessor for Feature);
  v136 = v97;
  v23 = sub_10000D134(&v134);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v96 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v99 = v22;
  v95 = v25;
  v94 = v24 + 104;
  v25(v23);
  sub_10074FC74();
  sub_10000C620(&v134);
  sub_10074CD04();
  sub_10074CCE4();
  v26 = *(v17 + 8);
  v102 = v19;
  v104 = v16;
  v103 = v17 + 8;
  v93 = v26;
  v26(v19, v16);
  sub_10000C518(&unk_100923060);
  v27 = *(v8 + 72);
  v107 = v8;
  v120 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v101 = v27;
  v123 = swift_allocObject();
  v119 = xmmword_1007A5A00;
  *(v123 + 1) = xmmword_1007A5A00;
  v28 = v135;
  v29 = v136;
  v30 = sub_10000C888(&v134, v135);
  v132 = v28;
  v133 = *(v29 + 8);
  v31 = sub_10000D134(&v131);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v129 = &type metadata for Double;
  v130 = &protocol witness table for Double;
  v128 = 0;
  v32 = *(v13 + 104);
  v33 = v15;
  v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v34 = v110;
  v92 = v13 + 104;
  v90 = v32;
  v32(v15);
  v35 = v125;
  v36 = *(v125 + 104);
  v37 = v111;
  v88 = enum case for VerticalFlowLayout.HorizontalPlacement.center(_:);
  v38 = v112;
  v89 = v125 + 104;
  v87 = v36;
  v36(v111);
  v39 = sub_10000C518(&unk_100944F30);
  v40 = *(v10 + 72);
  v41 = v10;
  v42 = *(v10 + 80);
  v43 = (v42 + 32) & ~v42;
  v84 = v42;
  v85 = v39;
  v83 = v43 + v40;
  v44 = swift_allocObject();
  *(v44 + 16) = v119;
  v86 = v43;
  sub_100750C84();
  v127[0] = v44;
  v45 = sub_100257A60(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v46 = sub_10000C518(&unk_100944F40);
  v47 = sub_100016BFC();
  v48 = v109;
  v81 = v46;
  v80 = v47;
  v49 = v121;
  v82 = v45;
  sub_1007543A4();
  v50 = v124;
  sub_100750CE4();
  v51 = *(v41 + 8);
  v105 = v41 + 8;
  v79 = v51;
  v51(v48, v49);
  v52 = *(v35 + 8);
  v125 = v35 + 8;
  v52(v37, v38);
  v78 = *(v13 + 8);
  v78(v33, v34);
  sub_1000F4268(&v128);
  sub_10000C620(&v131);
  if (*(v50 + 176) == 1)
  {
    v53 = v38;
    v54 = v52;
    v55 = v33;
    if (qword_100921238 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v98, qword_1009813E0);
    v56 = [v122 traitCollection];
    sub_100753C14();

    v57 = v99;
    v132 = v99;
    v133 = v97;
    v58 = sub_10000D134(&v131);
    v95(v58, v96, v57);
    sub_10074FC74();
    sub_10000C620(&v131);
    v59 = v102;
    sub_10074CD04();
    sub_10074CCE4();
    v93(v59, v104);
    v60 = v132;
    v61 = v133;
    v62 = sub_10000C888(&v131, v132);
    v129 = v60;
    v130 = *(v61 + 8);
    v63 = sub_10000D134(&v128);
    (*(*(v60 - 8) + 16))(v63, v62, v60);
    v127[4] = &protocol witness table for Double;
    v127[3] = &type metadata for Double;
    v127[0] = 0;
    v90(v55, v91, v34);
    v87(v37, v88, v53);
    v64 = swift_allocObject();
    *(v64 + 16) = v119;
    sub_100750C84();
    v126 = v64;
    v65 = v48;
    v66 = v121;
    sub_1007543A4();
    v67 = v124;
    v68 = v34;
    v69 = v106;
    sub_100750CE4();
    v79(v65, v66);
    v54(v37, v53);
    v78(v55, v68);
    sub_1000F4268(v127);
    sub_10000C620(&v128);
    v70 = v123;
    v72 = v123[2];
    v71 = v123[3];
    if (v72 >= v71 >> 1)
    {
      v70 = sub_1002561C8(v71 > 1, v72 + 1, 1, v123, &unk_100923060, &unk_1007A5CA0, &type metadata accessor for VerticalFlowLayout.Child);
    }

    *(v70 + 2) = v72 + 1;
    (*(v107 + 32))(&v70[v120 + v72 * v101], v69, v108);
    sub_10000C620(&v131);
  }

  else
  {
    v67 = v124;
  }

  v73 = v113;
  sub_100750CD4();
  v74 = v116;
  sub_100750404();
  sub_10000C888((v67 + 96), *(v67 + 120));
  v75 = v115;
  sub_100536120();
  sub_100750564();
  (*(v117 + 8))(v75, v118);
  (*(v114 + 8))(v73, v74);
  sub_10000C620(&v134);
  return a3;
}

unint64_t sub_100257818()
{
  result = qword_10092F0C0;
  if (!qword_10092F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092F0C0);
  }

  return result;
}

uint64_t sub_100257874(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
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

uint64_t sub_1002578BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10025795C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_100257998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_1002579E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100257A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100257AA8(uint64_t result)
{
  v2 = *(v1 + 25);
  *(v1 + 25) = result;
  if (v2 != (result & 1))
  {
    v3 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v4 = *(v1 + 40);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(v3 & 1, ObjectType, v4);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100257B40()
{
  sub_10000C4F0(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_100257BCC(void *result)
{
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = *(v1 + 16);
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentInset];
    v7 = v5 + v6;
    [v3 contentOffset];

    return sub_100257AA8(v7 + v8 <= v2);
  }

  return result;
}

void sub_100257C60(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ProductLockupCollectionViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView);
    if (v7)
    {
      sub_100009D34();
      v15 = a1;
      v8 = v7;
      sub_100753A94();

      if ((v17 & 1) == 0)
      {
        MaxY = CGRectGetMaxY(v16);
        *(v3 + 16) = MaxY;
        *(v3 + 24) = 0;
        [a3 _systemContentInset];
        v11 = v10;
        [a3 contentInset];
        v13 = v11 + v12;
        [a3 contentOffset];
        sub_100257AA8(v13 + v14 <= MaxY);
      }
    }
  }
}

uint64_t sub_100257DA4(uint64_t a1)
{
  sub_10000C518(&unk_1009231A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007AC000;
  *(v2 + 32) = sub_100258B38();
  *(v2 + 40) = sub_100257F14(a1);
  *(v2 + 48) = sub_100258FC8();
  return v2;
}

void sub_100257E1C(char a1)
{
  byte_10092F2A0 = a1 & 1;
  v1 = [objc_opt_self() sharedCoordinator];
  [v1 notify];
}

void sub_100257EE8(uint64_t *a1@<X8>)
{
  v2 = 28271;
  if (*v1)
  {
    v2 = 6710895;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100257F14(uint64_t a1)
{
  v2 = sub_100741494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A7210;
  v7 = v6;
  type metadata accessor for ActionDebugSetting();
  v8 = swift_allocObject();
  strcpy((v8 + 56), "Clear Recents");
  *(v8 + 70) = -4864;
  *(v8 + 72) = 0u;
  *(v8 + 88) = 0u;
  *(v8 + 104) = sub_100258238;
  *(v8 + 112) = 0;
  sub_100741484();
  v9 = sub_100741464();
  v11 = v10;
  v12 = *(v3 + 8);
  v27 = v2;
  v28 = v3 + 8;
  v12(v5, v2);
  v13 = v12;
  v29 = v9;
  v30 = v11;
  sub_1007544E4();
  *(v7 + 32) = v8;
  v14 = v7;
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  strcpy((v17 + 56), "Show Recents");
  *(v17 + 69) = 0;
  *(v17 + 70) = -5120;
  *(v17 + 80) = 0;
  *(v17 + 88) = 0;
  *(v17 + 72) = 0;
  *(v17 + 96) = sub_100259660;
  *(v17 + 104) = v16;

  sub_100741484();
  v18 = sub_100741464();
  v20 = v19;

  v13(v5, v2);
  v29 = v18;
  v30 = v20;
  sub_1007544E4();

  *(v14 + 40) = v17;
  type metadata accessor for DebugSection();
  v21 = swift_allocObject();
  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v13(v5, v27);
  *(v21 + 16) = v22;
  *(v21 + 24) = v24;
  strcpy((v21 + 32), "Search Focus");
  *(v21 + 45) = 0;
  *(v21 + 46) = -5120;
  *(v21 + 48) = v14;
  return v21;
}

void sub_100258238()
{
  sub_10074C844();
  sub_1007526E4();
  sub_10074C834();
}

void sub_100258280(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100259668(a3);
  }
}

uint64_t sub_1002582DC()
{
  if (qword_100920698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = xmmword_10092F2B8;
  v9 = *&qword_10092F2C8;
  v7 = xmmword_10092F2A8;
  v10 = qword_10092F2D8;
  v11 = xmmword_10092F2A8;
  v0 = qword_10092F2C8;
  sub_1000C0664(&v11, &v6);
  v1 = v0;

  v2 = sub_1002588CC();
  v4 = v3;
  sub_1000C0714(&v11);

  if (v4)
  {
    return 0x20746C7561666544;
  }

  v6 = v2;
  return sub_100754714();
}

void sub_1002583F4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = HIBYTE(a3) & 0xF;
    v5 = a2 & 0xFFFFFFFFFFFFLL;
    if ((a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : v5)
    {
      if ((a3 & 0x1000000000000000) != 0)
      {

        v9 = sub_1003B76E0(a2, a3, 10);
        v13 = v29;

LABEL_65:
        if (v13)
        {
          v9 = 0;
        }

        goto LABEL_67;
      }

      if ((a3 & 0x2000000000000000) != 0)
      {
        v30[0] = a2;
        v30[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (a2 == 43)
        {
          if (v4)
          {
            if (--v4)
            {
              v9 = 0;
              v20 = v30 + 1;
              while (1)
              {
                v21 = *v20 - 48;
                if (v21 > 9)
                {
                  break;
                }

                v22 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  break;
                }

                v9 = v22 + v21;
                if (__OFADD__(v22, v21))
                {
                  break;
                }

                ++v20;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (a2 != 45)
        {
          if (v4)
          {
            v9 = 0;
            v25 = v30;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

        if (v4)
        {
          if (--v4)
          {
            v9 = 0;
            v14 = v30 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              v16 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                break;
              }

              v9 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                break;
              }

              ++v14;
              if (!--v4)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }
      }

      else
      {
        if ((a2 & 0x1000000000000000) != 0)
        {
          v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v7 = sub_100754594();
        }

        v8 = *v7;
        if (v8 == 43)
        {
          if (v5 >= 1)
          {
            v4 = v5 - 1;
            if (v5 != 1)
            {
              v9 = 0;
              if (v7)
              {
                v17 = v7 + 1;
                while (1)
                {
                  v18 = *v17 - 48;
                  if (v18 > 9)
                  {
                    goto LABEL_63;
                  }

                  v19 = 10 * v9;
                  if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v9 = v19 + v18;
                  if (__OFADD__(v19, v18))
                  {
                    goto LABEL_63;
                  }

                  ++v17;
                  if (!--v4)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_55;
            }

            goto LABEL_63;
          }

          goto LABEL_74;
        }

        if (v8 != 45)
        {
          if (v5)
          {
            v9 = 0;
            if (v7)
            {
              while (1)
              {
                v23 = *v7 - 48;
                if (v23 > 9)
                {
                  goto LABEL_63;
                }

                v24 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v24 + v23;
                if (__OFADD__(v24, v23))
                {
                  goto LABEL_63;
                }

                ++v7;
                if (!--v5)
                {
                  goto LABEL_55;
                }
              }
            }

            goto LABEL_55;
          }

LABEL_63:
          v9 = 0;
          LOBYTE(v4) = 1;
          goto LABEL_64;
        }

        if (v5 >= 1)
        {
          v4 = v5 - 1;
          if (v5 != 1)
          {
            v9 = 0;
            if (v7)
            {
              v10 = v7 + 1;
              while (1)
              {
                v11 = *v10 - 48;
                if (v11 > 9)
                {
                  goto LABEL_63;
                }

                v12 = 10 * v9;
                if ((v9 * 10) >> 64 != (10 * v9) >> 63)
                {
                  goto LABEL_63;
                }

                v9 = v12 - v11;
                if (__OFSUB__(v12, v11))
                {
                  goto LABEL_63;
                }

                ++v10;
                if (!--v4)
                {
                  goto LABEL_64;
                }
              }
            }

LABEL_55:
            LOBYTE(v4) = 0;
LABEL_64:
            v13 = v4;
            goto LABEL_65;
          }

          goto LABEL_63;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }

  v9 = 0;
  v13 = 1;
LABEL_67:
  if (qword_100920698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1002589D4(v9, v13 & 1);
  swift_endAccess();
}

uint64_t sub_10025875C@<X0>(uint64_t a1@<X8>)
{
  if (byte_10092F2E0 != 2)
  {
    return sub_1007544E4();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1002587E4()
{
  if (qword_100920698 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1002589D4(0, 1);
  result = swift_endAccess();
  byte_10092F2E0 = 2;
  return result;
}

id sub_100258874()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002588CC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v4 = sub_100753064();
  v5 = [v2 objectForKey:v4];

  if (v5)
  {
    sub_100754314();
    swift_unknownObjectRelease();
    sub_10000C610(v8, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  sub_10000C518(&unk_100923520);
  v6 = swift_dynamicCast();
  if ((v6 & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v6 ^ 1;
  v3(v8, &v9);
  if (BYTE8(v8[0]))
  {
    return v1;
  }

  else
  {
    return *&v8[0];
  }
}

void sub_1002589D4(uint64_t a1, char a2)
{
  v8 = a1;
  v9 = a2 & 1;
  v3 = *(v2 + 32);
  (*(v2 + 40))(&v6, &v8);
  if (v7)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_100754794();
  }

  v5 = sub_100753064();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

id sub_100258A84()
{
  result = [objc_opt_self() standardUserDefaults];
  *&xmmword_10092F2A8 = 0xD00000000000001ELL;
  *(&xmmword_10092F2A8 + 1) = 0x8000000100772AB0;
  *&xmmword_10092F2B8 = 0;
  BYTE8(xmmword_10092F2B8) = 1;
  qword_10092F2C8 = result;
  unk_10092F2D0 = sub_100258B08;
  qword_10092F2D8 = 0;
  return result;
}

uint64_t sub_100258B08@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((*(result + 8) & 1) != 0 || (v2 = *result, *result <= 1))
  {
    v2 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_100258B38()
{
  v0 = sub_100741494();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1007A5CF0;
  v38 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  v33 = 28271;
  v34 = 0xE200000000000000;
  sub_1007544E4();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v4 = swift_allocObject();
  *(v4 + 72) = 0;
  *(v4 + 56) = 28271;
  *(v4 + 64) = 0xE200000000000000;
  *(v4 + 80) = sub_1002595E0;
  *(v4 + 88) = v3;
  v5 = v36;
  *(v4 + 16) = v35;
  *(v4 + 32) = v5;
  *(v4 + 48) = v37;
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  v33 = 6710895;
  v34 = 0xE300000000000000;
  sub_1007544E4();
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  v7 = swift_allocObject();
  *(v7 + 72) = 0;
  *(v7 + 56) = 6710895;
  *(v7 + 64) = 0xE300000000000000;
  *(v7 + 80) = sub_1002595E0;
  *(v7 + 88) = v6;
  v8 = v36;
  *(v7 + 16) = v35;
  *(v7 + 32) = v8;
  *(v7 + 48) = v37;
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  v9 = v38;
  type metadata accessor for MenuDebugSetting();
  v10 = swift_allocObject();
  *(v10 + 56) = 0xD000000000000014;
  *(v10 + 64) = 0x8000000100772AD0;
  *(v10 + 72) = v9;
  *(v10 + 80) = sub_100257E88;
  *(v10 + 88) = 0;
  sub_100741484();
  v11 = sub_100741464();
  v13 = v12;
  v14 = v29;
  v15 = *(v28 + 8);
  v15(v2, v29);
  v33 = v11;
  v34 = v13;
  sub_1007544E4();
  v16 = v36;
  *(v10 + 16) = v35;
  *(v10 + 32) = v16;
  *(v10 + 48) = v37;
  v17 = 28271;
  if (byte_10092F2A0)
  {
    v17 = 6710895;
  }

  v18 = 0xE200000000000000;
  if (byte_10092F2A0)
  {
    v18 = 0xE300000000000000;
  }

  v33 = v17;
  v34 = v18;

  sub_1007544E4();
  v19 = *(v10 + 72);
  v32 = &v35;

  sub_100618DA4(sub_10025ADCC, v31, v19);

  sub_10000C8CC(&v35, &unk_1009276E0);
  v20 = v30;
  *(v30 + 32) = v10;
  *&v35 = v20;
  sub_1004A00F8(_swiftEmptyArrayStorage);
  v21 = v35;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_100741484();
  v23 = sub_100741464();
  v25 = v24;
  v15(v2, v14);
  *(v22 + 16) = v23;
  *(v22 + 24) = v25;
  strcpy((v22 + 32), "Search Landing");
  *(v22 + 47) = -18;
  *(v22 + 48) = v21;
  return v22;
}

void *sub_100258FC8()
{
  v35 = sub_100741494();
  v0 = *(v35 - 8);
  __chkstk_darwin(v35);
  v2 = &v31 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007AC000;
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v4 = sub_10058C9D0(0x6E6F697469736F50, 0xE800000000000000, sub_1002582DC, 0, sub_1002583F4, 0);
  v33 = v3;
  *(v3 + 32) = v4;
  v41 = _swiftEmptyArrayStorage;
  sub_1007545C4();
  v36 = 0x6465726564726F62;
  v37 = 0xE800000000000000;
  sub_1007544E4();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for MenuItemDebugSetting();
  v6 = swift_allocObject();
  *(v6 + 72) = 0;
  *(v6 + 56) = 0x6465726564726F62;
  *(v6 + 64) = 0xE800000000000000;
  *(v6 + 80) = sub_1002595B4;
  *(v6 + 88) = v5;
  v7 = v39;
  *(v6 + 16) = v38;
  *(v6 + 32) = v7;
  *(v6 + 48) = v40;
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  v36 = 0x64656C6C6966;
  v37 = 0xE600000000000000;
  sub_1007544E4();
  v8 = swift_allocObject();
  *(v8 + 16) = 1;
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  *(v9 + 56) = 0x64656C6C6966;
  *(v9 + 64) = 0xE600000000000000;
  *(v9 + 80) = sub_1002595B4;
  *(v9 + 88) = v8;
  v10 = v39;
  *(v9 + 16) = v38;
  *(v9 + 32) = v10;
  *(v9 + 48) = v40;
  sub_1007545A4();
  sub_1007545D4();
  sub_1007545E4();
  sub_1007545B4();
  v11 = v41;
  type metadata accessor for MenuDebugSetting();
  v12 = swift_allocObject();
  strcpy((v12 + 56), "Display Style");
  *(v12 + 70) = -4864;
  *(v12 + 72) = v11;
  *(v12 + 80) = sub_10025875C;
  *(v12 + 88) = 0;
  sub_100741484();
  v13 = sub_100741464();
  v15 = v14;
  v16 = *(v0 + 8);
  v34 = v0 + 8;
  v16(v2, v35);
  *&v38 = v13;
  *(&v38 + 1) = v15;
  v17 = sub_1007544E4();
  if (byte_10092F2E0 == 2)
  {
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    v18 = 0x6465726564726F62;
    if (byte_10092F2E0)
    {
      v18 = 0x64656C6C6966;
    }

    v19 = 0xE800000000000000;
    if (byte_10092F2E0)
    {
      v19 = 0xE600000000000000;
    }

    v36 = v18;
    v37 = v19;
    v17 = sub_1007544E4();
  }

  v32 = 0x8000000100772A70;
  __chkstk_darwin(v17);
  *(&v31 - 2) = &v38;

  sub_100618DA4(sub_1002595C4, (&v31 - 4), v11);

  sub_10000C8CC(&v38, &unk_1009276E0);
  v20 = v33;
  *(v33 + 40) = v12;
  type metadata accessor for ActionDebugSetting();
  v21 = swift_allocObject();
  *(v21 + 56) = 0xD000000000000010;
  *(v21 + 64) = 0x8000000100772A90;
  *(v21 + 72) = 0u;
  *(v21 + 88) = 0u;
  *(v21 + 104) = sub_1002587E4;
  *(v21 + 112) = 0;
  sub_100741484();
  v22 = sub_100741464();
  v24 = v23;
  v25 = v35;
  v16(v2, v35);
  *&v38 = v22;
  *(&v38 + 1) = v24;
  sub_1007544E4();
  *(v20 + 48) = v21;
  type metadata accessor for DebugSection();
  v26 = swift_allocObject();
  sub_100741484();
  v27 = sub_100741464();
  v29 = v28;
  v16(v2, v25);
  v26[2] = v27;
  v26[3] = v29;
  v26[4] = 0xD000000000000019;
  v26[5] = v32;
  v26[6] = v20;
  return v26;
}

uint64_t sub_1002595E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100259620()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100259668(uint64_t a1)
{
  v142 = sub_100746F04();
  v144 = *(v142 - 1);
  __chkstk_darwin(v142);
  v141 = v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10000C518(&unk_100923210);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = v91 - v3;
  v4 = sub_10000C518(&qword_10092F310);
  __chkstk_darwin(v4 - 8);
  v128 = v91 - v5;
  v6 = sub_1007524F4();
  __chkstk_darwin(v6 - 8);
  v127 = v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_100742CF4();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1007493D4();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v123 = v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10074A304();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v122 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752614();
  __chkstk_darwin(v11 - 8);
  v143 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v13 - 8);
  v119 = v91 - v14;
  v115 = sub_10074F4D4();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100748FA4();
  __chkstk_darwin(v16 - 8);
  v113 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10074EA34();
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v112 = v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10074EAB4();
  __chkstk_darwin(v107);
  v110 = v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1007457B4();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v108 = v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10074DBC4();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v106 = v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_10074C7B4();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v136 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v23 - 8);
  v145 = v91 - v24;
  v25 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v25 - 8);
  v135 = v91 - v26;
  v27 = sub_10000C518(&qword_10092F318);
  __chkstk_darwin(v27 - 8);
  v134 = v91 - v28;
  v29 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v29 - 8);
  v99 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v137 = v91 - v32;
  v33 = sub_1007439C4();
  __chkstk_darwin(v33 - 8);
  v94 = v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v35 - 8);
  v92 = v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v93 = v91 - v38;
  v39 = sub_10000C518(&qword_10092F320);
  __chkstk_darwin(v39 - 8);
  v133 = v91 - v40;
  v41 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v41 - 8);
  v43 = v91 - v42;
  v44 = sub_10074E984();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = v91 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100741494();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v51 = v91 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074C844();
  v132 = a1;
  sub_1007526E4();
  v52 = v150;
  sub_10000C518(&unk_1009231A0);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1007A5CF0;
  sub_100741484();
  v53 = sub_100741464();
  v55 = v54;
  (*(v49 + 8))(v51, v48);
  *&v146 = v53;
  *(&v146 + 1) = v55;
  sub_1007544E4();
  v56 = *(v45 + 104);
  v95 = v47;
  v56(v47, enum case for Shelf.ContentType.action(_:), v44);
  v57 = *(v45 + 56);
  v96 = v43;
  v57(v43, 1, 1, v44);
  v58 = sub_100743AA4();
  (*(*(v58 - 8) + 56))(v133, 1, 1, v58);
  v105 = v52;
  v59 = sub_10074C824();
  v60 = *(v59 + 16);
  if (v60)
  {
    v149 = _swiftEmptyArrayStorage;
    sub_10001E5F4(0, v60, 0);
    v61 = v149;
    v140 = *(v144 + 16);
    v62 = (*(v144 + 80) + 32) & ~*(v144 + 80);
    v91[1] = v59;
    v63 = v59 + v62;
    v64 = *(v144 + 72);
    v144 += 16;
    v138 = (v144 - 8);
    v139 = v64;
    do
    {
      v65 = v141;
      v66 = v142;
      v140(v141, v63, v142);
      v148 = 0;
      v146 = 0u;
      v147 = 0u;
      sub_100746EF4();
      sub_1007525F4();
      v67 = sub_100752914();
      (*(*(v67 - 8) + 56))(v145, 1, 1, v67);
      v68 = sub_10074ECD4();
      swift_allocObject();
      v69 = sub_10074EC94();
      (*v138)(v65, v66);
      v149 = v61;
      v71 = v61[2];
      v70 = v61[3];
      if (v71 >= v70 >> 1)
      {
        sub_10001E5F4((v70 > 1), v71 + 1, 1);
        v61 = v149;
      }

      *(&v147 + 1) = v68;
      v148 = sub_10025AD1C(&qword_100928558, &type metadata accessor for Action);
      *&v146 = v69;
      v61[2] = v71 + 1;
      sub_100012160(&v146, &v61[5 * v71 + 4]);
      v63 += v139;
      --v60;
    }

    while (v60);
  }

  v72 = sub_100743914();
  v73 = *(*(v72 - 8) + 56);
  v73(v93, 1, 1, v72);
  v73(v92, 1, 1, v72);
  sub_100743954();
  sub_100743A94();
  swift_allocObject();
  v144 = sub_100743A64();
  v74 = sub_100741264();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v77 = (v75 + 56);
  v140 = v74;
  v76(v137, 1, 1, v74);
  v141 = v77;
  v142 = v76;
  v78 = sub_100746384();
  (*(*(v78 - 8) + 56))(v134, 1, 1, v78);
  v79 = sub_100741454();
  (*(*(v79 - 8) + 56))(v135, 1, 1, v79);
  v80 = sub_100752914();
  (*(*(v80 - 8) + 56))(v145, 1, 1, v80);
  v76(v99, 1, 1, v74);
  (*(v97 + 104))(v136, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v98);
  (*(v100 + 104))(v106, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v101);
  (*(v103 + 104))(v108, enum case for ShelfBackground.none(_:), v104);
  sub_10000C518(&qword_10092F328);
  swift_allocObject();
  sub_1007522E4();
  *&v146 = _swiftEmptyArrayStorage;
  sub_10025AD1C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  sub_10000C518(&qword_10092F330);
  sub_10025AD64();
  sub_1007543A4();
  (*(v109 + 104))(v112, enum case for Shelf.ContentsMetadata.none(_:), v111);
  sub_100748F94();
  sub_10074EB84();
  swift_allocObject();
  v81 = v137;
  *(v102 + 32) = sub_10074EB04();
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  (*(v114 + 104))(v116, enum case for FlowPage.page(_:), v115);
  (v142)(v81, 1, 1, v140);
  v82 = sub_100743FE4();
  (*(*(v82 - 8) + 56))(v119, 1, 1, v82);
  v146 = 0u;
  v147 = 0u;
  sub_1007525F4();
  (*(v117 + 104))(v122, enum case for FlowPresentationContext.infer(_:), v118);
  (*(v120 + 104))(v123, enum case for FlowAnimationBehavior.infer(_:), v121);
  (*(v124 + 104))(v126, enum case for FlowOrigin.inapp(_:), v125);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v83 = sub_100742C84();
  v150 = 0u;
  v151 = 0u;
  sub_1007524E4();
  v84 = sub_1007524B4();
  (*(*(v84 - 8) + 56))(v128, 1, 1, v84);
  v85 = sub_100743684();
  swift_allocObject();
  v86 = sub_100743674();
  *(&v151 + 1) = v85;
  *&v150 = v86;
  sub_100742C24();
  sub_10000C8CC(&v150, &unk_100923520);
  v87 = v129;
  v88 = v131;
  v89 = v132;
  sub_1007526E4();
  sub_1003C1424(v83, 1, v89, v87);

  return (*(v130 + 8))(v87, v88);
}

uint64_t sub_10025AD1C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10025AD64()
{
  result = qword_10093CAF0;
  if (!qword_10093CAF0)
  {
    sub_10000C724(&qword_10092F330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093CAF0);
  }

  return result;
}

char *sub_10025ADE4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView]];

  return v13;
}

void sub_10025B00C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView];
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel);
  if (qword_100920308 != -1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel);
    swift_once();
    v2 = v4;
  }

  [v2 setTextColor:qword_100929680];
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_hasChevron) = 0;
  sub_10013F464(v3);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight) = 0;
}

id sub_10025B28C(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26FootnoteCollectionViewCell_footnoteView];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "isHighlighted");
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_isHighlighted) = v5;
  if (v5 && *(v4 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLightensOnHighlight) == 1)
  {
    if (qword_100920310 != -1)
    {
      swift_once();
    }

    v6 = &qword_100929688;
  }

  else
  {
    if (qword_100920308 != -1)
    {
      swift_once();
    }

    v6 = &qword_100929680;
  }

  return [*(v4 + OBJC_IVAR____TtC22SubscribePageExtension12FootnoteView_textLabel) setTextColor:*v6];
}

uint64_t type metadata accessor for FootnoteCollectionViewCell()
{
  result = qword_10092F360;
  if (!qword_10092F360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10025B470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_100752914();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_10000C8CC(a1, &unk_100925380);
    v14 = sub_100412104(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100675E4C();
        v18 = v22;
      }

      (*(v10 + 32))(v8, *(v18 + 56) + *(v10 + 72) * v16, v9);
      sub_1003DDA84(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_10000C8CC(v8, &unk_100925380);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_100673C1C(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_10025B6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100674064(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_10074F7D4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10041276C(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1006763B0();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_10074F7D4();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1003DDC30(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_10074F7D4();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_10025B880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_10000C610(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1006743B4(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_10000C8CC(a1, &unk_100923520);
    sub_1003DD6A4(a2, a3, v9);

    return sub_10000C8CC(v9, &unk_100923520);
  }

  return result;
}

id sub_10025B950()
{
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon] = 0;

  v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  v1 = sub_100414900(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  swift_beginAccess();
  *&v0[v2] = v1;

  v3 = &v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v3 = 0;
  v3[8] = 1;
  result = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
  if (result)
  {
    [result reloadData];
    return [v0 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10025BA1C(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

id sub_10025BAC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_10025BB24();

  return v2;
}

id sub_10025BB24()
{
  v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths;
  if (!*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16))
  {
    return 0;
  }

  [v0 bounds];
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v2 = sub_100749104();
  sub_10000D0FC(v2, qword_10097FD50);
  v3 = [v0 traitCollection];
  sub_100749044();
  v5 = v4;

  v6 = *&v0[v1];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = objc_opt_self();
    v9 = objc_opt_self();
    v10 = objc_opt_self();

    v11 = 0.0;
    v12 = 32;
    do
    {
      v13 = *(v6 + v12);
      v14 = [v8 absoluteDimension:{v13, v27}];
      v15 = [v8 absoluteDimension:v5];
      v16 = [v9 sizeWithWidthDimension:v14 heightDimension:v15];

      v17 = [v10 itemWithLayoutSize:v16];
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100753304();
      }

      v11 = v11 + v13;
      sub_100753344();

      v12 += 8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
  }

  v19 = objc_opt_self();
  v20 = [v19 absoluteDimension:v11];
  v21 = [v19 absoluteDimension:v5];
  v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

  v23 = objc_opt_self();
  sub_100016C60(0, &qword_100923478);
  isa = sub_100753294().super.isa;

  v25 = [v23 horizontalGroupWithLayoutSize:v22 subitems:isa];

  v18 = [objc_opt_self() sectionWithGroup:v25];
  return v18;
}

void sub_10025BF04()
{
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon])
  {
    swift_beginAccess();

    v2 = sub_10025C3BC(v1);

    v3 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths;
    v4 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] + 16);
    if (v2 >> 62)
    {
      if (v4 != sub_100754664())
      {
        goto LABEL_31;
      }
    }

    else if (v4 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_pageTraits];
    if (!v5)
    {
      goto LABEL_31;
    }

    swift_unknownObjectRetain();
    [v0 bounds];
    CGRectGetMinX(v53);
    [v0 bounds];
    CGRectGetWidth(v54);
    v6 = [v0 traitCollection];
    [v6 displayScale];

    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator];
    if (v7)
    {
      swift_unknownObjectRetain();
      v8 = v7;
      [v0 bounds];
      sub_100753B24();
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;
      swift_unknownObjectRelease();
      [v8 setFrame:{v10, v12, v14, v16}];
    }

    v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator];
    if (v17)
    {
      v18 = v17;
      [v0 bounds];
      CGRectGetMaxY(v55);
      swift_unknownObjectRetain();
      [v0 bounds];
      sub_100753B24();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      swift_unknownObjectRelease();
      [v18 setFrame:{v20, v22, v24, v26}];
    }

    [v5 pageMarginInsets];
    v28 = v27;
    [v5 pageMarginInsets];
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v30 = v28 + v29;
      if (!v4)
      {
        goto LABEL_19;
      }

      v31 = *&v0[v3];
      if (v4 <= *(v31 + 16))
      {
        if (v4 >= 4)
        {
          v32 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          v33 = (v31 + 48);
          v34 = v4 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v30 = v30 + *(v33 - 2) + *(v33 - 1) + *v33 + v33[1];
            v33 += 4;
            v34 -= 4;
          }

          while (v34);
          if (v4 == v32)
          {
LABEL_19:
            [v0 bounds];
            Width = CGRectGetWidth(v56);
            v39 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
            v40 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
            if (v40)
            {
              v41 = (Width - v30) * 0.5;
              if (v41 < 0.0)
              {
                v42 = 0.0;
              }

              else
              {
                v42 = v41;
              }

              v43 = v40;
              [v0 bounds];
              MinY = CGRectGetMinY(v57);
              [v0 bounds];
              v45 = CGRectGetWidth(v58);
              if (v45 >= v30)
              {
                v46 = v30;
              }

              else
              {
                v46 = v45;
              }

              [v0 bounds];
              [v43 setFrame:{v42, MinY, v46, CGRectGetHeight(v59)}];

              v47 = *&v0[v39];
              if (v47)
              {
                v48 = v47;
                [v0 bounds];
                [v48 setScrollEnabled:CGRectGetWidth(v60) < v30];

                if (v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] == 1)
                {
                  v49 = *&v0[v39];
                  if (v49)
                  {
                    v50 = v49;

                    v51 = [v50 collectionViewLayout];

                    [v51 invalidateLayout];
                    swift_unknownObjectRelease();
LABEL_32:

                    return;
                  }

LABEL_40:
                  __break(1u);
                  return;
                }

                swift_unknownObjectRelease();
LABEL_31:

                goto LABEL_32;
              }

LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_38:
            __break(1u);
            goto LABEL_39;
          }
        }

        else
        {
          v32 = 0;
        }

        v35 = v4 - v32;
        v36 = (v31 + 8 * v32 + 32);
        do
        {
          v37 = *v36++;
          v30 = v30 + v37;
          --v35;
        }

        while (v35);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_38;
  }
}

void *sub_10025C3BC(uint64_t a1)
{
  v25 = a1;
  v24 = sub_10074F7D4();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  v7 = sub_100746844();
  v8 = v7;
  v26 = _swiftEmptyArrayStorage;
  if (!(v7 >> 62))
  {
    v23 = v7 & 0xFFFFFFFFFFFFFF8;
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_24:
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  v9 = sub_100754664();
  if (!v9)
  {
    goto LABEL_24;
  }

LABEL_3:
  v10 = 0;
  v22 = v8 & 0xC000000000000001;
  v11 = (v1 + 8);
  v12 = _swiftEmptyArrayStorage;
  do
  {
    v21 = v12;
    v13 = v10;
    while (1)
    {
      if (v22)
      {
        v1 = sub_100754574();
        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v13 >= *(v23 + 16))
        {
          goto LABEL_22;
        }

        v1 = *(v8 + 8 * v13 + 32);

        v10 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v14 = v9;
      sub_10074E854();
      v15 = sub_10074F7C4();
      v16 = *v11;
      (*v11)(v6, v24);
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      sub_10074E854();
      if (*(v25 + 16))
      {
        v17 = sub_10041276C(v3);
        if (v18)
        {
          break;
        }
      }

      v16(v3, v24);
      ++v13;
      v9 = v14;
      if (v10 == v14)
      {
        v12 = v21;
        goto LABEL_25;
      }
    }

    v19 = *(*(v25 + 56) + 8 * v17);

    v16(v3, v24);
    v1 = v19;
LABEL_16:
    sub_100753284();
    v9 = v14;
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
      v9 = v14;
    }

    sub_100753344();
    v12 = v26;
  }

  while (v10 != v9);
LABEL_25:

  return v12;
}

uint64_t sub_10025C78C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_10025CA48(void (*a1)(char *, uint64_t), void (*a2)(char *, uint64_t), uint64_t a3, void *a4)
{
  v5 = v4;
  v87 = a4;
  ObjectType = swift_getObjectType();
  v80 = sub_100746854();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10074F7D4();
  v89 = *(v92 - 8);
  __chkstk_darwin(v92);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v77 - v12;
  v81 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_isApplyingModel;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_isApplyingModel) = 1;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_artworkLoader) = a2;

  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_objectGraph) = a3;
  v84 = a2;

  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon) = a1;
  v85 = a3;

  v88 = a1;
  v14 = sub_100746844();
  v15 = v14;
  v93[0] = _swiftEmptyArrayStorage;
  if (v14 >> 62)
  {
LABEL_16:
    v16 = sub_100754664();
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_3:
      v90 = v5;
      v17 = 0;
      v5 = (v89 + 1);
      v91 = (v89 + 1);
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          sub_100754574();
          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v20 = v93[0];
            v5 = v90;
            goto LABEL_18;
          }
        }

        else
        {
          if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v18 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_13;
          }
        }

        sub_10074E854();
        v19 = sub_10074F7C4();
        (*v5)(v13, v92);
        if (v19)
        {
          sub_1007545A4();
          sub_1007545D4();
          v5 = v91;
          sub_1007545E4();
          sub_1007545B4();
        }

        else
        {
        }

        ++v17;
        if (v18 == v16)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_18:

  v21 = v86;
  if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
  {
    v22 = sub_100754664();
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v22 = *(v20 + 16);
    if (!v22)
    {
      goto LABEL_32;
    }
  }

  if (v22 < 1)
  {
    __break(1u);
    goto LABEL_64;
  }

  v23 = 0;
  v90 = v20 & 0xC000000000000001;
  v91 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  v24 = v88;
  ++v89;
  v82 = v22;
  v83 = v20;
  do
  {
    if (v90)
    {
      sub_100754574();
    }

    else
    {
    }

    sub_10074E854();
    v30 = v91;
    swift_beginAccess();
    if (*(v5 + v30))[2] && (sub_10041276C(v21), (v31))
    {
      swift_endAccess();
      v32 = *v89;

      v32(v21, v92);
    }

    else
    {
      swift_endAccess();
      (*v89)(v21, v92);
      v25 = v85;
      Badge.enrich(objectGraph:)(v85);
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = v24;
      v26[4] = v84;
      v26[5] = v25;
      v26[6] = v87;
      v27 = sub_100016C60(0, &qword_100926D00);

      v21 = v86;

      v28 = v5;
      swift_unknownObjectRetain();
      v29 = sub_100753774();
      v93[3] = v27;
      v93[4] = &protocol witness table for OS_dispatch_queue;
      v93[0] = v29;
      sub_100752D64();
      v22 = v82;

      sub_10000C620(v93);
    }

    ++v23;
  }

  while (v22 != v23);
LABEL_32:

  v33 = v87;
  v34 = swift_getObjectType();
  v35 = [v33 snapshotPageTraitEnvironment];
  *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_pageTraits) = v35;
  swift_unknownObjectRelease();
  if (sub_100746814() & 1) != 0 && (sub_100746834())
  {
    v36 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator;
    v37 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator);
    if (!v37)
    {
      sub_10025BA1C([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator);
      v37 = *(v5 + v36);
      if (!v37)
      {
        goto LABEL_42;
      }
    }

    sub_100016C60(0, &qword_100923500);
    v38 = v37;
    v39 = sub_100753DB4();
    [v38 setBackgroundColor:v39];
  }

  else
  {
    v40 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator;
    v41 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator);
    if (v41)
    {
      [v41 removeFromSuperview];
      v39 = *(v5 + v40);
    }

    else
    {
      v39 = 0;
    }

    *(v5 + v40) = 0;
  }

LABEL_42:
  if ((sub_100746824() & 1) == 0 && *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) != 1 || (sub_100746834() & 1) == 0)
  {
    v46 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator;
    v47 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator);
    if (v47)
    {
      [v47 removeFromSuperview];
      v45 = *(v5 + v46);
    }

    else
    {
      v45 = 0;
    }

    *(v5 + v46) = 0;
    goto LABEL_52;
  }

  v42 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator;
  v43 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator);
  if (v43 || (sub_10025BA1C([objc_allocWithZone(UIView) init], &OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator), (v43 = *(v5 + v42)) != 0))
  {
    sub_100016C60(0, &qword_100923500);
    v44 = v43;
    v45 = sub_100753DB4();
    [v44 setBackgroundColor:v45];

LABEL_52:
  }

  v48 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
  v49 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView);
  if (!v49)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = v49;
  v51 = v87;
  [v87 pageMarginInsets];
  v53 = v52;
  [v51 pageMarginInsets];
  v55 = v54;
  [v51 pageMarginInsets];
  v57 = v56;
  [v51 pageMarginInsets];
  [v50 setContentInset:{v53, v55, v57}];

  swift_beginAccess();

  v59 = sub_10025C3BC(v58);

  v60 = v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  if ((*(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken + 8) & 1) != 0 || (v61 = *v60, v61 != sub_10025E2A0(v59)))
  {
    *v60 = sub_10025E2A0(v59);
    v60[8] = 0;
    [v5 bounds];
    v63 = *(v5 + v48);
    if (!v63)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v64 = v62;
    [v63 contentInset];
    v66 = *(v5 + v48);
    if (!v66)
    {
LABEL_67:
      __break(1u);
      return;
    }

    v67 = v64 - v65;
    [v66 contentInset];
    v69 = v67 - v68;
    [v5 bounds];
    v71 = v70;
    v72 = v77;
    sub_100746864();
    sub_10025DB48(v59, v72, v87, v69, v71, ObjectType, v34);
    v74 = v73;
    (*(v78 + 8))(v72, v80);
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths) = v74;

    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 1;
  }

  v75 = *(v5 + v48);
  if (!v75)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v76 = v75;

  [v76 reloadData];

  [v5 setNeedsLayout];
  *(v5 + v81) = 0;
  if (*(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) == 1)
  {
    *(v5 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
    sub_10025CA48(v88, v84, v85, v87);
  }
}

void sub_10025D440(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_10074F7D4();
  __chkstk_darwin(v12 - 8);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {

    sub_10074E854();
    swift_beginAccess();

    sub_10025B6C0(v15, v14);
    swift_endAccess();
    if (*(a2 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_isApplyingModel) == 1)
    {

      *(a2 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 1;
    }

    else
    {
      sub_10025CA48(a3, a4, a5, a6);
    }
  }
}

uint64_t sub_10025D57C()
{
  if (qword_100921ED0 != -1)
  {
    swift_once();
  }

  v0 = sub_100752E44();
  sub_10000D0FC(v0, qword_1009832E8);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v3[3] = &type metadata for String;
  v3[0] = sub_1007547C4();
  v3[1] = v1;
  sub_100752424();
  sub_10000C8CC(v3, &unk_100923520);
  sub_100752D04();
}

uint64_t type metadata accessor for InformationRibbonCollectionViewCell()
{
  result = qword_10092F400;
  if (!qword_10092F400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10025D850()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10025D91C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v9 = sub_100749104();
  sub_10000D0FC(v9, qword_10097FD50);
  v10 = [a7 traitCollection];
  sub_100749044();

  return a1;
}

void (*sub_10025D9D4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7))(char *, uint64_t)
{
  result = sub_10025E1F8();
  if (result)
  {
    sub_10025CA48(result, a3, a4, a7);
  }

  return result;
}

uint64_t sub_10025DAE4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100754664();
  }

  return sub_100754584();
}

void sub_10025DB48(unint64_t a1, char *a2, void *a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_100746854();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v19)
  {
    return;
  }

  v20 = [a3 traitCollection];
  v21 = sub_100753804();

  if (v21)
  {
    if (!v18)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v23 = sub_100754664();
    if ((v23 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v23)
      {
        v25 = sub_100753324();
        *(v25 + 16) = v23;
        memset_pattern16((v25 + 32), &unk_1007B5300, 8 * v23);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v18)
  {
    v24 = sub_100754664();
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v22 = floor(a4 / v24);
  if (*&v22 <= 136.0)
  {
    if (v24 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v24)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v13 = _swiftEmptyArrayStorage[2];
        if (!v13)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v30 = type metadata accessor for BadgeView(0);
    v31 = 0;
    v14 = a1 & 0xC000000000000001;
    a2 = _swiftEmptyArrayStorage;
    v32 = 0.0;
    while (1)
    {
      if (v14)
      {
        v33 = sub_100754574();
      }

      else
      {
        v33 = *(a1 + 8 * v31 + 32);
      }

      v34 = sub_100395BAC(v33, v31, 0, v24, a3, a4, a5, v30, a7);

      if (v34 >= 105.0)
      {
        if (v34 >= 136.0)
        {
          v35 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_100254EA4(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v35 = floor(v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v35 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v18 = *(a2 + 2);
      v36 = *(a2 + 3);
      v13 = v18 + 1;
      if (v18 >= v36 >> 1)
      {
        a2 = sub_100254EA4((v36 > 1), v18 + 1, 1, a2);
      }

      ++v31;
      *(a2 + 2) = v13;
      *&a2[8 * v18 + 32] = v35;
      v32 = v32 + v35;
      if (v24 == v31)
      {
        a4 = a4 - v32;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        a3 = a2 + 32;
        v55 = _swiftEmptyArrayStorage;
        sub_10001E46C(0, v13, 0);
        v17 = 0;
        v38 = v55;
        a7 = v55[2];
        do
        {
          v39 = *(a3 + v17);
          v55 = v38;
          v40 = v38[3];
          if (&v17[a7] >= v40 >> 1)
          {
            sub_10001E46C((v40 > 1), &v17[a7 + 1], 1);
            v38 = v55;
          }

          v41 = v17 + 1;
          v38[2] = &v17[a7 + 1];
          *&v38[a7 + 4 + v17] = 136.0 - v39;
          v17 = v41;
        }

        while (v13 != v41);
        v42 = &v41[a7];
        if (&v41[a7 - 1] <= 2)
        {
          v43 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v43 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        v44 = (v38 + 6);
        a5 = 0.0;
        v45 = v42 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v44 - 2) + *(v44 - 1) + *v44 + v44[1];
          v44 += 4;
          v45 -= 4;
        }

        while (v45);
        if (v42 != v43)
        {
LABEL_54:
          v46 = &v41[a7 - v43];
          v47 = &v38[v43 + 4];
          do
          {
            v48 = *v47++;
            a5 = a5 + v48;
            --v46;
          }

          while (v46);
        }

        if (v13 <= v42)
        {
          a1 = 4;
          while (1)
          {
            v49 = *&v38[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_10025DA94(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(a4 * (v49 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v19 = sub_100754664();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v54 = v22;
  (*(v14 + 16))(v17, a2, v13);
  if ((*(v14 + 88))(v17, v13) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v24 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v24)
    {
      return;
    }

    v26 = sub_100753324();
    *(v26 + 16) = v24;
    v27 = (v26 + 32);
    if (v24 < 4)
    {
      v28 = 0;
      v29 = v54;
LABEL_67:
      v53 = v24 - v28;
      do
      {
        *v27++ = v29;
        --v53;
      }

      while (v53);
      return;
    }

    v28 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    v27 += v24 & 0x7FFFFFFFFFFFFFFCLL;
    v29 = v54;
    v50 = vdupq_lane_s64(v54, 0);
    v51 = (v26 + 48);
    v52 = v24 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 4;
    }

    while (v52);
    if (v24 != v28)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v24 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v24)
    {
      v37 = sub_100753324();
      *(v37 + 16) = v24;
      memset_pattern16((v37 + 32), &unk_1007B52F0, 8 * v24);
    }

    (*(v14 + 8))(v17, v13);
  }
}

uint64_t sub_10025E190()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10025E1F8()
{
  v0 = *(sub_10074EB24() + 16);

  if (v0)
  {
    result = sub_10074EB24();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    sub_10000C824(result + 32, v3);

    sub_10000C518(&qword_1009242A0);
    sub_100746874();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  return 0;
}

uint64_t sub_10025E2A0(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_7:

      v5._countAndFlagsBits = sub_10074E884();
      if (v5._object)
      {
        object = v5._object;
      }

      else
      {
        v5._countAndFlagsBits = 0;
        object = 0xE000000000000000;
      }

      v5._object = object;
      sub_1007531B4(v5);

      v7._countAndFlagsBits = sub_10074E8A4();
      if (v7._object)
      {
        v8 = v7._object;
      }

      else
      {
        v7._countAndFlagsBits = 0;
        v8 = 0xE000000000000000;
      }

      v7._object = v8;
      sub_1007531B4(v7);

      ++v3;
      if (v4 == i)
      {
        goto LABEL_20;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    v4 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v9 = sub_100753214();

  return v9;
}

void sub_10025E420()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_itemLayoutContext;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon] = 0;
  v4 = &v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken];
  *v4 = 0;
  v4[8] = 1;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_artworkLoader] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_objectGraph] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_pageTraits] = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *&v0[v5] = sub_100414900(_swiftEmptyArrayStorage);
  v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_isApplyingModel] = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_minimumBadgeWidths] = _swiftEmptyArrayStorage;
  v28.receiver = v0;
  v28.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v27[4] = sub_10025F2A0;
  v27[5] = v7;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 1107296256;
  v27[2] = sub_1002B6430;
  v27[3] = &unk_10086E2E8;
  v9 = _Block_copy(v27);
  v10 = v6;

  v11 = [v8 initWithSectionProvider:v9];
  _Block_release(v9);

  v12 = [objc_allocWithZone(UICollectionView) initWithFrame:v11 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView;
  v14 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView] = v12;
  v15 = v12;

  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v15 setShowsHorizontalScrollIndicator:0];

  v16 = *&v10[v13];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v16 setAlwaysBounceVertical:0];
  v17 = *&v10[v13];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  type metadata accessor for BadgeCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = v17;
  v20 = sub_100753064();
  [v19 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v20];

  v21 = *&v10[v13];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v10[v13];
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v25 setDataSource:v10];
  v26 = *&v10[v13];
  if (!v26)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v26 setDelegate:v10];
  if (*&v10[v13])
  {
    [v10 addSubview:?];

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_10025E810()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_badgeCollectionView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon) = 0;
  v3 = v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_currentMinimumBadgeSizeCacheToken;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_topSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_bottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsCollectionViewLayoutUpdate) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_pageTraits) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
  *(v0 + v4) = sub_100414900(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_needsToReApplyModel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_isApplyingModel) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10025E970(void *a1, uint64_t a2)
{
  v5 = sub_10074F7D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon))
  {
    v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_objectGraph);
    if (v13)
    {
      v43 = v10;
      v44 = a2;
      v14 = OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_nativelyRenderedBadges;
      swift_beginAccess();
      v42 = v2;

      v16 = sub_10025C3BC(v15);

      type metadata accessor for BadgeCollectionViewCell();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v41 = v17;
        v18 = a1;
        v19 = sub_100741774();
        if (v16 >> 62)
        {
          v38 = v19;
          v20 = sub_100754664();
          if (v38 < v20)
          {
LABEL_6:
            v39 = v20;
            v21 = sub_100741774();
            v22 = v16 & 0xC000000000000001;
            v40 = v18;
            if ((v16 & 0xC000000000000001) == 0)
            {
              if ((v21 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v21 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {

                goto LABEL_10;
              }

              __break(1u);
              goto LABEL_42;
            }

            sub_100754574();
LABEL_10:
            sub_10074E854();

            v23 = sub_10074F7C4();
            v24 = *(v6 + 8);
            v24(v12, v43);
            if (v23)
            {
              v25 = sub_100741774();
              if (v22)
              {
                sub_100754574();
              }

              else
              {
                if ((v25 & 0x8000000000000000) != 0)
                {
LABEL_44:
                  __break(1u);
                  goto LABEL_45;
                }

                if (v25 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_45:
                  __break(1u);
                  return;
                }
              }

              sub_10074E854();

              v26 = v42;
              swift_beginAccess();
              v27 = *(v26 + v14);
              if (*(v27 + 16))
              {
                v28 = sub_10041276C(v8);
                if (v29)
                {
                  v30 = *(*(v27 + 56) + 8 * v28);
                  swift_endAccess();

                  v24(v8, v43);
                  goto LABEL_26;
                }
              }

              swift_endAccess();
              v24(v8, v43);
            }

            v31 = sub_100741774();
            if (v22)
            {
              v30 = sub_100754574();
LABEL_25:

LABEL_26:

              if ((sub_100746824() & 1) != 0 || *(v42 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_alwaysDisplayBottomSeparator) == 1)
              {
                v32 = sub_100746834();
              }

              else
              {
                v32 = 1;
              }

              v33 = sub_100741774();
              if (sub_100746814())
              {
                v34 = sub_100746834();
              }

              else
              {
                v34 = 1;
              }

              v35 = sub_10074E794();
              v36 = v41;
              v37 = v39;
              sub_100394A70(v30, v33, 0, v39, v35, v13);
              [*&v36[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView] setHidden:v34 & 1];
              [*&v36[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView] setHidden:v32 & 1];
              [*&v36[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView] setHidden:v33 == v37 - 1];
              [v36 setNeedsLayout];

              goto LABEL_37;
            }

            if ((v31 & 0x8000000000000000) == 0)
            {
              if (v31 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v30 = *(v16 + 8 * v31 + 32);

                goto LABEL_25;
              }

              goto LABEL_43;
            }

LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        else
        {
          v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19 < v20)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_37:
    }
  }
}

uint64_t sub_10025EE44(void *a1)
{
  v3 = sub_10074F7D4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v18 - v8;
  type metadata accessor for BadgeCollectionViewCell();
  result = swift_dynamicCastClass();
  if (result)
  {
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_artworkLoader))
    {
      v11 = *(result + OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView);
      v12 = *(v11 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView);
      if (v12)
      {
        v13 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgeType;
        swift_beginAccess();
        (*(v4 + 16))(v9, v11 + v13, v3);
        (*(v4 + 104))(v6, enum case for BadgeType.artwork(_:), v3);
        sub_10025F220(&qword_10092F418, &type metadata accessor for BadgeType);
        v18[0] = a1;

        v14 = v12;
        sub_100753274();
        sub_100753274();
        if (v18[3] == v18[1] && v18[4] == v18[2])
        {
          v15 = *(v4 + 8);
          v15(v6, v3);
          v15(v9, v3);
        }

        else
        {
          v16 = sub_100754754();
          v17 = *(v4 + 8);
          v17(v6, v3);
          v17(v9, v3);

          if ((v16 & 1) == 0)
          {
LABEL_9:
          }
        }

        sub_1007433C4();
        sub_10025F220(&qword_100925570, &type metadata accessor for ArtworkView);
        sub_100744274();
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_10025F164()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension35InformationRibbonCollectionViewCell_informationRibbon);
  if (v1)
  {
    swift_beginAccess();

    v3 = sub_10025C3BC(v2);

    if (v3 >> 62)
    {
      v1 = sub_100754664();
    }

    else
    {
      v1 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  return v1;
}

uint64_t sub_10025F220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10025F268()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F2A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10025F2C4()
{
  type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_10025F300(int a1, int a2, int a3, uint64_t a4, id a5)
{
  if ([a5 horizontalSizeClass] == 1)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  }

  else
  {
    type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundView();
  }

  sub_10006D514(a4, a5);
  return v7;
}

id sub_10025F3DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for IPadMediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell()
{
  result = qword_10092F448;
  if (!qword_10092F448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10025F4AC()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10092F458);
  v1 = sub_10000D0FC(v0, qword_10092F458);
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980CF0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10025F574(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = sub_100750534();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_hasMoreButton] = 1;
  v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = 3;
  v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 1;
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString] = 0;
  v21 = &v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreTapHandler];
  *v21 = 0;
  v21[1] = 0;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v17, qword_100980CF0);
  type metadata accessor for FadeInDynamicTypeButton();
  v23 = *(v18 + 16);
  v23(v20, v22, v17);
  v24 = a1;
  v25 = sub_1006A0AA8(v20, v24);

  v26 = v25;
  v47._countAndFlagsBits = 0x4D5F4E4F49544341;
  v47._object = 0xEB0000000045524FLL;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_1007458B4(v47, v48);
  v27 = sub_100753064();

  [v26 setTitle:v27 forState:0];

  [v26 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v26 setAdjustsImageWhenHighlighted:0];

  *&v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] = v26;
  sub_100745C84();
  v28 = sub_100745C64();
  *&v6[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] = v28;
  v29 = v28;
  sub_100745C34();

  v30 = type metadata accessor for ExpandableTextView();
  v46.receiver = v6;
  v46.super_class = v30;
  v31 = objc_msgSendSuper2(&v46, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 setUserInteractionEnabled:1];
  [v35 setBackgroundColor:v24];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
  [*&v35[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] setNumberOfLines:*&v35[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines]];
  [*&v35[v36] setLineBreakMode:0];
  [*&v35[v36] setTextAlignment:4];
  if (qword_1009206A0 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v17, qword_10092F458);
  v23(v16, v37, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_100016B4C(v16, v45, &unk_100928A40);
  sub_100745BA4();
  sub_10000C8CC(v16, &unk_100928A40);
  [v35 addSubview:*&v35[v36]];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton;
  v39 = [*&v35[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] traitCollection];
  v40 = [v39 preferredContentSizeCategory];

  sub_100753964();
  v41 = *&v35[v38];
  [v41 addTarget:v35 action:"moreFrom:" forControlEvents:64];

  v42 = *&v35[v38];
  sub_100747764();

  [v35 addSubview:*&v35[v38]];
  return v35;
}

void sub_10025FCF0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel);
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
      sub_1007481E4();

      sub_100748194();
      sub_100748184();
      v15 = sub_100748204();
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
  v9 = sub_100753094();
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

      v13 = sub_100754754();

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
  v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString) = v15;
  v18 = v15;

  if (v15)
  {
    sub_1007481C4();

LABEL_27:
    v19 = sub_100753064();

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:
  [v6 setText:v19];

  sub_100260550();
}

void sub_10025FF08(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel);
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
      v9 = sub_1007481E4();
      v10 = v17;
      sub_100748184();
      v11 = objc_allocWithZone(v9);
      v12 = sub_1007481F4();
LABEL_11:
      v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
      *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString) = v12;
      v14 = v12;

      if (v12)
      {
        v15 = sub_100748174();

        v18 = a1;
      }

      else
      {
        v18 = a1;
        v15 = v18;
      }

      [v4 setAttributedText:v15];

      sub_100260550();
      v8 = v18;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  sub_100016C60(0, &qword_10092E500);
  v16 = a1;
  v7 = sub_100753FC4();

  v8 = v16;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
}

id sub_1002601F8()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for ExpandableTextView();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  sub_1007477B4();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  [v10 setFrame:{v3, v5, CGRectGetWidth(v19), v12}];
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];
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
      v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString];
      if (v15)
      {
        v16 = v15;
        [v10 numberOfLines];
        [v10 lineBreakMode];
        v17 = sub_1007481A4();
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
      sub_1007477B4();
      sub_100753B34();
      [v13 setFrame:?];
      *(v13 + qword_100944E70) = v17 == 1;
      return sub_1006A0630();
    }
  }

  return result;
}

id sub_100260550()
{
  v7 = sub_10000C518(&unk_100928A40);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v47 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel] attributedText];
  if (v11)
  {
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_hasMoreButton] == 1 && v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] == 1)
    {
      if (v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] == 1)
      {
        v12 = v11;
        [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setHidden:0];
LABEL_23:

        return [v0 setNeedsLayout];
      }

      v12 = v11;
      v14 = [v11 length];
      v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton];
      if (!v14)
      {
        [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setHidden:1];
        goto LABEL_23;
      }

      v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
      type metadata accessor for ExpandableTextView();
      sub_1007477B4();
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
        v28 = &v27[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
        *v28 = UIEdgeInsetsZero.top;
        v28[1] = left;
        v28[2] = bottom;
        v28[3] = right;
        *&v27[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = v20;
        v29 = &v27[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
        *v29 = v4;
        *(v29 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v27[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v25;
        *&v27[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v2;
        v48.receiver = v27;
        v48.super_class = v26;
        v1 = objc_msgSendSuper2(&v48, "init");
        if (qword_1009206A8 == -1)
        {
LABEL_15:
          v30 = qword_10092F470;
          v31 = [qword_10092F470 objectForKey:v1];
          if (v31)
          {
            v32 = v31;

            v22 = *&v32[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements + 8];
          }

          else
          {
            v33 = qword_1009206A0;
            v32 = v2;
            if (v33 != -1)
            {
              swift_once();
            }

            v34 = sub_100750534();
            v35 = sub_10000D0FC(v34, qword_10092F458);
            v36 = *(v34 - 8);
            (*(v36 + 16))(v10, v35, v34);
            (*(v36 + 56))(v10, 0, 1, v34);
            sub_100750964();
            sub_100750984();
            sub_100750974();
            v38 = v37;
            v40 = v39;
            v42 = v41;

            sub_10000C8CC(v10, &unk_100928A40);
            v22 = top + bottom + v38;
            v43 = type metadata accessor for ExpandableTextView.CacheValue();
            v44 = objc_allocWithZone(v43);
            v45 = &v44[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
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

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_moreButton] setHidden:1];
  return [v0 setNeedsLayout];
}

id sub_100260B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExpandableTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id (*sub_100260C50(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) numberOfLines];
  return sub_100260CB0;
}

id (*sub_100260CF8(void *a1))(void *a1, uint64_t a2)
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) lineBreakMode];
  return sub_100260D58;
}

id sub_100260D7C()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) font];

  return v1;
}

void sub_100260DC0(void *a1)
{
  [*(*v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setFont:a1];
}

void (*sub_100260E14(void *a1))(id *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel);
  a1[1] = v3;
  *a1 = [v3 font];
  return sub_100260E7C;
}

void sub_100260E7C(id *a1)
{
  v1 = *a1;
  [a1[1] setFont:?];
}

uint64_t sub_100260F2C(uint64_t a1)
{
  swift_getObjectType();
  sub_100016B4C(a1, v11, &unk_100923520);
  if (!v12)
  {
    sub_10000C8CC(v11, &unk_100923520);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins);
  v4 = &v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
  if (*(v1 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins) != *&v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins] || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || *(v1 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines) != *&v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] || *(v1 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize) != *&v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize] || *(v1 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize + 8) != *&v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize + 8] || (sub_100016C60(0, &qword_1009327F0), v5 = *&v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection], v6 = sub_100753FC4(), v5, (v6 & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = *&v10[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText];
  v8 = sub_100753FC4();

  return v8 & 1;
}

Swift::Int sub_10026114C()
{
  sub_100754894();
  sub_1007535C4();
  sub_100754844(*(v0 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines));
  v1 = v0 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize;
  v2 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_100754864(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_100754864(*&v3);
  sub_100753FD4();
  sub_100753FD4();
  return sub_100754874();
}

uint64_t sub_1002612CC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_100016B4C(a1, v17, &unk_100923520);
  v4 = v18;
  if (v18)
  {
    v5 = sub_10000C888(v17, v18);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_100754734();
    (*(v6 + 8))(v9, v4);
    sub_10000C620(v17);
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
    sub_100016B4C(a1, v17, &unk_100923520);
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
      sub_10000C8CC(v17, &unk_100923520);
    }
  }

  return 0;
}

uint64_t sub_1002614F0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10000C8CC(v10, &unk_100923520);
  return v8 & 1;
}

Swift::Int sub_1002615AC()
{
  sub_100754894();
  v1 = (v0 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements);
  v2 = *(v0 + OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_100754864(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_100754864(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_100754864(*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_100754864(*&v5);
  return sub_100754874();
}

id sub_1002616AC()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_10092F470 = result;
  return result;
}

void sub_1002616E0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString;
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_languageAwareString);
  if (v5)
  {
    v6 = v5;
    v7 = sub_1007481C4();
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
  v11 = sub_1007481C4();
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
    v17 = sub_1007481D4();

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

    v21 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel);
    if (v3)
    {
      v22 = sub_100748174();
    }

    else
    {
      v22 = 0;
    }

    [v21 setAttributedText:v22];

    sub_100260550();
    return;
  }

  if (v7 != v11 || v9 != v13)
  {
    v15 = sub_100754754();

    if (v15)
    {
      return;
    }

    goto LABEL_18;
  }
}

unint64_t sub_100261A04(void *a1)
{
  v3 = sub_100753064();
  v4 = [a1 dequeueReusableCellWithIdentifier:v3];

  if (!v4)
  {
    v5 = objc_allocWithZone(UITableViewCell);
    v6 = sub_100753064();
    v4 = [v5 initWithStyle:0 reuseIdentifier:v6];
  }

  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension33GladiatorValidationViewController_ruleNames);
  v8 = v4;
  result = sub_100741754();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v7 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v10 = [v8 textLabel];

  if (v10)
  {
    v11 = sub_100753064();

    [v10 setText:v11];
  }

  else
  {
  }

  return v8;
}

unint64_t sub_100261E58()
{
  v1 = v0;
  v2 = sub_100744F24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33GladiatorValidationViewController_rules];
  result = sub_100741754();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v6 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v3 + 16))(v5, v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * result, v2);
  v8 = sub_10074F7E4();
  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension33GladiatorValidationViewController_events];
  v10 = type metadata accessor for RuleResultsViewController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_textView] = 0;
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_rule] = v8;
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension25RuleResultsViewController_events] = v9;
  v15.receiver = v11;
  v15.super_class = v10;

  v12 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v13 = [v1 navigationController];
  if (v13)
  {
    v14 = v13;
    [v13 pushViewController:v12 animated:1];

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_1002620A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
  sub_100747A44();
  v2 = sub_100753064();

  [v1 setText:v2];
}

double sub_1002621AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_10074CD14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747A44();
  sub_100038D38();
  if (qword_100921168 != -1)
  {
    swift_once();
  }

  v9 = sub_100750534();
  sub_10000D0FC(v9, qword_100981170);
  v10 = [a4 traitCollection];
  sub_100753C14();

  v11 = sub_10074F3F4();
  v18 = v11;
  v19 = sub_100262450(&qword_10092AC70, &type metadata accessor for Feature);
  v12 = sub_10000D134(v17);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_10074FC74();
  sub_10000C620(v17);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v6 + 8))(v8, v5);
  sub_10000C888(v17, v18);
  sub_100750414();
  v14 = v13;
  sub_10000C620(v17);
  return v14;
}

uint64_t sub_100262450(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1002624E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v70 = a2;
  v71 = a1;
  v64 = sub_10074F704();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10074CD14();
  v66 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v52 - v6;
  __chkstk_darwin(v7);
  v53 = &v52 - v8;
  v9 = sub_100748914();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074FCD4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074AA24();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10074AA44();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921838 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v17, qword_100982398);
  v23 = *(v18 + 16);
  v56 = v20;
  v23(v20, v22, v17);
  (*(v14 + 16))(v16, v70, v13);
  sub_100747304();
  swift_getKeyPath();
  sub_100746914();

  v24 = v78;
  v25 = sub_1007537D4();

  v26 = &enum case for AchievementGroupView.Size.phone(_:);
  if ((v25 & 1) == 0)
  {
    v26 = &enum case for AchievementGroupView.Size.pad(_:);
  }

  (*(v10 + 104))(v12, *v26, v9);
  v27 = sub_100748924();
  v28 = objc_allocWithZone(v27);
  v29 = sub_100748904();
  v79 = v27;
  v80 = &protocol witness table for UIView;
  v78 = v29;
  v30 = sub_100747314();
  v81._object = 0x8000000100773260;
  v81._countAndFlagsBits = 0xD000000000000032;
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  sub_10074B194(v81, v30, v82);
  v31 = sub_100038D38();
  if (qword_100921210 != -1)
  {
    swift_once();
  }

  v32 = sub_100750534();
  sub_10000D0FC(v32, qword_100981368);
  swift_getKeyPath();
  sub_100746914();

  sub_100753C04();
  swift_unknownObjectRelease();
  v33 = sub_10074F3F4();
  v77[3] = v33;
  v70 = sub_100263490(&qword_10092AC70, &type metadata accessor for Feature);
  v77[4] = v70;
  v34 = sub_10000D134(v77);
  v35 = *(v33 - 8);
  v36 = *(v35 + 104);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v68 = v36;
  v67 = v35 + 104;
  v36(v34);
  sub_10074FC74();
  v65 = v31;
  sub_10000C620(v77);
  v37 = v53;
  sub_10074CD04();
  sub_10074CCE4();
  v38 = v59;
  v66 = *(v66 + 8);
  (v66)(v37, v59);
  swift_getKeyPath();
  sub_100746914();

  v39 = v76[0];
  sub_1006546E0();

  if (qword_100921218 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v32, qword_100981380);
  swift_getKeyPath();
  sub_100746914();

  sub_100753C04();
  swift_unknownObjectRelease();
  v76[3] = v33;
  v76[4] = v70;
  v40 = sub_10000D134(v76);
  v68(v40, v69, v33);
  sub_10074FC74();
  sub_10000C620(v76);
  v41 = v55;
  sub_10074CD04();
  sub_10074CCE4();
  (v66)(v41, v38);
  sub_1007472F4();
  if (qword_100921220 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v32, qword_100981398);
  swift_getKeyPath();
  sub_100746914();

  sub_100753C04();
  swift_unknownObjectRelease();
  v75[3] = v33;
  v75[4] = v70;
  v42 = sub_10000D134(v75);
  v68(v42, v69, v33);
  sub_10074FC74();
  sub_10000C620(v75);
  v43 = v57;
  sub_10074CD04();
  sub_10074CCE4();
  (v66)(v43, v38);
  v44 = sub_100750F34();
  swift_allocObject();
  v45 = sub_100750F14();
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v73 = v44;
  v72 = v45;
  v46 = v58;
  sub_10074AA34();
  swift_getKeyPath();
  v47 = v62;
  sub_100746914();

  sub_10074F674();
  (*(v63 + 8))(v47, v64);
  swift_getKeyPath();
  sub_100746914();

  sub_100263490(&unk_10092F610, &type metadata accessor for AchievementSummaryLayout);
  v48 = v61;
  sub_100750404();
  v50 = v49;
  swift_unknownObjectRelease();
  (*(v60 + 8))(v46, v48);
  return v50;
}

uint64_t sub_100263050(uint64_t a1)
{
  v2 = sub_10074AA24();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F704();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074FCD4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  sub_100747324();
  sub_100263490(&unk_100943360, &type metadata accessor for AchievementSummary);
  result = sub_1007468B4();
  v16 = v26;
  if (v26)
  {
    v17 = sub_1007472E4();
    if (*(v17 + 16))
    {
      (*(v9 + 16))(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

      (*(v9 + 32))(v14, v11, v8);
      swift_getKeyPath();
      sub_100746914();

      v18 = v26;
      v19 = sub_100753804();

      if (v19)
      {
        sub_1002624E4(v16, v14, a1);
      }

      else
      {
        swift_getKeyPath();
        sub_100746914();

        sub_10074F674();
        (*(v23 + 8))(v7, v5);
        if (qword_100921838 != -1)
        {
          swift_once();
        }

        v20 = v25;
        v21 = sub_10000D0FC(v25, qword_100982398);
        v22 = v24;
        (*(v24 + 16))(v4, v21, v20);
        sub_10007DC04();
        sub_10074A9F4();
        swift_unknownObjectRelease();

        (*(v22 + 8))(v4, v20);
      }

      return (*(v9 + 8))(v14, v8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100263490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002634D8(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
    v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100009D34();
      v8 = v4;
      v9 = sub_100753FC4();

      v5 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_100263590(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView);
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1002640B0(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v6 = v2;
    v7 = [v5 superview];
    if (v7)
    {
      v8 = v7;
      sub_100009D34();
      v9 = v3;
      v10 = sub_100753FC4();

      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          v12 = v11;
          [v11 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v13 = v2;
  }

  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    [v3 addSubview:v14];
  }

  sub_10062FDFC();
  [v3 setNeedsLayout];
}

void (*sub_10026372C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002637A0;
}

void sub_1002637A0(uint64_t a1, char a2)
{
  v4 = *a1;
  v30 = *(*(a1 + 8) + *(a1 + 16));
  v5 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1002640B0(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v8 = v4;
      v9 = v30;
      v10 = [v7 superview];
      if (v10)
      {
        v11 = v10;
        sub_100009D34();
        v12 = v5;
        v13 = sub_100753FC4();

        if (v13)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v4;
      v23 = v30;
    }

    swift_unknownObjectWeakAssign();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      [v5 addSubview:v25];
    }

    sub_10062FDFC();
    [v5 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1002640B0(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v16 = v30;
      v17 = [v7 superview];
      if (v17)
      {
        v18 = v17;
        sub_100009D34();
        v19 = v5;
        v20 = sub_100753FC4();

        if (v20)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v24 = v30;
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      [v5 addSubview:v28];
    }

    sub_10062FDFC();
    [v5 setNeedsLayout];

    v27 = v30;
  }
}

char *sub_100263A90(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{a1, a2, a3, a4}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  v9 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v13 = v9;
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC22SubscribePageExtension36AdvertSearchResultCollectionViewCell_advertsContentView]];

  return v13;
}

id sub_100263D68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdvertSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t (*sub_100263E04(uint64_t **a1))()
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
  v2[4] = sub_10026372C(v2);
  return sub_1000181A8;
}

uint64_t sub_100263E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100263EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100263F34(uint64_t *a1))()
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
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1002640B0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1002640F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v44 = a2;
  v4 = sub_10074AE04();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074BCC4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v62 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
  v59 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
  v56 = enum case for MetadataRibbonItemViewType.starRating(_:);
  v57 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
  v54 = enum case for MetadataRibbonItemViewType.divider(_:);
  v55 = enum case for MetadataRibbonItemViewType.textLabel(_:);
  v61 = a1 & 0xC000000000000001;
  v53 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
  v51 = a1;
  if (v13)
  {
    v52 = v9;
    v9 = v13;
    v14 = 0;
    v60 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = (v7 + 11);
    v50 = v7++;
    while (1)
    {
      if (v61)
      {
        sub_100754574();
        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          v24 = v62;
          v13 = v9;
          v9 = v52;
          v7 = v50;
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *(v60 + 16))
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v13 = sub_100754664();
          goto LABEL_3;
        }

        v16 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_32;
        }
      }

      sub_1007478B4();
      v17 = (*v15)(v12, v6);
      if (v17 == v59 || v17 == v58 || v17 == v57 || v17 == v56 || v17 == v55 || v17 == v54 || v17 == v53)
      {
        sub_1007545A4();
        sub_1007545D4();
        a1 = v51;
        sub_1007545E4();
        sub_1007545B4();
      }

      else
      {

        (*v7)(v12, v6);
      }

      ++v14;
      if (v16 == v9)
      {
        goto LABEL_33;
      }
    }
  }

  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = _swiftEmptyArrayStorage;
LABEL_35:
  v25 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  v26 = v48;
  swift_beginAccess();
  *&v26[v25] = v24;

  if (v13)
  {
    v52 = v13;
    v27 = 0;
    v28 = (v7 + 11);
    ++v7;
    v29 = _swiftEmptyArrayStorage;
    do
    {
      v50 = v29;
      v12 = v27;
      while (1)
      {
        if (v61)
        {
          sub_100754574();
          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v12 >= *(v60 + 16))
          {
            goto LABEL_70;
          }

          v27 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_69;
          }
        }

        sub_1007478B4();
        v30 = (*v28)(v9, v6);
        if (v30 == v59)
        {
          type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
          v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
          v32 = &unk_1009231E8;
          goto LABEL_60;
        }

        if (v30 == v58)
        {
          type metadata accessor for MetadataRibbonEditorsChoiceView();
          v31 = type metadata accessor for MetadataRibbonEditorsChoiceView;
          v32 = &unk_1009231E0;
          goto LABEL_60;
        }

        if (v30 == v57)
        {
          type metadata accessor for MetadataRibbonIconWithLabelView(0);
          v31 = type metadata accessor for MetadataRibbonIconWithLabelView;
          v32 = &unk_1009231D8;
          goto LABEL_60;
        }

        if (v30 == v56)
        {
          type metadata accessor for MetadataRibbonStarRatingView();
          v31 = type metadata accessor for MetadataRibbonStarRatingView;
          v32 = &unk_1009231F0;
          goto LABEL_60;
        }

        if (v30 == v55)
        {
          type metadata accessor for MetadataRibbonTagView();
          v31 = type metadata accessor for MetadataRibbonTagView;
          v32 = &unk_1009231C8;
          goto LABEL_60;
        }

        if (v30 == v54)
        {
          type metadata accessor for MetadataRibbonBarView();
          v31 = type metadata accessor for MetadataRibbonBarView;
          v32 = &unk_1009231D0;
          goto LABEL_60;
        }

        if (v30 == v53)
        {
          break;
        }

        (*v7)(v9, v6);
        ++v12;
        if (v27 == v52)
        {
          v29 = v50;
          goto LABEL_67;
        }
      }

      type metadata accessor for MetadataRibbonHighlightedTextView();
      v31 = type metadata accessor for MetadataRibbonHighlightedTextView;
      v32 = &unk_1009231B8;
LABEL_60:
      v33 = sub_100266870(v32, v31);
      v34 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_100749DC4();
      sub_1007478D4();
      sub_100749DA4();

      v29 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100254D50(0, v29[2] + 1, 1, v29);
      }

      v36 = v29[2];
      v35 = v29[3];
      if (v36 >= v35 >> 1)
      {
        v29 = sub_100254D50((v35 > 1), v36 + 1, 1, v29);
      }

      v29[2] = (v36 + 1);
      v37 = &v29[2 * v36];
      v37[4] = v34;
      v37[5] = v33;
      a1 = v51;
    }

    while (v27 != v52);
  }

  else
  {
    v29 = _swiftEmptyArrayStorage;
  }

LABEL_67:
  v38 = v48;
  sub_100264DD4(v29);
  v40 = v46;
  v39 = v47;
  v41 = v45;
  (*(v46 + 16))(v45, v44, v47);
  v42 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v40 + 24))(&v38[v42], v41, v39);
  swift_endAccess();
  [v38 setNeedsLayout];
  (*(v40 + 8))(v41, v39);
  return [v38 setNeedsLayout];
}

uint64_t MetadataRibbonView.hasContent.getter()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v2 = *(v0 + v1);

  v3 = sub_1000F0AA8(0, v2);

  return v3 & 1;
}

uint64_t MetadataRibbonView.isInsideSearchAd.setter(char a1)
{
  v3 = sub_10074AE04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v1[v7] = a1;
  if (a1)
  {
    _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v4 + 24))(&v1[v9], v6, v3);
    swift_endAccess();
    [v1 setNeedsLayout];
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id sub_100264C58()
{
  v1 = v0;
  v2 = sub_10074AE04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);

  v8 = sub_10074ADE4();
  (*(v3 + 8))(v5, v2);
  result = sub_10018A9E8(v8, v6);
  v13 = (v12 >> 1) - v11;
  if (v12 >> 1 == v11)
  {
    goto LABEL_5;
  }

  if ((v12 >> 1) > v11)
  {
    v14 = (v10 + 16 * v11);
    do
    {
      v15 = *v14;
      v14 += 2;
      [v1 addSubview:v15];
      --v13;
    }

    while (v13);
LABEL_5:
    swift_unknownObjectRelease();
    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

id sub_100264DD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = 32;
    do
    {
      [*(v4 + v6) removeFromSuperview];
      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v1 + v3) = a1;

  return sub_100264C58();
}

uint64_t MetadataRibbonView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  v4 = sub_10074AE04();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100264EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  v5 = sub_10074AE04();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_100264F84(uint64_t a1, void **a2)
{
  v4 = sub_10074AE04();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 24))(&v9[v10], v8, v4);
  swift_endAccess();
  [v9 setNeedsLayout];
  return (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall MetadataRibbonView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_100750354();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10074AE04();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074AE14();
  v28 = *(v29 - 8);
  *&v5 = __chkstk_darwin(v29).n128_u64[0];
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v1;
  v46.super_class = ObjectType;
  v31 = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v5);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v11 = v7 + 40;
    while (v9 < *(v7 + 16))
    {
      v12 = *(v11 - 8);
      swift_getObjectType();
      v13 = v12;
      sub_100749D54();
      v36 = v42;
      v37 = v43;
      v38 = v44;
      v39 = v45;
      v34 = v40;
      v35 = v41;

      if (*(&v35 + 1))
      {
        v42 = v36;
        v43 = v37;
        v44 = v38;
        v45 = v39;
        v40 = v34;
        v41 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1002548E8(0, v10[2] + 1, 1, v10);
        }

        v15 = v10[2];
        v14 = v10[3];
        if (v15 >= v14 >> 1)
        {
          v10 = sub_1002548E8((v14 > 1), v15 + 1, 1, v10);
        }

        v10[2] = v15 + 1;
        v16 = &v10[11 * v15];
        v17 = v41;
        *(v16 + 2) = v40;
        *(v16 + 3) = v17;
        v18 = v42;
        v19 = v43;
        v20 = v44;
        *(v16 + 56) = v45;
        *(v16 + 5) = v19;
        *(v16 + 6) = v20;
        *(v16 + 4) = v18;
      }

      else
      {
        sub_10000C8CC(&v34, &qword_10092F668);
      }

      ++v9;
      v11 += 16;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v21 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v25 + 16))(v24, &v1[v21], v27);
    v22 = v26;
    sub_10074ADB4();
    sub_1007477B4();
    v23 = v30;
    sub_10074ADD4();
    (*(v32 + 8))(v23, v33);
    (*(v28 + 8))(v22, v29);
  }
}

uint64_t MetadataRibbonView.measurements(fitting:in:)(uint64_t a1)
{
  v29 = a1;
  v27 = sub_10074AE04();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10074AE14();
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v22 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    v9 = v4 + 40;
    while (v7 < *(v4 + 16))
    {
      v10 = *(v9 - 8);
      swift_getObjectType();
      v11 = v10;
      sub_100749D54();
      v32 = v38;
      v33 = v39;
      v34 = v40;
      v35 = v41;
      v30 = v36;
      v31 = v37;

      if (*(&v31 + 1))
      {
        v38 = v32;
        v39 = v33;
        v40 = v34;
        v41 = v35;
        v36 = v30;
        v37 = v31;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1002548E8(0, v8[2] + 1, 1, v8);
          v8 = result;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1002548E8((v12 > 1), v13 + 1, 1, v8);
          v8 = result;
        }

        v8[2] = v13 + 1;
        v14 = &v8[11 * v13];
        v15 = v37;
        *(v14 + 2) = v36;
        *(v14 + 3) = v15;
        v16 = v38;
        v17 = v39;
        v18 = v40;
        *(v14 + 56) = v41;
        *(v14 + 5) = v17;
        *(v14 + 6) = v18;
        *(v14 + 4) = v16;
      }

      else
      {
        result = sub_10000C8CC(&v30, &qword_10092F668);
      }

      ++v7;
      v9 += 16;
      if (v5 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v19 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
    v20 = v28;
    swift_beginAccess();
    (*(v25 + 16))(v23, v20 + v19, v27);
    v21 = v22;
    sub_10074ADB4();
    sub_10074ADC4();
    return (*(v24 + 8))(v21, v26);
  }

  return result;
}

uint64_t MetadataRibbonView.isInsideSearchAd.getter()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*MetadataRibbonView.isInsideSearchAd.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = sub_10074AE04();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v8 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_isInsideSearchAd;
  v4[9] = v7;
  v4[10] = v8;
  swift_beginAccess();
  return sub_100265C34;
}

void sub_100265C34(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    if (v4[*(v3 + 80)] == 1)
    {
      v6 = *(v3 + 64);
      v5 = *(v3 + 72);
      v7 = *(v3 + 56);
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      v8 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metrics;
      swift_beginAccess();
      (*(v6 + 24))(&v4[v8], v5, v7);
      swift_endAccess();
      [v4 setNeedsLayout];
      (*(v6 + 8))(v5, v7);
    }
  }

  free(*(v3 + 72));

  free(v3);
}

uint64_t type metadata accessor for MetadataRibbonView()
{
  result = qword_10092F698;
  if (!qword_10092F698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100265E08()
{
  result = sub_10074AE04();
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

uint64_t sub_100265EBC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10074F284();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7)
  {
    v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews);
    v9 = v7 & 0xFFFFFFFFFFFFFF8;
    if (v7 >> 62)
    {
      goto LABEL_24;
    }

    v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v10)
    {
      v11 = 0;
      v23 = v10;
      v24 = v7 & 0xC000000000000001;
      v17 = v3 + 1;
      v18 = v7;
      v12 = 32;
      v19 = v8;
      do
      {
        if (v24)
        {
          sub_100754574();
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            __break(1u);
LABEL_23:
            __break(1u);
LABEL_24:
            v10 = sub_100754664();
            goto LABEL_4;
          }
        }

        v13 = *(v8 + 16);
        if (v11 == v13)
        {

          break;
        }

        if (v11 >= v13)
        {
          goto LABEL_23;
        }

        v3 = *(v8 + v12);
        type metadata accessor for MetadataRibbonIconWithLabelView(0);
        if (swift_dynamicCastClass())
        {
          v14 = v3;
          v15 = sub_1007478F4();
          if (v15)
          {
            v3 = v15;
            v16 = v20;
            sub_10074F294();
            sub_10074F254();
            (*v17)(v16, v21);
            sub_10074F374();
            sub_1007442C4();
            sub_1007433C4();
            sub_100744244();
            swift_allocObject();
            swift_unknownObjectWeakInit();

            sub_1007441F4();

            sub_10000C8CC(v25, &unk_1009276E0);
            v7 = v18;
            v8 = v19;
          }

          else
          {
          }

          v10 = v23;
        }

        else
        {
        }

        ++v11;
        v12 += 16;
      }

      while (v10 != v11);
    }
  }

  return result;
}

uint64_t sub_100266218()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100266258(unint64_t a1, uint64_t a2)
{
  v34 = a2;
  v33 = sub_10074F284();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1007504F4();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074DDD4();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074BCC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  result = _swiftEmptyArrayStorage;
  if (!a1)
  {
    return result;
  }

  v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = sub_100754664();
    if (result)
    {
      goto LABEL_4;
    }

    return _swiftEmptyArrayStorage;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  if (result >= 1)
  {
    v16 = 0;
    v39 = a1 & 0xC000000000000001;
    v38 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
    v37 = (v9 + 104);
    v17 = (v9 + 8);
    v27 = (v4 + 8);
    v26 = (v6 + 8);
    v25 = (v36 + 8);
    v35 = _swiftEmptyArrayStorage;
    v36 = a1;
    v40 = result;
    while (1)
    {
      if (v39)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_1007478B4();
      (*v37)(v11, v38, v8);
      sub_100266870(&qword_10092F6A8, &type metadata accessor for MetadataRibbonItemViewType);
      sub_100753274();
      sub_100753274();
      if (v41[0] == v41[5] && v41[1] == v41[6])
      {
        v18 = *v17;
        (*v17)(v11, v8);
        v18(v14, v8);
      }

      else
      {
        v19 = sub_100754754();
        v20 = *v17;
        (*v17)(v11, v8);
        v20(v14, v8);

        if ((v19 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (sub_1007478F4())
      {
        v21 = v28;
        sub_10074DDB4();
        sub_10074DDA4();
        sub_10000C888(v41, v41[3]);
        sub_100750574();
        sub_10000C620(v41);
        sub_10074F2A4();
        v22 = v30;
        sub_100750504();
        sub_1007504B4();
        (*v27)(v22, v31);
        (*v26)(v21, v29);
        v23 = v32;
        sub_10074F294();
        sub_10074F254();
        (*v25)(v23, v33);
        sub_10074F374();
        sub_100753284();
        if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        v35 = v42;
        goto LABEL_7;
      }

LABEL_6:

LABEL_7:
      if (v40 == ++v16)
      {
        return v35;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100266870(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002668E0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = sub_100753064();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_1002669C0(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_100266A7C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_100266C2C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_10026E5CC();
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

id sub_100266C84()
{
  result = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  if (result)
  {
    qword_10092F6B0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100266CD4()
{
  result = [objc_opt_self() colorEffectSaturate:2.0];
  qword_10092F6B8 = result;
  return result;
}

void sub_100266D14()
{
  sub_100016C60(0, &unk_10092F760);
  v0 = [objc_opt_self() blackColor];
  v1 = [swift_getObjCClassFromMetadata() effectCompositingColor:v0 withMode:23 alpha:1.0];

  if (v1)
  {
    qword_10092F6C0 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_100266DB0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v111 = sub_100752AC4();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = sub_1007441C4();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100750304();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_100750B04();
  v17 = *(v109 - 1);
  __chkstk_darwin(v109);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v20 - 8);
  v108 = &v107 - v21;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  v23 = sub_1007469A4();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = 0;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v25 = [objc_allocWithZone(UIView) init];
  v113 = objc_opt_self();
  v26 = [v113 systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView] = 0;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel;
  sub_100745C84();
  *&v5[v27] = sub_100745C64();
  v28 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  v29[1] = 0u;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel;
  *&v5[v30] = sub_100745C64();
  v31 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel;
  *&v5[v31] = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v107 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView;
  v32 = sub_10074F7B4();
  (*(*(v32 - 8) + 56))(v108, 1, 1, v32);
  *v16 = UIFontTextStyleFootnote;
  (*(v14 + 104))(v16, enum case for FontSource.textStyle(_:), v13);
  *(&v122 + 1) = v13;
  v123 = &protocol witness table for FontSource;
  v33 = sub_10000D134(&v121);
  (*(v14 + 16))(v33, v16, v13);
  v34 = UIFontTextStyleFootnote;
  sub_100750B14();
  (*(v14 + 8))(v16, v13);
  (*(v114 + 104))(v112, enum case for WordmarkView.Alignment.center(_:), v115);
  v35 = v109;
  *(&v122 + 1) = v109;
  v123 = &protocol witness table for StaticDimension;
  v36 = sub_10000D134(&v121);
  (*(v17 + 16))(v36, v19, v35);
  v37 = objc_allocWithZone(sub_1007441E4());
  v38 = sub_1007441B4();
  (*(v17 + 8))(v19, v35);
  *&v5[v107] = v38;
  v39 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton;
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v39] = sub_100154454(0);
  v41 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *&v5[v41] = sub_100745C64();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = 0;
  v42 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  *&v5[v42] = [objc_allocWithZone(UIView) init];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurEffect;
  *&v5[v43] = [objc_opt_self() effectWithStyle:7];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView] = 0;
  v44 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView;
  sub_1007433C4();
  *&v5[v45] = sub_1007431D4();
  v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] = 0;
  v46 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_theme;
  v49 = enum case for ProductPageTheme.infer(_:);
  v50 = sub_100746034();
  (*(*(v50 - 8) + 104))(&v5[v48], v49, v50);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
  sub_100747DE4();
  v51 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_networkObservation];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 4) = 0;
  v52 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerTapHandler];
  *v52 = 0;
  v52[1] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce] = 1;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = 0;
  v120.receiver = v5;
  v120.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v120, "initWithFrame:", a1, a2, a3, a4);
  v54 = [v53 contentView];
  v55 = [v54 layer];

  [v55 setAllowsGroupBlending:0];
  v56 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel;
  [*(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel) setHidden:1];
  v57 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel;
  [*(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel) setHidden:1];
  [*(v53 + v56) setLineBreakMode:4];
  v58 = *(v53 + v56);
  sub_100016C60(0, &qword_100923500);
  v59 = v58;
  v60 = sub_100753DF4();
  [v59 setTextColor:v60];

  *&v115 = v56;
  [*(v53 + v56) setUserInteractionEnabled:1];
  v61 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"developerLabelTapped:"];
  v112 = v61;

  [*(v53 + v56) addGestureRecognizer:v61];
  [*(v53 + v57) setLineBreakMode:4];
  v62 = *(v53 + v57);
  v63 = sub_100753DF4();
  [v62 setTextColor:v63];

  [*(v53 + v57) setUserInteractionEnabled:1];
  v109 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"taglineLabelTapped:"];
  v64 = *(v53 + v57);
  v65 = v57;
  v107 = v57;
  [v64 addGestureRecognizer:v109];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();
  v114 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  v67 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel);
  v68 = sub_100753DF4();
  [v67 setTextColor:v68];

  v108 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView;
  v69 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v70 = v69;
  sub_100752A74();
  sub_10000C8CC(&v118, &unk_100923520);
  sub_10000C8CC(&v121, &unk_100923520);
  sub_100753C74();

  v71 = *(v110 + 8);
  v72 = v111;
  v71(v11, v111);
  v110 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel;
  v73 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = v73;
  sub_100752A74();
  sub_10000C8CC(&v118, &unk_100923520);
  sub_10000C8CC(&v121, &unk_100923520);
  sub_100753C74();

  v71(v11, v72);
  v75 = *(v53 + v115);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v76 = v75;
  sub_100752A74();
  sub_10000C8CC(&v118, &unk_100923520);
  sub_10000C8CC(&v121, &unk_100923520);
  sub_100753C74();

  v71(v11, v72);
  v77 = *(v53 + v65);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v77;
  sub_100752A74();
  sub_10000C8CC(&v118, &unk_100923520);
  sub_10000C8CC(&v121, &unk_100923520);
  sub_100753C74();

  v71(v11, v72);
  v79 = *(v53 + v66);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v80 = v79;
  sub_100752A74();
  sub_10000C8CC(&v118, &unk_100923520);
  sub_10000C8CC(&v121, &unk_100923520);
  sub_100753C74();

  v71(v11, v72);
  v81 = *(v53 + v114);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v82 = v81;
  sub_100752A74();
  sub_10000C8CC(&v118, &unk_100923520);
  sub_10000C8CC(&v121, &unk_100923520);
  sub_100753C74();

  v71(v11, v72);
  v83 = [v53 contentView];
  v84 = v113;
  v85 = [v113 clearColor];
  [v83 setBackgroundColor:v85];

  v86 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  v87 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer);
  v88 = [v84 clearColor];
  [v87 setBackgroundColor:v88];

  v89 = [v53 contentView];
  [v89 addSubview:*(v53 + v86)];

  v90 = [v53 contentView];
  [v90 addSubview:*(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView)];

  v91 = [v53 contentView];
  [v91 addSubview:*&v108[v53]];

  v92 = [v53 contentView];
  [v92 addSubview:*(v53 + v110)];

  v93 = [v53 contentView];
  [v93 addSubview:*(v53 + v115)];

  v94 = [v53 contentView];
  [v94 addSubview:*(v53 + v66)];

  v95 = [v53 contentView];
  [v95 addSubview:*(v53 + v114)];

  v96 = [v53 contentView];
  [v96 addSubview:*(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView)];

  v97 = [v53 contentView];
  [v97 addSubview:*(v53 + v107)];

  sub_1002680A4();
  sub_10000C824(v53 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_networkInquiry, &v118);
  sub_10000C888(&v118, *(&v119 + 1));
  v98 = sub_100016C60(0, &qword_100926D00);
  v99 = sub_100753774();
  v117[3] = v98;
  v117[4] = &protocol witness table for OS_dispatch_queue;
  v117[0] = v99;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100744E94();

  sub_10000C620(v117);
  v100 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_networkObservation;
  swift_beginAccess();
  sub_100274E20(&v121, v53 + v100);
  swift_endAccess();
  sub_10000C620(&v118);
  sub_10000C518(&unk_1009249D0);
  v101 = swift_allocObject();
  v115 = xmmword_1007A5A00;
  *(v101 + 16) = xmmword_1007A5A00;
  *(v101 + 32) = sub_100751544();
  *(v101 + 40) = &protocol witness table for UITraitLayoutDirection;
  v102 = ObjectType;
  *(&v122 + 1) = ObjectType;
  *&v121 = v53;
  v103 = v53;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(&v121);
  v104 = swift_allocObject();
  *(v104 + 16) = v115;
  *(v104 + 32) = sub_100751624();
  *(v104 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(&v122 + 1) = v102;
  *&v121 = v103;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(&v121);
  v105 = swift_allocObject();
  *(v105 + 16) = v115;
  *(v105 + 32) = sub_1007516F4();
  *(v105 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v103;
}

void sub_1002680A4()
{
  v1 = sub_100746034();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_10026E0C8();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_10091FE38;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_10097CAD8;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_10091FE40;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_10097CAE0;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel);
    sub_100016C60(0, &qword_100923500);
    v14 = v0;
    v15 = sub_100753DD4();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
    v17 = sub_100753DF4();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView);
    v19 = sub_100753DF4();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = sub_100753DE4();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel);
    sub_100016C60(0, &qword_100923500);
    v25 = v0;
    v26 = sub_100753DD4();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10091FE48 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_10097CAE8;
    [v27 setTextColor:qword_10097CAE8];
    [*(v25 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_10026E0C8();
    (*(v2 + 8))(v4, v1);
  }
}