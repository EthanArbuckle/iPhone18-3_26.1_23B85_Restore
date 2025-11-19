uint64_t sub_10029BCF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10029BD40()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
  [v1 setHidden:0];
  v20 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
  [v2 setHidden:0];
  v3 = [v1 subviews];
  sub_100016F40(0, &qword_1009441F0);
  v4 = sub_1007701BC();

  v21 = v2;
  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      [v7 setHidden:0];
      [v8 setAlpha:1.0];

      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v10 = [v2 subviews];
  v11 = sub_1007701BC();

  if (v11 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10077158C())
  {
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_10077149C();
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v11 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      [v14 setHidden:0];
      [v15 setAlpha:1.0];

      ++v13;
      if (v16 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v17 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] setHidden:0];
  [*&v21[v17] setUserInteractionEnabled:1];
  v18 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v20 + v18) = 0;
}

uint64_t sub_10029C010()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10099E208);
  sub_10000A61C(v0, qword_10099E208);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10029C174(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v46 = a1;
  sub_1007639FC();
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0E98);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v9(v5, v7, v6);
  v11 = enum case for FontSource.useCase(_:);
  v12 = v3[13];
  v51 = v3 + 13;
  v53 = v12;
  v12(v5, enum case for FontSource.useCase(_:), v2);
  v50 = sub_10076D9AC();
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v54);
  v14 = v3 + 2;
  v44 = v3[2];
  v44(v13, v5, v2);
  sub_10076D9BC();
  v15 = v3[1];
  v47 = v3 + 1;
  v49 = v15;
  v15(v5, v2);
  sub_1007639DC();
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v6, qword_1009A0EB0);
  v9(v5, v42, v6);
  v53(v5, v11, v2);
  v45 = v6;
  v16 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v52 = v10;
  v48 = v9;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v54);
  v44(v17, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763AAC();
  v18 = v42;
  v48(v5, v42, v6);
  HIDWORD(v41) = v11;
  v43 = v14;
  v19 = v53;
  v53(v5, v11, v2);
  v58 = v16;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v54);
  v21 = v44;
  v44(v20, v5, v2);
  sub_10076D9BC();
  v22 = v49;
  v49(v5, v2);
  sub_100763A7C();
  v23 = v18;
  v24 = v45;
  v48(v5, v23, v45);
  v19(v5, v11, v2);
  v25 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v54);
  v21(v26, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763A6C();
  v48(v5, v42, v24);
  v27 = HIDWORD(v41);
  v53(v5, HIDWORD(v41), v2);
  v58 = v25;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v54);
  v21(v28, v5, v2);
  sub_10076D9BC();
  v22(v5, v2);
  sub_100763ACC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v29 = v45;
  v30 = sub_10000A61C(v45, qword_1009A0EE0);
  v31 = v48;
  v48(v5, v30, v29);
  v53(v5, v27, v2);
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v54);
  v21(v32, v5, v2);
  sub_10076D9BC();
  v49(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v29, qword_1009A0EC8);
  v31(v5, v33, v29);
  v53(v5, v27, v2);
  v34 = v50;
  v58 = v50;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v35 = v31;
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v54);
  v37 = v44;
  v44(v36, v5, v2);
  sub_10076D9BC();
  v38 = v49;
  v49(v5, v2);
  sub_100763A3C();
  sub_100763A1C();
  v35(v5, v33, v45);
  v53(v5, HIDWORD(v41), v2);
  v58 = v34;
  v59 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v54);
  v37(v39, v5, v2);
  sub_10076D9BC();
  v38(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_10029CAF0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock);
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock + 8);
  v4 = (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);
  v5 = *v4;
  *v4 = v2;
  v4[1] = v3;
  sub_10001CE50(v2);
  sub_10001CE50(v2);
  sub_1000167E0(v5);
  sub_1002624F8();
  sub_1000167E0(v2);
  v6 = *v1;
  v7 = v1[1];
  v8 = (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);
  v9 = *v8;
  *v8 = *v1;
  v8[1] = v7;
  sub_10001CE50(v6);
  sub_10001CE50(v6);
  sub_1000167E0(v9);
  sub_1002624F8();

  return sub_1000167E0(v6);
}

