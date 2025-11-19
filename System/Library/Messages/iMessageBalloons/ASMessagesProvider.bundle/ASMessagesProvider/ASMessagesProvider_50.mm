uint64_t sub_597EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D4>, double a8@<D5>)
{
  v31 = a5;
  v34 = a4;
  v35 = a2;
  v37 = a3;
  v38 = a6;
  v32 = a7;
  v33 = a8;
  v36 = sub_764930();
  v39 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7656A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v30 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  sub_1ED18(v35, &v29 - v21, &qword_963790);
  v29 = v17;
  sub_1ED18(v37, &v22[*(v17 + 48)], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v37 = v12;
  v23 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v41)
  {
    v23 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v12 + 104))(v16, *v23, v11);
  swift_getKeyPath();
  v24 = v36;
  v35 = a1;
  sub_768750();

  v25 = (*(v39 + 88))(v10, v24);
  if (v25 == enum case for Shelf.ContentType.reviews(_:) || v25 == enum case for Shelf.ContentType.reviewsContainer(_:) || v25 == enum case for Shelf.ContentType.todayCard(_:) || v25 == enum case for Shelf.ContentType.framedArtwork(_:) || v25 == enum case for Shelf.ContentType.productMedia(_:) || v25 == enum case for Shelf.ContentType.framedVideo(_:) || v25 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v25 == enum case for Shelf.ContentType.upsellBreakout(_:) || v25 == enum case for Shelf.ContentType.smallBreakout(_:) || v25 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v28 = v37;
    (*(v37 + 16))(v30, v16, v11);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v28 + 8))(v16, v11);
    return sub_10A2C(v22, &qword_9438F8);
  }

  else
  {
    v40 = v31;
    sub_1ED18(v22, v19, &qword_9438F8);
    v26 = *(v29 + 48);
    sub_B7A24();
    sub_75B530();
    (*(v37 + 8))(v16, v11);
    sub_10A2C(v22, &qword_9438F8);
    sub_10A2C(&v19[v26], &qword_963790);
    sub_10A2C(v19, &qword_963790);
    return (*(v39 + 8))(v10, v24);
  }
}

uint64_t sub_598460()
{
  sub_B7A24();

  return sub_75B530();
}

uint64_t sub_598544()
{
  sub_B7A24();

  return sub_75B520();
}

uint64_t sub_598650(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5986A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7684F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7684E0();
  v10 = v9;
  (*(v5 + 16))(v7, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v7, v4);
  v13 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v4) = sub_38EE8C();

  if (v4)
  {
    sub_59ABF4();
    v14 = *(v2 + 24);
    if (v14)
    {
      sub_BE70(0, &qword_93E540);
      v15 = v14;
      isa = sub_76A120(1.0, 0.58431, 0.0, 0.5).super.isa;
      sub_59A6A0(v8, v10, isa, sub_59B34C, v12, 3.0);
    }
  }
}

void sub_598BF4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView];
  [v1 _setCornerRadius:20.0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v0 addSubview:v1];
  v2 = objc_opt_self();
  sub_BD88(&unk_93F5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77FA60;
  v4 = [v1 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v0 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [v1 bottomAnchor];
  v11 = [v0 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [v1 rightAnchor];
  v14 = [v0 rightAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_BE70(0, &qword_942270);
  isa = sub_769450().super.isa;

  [v2 activateConstraints:isa];

  [v0 _setCornerRadius:20.0];
  [v0 setLayoutMargins:{8.0, 16.0, 8.0, 16.0}];
  [v0 setClipsToBounds:1];
  v17 = [objc_opt_self() whiteColor];
  [v0 setBackgroundColor:v17];

  v18 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"didTapFrom:"];
  [v0 addGestureRecognizer:v18];
}

id sub_599044(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView;
  *&v1[v4] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_viewConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view] = 0;
  v5 = &v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_598BF4();
  }

  return v7;
}

void sub_599144(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_viewConstraints;
  sub_BE70(0, &qword_942270);

  isa = sub_769450().super.isa;

  [v3 deactivateConstraints:isa];

  *(v1 + v4) = a1;

  v6 = sub_769450().super.isa;

  [v3 activateConstraints:v6];
}

id sub_599244()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view];
  if (v1)
  {
    v2 = v1;
    [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v0 addSubview:v2];
    v3 = [v2 bottomAnchor];
    v4 = [v0 layoutMarginsGuide];
    v5 = [v4 bottomAnchor];

    v6 = [v3 constraintEqualToAnchor:v5];
    LODWORD(v7) = 1140457472;
    [v6 setPriority:v7];
    sub_BD88(&unk_93F5C0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_77FA60;
    v9 = [v2 topAnchor];
    v10 = [v0 layoutMarginsGuide];
    v11 = [v10 topAnchor];

    v12 = [v9 constraintEqualToAnchor:v11];
    *(v8 + 32) = v12;
    v13 = [v2 leftAnchor];
    v14 = [v0 layoutMarginsGuide];
    v15 = [v14 leftAnchor];

    v16 = [v13 constraintEqualToAnchor:v15];
    *(v8 + 40) = v16;
    *(v8 + 48) = v6;
    v17 = v6;
    v18 = [v2 rightAnchor];
    v19 = [v0 layoutMarginsGuide];
    v20 = [v19 rightAnchor];

    v21 = [v18 constraintEqualToAnchor:v20];
    *(v8 + 56) = v21;
    sub_599144(v8);
  }

  else
  {
    sub_599144(_swiftEmptyArrayStorage);
  }

  return [v0 invalidateIntrinsicContentSize];
}

void sub_599684()
{
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v1 = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
  *&v0[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v4 setAxis:1];

  v5 = *&v0[v2];
  if (!v5)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v5 setAlignment:0];
  v6 = *&v0[v2];
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v6 setDistribution:3];
  v7 = *&v0[v2];
  if (!v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v7 setSpacing:16.0];
  v8 = *&v0[v2];
  if (!v8)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!*&v0[v2])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = v9;
  [v9 addSubview:?];

  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v12 addArrangedSubview:v11];
  sub_BD88(&unk_93F5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_78D690;
  v14 = *&v0[v2];
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = [v14 topAnchor];
  v16 = [v0 view];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  v18 = [v16 layoutMarginsGuide];

  v19 = [v18 topAnchor];
  v20 = [v15 constraintEqualToAnchor:v19];

  *(v13 + 32) = v20;
  v21 = *&v0[v2];
  if (!v21)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v22 = [v21 leftAnchor];
  v23 = [v0 view];
  if (!v23)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v24 = v23;
  v25 = [v23 layoutMarginsGuide];

  v26 = [v25 leftAnchor];
  v27 = [v22 constraintEqualToAnchor:v26];

  *(v13 + 40) = v27;
  v28 = *&v0[v2];
  if (!v28)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v29 = [v28 rightAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = v30;
  v32 = objc_opt_self();
  v33 = [v31 layoutMarginsGuide];

  v34 = [v33 rightAnchor];
  v35 = [v29 constraintEqualToAnchor:v34];

  *(v13 + 48) = v35;
  sub_BE70(0, &qword_942270);
  isa = sub_769450().super.isa;

  [v32 activateConstraints:isa];

  v37 = [v0 view];
  if (v37)
  {
    v38 = v37;
    [v37 layoutIfNeeded];

    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_599B64()
{
  if (qword_93E0C8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController), v3 = v2, swift_unknownObjectRelease(), v2))
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == &dword_0 + 1)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

void sub_599C50(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_2DC78C;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_23F0CC;
  v14 = &unk_898080;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_59AE1C;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_3D6D80;
  v14 = &unk_8980D0;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void *sub_599E14(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  result = *(a3 + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = [result arrangedSubviews];
  sub_BE70(0, &qword_93E550);
  v6 = sub_769460();

  if (v6 >> 62)
  {
    v7 = sub_76A860();
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v7, 1))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  if (v7 == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result[2];
      if (v8)
      {
        v9 = v8;
        [v9 setHidden:1];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_599FAC()
{
  v30 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_BE70(0, &qword_93E550);
  v4 = sub_769460();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_76A860();
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = sub_769460();

    if (!(v8 >> 62))
    {
      v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_9;
    }

LABEL_27:
    v9 = sub_76A860();
LABEL_9:

    v10 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *&v1[v0];
      v12 = __OFSUB__(v10, v11);
      v13 = v10 - v11;
      if (!v12)
      {
        if (v13 >= 1)
        {
          v29 = v11 - v9 + 2;
          v14 = 5;
          while (1)
          {
            v15 = *&v1[v30];
            if (!v15)
            {
              goto LABEL_31;
            }

            v16 = v14 - 4;
            v17 = [v15 arrangedSubviews];
            v18 = sub_769460();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = sub_76A770();
            }

            else
            {
              if (v16 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
              {
                __break(1u);
LABEL_24:
                __break(1u);
                goto LABEL_25;
              }

              v19 = *(v18 + 8 * v14);
            }

            v20 = v19;
            v0 = v29 + v14;

            [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:v20];
            v21 = objc_opt_self();
            v22 = swift_allocObject();
            *(v22 + 16) = v20;
            v35 = sub_59B61C;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_23F0CC;
            v34 = &unk_8981E8;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_59B63C;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_3D6D80;
            v34 = &unk_898238;
            v26 = _Block_copy(&aBlock);
            v27 = v24;
            v28 = v1;

            [v21 animateWithDuration:v23 animations:v26 completion:0.3];
            _Block_release(v26);
            _Block_release(v23);

            if (v29 + v14 == 5)
            {
              return;
            }

            ++v14;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_24;
            }
          }
        }

LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_30;
  }
}

char *sub_59A370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_tapAction];
  *v12 = sub_59B4F0;
  v12[1] = v11;

  sub_F714(a4);
  sub_F704(v13);

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = objc_opt_self();
  sub_BE70(0, &qword_941EC8);
  v16 = sub_769A10();
  v17 = [v15 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v16];

  [v14 setFont:v17];
  [v14 setNumberOfLines:5];
  [v14 setLineBreakMode:0];
  v18 = sub_769210();
  [v14 setText:v18];

  v19 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view;
  v20 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B48CardView_view];
  v21 = v14;
  if (v20)
  {
    [v20 removeFromSuperview];
    v20 = *&v8[v19];
  }

  *&v8[v19] = v14;
  v22 = v14;

  sub_599244();
  return v8;
}

void sub_59A5FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_599C50(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_59A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_BE70(0, &qword_93E550);
  v16 = sub_769460();

  if (v16 >> 62)
  {
    v17 = sub_76A860();
  }

  else
  {
    v17 = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8));
  }

  if (__OFSUB__(v17, 1))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v19 = *(Strong + 16);
      if (v19)
      {
        v20 = v19;
        [v20 setHidden:0];
      }

      swift_unknownObjectRelease();
    }
  }

  v21 = sub_59A370(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_599FAC();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_59B3AC;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_23F0CC;
    v34 = &unk_898148;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_59B400;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_3D6D80;
    v34 = &unk_898198;
    v28 = _Block_copy(&v31);
    v29 = v26;
    v30 = v6;

    [v23 animateWithDuration:v25 animations:v28 completion:0.3];
    _Block_release(v28);
    _Block_release(v25);

    return;
  }

LABEL_15:
  __break(1u);
}

id sub_59A988(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = sub_769210();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_59AAB8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_59ABF4()
{
  if (!*(v0 + 16))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v10 = [objc_allocWithZone(type metadata accessor for StatusBarOverlayWindow()) initWithFrame:{v3, v5, v7, v9}];
    v11 = *(v0 + 16);
    *(v0 + 16) = v10;

    type metadata accessor for CardStackViewController();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v13 = *(v0 + 24);
    *(v0 + 24) = v12;

    v14 = *(v0 + 16);
    if (v14)
    {
      [v14 setRootViewController:*(v0 + 24)];
      v15 = *(v0 + 16);
      if (v15)
      {
        v16 = *(v0 + 24);
        if (v16)
        {
          v17 = v15;
          v18 = v16;
          [v18 loadViewIfNeeded];
          v19 = *&v18[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_cardStackView];
          if (!v19)
          {
            __break(1u);
            return;
          }

          v20 = v19;
        }

        else
        {
          v17 = v15;
          v19 = 0;
        }

        v21 = *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B422StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC18ASMessagesProviderP33_B2CE61E316D584CC4A2ADF6070E311B423CardStackViewController_delegate + 8) = &off_898040;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_59ADCC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_59AE04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_59AE24(uint64_t a1)
{
  v2 = sub_7684F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (qword_93E0C8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider23StoreRootViewController_rootViewController), v7 = v6, swift_unknownObjectRelease(), v6))
  {
    sub_7684D0();
    sub_7684E0();
    v8 = sub_769210();

    v9 = sub_769210();

    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = sub_769210();
    aBlock[4] = sub_59B584;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_6B0344;
    aBlock[3] = &unk_898300;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    v17 = sub_769210();
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];

    [v10 addAction:v18];
    [v7 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v19 = sub_768FF0();
    sub_BE38(v19, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E90();
  }
}

void sub_59B2B8()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_7684C0();
  v1 = sub_769210();

  [v0 setString:v1];
}

void sub_59B34C()
{
  v1 = *(sub_7684F0() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_59AE24(v2);
}

uint64_t sub_59B3C0()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_59B400()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

uint64_t sub_59B428()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59B468()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_59B4A0()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_59B4FC()
{
  v1 = sub_7684F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_59B584()
{
  sub_7684F0();

  sub_59B2B8();
}

char *sub_59B640(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_preferredArtworkSize];
  type metadata accessor for QuoteView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0;
  *(v12 + 1) = 0;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView] = v14;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView]];

  return v15;
}