char *sub_10029CBF0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - v12;
  v14 = &v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter] = 0;
  type metadata accessor for SmallLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] = v16;
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView] = v17;
  v53.receiver = v5;
  v53.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v19 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  swift_unknownObjectWeakAssign();
  v20 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52.receiver = v18;
  v52.super_class = ObjectType;
  v24 = v18;
  objc_msgSendSuper2(&v52, "setLayoutMargins:", UIEdgeInsetsZero.top, left, bottom, right);
  v25 = *&v18[v19];
  v51.receiver = v24;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "layoutMargins");
  [v25 setLayoutMargins:?];
  v26 = *&v18[v20];
  v50.receiver = v24;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, "layoutMargins");
  [v26 setLayoutMargins:?];
  [v24 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [*&v18[v19] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [*(*&v18[v19] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView) setHidden:1];
  v27 = *&v18[v19];
  sub_100261178(1);

  [v24 addSubview:*&v18[v20]];
  v49 = v19;
  [v24 addSubview:*&v18[v19]];
  [*&v18[v20] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v48 = v24;
  sub_10029D110();
  v28 = qword_100940AE0;
  v29 = *(*&v18[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_10076D3DC();
  v31 = sub_10000A61C(v30, qword_1009A0EB0);
  v32 = *(v30 - 8);
  v33 = *(v32 + 16);
  v47 = v31;
  v33(v13);
  v34 = *(v32 + 56);
  v34(v13, 0, 1, v30);
  sub_1007625DC();

  v35 = *(*&v18[v20] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v36 = qword_100940AE8;
  v37 = v35;
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A61C(v30, qword_1009A0EC8);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  sub_1007625DC();

  v39 = v49;
  v40 = *(*&v18[v49] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  (v33)(v13, v47, v30);
  v34(v13, 0, 1, v30);
  v41 = v40;
  sub_1007625DC();

  v42 = *(*&v18[v39] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  (v33)(v13, v38, v30);
  v34(v13, 0, 1, v30);
  v43 = v42;
  sub_1007625DC();
  v44 = v48;

  return v44;
}

id sub_10029D110()
{
  v1 = v0;
  v2 = sub_100763ADC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 traitCollection];
  v8 = [v7 preferredContentSizeCategory];
  v9 = sub_10077087C();

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  if (v9)
  {
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v11 = sub_10000A61C(v2, qword_10099D298);
    v24 = v3[2];
    v24(v6, v11, v2);
    v12 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v13 = v3[3];
    v13(&v10[v12], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v14 = v3[1];
    v14(v6, v2);
    [v10 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v24(v6, v11, v2);
    v16 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v13(&v15[v16], v6, v2);
    swift_endAccess();
    [v15 setNeedsLayout];
    v14(v6, v2);
    return [v15 setLayoutMargins:{16.0, 0.0, 16.0, 0.0}];
  }

  else
  {
    if (qword_10093F840 != -1)
    {
      swift_once();
    }

    v18 = sub_10000A61C(v2, qword_10099D280);
    v24 = v3[2];
    v24(v6, v18, v2);
    v19 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v20 = v3[3];
    v20(&v10[v19], v6, v2);
    swift_endAccess();
    [v10 setNeedsLayout];
    v21 = v3[1];
    v21(v6, v2);
    [v10 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
    v24(v6, v18, v2);
    v23 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v20(&v22[v23], v6, v2);
    swift_endAccess();
    [v22 setNeedsLayout];
    v21(v6, v2);
    return [v22 setLayoutMargins:{4.0, 0.0, 4.0, 0.0}];
  }
}

void sub_10029D7B0(char a1, char a2)
{
  if ((a1 & 1) == 0)
  {
    v3 = v2;
    LOBYTE(v4) = a2;
    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = [v5 subviews];
      sub_100016F40(0, &qword_1009441F0);
      v7 = sub_1007701BC();

      aBlock = _swiftEmptyArrayStorage;
      if (v7 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
      {
        v32 = v4;
        v9 = 0;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v10 = sub_10077149C();
          }

          else
          {
            if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_17;
            }

            v10 = *(v7 + 8 * v9 + 32);
          }

          v11 = v10;
          v4 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          type metadata accessor for OfferButton();
          if (swift_dynamicCastClass())
          {
          }

          else
          {
            sub_1007714CC();
            sub_1007714FC();
            sub_10077150C();
            sub_1007714DC();
          }

          ++v9;
          if (v4 == i)
          {
            v12 = aBlock;
            LOBYTE(v4) = v32;
            goto LABEL_20;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_20:

      sub_10000A5D4(&unk_100942870);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1007841E0;
      v14 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
      *(v13 + 32) = v14;
      if (v4)
      {
        v15 = v14;
        if ((v13 & 0xC000000000000001) == 0)
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v16 = v15;
          goto LABEL_24;
        }

LABEL_52:
        v16 = sub_10077149C();
LABEL_24:
        v17 = v16;
        [v16 setHidden:0];

        v18 = objc_opt_self();
        v19 = swift_allocObject();
        *(v19 + 16) = v12;
        *(v19 + 24) = v13;
        v37 = sub_10029F3B8;
        v38 = v19;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_10009AEDC;
        v36 = &unk_10088F738;
        v20 = _Block_copy(&aBlock);

        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        v37 = sub_10029F410;
        v38 = v21;
        aBlock = _NSConcreteStackBlock;
        v34 = 1107296256;
        v35 = sub_1000513F0;
        v36 = &unk_10088F788;
        v22 = _Block_copy(&aBlock);

        [v18 animateWithDuration:4 delay:v20 options:v22 animations:0.33 completion:0.0];
        _Block_release(v22);
        _Block_release(v20);
        return;
      }

      if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v23 = sub_10077158C();
      }

      else
      {
        v23 = v12[2];
      }

      v24 = v14;
      if (v23)
      {
        v25 = 0;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v26 = sub_10077149C();
          }

          else
          {
            if (v25 >= v12[2])
            {
              goto LABEL_50;
            }

            v26 = v12[v25 + 4];
          }

          v27 = v26;
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          [v26 setAlpha:0.0];
          [v27 setHidden:1];

          ++v25;
          if (v28 == v23)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

LABEL_38:

      v29 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        v12 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v30 = sub_10077149C();
          }

          else
          {
            if (v12 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_51;
            }

            v30 = *(v13 + 8 * v12 + 32);
          }

          v31 = v30;
          v12 = (v12 + 1);
          [v30 setAlpha:1.0];
          [v31 setHidden:0];
        }

        while (v29 != v12);
      }
    }
  }
}

void sub_10029DCB0(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 setAlpha:0.0];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_10077158C())
  {
    for (k = 0; ; ++k)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v11 = sub_10077149C();
      }

      else
      {
        if (k >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(a2 + 8 * k + 32);
      }

      v12 = v11;
      v13 = k + 1;
      if (__OFADD__(k, 1))
      {
        break;
      }

      [v11 setAlpha:1.0];

      if (v13 == j)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

void sub_10029DE34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    for (j = 0; ; ++j)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (j >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a2 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v5 setHidden:1];

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_10029DFA0(double a1, double a2, uint64_t a3, objc_class *a4)
{
  v8 = *v4;
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v9 = sub_100763ADC();
  v10 = sub_10000A61C(v9, qword_10099DDA0);
  v13.receiver = v8;
  v13.super_class = a4;
  objc_msgSendSuper2(&v13, "layoutMargins");
  sub_1002630B4(v10, v8, a1, a2, v11, v12);
}

uint64_t sub_10029E0B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_10029E170(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076361C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094FCE0);
  __chkstk_darwin(v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v52 - v10;
  v12 = sub_10000A5D4(&qword_10094FCE8);
  __chkstk_darwin(v12 - 8);
  v66 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = &v52 - v15;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v52 - v21;
  v63 = a1;
  v23 = *(*(a1 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v24 = v5[13];
  v61 = enum case for MediaOverlayStyle.dark(_:);
  v60 = v24;
  v58 = v5 + 13;
  v24(&v52 - v21, v20);
  v59 = v5[7];
  v57 = v5 + 7;
  v59(v22, 0, 1, v4);
  v62 = v7;
  v25 = *(v7 + 48);
  v64 = a2;
  sub_10029F418(a2, v11);
  sub_10029F418(v22, &v11[v25]);
  v26 = v5[6];
  v27 = v26(v11, 1, v4);
  v56 = v5;
  if (v27 != 1)
  {
    sub_10029F418(v11, v18);
    if (v26(&v11[v25], 1, v4) != 1)
    {
      v32 = v5[4];
      v54 = v26;
      v33 = v55;
      v32(v55, &v11[v25], v4);
      v53 = sub_10029F488(&unk_100952B00, &type metadata accessor for MediaOverlayStyle);
      v34 = v23;
      v35 = v23;
      LODWORD(v53) = sub_10076FF1C();
      v36 = v5[1];
      v37 = v33;
      v26 = v54;
      v36(v37, v4);
      sub_10000CFBC(v22, &qword_10094FCE8);
      v36(v18, v4);
      v23 = v34;
      sub_10000CFBC(v11, &qword_10094FCE8);
      v29 = v65;
      if (v53)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_100016F40(0, &qword_100942F10);
      v31 = sub_100770E1C();
      goto LABEL_10;
    }

    v30 = v23;
    sub_10000CFBC(v22, &qword_10094FCE8);
    (v5[1])(v18, v4);
LABEL_6:
    sub_10000CFBC(v11, &qword_10094FCE0);
    v29 = v65;
    goto LABEL_7;
  }

  v28 = v23;
  sub_10000CFBC(v22, &qword_10094FCE8);
  if (v26(&v11[v25], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_10000CFBC(v11, &qword_10094FCE8);
  v29 = v65;
LABEL_9:
  v31 = [objc_opt_self() whiteColor];
LABEL_10:
  v38 = v31;
  [v23 setTintColor:v31];

  v39 = *(*(v63 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v60(v29, v61, v4);
  v59(v29, 0, 1, v4);
  v40 = *(v62 + 48);
  v41 = v67;
  sub_10029F418(v64, v67);
  sub_10029F418(v29, v41 + v40);
  if (v26(v41, 1, v4) == 1)
  {
    v42 = v39;
    sub_10000CFBC(v29, &qword_10094FCE8);
    if (v26((v41 + v40), 1, v4) == 1)
    {
      sub_10000CFBC(v41, &qword_10094FCE8);
LABEL_18:
      v44 = [objc_opt_self() whiteColor];
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_10029F418(v41, v66);
  if (v26((v41 + v40), 1, v4) == 1)
  {
    v43 = v39;
    sub_10000CFBC(v29, &qword_10094FCE8);
    (v56[1])(v66, v4);
LABEL_15:
    sub_10000CFBC(v41, &qword_10094FCE0);
    goto LABEL_16;
  }

  v45 = v66;
  v46 = v55;
  v47 = v56;
  (v56[4])(v55, v41 + v40, v4);
  sub_10029F488(&unk_100952B00, &type metadata accessor for MediaOverlayStyle);
  v48 = v39;
  v49 = sub_10076FF1C();
  v50 = v47[1];
  v50(v46, v4);
  sub_10000CFBC(v29, &qword_10094FCE8);
  v50(v45, v4);
  sub_10000CFBC(v41, &qword_10094FCE8);
  if (v49)
  {
    goto LABEL_18;
  }

LABEL_16:
  sub_100016F40(0, &qword_100942F10);
  v44 = sub_100770E1C();
LABEL_19:
  v51 = v44;
  [v39 setTintColor:v44];
}

void sub_10029E930(void (*a1)(char *, uint64_t), uint64_t a2)
{
  v5 = sub_10076BF6C();
  __chkstk_darwin(v5 - 8);
  v72 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076BEDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100763ADC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E67C();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v68 = v2;
    v69 = v8;
    v73 = v7;
    v17 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView);
    v18 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
    v70 = a1;
    if (v18)
    {
      v19 = v18;

      sub_1006EC184(v16, v18, a2);
    }

    else
    {
      v38 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;

      sub_10075E66C();
      v39 = sub_10076BB5C();

      if (v39)
      {
        v71 = a2;
        v40 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        (*(v12 + 16))(v14, v17 + v40, v11);
        sub_1007639AC();
        (*(v12 + 8))(v14, v11);
        sub_10076BEEC();
        sub_10076BE9C();
        v65 = *(v69 + 8);
        v66 = v69 + 8;
        v65(v10, v73);
        v67 = sub_10076BFCC();
        v64 = v38;
        v41 = *(v17 + v38);
        if (v41)
        {
          v42 = (v41 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
        }

        else
        {
          v42 = (v17 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
        }

        v43 = *v42;
        sub_10076BF7C();
        sub_10075FCCC();
        [v43 setContentMode:sub_10076BDBC()];
        sub_100764ADC();
        sub_10075FD0C();
        if (!sub_10076BE1C())
        {
          sub_100016F40(0, &qword_100942F10);
          sub_100770D5C();
        }

        sub_10075FB8C();

        v44 = *(v17 + v64);
        if (v44)
        {
          v45 = (v44 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
        }

        else
        {
          v45 = (v17 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
        }

        v46 = *v45;
        sub_10076BEEC();
        v47 = sub_10076BE9C();
        v65(v10, v73);
        [v46 setContentMode:v47];

        v48 = *(v17 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
        sub_10075FD2C();
        sub_10029F488(&qword_100941820, &type metadata accessor for ArtworkView);
        v49 = v48;
        a2 = v71;
        sub_100760B8C();
      }
    }

    sub_10075E66C();
    v50 = sub_10076BB5C();

    if (v50)
    {
      v71 = a2;
      v51 = *(v68 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
      v52 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
      swift_beginAccess();
      (*(v12 + 16))(v14, v51 + v52, v11);
      sub_1007639AC();
      (*(v12 + 8))(v14, v11);
      sub_10076BEEC();
      sub_10076BE9C();
      v53 = v73;
      v69 = *(v69 + 8);
      (v69)(v10, v73);
      sub_10076BFCC();
      v54 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
      v55 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
      if (v55)
      {
        v56 = (v55 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      }

      else
      {
        v56 = (v51 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      }

      v57 = *v56;
      sub_10076BF7C();
      sub_10075FCCC();
      [v57 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v58 = *(v51 + v54);
      if (v58)
      {
        v59 = (v58 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      }

      else
      {
        v59 = (v51 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      }

      v60 = *v59;
      sub_10076BEEC();
      v61 = sub_10076BE9C();
      (v69)(v10, v53);
      [v60 setContentMode:v61];

      v62 = *(v51 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
      sub_10075FD2C();
      sub_10029F488(&qword_100941820, &type metadata accessor for ArtworkView);
      v63 = v62;
      sub_100760B8C();
    }
  }

  else if (sub_10076BB5C())
  {
    v71 = a2;
    v20 = v8;
    v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView);
    v22 = v20;
    v23 = v7;
    v24 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v14, v21 + v24, v11);
    sub_1007639AC();
    (*(v12 + 8))(v14, v11);
    sub_10076BEEC();
    sub_10076BE9C();
    v25 = *(v22 + 8);
    v73 = v23;
    v70 = v25;
    v25(v10, v23);
    sub_10076BFCC();
    v26 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
    v27 = *(v21 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon);
    if (v27)
    {
      v28 = (v27 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v28 = (v21 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    }

    v29 = *v28;
    sub_10076BF7C();
    sub_10075FCCC();
    [v29 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();

    v30 = *(v21 + v26);
    if (v30)
    {
      v31 = (v30 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v31 = (v21 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    }

    v32 = *v31;
    sub_10076BEEC();
    v33 = sub_10076BE9C();
    v70(v10, v73);
    [v32 setContentMode:v33];

    v34 = *(v21 + v26);
    if (v34)
    {
      v35 = (v34 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
    }

    else
    {
      v35 = (v21 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    }

    v36 = *v35;
    sub_10075FD2C();
    sub_10029F488(&qword_100941820, &type metadata accessor for ArtworkView);
    v37 = v36;
    sub_100760B8C();
  }
}

uint64_t sub_10029F378()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10029F3C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10029F3D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029F418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094FCE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10029F488(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10029F4D8()
{
  v1 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100016E2C(v0 + v11, v3, &unk_10094DE60);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10000CFBC(v3, &unk_10094DE60);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_10075E02C().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

id sub_10029F704()
{
  v1 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10075E11C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result collectionView];

    if (!v10)
    {
      return 0;
    }

    v11 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100016E2C(v0 + v11, v3, &unk_10094DE60);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10000CFBC(v3, &unk_10094DE60);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = sub_10075E02C().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    if (!v13)
    {
      return 0;
    }

    ObjectType = swift_getObjectType();
    v15 = swift_conformsToProtocol2();
    if (v15)
    {
      v16 = (*(v15 + 312))(ObjectType, v15);
    }

    else
    {
      v16 = [v13 snapshotViewAfterScreenUpdates:0];
    }

    v17 = v16;

    return v17;
  }

  return result;
}

void sub_10029F9A4(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = 0uLL;
  width = 0.0;
  if (!Strong)
  {
    v20 = 1;
    height = 0.0;
LABEL_15:
    *a2 = v13;
    *(a2 + 16) = width;
    *(a2 + 24) = height;
    *(a2 + 32) = v20;
    return;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 collectionView];

  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_100016E2C(v2 + v19, v7, &unk_10094DE60);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10000CFBC(v7, &unk_10094DE60);
LABEL_14:
    v20 = 1;
    height = 0.0;
    v13 = 0uLL;
    goto LABEL_15;
  }

  (*(v9 + 32))(v11, v7, v8);
  isa = sub_10075E02C().super.isa;
  v23 = [v18 cellForItemAtIndexPath:isa];

  (*(v9 + 8))(v11, v8);
  if (!v23)
  {
LABEL_13:

    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v24 superview];
  if (!v25)
  {

LABEL_18:
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v15 collectionView];
  if (!v27)
  {

    goto LABEL_18;
  }

  if ((a1 & 1) == 0)
  {
    v39 = v27;
    [v39 transform];
    tx = v68.tx;
    ty = v68.ty;
    v66 = *&v68.c;
    origin = *&v68.a;
    v68.a = 1.0;
    v68.b = 0.0;
    v68.c = 0.0;
    v68.d = 1.0;
    v68.tx = 0.0;
    v68.ty = 0.0;
    [v39 setTransform:&v68];
    [v24 frame];
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;

    [v26 convertRect:0 toView:{v43, v45, v47, v49}];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    *&v68.a = origin;
    *&v68.c = v66;
    v68.tx = tx;
    v68.ty = ty;
    [v39 setTransform:&v68];
    [v39 safeAreaInsets];
    v58.x = v51 + 0.0;
    origin = v58;
    v60 = v53 - v59;
    v61 = [v39 superview];

    if (v61)
    {
      [v61 safeAreaInsets];
      v63 = v62;
    }

    else
    {

      v63 = 0.0;
    }

    v20 = 0;
    width = v55 + 0.0;
    height = v57 + 0.0;
    *&v64 = origin.x;
    *(&v64 + 1) = v60 + v63;
    v13 = v64;
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v15 view];
  if (v29)
  {
    v30 = v29;
    [v24 bounds];
    [v30 convertRect:v24 fromCoordinateSpace:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    [v24 transform];
    v66 = *&v68.c;
    origin = *&v68.a;
    v65 = *&v68.tx;

    *&v68.a = origin;
    *&v68.c = v66;
    *&v68.tx = v65;
    v69.origin.x = v32;
    v69.origin.y = v34;
    v69.size.width = v36;
    v69.size.height = v38;
    v70 = CGRectApplyAffineTransform(v69, &v68);
    v66 = *&v70.origin.y;
    origin = v70.origin;
    width = v70.size.width;
    height = v70.size.height;

    *&v13 = origin.x;
    v20 = 0;
    *(&v13 + 1) = v66;
    goto LABEL_15;
  }

  __break(1u);
}

id sub_10029FECC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_10000A5D4(&qword_10094FD48);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v87 - v10;
  v99 = sub_10076C38C();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v13 - 8);
  v94 = &v87 - v14;
  v96 = sub_100770BFC();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = sub_10076341C();
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1002A26D8(a1);
  if (!v27)
  {
    return 0;
  }

  v100 = a1;
  v101 = v11;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentedViewController + 8) = v28;
  v104 = v27;
  swift_unknownObjectWeakAssign();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v103 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) = IsReduceMotionEnabled;
  swift_getObjectType();
  v30 = swift_conformsToProtocol2();
  if (!v30 || !a3)
  {
    goto LABEL_6;
  }

  v31 = v30;
  v92 = v4;
  v89 = a2;
  v90 = v9;
  v91 = v8;
  ObjectType = swift_getObjectType();
  v33 = *(v31 + 16);
  v34 = a3;
  v35 = v33(ObjectType, v31);
  v36 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  swift_beginAccess();
  sub_100016E2C(v35 + v36, v24, &unk_1009428D0);

  v38 = v105;
  v37 = v106;
  if ((*(v105 + 48))(v24, 1, v106) == 1)
  {

    sub_10000CFBC(v24, &unk_1009428D0);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v4 = v92;
LABEL_6:
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController + 8) = 0;
    swift_unknownObjectWeakAssign();
    v39 = sub_10075E11C();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_10021560C(v18, v4 + v40);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v100;
    v43 = v103;
    if (Strong)
    {
      v44 = Strong;
      v45 = *(Strong + qword_10099CC50);
      v44[qword_10099CC50] = 0;
      sub_1000AECA4(v45);
    }

    goto LABEL_25;
  }

  v47 = v102;
  (*(v38 + 32))(v102, v24, v37);
  v48 = v92;
  *(v92 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController + 8) = v31;
  swift_unknownObjectWeakAssign();
  v43 = v103;
  v8 = v91;
  v9 = v90;
  v49 = v38;
  a2 = v89;
  if (*(v48 + v103))
  {
    (*(v49 + 8))(v47, v37);

    v42 = v100;
    v4 = v92;
LABEL_25:
    v81 = *(v4 + v43);
    v82 = objc_allocWithZone(type metadata accessor for ArticlePagePresentationController());
    v83 = a2;
    sub_1004161A0(v42, a2, v81);
    v46 = v84;
    *(v84 + OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_transitioningViewProvider + 8) = &off_10088F7B0;
    swift_unknownObjectWeakAssign();
    v85 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10000A5D4(&qword_10094FD60);
    sub_1002A2E24();

    sub_10076F45C();
    v86 = v101;
    sub_10076F47C();

    sub_10000CD74(v107);
    (*(v9 + 8))(v86, v8);
    return v46;
  }

  v88 = v34;
  v50 = [v34 collectionView];
  v42 = v100;
  if (v50 && (v51 = v50, v52 = [v50 indexPathsForSelectedItems], v51, v52))
  {
    v53 = sub_10075E11C();
    v54 = sub_1007701BC();

    v4 = v92;
    if (*(v54 + 16))
    {
      v55 = *(v53 - 8);
      (*(v55 + 16))(v21, v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)), v53);

      (*(v55 + 56))(v21, 0, 1, v53);
    }

    else
    {

      (*(*(v53 - 8) + 56))(v21, 1, 1, v53);
    }
  }

  else
  {
    v56 = sub_10075E11C();
    (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
    v4 = v92;
  }

  v57 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_10021560C(v21, v4 + v57);
  swift_endAccess();
  sub_10076C84C();
  sub_1002A2E88();
  v58 = v102;
  sub_10076332C();
  v59 = v107[0];
  if (!v107[0])
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v60 = sub_10029F704();
  if (!v60)
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v61 = v60;
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  if (!v62)
  {

    (*(v105 + 8))(v102, v106);
    goto LABEL_25;
  }

  v63 = v62;
  result = [v88 view];
  if (result)
  {
    v65 = result;
    v92 = swift_getObjectType();
    v66 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
    v67 = sub_100770BDC();
    v68 = *(v67 - 8);
    v69 = v94;
    (*(v68 + 104))(v94, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = v93;
    sub_100770BEC();
    sub_10000CFBC(v69, &unk_10094FD50);
    sub_100770BBC();
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v78 = v77;

    (*(v95 + 8))(v70, v96);
    v108[0] = v72;
    v108[1] = v74;
    v108[2] = v76;
    v108[3] = v78;
    v109 = 0;
    (*(v63 + 224))(v108, v92, v63);
    swift_getKeyPath();
    v79 = v97;
    v80 = v102;
    sub_10076338C();

    sub_1000B44A0(v59, v61, v63, v79);

    (*(v98 + 8))(v79, v99);
    (*(v105 + 8))(v80, v106);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v43 = v103;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_1002A0C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + qword_10099CC50);
      v5[qword_10099CC50] = 0;
      sub_1000AECA4(v6);
    }
  }

  v7 = a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_1004A7FB4(1, ObjectType, v10);
  }

  v12 = sub_10029F4D8();
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  v14 = sub_1002A0D7C();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = swift_getObjectType();
    (*(v17 + 248))(1, v18, v17);
  }

  v19 = sub_1002A0E00();
  if (v19)
  {
    v21 = v20;
    v23 = v19;
    v22 = swift_getObjectType();
    (*(v21 + 248))(1, v22, v21);
  }
}

char *sub_1002A0D7C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[qword_100946A40];
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1002A0E00()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + qword_100946A40);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1002A0E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_10099CC50);
    v5[qword_10099CC50] = 0;
    sub_1000AECA4(v6);
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 view];

    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = [v9 layer];

    v11 = *&CATransform3DIdentity.m33;
    v24[4] = *&CATransform3DIdentity.m31;
    v24[5] = v11;
    v12 = *&CATransform3DIdentity.m43;
    v24[6] = *&CATransform3DIdentity.m41;
    v24[7] = v12;
    v13 = *&CATransform3DIdentity.m13;
    v24[0] = *&CATransform3DIdentity.m11;
    v24[1] = v13;
    v14 = *&CATransform3DIdentity.m23;
    v24[2] = *&CATransform3DIdentity.m21;
    v24[3] = v14;
    [v10 setTransform:v24];
  }

  type metadata accessor for ArticleContainerViewController();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    *(v15 + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_allowTraitCollectionOverrides) = 1;
  }

  v16 = sub_10029F4D8();
  if (v16)
  {
    v17 = v16;
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();

    if (v18)
    {
      v19 = a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController;
      v20 = swift_unknownObjectWeakLoadStrong();
      if (v20)
      {
        v21 = v20;
        v22 = *(v19 + 8);
        ObjectType = swift_getObjectType();
        (*(v22 + 32))(0, ObjectType, v22);
      }
    }
  }
}

void sub_1002A1030(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_10000A5D4(&unk_10094DE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      v14 = *(v12 + 8);
      v15 = Strong;
      ObjectType = swift_getObjectType();
      sub_1004A8058(0, ObjectType, v14);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v12 + 8);
      v20 = swift_getObjectType();
      sub_1004A80D0(v20, v19);
    }

    v21 = sub_1002A0D7C();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_getObjectType();
      (*(v24 + 248))(0, v25, v24);
    }

    v26 = sub_1002A0E00();
    if (v26)
    {
      v28 = v26;
      v29 = v27;
      v30 = swift_getObjectType();
      (*(v29 + 248))(0, v30, v29);
    }

    v31 = swift_unknownObjectWeakLoadStrong();
    if (v31)
    {
      v43 = v31;
      v32 = swift_unknownObjectWeakLoadStrong();
      sub_1000AE67C(v32, *(v12 + 8));

      v33 = v43;
    }
  }

  else
  {
    if (Strong)
    {
      v34 = Strong;
      v35 = [Strong collectionView];

      if (v35)
      {
        v36 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_selectedIndexPath;
        swift_beginAccess();
        sub_100016E2C(a3 + v36, v7, &unk_10094DE60);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {

          sub_10000CFBC(v7, &unk_10094DE60);
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          isa = sub_10075E02C().super.isa;
          v38 = [v35 cellForItemAtIndexPath:isa];

          (*(v9 + 8))(v11, v8);
          if (v38)
          {
            [v38 setHidden:0];
          }
        }
      }
    }

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      v40 = v39;
      v41 = *(v12 + 8);
      v42 = swift_getObjectType();
      sub_1004A7FB4(0, v42, v41);
    }
  }
}

char *sub_1002A1458(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentingViewController];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6 = *(v3 + 1);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v7[qword_10099E3A0] = 0;
  }

  sub_10029F9A4(0, v41);
  v8 = v1[OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
  v9 = type metadata accessor for TodayTransitionDismissAnimation();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_destinationRect];
  v11[32] = v42;
  v12 = v41[1];
  *v11 = v41[0];
  *(v11 + 1) = v12;
  v10[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition] = v8;
  v40.receiver = v10;
  v40.super_class = v9;
  v13 = objc_msgSendSuper2(&v40, "init");
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v6;
  v15 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v16 = *&v13[v15];
  v17 = v1;
  v18 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_10049DEB4(0, *(v16 + 2) + 1, 1, v16);
    *&v13[v15] = v16;
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_10049DEB4((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v22 = &v16[24 * v21];
  *(v22 + 4) = sub_1002A2638;
  *(v22 + 5) = v14;
  v22[48] = 0;
  *&v13[v15] = v16;
  swift_endAccess();

  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = v17;
  swift_beginAccess();
  v24 = *&v13[v15];
  v25 = v17;
  v26 = a1;

  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v24;
  if ((v27 & 1) == 0)
  {
    v24 = sub_10049DEB4(0, *(v24 + 2) + 1, 1, v24);
    *&v13[v15] = v24;
  }

  v29 = *(v24 + 2);
  v28 = *(v24 + 3);
  if (v29 >= v28 >> 1)
  {
    v24 = sub_10049DEB4((v28 > 1), v29 + 1, 1, v24);
  }

  *(v24 + 2) = v29 + 1;
  v30 = &v24[24 * v29];
  *(v30 + 4) = sub_1002A2684;
  *(v30 + 5) = v23;
  v30[48] = 1;
  *&v13[v15] = v24;
  swift_endAccess();

  v31 = swift_allocObject();
  v31[2] = v18;
  v31[3] = v6;
  v31[4] = v25;
  swift_beginAccess();
  v32 = *&v13[v15];
  v33 = v25;
  v34 = v18;

  v35 = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v32;
  if ((v35 & 1) == 0)
  {
    v32 = sub_10049DEB4(0, *(v32 + 2) + 1, 1, v32);
    *&v13[v15] = v32;
  }

  v37 = *(v32 + 2);
  v36 = *(v32 + 3);
  if (v37 >= v36 >> 1)
  {
    v32 = sub_10049DEB4((v36 > 1), v37 + 1, 1, v32);
  }

  *(v32 + 2) = v37 + 1;
  v38 = &v32[24 * v37];
  *(v38 + 4) = sub_1002A26CC;
  *(v38 + 5) = v31;
  v38[48] = 2;
  *&v13[v15] = v32;
  swift_endAccess();

  return v13;
}

void sub_1002A182C()
{
  v0 = sub_1002A0D7C();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 248))(1, ObjectType, v3);
  }

  v5 = sub_1002A0E00();
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    v9 = swift_getObjectType();
    (*(v8 + 248))(1, v9, v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    *&v11[qword_100946A38] = 0;
  }

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12 || (v13 = v12, v14 = [v12 traitCollection], v13, v15 = objc_msgSend(v14, "horizontalSizeClass"), v14, v15 != 1))
  {
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationController];

      if (v18)
      {
        v31 = v18;
        v19 = [v18 viewControllers];
        sub_10003F040();
        v20 = sub_1007701BC();

        if (v20 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
        {
          v22 = 0;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v26 = sub_10077149C();
            }

            else
            {
              if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_26;
              }

              v26 = *(v20 + 8 * v22 + 32);
            }

            v25 = v26;
            v27 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              break;
            }

            objc_opt_self();
            v28 = swift_dynamicCastObjCClass();
            if (v28)
            {
              v29 = [v28 collectionView];
              if (!v29)
              {
                __break(1u);
                return;
              }

              v23 = v29;
              v24 = [v29 collectionViewLayout];

              [v24 invalidateLayout];
              v25 = v24;
            }

            ++v22;
            if (v27 == i)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          ;
        }

LABEL_28:

        v30 = [v31 navigationBar];
        [v30 setHidden:1];
      }
    }
  }
}

void sub_1002A1B70(int a1, int a2, id a3, uint64_t a4)
{
  v5 = [a3 _existingPresentationControllerImmediate:1 effective:1];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ArticlePagePresentationController();
    v7 = swift_dynamicCastClass();
    v8 = v7;
    if (v7)
    {
      v9 = v7 + OBJC_IVAR____TtC20ProductPageExtension33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v9 + 24))
      {
        sub_10000A570(v9, v15);
        v10 = v16;
        v11 = v17;
        sub_10000CF78(v15, v16);
        (*(v11 + 24))(v10, v11);
        sub_10000CD74(v15);
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*(a4 + OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(Strong + qword_10099CC50);
      v13[qword_10099CC50] = 1;
      sub_1000AECA4(v14);
    }
  }
}

void sub_1002A1CB4(uint64_t a1, char a2, void *a3, id a4, uint64_t a5)
{
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    sub_1004A7FB4(0, ObjectType, a4);
    v14 = sub_1002A0D7C();
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = swift_getObjectType();
      (*(v17 + 248))(0, v18, v17);
    }

    v19 = sub_1002A0E00();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_getObjectType();
      (*(v22 + 248))(0, v23, v22);
    }

    v24 = sub_10029F4D8();
    if (v24)
    {
      v25 = v24;
      v82 = v10;
      swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (v26)
      {
        v27 = v25;
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v86 = OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_presentedViewController;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        v36 = *&Strong[qword_100946A40];
        if (v36)
        {
          v80 = v9;
          v85 = v28;
          v37 = v36 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell;
          v38 = *v37;
          v79 = *(v37 + 8);
          v39 = v38;

          swift_getObjectType();
          v78 = swift_conformsToProtocol2();
          v81 = v39;
          if (v78)
          {
            v40 = v39 == 0;
          }

          else
          {
            v40 = 1;
          }

          v83 = ObjectType;
          v84 = v25;
          if (!v40)
          {
            v41 = swift_unknownObjectWeakLoadStrong();
            if (v41)
            {
              v77 = v26;
              v42 = v41;
              v76 = v81;

              v43 = v85;
              if (v85)
              {
                swift_getObjectType();
                v44 = swift_conformsToProtocol2();
                if (v44)
                {
                  v45 = v43;
                  v44 = v43;
                }
              }

              else
              {
                v44 = 0;
              }

              v75 = v44 == 0;
              swift_unknownObjectRelease();
              sub_100767D5C();
              sub_10076F64C();
              sub_10076FC1C();
              v74 = v87;
              v46 = v76;
              swift_getObjectType();
              v47 = sub_100765B4C();
              v48 = v46;
              v49 = v74;
              sub_100767CFC();

              ObjectType = v83;
              v25 = v84;
              v26 = v77;
            }
          }

          v28 = v85;
          if (v85)
          {
            v50 = swift_getObjectType();
            v51 = a5;
            v52 = a3;
            v53 = *(v26 + 304);
            v54 = v85;
            v55 = v81;
            v56 = v50;
            v28 = v85;
            v53(v81, v79, 1, v56, v26);
            a3 = v52;
            a5 = v51;
            ObjectType = v83;
            v25 = v84;
          }

          else
          {
          }

          v9 = v80;
        }

        else
        {
        }
      }

      [v25 setHidden:0];
      v57 = [a3 collectionView];
      if (v57)
      {
        v58 = v57;
        v59 = [v57 indexPathsForSelectedItems];
        if (v59)
        {
          v84 = v25;
          v60 = v59;
          v61 = sub_1007701BC();

          v62 = v61;
          v63 = *(v61 + 16);
          if (v63)
          {
            v85 = v28;
            v83 = ObjectType;
            v79 = a5;
            v80 = a3;
            v81 = a4;
            v65 = v82 + 16;
            v64 = *(v82 + 16);
            v66 = (*(v82 + 80) + 32) & ~*(v82 + 80);
            v82 = v62;
            v67 = v62 + v66;
            v68 = *(v65 + 56);
            do
            {
              v64(v12, v67, v9);
              isa = sub_10075E02C().super.isa;
              (*(v65 - 8))(v12, v9);
              [v58 deselectItemAtIndexPath:isa animated:0];

              v67 += v68;
              --v63;
            }

            while (v63);

            a4 = v81;
            ObjectType = v83;
            v25 = v84;
            v28 = v85;
          }

          else
          {

            v25 = v84;
          }
        }
      }

      sub_1004A8058(1, ObjectType, a4);
      (*(a4 + 4))(1, ObjectType, a4);
      v70 = swift_unknownObjectWeakLoadStrong();
      if (!v70)
      {
        goto LABEL_44;
      }

      if (v28)
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          (*(a4 + 1))(ObjectType, a4);
          sub_100767D5C();
          sub_10076F64C();
          sub_10076FC1C();
          v71 = v87;
          swift_getObjectType();
          v72 = v28;
          v28 = sub_100765B4C();
          v73 = v72;
          sub_100767D3C();
        }

LABEL_44:

        return;
      }
    }
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + qword_10099CC50);
      v30[qword_10099CC50] = 0;
      sub_1000AECA4(v31);
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v32[qword_10099E3A0] = 1;
    }

    v33 = swift_getObjectType();
    sub_1004A8058(0, v33, a4);
  }
}

uint64_t type metadata accessor for TodayArticleTransitioningDelegate()
{
  result = qword_10094FD30;
  if (!qword_10094FD30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A2554()
{
  sub_1002153E0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002A25F8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002A2644()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A268C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002A26D8(void *a1)
{
  type metadata accessor for ArticleContainerViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_articleViewController);
    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3 != 0)
    {
      v12 = v3;
      return v3;
    }
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
LABEL_19:
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v15[3] = sub_10003F040();
    v15[0] = a1;
    v14 = a1;
    sub_10076F32C();
    sub_10000CFBC(v15, &unk_1009434C0);
    sub_10076FBDC();

    return 0;
  }

  v6 = v5;
  v7 = a1;
  v8 = [v6 viewControllers];
  sub_10003F040();
  v9 = sub_1007701BC();

  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_10;
    }

LABEL_17:

LABEL_18:

    goto LABEL_19;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = sub_10077149C();
LABEL_13:
    v3 = v11;

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v3)
    {
      return v3;
    }

    v7 = v3;
    goto LABEL_18;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

char *sub_1002A29E0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_10029F9A4(1, v38);
    v4 = v1[OBJC_IVAR____TtC20ProductPageExtension33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
    v5 = type metadata accessor for TodayTransitionPresentAnimation();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_originRect];
    v7[32] = v39;
    v8 = v38[1];
    *v7 = v38[0];
    *(v7 + 1) = v8;
    v6[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition] = v4;
    v37.receiver = v6;
    v37.super_class = v5;
    v9 = objc_msgSendSuper2(&v37, "init");
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = OBJC_IVAR____TtC20ProductPageExtension27AnimatedTransitionWithTasks_tasks;
    swift_beginAccess();
    v12 = *&v9[v11];
    v13 = v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_10049DEB4(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_10049DEB4((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[24 * v16];
    *(v17 + 4) = sub_1002A2DCC;
    *(v17 + 5) = v10;
    v17[48] = 0;
    *&v9[v11] = v12;
    swift_endAccess();

    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    *(v18 + 24) = a1;
    swift_beginAccess();
    v19 = *&v9[v11];
    v20 = v13;
    v21 = a1;

    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v19;
    if ((v22 & 1) == 0)
    {
      v19 = sub_10049DEB4(0, *(v19 + 2) + 1, 1, v19);
      *&v9[v11] = v19;
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_10049DEB4((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[24 * v24];
    *(v25 + 4) = sub_1002A2DD4;
    *(v25 + 5) = v18;
    v25[48] = 1;
    *&v9[v11] = v19;
    swift_endAccess();

    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    swift_beginAccess();
    v27 = *&v9[v11];
    v28 = v20;

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v27;
    if ((v29 & 1) == 0)
    {
      v27 = sub_10049DEB4(0, *(v27 + 2) + 1, 1, v27);
      *&v9[v11] = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_10049DEB4((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[24 * v31];
    *(v32 + 4) = sub_1002A2DDC;
    *(v32 + 5) = v26;
    v32[48] = 2;
    *&v9[v11] = v27;
    swift_endAccess();
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + qword_10099CC50);
      v34[qword_10099CC50] = 0;
      sub_1000AECA4(v35);
    }

    return 0;
  }

  return v9;
}

uint64_t sub_1002A2D94()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A2DE4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1002A2E24()
{
  result = qword_10094FD68;
  if (!qword_10094FD68)
  {
    sub_10000CE78(&qword_10094FD60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FD68);
  }

  return result;
}

unint64_t sub_1002A2E88()
{
  result = qword_100947150;
  if (!qword_100947150)
  {
    sub_10076C84C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100947150);
  }

  return result;
}

double sub_1002A2EF0()
{
  v0 = sub_10076469C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  v4 = sub_1002A3018(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1002A3018(uint64_t a1)
{
  v2 = sub_10077164C();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v66 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009680C0);
  v63 = *(v4 - 8);
  v64 = v4;
  __chkstk_darwin(v4);
  v62 = &v52 - v5;
  v58 = sub_10076738C();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v61 = &v52 - v8;
  v9 = sub_10076D7FC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v52 - v14;
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  __chkstk_darwin(v19);
  v21 = &v52 - v20;
  __chkstk_darwin(v22);
  v24 = &v52 - v23;
  __chkstk_darwin(v25);
  v54 = &v52 - v26;
  v60 = sub_10076DA7C();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v53 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v28 = sub_10076461C();
  sub_10005312C();
  if (qword_100940FF8 != -1)
  {
    swift_once();
  }

  v29 = sub_10076D3DC();
  sub_10000A61C(v29, qword_1009A1DE0);
  v30 = sub_100770B3C();
  sub_10076D7EC();
  v55 = v30;
  sub_10076D7DC();
  v31 = *(v10 + 8);
  v31(v12, v9);
  sub_10076D73C();
  v31(v15, v9);
  sub_10076D79C();
  v31(v18, v9);
  sub_10076D78C();
  v31(v21, v9);
  sub_10076D7AC();
  v31(v24, v9);
  sub_10076DA5C();
  v32 = v53;
  sub_10076DA8C();
  v33 = v28;
  if (sub_10077071C())
  {
    v34 = v56;
    sub_1001B997C(v28, v56);
  }

  else
  {
    v34 = v56;
    sub_1001B9CB4();
  }

  (*(v57 + 32))(v61, v34, v58);
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v35 = v60;
  v69[3] = v60;
  v69[4] = &protocol witness table for LabelPlaceholder;
  v36 = sub_10000DB7C(v69);
  v37 = v59;
  (*(v59 + 16))(v36, v32, v35);
  sub_1007673AC();
  swift_allocObject();
  *&v70 = sub_10076739C();
  sub_1002A37E0(&unk_1009680D0, &type metadata accessor for RibbonBarItemCellLayout);
  v38 = v62;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v39 = v64;
  sub_10076E0FC();
  v41 = v40;

  (*(v63 + 8))(v38, v39);
  (*(v37 + 8))(v32, v35);
  sub_10076733C();
  *&v70 = v42;
  sub_10076462C();
  v43 = v66;
  sub_10076D17C();
  sub_10076D40C();
  v45 = v44;
  swift_unknownObjectRelease();
  v46 = v68;
  v47 = *(v67 + 8);
  v47(v43, v68);
  sub_10076734C();
  *&v70 = v48;
  sub_10076462C();
  sub_10076D17C();
  sub_10076D40C();
  v50 = v49;
  swift_unknownObjectRelease();
  v47(v43, v46);
  return v41 + v45 + v50;
}

uint64_t sub_1002A37E0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1002A3974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_collectionView] = 0;
  if (a3)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CollectionTableViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v6);

  return v7;
}

id sub_1002A3A74(void *a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_dataSource] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23CollectionTableViewCell_collectionView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CollectionTableViewCell();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1002A3B30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A3BE4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  sub_10003F0D4(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_10000CF78(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = sub_10077165C();
    (*(v7 + 8))(v10, v5);
    sub_10000CD74(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 addTarget:v12 action:a2 forControlEvents:64];

  return swift_unknownObjectRelease();
}

char *sub_1002A3D58(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v94);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10076771C();
  v91 = *(v104 - 8);
  __chkstk_darwin(v104);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v89 = &v83 - v12;
  v13 = sub_10075E77C();
  __chkstk_darwin(v13 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v15 - 8);
  v87 = &v83 - v16;
  v17 = sub_10076D1AC();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v4;
  v85 = &v4[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics];
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1858);
  v90 = *(v21 - 8);
  v23 = *(v90 + 16);
  v86 = v22;
  v24 = v90 + 16;
  v103 = v23;
  (v23)(v20);
  v25 = v18[13];
  LODWORD(v102) = enum case for FontSource.useCase(_:);
  v107 = v25;
  v26 = v18 + 13;
  v25(v20);
  v101 = sub_10076D9AC();
  v124[3] = v101;
  v124[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v124);
  v122 = v17;
  v123 = &protocol witness table for FontSource;
  v27 = sub_10000DB7C(v121);
  v100 = v18[2];
  v100(v27, v20, v17);
  sub_10076D9BC();
  v28 = v18[1];
  v98 = v18 + 1;
  v99 = v28;
  v28(v20, v17);
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v21, qword_1009A1828);
  v106 = v24;
  v30 = v103;
  v103(v20, v29, v21);
  (v107)(v20, v102, v17);
  v122 = v101;
  v123 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v121);
  v119 = v17;
  v120 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v118);
  v100(v31, v20, v17);
  sub_10076D9BC();
  v99(v20, v17);
  v97 = v21;
  v30(v20, v29, v21);
  v32 = v102;
  (v107)(v20, v102, v17);
  v96 = v26;
  v33 = v101;
  v119 = v101;
  v120 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v118);
  v116 = v17;
  v117 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v115);
  v100(v34, v20, v17);
  sub_10076D9BC();
  v99(v20, v17);
  v84 = v29;
  v30(v20, v29, v21);
  (v107)(v20, v32, v17);
  v116 = v33;
  v117 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v115);
  v113 = v17;
  v114 = &protocol witness table for FontSource;
  v35 = sub_10000DB7C(v112);
  v36 = v100;
  v100(v35, v20, v17);
  sub_10076D9BC();
  v37 = v99;
  v99(v20, v17);
  v113 = sub_10076D67C();
  v114 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v112);
  sub_10076D66C();
  v30(v20, v29, v97);
  (v107)(v20, v102, v17);
  v111[3] = v101;
  v111[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v111);
  v110[3] = v17;
  v110[4] = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v110);
  v36(v38, v20, v17);
  sub_10076D9BC();
  v37(v20, v17);
  v109 = 0x4034000000000000;
  v110[0] = 0x4052000000000000;
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  sub_10075E26C();
  v39 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider;
  v40 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v41 = v105;
  *&v105[v39] = v40;
  v42 = v41;
  v43 = v88;
  sub_10075E6FC();
  v44 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v42[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView] = sub_1005B7DD4(v43, 0);
  v45 = v42;
  v46 = v89;
  v47 = v97;
  v48 = v103;
  v103(v89, v86, v97);
  v101 = *(v90 + 56);
  v101(v46, 0, 1, v47);
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v49 = v92;
  v107 = *(v91 + 104);
  v107(v92);
  v102 = sub_1007626BC();
  v50 = objc_allocWithZone(v102);
  *&v45[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel] = sub_1007626AC();
  v51 = v84;
  v52 = v97;
  v48(v46, v84, v97);
  v53 = v101;
  v101(v46, 0, 1, v52);
  v54 = v100;
  (v107)(v49, v100, v104);
  v55 = objc_allocWithZone(v102);
  *&v105[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel] = sub_1007626AC();
  v103(v46, v51, v52);
  v53(v46, 0, 1, v52);
  (v107)(v49, v54, v104);
  v56 = objc_allocWithZone(v102);
  v57 = sub_1007626AC();
  v58 = v105;
  *&v105[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel] = v57;
  *&v58[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v108.receiver = v58;
  v108.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v63 = v59;
  [v63 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v63 setScrollEnabled:1];
  [v63 setTranslatesAutoresizingMaskIntoConstraints:0];
  v64 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider;
  v65 = qword_100940950;
  v66 = *&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_10000A61C(v94, qword_1009A0A20);
  v68 = v95;
  sub_100206DD0(v67, v95);
  v69 = &v66[OBJC_IVAR____TtC20ProductPageExtension11DividerView_style];
  swift_beginAccess();
  sub_100206E34(v68, v69);
  swift_endAccess();
  v70 = &v66[OBJC_IVAR____TtC20ProductPageExtension11DividerView_separatorInset];
  v71 = *(v69 + 1);
  *v70 = *v69;
  *(v70 + 1) = v71;
  [v66 setNeedsLayout];
  [v66 setNeedsLayout];

  sub_100206E98(v68);
  v72 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel] setTextAlignment:1];
  v73 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel] setTextAlignment:1];
  v74 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel;
  [*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel] setTextAlignment:1];
  v75 = *&v63[v72];
  sub_1000325F0();
  v76 = v75;
  v77 = sub_100770CFC();
  [v76 setTextColor:v77];

  v78 = *&v63[v73];
  v79 = sub_100770CFC();
  [v78 setTextColor:v79];

  v80 = *&v63[v74];
  v81 = sub_100770D1C();
  [v80 setTextColor:v81];

  [v63 addSubview:*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView]];
  [v63 addSubview:*&v63[v72]];
  [v63 addSubview:*&v63[v73]];
  [v63 addSubview:*&v63[v64]];
  [v63 addSubview:*&v63[v74]];
  [v63 addSubview:*&v63[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView]];

  return v63;
}

double sub_1002A4AC8()
{
  v1 = sub_10075E27C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v27 = sub_10075E29C();
  v26 = *(v27 - 8);
  v5 = __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics, v1, v5);
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView);
  v44 = type metadata accessor for InAppPurchaseView();
  v45 = &protocol witness table for UIView;
  v43 = v8;
  v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel);
  v10 = sub_1007626BC();
  v41 = v10;
  v42 = &protocol witness table for UILabel;
  v39 = &protocol witness table for UILabel;
  v40 = v9;
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel);
  v38 = v10;
  v37 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider);
  v35 = type metadata accessor for DividerView(0);
  v36 = &protocol witness table for UIView;
  v34 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel);
  v33 = &protocol witness table for UILabel;
  v32 = v10;
  v31 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView);
  v15 = type metadata accessor for SmallLockupView();
  v30 = &protocol witness table for UIView;
  v29 = v15;
  v28 = v14;
  v16 = v8;
  v17 = v9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  sub_10075E28C();
  sub_10075E24C();
  v23 = v22;
  (*(v26 + 8))(v7, v27);
  return v23;
}