uint64_t type metadata accessor for QuoteCollectionViewCell()
{
  result = qword_95BF88;
  if (!qword_95BF88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_59BA14()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_59BAF4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23QuoteCollectionViewCell_quoteView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider9QuoteView_artworkView);
  sub_759050();

  v4 = *(v1 + v2);
  sub_759210();
  sub_59BC30(&qword_945810, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_75A0C0();
}

uint64_t sub_59BBD8(uint64_t a1)
{
  result = sub_59BC30(&qword_95BF98, type metadata accessor for QuoteCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_59BC30(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_59BC78(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_765240();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_134D8(a1, v29);
  sub_BD88(&unk_93F520);
  sub_75B370();
  if (swift_dynamicCast())
  {
    v11 = sub_75B310();
    if (qword_93C6C8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_BE38(v12, qword_99B9A0);
    sub_766660();
    if (v11)
    {

      sub_765250();
      sub_765210();
      (*(v8 + 8))(v10, v7);
      sub_765330();
      v13 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v13 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      sub_759210();
      sub_59F5F0(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }

    v14 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
    v15 = sub_75B2E0();
    sub_3D70A4(v15, a2);
  }

  else
  {
    sub_134D8(a1, v29);
    sub_765860();
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return result;
    }

    v28 = v8;
    v17 = v2;
    v18 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
    v19 = sub_7657F0();
    sub_3D70A4(v19, a2);

    if (sub_765800())
    {
      v20 = qword_93C6C8;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_BE38(v21, qword_99B9A0);
      sub_766660();

      sub_765250();
      sub_765210();
      (*(v28 + 8))(v10, v7);
      sub_765330();
      v22 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView);
      sub_7652E0();
      sub_7591B0();
      [v22 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      sub_759210();
      sub_59F5F0(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();
    }

    else
    {
      v23 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView);
      v24 = a1[3];
      v25 = a1[4];
      v26 = sub_B170(a1, v24);
      sub_FE6F8(v26, a2, v23, v24, v25);
    }
  }
}

uint64_t sub_59C28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_BD88(&unk_93F630);
  sub_768860();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_59C3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_75B2E0();
    v9 = sub_764D80();

    if (v9)
    {
      v10 = sub_BD88(&unk_93F630);
      sub_768860();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10A2C(v6, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_59C590(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a1;
  ObjectType = swift_getObjectType();

  return sub_59D5F0(a2, v10, a7, v7, ObjectType);
}

uint64_t sub_59C5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_75B370();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_59D7D4(v5, a3);
  }

  else
  {
    sub_765860();
    result = swift_dynamicCastClass();
    if (!result)
    {
      return result;
    }

    v7 = result;

    sub_59E638(v7, a3);
  }
}

double sub_59C73C(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, uint64_t a9, void *a10)
{
  v100 = a6;
  v99 = a5;
  v98 = a4;
  v107 = a3;
  v106 = a2;
  v108 = a1;
  v103 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  __chkstk_darwin(v103);
  v105 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v104);
  v14 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_762D10();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v86 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v78 - v19;
  v21 = sub_7670D0();
  swift_allocObject();
  v101 = sub_7670B0();
  swift_allocObject();
  v96 = sub_7670B0();
  swift_allocObject();
  v95 = sub_7670B0();
  swift_allocObject();
  v94 = sub_7670B0();
  swift_allocObject();
  v92 = sub_7670B0();
  swift_allocObject();
  v90 = sub_7670B0();
  swift_allocObject();
  v102 = sub_7670B0();
  swift_allocObject();
  v97 = sub_7670B0();
  v22 = [a7 traitCollection];
  sub_767500();

  swift_allocObject();
  v93 = sub_7670B0();
  swift_allocObject();
  v91 = sub_7670B0();
  swift_allocObject();
  v89 = sub_7670B0();
  v23 = [a7 traitCollection];
  v24 = [v23 preferredContentSizeCategory];
  sub_769B50();

  sub_BE70(0, &qword_93F900);
  if (qword_93DB90 != -1)
  {
    swift_once();
  }

  v25 = sub_7666D0();
  sub_BE38(v25, qword_99FAA8);
  v26 = [a7 traitCollection];
  v27 = sub_769E10();

  v28 = sub_7653B0();
  v111 = v28;
  v83 = sub_59F5F0(&qword_93F9B0, &type metadata accessor for Feature);
  v112 = v83;
  v29 = sub_B1B4(aBlock);
  v30 = *(v28 - 8);
  v31 = *(v30 + 104);
  v82 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v84 = v28;
  v81 = v31;
  v80 = v30 + 104;
  v31(v29);
  sub_765C30();
  sub_BEB8(aBlock);

  v85 = v27;
  sub_762D00();
  sub_762CE0();
  v33 = *(v16 + 8);
  v32 = v16 + 8;
  v88 = v15;
  v79 = v33;
  v33(v20, v15);
  if (qword_93DF30 != -1)
  {
    swift_once();
  }

  v34 = qword_9A04C0;
  v35 = *algn_9A04C8;
  v36 = qword_9A04D0;
  v37 = [a7 traitCollection];
  v38 = sub_769A00();
  v87 = v32;
  if (v38)
  {
  }

  else
  {
    v39 = sub_7699D0();

    if (v39)
    {
      v36 = v34;
    }

    else
    {
      v36 = v35;
    }
  }

  v40 = v36;
  v106 = a7;
  v41 = [a7 traitCollection];
  v42 = objc_allocWithZone(NSMutableAttributedString);
  v43 = v40;
  v44 = v42;
  v45 = v108;
  v46 = [v44 initWithAttributedString:v108];
  v107 = [v45 length];
  v47 = swift_allocObject();
  *(v47 + 16) = v40;
  *(v47 + 24) = v41;
  *(v47 + 32) = v46;
  *(v47 + 40) = 1;
  v48 = swift_allocObject();
  v48[2] = sub_119AC;
  v48[3] = v47;
  v112 = sub_2636C;
  v113 = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v111 = &unk_8984A8;
  v49 = _Block_copy(aBlock);
  v50 = v43;
  v51 = v41;
  v52 = v46;

  [v45 enumerateAttributesInRange:0 options:v107 usingBlock:{0x100000, v49}];

  _Block_release(v49);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
    goto LABEL_24;
  }

  v108 = a10;
  v53 = v84;
  v111 = v84;
  v112 = v83;
  v54 = sub_B1B4(aBlock);
  v81(v54, v82, v53);
  v55 = v50;
  sub_765C30();
  sub_BEB8(aBlock);
  v56 = v86;
  v107 = v55;
  sub_762CD0();
  sub_762CE0();
  v79(v56, v88);
  v57 = v99;
  if (v99)
  {
    v58 = HIBYTE(v99) & 0xF;
    v59 = v98;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v58 = v98 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v88) = v58 != 0;
    v48 = v106;
  }

  else
  {
    LODWORD(v88) = 0;
    v48 = v106;
    v59 = v98;
  }

  type metadata accessor for AppPromotionSubtitleView();
  v60 = [v48 traitCollection];
  sub_6E4AAC(v59, v57, v100, 0, v60, v109);

  v61 = [v48 traitCollection];
  LOBYTE(v60) = sub_769A00();

  if (v60)
  {
    if (qword_93C6D0 == -1)
    {
LABEL_18:
      v62 = qword_99B9B8;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_93C6C8 != -1)
  {
    swift_once();
  }

  v62 = qword_99B9A0;
LABEL_22:
  v63 = v105;
  v64 = sub_BE38(v103, v62);
  sub_6D040(v64, v63);
  v65 = v104;
  v66 = (v14 + *(v104 + 20));
  v66[3] = v21;
  v66[4] = &protocol witness table for LayoutViewPlaceholder;
  *v66 = v101;
  v67 = (v14 + v65[6]);
  v67[3] = v21;
  v67[4] = &protocol witness table for LayoutViewPlaceholder;
  *v67 = v96;
  v68 = (v14 + v65[7]);
  v68[3] = v21;
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  *v68 = v95;
  v69 = (v14 + v65[8]);
  v69[3] = v21;
  v69[4] = &protocol witness table for LayoutViewPlaceholder;
  *v69 = v94;
  v70 = (v14 + v65[9]);
  v70[3] = v21;
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  *v70 = v92;
  v71 = (v14 + v65[10]);
  v71[3] = v21;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  *v71 = v90;
  v72 = (v14 + v65[11]);
  v72[3] = v21;
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  *v72 = v102;
  v73 = (v14 + v65[12]);
  v73[3] = v21;
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  *v73 = v97;
  sub_134D8(v114, v14 + v65[13]);
  sub_134D8(aBlock, v14 + v65[14]);
  sub_134D8(v109, v14 + v65[15]);
  v74 = (v14 + v65[16]);
  v74[3] = v21;
  v74[4] = &protocol witness table for LayoutViewPlaceholder;
  *v74 = v93;
  v75 = (v14 + v65[17]);
  v75[3] = v21;
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  *v75 = v91;
  v76 = (v14 + v65[18]);
  v76[3] = v21;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  *v76 = v89;
  sub_6D718(v63, v14);
  *(v14 + v65[19]) = v88;

  sub_6ECA8(v48, v14);

  sub_BEB8(v109);
  sub_BEB8(aBlock);
  sub_BEB8(v114);
  sub_216E5C(v14);
  return a8;
}

void sub_59D3B4(uint64_t a1, char *a2)
{
  v3 = sub_764CF0();
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757BA0();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (sub_764EC0())
    {
      v6 = sub_75FE60();
      v8 = v7;

      if (v8)
      {
        sub_7576E0();
        v9 = sub_7576C0();
        if (v9)
        {
          v10 = v9;
          sub_764F00();

          sub_BD88(&unk_944300);
          sub_768900();

          sub_768ED0();
          v11 = v17[1];
          v12 = v17[2];
          type metadata accessor for SubscriptionLockupPresenter();
          swift_allocObject();
          v13 = a2;
          v14 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v6, v8, v5, a2, &off_890398, v10, v11, v12);
          v15 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v13[v15] = v14;

          return;
        }
      }
    }
  }

  v16 = OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v16] = 0;

  sub_3D928C(0, 0);
}

double sub_59D5F0(double a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  sub_75B370();
  if (swift_dynamicCastClass())
  {

    sub_75B350();
    v9 = sub_7658D0();

    v10 = a5;
    v26 = a4;
    v11 = sub_75B330();
    v13 = v12;
    v14 = sub_75B360();
    v16 = v15;
    v17 = sub_75B2C0();
    v18 = sub_59C73C(v9, v11, v13, v14, v16, v17, a3, a1, v26, v10);
  }

  else
  {
    sub_765860();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    sub_765840();
    v19 = sub_7658D0();

    v20 = sub_765830();
    v22 = v21;
    v23 = sub_765850();
    v18 = sub_59C73C(v19, v20, v22, v23, v24, 0, a3, a1, a4, a5);
  }

  return v18;
}

uint64_t sub_59D7D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v114 = a2;
  v5 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v5 - 8);
  v103 = &v84 - v6;
  v102 = sub_7623A0();
  v99 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_BD88(&unk_9457F0);
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v101 = &v84 - v8;
  v9 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v9 - 8);
  v106 = &v84 - v10;
  v11 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v11 - 8);
  v108 = &v84 - v12;
  v13 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v13 - 8);
  v107 = &v84 - v14;
  v15 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v15 - 8);
  v112 = &v84 - v16;
  v17 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v17 - 8);
  v19 = &v84 - v18;
  v20 = sub_BD88(&unk_948730);
  __chkstk_darwin(v20 - 8);
  v98 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v110 = &v84 - v23;
  v105 = sub_75CA40();
  v24 = *(v105 - 8);
  __chkstk_darwin(v105);
  v26 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75B330();
  sub_213C34(v27, v28);
  sub_75B350();
  v29 = sub_7658D0();

  sub_213D94(v29);
  v30 = sub_75B360();
  v32 = v31;
  v33 = sub_75B2C0();
  sub_6E4840(v30, v32, v33);
  v34 = v19;

  v35 = v112;

  v36 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_75B320();
  v37 = sub_75CA20();
  v38 = v105;
  (*(v24 + 8))(v26, v105);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_2137BC();
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v109 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
  v40 = v110;
  v41 = v39;
  v42 = sub_75B2E0();
  v43 = sub_BD88(&unk_948740);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v97 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = sub_758C70();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  sub_757BA0();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v92 = v45;
    v93 = v43;
    v95 = v34;
    v96 = a1;
    v50 = v48;
    v104 = v48;
    v51 = v49;
    v89 = sub_75BD30();
    v52 = *(v89 - 8);
    v88 = *(v52 + 56);
    v90 = v52 + 56;
    v53 = v107;
    v88(v107, 1, 1, v89);
    v87 = *(v111 + 56);
    v105 = v42;
    v54 = v108;
    v87(v108, 1, 1, v113);
    v55 = sub_765870();
    v56 = *(v55 - 8);
    v85 = *(v56 + 56);
    v86 = v56 + 56;
    v57 = v106;
    v85(v106, 1, 1, v55);
    swift_retain_n();
    sub_4A18A4(v50, v51, v40, v114, 1, 0, v35, v53, v57, v54);
    sub_10A2C(v57, &unk_9457D0);
    v51[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    v91 = v51;
    [v51 setNeedsLayout];
    sub_10A2C(v54, &unk_94AC40);
    sub_10A2C(v53, &unk_9457E0);
    v58 = v35;
    v94 = v41;
    v59 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v60 = sub_757B90();
    v88(v53, 1, 1, v89);
    v87(v54, 1, 1, v113);
    v85(v57, 1, 1, v55);
    sub_4A18A4(v60, v59, v40, v114, 0, 0, v58, v53, v57, v54);
    sub_10A2C(v57, &unk_9457D0);
    v59[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v105;
    sub_10A2C(v61, &unk_94AC40);
    sub_10A2C(v53, &unk_9457E0);
    v63 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = sub_764EE0();
    if (v64)
    {
    }

    sub_1FC9E8(v64 != 0);
    v65 = *&v59[v63];
    v66 = sub_764EC0();

    v67 = sub_764DB0();

    v68 = v98;
    v92(v98, 1, 1, v93);
    v69 = v99;
    v70 = v102;
    (*(v99 + 104))(v100, enum case for OfferButtonSubtitlePosition.below(_:), v102);
    (*(v69 + 56))(v103, 1, 1, v70);
    sub_59F5F0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v71 = v101;
    sub_760940();
    sub_1DFEBC(v66, v67, 0, v68, v71, v114, 0, 0);

    (*(v111 + 8))(v71, v113);
    sub_10A2C(v68, &unk_948730);
    v46 = v94;
    sub_59D3B4(v62, v94);

    v34 = v95;
    sub_3D9820(v46, v95);
    a1 = v96;
    v35 = v112;
    v40 = v110;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView] setHidden:1];
    v72 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v73 = sub_75BD30();
    v74 = v107;
    (*(*(v73 - 8) + 56))(v107, 1, 1, v73);
    v75 = v108;
    (*(v111 + 56))(v108, 1, 1, v113);
    v76 = sub_765870();
    v77 = v106;
    (*(*(v76 - 8) + 56))(v106, 1, 1, v76);
    sub_4A18A4(v42, v72, v40, v114, 0, 0, v35, v74, v77, v75);
    sub_10A2C(v77, &unk_9457D0);
    v72[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v72 setNeedsLayout];
    sub_10A2C(v75, &unk_94AC40);
    sub_10A2C(v74, &unk_9457E0);
    sub_3D9820(v46, v34);
  }

  sub_10A2C(v35, &unk_94A780);
  sub_10A2C(v34, &qword_9533C8);
  sub_10A2C(v40, &unk_948730);
  v78 = swift_allocObject();
  v79 = v109;
  swift_unknownObjectWeakInit();
  v80 = swift_allocObject();
  *(v80 + 2) = v78;
  *(v80 + 3) = a1;
  *(v80 + 4) = v114;
  v81 = (v79 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  v82 = *(v79 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  *v81 = sub_59E62C;
  v81[1] = v80;

  sub_F704(v82);
}

uint64_t sub_59E5AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_59E5E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_59E638(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_944DF0);
  __chkstk_darwin(v6 - 8);
  v114 = v94 - v7;
  v113 = sub_7623A0();
  v110 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_BD88(&unk_9457F0);
  v121 = *(v123 - 8);
  __chkstk_darwin(v123);
  v112 = v94 - v9;
  v10 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v10 - 8);
  v116 = v94 - v11;
  v12 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v12 - 8);
  v118 = v94 - v13;
  v14 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v14 - 8);
  v117 = v94 - v15;
  v16 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v16 - 8);
  v124 = v94 - v17;
  v18 = sub_BD88(&qword_9533C8);
  __chkstk_darwin(v18 - 8);
  v122 = v94 - v19;
  v20 = sub_BD88(&unk_948730);
  __chkstk_darwin(v20 - 8);
  v109 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v120 = v94 - v23;
  v24 = sub_75CA40();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_765830();
  sub_213C34(v28, v29);
  sub_765840();
  v30 = sub_7658D0();

  sub_213D94(v30);
  v31 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_subtitleView);
  sub_765850();
  v32 = *(v31 + qword_962AD8);
  if (v33)
  {
    v34 = sub_769210();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_962AE0) setHidden:1];
  sub_75A110();
  v35 = a2;
  sub_7688F0();

  v36 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_mediaContentView);
  sub_765810();
  v37 = sub_75CA20();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkFallbackView);
  sub_FE4A4();
  sub_2137BC();
  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (sub_765800())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_artworkView);
  }

  v39 = v122;
  v40 = v120;
  v115 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupView);
  v42 = sub_7657F0();
  v43 = sub_BD88(&unk_948740);
  v44 = *(v43 - 8);
  v107 = *(v44 + 56);
  v108 = v43;
  v106 = v44 + 56;
  v107(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = sub_758C70();
  (*(*(v45 - 8) + 56))(v124, 1, 1, v45);
  sub_757BA0();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_iapLockupView];
  v119 = v41;
  if (v47)
  {
    v49 = v47;
    v104 = a1;
    v105 = v3;
    v100 = sub_75BD30();
    v50 = *(v100 - 8);
    v99 = *(v50 + 56);
    v101 = v50 + 56;
    v51 = v117;
    v99(v117, 1, 1, v100);
    v98 = *(v121 + 56);
    v52 = v118;
    v98(v118, 1, 1, v123);
    v96 = sub_765870();
    v53 = *(v96 - 8);
    v95 = *(v53 + 56);
    v97 = v53 + 56;
    v54 = v116;
    v95(v116, 1, 1, v96);
    v55 = v46;
    swift_retain_n();
    v56 = v40;
    v57 = v40;
    v58 = v115;
    v59 = v124;
    sub_4A18A4(v49, v48, v57, v115, 1, 0, v124, v51, v54, v52);
    sub_10A2C(v54, &unk_9457D0);
    v48[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    v102 = v48;
    [v48 setNeedsLayout];
    sub_10A2C(v52, &unk_94AC40);
    sub_10A2C(v51, &unk_9457E0);
    v60 = v49;
    v61 = *&v119[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v103 = v60;
    v62 = v58;
    v63 = sub_757B90();
    v99(v51, 1, 1, v100);
    v98(v52, 1, 1, v123);
    v95(v54, 1, 1, v96);
    v64 = v62;
    sub_4A18A4(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10A2C(v54, &unk_9457D0);
    v61[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v61 setNeedsLayout];

    sub_10A2C(v52, &unk_94AC40);
    sub_10A2C(v51, &unk_9457E0);
    v65 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = sub_764EE0();
    v67 = v55;
    if (v66)
    {
    }

    sub_1FC9E8(v66 != 0);
    v68 = *&v61[v65];
    v69 = sub_764EC0();

    v70 = sub_764DB0();

    v71 = v109;
    (v107)(v109, 1, 1, v108);
    v72 = v110;
    v73 = v113;
    (*(v110 + 104))(v111, enum case for OfferButtonSubtitlePosition.below(_:), v113);
    (*(v72 + 56))(v114, 1, 1, v73);
    sub_59F5F0(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition);
    v74 = v112;
    sub_760940();
    v75 = v64;
    sub_1DFEBC(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v121 + 8))(v74, v123);
    sub_10A2C(v71, &unk_948730);
    v76 = v119;
    sub_59D3B4(v67, v119);

    v39 = v122;
    sub_3D9820(v76, v122);
    v3 = v105;
    v77 = v124;
    v78 = v120;
  }

  else
  {
    [v48 setHidden:1];
    v94[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider22SubscriptionLockupView_appLockupView];
    v80 = sub_75BD30();
    v81 = v117;
    (*(*(v80 - 8) + 56))(v117, 1, 1, v80);
    v82 = v118;
    (*(v121 + 56))(v118, 1, 1, v123);
    v83 = sub_765870();
    v84 = v116;
    (*(*(v83 - 8) + 56))(v116, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v115;
    v77 = v124;
    sub_4A18A4(v85, v79, v86, v115, 0, 0, v124, v81, v84, v82);
    sub_10A2C(v84, &unk_9457D0);
    v79[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v79 setNeedsLayout];
    v76 = v119;
    v75 = v87;
    sub_10A2C(v82, &unk_94AC40);
    sub_10A2C(v81, &unk_9457E0);
    sub_3D9820(v76, v39);
  }

  sub_10A2C(v77, &unk_94A780);
  sub_10A2C(v39, &qword_9533C8);
  sub_10A2C(v78, &unk_948730);
  sub_7657F0();
  v88 = sub_764D80();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_59F518;
    *(v88 + 24) = v89;

    v90 = sub_59F558;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20AppPromotionCardView_lockupViewTappedAction);
  *v91 = v90;
  v91[1] = v88;
  return sub_F704(v92);
}

uint64_t sub_59F4D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59F520()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_59F580()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_59F5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_59F5F0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_59F638()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction))
  {
    v6 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_objectGraph);
    v7 = sub_BD88(&unk_93F630);

    sub_768860();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) == 1)
    {
      sub_10A2C(v4, &unk_93F980);
    }

    else
    {

      sub_32A6C0(v9, 1, v6, v4);

      (*(v8 + 8))(v4, v7);
    }

    *(v1 + v5) = 0;

    sub_59F638(v10);
  }
}