uint64_t sub_1002A4DEC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = ObjectType;
  v3 = sub_10076D1FC();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10075E27C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v8;
  v9 = sub_10075E29C();
  v33 = *(v9 - 8);
  v34 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
  v53 = type metadata accessor for InAppPurchaseView();
  v54 = &protocol witness table for UIView;
  v52 = v12;
  v13 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  v14 = sub_1007626BC();
  v50 = v14;
  v51 = &protocol witness table for UILabel;
  v49 = v13;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  v47 = v14;
  v48 = &protocol witness table for UILabel;
  v46 = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider];
  v44 = type metadata accessor for DividerView(0);
  v45 = &protocol witness table for UIView;
  v42 = &protocol witness table for UILabel;
  v43 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v41 = v14;
  v40 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView];
  v38 = type metadata accessor for SmallLockupView();
  v39 = &protocol witness table for UIView;
  v37 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v18;
  v25 = v30;
  sub_10075E28C();
  sub_10076422C();
  v26 = v32;
  sub_10075E25C();
  [v1 frame];
  Width = CGRectGetWidth(v56);
  sub_10076D1DC();
  [v1 setContentSize:Width];
  (*(v35 + 8))(v26, v36);
  return (*(v33 + 8))(v25, v34);
}

uint64_t type metadata accessor for InstallPagePreInstallPaidOfferView()
{
  result = qword_10094FDF0;
  if (!qword_10094FDF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002A52D0()
{
  result = sub_10075E27C();
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

void sub_1002A5378()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - v1;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_metrics;
  if (qword_100940E20 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A1858);
  v8 = (*(v6 - 8) + 16);
  v38 = *v8;
  v38(v5, v7, v6);
  v10 = v3 + 13;
  v9 = v3[13];
  v41 = enum case for FontSource.useCase(_:);
  v40 = v9;
  v9(v5);
  v36 = sub_10076D9AC();
  v57[3] = v36;
  v57[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v54);
  v35 = v3[2];
  v35(v11, v5, v2);
  sub_10076D9BC();
  v12 = v3[1];
  v37 = v3 + 1;
  v39 = v12;
  v12(v5, v2);
  if (qword_100940E10 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v6, qword_1009A1828);
  v14 = v38;
  v38(v5, v13, v6);
  v40(v5, v41, v2);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v54);
  v34 = v6;
  v28[1] = v8;
  v52 = v2;
  v53 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v51);
  v16 = v35;
  v35(v15, v5, v2);
  sub_10076D9BC();
  v39(v5, v2);
  v33 = v10;
  v29 = v13;
  v17 = v34;
  v14(v5, v13, v34);
  v18 = v40;
  v40(v5, v41, v2);
  v19 = v36;
  v52 = v36;
  v53 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v51);
  v49 = v2;
  v50 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v48);
  v16(v20, v5, v2);
  sub_10076D9BC();
  v39(v5, v2);
  v38(v5, v13, v17);
  v18(v5, v41, v2);
  v49 = v19;
  v21 = v19;
  v50 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v48);
  v46 = v2;
  v47 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v45);
  v23 = v35;
  v35(v22, v5, v2);
  sub_10076D9BC();
  v24 = v39;
  v39(v5, v2);
  v46 = sub_10076D67C();
  v47 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v45);
  sub_10076D66C();
  v38(v5, v29, v34);
  v40(v5, v41, v2);
  v44[3] = v21;
  v44[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v44);
  v43[3] = v2;
  v43[4] = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v43);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  v42 = 0x4034000000000000;
  v43[0] = 0x4052000000000000;
  sub_10000A5D4(&unk_100943120);
  sub_10075FDEC();
  v26 = v32;
  sub_10075E26C();
  v27 = OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_divider;
  *(v26 + v27) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1002A5A00()
{
  result = qword_10094FE00;
  if (!qword_10094FE00)
  {
    sub_1007619CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FE00);
  }

  return result;
}

uint64_t sub_1002A5A58(uint64_t a1, uint64_t a2)
{
  v3 = sub_1007619BC();
  v4 = sub_100563DC4(v3, 1, a2);

  return v4;
}

double sub_1002A5AEC()
{
  v0 = sub_10076523C();
  __chkstk_darwin(v0 - 8);
  v2 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076525C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C38C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  (*(v8 + 8))(v10, v7);
  v11 = sub_100630CB4();
  sub_10065132C(v11, v2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1006525E0();
  swift_unknownObjectRelease();
  v12 = sub_10076DDDC();
  swift_allocObject();
  v13 = sub_10076DDBC();
  v18[10] = v12;
  v18[11] = &protocol witness table for LayoutViewPlaceholder;
  v18[7] = v13;
  swift_allocObject();
  v14 = sub_10076DDBC();
  v18[5] = v12;
  v18[6] = &protocol witness table for LayoutViewPlaceholder;
  v18[2] = v14;
  sub_10076524C();
  swift_getKeyPath();
  sub_10076338C();

  sub_1002A5E3C(&qword_10095FFF0, &type metadata accessor for SmallBreakoutLayout);
  sub_10076D2AC();
  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v16;
}

uint64_t sub_1002A5E3C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1002A5E84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView] = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
  v18 = sub_10076E21C();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v4[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = 0;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v20 = [v19 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v19 setClipsToBounds:0];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v24 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView;
  v25 = *(*&v19[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = v25;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0);
  sub_10000CFBC(&v45, &unk_1009434C0);
  sub_100770B9C();

  v27 = *(v11 + 8);
  v27(v13, v10);
  v28 = *(*&v19[v24] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v29 = v28;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0);
  sub_10000CFBC(&v45, &unk_1009434C0);
  sub_100770B9C();

  v27(v13, v10);
  v30 = *(*&v19[v24] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v31 = v30;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0);
  sub_10000CFBC(&v45, &unk_1009434C0);
  sub_100770B9C();

  v27(v13, v10);
  v32 = *(*&v19[v24] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v32;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0);
  sub_10000CFBC(&v45, &unk_1009434C0);
  sub_100770B9C();

  v27(v13, v10);
  v34 = *&v19[v24];
  v35 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v35)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v36 = v35;
    sub_10076F95C();
    sub_10000CFBC(&v43, &unk_1009434C0);
    sub_10000CFBC(&v45, &unk_1009434C0);
    sub_100770B9C();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v37 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v37)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v38 = v37;
    sub_10076F95C();
    sub_10000CFBC(&v43, &unk_1009434C0);
    sub_10000CFBC(&v45, &unk_1009434C0);
    sub_100770B9C();

    v27(v13, v10);
    v34 = *&v19[v24];
  }

  v39 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v40 = v39;
  sub_10076F95C();
  sub_10000CFBC(&v43, &unk_1009434C0);
  sub_10000CFBC(&v45, &unk_1009434C0);
  sub_100770B9C();

  v27(v13, v10);
  v41 = [v19 contentView];

  [v41 addSubview:*&v19[v24]];
  return v19;
}

id sub_1002A66D8()
{
  v1 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0);
    result = *&v0[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_1002A6ABC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076E21C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v30 = v10;
  v31 = v12;
  v32 = v14;
  v33 = v16;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
  if (!v17)
  {
    goto LABEL_4;
  }

  v18 = v17;
  if ([v18 isHidden])
  {

LABEL_4:
    v19 = 0;
LABEL_7:
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView] setFrame:{v10, v12, v14, v16}];
    return sub_1000167E0(v19);
  }

  v28 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &v30;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002A7608;
  *(v21 + 24) = v20;
  aBlock[4] = sub_1000349FC;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001C5148;
  aBlock[3] = &unk_10088F9B8;
  v22 = _Block_copy(aBlock);
  v23 = v18;

  [v28 performWithoutAnimation:v22];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
    swift_beginAccess();
    (*(v4 + 16))(v7, &v23[v26], v3);
    sub_100770A6C();

    (*(v4 + 8))(v7, v3);
    v10 = v30;
    v12 = v31;
    v14 = v32;
    v16 = v33;
    v19 = sub_1002A7608;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

id sub_1002A6E10(char *a1)
{
  v2 = sub_10076E21C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  (*(v3 + 16))(v5, &a1[v6], v2);
  sub_10076E1CC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v5, v2);
  return [a1 setFrame:{v8, v10, v12, v14}];
}

uint64_t type metadata accessor for SmallLockupCollectionViewCell()
{
  result = qword_10094FE40;
  if (!qword_10094FE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A7130()
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1002A7270()
{
  v1 = sub_100763ADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView);
  v6 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v6, v1);
  sub_1007639AC();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  return v8;
}

void sub_1002A73A4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FB6C();

  v4 = *(v1 + v2);
  sub_10075FD2C();
  sub_1002A74E0(&qword_100941820, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_100760BFC();
}

uint64_t sub_1002A7488(uint64_t a1)
{
  result = sub_1002A74E0(&qword_10094FE50, type metadata accessor for SmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002A74E0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1002A7528(void *a1)
{
  type metadata accessor for SmallLockupView();
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100763ADC();
  v3 = sub_10000A61C(v2, qword_10099DDA0);
  sub_100262AD0(v3, a1);
  return v4;
}

uint64_t sub_1002A75D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002A7620(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002A7638()
{
  v0 = sub_10076715C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_10000DB18(v7, qword_10099E280);
  v8 = sub_10000A61C(v7, qword_10099E280);
  if (qword_10093F698 != -1)
  {
    swift_once();
  }

  v9 = sub_10000A61C(v0, qword_10099CE38);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_1000325F0();
  v11 = sub_100770D1C();
  if (qword_10093F6B8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000A61C(v0, qword_10099CE98);
  v10(v3, v12, v0);
  v13 = sub_100770D1C();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_1002A7858(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v10);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007668DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_10094FF50);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_10000A5D4(&qword_100943318);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = sub_10076AA4C();
  v88 = *(v23 - 8);
  v89 = v23;
  __chkstk_darwin(v23);
  v86 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v82 - v26;
  sub_10076AA2C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artwork] = 0;
  v27 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = *(v13 + 56);
  v28(&v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType], 1, 1, v12);
  v29 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v30 = 0;
  v30[8] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v31 = &v4[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10093FD18 != -1)
  {
    swift_once();
  }

  v87 = v10;
  v33 = sub_10000A61C(v10, qword_10099E280);
  sub_1002AA40C(v33, &v5[v32]);
  sub_1007626BC();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label] = sub_10076269C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v92.receiver = v5;
  v92.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v13 + 104))(v22, enum case for MetadataRibbonItemType.developer(_:), v12);
  v28(v22, 0, 1, v12);
  v36 = *(v15 + 48);
  sub_100016E2C(&v34[v35], v17, &qword_100943318);
  sub_100016E2C(v22, &v17[v36], &qword_100943318);
  v37 = *(v13 + 48);
  if (v37(v17, 1, v12) != 1)
  {
    v41 = v83;
    sub_100016E2C(v17, v83, &qword_100943318);
    if (v37(&v17[v36], 1, v12) != 1)
    {
      v44 = v82;
      (*(v13 + 32))(v82, &v17[v36], v12);
      sub_1002AA4CC(&qword_10094FF58, &type metadata accessor for MetadataRibbonItemType);
      v45 = v34;
      v46 = sub_10076FF1C();
      v47 = *(v13 + 8);
      v47(v44, v12);
      sub_10000CFBC(v22, &qword_100943318);
      v47(v41, v12);
      sub_10000CFBC(v17, &qword_100943318);
      v40 = v87;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_9:
      v43 = v84;
      sub_10076AA2C();
      goto LABEL_12;
    }

    v42 = v34;
    sub_10000CFBC(v22, &qword_100943318);
    (*(v13 + 8))(v41, v12);
    v40 = v87;
LABEL_8:
    sub_10000CFBC(v17, &qword_10094FF50);
    goto LABEL_9;
  }

  v38 = v34;
  sub_10000CFBC(v22, &qword_100943318);
  v39 = v37(&v17[v36], 1, v12);
  v40 = v87;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_10000CFBC(v17, &qword_100943318);
LABEL_11:
  v43 = v84;
  sub_10076AA3C();
LABEL_12:
  v48 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  v87 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v88 + 40))(&v34[v48], v43, v89);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v34;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v53 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v54 = *&v52[v53];
  sub_10075FC0C();

  v55 = *&v52[v53];
  v56 = &v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration];
  v84 = v34;
  v57 = v85;
  sub_1002AA40C(&v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration], v85);
  v58 = v55;
  v59 = [v52 traitCollection];

  v60.super.isa = v59;
  v61.super.isa = sub_10076713C(v60).super.isa;
  v62 = [(objc_class *)v59 preferredContentSizeCategory];
  v63 = sub_10077084C();

  if (v63)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  v65 = [objc_opt_self() configurationWithFont:v61.super.isa scale:v64];

  sub_1002AA470(v57);
  sub_10075FC3C();

  v66 = *&v56[*(v40 + 28)];
  v67 = *&v52[v53];
  v68 = v66;
  sub_10075FBBC();

  v69 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label] setTextColor:*&v56[*(v40 + 20)]];
  v70 = *&v52[v69];
  v71 = sub_10076715C();
  v91[3] = v71;
  v91[4] = sub_1002AA4CC(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
  v72 = sub_10000DB7C(v91);
  (*(*(v71 - 8) + 16))(v72, v56, v71);
  v73 = v70;
  sub_1007625FC();

  v74 = *&v52[v69];
  v75 = v88;
  v76 = v86;
  v77 = v89;
  (*(v88 + 16))(v86, &v84[v87], v89);
  v78 = v74;
  v79 = sub_10076AA0C();
  (*(v75 + 8))(v76, v77);
  [v78 setNumberOfLines:v79];

  [v52 addSubview:*&v52[v69]];
  [v52 addSubview:*&v52[v53]];
  sub_10000A5D4(&unk_100945BF0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_100783DD0;
  *(v80 + 32) = sub_10076E88C();
  *(v80 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_1002A8324()
{
  ObjectType = swift_getObjectType();
  v19 = ObjectType;
  v2 = sub_10076D1FC();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076AA4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076AA5C();
  v9 = *(v20 - 8);
  *&v10 = __chkstk_darwin(v20).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v10, v19);
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label];
  v27 = sub_1007626BC();
  v28 = &protocol witness table for UILabel;
  v26 = v13;
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView];
  v24 = sub_10075FD2C();
  v25 = &protocol witness table for UIView;
  v23 = v14;
  v15 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v0[v15], v5);
  v16 = v13;
  v17 = v14;
  sub_10076A9DC();
  sub_10076422C();
  sub_10076A9FC();
  (*(v21 + 8))(v4, v22);
  return (*(v9 + 8))(v12, v20);
}

double sub_1002A861C(uint64_t a1)
{
  v18[0] = a1;
  v2 = sub_10076AA4C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076AA5C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label);
  v18[12] = sub_1007626BC();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v10;
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView);
  v18[7] = sub_10075FD2C();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v11;
  v12 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = v10;
  v14 = v11;
  sub_10076A9DC();
  sub_10076A9EC();
  v16 = v15;
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_1002A88DC(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = sub_10076BEDC();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076AA4C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_1002A9828(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = sub_10075FC6C();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v8 + 8))(v10, v27);
    sub_10076BFCC();
    sub_100760C4C();
    sub_10075FD2C();
    sub_100760BCC();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10000CFBC(v29, &qword_100943310);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_1002A8CE0(objc_class *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkView);

    v10.is_nil = (a2 & 1) == 0;
    v10.value.super.isa = a1;
    sub_10075FC5C(v10, v7);
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];
  }
}

void sub_1002A8EDC()
{
  sub_10076AA4C();
  if (v0 <= 0x3F)
  {
    sub_100038324();
    if (v1 <= 0x3F)
    {
      type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1002A9058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076715C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1002A9128(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10076715C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1002A91E0()
{
  result = sub_10076715C();
  if (v1 <= 0x3F)
  {
    result = sub_1000325F0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002A9274()
{
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v0 = sub_10076436C();
  v1 = sub_10076438C();
  sub_1002A88DC(v0, v1, v2, v4);
}

uint64_t sub_1002A9328@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943318);
}

uint64_t sub_1002A9390(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943318);
  return swift_endAccess();
}

uint64_t sub_1002A946C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002A9538(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002A95F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1002A963C(char a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1002A96EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &qword_100943310);
}

uint64_t sub_1002A9754(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_10003837C(a1, v1 + v3, &qword_100943310);
  return swift_endAccess();
}

double sub_1002A9828(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4)
{
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0.0;
  }

  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);

  v10.super.isa = a4;
  v11.super.isa = sub_10076713C(v10).super.isa;
  v12 = [(objc_class *)a4 preferredContentSizeCategory];
  v13 = sub_10077084C();

  if (v13)
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v15 = [objc_opt_self() configurationWithFont:v11.super.isa scale:v14];

  if (sub_10076BDDC())
  {
    v16 = v15;
    if (sub_10076BE0C())
    {
      v17 = sub_10076044C();
      goto LABEL_11;
    }

    if (sub_10076BDFC())
    {
      v17 = sub_1005A6008(a1, v15);
LABEL_11:
      v19 = v17;

      if (v19)
      {
        [v19 size];
        v18 = v20;

        return v18;
      }

      goto LABEL_14;
    }
  }

LABEL_14:
  if ((sub_10076BE0C() & 1) != 0 && (sub_10076BE2C(), v21))
  {
    v22 = v15;
    v23 = sub_10076045C();

    [v23 size];
    v18 = v24;
  }

  else
  {

    sub_10076AA1C();
    sub_10000CF78(v28, v28[3]);
    sub_10076D41C();
    sub_10000CD74(v28);
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D35C();
    v18 = v25;

    (*(v7 + 8))(v9, v6);
  }

  return v18;
}

uint64_t sub_1002A9B2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A9B80(void *a1)
{
  v1 = [a1 traitCollection];
  type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v2.super.isa = v1;
  v3.super.isa = sub_10076713C(v2).super.isa;
  v4 = [(objc_class *)v1 preferredContentSizeCategory];
  v5 = sub_10077084C();

  if (v5)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  v7 = [objc_opt_self() configurationWithFont:v3.super.isa scale:v6];

  return sub_10075FC3C();
}

void sub_1002A9C6C()
{
  sub_10076AA2C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artwork) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_id;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_itemType;
  v3 = sub_1007668DC();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_labelMaxWidth;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_allowsTruncation) = 2;
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_artworkSize);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension31MetadataRibbonIconWithLabelView_configuration;
  if (qword_10093FD18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v9 = sub_10000A61C(v8, qword_10099E280);
  sub_1002AA40C(v9, v0 + v7);
  sub_10077156C();
  __break(1u);
}