void sub_59F7D8(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *&v2[v6] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *&v2[v7] = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = 0;
  v8 = &v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView];
  *v8 = 0;
  v8[1] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration] = 0x3FD3333333333333;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  v10 = sub_764CF0();
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = &v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode];
  *v11 = 0;
  v11[8] = 1;
  v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground] = 0;
  v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction] = 0;
  v12 = &v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_presenter] = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_artworkLoader] = v29[0];
  v30.receiver = v2;
  v30.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  v13 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  sub_5A5C98(&qword_95C0B0, type metadata accessor for InAppPurchaseInstallPageViewController);
  v14 = v13;
  sub_757EC0();
  v15 = [v14 view];
  if (v15)
  {
    v16 = v15;
    [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    v17 = [v14 view];
    if (v17)
    {
      sub_BE70(0, &qword_93E540);
      v18 = sub_76A000();
      [v17 setBackgroundColor:v18];

      v19 = objc_opt_self();
      v20 = [v19 defaultCenter];
      [v20 addObserver:v14 selector:"willEnterForeground" name:UIApplicationWillEnterForegroundNotification object:0];

      v21 = [v19 defaultCenter];
      [v21 addObserver:v14 selector:"didEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];

      v22 = [v19 defaultCenter];
      v23 = v14;
      v24 = sub_763780();
      [v22 addObserver:v23 selector:"askToBuyRequestNotificationReceived:" name:v24 object:0];

      v25 = [v19 defaultCenter];
      v26 = v23;
      v27 = sub_763BA0();
      [v25 addObserver:v26 selector:"didCompletePurchase:" name:v27 object:0];

      v29[3] = sub_757ED0();
      v29[4] = &protocol witness table for BasePresenter;

      v29[0] = a1;
      v28 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
      swift_beginAccess();
      sub_B33C8(v29, v26 + v28, &qword_93FED0);
      swift_endAccess();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_59FDD0(char a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode + 8) & 1) == 0)
  {
    v3 = sub_75EB20();
    if (v3 == sub_75EB20())
    {
      if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) && (sub_757B40(), swift_dynamicCastClass()))
      {

        sub_757AE0();

        if (qword_93DEF0 != -1)
        {
          swift_once();
        }

        v4 = sub_768FF0();
        sub_BE38(v4, qword_9A0400);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77E280;
        sub_768540();
        v13 = &type metadata for Bool;
        v5 = a1 & 1;
        LOBYTE(v12[0]) = v5;
        sub_7685E0();
        sub_10A2C(v12, &unk_93FBD0);
        sub_768E90();

        v6 = swift_allocObject();
        *(v6 + 16) = v5;
        v7 = objc_allocWithZone(SKInstallSheetStatusUpdateRequest);
        v8 = sub_769210();

        v14 = sub_5A5CF0;
        v15 = v6;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 1107296256;
        v12[2] = sub_3ADB74;
        v13 = &unk_898660;
        v9 = _Block_copy(v12);

        v10 = [v7 initWithAppBundleId:v8 isInstallSheetOpen:v5 completionHandler:v9];
        _Block_release(v9);

        [v10 start];
      }

      else
      {
        if (qword_93DEF0 != -1)
        {
          swift_once();
        }

        v11 = sub_768FF0();
        sub_BE38(v11, qword_9A0400);
        sub_BD88(&qword_93FD00);
        sub_7685F0();
        *(swift_allocObject() + 16) = xmmword_77B6D0;
        sub_768540();
        sub_768E90();
      }
    }
  }
}

uint64_t sub_5A0218(uint64_t a1, char a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v2 = sub_768FF0();
    sub_BE38(v2, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v9 = v7;
    v3 = sub_B1B4(v8);
    (*(*(v7 - 1) + 16))(v3);
    sub_7685E0();
    sub_10A2C(v8, &unk_93FBD0);
    sub_768E90();
  }

  else
  {
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v6 = sub_768FF0();
    sub_BE38(v6, qword_9A0400);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v9 = &type metadata for Bool;
    LOBYTE(v8[0]) = a2 & 1;
    sub_7685E0();
    sub_10A2C(v8, &unk_93FBD0);
    sub_768E90();
  }
}

id sub_5A0558()
{
  v1 = v0;
  v2 = sub_7587B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "viewDidLoad");
  v7 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v7, v13, &qword_93FED0);
  if (v14)
  {
    sub_134D8(v13, v12);
    sub_10A2C(v13, &qword_93FED0);
    sub_B170(v12, v12[3]);
    (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v2);
    sub_7587C0();
    (*(v3 + 8))(v5, v2);
    sub_BEB8(v12);
  }

  else
  {
    sub_10A2C(v13, &qword_93FED0);
  }

  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  result = [v1 view];
  if (result)
  {
    v10 = result;
    [result setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    return sub_75A160();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5A07E4(char a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v8, v12, &qword_93FED0);
  if (!v13)
  {
    return sub_10A2C(v12, &qword_93FED0);
  }

  sub_134D8(v12, v11);
  sub_10A2C(v12, &qword_93FED0);
  sub_B170(v11, v11[3]);
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v6, v3);
  return sub_BEB8(v11);
}

void sub_5A0A64(char a1)
{
  v2 = v1;
  v4 = sub_7587B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v2;
  v14.super_class = v8;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v9, v12, &qword_93FED0);
  if (v13)
  {
    sub_134D8(v12, v11);
    sub_10A2C(v12, &qword_93FED0);
    sub_B170(v11, v11[3]);
    (*(v5 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v4);
    sub_7587C0();
    (*(v5 + 8))(v7, v4);
    sub_BEB8(v11);
  }

  else
  {
    sub_10A2C(v12, &qword_93FED0);
  }

  sub_59FDD0(1);
  sub_59F638();
}

uint64_t sub_5A0CA4(SEL *a1, unsigned int *a2)
{
  v5 = sub_7587B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v16.receiver = v2;
  v16.super_class = v9;
  objc_msgSendSuper2(&v16, *a1);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v2 + v10, v14, &qword_93FED0);
  if (!v15)
  {
    return sub_10A2C(v14, &qword_93FED0);
  }

  sub_134D8(v14, v13);
  sub_10A2C(v14, &qword_93FED0);
  sub_B170(v13, v13[3]);
  (*(v6 + 104))(v8, *a2, v5);
  sub_7587C0();
  (*(v6 + 8))(v8, v5);
  return sub_BEB8(v13);
}

uint64_t sub_5A0EB8()
{
  v1 = sub_7587B0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v12.receiver = v0;
  v12.super_class = v5;
  objc_msgSendSuper2(&v12, "as_viewWillBecomePartiallyVisible");
  v6 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v0 + v6, v10, &qword_93FED0);
  if (!v11)
  {
    return sub_10A2C(v10, &qword_93FED0);
  }

  sub_134D8(v10, v9);
  sub_10A2C(v10, &qword_93FED0);
  sub_B170(v9, v9[3]);
  sub_768D50();
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v1);
  sub_7587C0();
  (*(v2 + 8))(v4, v1);
  return sub_BEB8(v9);
}

uint64_t sub_5A10CC(char a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v14.receiver = v1;
  v14.super_class = v7;
  objc_msgSendSuper2(&v14, "viewWillDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v8, v12, &qword_93FED0);
  if (!v13)
  {
    return sub_10A2C(v12, &qword_93FED0);
  }

  sub_134D8(v12, v11);
  sub_10A2C(v12, &qword_93FED0);
  sub_B170(v11, v11[3]);
  sub_768D50();
  (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_7587C0();
  (*(v4 + 8))(v6, v3);
  return sub_BEB8(v11);
}

void sub_5A1364(char a1)
{
  v3 = sub_7587B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InAppPurchaseInstallPageViewController();
  v13.receiver = v1;
  v13.super_class = v7;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1ED18(v1 + v8, v11, &qword_93FED0);
  if (v12)
  {
    sub_134D8(v11, v10);
    sub_10A2C(v11, &qword_93FED0);
    sub_B170(v10, v10[3]);
    (*(v4 + 104))(v6, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v3);
    sub_7587C0();
    (*(v4 + 8))(v6, v3);
    sub_BEB8(v10);
  }

  else
  {
    sub_10A2C(v11, &qword_93FED0);
  }

  sub_59FDD0(0);
}

void sub_5A16B0()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  sub_767130();
  v3 = objc_allocWithZone(sub_767160());
  v4 = sub_767150();
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController];
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

void sub_5A1808()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController];
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

void sub_5A18EC()
{
  v1 = v0;
  sub_767230();
  sub_5A5C98(&unk_95C0C0, &type metadata accessor for InAppPurchaseInstallPagePresenter);
  swift_errorRetain();

  v2 = sub_7671F0();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController];
  sub_761930();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

void sub_5A1A64(unint64_t a1, uint64_t a2, uint64_t a3, NSString a4)
{
  v5 = v4;
  v9 = sub_BD88(&unk_940200);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v33 - v11;
  if (a4)
  {
    a4 = sub_769210();
  }

  [v5 setTitle:{a4, v10}];

  v13 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView];
  v14 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView];
  swift_unknownObjectRetain();
  sub_5A3D5C(a1);
  if (sub_757CE0())
  {
    sub_764F00();

    v15 = sub_764CF0();
    (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  }

  else
  {
    v16 = sub_764CF0();
    (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  }

  v17 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  swift_beginAccess();
  sub_B33C8(v12, &v5[v17], &unk_940200);
  swift_endAccess();
  if (sub_757CF0())
  {
    v18 = sub_764DB0();

    *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction] = v18;
  }

  if (*v13)
  {
    v19 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    v33 = v13;
    v21 = ObjectType;
    v22 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_objectGraph];
    v23 = a1;
    v24 = *(v19 + 8);
    swift_unknownObjectRetain();
    v25 = v21;
    v13 = v33;
    v24(a2, v22, v25, v19);
    a1 = v23;
    swift_unknownObjectRelease();
  }

  if (v14)
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      swift_unknownObjectRetain();
    }

    if (*v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v26 = 0;
  if (!*v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    swift_unknownObjectRetain();
  }

LABEL_18:
  sub_5A3F94(v26, v27);

  v28 = &v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode];
  if (v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode + 8] == 1)
  {
    sub_59FDD0(0);
    *v28 = a1;
    v28[8] = 0;
LABEL_23:
    sub_59FDD0(1);
    goto LABEL_24;
  }

  v29 = sub_75EB20();
  if (v29 != sub_75EB20())
  {
    sub_59FDD0(0);
  }

  *v28 = a1;
  v28[8] = 0;
  v30 = sub_75EB20();
  if (v30 != sub_75EB20())
  {
    goto LABEL_23;
  }

LABEL_24:
  v31 = [v5 view];
  if (v31)
  {
    v32 = v31;
    [v31 setNeedsLayout];
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_5A1E68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__n128), void (*a6)(uint64_t))
{
  v86 = a6;
  v87 = a1;
  v8 = v6;
  v90 = a3;
  v91 = a4;
  v88 = a2;
  v9 = sub_760080();
  __chkstk_darwin(v9 - 8);
  v85 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v11 - 8);
  v84 = &v72 - v12;
  v13 = sub_75BD30();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v72 - v18;
  v20 = sub_762DE0();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_75D850();
  v24 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v73 = &v72 - v27;
  __chkstk_darwin(v28);
  v75 = &v72 - v29;
  __chkstk_darwin(v30);
  v78 = &v72 - v31;
  __chkstk_darwin(v32);
  v79 = &v72 - v33;
  __chkstk_darwin(v34);
  v80 = &v72 - v35;
  v36 = sub_75CF70();
  v82 = *(v36 - 8);
  v83 = v36;
  v37 = __chkstk_darwin(v36);
  v81 = &v72 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(v37);
  sub_762DB0();
  (*(v21 + 8))(v23, v20);
  v89 = v8;
  result = [v8 view];
  if (result)
  {
    v40 = result;
    v41 = [result traitCollection];

    v42 = *(v14 + 104);
    v42(v16, enum case for OfferEnvironment.arcadeProductPage(_:), v13);
    v43 = sub_75BD20();
    v44 = *(v14 + 8);
    v44(v16, v13);
    v92 = v13;
    if (v43)
    {
      v45 = v19;
      if (qword_93C470 != -1)
      {
        swift_once();
      }

      v46 = v77;
      v47 = sub_BE38(v77, qword_99B2D8);
      v48 = v78;
      (*(v24 + 16))(v78, v47, v46);

      v49 = v44;
      goto LABEL_16;
    }

    v42(v16, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v13);
    v50 = sub_75BD20();
    v76 = v44;
    v44(v16, v13);
    if (v50)
    {
      v45 = v19;
      if (qword_93C468 != -1)
      {
        swift_once();
      }

      v51 = qword_99B2C0;
      v46 = v77;
LABEL_14:
      v52 = sub_BE38(v46, v51);
      v48 = v78;
      (*(v24 + 16))(v78, v52, v46);

LABEL_15:
      v49 = v76;
LABEL_16:
      v53 = *(v24 + 32);
      v54 = v79;
      v53(v79, v48, v46);
      v49(v45, v92);
      v53(v80, v54, v46);
      v55 = sub_BD88(&unk_9457F0);
      (*(*(v55 - 8) + 56))(v84, 1, 1, v55);

      v86(v56);
      v57 = v81;
      sub_75CF60();
      sub_5A5A20(v57, v90, v91, *&v89[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for TextConfiguration, sub_1E4800);
      return (*(v82 + 8))(v57, v83);
    }

    if (sub_75BD10())
    {
      v45 = v19;
      v46 = v77;
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v51 = qword_99B2A8;
      goto LABEL_14;
    }

    v58 = v92;
    v42(v16, enum case for OfferEnvironment.navigationBar(_:), v92);
    v45 = v19;
    v59 = sub_75BD20();
    v76(v16, v58);
    v46 = v77;
    if (v59)
    {
      if (qword_93C478 != -1)
      {
        swift_once();
      }

      v60 = sub_BE38(v46, qword_946980);
      v48 = v78;
      (*(v24 + 16))(v78, v60, v46);

      goto LABEL_15;
    }

    v61 = sub_769350();
    v62 = v41;
    if (sub_769A00())
    {
      v49 = v76;
      if (v61 <= 8)
      {
LABEL_23:
        v63 = sub_769A00();
        v48 = v78;
        if (v63)
        {
          if (qword_93C440 != -1)
          {
            swift_once();
          }

          v64 = qword_946920;
        }

        else
        {
          if (qword_93C448 != -1)
          {
            swift_once();
          }

          v64 = qword_946938;
        }

        v67 = sub_BE38(v46, v64);
        v68 = v74;
        (*(v24 + 16))(v74, v67, v46);

        (*(v24 + 32))(v48, v68, v46);
        goto LABEL_16;
      }
    }

    else
    {
      v49 = v76;
      if (v61 < 7)
      {
        goto LABEL_23;
      }
    }

    v65 = sub_769A00();
    v48 = v78;
    v72 = v62;
    if (v65)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v66 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v66 = qword_946938;
    }

    v69 = sub_BE38(v46, v66);
    v70 = v73;
    (*(v24 + 16))(v73, v69, v46);
    v71 = v75;
    (*(v24 + 32))(v75, v70, v46);
    sub_765470();

    (*(v24 + 8))(v71, v46);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_5A28A4(uint64_t a1, void *a2)
{
  v33 = a1;
  v34 = a2;
  v3 = sub_762DE0();
  __chkstk_darwin(v3 - 8);
  v31 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v5 - 8);
  v30 = v28 - v6;
  v7 = sub_763750();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v29 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_948740);
  __chkstk_darwin(v10 - 8);
  v28[1] = v28 - v11;
  v12 = sub_75D850();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v28 - v17;
  v28[0] = sub_7606C0();
  v19 = *(v28[0] - 8);
  *&v20 = __chkstk_darwin(v28[0]).n128_u64[0];
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2;
  result = [v2 view];
  if (result)
  {
    v24 = result;
    v25 = [result traitCollection];

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

    v27 = sub_BE38(v12, v26);
    (*(v13 + 16))(v15, v27, v12);

    (*(v13 + 32))(v18, v15, v12);
    (*(v8 + 104))(v29, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v30, 1, 1, v7);
    sub_5A5C98(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
    sub_760940();
    sub_762DA0();
    sub_7606B0();
    sub_5A5A20(v22, v33, v34, *&v32[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView], &type metadata accessor for RedownloadConfiguration, sub_1E54B0);
    return (*(v19 + 8))(v22, v28[0]);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5A2D84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  v77 = a3;
  v78 = a4;
  v75 = a1;
  v76 = a2;
  v7 = sub_760080();
  __chkstk_darwin(v7 - 8);
  v74 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v9 - 8);
  v73 = &v61 - v10;
  v72 = sub_75BD30();
  v11 = *(v72 - 8);
  __chkstk_darwin(v72);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = sub_762DE0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_75D850();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v62 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v61 = &v61 - v25;
  __chkstk_darwin(v26);
  v63 = &v61 - v27;
  __chkstk_darwin(v28);
  v65 = &v61 - v29;
  __chkstk_darwin(v30);
  v66 = &v61 - v31;
  __chkstk_darwin(v32);
  v68 = &v61 - v33;
  v34 = sub_75CF70();
  v70 = *(v34 - 8);
  v71 = v34;
  __chkstk_darwin(v34);
  v69 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground] & 1) == 0)
  {
    v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] = 1;
  }

  v67 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView];
  sub_53166C(a5);
  sub_762DD0();
  sub_762DB0();
  (*(v18 + 8))(v20, v17);
  result = [v5 view];
  if (result)
  {
    v37 = result;
    v79 = [result traitCollection];

    v38 = *(v11 + 104);
    v39 = v72;
    v38(v13, enum case for OfferEnvironment.arcadeProductPage(_:), v72);
    LOBYTE(v37) = sub_75BD20();
    v40 = *(v11 + 8);
    v40(v13, v39);
    v64 = v16;
    if (v37)
    {
      if (qword_93C470 != -1)
      {
        swift_once();
      }

      v41 = qword_99B2D8;
LABEL_16:
      v43 = sub_BE38(v21, v41);
      v44 = v65;
      (*(v22 + 16))(v65, v43, v21);

LABEL_17:
      v45 = *(v22 + 32);
      v46 = v66;
      v45(v66, v44, v21);
      v40(v64, v39);
      v45(v68, v46, v21);
      v47 = sub_BD88(&unk_9457F0);
      (*(*(v47 - 8) + 56))(v73, 1, 1, v47);

      sub_760070();
      v48 = v69;
      sub_75CF60();
      sub_5A5A20(v48, v77, v78, v67, &type metadata accessor for TextConfiguration, sub_1E4800);
      return (*(v70 + 8))(v48, v71);
    }

    v38(v13, enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:), v39);
    v42 = sub_75BD20();
    v40(v13, v39);
    if (v42)
    {
      if (qword_93C468 != -1)
      {
        swift_once();
      }

      v41 = qword_99B2C0;
      goto LABEL_16;
    }

    if (sub_75BD10())
    {
      if (qword_93C460 != -1)
      {
        swift_once();
      }

      v41 = qword_99B2A8;
      goto LABEL_16;
    }

    v38(v13, enum case for OfferEnvironment.navigationBar(_:), v39);
    v49 = sub_75BD20();
    v40(v13, v39);
    if (v49)
    {
      if (qword_93C478 != -1)
      {
        swift_once();
      }

      v50 = sub_BE38(v21, qword_946980);
      v44 = v65;
      (*(v22 + 16))(v65, v50, v21);

      goto LABEL_17;
    }

    v51 = sub_769350();
    if (sub_769A00())
    {
      if (v51 <= 8)
      {
LABEL_24:
        if (sub_769A00())
        {
          v52 = v65;
          if (qword_93C440 != -1)
          {
            swift_once();
          }

          v53 = qword_946920;
        }

        else
        {
          v52 = v65;
          if (qword_93C448 != -1)
          {
            swift_once();
          }

          v53 = qword_946938;
        }

        v56 = sub_BE38(v21, v53);
        v57 = v62;
        (*(v22 + 16))(v62, v56, v21);

        (*(v22 + 32))(v52, v57, v21);
        v44 = v52;
        goto LABEL_17;
      }
    }

    else if (v51 < 7)
    {
      goto LABEL_24;
    }

    if (sub_769A00())
    {
      v54 = v65;
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v55 = qword_946920;
    }

    else
    {
      v54 = v65;
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v55 = qword_946938;
    }

    v58 = sub_BE38(v21, v55);
    v59 = v61;
    (*(v22 + 16))(v61, v58, v21);
    v60 = v63;
    (*(v22 + 32))(v63, v59, v21);
    v44 = v54;
    sub_765470();

    (*(v22 + 8))(v60, v21);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

id sub_5A37A0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = sub_762DE0();
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v5 - 8);
  v28 = &v26 - v6;
  v7 = sub_763750();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_948740);
  __chkstk_darwin(v11 - 8);
  v12 = sub_75D850();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v26 - v18;
  v27 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView];
  result = [v2 view];
  if (result)
  {
    v21 = result;
    v22 = [result traitCollection];

    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v23 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v23 = qword_946938;
    }

    v24 = sub_BE38(v12, v23);
    (*(v13 + 16))(v15, v24, v12);

    (*(v13 + 32))(v19, v15, v12);
    (*(v8 + 104))(v10, enum case for OfferButtonPresenterViewAlignment.center(_:), v7);
    (*(v8 + 56))(v28, 1, 1, v7);
    sub_5A5C98(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
    sub_760940();
    sub_762DA0();
    sub_763830();
    swift_allocObject();
    v25 = sub_763820();
    sub_5A5BA0(v25, v30, v31, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_5A3BD4()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded] == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_530E98(sub_5A5830, v1);

    return sub_53166C(1.0);
  }

  else
  {
    v3 = &v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {

      return [v0 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_5A3D08()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_5A4350();
  }
}

unint64_t sub_5A3D5C(unint64_t result)
{
  if (result <= 2)
  {
    v2 = off_8986A0[result];
    v3 = *(v1 + *off_898688[result]);
    v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView);
    *v4 = v3;
    v4[1] = v2;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_5A3DD8(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v1 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 sizeThatFits:{v10, v12}];
      v14 = v13;
      v15.origin.x = v6;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      if (CGRectGetHeight(v15) >= v14)
      {
        v20.origin.x = v6;
        v20.origin.y = v8;
        v20.size.width = v10;
        v20.size.height = v12;
        CGRectGetMinY(v20);
        v21.origin.x = v6;
        v21.origin.y = v8;
        v21.size.width = v10;
        v21.size.height = v12;
        CGRectGetHeight(v21);
        v22.origin.x = v6;
        v22.origin.y = v8;
        v22.size.width = v10;
        v22.size.height = v12;
        CGRectGetMinX(v22);
        v23.origin.x = v6;
        v23.origin.y = v8;
        v23.size.width = v10;
        v23.size.height = v12;
        CGRectGetWidth(v23);
      }

      else
      {
        v16.origin.x = v6;
        v16.origin.y = v8;
        v16.size.width = v10;
        v16.size.height = v12;
        CGRectGetMinX(v16);
        v17.origin.x = v6;
        v17.origin.y = v8;
        v17.size.width = v10;
        v17.size.height = v12;
        CGRectGetMinY(v17);
        v18.origin.x = v6;
        v18.origin.y = v8;
        v18.size.width = v10;
        v18.size.height = v12;
        CGRectGetWidth(v18);
        v19.origin.x = v6;
        v19.origin.y = v8;
        v19.size.width = v10;
        v19.size.height = v12;
        CGRectGetHeight(v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_5A3F94(id a1, id a2)
{
  if (!a1)
  {
    if (!a2)
    {
      return;
    }

LABEL_6:
    v5 = a2;
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;

      [v5 sizeThatFits:{v13, v15}];
      Height = v16;
      v39.origin.x = v9;
      v39.origin.y = v11;
      v39.size.width = v13;
      v39.size.height = v15;
      if (CGRectGetHeight(v39) >= Height)
      {
        v44.origin.x = v9;
        v44.origin.y = v11;
        v44.size.width = v13;
        v44.size.height = v15;
        MinY = CGRectGetMinY(v44);
        v45.origin.x = v9;
        v45.origin.y = v11;
        v45.size.width = v13;
        v45.size.height = v15;
        v19 = MinY + (CGRectGetHeight(v45) - Height) * 0.5;
        v46.origin.x = v9;
        v46.origin.y = v11;
        v46.size.width = v13;
        v46.size.height = v15;
        MinX = CGRectGetMinX(v46);
        v47.origin.x = v9;
        v47.origin.y = v11;
        v47.size.width = v13;
        v47.size.height = v15;
        Width = CGRectGetWidth(v47);
      }

      else
      {
        v40.origin.x = v9;
        v40.origin.y = v11;
        v40.size.width = v13;
        v40.size.height = v15;
        MinX = CGRectGetMinX(v40);
        v41.origin.x = v9;
        v41.origin.y = v11;
        v41.size.width = v13;
        v41.size.height = v15;
        v19 = CGRectGetMinY(v41);
        v42.origin.x = v9;
        v42.origin.y = v11;
        v42.size.width = v13;
        v42.size.height = v15;
        Width = CGRectGetWidth(v42);
        v43.origin.x = v9;
        v43.origin.y = v11;
        v43.size.width = v13;
        v43.size.height = v15;
        Height = CGRectGetHeight(v43);
      }

      [v5 setFrame:{MinX, v19, Width, Height}];
      [v5 layoutIfNeeded];
      [v5 setAlpha:0.0];
      v22 = v5;
      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 addSubview:v22];

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a1 == a2)
  {
    return;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  [0 layoutIfNeeded];
LABEL_12:
  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a1;
  v37 = sub_5A5788;
  v38 = v26;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_23F0CC;
  v36 = &unk_8985C0;
  v27 = _Block_copy(&v33);
  v28 = a1;
  v29 = a2;

  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v37 = sub_5A5820;
  v38 = v30;
  v33 = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_3D6D80;
  v36 = &unk_898610;
  v31 = _Block_copy(&v33);
  v32 = v28;

  [v25 animateWithDuration:v27 animations:v31 completion:0.3];
  _Block_release(v31);
  _Block_release(v27);
}

uint64_t sub_5A4350()
{
  v1 = sub_BD88(&unk_940200);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  swift_unknownObjectWeakInit();
  v4 = &v0[OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    [v0 dismissViewControllerAnimated:1 completion:0];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
    v9 = Strong;
    swift_beginAccess();
    sub_1ED18(v9 + v8, v3, &unk_940200);

    v10 = sub_764CF0();
    (*(*(v10 - 8) + 48))(v3, 1, v10);
    sub_10A2C(v3, &unk_940200);
  }

  return swift_unknownObjectWeakDestroy();
}

uint64_t sub_5A4520()
{
  v0 = sub_BD88(&unk_940200);
  __chkstk_darwin(v0 - 8);
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_756CD0();
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v32 = sub_763790();
  v33 = v15;
  sub_76A6E0();
  if (!*(v14 + 16) || (v16 = sub_663E34(v34), (v17 & 1) == 0))
  {

    sub_1EB60(v34);
LABEL_10:
    v35 = 0u;
    v36 = 0u;
    goto LABEL_11;
  }

  sub_132B4(*(v14 + 56) + 32 * v16, &v35);
  sub_1EB60(v34);

  if (!*(&v36 + 1))
  {
LABEL_11:
    sub_10A2C(&v35, &unk_93FBD0);
    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_12;
  }

  v18 = swift_dynamicCast();
  v19 = *(v7 + 56);
  v19(v5, v18 ^ 1u, 1, v6);
  v31 = *(v7 + 48);
  if (v31(v5, 1, v6) == 1)
  {
LABEL_12:
    v23 = v5;
    return sub_10A2C(v23, &unk_940200);
  }

  v29 = *(v7 + 32);
  v30 = v7 + 32;
  v29(v12, v5, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v7 + 8))(v12, v6);
    v19(v2, 1, 1, v6);
    goto LABEL_16;
  }

  v21 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  v22 = Strong;
  swift_beginAccess();
  sub_1ED18(v22 + v21, v2, &unk_940200);

  if (v31(v2, 1, v6) == 1)
  {
    (*(v7 + 8))(v12, v6);
LABEL_16:
    v23 = v2;
    return sub_10A2C(v23, &unk_940200);
  }

  v29(v9, v2, v6);
  if (sub_764CB0())
  {
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v26 = v25;
      sub_5A4350();
    }
  }

  v27 = *(v7 + 8);
  v27(v9, v6);
  return (v27)(v12, v6);
}

uint64_t sub_5A4990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v5 = sub_768380();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7683C0();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_756CE0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_BE70(0, &qword_940340);
  v21 = sub_769970();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  (*(v12 + 32))(v16 + v15, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = v23;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = v24;
  v17 = _Block_copy(aBlock);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5A5C98(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  v18 = v21;
  sub_769980();
  _Block_release(v17);

  (*(v27 + 8))(v7, v5);
  return (*(v25 + 8))(v10, v26);
}

void sub_5A4D38()
{
  v0 = sub_764CF0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_756CD0();
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  v13[1] = sub_763B90();
  v13[2] = v6;
  sub_76A6E0();
  if (!*(v5 + 16) || (v7 = sub_663E34(v14), (v8 & 1) == 0))
  {

    sub_1EB60(v14);
LABEL_9:
    v15 = 0u;
    v16 = 0u;
    goto LABEL_10;
  }

  sub_132B4(*(v5 + 56) + 32 * v7, &v15);
  sub_1EB60(v14);

  if (!*(&v16 + 1))
  {
LABEL_10:
    sub_10A2C(&v15, &unk_93FBD0);
    return;
  }

  sub_BE70(0, &qword_95C0B8);
  if (swift_dynamicCast())
  {
    v9 = v14[0];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;

      v12 = [v9 itemID];
      sub_764CD0();
      sub_757EA0();

      (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }
}

uint64_t sub_5A4F74(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_756CE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_5A5094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseInstallPageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseInstallPageViewController()
{
  result = qword_95C080;
  if (!qword_95C080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5A523C()
{
  sub_5A533C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5A533C()
{
  if (!qword_95C090)
  {
    sub_764CF0();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_95C090);
    }
  }
}

uint64_t sub_5A5398(uint64_t result, uint64_t a2, uint64_t a3)
{
  switch(result)
  {
    case 2:
      return sub_384BC(a2, a3);
    case 1:
      return sub_62688(a2, a3);
    case 0:
      return sub_531838(a2, a3);
  }

  return result;
}

void sub_5A5468(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction) = a1;

  sub_59F638();
}

uint64_t sub_5A5588()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5A55DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5A55F4()
{
  v1 = sub_756CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_5A56A8(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_756CE0() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_5A5748()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_5A5788()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  if (result)
  {
    result = [result setAlpha:1.0];
  }

  if (v2)
  {

    return [v2 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_5A57E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_5A5838()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_installOfferView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for InstallPageInstallingOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallFreeOfferView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallFreeOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_preInstallPaidOfferView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for InstallPagePreInstallPaidOfferView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_inAppPurchaseIntentAction) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_activeView);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerViewTransitionFadeDuration) = 0x3FD3333333333333;
  v5 = OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_appAdamId;
  v6 = sub_764CF0();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_offerMode;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_isInBackground) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_didProgressWhileForegrounded) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_pendingAction) = 0;
  v8 = v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_lifecycleObserver;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38InAppPurchaseInstallPageViewController_overlayViewController) = 0;
  sub_76A840();
  __break(1u);
}

id sub_5A5A20(uint64_t a1, uint64_t a2, NSString a3, char *a4, uint64_t (*a5)(void), void (*a6)(char *, void))
{
  v10 = a5(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v19 - v12;
  (*(v14 + 16))(&v19 - v12, a1, v11);
  v15 = *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    a3 = sub_769210();
  }

  [v15 setText:a3];

  v16 = objc_opt_self();
  v17 = [v16 areAnimationsEnabled];
  [v16 setAnimationsEnabled:0];
  a6(v13, *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton]);
  [a4 setNeedsLayout];
  return [v16 setAnimationsEnabled:v17];
}

id sub_5A5BA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_descriptionLabel];
  if (a3)
  {
    v6 = sub_769210();
  }

  else
  {
    v6 = 0;
  }

  [v5 setText:v6];

  v7 = objc_opt_self();
  v8 = [v7 areAnimationsEnabled];
  [v7 setAnimationsEnabled:0];
  v9 = *&a4[OBJC_IVAR____TtC18ASMessagesProvider30InstallPageInstallingOfferView_offerButton];

  sub_1E4844(v10, v9);
  [a4 setNeedsLayout];

  return [v7 setAnimationsEnabled:v8];
}

uint64_t sub_5A5C98(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_5A5D1C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  *&v5[qword_99FF60] = 0;
  *&v5[qword_99FF68] = 0;
  v14 = qword_99FF70;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for ArtworkGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PaletteBackgroundView();
  *&v5[qword_99FF78] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v16 = qword_99DC88;
  v17 = *&v15[qword_99DC88];
  v18 = v15;
  [v17 setNumberOfLines:2];
  v19 = qword_93D9B0;
  v20 = *&v15[v16];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  v22 = sub_BE38(v21, qword_99F508);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v13, v22, v21);
  (*(v23 + 56))(v13, 0, 1, v21);
  sub_75BA40();

  v24 = qword_99FF70;
  [*&v18[qword_99FF70] setClipsToBounds:1];
  [*&v18[v24] _setContinuousCornerRadius:20.0];
  v25 = *&v18[v24];
  v26 = [v18 backgroundView];
  [v26 addSubview:v25];

  v27 = qword_99FF78;
  [*&v18[qword_99FF78] _setCornerRadius:1 continuous:3 maskedCorners:20.0];
  v28 = *&v18[v27];
  v29 = [v18 backgroundView];
  [v29 addSubview:v28];

  return v18;
}

id sub_5A6054()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = [v0 backgroundView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v22.receiver = *&v1[qword_99FF70];
    receiver = v22.receiver;
    v22.super_class = type metadata accessor for ArtworkGrid();
    objc_msgSendSuper2(&v22, "setFrame:", v7, v9, v11, v13);
    sub_44CB80();
    [receiver setNeedsLayout];
    [receiver layoutIfNeeded];
  }

  v15 = *&v1[qword_99FF78];
  [v1 bounds];
  CGRectGetWidth(v23);
  [*&v1[qword_99DC88] frame];
  CGRectGetMaxY(v24);
  if (qword_93DCE8 != -1)
  {
    swift_once();
  }

  v16 = sub_766CA0();
  sub_BE38(v16, qword_99FE00);
  v17 = [v1 traitCollection];
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77D9F0;
  *(v18 + 32) = v17;
  v19 = v17;
  v20 = sub_7671E0();
  sub_7666E0();

  [v15 frame];
  [v15 setFrame:?];
  [v15 layoutIfNeeded];
  return [v2 setAnimationsEnabled:v3];
}