double sub_1002A9DE8(uint64_t a1, void *a2)
{
  v3 = sub_10076AA5C();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v47 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076DA7C();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DD3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v39 - v11;
  __chkstk_darwin(v13);
  v46 = v39 - v14;
  v45 = sub_10076AA4C();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  v19 = sub_10076436C();
  v39[3] = sub_10076438C();
  v39[2] = v20;
  sub_10076AA2C();
  if (qword_10093FD18 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  v22 = sub_10000A61C(v21, qword_10099E280);
  v23 = [a2 traitCollection];
  sub_1002A9828(v19, v18, v22, v23);

  v24 = sub_10076DDDC();
  v39[1] = a2;
  v25 = v24;
  swift_allocObject();
  v26 = sub_10076DDBC();
  v39[0] = v19;
  v27 = v26;
  sub_10076DD2C();
  v28 = sub_10076715C();
  v54[3] = v28;
  v54[4] = sub_1002AA4CC(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
  v29 = sub_10000DB7C(v54);
  (*(*(v28 - 8) + 16))(v29, v22, v28);
  sub_10076DC8C();
  v30 = *(v7 + 8);
  v30(v9, v6);
  sub_10000CD74(v54);
  sub_10076AA0C();
  v31 = v46;
  sub_10076DD1C();
  v30(v12, v6);
  (*(v7 + 16))(v12, v31, v6);
  sub_10076DA5C();
  v32 = v41;
  sub_10076DA9C();
  sub_10076DA4C();
  (*(v42 + 8))(v32, v44);
  sub_10000A570(v54, v53);
  v51 = v25;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v50 = v27;
  v33 = v43;
  v34 = v45;
  (*(v43 + 16))(v40, v18, v45);

  v35 = v47;
  sub_10076A9DC();
  sub_10076A9EC();
  v37 = v36;

  (*(v48 + 8))(v35, v49);
  sub_10000CD74(v54);
  v30(v31, v6);
  (*(v33 + 8))(v18, v34);
  return v37;
}

uint64_t sub_1002AA40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AA470(uint64_t a1)
{
  v2 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AA4CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002AA528()
{
  result = qword_10094FF78;
  if (!qword_10094FF78)
  {
    sub_10076112C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094FF78);
  }

  return result;
}

uint64_t sub_1002AA580()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10094FF60);
  sub_10000A61C(v4, qword_10094FF60);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

uint64_t sub_1002AA6D4(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_10000A5D4(&qword_10094FF88);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  sub_10076FCDC();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002AAEBC;
  *(v7 + 24) = a3;
  v8 = sub_100016F40(0, &qword_1009471F0);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_10077068C();
  sub_10076FC6C();

  return sub_10000CD74(v10);
}

uint64_t sub_1002AA828()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_10076FCBC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1002AA914()
{
  if (qword_10093FD20 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_10094FF60);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F30C();
  sub_1000258C0(v4);
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1002AAAEC()
{
  if (qword_10093FD20 != -1)
  {
    swift_once();
  }

  v0 = sub_10076FD4C();
  sub_10000A61C(v0, qword_10094FF60);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  swift_getErrorValue();
  v4[3] = v3;
  v1 = sub_10000DB7C(v4);
  (*(*(v3 - 8) + 16))(v1);
  sub_10076F30C();
  sub_1000258C0(v4);
  sub_10076FBEC();

  return sub_10076FCAC();
}

uint64_t sub_1002AACCC()
{
  sub_10000A5D4(&qword_100942C70);
  v0 = sub_10076FCEC();
  sub_100016F40(0, &qword_100944EF0);
  sub_10076F64C();
  sub_10076FC1C();
  v1 = v7[0];
  sub_10000A5D4(&qword_10094FF80);
  v2 = [v7[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  sub_10076FCCC();
  v3 = swift_allocObject();
  *(v3 + 16) = v7[0];
  *(v3 + 24) = v0;
  v4 = sub_100016F40(0, &qword_1009471F0);
  swift_retain_n();
  v5 = v1;
  v7[3] = v4;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_10077068C();
  sub_10076FC6C();

  sub_10000CD74(v7);
  return v0;
}

uint64_t sub_1002AAE6C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002AAEC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1002AAF04(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase] = a1;
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

uint64_t sub_1002AAFCC@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&unk_100945BD0);
  __chkstk_darwin(v5 - 8);
  v52 = &v49 - v6;
  v7 = sub_10000A5D4(&unk_10094CD50);
  __chkstk_darwin(v7 - 8);
  v53 = &v49 - v8;
  sub_10077071C();
  sub_10077071C();
  v96 = vdupq_n_s64(0x405A400000000000uLL);
  v93 = vdupq_n_s64(0x4056000000000000uLL);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGSize(0);
  sub_10075FDEC();
  v96.i64[0] = 0x402E000000000000;
  v93.i64[0] = 0x402C000000000000;
  sub_10075FDEC();
  *v4 = UIFontTextStyleBody;
  v62 = enum case for FontSource.textStyle(_:);
  v60 = v2[13];
  v61 = v2 + 13;
  v60(v4);
  v97 = sub_10076D9AC();
  v98 = &protocol witness table for StaticDimension;
  v9 = v97;
  v57 = v97;
  sub_10000DB7C(v96.i64);
  v94 = v1;
  v95 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v93.i64);
  v58 = v2[2];
  v58(v10, v4, v1);
  v59 = v2 + 2;
  v11 = UIFontTextStyleBody;
  sub_10076D9BC();
  v12 = v2[1];
  v55 = v2 + 1;
  v12(v4, v1);
  v13 = v12;
  v56 = v12;
  *v4 = v11;
  v14 = v62;
  v15 = v60;
  (v60)(v4, v62, v1);
  v94 = v9;
  v95 = &protocol witness table for StaticDimension;
  v50 = sub_10000DB7C(v93.i64);
  v91 = v1;
  v92 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v90);
  v17 = v58;
  v58(v16, v4, v1);
  v18 = v11;
  v51 = v18;
  sub_10076D9BC();
  v13(v4, v1);
  *v4 = v18;
  v15(v4, v14, v1);
  v19 = v15;
  v20 = v57;
  v91 = v57;
  v92 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v90);
  v88 = v1;
  v89 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v87);
  v17(v21, v4, v1);
  sub_10076D9BC();
  v22 = v56;
  v56(v4, v1);
  *v4 = v51;
  v23 = v62;
  v19(v4, v62, v1);
  v88 = v20;
  v89 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v87);
  v85 = v1;
  v86 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v84);
  v58(v24, v4, v1);
  sub_10076D9BC();
  v22(v4, v1);
  *v4 = UIFontTextStyleFootnote;
  v25 = v60;
  (v60)(v4, v23, v1);
  v85 = v20;
  v86 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v84);
  v82 = v1;
  v83 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v81);
  v27 = v58;
  v58(v26, v4, v1);
  v28 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v29 = v56;
  v56(v4, v1);
  *v4 = v28;
  v25(v4, v62, v1);
  v82 = v57;
  v83 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v81);
  v79 = v1;
  v80 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v78);
  v27(v30, v4, v1);
  v31 = v28;
  sub_10076D9BC();
  v29(v4, v1);
  *v4 = v31;
  v32 = v60;
  (v60)(v4, v62, v1);
  v33 = v57;
  v79 = v57;
  v80 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v78);
  v76 = v1;
  v77 = &protocol witness table for FontSource;
  v34 = sub_10000DB7C(v75);
  v35 = v58;
  v58(v34, v4, v1);
  v36 = v31;
  sub_10076D9BC();
  v56(v4, v1);
  *v4 = v36;
  v37 = v62;
  v32(v4, v62, v1);
  v76 = v33;
  v77 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v75);
  v73 = v1;
  v74 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v72);
  v35(v38, v4, v1);
  v39 = v36;
  sub_10076D9BC();
  v40 = v56;
  v56(v4, v1);
  *v4 = v39;
  (v60)(v4, v37, v1);
  v73 = v33;
  v74 = &protocol witness table for StaticDimension;
  v50 = sub_10000DB7C(v72);
  v70 = v1;
  v71 = &protocol witness table for FontSource;
  v41 = sub_10000DB7C(v69);
  v35(v41, v4, v1);
  v42 = v39;
  v51 = v42;
  sub_10076D9BC();
  v40(v4, v1);
  *v4 = v42;
  v43 = v62;
  v44 = v60;
  (v60)(v4, v62, v1);
  v70 = v33;
  v71 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v69);
  v67 = v1;
  v68 = &protocol witness table for FontSource;
  v45 = sub_10000DB7C(v66);
  v46 = v58;
  v58(v45, v4, v1);
  sub_10076D9BC();
  v40(v4, v1);
  *v4 = v51;
  v44(v4, v43, v1);
  v67 = v57;
  v68 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v66);
  v64 = v1;
  v65 = &protocol witness table for FontSource;
  v47 = sub_10000DB7C(v63);
  v46(v47, v4, v1);
  sub_10076D9BC();
  v40(v4, v1);
  v64 = sub_10076D67C();
  v65 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v63);
  sub_10076D66C();
  return sub_10076424C();
}

char *sub_1002AB984(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076771C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v14 - 8);
  v16 = v60 - v15;
  v17 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A0D48);
  v22 = *(v20 - 8);
  v23 = *(v22 + 16);
  v67 = v21;
  v69 = v22 + 16;
  v70 = v23;
  (v23)(v16);
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v66 = v25;
  v25(v16, 0, 1, v20);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v64 = *(v11 + 104);
  v65 = v11 + 104;
  v64(v13);
  v27 = v10;
  v63 = sub_1007626BC();
  v28 = objc_allocWithZone(v63);
  *&v5[v19] = sub_1007626AC();
  v29 = &v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView] = 0;
  v30 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
  v31 = sub_10076E21C();
  (*(*(v31 - 8) + 56))(&v5[v30], 1, 1, v31);
  sub_10075FD2C();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView] = sub_10075FB3C();
  v62 = v5;
  if (qword_100940A48 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v20, qword_1009A0CE8);
  v70(v16, v32, v20);
  v33 = v66;
  v66(v16, 0, 1, v20);
  v60[1] = v24;
  v61 = v27;
  v34 = v64;
  (v64)(v13, v26, v27);
  v35 = v63;
  v36 = objc_allocWithZone(v63);
  v37 = sub_1007626AC();
  v38 = v62;
  *&v62[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel] = v37;
  v70(v16, v67, v20);
  v33(v16, 0, 1, v20);
  v34(v13, v26, v61);
  v39 = objc_allocWithZone(v35);
  *&v38[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel] = sub_1007626AC();
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v38[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerButton] = sub_1001E89B8(0);
  v71.receiver = v38;
  v71.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v71, "initWithFrame:", a1, a2, a3, a4);
  v42 = [v41 contentView];
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v43 = [v41 contentView];
  [v43 addSubview:*&v41[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView]];

  v44 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel;
  v45 = *&v41[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_10076266C();

  v46 = [v41 contentView];
  [v46 addSubview:*&v41[v44]];

  v47 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel;
  v48 = *&v41[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_100016F40(0, &qword_100942F10);
  v49 = v48;
  v50 = sub_100770D1C();
  [v49 setTextColor:v50];

  v51 = *&v41[v47];
  sub_10076266C();

  v52 = v41;
  v53 = [v52 contentView];
  [v53 addSubview:*&v41[v47]];

  v54 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();

  v55 = [v52 contentView];
  [v55 addSubview:*&v52[v54]];

  v56 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel;
  [*&v52[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel] _setTextColorFollowsTintColor:1];
  [*&v52[v56] setText:0];
  [*&v52[v56] setHidden:1];
  v57 = *&v52[v56];
  sub_10076266C();

  v58 = [v52 contentView];
  [v58 addSubview:*&v52[v56]];

  return v52;
}

double sub_1002AC120()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094CD50);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = sub_10076428C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 traitCollection];
  sub_1002AAFCC(v10);

  sub_10076425C();
  (*(v7 + 8))(v10, v6);
  v13[1] = v1;
  sub_10075FDCC();
  (*(v3 + 8))(v5, v2);
  return *&v13[2];
}

void sub_1002AC2EC(void *a1, uint64_t *a2)
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

  v8 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    [v2 addSubview:v7];
  }

LABEL_4:
}

uint64_t sub_1002AC394@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_10077164C();
  v28 = *(v3 - 8);
  v29 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100945BD0);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v24 - v6;
  v8 = sub_10000A5D4(&unk_10094CD50);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v26 = sub_10076428C();
  v24 = *(v26 - 8);
  *&v12 = __chkstk_darwin(v26).n128_u64[0];
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v16 = sub_10077071C();

  if (v16)
  {
    if (qword_100941348 != -1)
    {
      swift_once();
    }

    v17 = sub_10076E21C();
    v18 = sub_10000A61C(v17, qword_1009A26E0);
    v19 = *(*(v17 - 8) + 16);
    v20 = v30;

    return v19(v20, v18, v17);
  }

  else
  {
    v22 = [a1 traitCollection];
    sub_1002AAFCC(v14);

    sub_10076425C();
    v31 = a1;
    sub_10075FDCC();
    (*(v9 + 8))(v11, v8);
    sub_10076426C();
    sub_10076D17C();
    sub_10075FE7C();
    (*(v28 + 8))(v5, v29);
    (*(v25 + 8))(v7, v27);
    if (qword_100941348 != -1)
    {
      swift_once();
    }

    v23 = sub_10076E21C();
    sub_10000A61C(v23, qword_1009A26E0);
    sub_10076E1BC();
    return (*(v24 + 8))(v14, v26);
  }
}

id sub_1002AC7E0()
{
  v1 = sub_10000A5D4(&unk_1009467C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = sub_10076E21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
  swift_beginAccess();
  sub_10007A9C8(&v0[v11], v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10000CFBC(v3, &unk_1009467C0);
    result = *&v0[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView];
    if (result)
    {
      return [result setHidden:1];
    }
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    v13 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView;
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView];
    if (v14)
    {
      (*(v5 + 16))(v7, v10, v4);
      v15 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v16 = *(v5 + 24);
      v17 = v14;
      v16(&v14[v15], v7, v4);
      swift_endAccess();
      v18 = v17;
      [v18 setNeedsLayout];
      v19 = *(v5 + 8);
      v19(v7, v4);
      [v18 setHidden:0];

      return (v19)(v10, v4);
    }

    else
    {
      (*(v5 + 16))(v7, v10, v4);
      v20 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v21 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v5 + 40);
      v22 = v20;
      v28(&v20[v21], v7, v4);
      swift_endAccess();

      v23 = *&v0[v13];
      if (v23)
      {
        [v23 removeFromSuperview];
        v24 = *&v0[v13];
      }

      else
      {
        v24 = 0;
      }

      *&v0[v13] = v22;
      v25 = v22;

      v26 = [v0 contentView];
      [v26 addSubview:v25];

      [v0 setNeedsLayout];
      return (*(v5 + 8))(v10, v4);
    }
  }

  return result;
}

uint64_t sub_1002ACBC4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v73 = sub_10076D1FC();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v69 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1007642AC();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076428C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v79 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v68 - v9;
  v11 = sub_10076E21C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  v75 = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v13);
  v16 = [v1 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v105 = v18;
  v106 = v20;
  v107 = v22;
  v108 = v24;
  v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView];
  v76 = v10;
  v77 = v6;
  v78 = v5;
  if (v25)
  {
    v26 = v25;
    if ([v26 isHidden])
    {
    }

    else
    {
      v27 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
      swift_beginAccess();
      v28 = *(v12 + 16);
      v28(v15, &v26[v27], v11);
      sub_10076E1CC();
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v68 = *(v12 + 8);
      v68(v15, v11);
      [v26 setFrame:{v30, v32, v34, v36}];
      v37 = &v26[v27];
      v5 = v78;
      v28(v15, v37, v11);
      v10 = v76;
      v6 = v77;
      sub_100770A6C();

      v68(v15, v11);
    }
  }

  v38 = [v1 traitCollection];
  sub_1002AAFCC(v10);

  v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerButton];
  v40 = &v39[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v39[OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v41 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(&v39[v41], v102);
    sub_10000CF78(v102, v103);
    sub_100767A2C();
    v43 = v42;
    v45 = v44;
    sub_10000CD74(v102);
    *v40 = v43;
    *(v40 + 1) = v45;
    v40[16] = 0;
  }

  sub_10076427C();
  (*(v6 + 16))(v79, v10, v5);
  v46 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_artworkView];
  v103 = sub_10075FD2C();
  v104 = &protocol witness table for UIView;
  v102[0] = v46;
  v47 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v47)
  {
    v48 = sub_1007626BC();
    v49 = &protocol witness table for UILabel;
    v50 = v47;
  }

  else
  {
    v50 = 0;
    v48 = 0;
    v49 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = v50;
  v100 = v48;
  v101 = v49;
  v51 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel];
  v52 = sub_1007626BC();
  v95 = v52;
  v96 = &protocol witness table for UILabel;
  v93 = &protocol witness table for UILabel;
  v94 = v51;
  v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  v92 = v52;
  v91 = v53;
  v54 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v54)
  {
    v55 = &protocol witness table for UILabel;
    v56 = v52;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v87 = 0;
    v88 = 0;
  }

  v85 = &protocol witness table for UILabel;
  v86 = v54;
  v89 = v56;
  v90 = v55;
  v57 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel];
  v84 = v52;
  v83 = v57;
  v81 = type metadata accessor for OfferButton();
  v82 = &protocol witness table for UIView;
  v80 = v39;
  v58 = v47;
  v59 = v51;
  v60 = v53;
  v61 = v54;
  v62 = v57;
  v63 = v39;
  v64 = v46;
  v65 = v70;
  sub_10076429C();
  v66 = v69;
  sub_10076423C();
  (*(v71 + 8))(v66, v73);
  sub_1002ADF68(&qword_1009490D8, type metadata accessor for MediumLockupCollectionViewCell);
  sub_1007676CC();
  (*(v72 + 8))(v65, v74);
  return (*(v77 + 8))(v76, v78);
}