void sub_5A62EC(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  sub_73CEEC(a1, a2, a3 & 1);
  v7 = swift_dynamicCastClass();
  if (v7 && (a3 & 1) == 0)
  {
    v8 = v7;
    v9 = qword_99FF70;
    v10 = *(v7 + qword_99FF70);
    v11 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages);
    v12 = *(v3 + qword_99FF70);
    v12[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType);
    v19 = a1;
    sub_44CB80();
    [v12 setNeedsLayout];
    *&v12[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v11;
    sub_44CD50();
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v11)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v8 + v9);
        v15 = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_artworkImages;
        swift_beginAccess();
        v16 = *(v14 + v15);
        if (v13 >= *(v16 + 16))
        {
          break;
        }

        v17 = *(v16 + 8 * v13 + 32);
        if (v17)
        {
          v18 = v17;
          sub_44C804(v18, v13);
        }

        if (v11 == ++v13)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

uint64_t sub_5A647C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_75B1E0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_740668(a1, a2, a3, a4, v12);
  sub_765B20();
  sub_75DAE0();
  if (!swift_dynamicCastClass())
  {
  }

  sub_75A110();
  sub_768900();
  sub_768ED0();
  v15 = *(v5 + qword_99FF70);
  v28[2] = *&v32[0];
  v29 = v15;
  sub_75DAC0();
  v16 = (*(v11 + 88))(v14, v10);
  if (v16 == enum case for ArtworkGridType.small(_:))
  {
    goto LABEL_3;
  }

  if (v16 == enum case for ArtworkGridType.large(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ArtworkGridType.extraLarge(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ArtworkGridType.mixed(_:))
    {
LABEL_28:
      v27 = *(v11 + 8);
      v11 += 8;
      v27(v14, v10);
LABEL_3:
      v17 = 0;
      goto LABEL_13;
    }

    v17 = 3;
  }

LABEL_13:
  v28[1] = OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType;
  v19 = v29;
  v29[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_gridType] = v17;
  sub_44CB80();
  [v19 setNeedsLayout];
  v20 = sub_75DAD0();
  if (v20 >> 62)
  {
    goto LABEL_30;
  }

  v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
LABEL_15:

  *&v29[OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_expectedNumberOfArtworkImages] = v21;
  sub_44CD50();
  v22 = sub_75DAD0();
  v23 = v22;
  if (v22 >> 62)
  {
    v10 = sub_76A860();
    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
LABEL_17:
      v14 = 0;
      v30 = v23 & 0xFFFFFFFFFFFFFF8;
      v31 = v23 & 0xC000000000000001;
      v28[0] = v10;
      do
      {
        if (v31)
        {
          sub_76A770();
          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          if (v14 >= *(v30 + 16))
          {
            __break(1u);
LABEL_30:
            v21 = sub_76A860();
            goto LABEL_15;
          }

          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_27;
          }
        }

        if (sub_764F20())
        {
          v25 = v29;
          sub_765330();
          v33 = 0;
          memset(v32, 0, sizeof(v32));
          v11 = swift_allocObject();
          *(v11 + 16) = v25;
          *(v11 + 24) = v14;
          v26 = v25;
          sub_75A040();

          v10 = v28[0];

          sub_160090(v32);
        }

        else
        {
        }

        ++v14;
      }

      while (v24 != v10);
    }
  }
}

void sub_5A68E0(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_44D74C();
}

void sub_5A6940()
{
  sub_5A6B74();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = *(v0 + qword_99FF70);
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  [*(v0 + qword_99FF70) _setContinuousCornerRadius:v3];
  [*(v0 + qword_99FF78) _setCornerRadius:1 continuous:3 maskedCorners:v3];
  v4 = *(v0 + v1);
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider11ArtworkGrid_isLazyLayoutEnabled) = v4 ^ 1;
  if (v4 == v5)
  {
    sub_44D8A0();
  }
}

void sub_5A6A00()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + qword_99FF78);
}

void sub_5A6A60(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_99FF78);
}

uint64_t type metadata accessor for GridTodayCardCollectionViewCell()
{
  result = qword_95C0F8;
  if (!qword_95C0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5A6B74()
{
  sub_28399C();
  v1 = (v0 + qword_99DC98);
  if (*(v0 + qword_99DC98))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*v1)
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = v1[1];
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

uint64_t sub_5A6CDC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_5A6D14(uint64_t a1)
{
  v25 = sub_76A920();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_95C4F8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v24 - v7;
  v9 = sub_766CA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5A70D4(v8);
  v26 = a1;
  sub_7592B0();
  v13 = v6 + 8;
  v14 = *(v6 + 8);
  v24[3] = v13;
  v14(v8, v5);
  sub_766470();
  sub_766700();
  v16 = v15;
  v17 = v2 + 8;
  v18 = *(v2 + 8);
  v24[2] = v17;
  v18(v4, v25);
  v19 = v10 + 8;
  v20 = *(v10 + 8);
  v24[1] = v19;
  v20(v12, v9);
  sub_5A70D4(v8);
  v26 = a1;
  sub_7592B0();
  v14(v8, v5);
  sub_766470();
  sub_766700();
  v22 = v21;
  v18(v4, v25);
  v20(v12, v9);
  return v16 + v22;
}

uint64_t sub_5A7020()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_95C4A0);
  sub_BE38(v0, qword_95C4A0);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

uint64_t sub_5A70D4@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_7664A0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_766CA0();
  __chkstk_darwin(v24);
  v23 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  if (qword_93D768 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99EE30);
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
  v15 = sub_B1B4(v26);
  v16 = v2[2];
  v16(v15, v4, v1);
  sub_766CB0();
  v21[1] = v8;
  v17 = v2[1];
  v17(v4, v1);
  if (qword_93D760 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v9, qword_99EE18);
  v22(v4, v18, v9);
  v14(v4, v13, v1);
  v27 = v1;
  v28 = &protocol witness table for FontSource;
  v19 = sub_B1B4(v26);
  v16(v19, v4, v1);
  sub_766CB0();
  v17(v4, v1);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_5A740C()
{
  v0 = sub_BD88(&qword_940AD0);
  sub_161DC(v0, qword_99FF80);
  sub_BE38(v0, qword_99FF80);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

uint64_t sub_5A74A4()
{
  v0 = sub_BD88(&unk_94B6E0);
  sub_161DC(v0, qword_99FF98);
  sub_BE38(v0, qword_99FF98);
  sub_BD88(&qword_93FBE0);
  return sub_7592E0();
}

char *sub_5A7538(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v12 = &v38[-1] - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView] = 0;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel;
  sub_75BB20();
  *&v4[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage] = 0;
  v39.receiver = v4;
  v39.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel;
  v19 = qword_93DD38;
  v20 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_BD88(&unk_94B6E0);
  sub_BE38(v21, qword_99FF98);
  v22 = [v16 traitCollection];
  sub_7592A0();

  [v20 setNumberOfLines:v38[0]];
  [*&v16[v18] _setTextColorFollowsTintColor:1];
  v23 = *&v16[v18];
  v24 = [v16 traitCollection];

  v25 = sub_7699E0();
  if (v25)
  {
    if (qword_93D768 != -1)
    {
      swift_once();
    }

    v26 = qword_99EE30;
  }

  else
  {
    if (qword_93D760 != -1)
    {
      swift_once();
    }

    v26 = qword_99EE18;
  }

  v27 = sub_7666D0();
  v28 = sub_BE38(v27, v26);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v12, v28, v27);
  (*(v29 + 56))(v12, 0, 1, v27);
  sub_75BA40();

  v30 = qword_93DD28;
  v31 = *&v16[v18];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_BD88(&unk_93F8F0);
  sub_BE38(v32, qword_95C4A0);
  v38[4] = v16;
  v33 = v16;
  sub_7592B0();

  sub_76A150();
  v34 = [v33 contentView];
  [v34 addSubview:*&v16[v18]];

  sub_BD88(&qword_9477F0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_77B6D0;
  *(v35 + 32) = sub_767B80();
  *(v35 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v38[3] = ObjectType;
  v38[0] = v33;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v38);
  return v33;
}

void sub_5A7A90(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView];
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

id sub_5A7B54()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView];
  if (v2 || (sub_5A7A90([objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}]), (v2 = *&v0[v1]) != 0))
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage];
    v4 = v2;
    if (v3)
    {
      v3 = [v3 imageWithRenderingMode:2];
    }

    [v4 setImage:v3];
  }

  return [v0 setNeedsLayout];
}

id sub_5A7CA4()
{
  v1 = v0;
  v39.receiver = v0;
  v39.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v39, "layoutSubviews");
  v2 = [v0 contentView];
  sub_2630C();
  sub_75D650();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [v1 traitCollection];
  v12 = sub_7699E0();

  v13 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView;
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView];
  if (v14)
  {
    [v14 sizeThatFits:{v8, v10}];
    v15 = [v1 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_769D60();
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
    sub_769D20();
    [v31 setFrame:?];
  }

  if (qword_93DD30 != -1)
  {
    swift_once();
  }

  v32 = sub_BD88(&qword_940AD0);
  sub_BE38(v32, qword_99FF80);
  v33 = v1;
  sub_7592B0();

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
  v35 = *&v33[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel];
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
  sub_769D20();
  return [v35 setFrame:?];
}

id sub_5A8090(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93DD28 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0);
    sub_BE38(v6, qword_95C4A0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

id sub_5A8230()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = v16 - v4;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel];
  v7 = [v0 traitCollection];
  v8 = sub_7699E0();

  if (v8)
  {
    if (qword_93D768 != -1)
    {
      swift_once();
    }

    v9 = qword_99EE30;
  }

  else
  {
    if (qword_93D760 != -1)
    {
      swift_once();
    }

    v9 = qword_99EE18;
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, v9);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v5, v11, v10);
  sub_7666D0();
  (*(v12 + 56))(v5, 0, 1, v10);
  sub_75BA40();
  if (qword_93DD38 != -1)
  {
    swift_once();
  }

  v13 = sub_BD88(&unk_94B6E0);
  sub_BE38(v13, qword_99FF98);
  v14 = [v1 traitCollection];
  sub_7592A0();

  [v6 setNumberOfLines:v16[1]];
  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for ProductPageLinkCollectionViewCell()
{
  result = qword_95C4E0;
  if (!qword_95C4E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_5A85C8()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_5A8670()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_itemLayoutContext;
  v2 = sub_75C840();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImageView) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_textLabel;
  sub_75BB20();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider33ProductPageLinkCollectionViewCell_iconImage) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_5A87B0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_768380();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7683C0();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BE70(0, &qword_940340);
  v12 = sub_769970();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_5A9F14;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_898760;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5A9F20(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_4C874();
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_5A8A94(void *a1, void *a2, uint64_t a3)
{
  v45 = a3;
  v43 = a2;
  v4 = sub_75EC10();
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_768E70();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = sub_7685A0();
  __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v14);
  v15 = sub_768FF0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    v20 = [v19 request];
    if (v20)
    {
      v21 = v20;
      sub_768900();
      v22 = v47;
      v43 = v19;
      v23 = v45;
      sub_768ED0();
      sub_BE70(0, &qword_959CF0);
      sub_768ED0();
      v24 = aBlock;
      v25 = v46;
      (*(v46 + 16))(v9, v12, v22);
      sub_75EC00();
      v26 = sub_75EBF0();
      (*(v44 + 8))(v6, v4);
      v27 = v24;
      v28 = [v24 ams_activeiTunesAccount];
      [v21 setAccount:v28];

      [v21 setAnonymousMetrics:v26 & 1];
      v29 = v21;
      v30 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v29 bag:sub_768E30()];

      swift_unknownObjectRelease();
      v31 = [v30 canPresent];
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v23;
      v50 = sub_5A9FA8;
      v51 = v32;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v49 = sub_509F0;
      *(&v49 + 1) = &unk_8987B0;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      [v31 addFinishBlock:v33];
      _Block_release(v33);

      return (*(v25 + 8))(v12, v22);
    }

    else
    {
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      sub_BE38(v15, qword_9A0430);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768590();
      v54._countAndFlagsBits = 0xD000000000000049;
      v54._object = 0x80000000007EBA00;
      sub_768580(v54);
      *(&v49 + 1) = sub_BE70(0, &qword_946738);
      *&aBlock = v19;
      v41 = v19;
      sub_768560();
      sub_BDD0(&aBlock);
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      sub_768580(v55);
      sub_7685B0();
      sub_768E80();
    }
  }

  else
  {
    v36 = v43;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v37 = sub_BE38(v15, qword_9A0430);
    (*(v16 + 16))(v18, v37, v15);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v52._object = 0x80000000007D1330;
    v52._countAndFlagsBits = 0xD00000000000003BLL;
    sub_768580(v52);
    aBlock = 0u;
    v49 = 0u;
    sub_768560();
    sub_BDD0(&aBlock);
    v53._countAndFlagsBits = 0x3A726F727265202CLL;
    v53._object = 0xE900000000000020;
    sub_768580(v53);
    v38 = v36;
    if (v36)
    {
      swift_getErrorValue();
      v38 = sub_76A9C0();
      v40 = &type metadata for String;
    }

    else
    {
      v39 = 0;
      v40 = 0;
      *&v49 = 0;
    }

    *&aBlock = v38;
    *(&aBlock + 1) = v39;
    *(&v49 + 1) = v40;
    sub_768560();
    sub_BDD0(&aBlock);
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_768580(v56);
    sub_7685B0();
    sub_768E80();

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_5A92A0(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v45 = a4;
  v39 = a3;
  v6 = sub_7685A0();
  __chkstk_darwin(v6 - 8);
  v48 = sub_758B40();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_75F340();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v47 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_760280();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_765490();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v39;
    v24 = [v39 startEngagement];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v53 = sub_C5E80;
    v54 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v52 = sub_151A34;
    *(&v52 + 1) = &unk_898800;
    v26 = _Block_copy(&aBlock);
    v38 = v8;
    v27 = v23;

    [v24 addFinishBlock:v26];
    _Block_release(v26);

    v53 = 0;
    aBlock = 0u;
    v52 = 0u;
    (*(v19 + 104))(v22, enum case for FlowPage.viewController(_:), v18);
    v28 = sub_7570A0();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = sub_759E30();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v50 = sub_BE70(0, &qword_946628);
    v49 = v27;
    v30 = v27;
    sub_768790();
    (*(v40 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v41);
    (*(v42 + 104))(v47, enum case for FlowAnimationBehavior.infer(_:), v43);
    (*(v46 + 104))(v38, enum case for FlowOrigin.inapp(_:), v48);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v31 = sub_758AD0();
    sub_72D7A8(v31, 1, v45);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v33 = sub_768FF0();
    sub_BE38(v33, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v56._object = 0x80000000007EBAB0;
    v56._countAndFlagsBits = 0xD000000000000047;
    sub_768580(v56);
    swift_getErrorValue();
    v34 = sub_76A9C0();
    *(&v52 + 1) = &type metadata for String;
    *&aBlock = v34;
    *(&aBlock + 1) = v35;
    sub_768560();
    sub_BDD0(&aBlock);
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    sub_768580(v57);
    sub_7685B0();
    sub_768E80();
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v36 = sub_768FF0();
    sub_BE38(v36, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();
  }
}

uint64_t sub_5A9BD4(uint64_t a1)
{
  v2 = sub_7687C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v6 = sub_768FF0();
  sub_BE38(v6, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768E80();

  v7 = [objc_opt_self() engagementRequestForFullSheet];
  aBlock[4] = sub_5A9EAC;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151A34;
  aBlock[3] = &unk_898710;
  v8 = _Block_copy(aBlock);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
  sub_BD88(&qword_94DDC0);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v9 = sub_768F30();

  return v9;
}

uint64_t sub_5A9EB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5A9ECC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_5A9F20(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5A9F68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_5A9FB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_5AA000(double a1)
{
  v3 = sub_767030();
  v34 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v31 - v7;
  __chkstk_darwin(v9);
  v11 = v31 - v10;
  __chkstk_darwin(v12);
  v13 = sub_766D70();
  v35 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_769A00() & 1) != 0 || (sub_7699D0())
  {
    v16 = 1;
  }

  else
  {
    v32 = v1;
    v33 = v13;
    v37._object = 0x80000000007C9F90;
    v37._countAndFlagsBits = 0xD000000000000016;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v17 = sub_75B750(v37, v38);
    v31[1] = v18;
    v31[2] = v17;
    sub_767020();
    if (qword_93D758 != -1)
    {
      swift_once();
    }

    v19 = sub_7666D0();
    sub_BE38(v19, qword_99EE00);
    sub_766FF0();
    v20 = *(v34 + 8);
    v20(v5, v3);
    sub_767010();
    v20(v8, v3);
    sub_767000();
    v20(v11, v3);
    sub_766D50();
    sub_766D90();
    sub_766D60();
    v22 = v21;
    v23 = v32;
    sub_B170(v32 + 16, v32[19]);
    sub_7673F0();
    v25 = v24;
    sub_B170(v23, v23[3]);
    sub_766710();
    v27 = v26;
    (*(v35 + 8))(v15, v33);
    v16 = v25 + v22 + v27 > a1;
  }

  sub_5AA3E4(v16, v36);
  sub_B170(v36, v36[3]);
  sub_7673F0();
  v29 = v28;
  sub_BEB8(v36);
  return v29;
}

uint64_t sub_5AA3E4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_766BD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  v12 = sub_766950();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  if (a1)
  {
    sub_766930();
    sub_5AADB0(v3, &v38);
    v19 = swift_allocObject();
    v20 = v47;
    *(v19 + 144) = v46;
    *(v19 + 160) = v20;
    *(v19 + 176) = v48;
    v21 = v43;
    *(v19 + 80) = v42;
    *(v19 + 96) = v21;
    v22 = v45;
    *(v19 + 112) = v44;
    *(v19 + 128) = v22;
    v23 = v39;
    *(v19 + 16) = v38;
    *(v19 + 32) = v23;
    v24 = v41;
    *(v19 + 48) = v40;
    *(v19 + 64) = v24;
    sub_766940();

    v25 = *(v13 + 8);
    v25(v15, v12);
    v26 = v37;
    v37[3] = v12;
    v26[4] = &protocol witness table for VerticalStack;
    sub_B1B4(v26);
    sub_766940();
    return (v25)(v18, v12);
  }

  else
  {
    sub_766BA0();
    sub_5AADB0(v3, &v38);
    v28 = swift_allocObject();
    v29 = v47;
    *(v28 + 144) = v46;
    *(v28 + 160) = v29;
    *(v28 + 176) = v48;
    v30 = v43;
    *(v28 + 80) = v42;
    *(v28 + 96) = v30;
    v31 = v45;
    *(v28 + 112) = v44;
    *(v28 + 128) = v31;
    v32 = v39;
    *(v28 + 16) = v38;
    *(v28 + 32) = v32;
    v33 = v41;
    *(v28 + 48) = v40;
    *(v28 + 64) = v33;
    sub_766BB0();

    v34 = *(v6 + 8);
    v34(v8, v5);
    v35 = v37;
    v37[3] = v5;
    v35[4] = &protocol witness table for HorizontalStack;
    sub_B1B4(v35);
    sub_766BB0();
    return (v34)(v11, v5);
  }
}

uint64_t sub_5AA76C(void *a1, double a2, double a3, double a4)
{
  v48 = sub_766880();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v41 - v10;
  v12 = sub_767030();
  v44 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v41 - v16;
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  __chkstk_darwin(v21);
  v22 = sub_766D70();
  v45 = *(v22 - 8);
  v46 = v22;
  __chkstk_darwin(v22);
  v24 = v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_769A00();
  v49 = a1;
  if (v25 & 1) != 0 || (sub_7699D0())
  {
    v26 = 0;
    v27 = 1;
  }

  else
  {
    v42 = v11;
    v43 = v6;
    v51._object = 0x80000000007C9F90;
    v51._countAndFlagsBits = 0xD000000000000016;
    v52._countAndFlagsBits = 0;
    v52._object = 0xE000000000000000;
    v41[1] = sub_75B750(v51, v52);
    v41[0] = v28;
    sub_767020();
    if (qword_93D758 != -1)
    {
      swift_once();
    }

    v29 = sub_7666D0();
    sub_BE38(v29, qword_99EE00);
    sub_766FF0();
    v30 = *(v44 + 8);
    v30(v14, v12);
    v27 = 1;
    sub_767010();
    v30(v17, v12);
    sub_767000();
    v30(v20, v12);
    sub_766D50();
    sub_766D90();
    sub_766D60();
    v32 = v31;
    v33 = v47;
    sub_B170((v47 + 128), *(v47 + 152));
    sub_7673F0();
    v35 = v34;
    sub_B170(v33, *(v33 + 24));
    sub_766710();
    v37 = v36;
    (*(v45 + 8))(v24, v46);
    if (v35 + v32 + v37 <= a4)
    {
      v27 = 0;
      v26 = *(v33 + 40) ^ 1;
    }

    else
    {
      v26 = 0;
    }

    v6 = v43;
    v11 = v42;
  }

  sub_5AA3E4(v27, v50);
  sub_766850();
  *(swift_allocObject() + 16) = v26 & 1;
  sub_766870();

  v38 = *(v6 + 8);
  v39 = v48;
  v38(v8, v48);
  sub_52D788(v49);
  v38(v11, v39);
  return sub_BEB8(v50);
}

void sub_5AACAC(uint64_t a1, char a2)
{
  v3 = sub_766840();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    v6[3] = sub_766970();
    v6[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v6);
    sub_766960();
    (*(v4 + 104))(v6, enum case for DisjointStack.EdgePosition.anchored(_:), v3);
    sub_766800();
  }
}

uint64_t sub_5AAE2C()
{
  sub_BEB8(v0 + 16);
  sub_BEB8(v0 + 64);
  sub_BEB8(v0 + 104);
  sub_BEB8(v0 + 144);

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_5AAEEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5AAF34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_5AAFAC()
{
  result = qword_95C500;
  if (!qword_95C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C500);
  }

  return result;
}

void sub_5AB004(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton] = a1;
  v6 = a1;

  if (!*&v1[v2])
  {
    v4 = [v1 navigationItem];
    v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem];
    [v4 setRightBarButtonItem:v5];
  }
}

void sub_5AB0B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource) = 0;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate) = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout;
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_navigationBarPalettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v8 + 50) = 0u;
  *(v8 + 40) = 0u;
  *(v8 + 24) = 0u;
  *(v3 + v7) = v8;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing) = 0;
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_presenter) = a1;
  sub_75A110();
  sub_768900();

  sub_768ED0();
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_artworkLoader) = v25;
  sub_BD88(&qword_95C688);
  swift_allocObject();

  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_shelfDataSource) = sub_4792F0(v9);
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView) = [objc_allocWithZone(type metadata accessor for SegmentedControlView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar) = [objc_allocWithZone(type metadata accessor for SearchBar()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = [objc_allocWithZone(type metadata accessor for CollectionViewTableLayout()) init];
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
  v12 = v10;

  if (v12)
  {

    v13 = sub_7212CC(v12, a2);

    swift_unknownObjectWeakAssign();
    sub_5AFBC0(&qword_95C690, v14, type metadata accessor for PurchasesViewController);
    v15 = v13;
    sub_761680();
    v16 = v15;
    sub_7616A0();
    v17 = sub_769210();

    [v16 setTitle:v17];

    *(v16 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle) = 0;
    v18 = [v16 navigationItem];
    [v18 setLargeTitleDisplayMode:2];

    v19 = sub_5AFBC0(&qword_95C698, 255, &type metadata accessor for PurchasesContentPresenter);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = v19;

    v22 = v16;
    v23 = sub_5AFA90(a1, v22, sub_45AF0, v21, a2);

    v24 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing];
    *&v22[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing] = v23;
  }

  else
  {
    __break(1u);
  }
}

void sub_5AB4AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_75ED10();
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
  v16 = sub_BE70(0, &qword_93E540);
  v17 = sub_76A000();
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
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_presenter];
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_shelfDataSource];
  v106 = v18;
  v21 = [v1 snapshotPageTraitEnvironment];
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v23 = type metadata accessor for PurchasesCollectionViewDataSource();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_presenter] = v19;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_shelfDataSource] = v20;

  v25 = [v21 snapshotPageTraitEnvironment];
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_pageTraits] = v25;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_objectGraph] = v22;
  v110.receiver = v24;
  v110.super_class = v23;

  v26 = objc_msgSendSuper2(&v110, "init");
  swift_unknownObjectRelease();
  v27 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource] = v26;

  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_artworkLoader];
  v30 = [v1 snapshotPageTraitEnvironment];
  v31 = type metadata accessor for PurchasesCollectionViewDelegate();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_objectGraph] = v22;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_presenter] = v19;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource] = v20;
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_artworkLoader] = v29;
  v103 = v19;

  v34 = [v30 snapshotPageTraitEnvironment];
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits] = v34;
  v109.receiver = v32;
  v109.super_class = v31;
  v35 = objc_msgSendSuper2(&v109, "init");
  swift_unknownObjectRelease();
  v36 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate;
  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate] = v35;
  v38 = v35;

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = &v38[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler];
  v41 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_didScrollHandler];
  *v40 = sub_5AFC24;
  v40[1] = v39;

  sub_F704(v41);

  v42 = *&v1[v36];
  v43 = v42;
  sub_71EE2C(v42);
  v44 = *&v1[v27];
  v45 = v44;
  sub_71EE40(v44);
  v46 = v106;
  v47 = v106;
  v48 = sub_76A000();
  [v47 setBackgroundColor:v48];

  [v47 setAlwaysBounceVertical:1];
  v49 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout;
  v50 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_collectionViewTableLayout];
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
  sub_BD88(&qword_9439E8);
  v53 = sub_764930();
  v54 = *(v53 - 8);
  v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_77B6D0;
  (*(v54 + 104))(v56 + v55, enum case for Shelf.ContentType.purchasesLockup(_:), v53);
  v57 = sub_1A2300(v56);
  swift_setDeallocating();
  (*(v54 + 8))(v56 + v55, v53);
  swift_deallocClassInstance();
  v58 = v47;
  sub_697B78(v57, v46);

  sub_5AFC2C(v46);

  sub_761690();
  v59 = v104;
  sub_761650();
  v60 = v107;
  v61 = v105;
  (*(v107 + 104))(v105, enum case for PurchasesContentMode.hidden(_:), v52);
  sub_5AFBC0(&qword_95C6A8, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(v56) = sub_7691C0();
  v64 = *(v60 + 8);
  v62 = v60 + 8;
  v63 = v64;
  v64(v61, v52);
  v64(v59, v52);
  if ((v56 & 1) == 0)
  {
    v99 = v58;
    v100 = v63;
    v65 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView];
    [v1 pageMarginInsets];
    [v65 setLayoutMargins:?];
    sub_5AC070();
    v66 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v108 = OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl;
    v67 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentedControl];

    [v67 removeTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];
    v68 = &v65[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler];
    v69 = *&v65[OBJC_IVAR____TtC18ASMessagesProvider20SegmentedControlView_segmentDidChangeHandler];
    *v68 = sub_5AFE68;
    v68[1] = v66;
    swift_retain_n();
    sub_F704(v69);

    v70 = v67;
    v71 = v65;
    [v70 addTarget:v65 action:"selectedIndexChangedIn:" forControlEvents:4096];

    v72 = sub_761600();
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
        sub_75ECE0();
        v80 = sub_769210();

        v81 = sub_75ECF0();
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
    sub_761650();
    v84 = sub_75ECF0();
    v100(v83, v52);
    [v82 setSelectedSegmentIndex:v84];

    v58 = v99;
  }

  v85 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar];
  v112._countAndFlagsBits = 0x484352414553;
  v112._object = 0xE600000000000000;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  sub_75B750(v112, v113);
  v86 = sub_769210();

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

  v90 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing];
  if (v90)
  {
    v91 = objc_allocWithZone(UIContextMenuInteraction);
    v92 = v90;
    v93 = [v91 initWithDelegate:v92];
    [v58 addInteraction:v93];
  }

  v94 = [v1 navigationItem];
  v95 = [v94 rightBarButtonItem];

  v96 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_doneButtonItem] = v95;
}

void sub_5ABF80(void *a1)
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

      v6 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar];
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

void sub_5AC070()
{
  v1 = v0;
  v2 = [v0 parentViewController];
  v3 = [v2 navigationController];

  if (!v3 || (v3, (v4 = [v1 parentViewController]) == 0) || (v5 = v4, v6 = objc_msgSend(v4, "navigationItem"), v5, (v7 = v6) == 0))
  {
    v7 = [v1 navigationItem];
  }

  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_navigationBarPalettePresenter];
  v9 = v7;
  sub_6B75E0(v9, 0, 1);

  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView];
  v50[3] = type metadata accessor for SegmentedControlView();
  v50[4] = &protocol witness table for UIView;
  v50[0] = v10;
  sub_134D8(v50, v49);
  sub_134D8(v49, v48);
  v11 = swift_allocObject();
  sub_34698(v49, v11 + 16);
  v12 = v10;
  sub_BEB8(v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    sub_BEB8(v48);
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
      sub_BE70(0, &qword_93E550);
      v20 = sub_76A1C0();

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
    sub_BE70(0, &qword_93E550);
    sub_75D650();
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
    sub_B170(v48, v48[3]);
    sub_7665A0();
    v44 = v43;

    [v14 setPreferredHeight:v44];
    [v14 preferredHeight];
    [v14 setMinimumHeight:?];
  }

  v45 = *(v8 + 32);
  v46 = *(v8 + 40);
  v47 = *(v8 + 48);
  *(v8 + 32) = sub_2B47DC;
  *(v8 + 40) = v11;
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  sub_2B47E4(v45, v46, v47);

  sub_BEB8(v48);
}

void sub_5AC4A8(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_5AC504(a1);
  }
}

id sub_5AC504(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_75ED10();
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
  v14 = sub_75ECF0();
  v15 = *(v5 + 8);
  v15(v8, v4);
  if (v14 == v11 || (v12 = enum case for PurchasesContentMode.notOnDevice(_:), v13(v8, enum case for PurchasesContentMode.notOnDevice(_:), v4), v16 = sub_75ECF0(), v15(v8, v4), v16 == v11))
  {
    sub_5AB004(0);
LABEL_5:
    v13(v8, v12, v4);
    return sub_761660();
  }

  v12 = enum case for PurchasesContentMode.hidden(_:);
  v13(v8, enum case for PurchasesContentMode.hidden(_:), v4);
  v17 = sub_75ECF0();
  result = (v15)(v8, v4);
  if (v17 == v11)
  {
    v37._object = 0x80000000007EBCA0;
    v37._countAndFlagsBits = 0xD000000000000014;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_75B750(v37, v38);
    v36 = ObjectType;
    v35[0] = v2;
    ObjectType = v2;
    v18 = sub_769210();

    v19 = v36;
    if (v36)
    {
      v20 = sub_B170(v35, v36);
      v32[1] = v32;
      v33 = v18;
      v21 = *(v19 - 8);
      v22 = __chkstk_darwin(v20);
      v24 = v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v24, v22);
      v25 = sub_76A930();
      (*(v21 + 8))(v24, v19);
      v18 = v33;
      sub_BEB8(v35);
    }

    else
    {
      v25 = 0;
    }

    v26 = [objc_allocWithZone(UIBarButtonItem) initWithTitle:v18 style:0 target:v25 action:"unhideAll"];

    swift_unknownObjectRelease();
    v27 = ObjectType;
    sub_5AB004(v26);
    v28 = [v27 navigationItem];
    v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_hideAllButton];
    [v28 setRightBarButtonItem:v29];

    v30 = [v27 navigationItem];
    v31 = [v30 rightBarButtonItem];

    [v31 setEnabled:1];
    goto LABEL_5;
  }

  return result;
}

void sub_5AC9EC(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_75A0A0();
}

void sub_5ACA74(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_75A0A0();
}

void sub_5ACAE4()
{
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar];
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

  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView];
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
      v36 = sub_705B8(v27, v29, v31, v33, v34, v35);
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

void sub_5ACE2C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v35.receiver = v4;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v8)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = &selRef_setTextAlignment_;
  v11 = [v4 traitCollection];
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = a2;
  v14[1] = a3;
  *&v13[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v34.receiver = v13;
  v34.super_class = v12;
  v15 = &unk_90D000;
  v16 = objc_msgSendSuper2(&v34, "init");
  v17 = [v4 collectionView];
  v18 = [v16 snapshotPageTraitEnvironment];
  *&v9[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits] = v18;
  v19 = swift_unknownObjectRelease();
  if (v17)
  {
    v31[1] = v31;
    v32 = *(*&v9[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource] + 24);
    __chkstk_darwin(v19);
    v20 = v17;

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    v15 = &unk_90D000;
    sub_768610();
    v10 = &selRef_setTextAlignment_;
  }

  else
  {
  }

  v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v4 v10[23]];
  v24 = objc_allocWithZone(v12);
  v25 = &v24[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v25 = a2;
  v25[1] = a3;
  *&v24[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v23;
  v33.receiver = v24;
  v33.super_class = v12;
  v26 = objc_msgSendSuper2(&v33, v15[447]);
  v27 = [v4 collectionView];
  v28 = [v26 snapshotPageTraitEnvironment];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_pageTraits] = v28;
  v29 = swift_unknownObjectRelease();
  if (v27)
  {
    v32 = *(*&v22[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_shelfDataSource] + 24);
    __chkstk_darwin(v29);
    v30 = v27;

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    sub_768610();
  }

  else
  {
  }
}

void sub_5AD27C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_75ED10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v34 - v11;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "traitCollectionDidChange:", a1, v10);
  sub_761650();
  (*(v6 + 104))(v8, enum case for PurchasesContentMode.hidden(_:), v5);
  sub_5AFBC0(&qword_95C6A8, 255, &type metadata accessor for PurchasesContentMode);
  LOBYTE(a1) = sub_7691C0();
  v13 = *(v6 + 8);
  v13(v8, v5);
  v13(v12, v5);
  if ((a1 & 1) == 0)
  {
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_segmentedControlView];
    [v2 pageMarginInsets];
    [v14 setLayoutMargins:?];
  }

  v15 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDelegate];
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = &selRef_absoluteDimension_;
  v18 = [v2 snapshotPageTraitEnvironment];
  v19 = [v2 collectionView];
  v20 = [v18 snapshotPageTraitEnvironment];
  *&v16[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_pageTraits] = v20;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v21 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider31PurchasesCollectionViewDelegate_shelfDataSource];
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

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    v17 = &selRef_absoluteDimension_;
    sub_768610();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_purchasesCollectionViewDataSource];
  if (!v25)
  {
    goto LABEL_13;
  }

  v26 = v25;
  v27 = [v2 v17[78]];
  v28 = [v2 collectionView];
  v29 = [v27 v17[78]];
  *&v26[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v30 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider33PurchasesCollectionViewDataSource_shelfDataSource];
  v31 = [v29 v17[78]];
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

    sub_BD88(&qword_9467C0);
    sub_2A3AD4();
    sub_768610();

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_5ADAD8()
{
  v1 = v0;
  v2 = sub_767140();
  __chkstk_darwin(v2 - 8);
  if (sub_761630())
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_761920();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_767130();
    v8 = objc_allocWithZone(sub_767160());
    v9 = sub_767150();
    v10 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
    sub_761930();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_761920();
      return;
    }
  }

  __break(1u);
}