id sub_1002AD2F8(char a1, uint64_t a2)
{
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v16 = sub_10076D3DC();
    v17 = sub_10000A61C(v16, qword_1009A0CD0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_1007626BC());
    v20 = sub_1007626AC();
    v2 = v15;
    sub_1002AC2EC(v20, &OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel);
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

void sub_1002AD5A8()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_100940A90 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A0DC0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_1007626BC());
  v15 = sub_1007626AC();
  sub_1002AC2EC(v15, &OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_10076266C();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100016F40(0, &qword_100942F10);
      v18 = v17;
      v19 = sub_100770D0C();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for MediumLockupCollectionViewCell()
{
  result = qword_10094FFB8;
  if (!qword_10094FFB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002AD9EC()
{
  sub_10007A8BC(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10007A8BC(319, &unk_100945540, &type metadata accessor for Separator);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002ADB34()
{
  sub_10075FB6C();
  sub_10075FD2C();
  sub_1002ADF68(&qword_100941820, &type metadata accessor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_1002ADBCC(uint64_t a1)
{
  result = sub_1002ADF68(&qword_10094FFC8, type metadata accessor for MediumLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_1002ADC24(void *a1)
{
  v2 = sub_10076428C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076443C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v21 - v12;
  v14 = [a1 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v15 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v15 = qword_100944CA0;
  }

  v16 = sub_10000A61C(v6, v15);
  (*(v7 + 16))(v9, v16, v6);

  (*(v7 + 32))(v13, v9, v6);
  v17 = [a1 traitCollection];
  sub_1002AAFCC(v5);

  sub_1007643EC();
  sub_10076441C();
  sub_10076427C();
  sub_1007642AC();
  sub_1002ADF68(&qword_10094FFD0, &type metadata accessor for MediumLockupLayout);
  sub_10076DBDC();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v13, v6);
  return v19;
}

uint64_t sub_1002ADF68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002ADFB0()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_avatarShowcase) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel;
  if (qword_100940A68 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A0D48);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v8, v13, v12);
  (*(v14 + 56))(v8, 0, 1, v12);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v15 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v11) = sub_1007626AC();
  v16 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter);
  *v16 = 0u;
  v16[1] = 0u;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separatorView) = 0;
  v17 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
  v18 = sub_10076E21C();
  (*(*(v18 - 8) + 56))(v1 + v17, 1, 1, v18);
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002AE2DC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002AE324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002AE38C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002AE3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

id sub_1002AE440(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_1002AE6B0(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

void (*sub_1002AE800(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v4 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v4 = sub_10076489C();
  v7 = v6;

LABEL_6:
  *a1 = v4;
  a1[1] = v7;
  return sub_1002AE8C0;
}

void sub_1002AE8C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10001CE50(v2);
        v4 = v3;
        sub_1007648AC();
      }
    }

    goto LABEL_10;
  }

  if (!v3 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    sub_1000167E0(v2);
    return;
  }

  v5 = v3;
  sub_1007648AC();
}

void sub_1002AE9FC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_1002B233C(&qword_100942810, type metadata accessor for VideoView);
    }

    swift_getObjectType();
    v6 = a1;
    v5 = v3;
    sub_100765B5C();

    v4 = v6;
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_1002AEB00()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v3 = v1;
    v4 = sub_100765B4C();

    if (v4)
    {
      type metadata accessor for VideoView();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_1002AEBA0(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
    v7 = sub_100765B4C();

    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v5;
  return sub_1002AEC74;
}

void sub_1002AEC74(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_1002B233C(&qword_100942810, type metadata accessor for VideoView);
        }

        v7 = v11;
        v8 = v5;
        sub_100765B5C();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_1002B233C(&qword_100942810, type metadata accessor for VideoView);
    }

    v9 = v11;
    v10 = v5;
    sub_100765B5C();

    v4 = v9;
  }

LABEL_13:
}

id sub_1002AEE34()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098), sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000CF78(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_10000CD74(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000CFBC(&v8, &qword_10094DE78);

  return v7;
}

id sub_1002AEF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098), sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000CF78(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_10000CD74(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000CFBC(&v8, &qword_10094DE78);

  return v7;
}

id sub_1002AF08C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098), sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10000CF78(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_10000CD74(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10000CFBC(&v8, &qword_10094DE78);

  return v7;
}

uint64_t sub_1002AF1B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098), sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000CF78(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_10000CD74(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000CFBC(&v6, &qword_10094DE78);
}

uint64_t sub_1002AF2F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10000A5D4(&qword_100950098), sub_10000A5D4(&qword_10094DE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10000CF78(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_10000CD74(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10000CFBC(&v6, &qword_10094DE78);
}

void sub_1002AF410()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchResultCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t sub_1002AF5D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076207C();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = sub_10076C36C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_10076C38C();
  v70 = *(v17 - 8);
  v71 = v17;
  __chkstk_darwin(v17);
  v67 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v59 - v20;
  sub_100760A8C();
  sub_1002B233C(&qword_100948A40, &type metadata accessor for SearchResult);
  result = sub_10076332C();
  if (v73)
  {
    v61 = v16;
    v22 = sub_1000E9CE8();
    if (!v22)
    {
    }

    v24 = v23;
    v60 = a2;
    v62 = &v3[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
    v63 = v3;
    if (!*&v3[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents] || sub_10000A5D4(&qword_100950090) != v22)
    {
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v26 = v62;
      v27 = *v62;
      *v62 = v25;
      *(v26 + 1) = v24;
      v28 = v11;
      v29 = a1;
      v30 = v25;
      sub_1002AE6B0(v27);

      a1 = v29;
      v11 = v28;
    }

    swift_getKeyPath();
    sub_10076338C();

    v31 = v73;
    v32 = sub_1007706EC();

    if ((v32 & 1) == 0)
    {
      v50 = *v62;
      if (*v62)
      {
        v51 = *(v62 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v63 setNeedsLayout];
    }

    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v64 + 8))(v10, v8);
    v33 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v73)
    {
      v33 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v34 = v61;
    (*(v12 + 104))(v61, *v33, v11);
    sub_10076C24C();
    v64 = v35;
    sub_10076C26C();
    v59 = v36;
    sub_10076C25C();
    swift_getKeyPath();
    sub_10076338C();

    v37 = v66;
    sub_10076203C();
    (*(v12 + 16))(v65, v34, v11);
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    v38 = v67;
    sub_10076C33C();
    (*(v68 + 8))(v37, v69);
    v39 = v62;
    if (*v62)
    {
      [*v62 layoutMargins];
      v41 = v40;
      v43 = v42;
      sub_10076C2EC();
      v45 = v44;
      sub_10076C2EC();
      v46 = *v39;
      if (!*v39)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_10076C2EC();
      v41 = v56;
      v45 = v57;
      v43 = v58;
      v46 = *v39;
      if (!*v39)
      {
LABEL_14:
        v47 = *(v70 + 8);
        v48 = v38;
        v49 = v71;
        v47(v48, v71);
        (*(v12 + 8))(v34, v11);
        v47(v72, v49);
        v50 = *v39;
        if (*v39)
        {
          v51 = *(v39 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v53 = a1;
          v54 = *(v51 + 48);
          v55 = v50;
          v54(v53, v60, ObjectType, v51);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v46 setLayoutMargins:{v41, v45, v43}];
    goto LABEL_14;
  }

  return result;
}

void sub_1002AFD08(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      sub_100387B00(a1, a2);
      [v6 setNeedsLayout];
    }
  }
}

uint64_t sub_1002AFE1C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v73 = a6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v8 = sub_10076F08C();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F0CC();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076F07C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_10076F0EC();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&unk_1009520F0);
  sub_10076289C();
  result = swift_dynamicCast();
  if (result)
  {
    v68 = v11;
    v23 = *&v6[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
    if (v23 && (v69 = v81[0], v65 = v9, v24 = type metadata accessor for AdvertsSearchResultContentView(), (v25 = swift_dynamicCastClass()) != 0))
    {
      v26 = v25;
      v27 = v23;
      [v6 setUserInteractionEnabled:0];
      v66 = v27;
      [v26 frame];
      v32 = [objc_allocWithZone(v24) initWithFrame:{v28, v29, v30, v31}];
      v33 = *(*&v26[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
      [v26 layoutMargins];
      v67 = v21;
      v34 = v69;
      v35 = v71;
      v36 = v70;
      v70 = v6;
      sub_10045D1F0(v69, v71, v36, v79, v33, v37, v38, v39, v40);
      [v32 layoutIfNeeded];
      [v26 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v81[0] = v42;
      v81[1] = v44;
      v81[2] = v46;
      v81[3] = v48;
      v82 = 0;
      sub_10045F5E0(v34, v81, v72, v35);
      v49 = &v26[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v72 = v8;
      v50 = *v49;
      v51 = v49[1];
      sub_10001CE50(*v49);
      sub_10053D600(v50, v51);
      sub_1000167E0(v50);
      sub_100085204();
      v71 = sub_10077068C();
      sub_10076F0DC();
      v52 = 333;
      if ((v73 & 1) == 0)
      {
        v52 = 0;
      }

      *v16 = v52;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      sub_10076F14C();
      (*(v14 + 8))(v16, v13);
      v74 = *(v74 + 8);
      v53 = v75;
      (v74)(v18, v75);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = v26;
      v56 = v79;
      v55[4] = v32;
      v55[5] = v56;
      aBlock[4] = sub_1002B22BC;
      aBlock[5] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088FC58;
      v57 = _Block_copy(aBlock);
      v58 = v66;
      v59 = v32;

      v60 = v76;
      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1002B233C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0);
      sub_1000852B8();
      v61 = v78;
      v62 = v72;
      sub_1007712CC();
      v63 = v67;
      v64 = v71;
      sub_10077064C();

      _Block_release(v57);

      (*(v65 + 8))(v61, v62);
      (*(v77 + 8))(v60, v68);
      return (v74)(v63, v53);
    }

    else
    {
    }
  }

  return result;
}

void sub_1002B05D4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_1002B2330;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000513F0;
    aBlock[3] = &unk_10088FCA8;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_1002B0734(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002B233C(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_1002B233C(&unk_10095A480, type metadata accessor for AdvertsSearchResultContentView);
  sub_100767CFC();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    sub_1002B233C(&qword_100942810, type metadata accessor for VideoView);
  }

  sub_100767D3C();

  v9 = sub_1002B233C(&qword_100948250, type metadata accessor for AdvertsSearchResultContentView);
  v10 = &a5[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  v11 = *&a5[OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents];
  *v10 = a4;
  *(v10 + 1) = v9;
  v12 = a4;
  sub_1002AE6B0(v11);

  [a5 setUserInteractionEnabled:1];
}

void sub_1002B0970()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1000167E0(v2);
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v3;
      sub_10076A00C();
    }
  }
}

void sub_1002B0A5C()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = v4;
      sub_100769FFC();
    }
  }
}

uint64_t sub_1002B0B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_100763F9C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076469C();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10076C38C();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076182C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100950080);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10000A5D4(&unk_100952090);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_10076499C();
  sub_1002B233C(&qword_100948A38, &type metadata accessor for AdvertsSearchResult);
  v37 = a1;
  sub_10076332C();
  if (!v45)
  {
    v26 = 1;
    v25 = v44;
    goto LABEL_14;
  }

  v34 = v4;
  v43 = v45;
  sub_10076496C();
  (*(v9 + 104))(v19, enum case for ItemBackground.clearAdWithSeparator(_:), v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v23 = *(v11 + 48);
  sub_100016E2C(v22, v13, &unk_100952090);
  sub_100016E2C(v19, &v13[v23], &unk_100952090);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    sub_100016E2C(v13, v16, &unk_100952090);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v27 = v35;
      (*(v9 + 32))(v35, &v13[v23], v8);
      sub_1002B233C(&qword_100950088, &type metadata accessor for ItemBackground);
      v28 = sub_10076FF1C();
      v29 = *(v9 + 8);
      v29(v27, v8);
      sub_10000CFBC(v19, &unk_100952090);
      sub_10000CFBC(v22, &unk_100952090);
      v29(v16, v8);
      sub_10000CFBC(v13, &unk_100952090);
      v25 = v44;
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_9:

      v26 = 1;
      goto LABEL_14;
    }

    sub_10000CFBC(v19, &unk_100952090);
    sub_10000CFBC(v22, &unk_100952090);
    (*(v9 + 8))(v16, v8);
LABEL_8:
    sub_10000CFBC(v13, &qword_100950080);
    v25 = v44;
    goto LABEL_9;
  }

  sub_10000CFBC(v19, &unk_100952090);
  sub_10000CFBC(v22, &unk_100952090);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_10000CFBC(v13, &unk_100952090);
  v25 = v44;
LABEL_11:
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    swift_once();
  }

  v30 = v38;
  sub_10076C32C();
  sub_10076C31C();
  (*(v40 + 104))(v34, enum case for ComponentSeparator.Position.bottom(_:), v42);
  v31 = [objc_opt_self() systemGray3Color];
  sub_100763FAC();

  (*(v39 + 8))(v30, v41);
  v26 = 0;
LABEL_14:
  v32 = sub_100763FDC();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

id sub_1002B12A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell()
{
  result = qword_100950058;
  if (!qword_100950058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B13B4()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002B1458@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016E2C(v1 + v3, a1, &unk_1009428D0);
}

uint64_t sub_1002B14C0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1002B1584()
{
  sub_100760A8C();
  sub_1002B233C(&qword_100948A40, &type metadata accessor for SearchResult);
  result = sub_10076332C();
  if (v1)
  {
    if (sub_1000E9CE8())
    {
      sub_10076571C();
    }
  }

  return result;
}

void sub_1002B1664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell();
    v10 = v4;
    sub_10076422C();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}

void sub_1002B1748(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v4;
    v10(a1, a2, a3 & 1, ObjectType, v8);
  }
}

uint64_t sub_1002B1828()
{
  sub_100760A8C();
  sub_1002B233C(&qword_100948A40, &type metadata accessor for SearchResult);
  result = sub_10076332C();
  if (v1)
  {
    if (sub_1000E9CE8())
    {
      sub_10076A84C();
    }
  }

  return result;
}

uint64_t (*sub_1002B1900(uint64_t **a1))()
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
  v2[4] = sub_1002AEBA0(v2);
  return sub_100019A4C;
}

uint64_t sub_1002B1974()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents))
  {
    return 0;
  }

  type metadata accessor for AdvertsSearchResultContentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(*(result + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_isDisplayingSearchAd);
  }

  return result;
}

uint64_t sub_1002B1A04()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1;
    v4 = sub_10076489C();

    return v4;
  }

  return result;
}

void sub_1002B1A98(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (v2)
  {
    v3 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v2;
      sub_1007648AC();

      return;
    }

    a1 = v3;
  }

  sub_1000167E0(a1);
}

uint64_t (*sub_1002B1B78(void *a1))()
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
  v2[4] = sub_1002AE800(v2);
  return sub_10001D41C;
}

uint64_t sub_1002B1C30()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1002B1C90(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1002B1D28()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1002B1D84(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

uint64_t sub_1002B1F18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1002B1F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1002B1FD8(uint64_t *a1))()
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
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_1002B2074()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10076482C();

  return v3 & 1;
}