void sub_5ADCD8()
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
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_5ADDC0()
{
  v1 = v0;
  sub_767230();
  sub_5AFBC0(&qword_95C680, 255, &type metadata accessor for PurchasesContentPresenter);
  swift_errorRetain();

  v2 = sub_7671F0();
  v3 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_overlayViewController];
  sub_761930();

  v5 = *&v1[v3];
  *&v1[v3] = v2;
  v8 = v2;

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];

    sub_761920();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5ADF40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView];
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

  sub_6B79A8();
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar] setHidden:0];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_5AFA48;
  *(v9 + 24) = v8;
  v12[4] = sub_47164;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1EB578;
  v12[3] = &unk_898B08;
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

void sub_5AE134()
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

void sub_5AE214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v7 = v6;
  v14 = [v6 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setHidden:1];
  }

  v16 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_navigationBarPalettePresenter];
  if (a5)
  {
    sub_6B79A8();
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

  [*&v7[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_searchBar] setHidden:(a6 & 1) == 0];
  v20 = objc_allocWithZone(type metadata accessor for EmptyStateView());

  v21 = sub_6A4468(a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView;
  v23 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_emptyStateView];
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

void sub_5AE440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_757640();
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
    *(v14 + 16) = sub_5AF980;
    *(v14 + 24) = v13;
    aBlock[4] = sub_2EC28;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_898A90;
    v15 = _Block_copy(aBlock);
    v16 = v3;

    [v11 performBatchUpdates:v15 completion:0];
    _Block_release(v15);
  }
}

void sub_5AE658(void (*a1)(void), uint64_t a2, void *a3, uint64_t a4)
{
  a1();
  v6 = [a3 collectionView];
  if (v6)
  {
    v7 = v6;
    sub_BD88(&unk_941A18);
    v8 = sub_757640();
    v9 = *(v8 - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_77B6D0;
    (*(v9 + 16))(v11 + v10, a4, v8);
    isa = sub_769450().super.isa;

    [v7 deleteItemsAtIndexPaths:isa];
  }
}

void sub_5AE7CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_757640();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v6 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  v9 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v65 - v13;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_768430();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1ED18(a2, v103, &unk_93FBD0);
  if (v104)
  {
    sub_BE70(0, &qword_93E550);
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
      sub_BE70(0, &qword_940340);
      *v20 = sub_769970();
      (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
      v31 = sub_768460();
      (*(v18 + 8))(v20, v17);
      if (v31)
      {
        v87 = xmmword_94DD18;
        v88 = xmmword_94DD28;
        v89 = xmmword_94DD38;
        v85 = xmmword_94DCF8;
        v86 = xmmword_94DD08;
        v93 = v81;
        v94 = v82;
        v95 = v83;
        v91 = v79;
        v92 = v80;
        v97 = xmmword_94DCF8;
        v98 = xmmword_94DD08;
        v100 = xmmword_94DD28;
        v101 = xmmword_94DD38;
        v90 = qword_94DD48;
        v96 = v84;
        v102 = qword_94DD48;
        v99 = xmmword_94DD18;
        sub_1ED18(&v85, &v73, &unk_93FEF0);
        xmmword_94DD18 = v93;
        xmmword_94DD28 = v94;
        xmmword_94DD38 = v95;
        qword_94DD48 = v96;
        xmmword_94DCF8 = v91;
        xmmword_94DD08 = v92;
        sub_10A2C(&v97, &unk_93FEF0);
        v32 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
        v33 = sub_BD88(&unk_93F630);
        sub_45C2C(&v79, &v73);
        sub_768860();
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(v16, 1, v33) == 1)
        {
          sub_10A2C(v16, &unk_93F980);
        }

        else
        {
          sub_32A6C0(a1, 1, v32, v16);

          (*(v34 + 8))(v16, v33);
        }

        v75 = xmmword_94DD18;
        v76 = xmmword_94DD28;
        v77 = xmmword_94DD38;
        v78 = qword_94DD48;
        v73 = xmmword_94DCF8;
        v74 = xmmword_94DD08;
        xmmword_94DCF8 = v85;
        xmmword_94DD08 = v86;
        xmmword_94DD18 = v87;
        xmmword_94DD28 = v88;
        xmmword_94DD38 = v89;
        qword_94DD48 = v90;
        sub_10A2C(&v73, &unk_93FEF0);
        sub_45C88(&v79);

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
    sub_10A2C(v103, &unk_93FBD0);
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
    v61 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
    v62 = sub_BD88(&unk_93F630);
    sub_768860();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v11, 1, v62) == 1)
    {
      sub_10A2C(v11, &unk_93F980);
    }

    else
    {
      sub_32A6C0(v66, 1, v61, v11);

      (*(v63 + 8))(v11, v62);
    }

    return;
  }

  v38 = v70;
  v39 = sub_769460();

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
  isa = sub_757550().super.isa;
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
  sub_BE70(0, &qword_940340);
  *v20 = sub_769970();
  (*(v18 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v17);
  v54 = sub_768460();
  (*(v18 + 8))(v20, v17);
  if ((v54 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v87 = xmmword_94DD18;
  v88 = xmmword_94DD28;
  v89 = xmmword_94DD38;
  v85 = xmmword_94DCF8;
  v86 = xmmword_94DD08;
  v93 = v81;
  v94 = v82;
  v95 = v83;
  v91 = v79;
  v92 = v80;
  v97 = xmmword_94DCF8;
  v98 = xmmword_94DD08;
  v100 = xmmword_94DD28;
  v101 = xmmword_94DD38;
  v90 = qword_94DD48;
  v96 = v84;
  v102 = qword_94DD48;
  v99 = xmmword_94DD18;
  sub_1ED18(&v85, &v73, &unk_93FEF0);
  xmmword_94DD18 = v93;
  xmmword_94DD28 = v94;
  xmmword_94DD38 = v95;
  qword_94DD48 = v96;
  xmmword_94DCF8 = v91;
  xmmword_94DD08 = v92;
  sub_10A2C(&v97, &unk_93FEF0);
  v55 = *&v71[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph];
  v56 = sub_BD88(&unk_93F630);
  sub_45C2C(&v79, &v73);
  v57 = v67;
  sub_768860();
  v58 = *(v56 - 8);
  v59 = (*(v58 + 48))(v57, 1, v56);
  v60 = v68;
  if (v59 == 1)
  {
    sub_10A2C(v57, &unk_93F980);
  }

  else
  {
    sub_32A6C0(v66, 1, v55, v57);

    (*(v58 + 8))(v57, v56);
  }

  v64 = v70;
  v75 = xmmword_94DD18;
  v76 = xmmword_94DD28;
  v77 = xmmword_94DD38;
  v78 = qword_94DD48;
  v73 = xmmword_94DCF8;
  v74 = xmmword_94DD08;
  xmmword_94DCF8 = v85;
  xmmword_94DD08 = v86;
  xmmword_94DD18 = v87;
  xmmword_94DD28 = v88;
  xmmword_94DD38 = v89;
  qword_94DD48 = v90;
  sub_10A2C(&v73, &unk_93FEF0);
  sub_45C88(&v79);

  (*(v69 + 8))(v60, v64);
}

void sub_5AF224()
{

  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23PurchasesViewController_flowPreviewing);
}

void sub_5AF528(void *a1, uint64_t a2)
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

uint64_t sub_5AF8BC()
{
  v1 = sub_757640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_5AF980()
{
  v1 = *(sub_757640() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_5AE658(v2, v3, v4, v5);
}

uint64_t sub_5AF9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5AFA10()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5AFA50()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_5AFA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_5AFBC0(&qword_95C698, 255, &type metadata accessor for PurchasesContentPresenter);
  v9 = sub_BD88(&qword_95C6A0);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_944108];
  *&v10[qword_944108 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_944100];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *&v10[qword_944118] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

uint64_t sub_5AFBC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_5AFC2C(void *a1)
{
  if (a1)
  {
    type metadata accessor for TitleHeaderView(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = UICollectionElementKindSectionHeader;
    sub_769BD0();
    v4 = sub_769210();

    [a1 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v3 withReuseIdentifier:v4];

    type metadata accessor for InteractiveTitleHeaderView();
    v5 = swift_getObjCClassFromMetadata();
    v6 = v3;
    sub_769BD0();
    v7 = sub_769210();

    [a1 registerClass:v5 forSupplementaryViewOfKind:v6 withReuseIdentifier:v7];

    type metadata accessor for InfiniteScrollFooterView();
    v8 = swift_getObjCClassFromMetadata();
    v9 = UICollectionElementKindSectionFooter;
    sub_769BD0();
    v10 = sub_769210();

    [a1 registerClass:v8 forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];

    sub_BE70(0, &qword_947680);
    v11 = swift_getObjCClassFromMetadata();
    v12 = sub_769210();
    v13 = sub_769210();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v12 withReuseIdentifier:v13];

    v14 = sub_769210();
    v15 = sub_769210();
    [a1 registerClass:v11 forSupplementaryViewOfKind:v14 withReuseIdentifier:v15];
  }
}

uint64_t sub_5AFE70()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_5AFEF4()
{
  result = qword_94FB98;
  if (!qword_94FB98)
  {
    sub_7626C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FB98);
  }

  return result;
}

uint64_t sub_5AFF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_758BB0();
    v8 = a1;
    sub_7626B0();
    sub_758B50();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_12EA98();
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = sub_769970();
    sub_768F10();

    return sub_BEB8(v13);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v12 = sub_768FF0();
    sub_BE38(v12, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    sub_5B0984();
    swift_allocError();
    sub_768F50();
  }
}

uint64_t sub_5B020C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = sub_758B40();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F340();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_760280();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7687B0();
  __chkstk_darwin(v11 - 8);
  v12 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_765490();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = sub_762690();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.gameAchievements(_:), v18);
  v24 = sub_7570A0();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = sub_759E30();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v42 = &type metadata for GameCenterAchievementsPage;
  v40 = v22;
  v41 = v23;
  v29 = v22;

  sub_768790();
  (*(v9 + 104))(v30, enum case for FlowPresentationContext.infer(_:), v31);
  (*(v33 + 104))(v32, enum case for FlowAnimationBehavior.infer(_:), v34);
  (*(v36 + 104))(v35, enum case for FlowOrigin.inapp(_:), v37);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v26 = sub_758AD0();
  sub_72D7A8(v26, 1, v38);
  sub_768F00();
}

uint64_t sub_5B0724()
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v0 = sub_768FF0();
  sub_BE38(v0, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_5B087C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_BD88(&qword_94DDC0);
  v4 = sub_768F90();
  sub_758BB0();
  v7[3] = sub_12EA98();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_769970();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  sub_758B60();

  sub_BEB8(v7);
  return v4;
}

unint64_t sub_5B0984()
{
  result = qword_95C6B0;
  if (!qword_95C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C6B0);
  }

  return result;
}

unint64_t sub_5B0A00()
{
  result = qword_95C6B8;
  if (!qword_95C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C6B8);
  }

  return result;
}

uint64_t sub_5B0A58()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75E410();
  sub_161DC(v4, qword_99FFD0);
  sub_BE38(v4, qword_99FFD0);
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F130);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v16[3] = sub_766CA0();
  v16[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v16);
  v14 = v0;
  v15 = &protocol witness table for FontSource;
  v7 = sub_B1B4(v13);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  v14 = &type metadata for Double;
  v15 = &protocol witness table for Double;
  v13[0] = 0;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9[4] = &type metadata for Double;
  v9[5] = &protocol witness table for Double;
  v9[1] = 0;
  return sub_75E400();
}

id sub_5B0DB4()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_BD88(&unk_944E80);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_3B5494(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10A2C(v4, &unk_944E70);
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_75B470();
    sub_75B460();
    v11 = sub_759CF0();
    v12 = sub_22A974(v11, sub_30AE4);

    v13 = sub_759CE0();
    sub_4ED3B8(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_5B1048()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v20[0] = sub_7664F0();
  v3 = *(v20[0] - 8);
  __chkstk_darwin(v20[0]);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75E410();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75E430();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();

  if (qword_93DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v6, qword_99FFD0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel];
  v20[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v20[5] = &protocol witness table for UIView;
  v20[1] = v17;
  v18 = v17;
  sub_75E420();
  sub_75E3F0();
  (*(v3 + 8))(v5, v20[0]);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyFooterCollectionViewCell()
{
  result = qword_95C6F0;
  if (!qword_95C6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_5B147C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_760AD0();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_768C60();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7666D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_itemLayoutContext;
  v14 = sub_75C840();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyText;
  v16 = sub_BD88(&unk_944E80);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_99F130);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel] = sub_4ECF40(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_768C10();
  sub_10A2C(v36, &unk_93FBD0);
  sub_10A2C(v37, &unk_93FBD0);
  sub_769E70();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_75BA90();

  v27 = *&v19[v22];
  sub_BE70(0, &qword_93E540);
  v28 = v27;
  v29 = sub_769FF0();
  v30 = *&v28[qword_9580B0];
  *&v28[qword_9580B0] = v29;
  v31 = v29;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_4ED788();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

uint64_t sub_5B1974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_75D3C0();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.trailing(_:), v3);
  sub_75D3D0();
  v6 = sub_75D400();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

uint64_t sub_5B1A98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, double a6@<D6>, double a7@<D7>)
{
  v84 = a4;
  v87 = a1;
  v88 = a3;
  v86 = a2;
  v90 = a6;
  v91 = a7;
  v89 = a5;
  v76 = sub_764520();
  v68 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_767D60();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7656A0();
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v74 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v68 - v12;
  __chkstk_darwin(v13);
  v73 = &v68 - v14;
  v15 = sub_7649E0();
  v85 = *(v15 - 8);
  __chkstk_darwin(v15);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v68 - v18;
  v72 = sub_763BD0();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_764930();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&qword_9438F8);
  __chkstk_darwin(v25);
  v83 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v68 - v28;
  sub_1ED18(v87, &v68 - v28, &qword_963790);
  v30 = *(v25 + 48);
  v87 = v29;
  sub_1ED18(v86, &v29[v30], &qword_963790);
  swift_getKeyPath();
  sub_BD88(&unk_94F1F0);
  sub_768750();

  v86 = v22;
  v31 = (*(v22 + 88))(v24, v21);
  if (v31 == enum case for Shelf.ContentType.action(_:))
  {
    swift_getKeyPath();
    sub_768750();

    v32 = v85;
    if ((*(v85 + 88))(v19, v15) == enum case for Shelf.ContentsMetadata.searchLandingTrendingSection(_:))
    {
      (*(v32 + 96))(v19, v15);
      v33 = v71;
      v34 = v70;
      v35 = v72;
      (*(v71 + 32))(v70, v19, v72);
      v36 = sub_763BC0();
      swift_getKeyPath();
      sub_768750();

      v38 = v80;
      v37 = v81;
      v39 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v92)
      {
        v39 = &enum case for PageGrid.Direction.vertical(_:);
      }

      v40 = v73;
      (*(v80 + 104))(v73, *v39, v81);
      v41 = v82;
      sub_75B4A0();
      v42 = sub_767D40();
      (*(v77 + 8))(v41, v78);
      if (v42 & 1) != 0 && (sub_75B4C0())
      {
        v36 = 1;
      }

      (*(v38 + 16))(v79, v40, v37);
      sub_2655A4(v36);
      sub_765670();
      (*(v38 + 8))(v40, v37);
      (*(v33 + 8))(v34, v35);
LABEL_24:
      v63 = &qword_9438F8;
      v62 = v87;
      return sub_10A2C(v62, v63);
    }

    (*(v32 + 8))(v19, v15);
    v55 = v83;
    v92 = v84;
    v56 = v87;
    sub_1ED18(v87, v83, &qword_9438F8);
    v57 = *(v25 + 48);
    sub_B7A24();
  }

  else
  {
    v43 = v85;
    if (v31 != enum case for Shelf.ContentType.searchChartsAndCategories(_:))
    {
      v58 = v83;
      v92 = v84;
      v59 = v87;
      sub_1ED18(v87, v83, &qword_9438F8);
      v60 = *(v25 + 48);
      sub_B7A24();
      sub_75B530();
      sub_10A2C(v59, &qword_9438F8);
      sub_10A2C(v58 + v60, &qword_963790);
      sub_10A2C(v58, &qword_963790);
      return (*(v86 + 8))(v24, v21);
    }

    swift_getKeyPath();
    v44 = v69;
    sub_768750();

    if ((*(v43 + 88))(v44, v15) == enum case for Shelf.ContentsMetadata.searchLandingChartsAndCategoriesSection(_:))
    {
      (*(v43 + 96))(v44, v15);
      v45 = v68;
      (*(v68 + 32))(v75, v44, v76);
      swift_getKeyPath();
      sub_768750();

      v47 = v80;
      v46 = v81;
      v48 = &enum case for PageGrid.Direction.horizontal(_:);
      if (!v92)
      {
        v48 = &enum case for PageGrid.Direction.vertical(_:);
      }

      (*(v80 + 104))(v74, *v48, v81);
      v49 = v82;
      sub_75B4A0();
      v50 = sub_767D40();
      v51 = *(v77 + 8);
      v52 = v49;
      v53 = v78;
      v51(v52, v78);
      if (v50)
      {
        v54 = 1;
      }

      else
      {
        v54 = sub_764510();
      }

      v64 = v82;
      sub_75B4A0();
      v65 = sub_767D40();
      v51(v64, v53);
      if (v65 & 1) != 0 && (sub_75B4C0())
      {
        v54 = 1;
      }

      v66 = v75;
      v67 = v74;
      (*(v47 + 16))(v79, v74, v46);
      sub_3CC450(v54);
      sub_765670();
      (*(v47 + 8))(v67, v46);
      (*(v45 + 8))(v66, v76);
      goto LABEL_24;
    }

    (*(v43 + 8))(v44, v15);
    v55 = v83;
    v92 = v84;
    v56 = v87;
    sub_1ED18(v87, v83, &qword_9438F8);
    v57 = *(v25 + 48);
    sub_B7A24();
  }

  sub_75B530();
  sub_10A2C(v56, &qword_9438F8);
  sub_10A2C(v55 + v57, &qword_963790);
  v62 = v55;
  v63 = &qword_963790;
  return sub_10A2C(v62, v63);
}

uint64_t sub_5B2718()
{
  sub_176F34();

  return sub_75B530();
}

uint64_t sub_5B27FC()
{
  sub_176F34();

  return sub_75B520();
}

uint64_t sub_5B28E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5B2B28();

  return PageGridCaching<>.invalidateCache()(a1, v4, a2);
}

uint64_t sub_5B293C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D6>, double a9@<D7>)
{
  v21[6] = a5;
  v21[7] = a6;
  v21[5] = a4;
  *&v21[3] = a8;
  *&v21[4] = a9;
  v21[1] = a7;
  v21[2] = a1;
  v12 = sub_BD88(&qword_9438F8);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v21 - v17;
  sub_1ED18(a2, v21 - v17, &qword_963790);
  sub_1ED18(a3, &v18[*(v13 + 56)], &qword_963790);
  v22 = *v9;
  sub_1ED18(v18, v15, &qword_9438F8);
  v19 = *(v13 + 56);
  sub_75B530();
  sub_10A2C(v18, &qword_9438F8);
  sub_10A2C(&v15[v19], &qword_963790);
  return sub_10A2C(v15, &qword_963790);
}

unint64_t sub_5B2B28()
{
  result = qword_95C700;
  if (!qword_95C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C700);
  }

  return result;
}

uint64_t sub_5B2B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v4 = sub_BD88(&qword_944EA8);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - v5);
  v7 = sub_764660();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  sub_763680();
  v15 = sub_769210();

  [v14 setText:v15];

  sub_763660();
  (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_5B44CC();
  v16 = sub_7691C0();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if ((v16 & 1) != 0 || (v18 = sub_763630()) == 0)
  {
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  else
  {
    v19 = v18;
    v20 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    sub_763650();
    *v6 = v19;
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  }

  v22 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v23 = sub_763620();
  v24 = v23;
  if (!(v23 >> 62))
  {
    v25 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_15:

    v28 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_74E5D4(v28, v6, 0, v30);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_5B3CA8();

    return sub_5B4524(v6);
  }

  v25 = sub_76A860();
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = _swiftEmptyArrayStorage;
  result = sub_76A7C0();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v29[1] = v22;
    v27 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      ++v27;

      sub_762500();

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (v25 != v27);

    v28 = v31;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_5B2F94()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_95C708 = result;
  return result;
}

char *sub_5B2FE4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_760AD0();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = sub_75A010();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7664A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_766CA0();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = sub_765770();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_93DB30 != -1)
  {
    swift_once();
  }

  v26 = sub_7666D0();
  v53 = sub_BE38(v26, qword_99F988);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_B1B4(v66);
  (*(v14 + 16))(v29, v16, v13);
  sub_766CB0();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_B1B4(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(sub_75A030());
  v33 = sub_75A000();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(sub_75BB20());
  *&v34[v35] = sub_75BB10();
  v38 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  *(v39 + 1) = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = sub_769B20();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_BD88(&qword_9477F0);
  v49 = swift_allocObject();
  v63 = xmmword_77B6D0;
  *(v49 + 16) = xmmword_77B6D0;
  *(v49 + 32) = sub_767B80();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = sub_767890();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v66);
  return v50;
}

uint64_t sub_5B387C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_766950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_766930();
  v24 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  sub_75A030();
  sub_7665D0();
  sub_766940();
  sub_BEB8(v21);
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v22 = sub_75BB20();
  v23 = &protocol witness table for UILabel;
  v21[0] = v15;
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  sub_766940();

  v14(v9, v3);
  sub_BEB8(v21);
  v18 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v22 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v23 = &protocol witness table for CustomLayoutView;
  v21[0] = v18;
  a1[3] = v3;
  a1[4] = &protocol witness table for VerticalStack;
  sub_B1B4(a1);
  v19 = v18;
  sub_766940();
  v14(v12, v3);
  return sub_BEB8(v21);
}

uint64_t sub_5B3B40(int a1, id a2)
{
  v2 = [a2 traitCollection];
  sub_7699B0();

  return sub_7668C0();
}

void sub_5B3CA8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_93DD48 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_95C708 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_5B45C4;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_23F0CC;
  *&v6.d = &unk_898DE0;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_74F654();
}

uint64_t sub_5B3EFC()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_5B387C(v5);
  sub_B170(v5, v5[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  sub_7673E0();

  sub_BEB8(v5);
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_5B40A4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = sub_769B20();
  if (v2)
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  [v1 setTextAlignment:v4];
  [v0 setNeedsLayout];

  return [v0 invalidateIntrinsicContentSize];
}

uint64_t sub_5B41AC(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  *(v5 + 3) = v3;
  *(v5 + 4) = a1;
  v6 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v6 = sub_5B46B0;
  v6[1] = v5;

  v7 = *v6;

  (v7)(v8);
}

void sub_5B42C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_755FA8(v8, a3, v9);
    }
  }
}

double sub_5B4420()
{
  sub_5B387C(v3);
  sub_B170(v3, v3[3]);
  sub_7673F0();
  v1 = v0;
  sub_BEB8(v3);
  return v1;
}

unint64_t sub_5B44CC()
{
  result = qword_95C758;
  if (!qword_95C758)
  {
    sub_764660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95C758);
  }

  return result;
}

uint64_t sub_5B4524(uint64_t a1)
{
  v2 = sub_BD88(&qword_944EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5B458C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_5B45C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_5B4610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5B4630()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5B4668()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_5B46BC()
{
  v0 = sub_760AD0();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = sub_75A010();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7664A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_766CA0();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = sub_765770();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_93DB30 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  v33 = sub_BE38(v18, qword_99F988);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v44);
  (*(v6 + 16))(v21, v8, v5);
  sub_766CB0();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_B1B4(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(sub_75A030());
  v25 = sub_75A000();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(sub_75BB20());
  *(v26 + v28) = sub_75BB10();
  v31 = OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC18ASMessagesProvider37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_5B4D00(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_76A860();
    if (v14)
    {
      v15 = v14;
      v1 = sub_7E3E8(v14, 0);
      sub_10BC8C(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_76A860();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_76A770();
          v10 = sub_76A770();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_45EDF0(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_45EDF0(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_5B4F14(size_t a1)
{
  v2 = sub_75C510();
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_45D574(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_5B5140(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_76A860();
    if (v19)
    {
      v20 = v19;
      v1 = sub_7E3E8(v19, 0);
      sub_10CC98(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_76A860();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_76A770();
          v11 = sub_76A770();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_45EDF0(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_45EDF0(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

id sub_5B5350()
{
  v1 = sub_760F30();
  if (v1 == sub_760F30())
  {
    v2 = 1;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility);
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView) setHidden:v2];
  if (sub_75FF00())
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton);
    v4 = 1;
  }

  else
  {
    v5 = sub_760F30();
    v6 = sub_760F30();
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton);
    if (v5 == v6)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1);
    }
  }

  return [v3 setHidden:v4];
}

char *sub_5B5448(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView;
  type metadata accessor for ProductTitleView.IconTitleView();
  *&v5[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_animationVerticalOffset] = 0x4010000000000000;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_navigationBarMode] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButtonMode] = 0;
  v11 = &v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapHandler];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer;
  *&v5[v12] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility] = 0;
  v13 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton] = sub_1DD00C(1);
  v32.receiver = v5;
  v32.super_class = type metadata accessor for ProductTitleView();
  v14 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setHeightShouldBeIncreasedByTabBarHeight:1];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTapGestureRecognizer] setEnabled:0];
  v19 = *&v16[v18];
  [v19 addTarget:v16 action:"didTapIcon:"];

  v20 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView] addGestureRecognizer:*&v16[v18]];
  [*&v16[v20] setHidden:1];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton;
  [*&v16[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton] setHidden:1];
  [v16 addSubview:*&v16[v20]];
  [v16 addSubview:*&v16[v21]];
  [*&v16[v21] setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
  [*(*&v16[v21] + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView) setContentMode:1];
  [*&v16[v21] setShowsLargeContentViewer:1];
  v22 = *&v16[v21];
  v23 = objc_allocWithZone(UILargeContentViewerInteraction);
  v24 = v22;
  v25 = [v23 init];
  [v24 addInteraction:v25];

  v26 = [v16 traitCollection];
  LOBYTE(v24) = sub_7699D0();

  if (v24)
  {
    v27 = 16.0;
  }

  else
  {
    v27 = 20.0;
  }

  [v16 layoutMargins];
  v29 = v28;
  [v16 layoutMargins];
  [v16 setLayoutMargins:{v29, v27}];
  sub_BD88(&qword_9477F0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_77B6D0;
  *(v30 + 32) = sub_767890();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769F40();

  swift_unknownObjectRelease();

  return v16;
}

double sub_5B588C(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_7699D0();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_769C80(), v7, (v18 & 1) == 0))
  {
    if (CGRectGetMinY(v17) <= 50.0)
    {
      y = v17.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v17.origin.x;
    width = v17.size.width;
    height = v17.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v19);
    [v2 bounds];
    v9 = CGRectGetHeight(v20);
    [v2 floatingTabBarHeight];
    MidY = MinY + (v9 - v10) * 0.5;
  }

  return MidY + a1 * -0.5;
}

double sub_5B59D4(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = sub_7699D0();

  if ((v5 & 1) != 0 && (v6 = [v2 overlays]) != 0 && (v7 = v6, sub_769C80(), v7, (v20 & 1) == 0))
  {
    if (CGRectGetMinY(v19) <= 50.0)
    {
      y = v19.origin.y;
    }

    else
    {
      y = 0.0;
    }

    x = v19.origin.x;
    width = v19.size.width;
    height = v19.size.height;
    MidY = CGRectGetMidY(*(&y - 1));
  }

  else
  {
    [v2 bounds];
    MinY = CGRectGetMinY(v21);
    [v2 bounds];
    v9 = CGRectGetHeight(v22);
    [v2 floatingTabBarHeight];
    v11 = MinY + (v9 - v10) * 0.5;
    [v2 floatingTabBarHeight];
    MidY = v12 + v11;
  }

  return MidY + a1 * -0.5;
}

uint64_t sub_5B5B2C()
{
  v1 = v0;
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_948720);
  __chkstk_darwin(v6 - 8);
  v8 = v101 - v7;
  *&v9 = COERCE_DOUBLE(type metadata accessor for ProductTitleView());
  v115.receiver = v0;
  v115.super_class = v9;
  objc_msgSendSuper2(&v115, "layoutSubviews");
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_offerButton];
  sub_75D650();
  v11 = &v10[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  v12 = v10[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16];
  v106 = v10;
  v101[0] = v5;
  v107 = v8;
  if (v12)
  {
    v13 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v10[v13], v114);
    sub_B170(v114, v114[3]);
    sub_760DE0();
    v15 = v14;
    v17 = v16;
    sub_BEB8(v114);
    *v11 = v15;
    v11[1] = v17;
    *(v11 + 16) = 0;
  }

  else
  {
    v17 = v11[1];
  }

  sub_75D650();
  CGRectGetMaxX(v116);
  sub_5B588C(v17);
  sub_75D650();
  sub_769D20();
  sub_769BA0();
  v105 = v18;
  v104 = v19;
  v103 = v20;
  v102 = v21;
  sub_769D50();
  MaxX = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = [v1 traitCollection];
  v31 = sub_7699F0();

  v32 = [v1 contentOverlayRects];
  v101[1] = sub_5B8064();
  v33 = sub_769460();

  if ((v31 & 1) == 0)
  {
    v33 = sub_5B5140(v33);
  }

  v108 = v3;
  v109 = v2;
  MidX = *&v9;
  if (v33 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v35 = 0;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v38 = sub_76A770();
      }

      else
      {
        if (v35 >= *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_51;
        }

        v38 = *(v33 + 8 * v35 + 32);
      }

      v39 = v38;
      v40 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v38 CGRectValue];
      x = v118.origin.x;
      y = v118.origin.y;
      width = v118.size.width;
      height = v118.size.height;
      v125.origin.x = MaxX;
      v125.origin.y = v25;
      v125.size.width = v27;
      v125.size.height = v29;
      if (!CGRectIntersectsRect(v118, v125))
      {

        goto LABEL_20;
      }

      v45 = [v1 traitCollection];
      v46 = sub_7699F0();

      v47 = x;
      v48 = y;
      v49 = width;
      v50 = height;
      if (v46)
      {
        MaxX = CGRectGetMaxX(*&v47);
      }

      else
      {
        MinX = CGRectGetMinX(*&v47);
        v117.origin.x = MaxX;
        v117.origin.y = v25;
        v117.size.width = v27;
        v117.size.height = v29;
        v37 = CGRectGetWidth(v117);

        MaxX = MinX - v37;
      }

      ++v35;
      if (v40 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_20:

  v119.origin.x = MaxX;
  v119.origin.y = v25;
  v119.size.width = v27;
  v119.size.height = v29;
  v51 = CGRectGetMinX(v119);
  sub_75D650();
  v52 = CGRectGetMinX(v120);
  v53 = 0.0;
  v54 = v109;
  v55 = v108;
  if (v52 <= v51 && (v121.origin.x = MaxX, v121.origin.y = v25, v121.size.width = v27, v121.size.height = v29, v56 = CGRectGetMaxX(v121), sub_75D650(), v56 <= CGRectGetMaxX(v122)))
  {
    sub_769D10();
    v105 = v58;
    v104 = v59;
    v103 = v60;
    v102 = v61;
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v105 = 0.0;
    v104 = 0.0;
    v103 = 0.0;
    v102 = 0.0;
  }

  v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1] = v57;
  sub_5B5350();
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView];
  v62 = OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconAspectRatio;
  swift_beginAccess();
  v63 = v107;
  sub_29A8E8(v33 + v62, v107);
  v64 = *(v55 + 48);
  v65 = v64(v63, 1, v54);
  sub_9C2A0(v63);
  v66 = 0.0;
  v67 = 0.0;
  v68 = 0.0;
  if (v65 != 1)
  {
    sub_75D650();
    v70 = v69;
    if (v64(v33 + v62, 1, v54))
    {
      v68 = 40.0;
    }

    else
    {
      v71 = v101[0];
      (*(v55 + 16))(v101[0], v33 + v62, v54);
      sub_766660();
      v68 = v72;
      (*(v55 + 8))(v71, v54);
    }

    v73 = *(v33 + OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_appTitleView);
    [v73 sizeThatFits:{1.79769313e308, 1.79769313e308, v101[0]}];
    v75 = v74;
    v77 = v76;
    v78 = [v73 isHidden];
    v79 = v75 + 50.0;
    if (v78)
    {
      v79 = 40.0;
    }

    if (v79 >= v70)
    {
      v67 = v70;
    }

    else
    {
      v67 = v79;
    }

    if (v68 <= v77)
    {
      v68 = v77;
    }

    sub_75D650();
    MidX = CGRectGetMidX(v123);
    v66 = sub_5B59D4(v68);
    v80 = [v1 contentOverlayRects];
    v81 = sub_769460();

    v111 = v81;
    v82 = &v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility];
    if ((v1[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_collisionVisibility + 1] & 1) == 0)
    {
      sub_BD88(&unk_93F5C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_77D9F0;
      *(inited + 32) = [objc_opt_self() valueWithCGRect:{MaxX, v25, v27, v29}];
      sub_10A938(inited);
      v81 = v111;
    }

    v53 = MidX + v67 * -0.5;
    if (v81 >> 62)
    {
      v84 = sub_76A860();
    }

    else
    {
      v84 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
    }

    v85 = 0;
    do
    {
      v86 = v85;
      if (v84 == v85)
      {
        break;
      }

      if ((v81 & 0xC000000000000001) != 0)
      {
        v87 = sub_76A770();
      }

      else
      {
        if (v85 >= *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_53;
        }

        v87 = *(v81 + 8 * v85 + 32);
      }

      v88 = v87;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_52;
      }

      [v87 CGRectValue];
      v126.origin.x = v53;
      v126.origin.y = v66;
      v126.size.width = v67;
      v126.size.height = v68;
      v89 = CGRectIntersectsRect(v124, v126);

      v85 = v86 + 1;
    }

    while (!v89);

    *v82 = v84 != v86;
    sub_5B5350();
  }

  [v33 setFrame:{v53, v66, v67, v68, v101[0]}];
  v90 = type metadata accessor for OfferButton();
  v91 = v106;
  v113.receiver = v106;
  v113.super_class = v90;
  objc_msgSendSuper2(&v113, "frame");
  v93 = v92;
  v95 = v94;
  v97 = v96;
  v99 = v98;
  v112.receiver = v91;
  v112.super_class = v90;
  objc_msgSendSuper2(&v112, "setFrame:", v105, v104, v103, v102);
  return sub_1DC798(v93, v95, v97, v99);
}