uint64_t sub_1002B2234()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002B226C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002B22C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002B22E0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002B233C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TodayPageLayoutSectionProvider()
{
  result = qword_1009500A8;
  if (!qword_1009500A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B2438(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a8;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a10;
  v11 = sub_10076B5BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_10000A5D4(&unk_100946720);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v55 = a1;
  sub_10076468C();
  swift_getKeyPath();
  sub_10076F49C();

  v24 = *(v18 + 8);
  v24(v23, v17);
  v52 = v16;
  v53 = v12;
  v25 = *(v12 + 88);
  v54 = v11;
  v26 = v25(v16, v11);
  if (v26 == enum case for Shelf.ContentType.todayCard(_:))
  {
    v27 = v58();
    v28 = sub_1002B29F0(v55, v27, v60, v61, v62, v63, v59);
  }

  else
  {
    v50 = &v47;
    __chkstk_darwin(v26);
    __chkstk_darwin(v29);
    v47 = v24;
    sub_10076980C();
    v30 = sub_10076981C();
    v48 = a9;
    v31 = v55;
    v49 = v30(v55, sub_1000F79F4, &v47 - 4, v60, v61, v62, v63, v56, a9, v59);
    sub_10076468C();
    swift_getKeyPath();
    v32 = v51;
    sub_10076F49C();

    v47(v20, v17);
    v33 = v54;
    v34 = v25(v32, v54);
    if (v34 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = v58();
      v28 = sub_10075203C(v31, v35, v60, v61, v62, v63, v56, v48, v59);

      v36 = v53;
    }

    else
    {
      v37 = v32;
      v38 = v48;
      v39 = v59;
      v40 = v60;
      v41 = v56;
      v43 = v61;
      v42 = v62;
      v44 = v63;
      v36 = v53;
      if (v34 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v45 = v58();
        v28 = sub_100753380(v31, v45, v40, v43, v42, v44, v41, v38, v39);

        v33 = v54;
      }

      else if (v34 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v28 = v49;
        [v49 setOrthogonalScrollingBehavior:2];
        v33 = v54;
      }

      else
      {
        v33 = v54;
        (*(v53 + 8))(v37, v54);
        v28 = v49;
      }
    }

    (*(v36 + 8))(v52, v33);
  }

  return v28;
}

uint64_t sub_1002B2994()
{
  sub_10076982C();

  return swift_deallocClassInstance();
}

id sub_1002B29F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130[3] = a6;
  v13 = sub_10076341C();
  v151 = *(v13 - 8);
  __chkstk_darwin(v13);
  v148 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076C38C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v130 - v19;
  v152 = a2;
  v147 = v13;
  if ((sub_1007701EC() & 1) == 0)
  {
    sub_100016F40(0, &qword_100948D28);
    v109 = sub_1007708AC();
    v110 = [objc_opt_self() sectionWithGroup:v109];

    sub_1007697EC();
    return v110;
  }

  v130[1] = a3;
  v130[2] = a5;
  v146 = a7;
  v21 = sub_1003B12F0(a1);
  v22 = *(v21 + 16);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = (v22 - 1);
  sub_10076460C();
  sub_10076C23C();
  v25 = v24;
  v26 = *(v16 + 8);
  v145 = v15;
  v144 = v16 + 8;
  v26(v20, v15);
  v27 = v25 * v23;
  v160 = _swiftEmptyArrayStorage;
  v28 = &off_100911000;
  v29 = &off_100911000;
  v30 = v20;
  v135 = *(v21 + 16);
  v143 = v26;
  if (!v135)
  {

    v111 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v132 = objc_opt_self();
  v154 = objc_opt_self();
  v138 = objc_opt_self();
  v131 = objc_opt_self();
  v31 = 0;
  v32 = 0;
  v136 = v21;
  v134 = v21 + 32;
  v149 = v151 + 16;
  v150 = (v151 + 8);
  v142 = v20;
  v33 = v147;
  v34 = v148;
  v133 = a4;
  v141 = a1;
  do
  {
    if (v32 >= *(v136 + 16))
    {
      goto LABEL_71;
    }

    v139 = v32;
    v35 = *(v134 + 8 * v32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v29 = *(v152 + 16);

      v37 = 0.0;
      v30 = 32;
      v155 = _swiftEmptyArrayStorage;
      v153 = v29;
      while (1)
      {
        if (v31 < v29)
        {
          if (v31 < 0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            sub_100016F40(0, &qword_100952C70);

            sub_10077157C();

            goto LABEL_66;
          }

          v38 = v35;
          v39 = *(v35 + v30);
          (*(v151 + 16))(v34, v152 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v31++, v33);
          sub_10076C84C();
          sub_1002A2E88();
          sub_10076332C();
          v40 = aBlock[0];
          if (aBlock[0])
          {
            sub_1007697DC();
            sub_10000CF78(aBlock, v157);
            if (sub_10076A3CC())
            {
              type metadata accessor for BaseTodayCardCollectionViewCell();
              v41 = swift_dynamicCastMetatype();
              if (v41)
              {
                v42 = v41;
                sub_10000CD74(aBlock);
                swift_getKeyPath();
                v43 = v142;
                sub_10076338C();

                swift_getKeyPath();
                sub_10076338C();

                v44 = aBlock[0];
                v45 = (*(v42 + 528))(v40, v39, 0, v43, aBlock[0], 0);

                v46 = v143;
                v143(v43, v145);
                v47 = v140;
                sub_10076460C();
                sub_10076C8BC();
                sub_10076C2FC();
                switch(v39)
                {
                  case 6:
                    v53 = floor(v48);
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 5:
                    sub_10076C22C();
                    v53 = v52;
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 4:
                    v49 = v48;
                    v50 = sub_10076C34C();
                    v33 = v147;
                    v35 = v38;
                    v29 = v153;
                    if (!v51)
                    {
                      goto LABEL_38;
                    }

                    if (v50 == 0x6972477961646F74 && v51 == 0xE900000000000064)
                    {

                      goto LABEL_37;
                    }

                    v71 = sub_10077167C();

                    if (v71)
                    {
LABEL_37:
                      sub_10076C2BC();
                      v53 = floor((v49 - v72) * 0.5);
                    }

                    else
                    {
LABEL_38:
                      sub_10076C2FC();
                      v53 = v73;
                    }

                    v143(v47, v145);
LABEL_43:
                    if (v37 <= v45)
                    {
                      v37 = v45;
                    }

                    v82 = v155;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v82 = sub_10049D1CC(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v84 = *(v82 + 2);
                    v83 = *(v82 + 3);
                    v155 = v82;
                    if (v84 >= v83 >> 1)
                    {
                      v155 = sub_10049D1CC((v83 > 1), v84 + 1, 1, v155);
                    }

                    v85 = v148;
                    (*v150)(v148, v33);
                    v86 = v155;
                    *(v155 + 2) = v84 + 1;
                    v87 = &v86[8 * v84];
                    v34 = v85;
                    *(v87 + 4) = v53;
                    v28 = &off_100911000;
                    goto LABEL_11;
                  default:
                    sub_10076C8BC();
                    sub_10076C2FC();
                    if (v39 > 1)
                    {
                      v33 = v147;
                      if (v39 == 2)
                      {
                        sub_10076C21C();
                        v59 = v58 + -1.0;
                        sub_10076C22C();
                        v61 = v60;
                        sub_10076C2BC();
                        v63 = v59 + -1.0;
                        if (v59 + -1.0 < 0.0)
                        {
                          v63 = 0.0;
                        }

                        v64 = v61 * v59 + v62 * v63;
                        sub_10076C24C();
                        v66 = v65;
                        sub_10076C2EC();
                        v69 = v66 - (v67 + v68);
                        sub_10076C2BC();
                        v55 = v69 - v70 - v64;
                      }

                      else
                      {
                        sub_10076C24C();
                        v75 = v74;
                        sub_10076C2EC();
                        v78 = v75 - (v76 + v77);
                        sub_10076C22C();
                        v80 = v78 - v79;
                        sub_10076C2BC();
                        v55 = v80 - v81;
                      }
                    }

                    else
                    {
                      v33 = v147;
                      if (v39)
                      {
                        v56 = v55;
                        sub_10076C2BC();
                        v55 = (v56 - v57) * 0.5;
                      }
                    }

                    v53 = floor(v55);
                    v54 = v145;
                    break;
                }

                v35 = v38;
                v29 = v153;
                v46(v47, v54);
                goto LABEL_43;
              }

              v34 = v148;
              v33 = v147;
              (*v150)(v148, v147);

              sub_10000CD74(aBlock);
            }

            else
            {
              v33 = v147;
              (*v150)(v34, v147);

              sub_10000CD74(aBlock);
            }

            v28 = &off_100911000;
          }

          else
          {
            (*v150)(v34, v33);
          }

          v35 = v38;
          v29 = v153;
        }

LABEL_11:
        ++v30;
        if (!--v36)
        {

          v30 = v142;
          v88 = v155;
          goto LABEL_52;
        }
      }
    }

    v37 = 0.0;
    v88 = _swiftEmptyArrayStorage;
LABEL_52:
    v89 = *(v88 + 2);
    v90 = v154;
    if (v89)
    {
      v137 = v31;
      v155 = v88;
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1007714EC();
      v153 = objc_opt_self();
      v91 = 32;
      v92 = v138;
      do
      {
        v93 = [v90 v28[246]];
        v94 = [v90 v28[246]];
        v95 = [v92 sizeWithWidthDimension:v93 heightDimension:v94];

        sub_100016F40(0, &unk_10095DD70);
        isa = sub_1007701AC().super.isa;
        v97 = [(SEL *)v153 itemWithLayoutSize:v95 supplementaryItems:isa];

        sub_1007714CC();
        sub_1007714FC();
        v90 = v154;
        sub_10077150C();
        sub_1007714DC();
        v91 += 8;
        --v89;
      }

      while (v89);

      v30 = v142;
      v33 = v147;
      v31 = v137;
    }

    else
    {
    }

    v98 = [v90 fractionalWidthDimension:1.0];
    v99 = [v90 v28[246]];
    v100 = [v138 sizeWithWidthDimension:v98 heightDimension:v99];

    sub_100016F40(0, &qword_100952C70);
    v101 = sub_1007701AC().super.isa;

    v102 = [v132 horizontalGroupWithLayoutSize:v100 subitems:v101];

    sub_10076460C();
    sub_10076C2BC();
    v104 = v103;
    v143(v30, v145);
    v105 = [v131 fixedSpacing:v104];
    [v102 setInterItemSpacing:v105];

    v106 = v102;
    sub_10077019C();
    if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    v107 = v139 + 1;
    sub_10077025C();

    v32 = v107;
    v27 = v27 + v37;
    v108 = v107 == v135;
    v34 = v148;
    v29 = &off_100911000;
  }

  while (!v108);
  v111 = v160;

LABEL_64:
  v112 = objc_opt_self();
  v113 = [v112 fractionalWidthDimension:1.0];
  v114 = [v112 absoluteDimension:v27];
  v29 = [objc_opt_self() v29[247]];

  if (v111 >> 62)
  {
    goto LABEL_72;
  }

  sub_10077168C();
  sub_100016F40(0, &qword_100952C70);
LABEL_66:

  v115 = objc_opt_self();
  sub_100016F40(0, &qword_100952C70);
  v116 = sub_1007701AC().super.isa;

  v117 = [v115 verticalGroupWithLayoutSize:v29 subitems:v116];

  v118 = objc_opt_self();
  sub_10076460C();
  sub_10076C2BC();
  v120 = v119;
  v121 = v145;
  v122 = v143;
  v143(v30, v145);
  v123 = [v118 fixedSpacing:v120];
  [v117 setInterItemSpacing:v123];

  v110 = [objc_opt_self() sectionWithGroup:v117];
  sub_10076460C();
  sub_10076C23C();
  v125 = v124;
  v122(v30, v121);
  [v110 setInterGroupSpacing:v125];
  sub_1007697FC();
  v126 = sub_1007701DC();
  v128 = v127;

  if (v126)
  {
    v158 = v126;
    v159 = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100751F08;
    v157 = &unk_10088FCD0;
    v126 = _Block_copy(aBlock);
  }

  [v110 setVisibleItemsInvalidationHandler:v126];
  _Block_release(v126);
  sub_1007697EC();

  return v110;
}

uint64_t sub_1002B3A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1002B3AB4()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:0];
  [v3 _setTitleControlHidden:{objc_msgSend(v0, "largeTitleDisplayMode") != 2}];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

void sub_1002B3BCC()
{
  v1 = [v0 scrollEdgeAppearance];
  if (!v1)
  {
    v1 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v2 = [v0 standardAppearance];
  if (!v2)
  {
    v2 = [objc_allocWithZone(UINavigationBarAppearance) init];
  }

  v3 = v2;
  [v1 _setTitleControlHidden:1];
  [v3 _setTitleControlHidden:1];
  [v0 setScrollEdgeAppearance:v1];
  [v0 setStandardAppearance:v3];
}

id sub_1002B3CD0()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = [objc_opt_self() buttonWithType:7];
  sub_10077109C();
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_10077114C();
  sub_10077113C();
  if ((*(v12 + 48))(v6, 1, v11))
  {
    sub_10014D2A4(v6, v9);
    sub_10077114C();
    sub_10014D314(v6);
  }

  else
  {
    v13 = [objc_opt_self() configurationWithWeight:5];
    sub_100770F4C();
    sub_10077114C();
  }

  v14 = v10;
  [v14 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v14 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraLarge];
  v15 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v14 addInteraction:v15];

  [v14 setShowsLargeContentViewer:1];
  [v14 setScalesLargeContentImage:1];
  (*(v1 + 104))(v3, enum case for SystemImage.xmark(_:), v0);
  v16 = sub_10076046C();
  (*(v1 + 8))(v3, v0);
  [v14 setLargeContentImage:v16];

  v20._object = 0x80000001007DD7A0;
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_1007622EC(v20, v21);
  v17 = sub_10076FF6C();

  [v14 setLargeContentTitle:v17];

  return v14;
}

uint64_t sub_1002B406C()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_1009500F8);
  sub_10000A61C(v4, qword_1009500F8);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

id sub_1002B41C0()
{
  v0 = sub_1002B4BF0();

  return v0;
}

uint64_t sub_1002B41EC(uint64_t a1)
{
  v3 = sub_10076FBBC();
  v4 = __chkstk_darwin(v3);
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
  (*(v7 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  objc_allocWithZone(sub_100765D7C());
  v8 = v6;
  return sub_100765D8C();
}

void sub_1002B42E0()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = v4;
  sub_100016F40(0, &qword_1009453B0);
  v7 = v4;
  isa = sub_1007701AC().super.isa;

  [v5 setViewControllers:isa];
}

uint64_t sub_1002B441C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076162C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100747388(*(v3 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController), a2, a1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*(v7 + 104))(v9, enum case for BootstrapPhase.initialBootstrap(_:), v6);
    sub_100769DBC();
    (*(v7 + 8))(v9, v6);
    if (*&v11[OBJC_IVAR___RootViewController_freshnessWatchdog])
    {

      sub_100764C7C();
    }

    [v11 loadDidFinish];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1002B45B8()
{
  v1 = v0;
  v2 = sub_10075D86C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D85C();
  sub_10075D83C();
  sub_10075D82C();
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_askToBuy) == 1)
  {
    sub_10000A5D4(&qword_100950350);
    sub_10075D7DC();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10075D7CC();
    sub_10075D7CC();
    sub_10075D7FC();
  }

  sub_10075D81C();
  return (*(v3 + 8))(v5, v2);
}

void sub_1002B47EC()
{
  v1 = v0;
  v2 = sub_10076DF1C();
  __chkstk_darwin(v2 - 8);
  sub_10076DF0C();
  v3 = objc_allocWithZone(sub_10076DF3C());

  swift_errorRetain();
  v4 = sub_10076DF2C();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = v4;
  sub_100016F40(0, &qword_1009453B0);
  v7 = v4;
  isa = sub_1007701AC().super.isa;

  [v5 setViewControllers:isa];
}

void sub_1002B494C()
{

  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
}

uint64_t sub_1002B49C0()
{
  sub_10000CC8C(v0 + 16);
  v1 = OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_logger;
  v2 = sub_10076F59C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10000CC8C(v0 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_delegate);

  return v0;
}

uint64_t sub_1002B4AC0()
{
  sub_1002B49C0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeSubscribePageBootstrap()
{
  result = qword_100950168;
  if (!qword_100950168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B4BF0()
{
  v1 = v0;
  v2 = sub_1007614EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DE4C();
  __chkstk_darwin(v6 - 8);
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension13BaseBootstrap_isBootstrapping) = 1;
    sub_10076DE3C();
    v7 = objc_allocWithZone(sub_10076DE6C());
    v8 = sub_10076DE5C();
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
    sub_10000A5D4(&unk_100942870);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007841E0;
    *(v10 + 32) = v8;
    sub_100016F40(0, &qword_1009453B0);
    v11 = v8;
    isa = sub_1007701AC().super.isa;

    [v9 setViewControllers:isa];

    sub_100045B74(v5);
    sub_1007614DC();
    v13 = sub_100016F40(0, &qword_1009471F0);
    swift_retain_n();
    v14 = sub_10077068C();
    v17[3] = v13;
    v17[4] = &protocol witness table for OS_dispatch_queue;
    v17[0] = v14;
    sub_10076FC6C();

    sub_10000CD74(v17);
    sub_10075EABC();
    sub_10075EAAC();
    (*(v3 + 8))(v5, v2);
  }

  return *(v1 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
}

uint64_t sub_1002B4EB8(uint64_t a1)
{
  v80 = a1;
  v64 = sub_10076F68C();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_10094A890);
  __chkstk_darwin(v3 - 8);
  v77 = &v59 - v4;
  v5 = type metadata accessor for FlowDestination();
  v75 = *(v5 - 8);
  v76 = v5;
  __chkstk_darwin(v5);
  v79 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = sub_10075F65C();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v74 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100765F6C();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100766EDC();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v70 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v12 - 8);
  v14 = &v59 - v13;
  v15 = sub_10076C15C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v59 - v23;
  v25 = sub_10075DB7C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v1;
  sub_1002B45B8();
  v29 = v25;
  v30 = v26;
  if ((*(v26 + 48))(v24, 1, v29) == 1)
  {
    sub_10000CFBC(v24, &unk_1009435D0);
    if (qword_10093FD28 != -1)
    {
      swift_once();
    }

    v31 = sub_10076FD4C();
    sub_10000A61C(v31, qword_1009500F8);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();
  }

  else
  {
    (*(v26 + 32))(v28, v24, v29);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    (*(v16 + 104))(v18, enum case for FlowPage.arcadeSubscribe(_:), v15);
    v33 = *(v26 + 16);
    v60 = v28;
    v33(v21, v28, v29);
    v34 = *(v26 + 56);
    v61 = v29;
    v34(v21, 0, 1, v29);
    v35 = sub_10076096C();
    (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
    memset(v81, 0, sizeof(v81));
    sub_10076F4DC();
    (*(v65 + 104))(v70, enum case for FlowPresentationContext.infer(_:), v66);
    (*(v68 + 104))(v72, enum case for FlowAnimationBehavior.infer(_:), v69);
    (*(v71 + 104))(v74, enum case for FlowOrigin.inapp(_:), v73);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v36 = sub_10075F5EC();
    v37 = v78;
    v38 = [sub_1002B4BF0() traitCollection];
    v84 = 0;
    v82 = 0u;
    v83 = 0u;

    sub_10076B87C();
    v39 = v77;
    sub_10012062C(v36, v81, v77);
    v40 = v76;
    v41 = *(v75 + 48);
    v42 = v30;
    if (v41(v39, 1, v76) == 1)
    {
      v43 = v79;
      swift_storeEnumTagMultiPayload();
      v44 = v41(v39, 1, v40);
      v45 = v80;
      if (v44 != 1)
      {
        sub_10000CFBC(v39, &unk_10094A890);
      }
    }

    else
    {
      v43 = v79;
      sub_10005DAD8(v39, v79);
      v45 = v80;
    }

    v46 = sub_10075F57C();
    v48 = v47;
    sub_10075F59C();
    v49 = sub_10048B0C0(v43, v38, v46, v48, v14, &v82, v45, 1);

    sub_10000CFBC(v14, &unk_100958150);
    sub_10005C6E8(v43);
    sub_10000CFBC(&v82, &unk_10094A8A0);
    if (v49)
    {
      v50 = *(v37 + OBJC_IVAR____TtC20ProductPageExtension28ArcadeSubscribePageBootstrap_navigationController);
      sub_10000A5D4(&unk_100942870);
      v51 = swift_allocObject();
      *(v51 + 16) = xmmword_1007841E0;
      *(v51 + 32) = v49;
      sub_100016F40(0, &qword_1009453B0);
      v52 = v49;
      isa = sub_1007701AC().super.isa;

      [v50 setViewControllers:isa];

      Strong = swift_unknownObjectWeakLoadStrong();
      v55 = v60;
      if (Strong)
      {
        sub_100747680(v45, v52, v60);
        swift_unknownObjectRelease();
      }

      sub_10076148C();
      sub_10076F5CC();
      sub_10076F64C();
      v56 = v62;
      v57 = v64;
      sub_10076FC1C();
      sub_1007612FC();
      sub_10075EC5C();

      (*(v63 + 8))(v56, v57);
      return (*(v42 + 8))(v55, v61);
    }

    else
    {
      if (qword_10093FD28 != -1)
      {
        swift_once();
      }

      v58 = sub_10076FD4C();
      sub_10000A61C(v58, qword_1009500F8);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBEC();

      return (*(v42 + 8))(v60, v61);
    }
  }
}

double sub_1002B5C3C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10077164C();
  v20 = *(v4 - 8);
  v21 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076E21C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007665FC();
  sub_1002B62A4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions);
  v15 = sub_10077124C();
  (*(v12 + 8))(v14, v11);
  swift_getObjectType();
  sub_100079BE0(a3, v10);
  type metadata accessor for InAppPurchaseLockupView();
  v16 = sub_1000CBBB0(a3);
  if (v15)
  {
    v17 = v16;
    sub_10076E1AC();
    sub_10000CF78(v22, v22[3]);
    sub_1000FF02C();
    sub_10076D40C();
    (*(v20 + 8))(v6, v21);
    (*(v8 + 8))(v10, v7);
    sub_10000CD74(v22);
  }

  else
  {
    sub_100770AFC();
    v17 = v18;
    (*(v8 + 8))(v10, v7);
  }

  return v17;
}

uint64_t sub_1002B5F88(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v24[1] = a1;
  v6 = sub_10076E21C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076B6EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  type metadata accessor for InAppPurchaseLockupView();
  sub_1000CBBB0(a4);
  sub_10076B6BC();
  sub_1002B62A4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  sub_10077124C();
  (*(v11 + 8))(v13, v10);
  sub_100079BE0(a4, v9);
  sub_10076E1DC();
  (*(v7 + 8))(v9, v6);
  [a4 pageMarginInsets];
  v14 = [a4 traitCollection];
  LOBYTE(v6) = sub_1007706FC();

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
  v22 = sub_1007665BC();

  return v22;
}

uint64_t sub_1002B62A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002B62EC()
{
  result = sub_10076B15C();
  if (v1 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_1002B6424(unsigned int *a1, uint64_t (*a2)(uint64_t))
{
  v5 = v2;
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100016E2C(v5 + v10, v15, &unk_10094E1F0);
  if (v16)
  {
    sub_10000A570(v15, v14);
    sub_10000CFBC(v15, &unk_10094E1F0);
    sub_10000CF78(v14, v14[3]);
    (*(v7 + 104))(v9, *a1, v6);
    sub_10075F2BC();
    (*(v7 + 8))(v9, v6);
    v11 = sub_10000CD74(v14);
  }

  else
  {
    v11 = sub_10000CFBC(v15, &unk_10094E1F0);
  }

  return a2(v11);
}

uint64_t sub_1002B65E8()
{
  v1 = v0;
  sub_10000A5D4(&qword_100942480);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100799D60;
  swift_getWitnessTable();
  sub_10076B17C();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = sub_10076B16C();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_1002C1B38(&qword_1009505B0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  swift_getWitnessTable();
  v5 = *&v1[qword_10099E390];

  v6 = v1;
  v7 = v5;
  sub_10076848C();
  sub_10076B05C();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = sub_10076B04C();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  type metadata accessor for BaseDiffableShelfViewController();
  swift_getWitnessTable();
  sub_10076A6DC();
  sub_10076848C();
  sub_10076A96C();
  swift_allocObject();
  *(v2 + 80) = sub_10076A95C();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  sub_10076AFDC();
  swift_allocObject();
  *(v2 + 96) = sub_10076AFCC();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  sub_10076B30C();
  swift_allocObject();
  *(v2 + 112) = sub_10076B2FC();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  sub_10076A6DC();
  sub_10076ACEC();
  swift_allocObject();
  *(v2 + 128) = sub_10076ACDC();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_1009503B8];
  v10 = sub_1002C1B38(&qword_1009505B8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_1009503B0];
  v12 = sub_1002C1B38(&unk_1009505C0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  swift_getWitnessTable();
  sub_10076AEFC();
  swift_allocObject();

  *(v2 + 176) = sub_10076AEEC();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_1009503A8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  sub_10076A87C();
  swift_allocObject();

  *(v2 + 208) = sub_10076A86C();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  swift_getWitnessTable();
  sub_10076B0EC();
  swift_allocObject();
  *(v2 + 224) = sub_10076B0DC();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  sub_10076A43C();
  swift_allocObject();
  return sub_10076A42C();
}

uint64_t sub_1002B6B48(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = swift_isaMask;
  v34 = swift_isaMask & *v2;
  v6 = sub_10076DE4C();
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
  v12 = sub_100765D9C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v31 - v15;
  (*(v13 + 16))(&v31 - v15, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v13 + 8))(v16, v12);
    *(v2 + qword_10099E368) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10076843C())
    {
      sub_10076366C();
    }

    v18 = qword_1009503C0;
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
      v23 = &v19[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v24 = *&v19[OBJC_IVAR____TtC20ProductPageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v23 = sub_1002C1460;
      v23[1] = v21;
      v25 = v19;

      sub_1000167E0(v24);
    }

    sub_10076842C();
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v13 + 96))(v16, v12);
    v27 = *(v16 + 1);
    sub_10076DF3C();
    swift_getWitnessTable();
    swift_errorRetain();

    sub_10001CE50(v27);
    v28 = sub_10076DEFC();
    (*((swift_isaMask & *v2) + 0x168))(v28);
    sub_1000167E0(v27);
  }

  else if (v17 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10076842C();
    sub_10076DE3C();
    v29 = objc_allocWithZone(sub_10076DE6C());
    v30 = sub_10076DE5C();
    (*((swift_isaMask & *v2) + 0x168))(v30);
    swift_getWitnessTable();
    return sub_1007657EC();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_1002B7140@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_10099E358;
  swift_beginAccess();
  v4 = sub_10076B15C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1002B71C8(uint64_t a1)
{
  v3 = qword_10099E358;
  swift_beginAccess();
  v4 = sub_10076B15C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_1002B7354()
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
  sub_10076A64C();
  sub_10000A5D4(&unk_100950690);
  sub_10000A5D4(&qword_10094B640);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v6, *(&v7 + 1));
    sub_10076208C();
    sub_10000CD74(&v6);
  }

  else
  {
    *&v8 = 0;
    v6 = 0u;
    v7 = 0u;
    sub_10000CFBC(&v6, &unk_1009506A0);
  }

  type metadata accessor for TodayCardGridTracker();
  result = sub_10076F5AC();
  v5 = v10;
  if (v10)
  {
    swift_beginAccess();
    *(v5 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1002B7528(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100950600);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016E2C(a1, &v16[-1] - v7, &qword_10094B618);
  v9 = sub_10000A5D4(&qword_100950560);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(v8, &qword_10094B618);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_100761B9C();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10076B09C();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000A5D4(&qword_100950680);
    v13 = sub_100071820(&qword_100950688, &qword_100950680);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_10076560C();
  if (v17)
  {
    return sub_10000CD74(v16);
  }

  return result;
}

uint64_t sub_1002B77B4()
{
  if ((*(v0 + qword_10099E368) & 1) == 0)
  {
    return sub_1007684AC();
  }

  return result;
}

uint64_t sub_1002B77F0()
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
  sub_10076A6DC();
  type metadata accessor for GenericPageItemSupplementaryProvider();
  v4 = swift_allocObject();
  sub_10000A570(v7, v4 + 16);
  type metadata accessor for GenericPageSeparatorItemSupplementaryProvider();
  v5 = swift_allocObject();
  sub_100012498(v7, v5 + 16);
  *(v4 + 56) = v5;
  sub_1002C1B38(&qword_100947D38, type metadata accessor for GenericPageItemSupplementaryProvider);
  return v4;
}

void *sub_1002B7944()
{
  v1 = v0;
  v119 = swift_isaMask & *v0;
  v2 = sub_1007621EC();
  v114 = *(v2 - 8);
  v115 = v2;
  __chkstk_darwin(v2);
  v106 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v109 = (&v101 - v5);
  v113 = sub_10000A5D4(&unk_100946720);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v105 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v108 = &v101 - v8;
  v9 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v9 - 8);
  v110 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v101 - v12;
  v14 = sub_10076469C();
  v117 = *(v14 - 8);
  v118 = v14;
  __chkstk_darwin(v14);
  v16 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v120 = sub_10000A5D4(&qword_100944C40);
  v20 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v101 - v23;
  v25 = sub_10076903C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = _swiftEmptyArrayStorage;
  sub_100765DFC();
  v29 = (*(v26 + 88))(v28, v25);
  v107 = v16;
  v111 = v19;
  if (v29 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    (*(v26 + 96))(v28, v25);
    sub_10000CD74(v28);
    v30 = [v0 traitCollection];
    if (qword_100941200 != -1)
    {
      swift_once();
    }

    v31 = sub_10076D9AC();
    sub_10000A61C(v31, qword_1009A2380);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1007841E0;
    *(v32 + 32) = v30;
    v33 = v30;
    v34 = sub_10076DEEC();
    sub_10076D3EC();
    v36 = v35;

    v37 = objc_opt_self();
    v38 = [v37 fractionalWidthDimension:1.0];
    v39 = [v37 absoluteDimension:v36];
    v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

    type metadata accessor for InfiniteScrollFooterView();
    v41 = v40;
    sub_1007708EC();
    v42 = sub_10076FF6C();

    v43 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v41 elementKind:v42 alignment:5];

    v44 = v43;
    sub_10077019C();
    if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v45 = v125;
  }

  else
  {
    (*(v26 + 8))(v28, v25);
    v45 = _swiftEmptyArrayStorage;
  }

  v46 = qword_1009503C8;
  swift_beginAccess();
  v47 = *(v1 + v46);
  if (!v47)
  {
    return v45;
  }

  v48 = v47;
  sub_10076E79C();

  v49 = v120;
  v50 = sub_10076E5EC();
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
  sub_10076A67C();
  v57 = v117;
  v56 = v118;
  if ((*(v117 + 48))(v13, 1, v118) == 1)
  {
    sub_10000CFBC(v13, &unk_10095DCF0);
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
  sub_10076468C();
  swift_getKeyPath();
  v62 = v57;
  v63 = v109;
  v64 = v113;
  sub_10076F49C();

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

  v69 = *(sub_10000A5D4(&unk_100950670) + 48);
  v70 = sub_1007659CC();
  (*(*(v70 - 8) + 8))(v63 + v69, v70);
  v71 = objc_opt_self();
  v72 = [v71 fractionalWidthDimension:1.0];
  v73 = [v71 absoluteDimension:2000.0];
  v74 = [objc_opt_self() sizeWithWidthDimension:v72 heightDimension:v73];

  v75 = sub_10076FF6C();
  v76 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v74 elementKind:v75 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v76 setExtendsBoundary:0];
  v77 = v76;
  sub_10077019C();
  if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

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
    sub_10076E79C();

    v80 = v120;
    v81 = sub_10076E5EC();
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
      sub_10076A67C();
      if ((*(v57 + 48))(v84, 1, v56) == 1)
      {
        sub_10000CFBC(v84, &unk_10095DCF0);
      }

      else
      {
        v85 = v107;
        (*(v57 + 32))(v107, v84, v56);
        v86 = v105;
        sub_10076468C();
        swift_getKeyPath();
        v87 = v106;
        v88 = v113;
        sub_10076F49C();

        (*(v112 + 8))(v86, v88);
        v90 = v114;
        v89 = v115;
        if ((*(v114 + 88))(v87, v115) == enum case for ShelfBackground.color(_:))
        {
          (*(v90 + 96))(v87, v89);

          v91 = *(sub_10000A5D4(&unk_100950670) + 48);
          v92 = sub_1007659CC();
          (*(*(v92 - 8) + 8))(v87 + v91, v92);
          v93 = objc_opt_self();
          v94 = [v93 fractionalWidthDimension:1.0];
          v95 = [v93 absoluteDimension:2000.0];
          v96 = [objc_opt_self() sizeWithWidthDimension:v94 heightDimension:v95];

          v97 = sub_10076FF6C();
          v98 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v96 elementKind:v97 alignment:5 absoluteOffset:{0.0, 2000.0}];

          [v98 setExtendsBoundary:0];
          v99 = v98;
          sub_10077019C();
          if (*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

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

double sub_1002B8890@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_isaMask & *v3;
  type metadata accessor for InfiniteScrollFooterView();
  if (sub_1007708EC() == a1 && v8 == a2)
  {

    goto LABEL_11;
  }

  v10 = sub_10077167C();

  if (v10)
  {
LABEL_11:

    sub_1007708FC();
    *(a3 + 24) = sub_10000A5D4(&qword_100950658);
    *(a3 + 32) = sub_100071820(&unk_100950660, &qword_100950658);
    sub_10000DB7C(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007D7F70 == a2 || (sub_10077167C() & 1) != 0)
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
    *(a3 + 24) = sub_10000A5D4(&qword_100950640);
    *(a3 + 32) = sub_100071820(&qword_100950648, &qword_100950640);
    sub_10000DB7C(a3);
    sub_100016F40(0, &qword_100950650);
    swift_bridgeObjectRetain_n();
LABEL_12:
    sub_10076A3BC();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1002B8CA0()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & v2;
  v5 = sub_10000A5D4(&qword_100950608);
  __chkstk_darwin(v5 - 8);
  v47 = v33 - v6;
  v7 = sub_10000A5D4(&unk_100950610);
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
  v40 = sub_100765D9C();
  v10 = sub_10076F76C();
  v42 = *(v10 - 8);
  v43 = v10;
  __chkstk_darwin(v10);
  v41 = v33 - v11;
  v12 = sub_10000A5D4(&unk_100950568);
  v13 = *(v12 - 8);
  v48 = v12;
  v49 = v13;
  __chkstk_darwin(v12);
  v39 = v33 - v14;
  v15 = sub_10000A5D4(&qword_100946598);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v33 - v17;
  v33[1] = *(v1 + qword_10099E360);
  sub_100765DDC();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1002C17A0;
  *(v19 + 24) = 0;
  sub_10000A5D4(&unk_100950620);
  *&v20 = v9;
  *(&v20 + 1) = *v35;
  *v50 = v20;
  *&v50[16] = v34;
  v51 = v38;
  v52 = v37;
  v53 = v36;
  type metadata accessor for BaseDiffableShelfViewController();
  v38 = &protocol conformance descriptor for SyncEvent<A>;
  sub_100071820(&qword_1009465A0, &unk_100950620);
  sub_10076F45C();
  sub_10076F46C();

  sub_10000CD74(v50);
  (*(v16 + 8))(v18, v15);
  sub_100765DEC();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002C1804;
  *(v21 + 24) = 0;
  v22 = sub_10000A5D4(&qword_100950578);
  v23 = sub_100071820(&qword_100950580, &qword_100950578);
  sub_10076F45C();
  v24 = v39;
  v36 = v22;
  v37 = v23;
  sub_10076F46C();

  sub_10000CD74(v50);
  (*(v49 + 8))(v24, v48);
  sub_10076847C();
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002C1868;
  *(v25 + 24) = 0;
  sub_10076FE1C();
  swift_getWitnessTable();
  sub_10076F45C();
  v26 = v41;
  sub_10076F46C();

  sub_10000CD74(v50);
  (*(v42 + 8))(v26, v43);
  sub_100765E4C();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1002C18CC;
  *(v27 + 24) = 0;
  sub_10000A5D4(&qword_100950630);
  sub_100071820(&qword_100950638, &qword_100950630);
  sub_10076F45C();
  v28 = v44;
  sub_10076F46C();

  sub_10000CD74(v50);
  (*(v45 + 8))(v28, v46);
  if (*(v1 + qword_1009503D0))
  {
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1002C1958;
    *(v29 + 24) = 0;

    sub_10076F45C();
    v30 = v47;
    sub_10076F46C();

    sub_10000CD74(v50);
    v31 = 0;
  }

  else
  {
    v31 = 1;
    v30 = v47;
  }

  (*(v49 + 56))(v30, v31, 1, v48);
  return sub_10000CFBC(v30, &qword_100950608);
}

void sub_1002B9514(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v28 = sub_10000A5D4(&qword_100950600);
  v5 = *(v28 - 8);
  __chkstk_darwin(v28);
  v7 = &v27 - v6;
  v8 = sub_10000A5D4(&qword_10094B618);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_10000A5D4(&qword_100950560);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v10, a1, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1002B7528(v10);
  sub_10000CFBC(v10, &qword_10094B618);
  v13 = sub_100761BAC();
  v14 = qword_1009503C8;
  if (v13)
  {
    swift_beginAccess();
    v15 = *&v2[v14];
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    sub_100761B9C();
    sub_10076998C();
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
    sub_100761B9C();
    sub_100761BBC();
    sub_1007699FC();
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
  sub_10076B31C();
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
    sub_10076666C();
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

  sub_10076A6CC();
  if (sub_100761B8C())
  {
    sub_100760C1C();
  }
}

uint64_t sub_1002B9960(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_100016E2C(a2, v5, &unk_1009434C0);

  sub_1002BA104(v2, v5);
  return sub_10000CFBC(&v4, &unk_1009505A0);
}

id sub_1002B99E0()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];

    type metadata accessor for BaseDiffableShelfViewController();
    swift_getWitnessTable();
    return sub_10076A6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002B9AF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28[1] = a1;
  v28[0] = swift_isaMask & *v2;
  v5 = sub_10000A5D4(&unk_1009428D0);
  __chkstk_darwin(v5 - 8);
  v7 = v28 - v6;
  v8 = sub_10076341C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v33 = v28 - v13;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(sub_10075E11C() - 8);
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
      sub_1002BEDBC();
      if ((*v16)(v7, 1, v8) == 1)
      {
        sub_10000CFBC(v7, &unk_1009428D0);
      }

      else
      {
        v20 = *v17;
        v21 = v33;
        (*v17)(v33, v7, v8);
        v20(v11, v21, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10049CF18(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_10049CF18(v22 > 1, v23 + 1, 1, v19);
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
  sub_10076A6AC();
  swift_getObjectType();
  sub_1007686BC();

  return swift_unknownObjectRelease();
}