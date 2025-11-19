uint64_t sub_1005FBEE0()
{
  if (qword_1009414D8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR___RootViewController_rootViewController), v3 = v2, swift_unknownObjectRelease(), v2))
  {
    v4 = [v3 supportedInterfaceOrientations];

    return v4;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      return 30;
    }

    else
    {
      return 2;
    }
  }
}

void sub_1005FBFCC(void *a1)
{
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v1 selector:"popWithCard:" object:a1];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v15 = sub_10030B6C8;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10009AEDC;
  v14 = &unk_10089C898;
  v5 = _Block_copy(&v11);
  v6 = a1;

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v15 = sub_1005FD198;
  v16 = v7;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000513F0;
  v14 = &unk_10089C8E8;
  v8 = _Block_copy(&v11);
  v9 = v6;
  v10 = v1;

  [v3 animateWithDuration:v5 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v5);
}

void *sub_1005FC190(int a1, id a2, uint64_t a3)
{
  [a2 removeFromSuperview];
  result = *(a3 + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView);
  if (!result)
  {
    goto LABEL_15;
  }

  v5 = [result arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0);
  v6 = sub_1007701BC();

  if (v6 >> 62)
  {
    v7 = sub_10077158C();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

void sub_1005FC328()
{
  v30 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView;
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = [v2 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0);
  v4 = sub_1007701BC();

  if (v4 >> 62)
  {
LABEL_25:
    v5 = sub_10077158C();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v5, 1))
  {
    __break(1u);
    goto LABEL_27;
  }

  v0 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards] < v5 - 1)
  {
    v6 = *&v1[v30];
    if (!v6)
    {
LABEL_33:
      __break(1u);
      return;
    }

    v7 = [v6 arrangedSubviews];
    v8 = sub_1007701BC();

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_9;
    }

LABEL_27:
    v9 = sub_10077158C();
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
            v18 = sub_1007701BC();

            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = sub_10077149C();
            }

            else
            {
              if (v16 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
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
            v35 = sub_1005FD998;
            v36 = v22;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_10009AEDC;
            v34 = &unk_10089CA00;
            v23 = _Block_copy(&aBlock);
            v24 = v20;

            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v1;
            v35 = sub_1005FD9B8;
            v36 = v25;
            aBlock = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_1000513F0;
            v34 = &unk_10089CA50;
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

char *sub_1005FC6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CardView();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [*&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tintView] setBackgroundColor:a3];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 2) = v10;
  *(v11 + 3) = v9;
  *(v11 + 4) = a4;
  *(v11 + 5) = a5;
  v12 = &v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction];
  v13 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_tapAction];
  *v12 = sub_1005FD86C;
  v12[1] = v11;

  sub_10001CE50(a4);
  sub_1000167E0(v13);

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = objc_opt_self();
  sub_100016F40(0, &qword_100944E30);
  v16 = sub_10077072C();
  v17 = [v15 preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v16];

  [v14 setFont:v17];
  [v14 setNumberOfLines:5];
  [v14 setLineBreakMode:0];
  v18 = sub_10076FF6C();
  [v14 setText:v18];

  v19 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view;
  v20 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF848CardView_view];
  v21 = v14;
  if (v20)
  {
    [v20 removeFromSuperview];
    v20 = *&v8[v19];
  }

  *&v8[v19] = v14;
  v22 = v14;

  sub_1005FB5C0();
  return v8;
}

void sub_1005FC978(uint64_t a1, uint64_t a2, void (*a3)(void))
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
      sub_1005FBFCC(v5);
    }

    if (a3)
    {
      a3();
    }
  }
}

void sub_1005FCA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView;
  v9 = *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
  if (!v9)
  {
    goto LABEL_14;
  }

  v15 = [v9 arrangedSubviews];
  sub_100016F40(0, &qword_1009441F0);
  v16 = sub_1007701BC();

  if (v16 >> 62)
  {
    v17 = sub_10077158C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
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

  v21 = sub_1005FC6EC(a1, a2, a3, a4, a5);
  [v21 setHidden:1];
  v22 = *&v6[v8];
  if (v22)
  {
    [v22 addArrangedSubview:v21];
    sub_1005FC328();
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v21;
    v35 = sub_1005FD728;
    v36 = v24;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10009AEDC;
    v34 = &unk_10089C960;
    v25 = _Block_copy(&v31);
    v26 = v21;

    v27 = swift_allocObject();
    *(v27 + 16) = a6;
    *(v27 + 24) = v6;
    *(v27 + 32) = v26;
    v35 = sub_1005FD77C;
    v36 = v27;
    v31 = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1000513F0;
    v34 = &unk_10089C9B0;
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

id sub_1005FCD04(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards] = 3;
  if (a2)
  {
    v7 = sub_10076FF6C();
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

id sub_1005FCE34(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_maximumNumberOfCards] = 3;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1005FCF70()
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
          v19 = *&v18[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_cardStackView];
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

        v21 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8422StatusBarOverlayWindow_interactionView];
        *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8422StatusBarOverlayWindow_interactionView] = v19;
      }
    }

    v22 = *(v0 + 24);
    if (v22)
    {
      *(v22 + OBJC_IVAR____TtC20ProductPageExtensionP33_9B20F844157AB3EC0D875BF73E8AAF8423CardStackViewController_delegate + 8) = &off_10089C858;

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1005FD148()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005FD180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1005FD1A0(uint64_t a1)
{
  v2 = sub_10076F1FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  if (qword_1009414D8 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = *(Strong + OBJC_IVAR___RootViewController_rootViewController), v7 = v6, swift_unknownObjectRelease(), v6))
  {
    sub_10076F1DC();
    sub_10076F1EC();
    v8 = sub_10076FF6C();

    v9 = sub_10076FF6C();

    v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
    v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v12 = swift_allocObject();
    (*(v3 + 32))(v12 + v11, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
    v13 = sub_10076FF6C();
    aBlock[4] = sub_1005FD900;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1006C1A98;
    aBlock[3] = &unk_10089CB18;
    v14 = _Block_copy(aBlock);

    v15 = objc_opt_self();
    v16 = [v15 actionWithTitle:v13 style:0 handler:v14];
    _Block_release(v14);

    [v10 addAction:v16];
    v17 = sub_10076FF6C();
    v18 = [v15 actionWithTitle:v17 style:0 handler:0];

    [v10 addAction:v18];
    [v7 presentViewController:v10 animated:1 completion:0];
  }

  else
  {
    if (qword_1009412D8 != -1)
    {
      swift_once();
    }

    v19 = sub_10076FD4C();
    sub_10000A61C(v19, qword_1009A25D0);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBDC();
  }
}

void sub_1005FD634()
{
  v0 = [objc_opt_self() generalPasteboard];
  sub_10076F1CC();
  v1 = sub_10076FF6C();

  [v0 setString:v1];
}

void sub_1005FD6C8()
{
  v1 = *(sub_10076F1FC() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1005FD1A0(v2);
}

uint64_t sub_1005FD73C()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_1005FD77C()
{
  if (*(v0 + 16) >= 0.0)
  {
    return [*(v0 + 24) performSelector:"popWithCard:" withObject:*(v0 + 32) afterDelay:?];
  }

  return result;
}

uint64_t sub_1005FD7A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005FD7E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005FD81C()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1005FD878()
{
  v1 = sub_10076F1FC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1005FD900()
{
  sub_10076F1FC();

  sub_1005FD634();
}

uint64_t sub_1005FDB74()
{
  v1 = v0;
  v2 = sub_100761D4C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004CCA80();
  sub_10076C7FC();
  sub_1007646CC();
  if (swift_dynamicCastClass())
  {
    v6 = sub_1007646BC();
    if (v6 >> 62)
    {
      goto LABEL_29;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      do
      {
        sub_100760C4C();
        sub_10076F5CC();
        v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32GridTodayBrickCollectionViewCell_grid];
        v20[2] = v26;
        v21 = v8;
        sub_1007646AC();
        v9 = (*(v3 + 88))(v5, v2);
        if (v9 != enum case for ArtworkGridType.small(_:))
        {
          if (v9 == enum case for ArtworkGridType.large(_:))
          {
            v10 = 1;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.extraLarge(_:))
          {
            v10 = 2;
            goto LABEL_12;
          }

          if (v9 == enum case for ArtworkGridType.mixed(_:))
          {
            v10 = 3;
            goto LABEL_12;
          }

LABEL_27:
          v17 = *(v3 + 8);
          v3 += 8;
          v17(v5, v2);
        }

        v10 = 0;
LABEL_12:
        v20[1] = OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType;
        v11 = v21;
        v21[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_gridType] = v10;
        sub_10070ED18();
        [v11 setNeedsLayout];
        v12 = sub_1007646BC();
        if (v12 >> 62)
        {
          v1 = sub_10077158C();
        }

        else
        {
          v1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v21[OBJC_IVAR____TtC20ProductPageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v1;
        sub_10070EEE8();
        v13 = sub_1007646BC();
        v14 = v13;
        if (v13 >> 62)
        {
          v2 = sub_10077158C();
          if (!v2)
          {
LABEL_35:
          }
        }

        else
        {
          v2 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v2)
          {
            goto LABEL_35;
          }
        }

        v5 = 0;
        v22 = v14 & 0xFFFFFFFFFFFFFF8;
        v23 = v14 & 0xC000000000000001;
        v20[0] = v2;
        while (v23)
        {
          sub_10077149C();
          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (sub_10076BB9C())
          {
            v1 = v21;
            sub_10076BFCC();
            v25 = 0;
            memset(v24, 0, sizeof(v24));
            v3 = swift_allocObject();
            *(v3 + 16) = v1;
            *(v3 + 24) = v5;
            v16 = v1;
            sub_100760B7C();

            v2 = v20[0];

            sub_10002CBB4(v24);
          }

          else
          {
          }

          ++v5;
          if (v15 == v2)
          {
            goto LABEL_35;
          }
        }

        if (v5 < *(v22 + 16))
        {

          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        __break(1u);
LABEL_29:
        v18 = sub_10077158C();
      }

      while (v18);
    }
  }
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell()
{
  result = qword_100960768;
  if (!qword_100960768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005FE078()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1005FE174(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D39C();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v99._object = 0x80000001007E1440;
  v99._countAndFlagsBits = 0xD000000000000010;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v17 = sub_1007622EC(v99, v100);
  v19 = sub_1003B5290(v17, v18);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_1009402A0 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10099F488;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10099F4E0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10099F380;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_100940290 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10099F3D8;
  }

  else
  {
    if (qword_100940298 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10099F430;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_100375BC0(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_1003B52DC(&v95);

  *&v86 = a1;
  sub_10076B53C();
  v33 = v32;
  v34 = sub_100016F40(0, &qword_100942F00);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v84 = sub_10076D3DC();
  v35 = sub_10000A61C(v84, qword_10099F538);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = sub_100770B3C();

  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_10093F680;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_100016F40(0, &qword_10094D748);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_1005FF348(&qword_100943320, type metadata accessor for Key);
  v79 = v33;
  isa = sub_10076FE3C().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_1000FC5F4(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = sub_10076FF6C();
    v51 = sub_10076FE3C().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_100375C20(v92);
  }

  else
  {

    sub_100375C20(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = sub_10076C04C();
  v90 = v60;
  v61 = sub_1005FF348(&qword_100943230, &type metadata accessor for Feature);
  v91 = v61;
  v62 = sub_10000DB7C(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  sub_10076C90C();
  sub_10000CD74(v89);
  v65 = v88;
  sub_10076990C();
  sub_1000276DC(v59);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v66 = sub_10076D9AC();
  sub_10000A61C(v66, qword_10099F568);
  sub_10076D42C();
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v66, qword_10099F580);
  sub_10076D3FC();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  sub_10076B54C();
  if (v67)
  {
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v84, qword_10099F550);
    v90 = v60;
    v91 = v61;
    v68 = sub_10000DB7C(v89);
    v64(v68, v63, v60);
    sub_10076C90C();
    sub_10000CD74(v89);
    v69 = v88;
    sub_10076991C();

    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v66, qword_10099F598);
    sub_10076D42C();
    v65 = v69;
    v70 = v83;
    v71 = &off_100911000;
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v66, qword_10099F5B0);
    sub_10076D3FC();
  }

  else
  {
    v70 = v83;
    v71 = &off_100911000;
  }

  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    if ((sub_10076B52C() & 1) == 0)
    {
      [v65 v71[255]];
      [v65 v71[255]];
    }

    sub_10076D36C();
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v66, qword_10099F5C8);
    v72 = v75;
    sub_10076D17C();
    sub_10076D40C();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_1005FEF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_10076D39C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_quoteView];
  v16 = sub_10076B53C();
  sub_1003B2F6C(v16, v17);
  v18 = sub_10076B54C();
  sub_1003B36E0(v18, v19);
  v15[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_isFullWidthArtwork] = sub_10076B52C() & 1;
  sub_1003B3AD0();
  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076BEFC();
    sub_10076D3AC();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1004E9C90(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    sub_10076D36C();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1004E9C90(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC20ProductPageExtension9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC20ProductPageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}

uint64_t sub_1005FF348(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005FF390(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a3;
  v11 = a2;
  v13 = sub_10076D39C();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B75C();
  v7 = *(v6 + 16);
  v15 = v6 + 32;
  v12 = (v3 + 8);
  v16 = v6;

  v9 = 0;
  while (1)
  {
    if (v9 == v7)
    {
      v24 = 0;
      v9 = v7;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10000A570(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      return swift_bridgeObjectRelease_n();
    }

    sub_100012498(v20, v19);
    sub_10000A570(v19, v17);
    sub_10000A5D4(&qword_1009575A0);
    sub_10076B56C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    result = sub_10000CD74(v19);
    if (v18)
    {
      if (sub_10076B55C())
      {
        sub_10076BEFC();
        sub_10076BEFC();
        sub_10076D3AC();
        if ((sub_10076B52C() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        sub_10076D36C();
        sub_10076BFCC();
        sub_100760B9C();

        result = (*v12)(v5, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

id sub_1005FF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10075DB7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23URLActivityItemProvider_shareSheetData] = a1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23URLActivityItemProvider_artworkLoader] = a2;
  v12 = qword_1009412C8;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_100960890;

  sub_100740404(a3, v13);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23URLActivityItemProvider_excludedActivityTypes] = v14;
  sub_1007619DC();
  sub_10075DB1C(v15);
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  v18 = type metadata accessor for URLActivityItemProvider();
  v21.receiver = v4;
  v21.super_class = v18;
  v19 = objc_msgSendSuper2(&v21, "initWithPlaceholderItem:", v17);

  return v19;
}

void sub_1005FFA80(uint64_t *a1@<X8>)
{
  v3 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_10075DB7C();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v1 activityType];
  if (!v11)
  {
    a1[3] = v6;
    sub_10000DB7C(a1);
    sub_1007619DC();
    return;
  }

  v12 = v11;
  sub_10000A5D4(&unk_1009609A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = UIActivityTypeAirDrop;
  v14 = UIActivityTypeAirDrop;
  sub_100761A0C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_10000CFBC(v5, &unk_1009435D0);
  }

  else
  {
    v18[0] = *(v7 + 32);
    v15 = (v18[0])(v10, v5, v6);
    v19 = v12;
    __chkstk_darwin(v15);
    v18[-2] = &v19;
    v16 = sub_1001A3F60(sub_1001A5C84, &v18[-4], inited);

    if ((v16 & 1) == 0)
    {
      a1[3] = v6;
      v17 = sub_10000DB7C(a1);
      (v18[0])(v17, v10, v6);
      goto LABEL_9;
    }

    (*(v7 + 8))(v10, v6);
  }

  a1[3] = v6;
  sub_10000DB7C(a1);
  sub_1007619DC();
LABEL_9:
}

id sub_1005FFDA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for URLActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005FFF40()
{
  v1 = sub_10076BF6C();
  v120 = *(v1 - 1);
  v121 = v1;
  __chkstk_darwin(v1);
  v119 = &v112 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076B96C();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v115 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v5 - 8);
  v118 = &v112 - v6;
  v123 = sub_1007619EC();
  v7 = *(v123 - 1);
  __chkstk_darwin(v123);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v112 - v11;
  v13 = sub_10075DB7C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v114 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v112 - v17;
  v124 = [objc_allocWithZone(LPLinkMetadata) init];
  v122 = v0;
  sub_100761A0C();
  v19 = *(v14 + 48);
  if (v19(v12, 1, v13) == 1)
  {
    sub_1007619DC();
    v20 = v19(v12, 1, v13);
    v22 = v13;
    v23 = v14;
    if (v20 != 1)
    {
      sub_10000CFBC(v12, &unk_1009435D0);
    }
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v22 = v13;
    v23 = v14;
  }

  sub_10075DB1C(v21);
  v25 = v24;
  v28 = *(v23 + 8);
  v26 = (v23 + 8);
  v27 = v28;
  v28(v18, v22);
  v29 = v124;
  [v124 setURL:v25];

  sub_1007619FC();
  v30 = v123;
  v31 = (*(v7 + 88))(v9, v123);
  if (v31 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v7 + 96))(v9, v30);
    if (sub_10076835C())
    {
      v32 = sub_10076BE1C();
      if (v32)
      {
        v33 = v32;
        v34 = _sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v32);
        v35 = v118;
        if (v34)
        {
          v36 = v34;
          v37 = [objc_allocWithZone(LPImage) initWithPlatformImage:v34];

          v33 = v36;
        }

        else
        {
          v37 = 0;
        }
      }

      else
      {
        v37 = 0;
        v35 = v118;
      }

      sub_10076BEAC();
      v81 = sub_10076BEDC();
      (*(*(v81 - 8) + 56))(v35, 0, 1, v81);
      sub_10076BFAC();
      sub_10000CFBC(v35, &qword_100952D60);
      v82 = objc_allocWithZone(sub_100764ABC());
      v83 = sub_100764AAC();
      v84 = [objc_allocWithZone(LPImage) initWithItemProvider:v83 properties:0 placeholderImage:v37];
      [v29 setImage:v84];
    }

    sub_10076834C();
    v85 = sub_10076FF6C();

    [v29 setTitle:v85];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_10076836C();
    if (v87)
    {
LABEL_51:
      v88 = sub_10076FF6C();

LABEL_59:
      [v86 setSubtitle:v88];

      [v29 setSpecialization:v86];

      return v29;
    }

LABEL_58:
    v88 = 0;
    goto LABEL_59;
  }

  if (v31 != enum case for ShareSheetData.Metadata.product(_:))
  {
    if (v31 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v7 + 8))(v9, v30);
      return v29;
    }

    (*(v7 + 96))(v9, v30);
    if (sub_10075E15C())
    {
      v41 = sub_10076BE1C();
      if (v41)
      {
        v42 = v41;
        v43 = _sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v41);
        if (v43)
        {
          v44 = v43;
          v45 = [objc_allocWithZone(LPImage) initWithPlatformImage:v43];

          v42 = v44;
        }

        else
        {
          v45 = 0;
        }
      }

      else
      {
        v45 = 0;
      }

      sub_10076BFBC();
      v89 = objc_allocWithZone(sub_100764ABC());
      v90 = sub_100764AAC();
      v91 = [objc_allocWithZone(LPImage) initWithItemProvider:v90 properties:0 placeholderImage:v45];
      [v29 setImage:v91];
    }

    sub_10075E14C();
    v92 = sub_10076FF6C();

    [v29 setTitle:v92];

    v86 = [objc_allocWithZone(LPAppStoreStoryMetadata) init];
    sub_10075E16C();
    if (v93)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  (*(v7 + 96))(v9, v30);
  v38 = [objc_allocWithZone(LPiTunesMediaSoftwareMetadata) init];
  sub_1007683BC();
  if (v39)
  {
    v40 = sub_10076FF6C();
  }

  else
  {
    v40 = 0;
  }

  v47 = v116;
  v46 = v117;
  [v38 setStoreFrontIdentifier:v40];

  v48 = v38;
  v49 = v115;
  sub_1007683EC();
  sub_10076B92C();
  (*(v47 + 8))(v49, v46);
  v50 = sub_10076FF6C();

  [v48 setStoreIdentifier:v50];

  sub_1007683DC();
  v51 = sub_10076FF6C();

  [v48 setName:v51];

  sub_10076840C();
  if (v52)
  {
    v53 = sub_10076FF6C();
  }

  else
  {
    v53 = 0;
  }

  [v48 setSubtitle:v53];

  sub_10076841C();
  v112 = v27;
  if (v54)
  {
    v55 = sub_10076FF6C();
  }

  else
  {
    v55 = 0;
  }

  [v48 setGenre:{v55, v112}];

  sub_1007683CC();
  v56 = sub_10076BE1C();

  v57 = &_s11AppStoreKit5ShelfC11ContentTypeO13miniTodayCardyA2EmFWC_ptr;
  v118 = v26;
  v113 = v22;
  v123 = v48;
  if (v56)
  {
    v58 = _sSo7UIImageC20ProductPageExtensionE16singlePointImage5colorABSgSo7UIColorC_tFZ_0(v56);
    if (v58)
    {
      v59 = [objc_allocWithZone(LPImageProperties) init];
      sub_1007683CC();
      v60 = v119;
      sub_10076BF7C();

      v61 = sub_10076BF5C();
      v62 = v60;
      v57 = &_s11AppStoreKit5ShelfC11ContentTypeO13miniTodayCardyA2EmFWC_ptr;
      (v120[1].super.isa)(v62, v121);
      [v59 setType:v61];
      v63 = [objc_allocWithZone(LPImage) initWithPlatformImage:v58 properties:v59];

      v58 = v63;
      v56 = v59;
    }
  }

  else
  {
    v58 = 0;
  }

  sub_1007683CC();
  sub_10076BFCC();

  v64 = sub_100764ABC();
  v65 = objc_allocWithZone(v64);
  v66 = sub_100764AAC();
  v67 = [objc_allocWithZone(v57[453]) init];
  sub_1007683CC();
  v68 = v119;
  sub_10076BF7C();

  v69 = sub_10076BF5C();
  (v120[1].super.isa)(v68, v121);
  [v67 setType:v69];
  v70 = objc_allocWithZone(LPImage);
  v121 = v67;
  v122 = v66;
  v71 = [v70 initWithItemProvider:v66 properties:v67 placeholderImage:v58];
  v72 = v123;
  [v123 setIcon:v71];

  result = sub_1007683AC();
  if (!result)
  {
    isa = 0;
    v29 = v124;
    goto LABEL_66;
  }

  v74 = result & 0xFFFFFFFFFFFFFF8;
  v29 = v124;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_61:

    isa = 0;
    goto LABEL_66;
  }

  v94 = result;
  v95 = sub_10077158C();
  result = v94;
  if (!v95)
  {
    goto LABEL_61;
  }

LABEL_35:
  if ((result & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*(v74 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v120 = v58;

  v75 = sub_1007601DC();

  if (!(v75 >> 62))
  {
    v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v76)
    {
      goto LABEL_40;
    }

LABEL_64:

LABEL_65:
    sub_100601198();
    isa = sub_1007701AC().super.isa;

    v58 = v120;
LABEL_66:
    [v72 setScreenshots:isa];

    [v72 setIsMessagesOnlyApp:sub_10076837C() & 1];
    if (sub_10076839C())
    {

      sub_10076BFCC();
      v96 = objc_allocWithZone(v64);
      v97 = sub_100764AAC();
      v98 = v58;
      v99 = [objc_allocWithZone(LPImage) initWithItemProvider:v97 properties:0 placeholderImage:0];
      [v72 setMessagesAppIcon:v99];

      v58 = v98;
    }

    result = sub_1007683FC();
    if (!result)
    {
      goto LABEL_77;
    }

    v100 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      v109 = result;
      v110 = sub_10077158C();
      result = v109;
      v101 = v113;
      if (v110)
      {
        goto LABEL_71;
      }
    }

    else
    {
      v101 = v113;
      if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_71:
        if ((result & 0xC000000000000001) != 0)
        {
          v102 = v58;
          sub_10077149C();
          goto LABEL_74;
        }

        if (*(v100 + 16))
        {
          v102 = v58;

LABEL_74:

          v103 = v114;
          sub_10076B85C();
          v104 = objc_allocWithZone(LPVideo);
          sub_10075DB1C(v105);
          v107 = v106;
          v108 = [v104 initWithStreamingURL:v106 hasAudio:0];

          v112(v103, v101);
          [v72 setPreviewVideo:v108];

          v58 = v102;
LABEL_77:
          v111 = v72;
          [v29 setSpecialization:v111];

          return v29;
        }

        goto LABEL_81;
      }
    }

    goto LABEL_77;
  }

  v76 = sub_10077158C();
  if (!v76)
  {
    goto LABEL_64;
  }

LABEL_40:
  v125 = _swiftEmptyArrayStorage;
  result = sub_1007714EC();
  if ((v76 & 0x8000000000000000) == 0)
  {
    v77 = 0;
    do
    {
      if ((v75 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      ++v77;

      sub_10076BFCC();
      v78 = objc_allocWithZone(v64);
      v79 = sub_100764AAC();
      [objc_allocWithZone(LPImage) initWithItemProvider:v79 properties:0 placeholderImage:0];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
    }

    while (v76 != v77);

    v29 = v124;
    v72 = v123;
    goto LABEL_65;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_100600FDC()
{
  v0 = sub_1007619EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007619FC();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for ShareSheetData.Metadata.article(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = sub_10076834C();
  }

  else if (v4 == enum case for ShareSheetData.Metadata.product(_:))
  {
    (*(v1 + 96))(v3, v0);
    v5 = sub_1007683DC();
  }

  else
  {
    if (v4 != enum case for ShareSheetData.Metadata.appEvent(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    (*(v1 + 96))(v3, v0);
    v5 = sub_10075E14C();
  }

  v6 = v5;

  return v6;
}

unint64_t sub_100601198()
{
  result = qword_100960998;
  if (!qword_100960998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100960998);
  }

  return result;
}

uint64_t type metadata accessor for MediaPageHeaderCollectionViewHostingCell()
{
  result = qword_1009609D8;
  if (!qword_1009609D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10060131C()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for Shelf.ContentType.mediaPageHeader(_:), v0, v2);
  v5 = COERCE_DOUBLE(sub_10076656C());
  v7 = v6;
  (*(v1 + 8))(v4, v0);
  result = v5;
  if (v7)
  {
    return 0.0;
  }

  return result;
}

double sub_100601424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_1007637FC();
  v9 = v8;
  v10 = sub_10076381C();
  v11 = sub_10076380C();
  swift_getObjectType();
  v12 = sub_1003E7634(v7, v9, v10, v11, a6);

  return v12;
}

id sub_100601578()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_titleLabel];
  sub_1007637FC();
  v3 = sub_10076FF6C();

  [v2 setText:v3];

  sub_10076381C();
  v4 = sub_1007637EC();
  v5 = sub_10076082C();
  v6 = sub_100107BF4(v5, sub_1000368B8);

  v7 = sub_10076081C();
  sub_10050C274(v7, v4, v6);

  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView];
  v9 = sub_1007637DC();
  [v8 setTintColor:v9];

  *&v1[OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon] = sub_10076380C();

  return [v1 setNeedsLayout];
}

void sub_100601710()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_icon);
  if (v1)
  {

    if (sub_10076BDDC())
    {
      v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension21ProductCapabilityCell_iconImageView);
      if (sub_10076BE0C())
      {
        v3 = sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        v3 = sub_1005A6008(v1, 0);
      }

      else
      {
        v3 = 0;
      }

      [v2 setImage:v3];
    }

    else
    {
      v4 = qword_1009403D8;

      if (v4 != -1)
      {
        swift_once();
      }

      v5 = sub_10076044C();
      if (v5)
      {
        v6 = v5;
        [v5 size];
      }

      sub_10076BFBC();
      sub_10007E008();
      sub_100601928(&qword_100952B10, sub_10007E008);
      sub_100760B8C();
    }
  }
}

uint64_t sub_100601928(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1006019D4(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for SearchResultsContainerViewController();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_100760BDC();
}

void sub_100601A54(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for SearchResultsContainerViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100760BDC();
}

uint64_t sub_100601ACC(uint64_t a1)
{
  v3 = sub_10075DD7C();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  v60 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076A13C();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v6 - 8);
  v65 = &v40 - v7;
  v8 = sub_100760A6C();
  __chkstk_darwin(v8 - 8);
  v64 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100954460);
  __chkstk_darwin(v10 - 8);
  v63 = &v40 - v11;
  v12 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
  v13 = swift_allocObject();
  sub_10076CCCC();
  *(v13 + 16) = sub_10076CCBC();
  v69 = v12;
  v70 = sub_100602B1C(&unk_100958CF0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter);
  v67 = v13;
  sub_10076A14C();
  swift_allocObject();
  v14 = sub_10076A12C();
  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_objectGraph);
  v56 = v1;
  sub_100763EEC();
  swift_allocObject();
  swift_retain_n();
  v16 = sub_100763ECC();
  sub_10000A5D4(&qword_10094F420);
  sub_10076F1BC();
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100784500;
  v67 = v14;
  v59 = v14;

  sub_10076F19C();
  v67 = v16;
  v58 = v16;

  sub_10076F19C();
  sub_100765FDC();
  sub_10076F64C();
  sub_10076FC1C();
  v55 = v66;
  v54 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_facetsPresenter);
  sub_10000A5D4(&unk_100960AB8);

  sub_10076F63C();
  v53 = v67;
  v52 = v68;
  v51 = sub_1007609FC();
  v50 = v17;
  sub_100760A1C();
  sub_100760A2C();
  v49 = sub_100760A3C();
  v48 = v18;
  sub_1007609BC();
  v47 = sub_1007609EC();
  v46 = sub_1007609CC();
  v45 = sub_1007609DC();
  v44 = v19;
  sub_10076099C();
  sub_10076098C();
  sub_10000A5D4(&unk_10094A8C0);
  sub_10076FC1C();
  sub_10076A39C();
  sub_10076F63C();
  sub_10076A60C();
  swift_allocObject();
  v20 = sub_10076A5BC();
  v21 = sub_100602B1C(&qword_100960AC8, &type metadata accessor for SearchResultsDiffablePagePresenter);
  swift_retain_n();
  v22 = sub_1006C7080(v15, v20, v21, v57, 0x6552686372616573, 0xED000073746C7573);

  v23 = objc_allocWithZone(type metadata accessor for SearchResultsDiffablePageViewController());

  v24 = a1;
  v25 = v56;
  v26 = sub_1000D0918(v20, v24, v22);
  v27 = v25 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController;
  v28 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
  if (v28)
  {
    v29 = v42;
    v30 = v41;
    v31 = v43;
    (*(v42 + 104))(v41, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v43);
    v32 = v28;
    sub_10076A0FC();
    (*(v29 + 8))(v30, v31);
  }

  sub_100766B2C();
  v33 = v60;
  sub_10075DD6C();
  sub_10075DD4C();
  (*(v61 + 8))(v33, v62);
  sub_100766B1C();
  sub_10076F69C();
  v34 = &off_100888030;
  if (!v26)
  {
    v34 = 0;
  }

  v35 = *v27;
  *v27 = v26;
  *(v27 + 8) = v34;
  v36 = v26;

  if (v26)
  {
    v37 = v25 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate;
    swift_unknownObjectWeakLoadStrong();
    v38 = *(v37 + 8);

    *&v36[qword_10099CDD0 + 8] = v38;
    swift_unknownObjectWeakAssign();

    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

BOOL sub_100602340(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) == 2;
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) != 2)
  {
    return 0;
  }

  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
  if (!v3)
  {
    return 0;
  }

  v6 = v3;
  v7 = sub_10076A5FC();
  if (v8)
  {
    if (v7 == a1 && v8 == a2)
    {

      return 1;
    }

    else
    {
      v10 = sub_10077167C();

      return v10 & 1;
    }
  }

  else
  {

    return 0;
  }
}

void sub_100602424(void *a1)
{
  v2 = v1;
  v4 = sub_10076A13C();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v1[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController];
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController];
  if (!a1)
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  if (v10)
  {
    v11 = v10 == a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    if (!v10)
    {
      v12 = 0;
LABEL_10:
      *v9 = 0;
      v9[1] = 0;

      goto LABEL_11;
    }

LABEL_9:
    (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willBeDiscarded(_:), v4, v6);
    v13 = v10;
    sub_10076A0FC();
    (*(v5 + 8))(v8, v4);

    v12 = *v9;
    goto LABEL_10;
  }

LABEL_11:
  v14 = OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController];
  if (v15)
  {
    v16 = v15;
    [v16 willMoveToParentViewController:0];
    v17 = [v16 view];
    if (!v17)
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v18 = v17;
    [v17 removeFromSuperview];

    [v16 removeFromParentViewController];
  }

  if (!a1)
  {
LABEL_20:
    v35 = *&v2[v14];
    *&v2[v14] = a1;
    v36 = a1;

    return;
  }

  v19 = a1;
  [v2 addChildViewController:v19];
  v20 = [v19 view];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v2 view];
  if (!v22)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  [v21 setFrame:{v25, v27, v29, v31}];
  v32 = [v2 view];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = v32;
  v34 = [v19 view];

  if (v34)
  {
    [v33 addSubview:v34];

    [v19 didMoveToParentViewController:v2];
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

id sub_100602758()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultsContainerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100602880()
{
  result = qword_100960AA8;
  if (!qword_100960AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960AA8);
  }

  return result;
}

id sub_1006028D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController] = 0;
  v7 = &v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController];
  *v7 = 0;
  v7[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_objectGraph] = a3;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_artworkLoader] = v15;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_facetsPresenter] = a1;
  sub_100769A9C();

  sub_10076F63C();
  sub_10076599C();
  swift_allocObject();
  v8 = sub_10076594C();
  v9 = sub_100602B1C(&qword_100960AB0, &type metadata accessor for SearchHintsPresenter);

  v10 = sub_1006C7080(a3, v8, v9, _swiftEmptyArrayStorage, 0x6948686372616573, 0xEB0000000073746ELL);
  v11 = objc_allocWithZone(type metadata accessor for SearchHintsViewController());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchHintsViewController] = sub_100602E54(v8, v10);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for SearchResultsContainerViewController();
  v12 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);

  return v12;
}

uint64_t sub_100602B1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100602B64(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection;
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection);
  if (v5 != a1)
  {
    v6 = v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 8);
      ObjectType = swift_getObjectType();
      (*(v7 + 8))(a1, ObjectType, v7);
      swift_unknownObjectRelease();
    }

    *(v1 + v4) = a1;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      v19 = a1;
      goto LABEL_15;
    }

    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchHintsViewController);
    goto LABEL_13;
  }

  if (a1 == 2)
  {
    v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = v9;
    v10 = v9;
    goto LABEL_15;
  }

  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController);
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_14:
  v19 = 0;
LABEL_15:
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v11)
  {
    v12 = v19;
    if (v19)
    {
      sub_100602E08();
      v13 = v11;
      v14 = v19;
      v15 = sub_100770EEC();

      v12 = v19;
      if (v15)
      {
LABEL_18:
        if (v5 == a1)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }
  }

  else
  {
    v12 = v19;
    if (!v19)
    {
      goto LABEL_18;
    }
  }

  sub_100602424(v12);
LABEL_22:
  v16 = v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v16 + 8);
    v18 = swift_getObjectType();
    (*(v17 + 16))(*(v2 + v4), v5, v18, v17);
    swift_unknownObjectRelease();
  }

LABEL_24:
}

void sub_100602D48()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController) = 0;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100602E08()
{
  result = qword_100960AD0;
  if (!qword_100960AD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100960AD0);
  }

  return result;
}

id sub_100602E54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_flowLayout;
  v7 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v7 setSectionInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v7 setMinimumInteritemSpacing:0.0];
  [v7 setMinimumLineSpacing:0.0];
  [v7 setScrollDirection:0];
  *(v3 + v6) = v7;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate) = 0;
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_presenter) = a1;
  sub_10076615C();

  sub_10076F63C();
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_impressionsCalculator) = v12;
  v8 = *(v3 + v6);

  v9 = sub_10007689C(v8, a2);

  sub_100603E60(&qword_100960B40);
  v10 = v9;
  sub_10076598C();

  return v10;
}

id sub_100602FF4()
{
  v1 = v0;
  v2 = sub_10076F9AC();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchHintsViewController();
  v52.receiver = v0;
  v52.super_class = v5;
  objc_msgSendSuper2(&v52, "viewDidLoad");
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_presenter];
  v7 = type metadata accessor for SearchHintsCollectionViewDataSource();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC20ProductPageExtension35SearchHintsCollectionViewDataSource_presenter] = v6;
  v51.receiver = v8;
  v51.super_class = v7;

  v9 = objc_msgSendSuper2(&v51, "init");
  v10 = OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource;
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDataSource] = v9;

  v12 = [v1 snapshotPageTraitEnvironment];
  v13 = type metadata accessor for SearchHintsCollectionViewDelegate();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = 0;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_presenter] = v6;

  v15 = [v12 snapshotPageTraitEnvironment];
  *&v14[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v15;
  v50.receiver = v14;
  v50.super_class = v13;
  v16 = objc_msgSendSuper2(&v50, "init");
  swift_unknownObjectRelease();
  v17 = OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate] = v16;
  v19 = v16;

  *&v19[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_impressionsCalculator] = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_impressionsCalculator];

  v20 = *&v1[v17];
  v21 = v20;
  sub_1000743FC(v20);
  v22 = *&v1[v10];
  v23 = v22;
  sub_100074410(v22);
  v24 = [v1 collectionView];
  if (v24)
  {
    v25 = v24;
    [v24 setKeyboardDismissMode:1];
  }

  v26 = [v1 collectionView];
  if (v26)
  {
    v27 = v26;
    sub_1000325F0();
    v28 = sub_100770D2C();
    [v27 setBackgroundColor:v28];
  }

  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    [v29 setAlwaysBounceVertical:1];
  }

  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setAllowsSelection:1];
  }

  v33 = [v1 collectionView];
  if (v33)
  {
    v34 = v33;
    [v33 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v35 = [v1 collectionView];
  if (v35)
  {
    v36 = v35;
    type metadata accessor for SearchHintCollectionViewCell();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1007708FC();
    v38 = sub_10076FF6C();

    [v36 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v38];
  }

  result = [v1 collectionView];
  if (result)
  {
    v40 = result;
    memset(v49, 0, sizeof(v49));
    sub_10076F96C();
    sub_10000CFBC(v49, &unk_1009434C0);
    sub_100770B9C();

    result = (*(v47 + 8))(v4, v48);
  }

  v41 = *&v1[v17];
  if (v41)
  {
    v42 = v41;
    v43 = [v1 snapshotPageTraitEnvironment];
    v44 = [v1 collectionView];
    v45 = [v43 snapshotPageTraitEnvironment];
    *&v42[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v45;
    swift_unknownObjectRelease();
    if (v44)
    {
      v46 = [v44 collectionViewLayout];
      [v46 invalidateLayout];
    }

    [v44 reloadData];

    swift_unknownObjectRelease();
    return sub_100760C9C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100603540(void *a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v23, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v8)
  {
    v9 = v8;
    v10 = [v4 traitCollection];
    v11 = type metadata accessor for SnapshotPageTraitEnvironment();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
    *v13 = a2;
    v13[1] = a3;
    *&v12[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v10;
    v22.receiver = v12;
    v22.super_class = v11;
    v14 = objc_msgSendSuper2(&v22, "init");
    v15 = [v4 collectionView];
    v16 = [v14 snapshotPageTraitEnvironment];
    *&v9[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      v17 = [v15 collectionViewLayout];
      [v17 invalidateLayout];
    }

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v21[4] = sub_100603ED8;
    v21[5] = v18;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1006F5994;
    v21[3] = &unk_10089CD68;
    v19 = _Block_copy(v21);
    v20 = v15;

    [a1 animateAlongsideTransition:v19 completion:0];
    _Block_release(v19);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006037EC(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SearchHintsViewController();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_searchHintsCollectionViewDelegate];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 snapshotPageTraitEnvironment];
    v6 = [v1 collectionView];
    v7 = [v5 snapshotPageTraitEnvironment];
    *&v4[OBJC_IVAR____TtC20ProductPageExtension33SearchHintsCollectionViewDelegate_pageTraits] = v7;
    swift_unknownObjectRelease();
    if (v6)
    {
      v8 = [v6 collectionViewLayout];
      [v8 invalidateLayout];
    }

    [v6 reloadData];

    swift_unknownObjectRelease();
    v9 = [v1 collectionView];
    [v9 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1006039A0()
{
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_impressionsCalculator])
  {
    sub_10076611C();
  }

  sub_10000A5D4(&qword_1009552D8);
  sub_10076F63C();
  if (v2)
  {
    swift_getObjectType();
    sub_10076F88C();
    swift_unknownObjectRelease();
  }

  v1 = [v0 collectionView];
  [v1 reloadData];
}

uint64_t sub_100603A64()
{
}

id sub_100603AD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_100603BA8()
{
  v1 = [v0 parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_100603BF0()
{
  sub_10000A5D4(&qword_1009552D8);
  sub_10076F63C();
  return v1;
}

uint64_t sub_100603C4C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension25SearchHintsViewController_presenter);
  a1[3] = sub_10076599C();
  a1[4] = &protocol witness table for SearchHintsPresenter;
  *a1 = v3;
}

uint64_t sub_100603CA8(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000CFBC(v5, &unk_100943200);
  }

  sub_100263BF0(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_100603E60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHintsViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100603EA0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100603EE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void static AppEventCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();

  sub_1006076C4(a1, a2, a3, a4, ObjectType);
}

uint64_t AppEventCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:notifyMePadding:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_100012498(a1, a8);
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v16 = v15[5];
  v17 = sub_10076D39C();
  (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  sub_100012498(a3, a8 + v15[6]);
  sub_100012498(a4, a8 + v15[7]);
  sub_100012498(a5, a8 + v15[8]);
  sub_100012498(a6, a8 + v15[9]);
  v18 = a8 + v15[10];

  return sub_100012498(a7, v18);
}

uint64_t AppEventCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v145 = a2;
  v142 = COERCE_DOUBLE(sub_100763ADC());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v139 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_10000CF78((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_10076D23C();
  sub_10000CF78((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_10076D23C();
  sub_10000CF78((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_10076D23C();
  sub_10000CF78(v7, v7[3]);
  sub_1000FF02C();
  sub_10076D40C();
  v146 = v19;
  v147 = *(v15 + 8);
  (*&v147)(v17, v14);
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v158.origin.x = 0.0;
  v158.origin.y = 0.0;
  v158.size.width = a5;
  v158.size.height = a6;
  CGRectGetWidth(v158);
  sub_10076D36C();
  Height = round(v21);
  v159.origin.x = 0.0;
  v159.origin.y = 0.0;
  v159.size.width = a5;
  v151 = a6;
  v159.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v159)) < 1.0)
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = a5;
    v160.size.height = v151;
    Height = CGRectGetHeight(v160);
  }

  v161.origin.x = 0.0;
  v161.origin.y = 0.0;
  v161.size.width = a5;
  v161.size.height = v151;
  Width = CGRectGetWidth(v161);
  sub_10000CF78((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100770A4C();
  sub_10076D23C();
  v162.origin.x = 0.0;
  v162.origin.y = 0.0;
  v162.size.width = Width;
  v162.size.height = Height;
  v24 = CGRectGetWidth(v162);
  sub_10000CF78((v6 + v18[9]), *(v6 + v18[9] + 24));
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v6 + v18[10], v156, &unk_10094DA00);
  if (v157)
  {
    sub_10000CF78(v156, v157);
    sub_10076D23C();
    sub_10000CD74(v156);
  }

  else
  {
    sub_10000CFBC(v156, &unk_10094DA00);
  }

  sub_100016E2C(v6 + v18[11], v156, &unk_10094DA00);
  if (v157)
  {
    sub_10000CF78(v156, v157);
    sub_10076D23C();
    sub_10000CD74(v156);
  }

  else
  {
    sub_10000CFBC(v156, &unk_10094DA00);
  }

  sub_100016E2C(v6 + v18[17], &v154, &unk_10094DA00);
  v148 = a4;
  v149 = a3;
  if (!v155)
  {
    sub_10000CFBC(&v154, &unk_10094DA00);
LABEL_17:
    LODWORD(v141) = 1;
    MinX = 0.0;
    v137 = 0.0;
    v136 = 0.0;
    v138 = 0.0;
    goto LABEL_18;
  }

  sub_100012498(&v154, v156);
  sub_10000CF78(v156, v157);
  if (sub_10076D24C())
  {
LABEL_16:
    sub_10000CD74(v156);
    goto LABEL_17;
  }

  sub_100016E2C(v6 + v18[18], &v152, &unk_10094DA00);
  if (!v153)
  {
    sub_10000CFBC(&v152, &unk_10094DA00);
    goto LABEL_16;
  }

  sub_100012498(&v152, &v154);
  sub_10000CF78(&v154, v155);
  if (sub_10076D24C())
  {
    sub_10000CD74(&v154);
    goto LABEL_16;
  }

  MaxY = v24;
  v109 = sub_100102A30(0.0, 0.0, a5, v151, 0.0, v146);
  v111 = v110;
  v138 = v112;
  v134 = v113;
  MinX = COERCE_DOUBLE(swift_getObjectType());
  v114 = [a1 traitCollection];
  v115 = [v114 preferredContentSizeCategory];
  v137 = *&UIContentSizeCategoryExtraExtraExtraLarge;
  v116 = sub_10077087C();

  v144 = Height;
  v135 = Width;
  v133 = v20;
  if (v116)
  {
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v117 = qword_10099D298;
  }

  else
  {
    if (qword_10093F840 != -1)
    {
      swift_once();
    }

    v117 = qword_10099D280;
  }

  v118 = v142;
  v119 = sub_10000A61C(*&v142, v117);
  v120 = v139;
  (*(*&v141 + 16))(v139, v119, COERCE_DOUBLE(*&v118));
  v121 = [a1 traitCollection];
  v122 = [v121 preferredContentSizeCategory];
  sub_10077087C();

  type metadata accessor for SmallLockupView();
  v123 = v138;
  v124 = v134;
  sub_100262AD0(v120, a1);
  v126 = ceil(v125);
  v181.origin.x = 0.0;
  v181.origin.y = 0.0;
  v181.size.width = a5;
  v127 = v151;
  v181.size.height = v151;
  MinX = CGRectGetMinX(v181);
  v182.origin.x = v109;
  v182.origin.y = v111;
  v182.size.width = v123;
  v182.size.height = v124;
  v128 = v111;
  v129 = v109;
  v130 = CGRectGetHeight(v182) - v126;
  v183.origin.x = 0.0;
  v183.origin.y = 0.0;
  v183.size.width = a5;
  v183.size.height = v127;
  v131 = CGRectGetWidth(v183);
  sub_10000CF78(v156, v157);
  v137 = v130;
  v136 = v131;
  sub_10076D23C();
  v184.origin.x = v129;
  v184.origin.y = v128;
  v184.size.width = v123;
  v184.size.height = v124;
  v132 = CGRectGetMinX(v184);
  v185.origin.x = v129;
  v185.origin.y = v128;
  v185.size.width = v123;
  v185.size.height = v124;
  CGRectGetMinY(v185);
  v186.origin.x = v129;
  v186.origin.y = v128;
  v186.size.width = v123;
  v186.size.height = v124;
  CGRectGetWidth(v186);
  sub_10000CF78(&v154, v155);
  v138 = v126;
  sub_10076D23C();
  (*(*&v141 + 8))(v120, COERCE_DOUBLE(*&v142));
  sub_10000CD74(&v154);
  sub_10000CD74(v156);
  LODWORD(v141) = 0;
  Height = v144;
  Width = v135;
  v24 = MaxY;
  a4 = v148;
  a3 = v149;
  v20 = v133;
LABEL_18:
  sub_100016E2C(v7 + v18[12], &v154, &unk_10094DA00);
  v150 = a5;
  if (v155)
  {
    sub_100012498(&v154, v156);
    sub_10000CF78(v156, v157);
    v25 = v151;
    sub_10076D2AC();
    v144 = Height;
    v142 = v26;
    sub_10000CF78((v7 + v20[6]), *(v7 + v20[6] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    MaxY = v24;
    (*&v147)(v17, v14);
    v163.origin.x = a3;
    v163.origin.y = a4;
    v163.size.width = a5;
    v163.size.height = v25;
    CGRectGetMaxX(v163);
    v164.origin.x = a3;
    v164.origin.y = a4;
    v164.size.width = a5;
    v164.size.height = v25;
    CGRectGetMinY(v164);
    sub_10000CF78(v156, v157);
    v24 = MaxY;
    Height = v144;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v156);
  }

  else
  {
    sub_10000CFBC(&v154, &unk_10094DA00);
  }

  v27 = [a1 traitCollection];
  v28 = [v27 preferredContentSizeCategory];
  v29 = sub_10077087C();

  if (v29)
  {
    v30 = sub_100102A30(0.0, 0.0, v150, v151, 0.0, v146);
    v147 = v30;
    v32 = v31;
    v146 = v31;
    v34 = v33;
    v36 = v35;
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = v24;
    v165.size.height = Height;
    MaxY = CGRectGetMaxY(v165);
    v37 = (v7 + v18[13]);
    sub_10000CF78(v37, v37[3]);
    sub_10076D2AC();
    v39 = v38;
    v41 = v40;
    v144 = v42;
    sub_10000CF78((v7 + v20[7]), *(v7 + v20[7] + 24));
    sub_10076D42C();
    v44 = v43;
    v166.origin.x = v30;
    v166.origin.y = v32;
    v166.size.width = v34;
    v166.size.height = v36;
    v45 = CGRectGetMinX(v166);
    v46 = MaxY + v44;
    sub_10000CF78(v37, v37[3]);
    sub_100770A4C();
    sub_10076D23C();
    v167.origin.x = v45;
    v167.origin.y = v46;
    v167.size.width = v39;
    v167.size.height = v41;
    v47 = CGRectGetMaxY(v167) - v144;
    v48 = (v7 + v18[14]);
    sub_10000CF78(v48, v48[3]);
    v49 = v36;
    sub_10076D2AC();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_10000CF78((v7 + v20[8]), *(v7 + v20[8] + 24));
    v142 = v55;
    sub_10076D42C();
    v57 = v56;
    v168.origin.x = v147;
    v168.origin.y = v146;
    v144 = v34;
    v168.size.width = v34;
    MaxY = v49;
    v168.size.height = v49;
    v58 = CGRectGetMinX(v168);
    sub_10000CF78(v48, v48[3]);
    sub_100770A4C();
    sub_10076D23C();
    v169.origin.x = v58;
    v169.origin.y = v47 + v57;
    v169.size.width = v51;
    v169.size.height = v53;
    v59 = CGRectGetMaxY(v169);
    sub_100016E2C(v7 + v18[15], &v154, &qword_10094BB30);
    if (v155)
    {
      sub_100012498(&v154, v156);
      sub_10000CF78(v156, v157);
      if (sub_10076D20C())
      {
        v60 = v59 - v142;
        sub_10000CF78(v156, v157);
        v61 = v144;
        v62 = MaxY;
        sub_10076D2AC();
        v64 = v63;
        v66 = v65;
        sub_10000CF78((v7 + v20[9]), *(v7 + v20[9] + 24));
        sub_10076D42C();
        v68 = v67;
        v170.origin.x = v147;
        v170.origin.y = v146;
        v170.size.width = v61;
        v170.size.height = v62;
        v69 = CGRectGetMinX(v170);
        sub_10000CF78(v156, v157);
        sub_100770A4C();
        sub_10076D23C();
        v171.origin.x = v69;
        v171.origin.y = v60 + v68;
        v171.size.width = v64;
        v171.size.height = v66;
        CGRectGetMaxY(v171);
      }

      sub_10000CD74(v156);
    }

    else
    {
      sub_10000CFBC(&v154, &qword_10094BB30);
    }

    sub_100016E2C(v7 + v18[16], &v154, &unk_10094DA00);
    if (v155)
    {
      sub_100012498(&v154, v156);
      sub_10000CF78(v156, v157);
      if ((sub_10076D24C() & 1) == 0 && (LOBYTE(v141) & 1) == 0)
      {
        sub_10000CF78(v156, v157);
        v102 = v144;
        v103 = MaxY;
        sub_10076D2AC();
        v105 = v104;
        v178.origin.x = MinX;
        v178.origin.y = v137;
        v178.size.width = v136;
        v178.size.height = v138;
        v142 = CGRectGetMinY(v178) - v105;
        v106 = v147;
        v179.origin.x = v147;
        v107 = v146;
        v179.origin.y = v146;
        v179.size.width = v102;
        v179.size.height = v103;
        v141 = CGRectGetMinX(v179);
        v180.origin.x = v106;
        v180.origin.y = v107;
        v180.size.width = v102;
        v180.size.height = v103;
        CGRectGetWidth(v180);
        sub_10000CF78(v156, v157);
        sub_10076D23C();
      }

      sub_10000CD74(v156);
    }

    else
    {
      sub_10000CFBC(&v154, &unk_10094DA00);
    }
  }

  else
  {
    v70 = sub_100102A30(0.0, 0.0, Width, Height, 0.0, v146);
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_10000CF78((v7 + v20[10]), *(v7 + v20[10] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v78 = v77;
    (*&v147)(v17, v14);
    v146 = v70;
    v172.origin.x = v70;
    v144 = v72;
    v172.origin.y = v72;
    v172.size.width = v74;
    v172.size.height = v76;
    v79 = CGRectGetHeight(v172) - v78;
    sub_100016E2C(v7 + v18[15], &v154, &qword_10094BB30);
    if (v155)
    {
      sub_100012498(&v154, v156);
      sub_10000CF78(v156, v157);
      if (sub_10076D20C())
      {
        sub_10000CF78(v156, v157);
        sub_10076D2AC();
        v81 = v80;
        v83 = v82;
        v147 = *&v84;
        MaxY = v85;
        v86 = v85 + v79 - v82;
        v173.origin.x = v146;
        v173.origin.y = v144;
        v173.size.width = v74;
        v173.size.height = v76;
        v87 = CGRectGetMinX(v173);
        sub_10000CF78(v156, v157);
        sub_100770A4C();
        sub_10076D23C();
        sub_10000CF78((v7 + v20[9]), *(v7 + v20[9] + 24));
        sub_10076D42C();
        v89 = v88;
        v174.origin.x = v87;
        v174.origin.y = v86;
        v174.size.width = v81;
        v174.size.height = v83;
        v79 = CGRectGetMinY(v174) - v89;
      }

      sub_10000CD74(v156);
    }

    else
    {
      sub_10000CFBC(&v154, &qword_10094BB30);
    }

    v90 = (v7 + v18[14]);
    sub_10000CF78(v90, v90[3]);
    sub_10076D2AC();
    v92 = v91;
    v94 = v93;
    v147 = *&v95;
    v96 = v76;
    v97 = v74;
    MaxY = v98;
    v99 = v98 + v79 - v93;
    v175.origin.x = v146;
    v175.origin.y = v144;
    v175.size.width = v97;
    v175.size.height = v96;
    v100 = CGRectGetMinX(v175);
    sub_10000CF78(v90, v90[3]);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CF78((v7 + v20[8]), *(v7 + v20[8] + 24));
    sub_10076D42C();
    v176.origin.x = v100;
    v176.origin.y = v99;
    v176.size.width = v92;
    v176.size.height = v94;
    CGRectGetMinY(v176);
    v101 = (v7 + v18[13]);
    sub_10000CF78(v101, v101[3]);
    sub_10076D2AC();
    v177.origin.x = v146;
    v177.origin.y = v144;
    v177.size.width = v97;
    v177.size.height = v96;
    CGRectGetMinX(v177);
    sub_10000CF78(v101, v101[3]);
    sub_100770A4C();
    sub_10076D23C();
  }

  return sub_10076D1BC();
}

__n128 AppEventCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:videoView:gradientBlurView:notifyMeButton:kindLabel:titleLabel:subtitleLabel:separatorView:lockupContainerView:lockupView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10015B138(a1, a9);
  v22 = type metadata accessor for AppEventCardLayout(0);
  sub_100012498(a2, a9 + v22[5]);
  sub_100012498(a3, a9 + v22[6]);
  sub_100012498(a4, a9 + v22[7]);
  sub_100012498(a5, a9 + v22[8]);
  sub_100012498(a6, a9 + v22[9]);
  v23 = a9 + v22[10];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a7 + 32);
  v25 = a9 + v22[11];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  v27 = a9 + v22[12];
  v28 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a10 + 32);
  sub_100012498(a11, a9 + v22[13]);
  sub_100012498(a12, a9 + v22[14]);
  v29 = a9 + v22[15];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[16];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[17];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[18];
  result = *a16;
  v37 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v37;
  *(v35 + 32) = *(a16 + 32);
  return result;
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_10076D39C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_10076D39C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppEventCardLayout.Metrics.notifyMePadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 24);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 28);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 32);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 36);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 40);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

void AppEventCardLayout.measurements(fitting:in:)(void *a1)
{
  ObjectType = swift_getObjectType();

  sub_1006061E0(a1, v1, ObjectType);
}

void sub_1006061E0(void *a1, uint64_t a2, int *a3)
{
  v81 = a3;
  v79 = sub_10077164C();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076D93C();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10076D95C();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10076DE7C();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10076443C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v60 - v11;
  v12 = sub_100763ADC();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppEventCardLayout(0);
  sub_100016E2C(a2 + v15[18], &v86, &unk_10094DA00);
  v16 = v87;
  sub_10000CFBC(&v86, &unk_10094DA00);
  v17 = [a1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  v19 = sub_10077087C();

  if (v19)
  {
    v60 = v16;
    v80 = a2;
    v20 = v15[13];
    v21 = v15[14];
    v22 = v15[16];
    v63 = v15[15];
    v64 = v22;
    if (qword_10093F848 != -1)
    {
      swift_once();
    }

    v61 = (v80 + v20);
    v62 = (v80 + v21);
    v23 = sub_10000A61C(v12, qword_10099D298);
    v81 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_10076D36C();
    v25 = v24;
    v26 = [a1 traitCollection];
    v27 = v71;
    (*(v71 + 16))(v14, v23, v12);
    v28 = sub_100763A4C();
    v30 = v72;
    if ((v31 & 1) == 0 && ((v28 | v29) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_10077071C())
      {
        if (qword_10093F520 != -1)
        {
          swift_once();
        }

        v32 = qword_100944C88;
      }

      else
      {
        if (qword_10093F528 != -1)
        {
          swift_once();
        }

        v32 = qword_100944CA0;
      }

      v33 = v68;
      v34 = sub_10000A61C(v68, v32);
      v35 = v67;
      v36 = v65;
      (*(v67 + 16))(v65, v34, v33);
      v37 = v66;
      (*(v35 + 32))(v66, v36, v33);
      sub_1007643EC();
      sub_10076441C();
      sub_100763A5C();
      (*(v35 + 8))(v37, v33);
    }

    sub_10076398C();
    v39 = v38;

    (*(v27 + 8))(v14, v12);
    *&v84 = _swiftEmptyArrayStorage;
    sub_10000A5D4(&unk_10094D050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v87 = &type metadata for CGFloat;
    v88 = &protocol witness table for CGFloat;
    *&v86 = v25;
    *(inited + 56) = v30;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000DB7C((inited + 32));
    sub_10076DE8C();
    sub_1000F9168(inited);
    v41 = v80;
    v42 = v79;
    if (v60)
    {
      v87 = &type metadata for CGFloat;
      v88 = &protocol witness table for CGFloat;
      *&v86 = ceil(v39 + 16.0 + 16.0);
      v43 = v69;
      sub_10076DE8C();
      v44 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_10049CD5C(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_10049CD5C((v45 > 1), v46 + 1, 1, v44);
      }

      v87 = v30;
      v88 = &protocol witness table for VerticalSpaceMeasurable;
      v47 = sub_10000DB7C(&v86);
      v48 = v70;
      (*(v70 + 16))(v47, v43, v30);
      v44[2] = v46 + 1;
      sub_100012498(&v86, &v44[5 * v46 + 4]);
      (*(v48 + 8))(v43, v30);
      *&v84 = v44;
    }

    (*(v76 + 104))(v74, enum case for StackMeasurable.Axis.vertical(_:), v78);
    v49 = v73;
    sub_10076D94C();
    sub_10076D92C();
    (*(v75 + 8))(v49, v77);
    sub_10000CF78(v41, v41[3]);
    v50 = v82;
    sub_1000FF02C();
    sub_10076D40C();
    v51 = *(v83 + 8);
    v83 += 8;
    v51(v50, v42);
    sub_100770ACC();
    sub_10000CF78(v61, v61[3]);
    sub_10076D2AC();
    v53 = v52;
    v54 = v81;
    sub_10000CF78((v41 + v81[7]), *(v41 + v81[7] + 24));
    sub_10076D42C();
    *&v86 = v53;
    sub_10076D3FC();
    sub_10000CF78(v62, v62[3]);
    sub_10076D2AC();
    v56 = v55;
    sub_10000CF78((v41 + v54[8]), *(v41 + v54[8] + 24));
    sub_10076D42C();
    *&v86 = v56;
    sub_10076D3FC();
    sub_100016E2C(v41 + v63, &v84, &qword_10094BB30);
    if (v85)
    {
      sub_100012498(&v84, &v86);
      sub_10000CF78(&v86, v87);
      if (sub_10076D20C())
      {
        sub_10000CF78(&v86, v87);
        sub_10076D2AC();
        v58 = v57;
        sub_10000CF78((v41 + v81[9]), *(v41 + v81[9] + 24));
        sub_10076D42C();
        *&v84 = v58;
        sub_10076D3FC();
      }

      sub_10000CD74(&v86);
    }

    else
    {
      sub_10000CFBC(&v84, &qword_10094BB30);
    }

    sub_10000CF78((v41 + v81[10]), *(v41 + v81[10] + 24));
    v59 = v82;
    sub_1000FF02C();
    sub_10076D40C();
    v51(v59, v42);
    sub_100016E2C(v41 + v64, &v84, &unk_10094DA00);
    if (v85)
    {
      sub_100012498(&v84, &v86);
      sub_10000CF78(&v86, v87);
      if ((sub_10076D24C() & 1) == 0)
      {
        sub_10000CF78(&v86, v87);
        sub_10076D2AC();
      }

      sub_10000CD74(&v86);
    }

    else
    {
      sub_10000CFBC(&v84, &unk_10094DA00);
    }
  }

  else
  {
    sub_100606F98(a2, v16 != 0, a1);
  }
}

double sub_100606F98(uint64_t a1, int a2, void *a3)
{
  v45 = a2;
  v50 = sub_10076D93C();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076D95C();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10076DE7C();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076443C();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_100763ADC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F840 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v14, qword_10099D280);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_10076D36C();
  v20 = v19;
  v52 = a3;
  v21 = [a3 traitCollection];
  (*(v15 + 16))(v17, v18, v14);
  v22 = sub_100763A4C();
  if ((v24 & 1) == 0 && ((v22 | v23) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v25 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v25 = qword_100944CA0;
    }

    v26 = sub_10000A61C(v8, v25);
    v27 = v42;
    (*(v42 + 16))(v10, v26, v8);
    (*(v27 + 32))(v13, v10, v8);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v27 + 8))(v13, v8);
  }

  sub_10076398C();
  v29 = v28;

  (*(v15 + 8))(v17, v14);
  v56 = _swiftEmptyArrayStorage;
  sub_10000A5D4(&unk_10094D050);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v20;
  v31 = v46;
  *(inited + 56) = v46;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C((inited + 32));
  sub_10076DE8C();
  sub_1000F9168(inited);
  if (v45)
  {
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *&v53 = ceil(v29 + 4.0 + 4.0);
    v32 = v43;
    sub_10076DE8C();
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_10049CD5C(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_10049CD5C((v34 > 1), v35 + 1, 1, v33);
    }

    v54 = v31;
    v55 = &protocol witness table for VerticalSpaceMeasurable;
    v36 = sub_10000DB7C(&v53);
    v37 = v44;
    (*(v44 + 16))(v36, v32, v31);
    v33[2] = v35 + 1;
    sub_100012498(&v53, &v33[5 * v35 + 4]);
    (*(v37 + 8))(v32, v31);
    v56 = v33;
  }

  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  sub_10076D94C();
  sub_10076D92C();
  v39 = v38;
  (*(v49 + 8))(v6, v51);
  return v39;
}

void sub_1006076C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v27 = a3;
  v19 = a1;
  v26 = sub_10075EBAC();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10076B96C();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    do
    {
      sub_10000A570(v12, v33);
      sub_100012498(v33, v31);
      sub_10000A5D4(&qword_1009575A0);
      sub_10075F1FC();
      if ((swift_dynamicCast() & 1) != 0 && v32)
      {
        sub_10077019C();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v10 = v34;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  if (v10 >> 62)
  {
LABEL_25:
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = sub_10077158C();
  }

  else
  {
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v29 = v10 & 0xC000000000000001;
  v22 = (v8 + 8);
  ++v6;
  do
  {
    v14 = v13;
    if (v30 == v13)
    {
      break;
    }

    if (v29)
    {
      sub_10077149C();
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        break;
      }
    }

    else
    {
      if (v13 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    if ((sub_10075F19C() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_10000A5D4(&unk_10094A8C0);
    sub_10076F64C();
    sub_10076FC1C();
    swift_getObjectType();
    sub_10075F1DC();
    v15 = v23;
    sub_10076BB7C();

    sub_10075EE2C();
    (*v22)(v15, v24);
    swift_getObjectType();
    sub_10075F1DC();
    sub_10076BA7C();

    v8 = v25;
    sub_10075ED2C();
    v16 = sub_10075EB5C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*v6)(v8, v26);
    v13 = v14 + 1;
  }

  while ((v16 & 1) == 0);
  v17 = v30 != v14;

  sub_100606F98(v19, v17, v20);
}

uint64_t sub_100607B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100607C68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppEventCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100607D24()
{
  type metadata accessor for AppEventCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100102F90(319, &unk_100950F60);
    if (v1 <= 0x3F)
    {
      sub_1001A3380(319, &qword_100950F80, &qword_10094CF50);
      if (v2 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00);
        if (v3 <= 0x3F)
        {
          sub_1001A3380(319, &unk_100950F70, &unk_100953E10);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100607E70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10076D39C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100607F30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_10076D39C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100607FD4()
{
  result = sub_100102F90(319, &qword_10094BAA0);
  if (v1 <= 0x3F)
  {
    result = sub_10076D39C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100608078()
{
  v0 = sub_10076FD2C();
  sub_10000DB18(v0, qword_1009A25B8);
  sub_10000A61C(v0, qword_1009A25B8);
  return sub_10076FD1C();
}

uint64_t sub_1006081C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076FD2C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076FD4C();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v3, qword_1009A25B8);
  (*(v4 + 16))(v6, v8, v3);
  return sub_10076FD3C();
}

void sub_100608310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = sub_10077153C();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_1006085BC(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v21 + 16);
      sub_10024B3D0(v19, a7, isUniquelyReferenced_nonNull_native);
      *(v21 + 16) = v32;
      swift_endAccess();
    }

    swift_beginAccess();
    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 32);
        ObjectType = swift_getObjectType();
        (*(v30 + 8))(v29, v19, a8, ObjectType, v30);

        swift_unknownObjectRelease();
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

uint64_t sub_100608558()
{

  sub_10000CC8C(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1006085BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000A5D4(&qword_100948B40);
    v2 = sub_1007715CC();
    v19 = v2;
    sub_10077152C();
    v3 = sub_10077155C();
    if (v3)
    {
      v4 = v3;
      sub_10076C02C();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1006087F8();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100249C2C(v12 + 1, 1);
        }

        v2 = v19;
        sub_100608844();
        result = sub_10076FEAC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_10077155C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_1006087F8()
{
  result = qword_10094F610;
  if (!qword_10094F610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094F610);
  }

  return result;
}

unint64_t sub_100608844()
{
  result = qword_10094E848;
  if (!qword_10094E848)
  {
    sub_10076C02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094E848);
  }

  return result;
}

void *sub_10060889C(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1007714EC();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        sub_10076BD4C();
      }

      sub_10076BFCC();

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_100608998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v121 = a2;
  v103 = a4;
  v6 = sub_100761DDC();
  v105 = *(v6 - 8);
  v106 = v6;
  __chkstk_darwin(v6);
  v104 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10076997C();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075D78C();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100765D2C();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v96 - v15;
  v16 = sub_100761DAC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v96 - v22;
  v122 = [a3 traitCollection];
  sub_100761DBC();
  (*(v17 + 104))(v19, enum case for BreakoutDetails.BackgroundStyle.material(_:), v16);
  sub_100609F38(&qword_100960DB0, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  sub_10077018C();
  sub_10077018C();
  if (v144 != v140 || v145 != v141)
  {
    sub_10077167C();
  }

  v24 = *(v17 + 8);
  v24(v19, v16);
  v24(v23, v16);

  v25 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_100637E90(v121, v120);
  v117 = sub_10005312C();
  v118 = v25;
  v26 = sub_100770B3C();
  v27 = sub_100761DFC();
  if (!v28)
  {
    v33 = v9;
    v29 = a1;
    goto LABEL_8;
  }

  v29 = a1;
  v144 = v27;
  v145 = v28;
  v30 = v110;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v32 = v31;
  (*(v111 + 8))(v30, v112);
  if (v32)
  {
    v33 = v9;

LABEL_8:
    v34 = v119;
    goto LABEL_13;
  }

  [v26 lineHeight];
  v36 = v35;

  v38 = ceil(v36 * 1.3);
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v33 = v9;
  v34 = v119;
LABEL_13:
  sub_100761DFC();
  v39 = sub_10076C04C();
  v146 = v39;
  v109 = sub_100609F38(&qword_100943230, &type metadata accessor for Feature);
  v147 = v109;
  v40 = sub_10000DB7C(&v144);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v113 = v42;
  v114 = v41 + 104;
  (v42)(v40);
  v43 = v26;
  sub_10076C90C();
  sub_10000CD74(&v144);
  v44 = v33;
  v107 = v43;
  sub_10076996C();
  sub_10076994C();
  v115 = *(v115 + 8);
  (v115)(v33, v34);
  v45 = sub_100770B3C();
  v46 = sub_100761D6C();
  v108 = v44;
  if (!v47)
  {
    v51 = v45;
    goto LABEL_17;
  }

  v140 = v46;
  v141 = v47;
  v48 = v110;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v50 = v49;
  (*(v111 + 8))(v48, v112);
  if (v50)
  {
    v51 = v45;

LABEL_17:
    v52 = v116;
    goto LABEL_22;
  }

  [v107 lineHeight];
  v54 = v53;

  v55 = ceil(v54 * 1.3);
  v52 = v116;
  if ((*&v55 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_45;
  }

  if (v55 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v55 >= 9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v51 = v45;
LABEL_22:
  sub_100761D6C();
  v56 = v109;
  v142 = v39;
  v143 = v109;
  v57 = sub_10000DB7C(&v140);
  v113(v57, v52, v39);
  v58 = v51;
  v98 = v39;
  v59 = v56;
  v60 = v58;
  sub_10076C90C();
  sub_10000CD74(&v140);
  v61 = v108;
  v97 = v60;
  sub_10076996C();
  sub_10076994C();
  v62 = v119;
  (v115)(v61, v119);
  v63 = v104;
  v99 = v29;
  sub_100761DEC();
  v65 = v105;
  v64 = v106;
  v66 = (*(v105 + 88))(v63, v106);
  if (v66 == enum case for BreakoutDetails.Badge.text(_:))
  {
    (*(v65 + 96))(v63, v64);
    sub_100770B3C();
    v67 = v98;
    *(&v138 + 1) = v98;
    v139 = v59;
    v68 = sub_10000DB7C(&v137);
    v69 = v113;
    v113(v68, v116, v67);
    sub_10076C90C();
    sub_10000CD74(&v137);
    sub_10076996C();
    sub_10076994C();
    (v115)(v61, v62);
    v70 = *(&v135 + 1);
    v71 = v136;
    v72 = sub_10000CF78(&v134, *(&v135 + 1));
    *(&v138 + 1) = v70;
    v139 = *(v71 + 8);
    v73 = sub_10000DB7C(&v137);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    sub_10000CD74(&v134);
    v74 = v69;
    if (!sub_100761D5C())
    {
      goto LABEL_39;
    }
  }

  else
  {
    v67 = v98;
    if (v66 != enum case for BreakoutDetails.Badge.wordmark(_:))
    {
      v61 = v108;
      v74 = v113;
      if (v66 == enum case for BreakoutDetails.Badge.none(_:))
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        if (sub_100761D5C())
        {
          goto LABEL_30;
        }
      }

      else
      {
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        (*(v65 + 8))(v63, v64);
        if (sub_100761D5C())
        {
          goto LABEL_30;
        }
      }

LABEL_39:
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      goto LABEL_40;
    }

    v75 = sub_10076DDDC();
    swift_allocObject();
    v76 = sub_10076DDBC();
    *(&v138 + 1) = v75;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    *&v137 = v76;
    v61 = v108;
    v74 = v113;
    if (!sub_100761D5C())
    {
      goto LABEL_39;
    }
  }

LABEL_30:
  v77 = sub_100770B3C();
  v78 = sub_10076B8EC();
  if (!v79)
  {
    goto LABEL_37;
  }

  *&v134 = v78;
  *(&v134 + 1) = v79;
  v80 = v110;
  sub_10075D76C();
  sub_10002564C();
  sub_1007711EC();
  v82 = v81;
  (*(v111 + 8))(v80, v112);
  if (v82)
  {

    goto LABEL_37;
  }

  [v77 lineHeight];
  v84 = v83;

  v85 = ceil(v84 * 1.3);
  if ((*&v85 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_50;
  }

  if (v85 <= -9.22337204e18)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v85 >= 9.22337204e18)
  {
LABEL_52:
    __break(1u);
    return result;
  }

LABEL_37:
  sub_10076B8EC();
  *(&v135 + 1) = v67;
  v136 = v109;
  v86 = sub_10000DB7C(&v134);
  v74(v86, v116, v67);
  v87 = v77;
  sub_10076C90C();
  sub_10000CD74(&v134);
  sub_10076996C();
  sub_10076994C();

  (v115)(v61, v119);
LABEL_40:
  v88 = v101;
  v89 = v102;
  (*(v101 + 16))(v100, v120, v102);
  sub_10000A570(&v144, &v133);
  sub_10000A570(&v140, &v132);
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_100016E2C(&v137, v129, &unk_10094DA00);
  sub_100016E2C(&v134, v123, &qword_10094BB30);
  v90 = v124;
  if (v124)
  {
    v91 = v125;
    v92 = sub_10000CF78(v123, v124);
    *(&v127 + 1) = v90;
    v128 = *(v91 + 8);
    v93 = sub_10000DB7C(&v126);
    (*(*(v90 - 8) + 16))(v93, v92, v90);
    sub_10000CD74(v123);
  }

  else
  {
    sub_10000CFBC(v123, &qword_10094BB30);
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
  }

  v94 = sub_100765D4C();
  v95 = v103;
  v103[3] = v94;
  v95[4] = sub_100609F38(&qword_100960DB8, &type metadata accessor for BreakoutDetailsLayout);
  v95[5] = sub_100609F38(&qword_100960DC0, &type metadata accessor for BreakoutDetailsLayout);
  sub_10000DB7C(v95);
  sub_100765D3C();

  sub_10000CFBC(&v134, &qword_10094BB30);
  sub_10000CD74(&v140);
  sub_10000CD74(&v144);
  (*(v88 + 8))(v120, v89);
  return sub_10000CFBC(&v137, &unk_10094DA00);
}

id sub_1006098B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v40 = a2;
  v41 = sub_100761DAC();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100761D8C();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100761DDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_100761DEC();
  v17 = OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v17], v10);
  swift_beginAccess();
  (*(v11 + 24))(&v4[v17], v16, v10);
  swift_endAccess();
  sub_10063AA94();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  v19 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_titleLabel];
  sub_100761DFC();
  if (v20)
  {
    v21 = sub_10076FF6C();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:v21];

  v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_descriptionLabel];
  sub_100761D6C();
  if (v23)
  {
    v24 = sub_10076FF6C();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v25 = sub_100761D5C();
  if (v25)
  {
    v26 = v25;
    sub_10076B8EC();
    v27 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton];
    if (v28)
    {
      v29 = sub_10076FF6C();
    }

    else
    {
      v29 = 0;
    }

    [v27 setTitle:v29 forState:0];

    v32 = swift_allocObject();
    *(v32 + 16) = v37;
    *(v32 + 24) = v26;
    v33 = &v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v34 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    *v33 = sub_100609F30;
    v33[1] = v32;

    v31 = v34;
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButton] setTitle:0 forState:0];
    v30 = &v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v31 = *&v4[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  sub_1000167E0(v31);
  sub_100761D9C();
  sub_100761DBC();
  sub_100637A5C(v40, v9, v6);
  (*(v39 + 8))(v6, v41);
  (*(v7 + 8))(v9, v38);
  return [v4 setNeedsLayout];
}

unint64_t sub_100609D48()
{
  result = qword_100960DA8;
  if (!qword_100960DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960DA8);
  }

  return result;
}

uint64_t sub_100609DAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_100609EF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100609F38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100609F80(void *a1)
{
  if (*(v1 + 24))
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
  }

  else
  {
    v2 = *(v1 + 16);
    [a1 _verticalVelocity];
    v5 = v4;
    [a1 _systemContentInset];
    v7 = v6;
    [a1 contentInset];
    v9 = v7 + v8;
    [a1 contentOffset];
    *(v1 + 48) = v9 + v10 >= v2;
    *(v1 + 56) = v5;
  }

  v11 = sub_100767B7C();
  result = sub_100767B7C();
  if (v11 != result)
  {
    v13 = *(v1 + 32);
    if (v13)
    {
      return v13(*(v1 + 48), 1, *(v1 + 56));
    }
  }

  return result;
}

uint64_t sub_10060A080()
{
  sub_1000167E0(*(v0 + 32));

  return swift_deallocClassInstance();
}

double sub_10060A0E0()
{
  v0 = sub_1007604DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100960EB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  v10 = 0.3;
  v9 = 0x3FA999999999999ALL;
  (*(v1 + 104))(v3, enum case for TimingCurve.linear(_:), v0);
  sub_1007607FC();
  sub_1007607EC();
  (*(v5 + 8))(v7, v4);
  return v10;
}

unint64_t sub_10060A2D0()
{
  result = qword_10094F030;
  if (!qword_10094F030)
  {
    sub_10075FD5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F030);
  }

  return result;
}

uint64_t sub_10060A328()
{
  v0 = sub_10076F50C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100942C70);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_10076FC8C();
}

uint64_t sub_10060A410@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v33 = a3;
  v4 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - v5;
  v6 = sub_10075DD7C();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10076B96C();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100768B1C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A570(a1, v42);
  sub_10000CF78(a1, a1[3]);
  v15 = v6;
  v16 = v34;
  sub_100762E0C();
  sub_10060C770(&qword_100960EF8, &type metadata accessor for TodayCardTriggerIdentifier);
  *&v39 = sub_10077163C();
  *(&v39 + 1) = v17;
  (*(v12 + 8))(v14, v11);
  v44._countAndFlagsBits = 8250;
  v44._object = 0xE200000000000000;
  sub_1007700CC(v44);
  sub_10000CF78(a1, a1[3]);
  sub_100762E2C();
  v18 = sub_10076B92C();
  v20 = v19;
  (*(v8 + 8))(v10, v35);
  v21 = v36;
  v45._countAndFlagsBits = v18;
  v45._object = v20;
  sub_1007700CC(v45);
  v22 = v37;

  v40 = v39;
  sub_100016E2C(v22, v21, &unk_10094FA00);
  if ((*(v16 + 48))(v21, 1, v15) == 1)
  {
    sub_10000CFBC(v21, &unk_10094FA00);
    sub_10000CFBC(v22, &unk_10094FA00);
    v23 = 0xED00002E74657920;
    v24 = 0x6E65657320746F4ELL;
LABEL_8:
    *&v41 = v24;
    *(&v41 + 1) = v23;
    v29 = v42[1];
    v30 = v33;
    *(v33 + 32) = v42[0];
    *(v30 + 48) = v29;
    *(v30 + 64) = v43;
    v31 = v41;
    *v30 = v40;
    *(v30 + 16) = v31;
    return sub_10000CD74(a1);
  }

  v25 = v32;
  (*(v16 + 32))(v32, v21, v15);
  result = sub_10075DD3C();
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v28 = -v27;
  if (!__OFSUB__(0, v27))
  {
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    sub_10077145C(20);

    *&v39 = 0x206E656553;
    *(&v39 + 1) = 0xE500000000000000;
    v38 = v28;
    v46._countAndFlagsBits = sub_10077163C();
    sub_1007700CC(v46);

    v47._countAndFlagsBits = 0x73646E6F63657320;
    v47._object = 0xED00002E6F676120;
    sub_1007700CC(v47);
    v23 = *(&v39 + 1);
    v24 = v39;
    sub_10000CFBC(v22, &unk_10094FA00);
    (*(v16 + 8))(v25, v15);
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10060A93C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a3;
  v13 = sub_100768B1C();
  v5 = *(v13 - 8);
  __chkstk_darwin(v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10094FA00);
  __chkstk_darwin(v8 - 8);
  v10 = &v12 - v9;
  sub_10000A570(a1, v15);
  sub_10000CF78(a2, a2[3]);
  sub_10000CF78(a1, a1[3]);
  sub_100762E0C();
  sub_10075E4CC();
  (*(v5 + 8))(v7, v13);
  return sub_10060A410(v15, v10, v14);
}

id sub_10060AADC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_triggerController] = a1;

  *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections] = sub_10060C0C4(v4);
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithStyle:", 1);
  v6 = [v5 navigationItem];
  v7 = sub_10076FF6C();
  [v6 setTitle:v7];

  v8 = [v5 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  v9 = [objc_allocWithZone(UIRefreshControl) init];
  [v5 setRefreshControl:v9];

  v10 = [v5 refreshControl];
  if (v10)
  {
    [v10 addTarget:v5 action:"refreshContent" forControlEvents:4096];
  }

  return v5;
}

void sub_10060ACD8()
{
  *&v0[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections] = sub_10060C0C4(*&v0[OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_triggerController]);

  v1 = [v0 tableView];
  if (v1)
  {
    v2 = v1;
    [v1 reloadData];

    v3 = [v0 refreshControl];
    [v3 endRefreshing];
  }

  else
  {
    __break(1u);
  }
}

void sub_10060ADDC(uint64_t a1, char a2)
{
  v4 = a2 & 1;
  v5 = sub_10076FF6C();

  v6 = sub_10076FF6C();
  v7 = [objc_opt_self() alertControllerWithTitle:v5 message:v6 preferredStyle:1];

  sub_10000A570(a1, v17);
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  sub_100012498(v17, v8 + 24);
  *(v8 + 64) = v4;
  v9 = v2;
  v10 = sub_10076FF6C();
  aBlock[4] = sub_10060CB24;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006C1A98;
  aBlock[3] = &unk_10089CFA8;
  v11 = _Block_copy(aBlock);

  v12 = objc_opt_self();
  v13 = [v12 actionWithTitle:v10 style:0 handler:v11];
  _Block_release(v11);

  [v7 addAction:v13];
  v14 = sub_10076FF6C();
  v15 = [v12 actionWithTitle:v14 style:1 handler:0];

  [v7 addAction:v15];
  [v9 presentViewController:v7 animated:1 completion:0];
}

void sub_10060B04C(void *a1, char a2)
{
  v5 = sub_100768B1C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_triggerController))
  {
    sub_100768ADC();
    sub_100012498(v12, v13);
    if (a2)
    {
      sub_10000CF78(v13, v14);
      sub_10000A5D4(&qword_100960F18);
      v9 = swift_allocObject();
      v9[1] = xmmword_100783DD0;
      sub_10000CF78(a1, a1[3]);
      sub_100762E0C();
      v10._rawValue = v9;
      sub_10075E4EC(v10);
    }

    else
    {
      sub_10000CF78(a1, a1[3]);
      sub_100762E1C();
      sub_10000CF78(v13, v14);
      sub_10000CF78(a1, a1[3]);
      sub_100762E0C();
      sub_10075E4DC();
      (*(v6 + 8))(v8, v5);
    }

    v11 = [objc_opt_self() sharedCoordinator];
    [v11 simulateStorefrontChange];

    sub_10000CD74(v13);
  }
}

uint64_t sub_10060B9D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10060B9E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10060BA30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10060BA94()
{
  result = qword_100960EF0;
  if (!qword_100960EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100960EF0);
  }

  return result;
}

uint64_t sub_10060BAE8(uint64_t a1)
{
  v65 = sub_1007652DC();
  v2 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100768B1C();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000A5D4(&qword_100960F00);
  __chkstk_darwin(v61);
  v60 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v46 - v8;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v74 = _swiftEmptyArrayStorage;
  sub_1004BBAC4(0, v9, 0);
  v10 = v74;
  v11 = a1 + 64;
  result = sub_1007712DC();
  v13 = result;
  v14 = 0;
  v15 = *(a1 + 36);
  v56 = v2 + 16;
  v57 = v4 + 16;
  v54 = v2 + 32;
  v55 = v4 + 32;
  v58 = v2;
  v53 = v2 + 8;
  v52 = v4 + 8;
  v47 = a1 + 72;
  v73 = v4;
  v48 = v9;
  v50 = a1 + 64;
  v49 = v15;
  v51 = a1;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_22;
    }

    if (v15 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v67 = 1 << v13;
    v68 = v13 >> 6;
    v66 = v14;
    v16 = v61;
    v17 = *(v61 + 48);
    v18 = *(a1 + 48) + *(v4 + 72) * v13;
    v70 = *(v4 + 16);
    v19 = v59;
    v20 = v63;
    v70(v59, v18, v63);
    v21 = v58;
    v22 = *(a1 + 56) + *(v58 + 72) * v13;
    v69 = *(v58 + 16);
    v71 = v13;
    v23 = v65;
    v69(&v19[v17], v22, v65);
    v24 = *(v73 + 32);
    v72 = v10;
    v25 = v60;
    v24(v60, v19, v20);
    v26 = *(v16 + 48);
    (*(v21 + 32))(&v25[v26], &v19[v17], v23);
    v27 = v62;
    v70(v62, v25, v20);
    v28 = v64;
    v69(v64, &v25[v26], v23);
    v70 = sub_100768B0C();
    v30 = v29;
    sub_10060C770(&qword_100960F08, &type metadata accessor for TriggerBuilderError);
    v31 = sub_1007716EC();
    v33 = v32;
    v34 = *(v21 + 8);
    v4 = v73;
    v34(v28, v23);
    (*(v4 + 8))(v27, v20);
    v35 = v25;
    v10 = v72;
    sub_10000CFBC(v35, &qword_100960F00);
    v74 = v10;
    v37 = v10[2];
    v36 = v10[3];
    if (v37 >= v36 >> 1)
    {
      sub_1004BBAC4((v36 > 1), v37 + 1, 1);
      v10 = v74;
    }

    v10[2] = v37 + 1;
    v38 = &v10[9 * v37];
    result = v71;
    v38[4] = v70;
    v38[5] = v30;
    v38[6] = v31;
    v38[7] = v33;
    *(v38 + 4) = 0u;
    *(v38 + 5) = 0u;
    v38[12] = 0;
    a1 = v51;
    v13 = 1 << *(v51 + 32);
    if (result >= v13)
    {
      goto LABEL_24;
    }

    v11 = v50;
    v39 = *(v50 + 8 * v68);
    if ((v39 & v67) == 0)
    {
      goto LABEL_25;
    }

    LODWORD(v15) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_26;
    }

    v40 = v39 & (-2 << (result & 0x3F));
    if (v40)
    {
      v13 = __clz(__rbit64(v40)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v68 << 6;
      v42 = v68 + 1;
      v43 = (v47 + 8 * v68);
      while (v42 < (v13 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = sub_100032734(result, v49, 0);
          v13 = __clz(__rbit64(v44)) + v41;
          goto LABEL_4;
        }
      }

      result = sub_100032734(result, v49, 0);
    }

LABEL_4:
    v14 = v66 + 1;
    if (v66 + 1 == v48)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_10060C0C4(uint64_t a1)
{
  if (!a1)
  {
    sub_10000A5D4(&qword_1009591A0);
    v9 = swift_allocObject();
    *(v9 + 1) = xmmword_100783DD0;
    v9[4] = 0xD000000000000015;
    v9[5] = 0x80000001007F21D0;
    v9[6] = _swiftEmptyArrayStorage;
    *(v9 + 56) = 2;
    return v9;
  }

  sub_100768AEC();
  v1 = v39;
  v2 = v40;
  v3 = v41;
  v4 = v42;
  v5 = v43;
  isUniquelyReferenced_nonNull_native = sub_100768ADC();
  v7 = *(v38 + 16);
  v36 = v38;
  v37 = v39;
  if (v7)
  {
    v8 = sub_10060BAE8(v38);
    isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = isUniquelyReferenced_nonNull_native;
    v11 = *(isUniquelyReferenced_nonNull_native + 16);
    v10 = *(isUniquelyReferenced_nonNull_native + 24);
    if (v11 >= v10 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v10 > 1), v11 + 1, 1, isUniquelyReferenced_nonNull_native);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v11 + 1;
    v12 = &v9[4 * v11];
    v12[4] = 0xD000000000000013;
    v12[5] = 0x80000001007F21F0;
    v12[6] = v8;
    *(v12 + 56) = 2;
    v1 = v37;
    if (*(v37 + 16))
    {
LABEL_6:
      __chkstk_darwin(isUniquelyReferenced_nonNull_native);
      v35 = &v38;
      v13 = sub_100409D08(sub_10060C750, v34, v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v9[2] + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v15 = v9[2];
      v14 = v9[3];
      if (v15 >= v14 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_10049DCC0((v14 > 1), v15 + 1, 1, v9);
        v9 = isUniquelyReferenced_nonNull_native;
      }

      v9[2] = v15 + 1;
      v16 = &v9[4 * v15];
      v16[4] = 0xD00000000000001DLL;
      v16[5] = 0x80000001007F2210;
      v16[6] = v13;
      *(v16 + 56) = 1;
      if (!*(v2 + 16))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
    if (*(v39 + 16))
    {
      goto LABEL_6;
    }
  }

  if (*(v2 + 16))
  {
LABEL_15:
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v17 = sub_100409D08(sub_10060CB6C, v34, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v19 = v9[2];
    v18 = v9[3];
    if (v19 >= v18 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v18 > 1), v19 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v19 + 1;
    v20 = &v9[4 * v19];
    v20[4] = 0xD00000000000001BLL;
    v20[5] = 0x80000001007F2230;
    v20[6] = v17;
    *(v20 + 56) = 1;
  }

LABEL_20:
  if (*(v3 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v21 = sub_100409D08(sub_10060CB6C, v34, v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v23 = v9[2];
    v22 = v9[3];
    if (v23 >= v22 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v22 > 1), v23 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v23 + 1;
    v24 = &v9[4 * v23];
    v24[4] = 0xD00000000000001CLL;
    v24[5] = 0x80000001007F2250;
    v24[6] = v21;
    *(v24 + 56) = 0;
  }

  if (*(v4 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v25 = sub_100409D08(sub_10060CB6C, v34, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0(0, v9[2] + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v27 = v9[2];
    v26 = v9[3];
    if (v27 >= v26 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_10049DCC0((v26 > 1), v27 + 1, 1, v9);
      v9 = isUniquelyReferenced_nonNull_native;
    }

    v9[2] = v27 + 1;
    v28 = &v9[4 * v27];
    v28[4] = 0xD000000000000020;
    v28[5] = 0x80000001007F2270;
    v28[6] = v25;
    *(v28 + 56) = 0;
  }

  if (*(v5 + 16))
  {
    __chkstk_darwin(isUniquelyReferenced_nonNull_native);
    v35 = &v38;
    v29 = sub_100409D08(sub_10060CB6C, v34, v5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10049DCC0(0, v9[2] + 1, 1, v9);
    }

    v31 = v9[2];
    v30 = v9[3];
    if (v31 >= v30 >> 1)
    {
      v9 = sub_10049DCC0((v30 > 1), v31 + 1, 1, v9);
    }

    v9[2] = v31 + 1;
    v32 = &v9[4 * v31];
    v32[4] = 0xD000000000000017;
    v32[5] = 0x80000001007F22A0;
    v32[6] = v29;
    *(v32 + 56) = 0;
    sub_10000CD74(&v38);
  }

  else
  {
    sub_10000CD74(&v38);
  }

  return v9;
}

uint64_t sub_10060C770(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10060C7B8(void *a1)
{
  result = sub_10075E0AC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4 + 32 * result;
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);

  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result < *(v6 + 16))
  {
    sub_10060CA7C(v6 + 72 * result + 32, &v15);
    v8 = [a1 textLabel];
    if (v8)
    {
      v9 = v8;
      v10 = sub_10076FF6C();
      [v9 setText:v10];
    }

    v11 = [a1 detailTextLabel];
    if (v11)
    {
      v12 = v11;
      v13 = sub_10076FF6C();
      [v12 setText:v13];

      if (v7 == 2)
      {
LABEL_9:
        v14 = 0;
LABEL_12:
        [a1 setAccessoryType:v14];
        return sub_10060CAB4(&v15);
      }
    }

    else
    {

      if (v7 == 2)
      {
        goto LABEL_9;
      }
    }

    v14 = 1;
    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_10060C954()
{
  result = sub_10075E0AC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension35DebugTodayCardTriggerViewController_sections);
  if (result >= *(v2 + 16))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2 + 32 * result;
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);

  result = sub_10075E07C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (result >= *(v4 + 16))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_10060CA7C(v4 + 72 * result + 32, v9);

  if (v5 != 2)
  {
    sub_100016E2C(&v10, &v6, &qword_100960F10);
    if (!v7)
    {
      sub_10060CAB4(v9);
      return sub_10000CFBC(&v6, &qword_100960F10);
    }

    sub_100012498(&v6, v8);
    sub_10060ADDC(v8, v5 & 1);
    sub_10000CD74(v8);
  }

  return sub_10060CAB4(v9);
}

uint64_t sub_10060CAE4()
{
  sub_10000CD74(v0 + 24);

  return _swift_deallocObject(v0, 65, 7);
}

uint64_t sub_10060CB54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10060CB84()
{
  sub_10000A5D4(&unk_1009609A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007844F0;
  *(inited + 32) = UIActivityTypeAirDrop;
  *(inited + 40) = UIActivityTypeCopyToPasteboard;
  *(inited + 48) = UIActivityTypeMessage;
  *(inited + 56) = UIActivityTypePostToFacebook;
  *(inited + 64) = UIActivityTypePostToTwitter;
  *(inited + 72) = UIActivityTypePostToWeibo;
  v1 = UIActivityTypeAirDrop;
  v2 = UIActivityTypeCopyToPasteboard;
  v3 = UIActivityTypeMessage;
  v4 = UIActivityTypePostToFacebook;
  v5 = UIActivityTypePostToTwitter;
  v6 = UIActivityTypePostToWeibo;
  v7 = sub_100179CCC(inited);
  swift_setDeallocating();
  type metadata accessor for ActivityType(0);
  result = swift_arrayDestroy();
  qword_100960F20 = v7;
  return result;
}

id sub_10060CEEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TextActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10060CF94()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_100960F60);
  sub_10000A61C(v0, qword_100960F60);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_10060D030()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_1009A2678);
  sub_10000A61C(v4, qword_1009A2678);
  if (qword_100940F38 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1BA0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10060D210(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940F40 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1BB8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10060D3EC()
{
  sub_1000325F0();
  result = sub_100770D9C();
  qword_1009A26C0 = result;
  return result;
}

void sub_10060D420(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10076771C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  if (qword_100940F38 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A1BA0);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_1007626BC();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v46[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel] = sub_1007626AC();
  if (qword_100940F40 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v15, qword_1009A1BB8);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_1007626AC();
  v26 = v46;
  *&v46[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel] = v25;
  v27 = objc_opt_self();
  v28 = sub_10076FF6C();
  v29 = [v27 kitImageNamed:v28];

  if (v29)
  {
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [v30 imageFlippedForRightToLeftLayoutDirection];
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];

    *&v26[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator] = v32;
    v47.receiver = v26;
    v47.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
    [v33 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    if (qword_100941338 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_1009A26C0];
    [v33 _setCornerRadius:20.0];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel]];
    v34 = OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel;
    v35 = *&v33[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel];
    sub_1000325F0();
    v36 = v35;
    v37 = sub_100770D1C();
    [v36 setTextColor:v37];

    [v33 addSubview:*&v33[v34]];
    v38 = OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator;
    v39 = *&v33[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator];
    v40 = sub_100770D4C();
    [v39 setTintColor:v40];

    [v33 addSubview:*&v33[v38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_10060DA10()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel] text];
  if (v2)
  {
    v3 = v2;
    sub_10076FF9C();
  }

  v4 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel] text];
  if (v4)
  {
    v5 = v4;
    sub_10076FF9C();
  }

  [v1 layoutMargins];
  v6 = objc_opt_self();
  v7 = sub_10076FF6C();
  v8 = [v6 kitImageNamed:v7];

  if (v8)
  {
    v9 = [v8 imageWithRenderingMode:2];

    v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
    [v10 size];

    if (qword_100940F38 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D3DC();
    sub_10000A61C(v11, qword_1009A1BA0);
    v12 = sub_10076C04C();
    v20 = v12;
    v13 = sub_10004C7BC();
    v21 = v13;
    v14 = sub_10000DB7C(v19);
    v15 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v16 = *(*(v12 - 8) + 104);
    v16(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
    sub_10076C90C();
    sub_10000CD74(v19);
    sub_10076991C();
    if (qword_100940F40 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v11, qword_1009A1BB8);
    v20 = v12;
    v21 = v13;
    v17 = sub_10000DB7C(v19);
    v16(v17, v15, v12);
    sub_10076C90C();
    sub_10000CD74(v19);
    sub_10076991C();
    if (qword_100941320 != -1)
    {
      swift_once();
    }

    v18 = sub_10076D9AC();
    sub_10000A61C(v18, qword_1009A2678);
    sub_10076D42C();
    if (qword_100941328 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v18, qword_1009A2690);
    sub_10076D42C();
    if (qword_100941330 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v18, qword_1009A26A8);
    sub_10076D3FC();
  }

  else
  {
    __break(1u);
  }
}

id sub_10060DF80()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_disclosureIndicator];
  v8 = [v7 isHidden];
  sub_10076422C();
  if (v8)
  {
    Width = CGRectGetWidth(*&v9);
  }

  else
  {
    [v7 sizeThatFits:{v11, v12}];
    v15 = v14;
    v17 = v16;
    sub_10076422C();
    v18 = CGRectGetMaxX(v35) - v15;
    sub_10076422C();
    v19 = CGRectGetMidY(v36) + v17 * -0.5;
    sub_10076422C();
    sub_100770A4C();
    [v7 setFrame:?];
    sub_10076422C();
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v15;
    v38.size.height = v17;
    Width = v20 - (CGRectGetWidth(v38) + 24.0);
  }

  if (qword_100941320 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D9AC();
  sub_10000A61C(v21, qword_1009A2678);
  sub_10076D17C();
  sub_10076D40C();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel];
  sub_10076422C();
  [v25 sizeThatFits:{Width, CGRectGetHeight(v39)}];
  v27 = v26;
  sub_10076422C();
  MinX = CGRectGetMinX(v40);
  sub_10076422C();
  MinY = CGRectGetMinY(v41);
  [v25 firstBaselineFromTop];
  v31 = MinY + v23 - v30;
  sub_10076422C();
  sub_100770A4C();
  [v25 setFrame:?];
  if (qword_100941328 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v21, qword_1009A2690);
  sub_10076D17C();
  sub_10076D40C();
  v24(v6, v2);
  v32 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel];
  sub_10076422C();
  [v32 sizeThatFits:{Width, CGRectGetHeight(v42)}];
  sub_10076422C();
  CGRectGetMinX(v43);
  v44.origin.x = MinX;
  v44.origin.y = v31;
  v44.size.width = Width;
  v44.size.height = v27;
  CGRectGetMaxY(v44);
  [v32 firstBaselineFromTop];
  sub_10076422C();
  sub_100770A4C();
  return [v32 setFrame:?];
}

id sub_10060E3F0(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_100941318 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_100960F60);
    v7 = v1;
    sub_10075FDCC();

    [*&v7[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_descriptionLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC20ProductPageExtension16StandardLinkView_summaryLabel] setTextAlignment:v8];
  }

  return result;
}

void sub_10060E650()
{
  v0 = objc_opt_self();
  v1 = sub_10076FF6C();
  v2 = [v0 kitImageNamed:v1];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];

    v4 = [v3 imageFlippedForRightToLeftLayoutDirection];
    [v4 size];

    if (qword_100940F38 != -1)
    {
      swift_once();
    }

    v5 = sub_10076D3DC();
    sub_10000A61C(v5, qword_1009A1BA0);
    v6 = sub_10076C04C();
    v14 = v6;
    v7 = sub_10004C7BC();
    v15 = v7;
    v8 = sub_10000DB7C(v13);
    v9 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v10 = *(*(v6 - 8) + 104);
    v10(v8, enum case for Feature.measurement_with_labelplaceholder(_:), v6);
    sub_10076C90C();
    sub_10000CD74(v13);
    sub_10076991C();
    if (qword_100940F40 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v5, qword_1009A1BB8);
    v14 = v6;
    v15 = v7;
    v11 = sub_10000DB7C(v13);
    v10(v11, v9, v6);
    sub_10076C90C();
    sub_10000CD74(v13);
    sub_10076991C();
    if (qword_100941320 != -1)
    {
      swift_once();
    }

    v12 = sub_10076D9AC();
    sub_10000A61C(v12, qword_1009A2678);
    sub_10076D42C();
    if (qword_100941328 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v12, qword_1009A2690);
    sub_10076D42C();
    if (qword_100941330 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v12, qword_1009A26A8);
    sub_10076D3FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10060EB20()
{
  v22 = sub_10076B6EC();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C24C();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = sub_10076461C();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC20ProductPageExtension28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v23.receiver = v15;
  v23.super_class = v14;
  v17 = objc_msgSendSuper2(&v23, "init");
  sub_10076460C();
  sub_10076C2FC();
  v12(v9, v6);
  sub_1000E62EC(v17);

  sub_10076465C();
  sub_10076B6BC();
  sub_10060EE0C(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  v18 = v22;
  sub_10077124C();
  v19 = *(v0 + 8);
  v19(v2, v18);
  return (v19)(v5, v18);
}

uint64_t sub_10060EE0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t Badge.enrich(objectGraph:)(uint64_t a1)
{
  v57 = a1;
  v1 = sub_10076111C();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v3 = v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v4 - 8);
  v6 = v51 - v5;
  v7 = sub_10075DB7C();
  v58 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076C45C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100960FB8);
  v14 = sub_10076FCEC();
  sub_10076B48C();
  if ((*(v11 + 88))(v13, v10) == enum case for BadgeType.friendsPlaying(_:))
  {
    v15 = sub_10076B4CC();
    v16 = sub_10076ABCC();
    if (*(v15 + 16))
    {
      v18 = sub_100561E0C(v16, v17);
      v20 = v19;

      if ((v20 & 1) == 0)
      {
        goto LABEL_15;
      }

      sub_10000CD08(*(v15 + 56) + 32 * v18, &v59);

      sub_100016F40(0, &qword_1009492D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_16;
      }

      v21 = v63;
      v22 = [v63 integerValue];

      v23 = sub_10076B4CC();
      v24 = sub_10076B0CC();
      if (*(v23 + 16))
      {
        v53 = v22;
        v54 = sub_100561E0C(v24, v25);
        v27 = v26;

        if (v27)
        {
          sub_10000CD08(*(v23 + 56) + 32 * v54, &v59);

          if (swift_dynamicCast())
          {
            v28 = v63;
            v29 = [v63 integerValue];

            v30 = sub_10076B4CC();
            v31 = sub_100765B9C();
            if (*(v30 + 16))
            {
              v54 = v29;
              v33 = sub_100561E0C(v31, v32);
              v35 = v34;

              if (v35)
              {
                sub_10000CD08(*(v30 + 56) + 32 * v33, &v59);

                if (swift_dynamicCast())
                {
                  v36 = v63;
                  v37 = v64;
                  v59 = 0;
                  v60 = 0xE000000000000000;
                  sub_10077145C(91);
                  v65._countAndFlagsBits = 0xD000000000000059;
                  v65._object = 0x80000001007F24B0;
                  sub_1007700CC(v65);
                  v66._countAndFlagsBits = v36;
                  v66._object = v37;
                  sub_1007700CC(v66);

                  sub_10075DB6C();

                  v38 = v58;
                  if ((*(v58 + 48))(v6, 1, v7) != 1)
                  {
                    (*(v38 + 32))(v9, v6, v7);
                    sub_100760C4C();
                    v51[1] = sub_10076F64C();
                    sub_10076FC1C();
                    v52 = v59;
                    sub_10000A5D4(&qword_100960FC0);
                    v40 = (sub_10000A5D4(&qword_100948D78) - 8);
                    v41 = (*(*v40 + 80) + 32) & ~*(*v40 + 80);
                    v42 = swift_allocObject();
                    *(v42 + 16) = xmmword_100783DD0;
                    v43 = v42 + v41;
                    v44 = v40[14];
                    v59 = 0xD000000000000015;
                    v60 = 0x80000001007F2510;
                    sub_10077140C();
                    (*(v38 + 16))(v43 + v44, v9, v7);
                    sub_1000FDB2C(v42);
                    swift_setDeallocating();
                    sub_10000CFBC(v43, &qword_100948D78);
                    swift_deallocClassInstance();
                    sub_10076110C();
                    sub_10076421C();
                    sub_10076FC1C();
                    sub_100611394(&qword_100960FC8, &type metadata accessor for ShelvesIntent);
                    v45 = v56;
                    sub_10076420C();
                    v46 = swift_allocObject();
                    swift_weakInit();
                    v47 = swift_allocObject();
                    v47[2] = v46;
                    v47[3] = 0xD000000000000015;
                    v47[4] = 0x80000001007F2510;
                    v47[5] = v14;
                    v48 = v52;
                    v47[6] = v53;
                    v47[7] = v48;
                    v47[8] = v54;
                    v49 = sub_100016F40(0, &qword_1009471F0);

                    v50 = sub_10077068C();
                    v61 = v49;
                    v62 = &protocol witness table for OS_dispatch_queue;
                    v59 = v50;
                    sub_10076FC6C();

                    (*(v55 + 8))(v3, v45);
                    (*(v58 + 8))(v9, v7);
                    sub_10000CD74(&v59);
                    return v14;
                  }

                  sub_10000CFBC(v6, &unk_1009435D0);
                }

                goto LABEL_16;
              }

              goto LABEL_15;
            }

            goto LABEL_14;
          }

LABEL_16:
          v59 = 0;
          sub_10076FCBC();
          return v14;
        }

LABEL_15:

        goto LABEL_16;
      }
    }

LABEL_14:

    goto LABEL_15;
  }

  v59 = 0;
  sub_10076FCBC();
  (*(v11 + 8))(v13, v10);
  return v14;
}

uint64_t sub_10060F6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v49 = a7;
  v12 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v12 - 8);
  v53 = v43 - v13;
  v14 = sub_10075F53C();
  __chkstk_darwin(v14 - 8);
  v52 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076300C();
  __chkstk_darwin(v16 - 8);
  v51 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&qword_100961020);
  __chkstk_darwin(v18 - 8);
  v54 = v43 - v19;
  v20 = sub_10076C45C();
  __chkstk_darwin(v20 - 8);
  v21 = sub_10076A32C();
  __chkstk_darwin(v21 - 8);
  v23 = v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = sub_10075F9AC();
    v55 = a3;
    v56 = a4;

    sub_10077140C();
    if (*(v25 + 16) && (sub_10060FEFC(v57), (v26 & 1) != 0))
    {

      sub_100016C74(v57);

      v27 = sub_10076B75C();

      v28 = sub_100541668(v27);

      if (v28)
      {
        v29 = v28 >> 62;
        if (v28 >> 62)
        {
LABEL_34:
          v30 = sub_10077158C();
          if (v30 >= 1)
          {
LABEL_7:
            v44 = v30;
            if (v30 < a6)
            {
              a6 = v30;
            }

            sub_10076A31C();
            v46 = type metadata accessor for AvatarShowcaseView();
            v31 = objc_allocWithZone(v46);
            v45 = sub_10005615C(a6, v23);
            v57[0] = _swiftEmptyArrayStorage;
            v47 = a5;
            if (v29)
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = sub_10077158C();
            }

            else
            {
              v29 = v28 & 0xFFFFFFFFFFFFFF8;
              a6 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v32 = 0;
            a5 = v28 & 0xC000000000000001;
            v48 = _swiftEmptyArrayStorage;
            while (a6 != v32)
            {
              if (a5)
              {
                sub_10077149C();
                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
                  goto LABEL_32;
                }
              }

              else
              {
                if (v32 >= *(v29 + 16))
                {
                  goto LABEL_33;
                }

                v33 = v32 + 1;
                if (__OFADD__(v32, 1))
                {
LABEL_32:
                  __break(1u);
LABEL_33:
                  __break(1u);
                  goto LABEL_34;
                }
              }

              v23 = sub_10076271C();

              ++v32;
              if (v23)
              {
                sub_10077019C();
                if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_10077021C();
                }

                sub_10077025C();
                v48 = v57[0];
                v32 = v33;
              }
            }

            v34 = v45;
            sub_1000564CC(v48, v49);

            v35 = v50;
            if (v44 <= v50)
            {
              v36._object = 0x80000001007F2560;
              v36._countAndFlagsBits = 0xD00000000000001DLL;
              v35 = v44;
            }

            else
            {
              v36._countAndFlagsBits = 0xD000000000000021;
              v36._object = 0x80000001007F2580;
            }

            v58._countAndFlagsBits = 0;
            v58._object = 0xE000000000000000;
            v50 = sub_100767D6C(v36, v35, v58);
            v49 = v37;
            sub_10076B46C();
            sub_10076B48C();
            sub_10076B47C();
            v48 = sub_10076B4DC();
            v44 = v38;
            v43[3] = sub_10076B3DC();
            v43[2] = v39;
            sub_10000A5D4(&qword_100952410);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_100783DD0;
            *(inited + 32) = sub_10075E51C();
            *(inited + 72) = v46;
            *(inited + 40) = v41;
            *(inited + 48) = v34;
            v46 = v34;
            v45 = sub_1000FD3F0(inited);
            swift_setDeallocating();
            sub_10000CFBC(inited + 32, &qword_100948BD0);
            sub_10076B3FC();
            sub_10076B49C();
            v43[1] = sub_10076B42C();
            v43[0] = v42;
            sub_10076B43C();
            sub_10076B3CC();
            sub_10076B4AC();
            sub_10076B41C();
            sub_10076B4EC();
            swift_allocObject();
            v57[0] = sub_10076B45C();

            sub_10076FCBC();
          }
        }

        else
        {
          v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30 >= 1)
          {
            goto LABEL_7;
          }
        }
      }
    }

    else
    {

      sub_100016C74(v57);
    }

    v57[0] = 0;
    sub_10076FCBC();
  }

  return result;
}

uint64_t sub_10060FE2C()
{
  sub_10000A5D4(&unk_1009434B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100783DD0;
  swift_getErrorValue();
  *(v0 + 56) = v3;
  v1 = sub_10000DB7C((v0 + 32));
  (*(*(v3 - 8) + 16))(v1);
  sub_10077173C();
}

unint64_t sub_10060FEFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1007713DC(*(v2 + 40));

  return sub_100610B30(a1, v4);
}

unint64_t sub_10060FF40(uint64_t a1)
{
  v2 = sub_10077174C();

  return sub_100610BF8(a1, v2);
}

unint64_t sub_10060FF84(unsigned __int8 a1)
{
  sub_10077175C();
  if ((a1 - 4) >= 3u)
  {
    sub_10077176C(2uLL);
    v2 = a1;
  }

  else
  {
    v2 = qword_1007AFDC8[(a1 - 4)];
  }

  sub_10077176C(v2);
  v3 = sub_1007717AC();

  return sub_100610C64(a1, v3);
}

unint64_t sub_100610020(double *a1)
{
  sub_10077175C();
  sub_100529668(v4);
  v2 = sub_1007717AC();

  return sub_100610D1C(a1, v2);
}

unint64_t sub_100610090(uint64_t a1)
{
  sub_10076FF9C();
  sub_10077175C();
  sub_10077008C();
  v2 = sub_1007717AC();

  return sub_1006111F4(a1, v2);
}

unint64_t sub_100610120(Swift::UInt a1, Swift::UInt a2, double a3)
{
  sub_10077175C();
  sub_10077176C(a1);
  sub_10077176C(a2);
  v6 = 0.0;
  if (a3 != 0.0)
  {
    v6 = a3;
  }

  sub_10077178C(*&v6);
  v7 = sub_1007717AC();

  return sub_100610E54(a1, a2, v7, a3);
}

unint64_t sub_1006101C8(uint64_t a1)
{
  sub_10076B96C();
  sub_100611394(&unk_10094E820, &type metadata accessor for AdamId);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for AdamId, &qword_100947768, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
}

unint64_t sub_10061029C(double a1, double a2)
{
  sub_10077175C();
  sub_10013B47C(a1, a2);
  v4 = sub_1007717AC();

  return sub_100610EE0(v4, a1, a2);
}

unint64_t sub_100610310(uint64_t a1)
{
  sub_1007626DC();
  sub_100611394(&qword_100946550, &type metadata accessor for EditorialPageKey);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for EditorialPageKey, &qword_100946558, &type metadata accessor for EditorialPageKey, &protocol conformance descriptor for EditorialPageKey);
}

unint64_t sub_1006103E4(uint64_t a1)
{
  sub_10076C02C();
  sub_100611394(&qword_10094E848, &type metadata accessor for Artwork);
  v2 = sub_10076FEAC();
  return sub_1006110F8(a1, v2);
}

unint64_t sub_100610490(uint64_t a1)
{
  sub_10076FB1C();
  sub_100611394(&qword_100961010, &type metadata accessor for MetricsFieldExclusionRequest);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for MetricsFieldExclusionRequest, &qword_100961018, &type metadata accessor for MetricsFieldExclusionRequest, &protocol conformance descriptor for MetricsFieldExclusionRequest);
}

unint64_t sub_100610564(uint64_t a1)
{
  sub_10076FB6C();
  sub_100611394(&qword_10094B0D0, &type metadata accessor for MetricsFieldInclusionRequest);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for MetricsFieldInclusionRequest, &qword_10094B0D8, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
}

unint64_t sub_100610638(uint64_t a1)
{
  sub_10075F8DC();
  sub_100611394(&qword_100961000, &type metadata accessor for PageFacets.Facet);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for PageFacets.Facet, &qword_100961008, &type metadata accessor for PageFacets.Facet, &protocol conformance descriptor for PageFacets.Facet);
}

unint64_t sub_10061070C(uint64_t a1)
{
  sub_10076186C();
  sub_100611394(&qword_100960FE0, &type metadata accessor for OfferTitleType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for OfferTitleType, &qword_100960FE8, &type metadata accessor for OfferTitleType, &protocol conformance descriptor for OfferTitleType);
}

unint64_t sub_1006107E0(uint64_t a1)
{
  sub_1007651BC();
  sub_100611394(&qword_100960FD0, &type metadata accessor for SearchAdOpportunity.LifecycleEventType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &qword_100960FD8, &type metadata accessor for SearchAdOpportunity.LifecycleEventType, &protocol conformance descriptor for SearchAdOpportunity.LifecycleEventType);
}

unint64_t sub_1006108B4(uint64_t a1)
{
  sub_10076C45C();
  sub_100611394(&qword_10094D268, &type metadata accessor for BadgeType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for BadgeType, &qword_100960FF0, &type metadata accessor for BadgeType, &protocol conformance descriptor for BadgeType);
}

unint64_t sub_100610988(uint64_t a1)
{
  sub_100761D3C();
  sub_100611394(&qword_10094D270, &type metadata accessor for AdPlacementType);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for AdPlacementType, &qword_100960FF8, &type metadata accessor for AdPlacementType, &protocol conformance descriptor for AdPlacementType);
}

unint64_t sub_100610A5C(uint64_t a1)
{
  sub_10075E11C();
  sub_100611394(&qword_10094E860, &type metadata accessor for IndexPath);
  v2 = sub_10076FEAC();
  return sub_100610F58(a1, v2, &type metadata accessor for IndexPath, &qword_100947F00, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
}

unint64_t sub_100610B30(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10008C3EC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1007713EC();
      sub_100016C74(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100610BF8(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610C64(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 6:
          if (a1 == 6)
          {
            return result;
          }

          break;
        case 5:
          if (a1 == 5)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 7 <= 0xFFFFFFFC && v7 == a1)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610D1C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for Accessory() - 8;
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_10024DFF0(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_10052A9D0(v8, a1);
      sub_100036758(v8);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_100610E54(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = -1 << *(v4 + 32);
  result = a3 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      v12 = *v9 == a1 && *(v9 + 8) == a2;
      if (v10 != a4)
      {
        v12 = 0;
      }

      if (v12)
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610EE0(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_100610F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_100611394(v24, v25);
      v20 = sub_10076FF1C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1006110F8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_10076C02C();
    sub_100611394(&unk_10094BB10, &type metadata accessor for Artwork);
    do
    {
      if (sub_10076FF1C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1006111F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10076FF9C();
      v8 = v7;
      if (v6 == sub_10076FF9C() && v8 == v9)
      {
        break;
      }

      v11 = sub_10077167C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1006112F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100611330()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100611394(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1006113E0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_gradientView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_artworkView;
  sub_10075FD2C();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets];
  v12 = *&UIEdgeInsetsZero.bottom;
  *v11 = *&UIEdgeInsetsZero.top;
  *(v11 + 1) = v12;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_artworkView]];
  return v13;
}

uint64_t sub_1006115B8(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v23 = a4;
  v24 = a5;
  v21 = a3;
  v22 = a2;
  v7 = sub_1007621EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  (*(v8 + 16))(v10, a1, v7);
  if ((*(v8 + 88))(v10, v7) == enum case for ShelfBackground.artwork(_:))
  {
    (*(v8 + 96))(v10, v7);
    v11 = *(sub_10000A5D4(&qword_10094E098) + 48);
    [v5 frame];
    sub_10076BFCC();
    sub_10076BE1C();
    sub_10075FB8C();
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v12 = sub_1007659CC();
    (*(*(v12 - 8) + 8))(&v10[v11], v12);
  }

  else
  {
    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760BFC();
    (*(v8 + 8))(v10, v7);
  }

  v13 = &v5[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets];
  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets];
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets + 16];
  v17 = v21.n128_f64[0];
  *&v16.f64[0] = v22.n128_u64[0];
  *v13 = v22.n128_f64[0];
  v13[1] = v17;
  *&v19.f64[0] = v23.n128_u64[0];
  v18 = v24.n128_f64[0];
  v13[2] = v23.n128_f64[0];
  v13[3] = v18;
  v16.f64[1] = v17;
  v19.f64[1] = v18;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v14, v16), vceqq_f64(v15, v19)))) & 1) == 0)
  {
    [v5 setNeedsLayout];
  }
}

id sub_1006118FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1006119A4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_gradientView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_artworkView;
  sub_10075FD2C();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension28ArtworkSectionBackgroundView_insets);
  v4 = *&UIEdgeInsetsZero.bottom;
  *v3 = *&UIEdgeInsetsZero.top;
  v3[1] = v4;
  sub_10077156C();
  __break(1u);
}

uint64_t AXArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  v13 = *(a2 + 16);
  *(a7 + 400) = *a2;
  *(a7 + 416) = v13;
  *(a7 + 432) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 440) = *a3;
  *(a7 + 456) = v14;
  *(a7 + 472) = *(a3 + 32);
  sub_100012498(a4, a7 + 480);
  sub_100012498(a5, a7 + 520);

  return sub_100012498(a6, a7 + 560);
}

uint64_t AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v80 = a2;
  v81 = sub_10076D1FC();
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v6 + 10, v6[13]);
  sub_1000FF02C();
  sub_10076D40C();
  v73 = v18;
  v19 = *(v15 + 8);
  v19(v17, v14);
  sub_10000CF78(v7, v7[3]);
  sub_1000FF02C();
  sub_10076D40C();
  v21 = v20;
  v19(v17, v14);
  sub_10000CF78(v7 + 5, v7[8]);
  sub_1000FF02C();
  sub_10076D40C();
  v23 = v22;
  *&v78[0] = v19;
  v19(v17, v14);
  ObjectType = swift_getObjectType();
  v24 = sub_100613810(a1, v6, ObjectType, a5, a6);
  if (v21 > v24)
  {
    v24 = v21;
  }

  if (v24 >= v23)
  {
    v24 = v23;
  }

  v71 = v24;
  sub_100102958((v6 + 50), &v87);
  v25 = v89;
  if (v89)
  {
    sub_100012498(&v87, v82);
    sub_10000CF78(v82, v83);
    sub_10076D2BC();
    v27 = v26;
    v29 = v28;
    v95.origin.x = a3;
    v95.origin.y = a4;
    v95.size.width = a5;
    v95.size.height = a6;
    v30 = CGRectGetMidX(v95) + v27 * -0.5;
    v96.origin.x = a3;
    v96.origin.y = a4;
    v96.size.width = a5;
    v96.size.height = a6;
    MinY = CGRectGetMinY(v96);
    sub_10000CF78(v82, v83);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v82);
  }

  else
  {
    sub_10000CFBC(&v87, &unk_10094DA00);
    v30 = 0.0;
    MinY = 0.0;
    v27 = 0.0;
    v29 = 0.0;
  }

  *&v75 = v6 + 35;
  sub_100102958((v6 + 55), &v87);
  v74 = a6;
  if (v89)
  {
    sub_100012498(&v87, v82);
    if (v25)
    {
      v97.origin.x = v30;
      v97.origin.y = MinY;
      v97.size.width = v27;
      v97.size.height = v29;
      MaxY = CGRectGetMaxY(v97);
    }

    else
    {
      v98.origin.x = a3;
      v98.origin.y = a4;
      v98.size.width = a5;
      v98.size.height = a6;
      MaxY = CGRectGetMinY(v98);
    }

    v40 = v73 + MaxY;
    v99.origin.x = a3;
    v99.origin.y = a4;
    v99.size.width = a5;
    v99.size.height = a6;
    MinX = CGRectGetMinX(v99);
    v100.origin.x = a3;
    v100.origin.y = a4;
    v100.size.width = a5;
    v100.size.height = a6;
    Width = CGRectGetWidth(v100);
    sub_10000CF78(v82, v83);
    v34 = a5;
    v35 = a4;
    v72 = Width;
    v73 = v40;
    v38 = v71;
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(v82);
  }

  else
  {
    sub_10000CFBC(&v87, &unk_10094DA00);
    if (v25)
    {
      v33 = v30;
    }

    else
    {
      v33 = a3;
    }

    v34 = a5;
    v35 = a4;
    if (v25)
    {
      v36 = MinY;
    }

    else
    {
      v36 = a4;
    }

    if (v25)
    {
      v37 = v27;
    }

    else
    {
      v37 = 0.0;
    }

    v72 = v37;
    v73 = v36;
    if (v25)
    {
      v38 = v29;
    }

    else
    {
      v38 = 0.0;
    }

    MinX = v33;
  }

  v71 = MinX;
  sub_10000CF78(v6 + 20, v6[23]);
  sub_1000FF02C();
  sub_10076D40C();
  v43 = v42;
  v44 = v78[0];
  (*&v78[0])(v17, v14);
  sub_10000CF78(v6 + 15, v6[18]);
  sub_1000FF02C();
  sub_10076D40C();
  v46 = v45;
  (*&v44)(v17, v14);
  sub_10000CF78(v6 + 25, v6[28]);
  sub_1000FF02C();
  sub_10076D40C();
  v48 = v47;
  (*&v44)(v17, v14);
  sub_10000A570((v6 + 30), v90);
  v49 = *(v75 + 32);
  v50 = *(v75 + 16);
  *v78 = *v75;
  v75 = v50;
  sub_10000A570((v6 + 40), &v93);
  sub_10000A570((v6 + 45), &v94);
  *&v87 = v46;
  *(&v87 + 1) = v43;
  v88 = v48;
  v89 = v43;
  v91 = v75;
  *&v90[40] = *v78;
  v92 = v49;
  sub_100202CC0(&v87, v82);
  sub_10000A570((v6 + 60), &v84);
  sub_10000A570((v6 + 65), &v85);
  sub_10000A570((v6 + 70), &v86);
  v101.origin.x = a3;
  v101.origin.y = v35;
  v101.size.width = v34;
  v51 = v34;
  v52 = v74;
  v101.size.height = v74;
  v53 = CGRectGetMinX(v101);
  v102.origin.x = MinX;
  v55 = v72;
  v54 = v73;
  v102.origin.y = v73;
  v102.size.width = v72;
  v102.size.height = v38;
  v70 = CGRectGetMaxY(v102);
  v103.origin.x = a3;
  v103.origin.y = v35;
  v103.size.width = v51;
  v103.size.height = v52;
  v56 = CGRectGetWidth(v103);
  v78[0] = a3;
  v104.origin.x = a3;
  v57 = v53;
  v58 = v56;
  *&v75 = v35;
  v104.origin.y = v35;
  v104.size.width = v51;
  v104.size.height = v52;
  v59 = CGRectGetMaxY(v104);
  v105.size.height = v38;
  v60 = v59;
  v105.origin.y = v54;
  v105.size.width = v55;
  v61 = v70;
  v105.origin.x = v71;
  v62 = v60 - CGRectGetMaxY(v105);
  sub_100613BBC(v58, a1, v82);
  v64 = v63;
  v106.origin.x = v57;
  v106.origin.y = v61;
  v106.size.width = v58;
  v106.size.height = v62;
  if (v64 <= CGRectGetHeight(v106))
  {
    v65 = v77;
    sub_10061259C(v77, v57, v61, v58, v62);
  }

  else
  {
    v65 = v77;
    sub_100612AA8(a1, v77, v57, v61, v58, v62);
  }

  sub_10076D1EC();
  sub_10076D1DC();
  v66 = v78[0];
  v107.origin.x = v78[0];
  v67 = *&v75;
  *&v107.origin.y = v75;
  v107.size.width = v51;
  v107.size.height = v52;
  CGRectGetHeight(v107);
  v108.origin.x = v66;
  v108.origin.y = v67;
  v108.size.width = v51;
  v108.size.height = v52;
  CGRectGetMinX(v108);
  v109.origin.x = v66;
  v109.origin.y = v67;
  v109.size.width = v51;
  v109.size.height = v52;
  CGRectGetMinY(v109);
  v110.origin.x = v66;
  v110.origin.y = v67;
  v110.size.width = v51;
  v110.size.height = v52;
  CGRectGetWidth(v110);
  sub_10076D1BC();
  (*(v79 + 8))(v65, v81);
  sub_10020332C(v82);
  return sub_100203380(&v87);
}

double AXArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(v3, v3[3]);
  sub_1000FF02C();
  sub_10076D40C();
  v11 = *(v8 + 8);
  v11(v10, v7);
  ObjectType = swift_getObjectType();
  sub_100613810(a1, v3, ObjectType, a2, a3);
  sub_10000CF78(v3 + 5, v3[8]);
  sub_1000FF02C();
  sub_10076D40C();
  v11(v10, v7);
  return a2;
}

void AXArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t sub_10061259C@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v6 = v5;
  v22[3] = a1;
  v11 = sub_10077164C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + 8);
  v16 = *(v5 + 24);
  sub_10000CF78((v5 + 112), *(v5 + 136));
  sub_1000FF02C();
  sub_10076D40C();
  v22[1] = v17;
  v18 = *(v12 + 8);
  v18(v14, v11);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  v19 = CGRectGetWidth(v23) - v15 - v16;
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  sub_10000CF78(v6 + 24, v6[27]);
  *&v22[2] = v19;
  sub_10076D2BC();
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  CGRectGetMidX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  CGRectGetMinY(v26);
  sub_10000CF78(v6 + 24, v6[27]);
  sub_100770A4C();
  sub_10076D23C();
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  CGRectGetMaxY(v27);
  sub_10000CF78(v6 + 19, v6[22]);
  sub_1000FF02C();
  sub_10076D40C();
  v18(v14, v11);
  sub_10000CF78(v6 + 34, v6[37]);
  v20 = sub_10076D24C();
  sub_10000CF78(v6 + 34, v6[37]);
  if ((v20 & 1) == 0)
  {
    sub_10076D2BC();
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetMidX(v28);
    sub_10000CF78((v5 + 272), *(v5 + 296));
    sub_100770A4C();
  }

  sub_10076D23C();
  sub_10000CF78((v5 + 232), *(v5 + 256));
  if (sub_10076D24C())
  {
    sub_10000CF78((v5 + 232), *(v5 + 256));
  }

  else
  {
    v29.origin.x = a2;
    v29.origin.y = a3;
    v29.size.width = a4;
    v29.size.height = a5;
    CGRectGetWidth(v29);
    sub_10000CF78((v5 + 32), *(v5 + 56));
    sub_1000FF02C();
    sub_10076D40C();
    v18(v14, v11);
    v30.origin.x = a2;
    v30.origin.y = a3;
    v30.size.width = a4;
    v30.size.height = a5;
    CGRectGetMidX(v30);
    sub_10000CF78((v5 + 232), *(v5 + 256));
    sub_100770A4C();
  }

  sub_10076D23C();
  return sub_10076D1BC();
}

uint64_t sub_100612AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v60 = a1;
  v66 = a2;
  v83 = sub_1007653CC();
  v75 = *(v83 - 8);
  v88 = v75;
  __chkstk_darwin(v83);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1007653EC();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_10076540C();
  v89 = *(v86 - 8);
  __chkstk_darwin(v86);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v15;
  v65 = sub_10076543C();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10077164C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *v6;
  v61 = *(v6 + 8);
  v21 = v61;
  v23 = *(v6 + 16);
  v24 = *(v6 + 24);
  v98.origin.x = a3;
  v98.origin.y = a4;
  v98.size.width = a5;
  v98.size.height = a6;
  v62 = CGRectGetWidth(v98) - v21 - v24;
  v99.origin.x = a3;
  v99.origin.y = a4;
  v99.size.width = a5;
  v99.size.height = a6;
  CGRectGetWidth(v99);
  sub_10000CF78((v6 + 32), *(v6 + 56));
  sub_1000FF02C();
  sub_10076D40C();
  (*(v18 + 8))(v20, v17);
  sub_10000A5D4(&qword_10094F2A8);
  v25 = *(sub_10076541C() - 8);
  v56 = *(v25 + 72);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v58 = 2 * v56;
  v27 = swift_allocObject();
  v84 = xmmword_100783C60;
  v59 = v27;
  *(v27 + 16) = xmmword_100783C60;
  v68 = v27 + v26;
  v80 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v28 = *(v89 + 104);
  v81 = v89 + 104;
  v82 = v28;
  v28(v15);
  v79 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v29 = v87;
  v30 = *(v87 + 104);
  v77 = v87 + 104;
  v78 = v30;
  v31 = v55;
  v32 = v85;
  v30(v55);
  v96 = &type metadata for CGFloat;
  v97 = &protocol witness table for CGFloat;
  v95 = v22;
  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  v92 = v23;
  v76 = sub_10000A5D4(&unk_100959500);
  v67 = *(v75 + 72);
  v33 = v88;
  v75 = *(v88 + 80);
  v54 = (v75 + 32) & ~v75;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100783DD0;
  sub_10076539C();
  v91 = v34;
  v73 = sub_10061432C();
  v72 = sub_10000A5D4(&qword_100959510);
  v74 = sub_1004ACA24();
  v35 = v57;
  v36 = v83;
  sub_1007712CC();
  v37 = v52;
  sub_1007653FC();
  v38 = *(v33 + 8);
  v88 = v33 + 8;
  v69 = v38;
  v39 = v35;
  v38(v35, v36);
  v40 = *(v29 + 8);
  v87 = v29 + 8;
  v71 = v40;
  v40(v31, v32);
  v41 = *(v89 + 8);
  v89 += 8;
  v70 = v41;
  v42 = v86;
  v41(v37, v86);
  sub_10000CFBC(&v92, &unk_100943240);
  sub_10000CD74(&v95);
  sub_10000CF78((v7 + 232), *(v7 + 256));
  sub_10076D28C();
  v82(v37, v80, v42);
  v78(v31, v79, v32);
  v53 = sub_10076D67C();
  v93 = v53;
  v94 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v92);
  sub_10076D66C();
  sub_10000A570(v7 + 112, &v91);
  v43 = swift_allocObject();
  *(v43 + 16) = v84;
  sub_1007653BC();
  sub_10076539C();
  sub_1007653AC();
  v90 = v43;
  v44 = v39;
  v45 = v83;
  sub_1007712CC();
  sub_1007653FC();
  v69(v44, v45);
  sub_10000CFBC(&v91, &unk_100943240);
  v46 = v85;
  v71(v31, v85);
  v47 = v86;
  v70(v37, v86);
  sub_10000CD74(&v95);
  sub_10000CD74(&v92);
  v82(v37, v80, v47);
  v78(v31, v79, v46);
  v96 = v53;
  v97 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v95);
  sub_10076D66C();
  sub_10000A570(v7 + 152, &v92);
  v48 = swift_allocObject();
  *(v48 + 16) = v84;
  sub_1007653BC();
  sub_10076539C();
  sub_1007653AC();
  v91 = v48;
  sub_1007712CC();
  sub_1007653FC();
  v69(v44, v45);
  sub_10000CFBC(&v92, &unk_100943240);
  v71(v31, v85);
  v70(v37, v86);
  sub_10000CD74(&v95);
  v49 = v63;
  sub_1007653DC();
  v100.origin.x = a3;
  v100.origin.y = a4;
  v100.size.width = a5;
  v100.size.height = a6;
  CGRectGetMinX(v100);
  v101.origin.x = a3;
  v101.origin.y = a4;
  v101.size.width = a5;
  v101.size.height = a6;
  CGRectGetMinY(v101);
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetHeight(v102);
  sub_10076538C();
  return (*(v64 + 8))(v49, v65);
}

uint64_t sub_1006136BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  swift_getObjectType();
  sub_100613BBC(a5, a1, v6);
  v14 = v13;
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a5;
  v17.size.height = a6;
  if (v14 <= CGRectGetHeight(v17))
  {

    return sub_10061259C(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_100612AA8(a1, a2, a3, a4, a5, a6);
  }
}

double sub_1006137B4(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_100613BBC(a2, a1, v2);
}

double sub_100613810(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v34 = a3;
  *&v33 = a2 + 35;
  v9 = sub_10077164C();
  v32 = v9;
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a2 + 20, a2[23]);
  sub_1000FF02C();
  sub_10076D40C();
  v14 = v13;
  v15 = *(v10 + 8);
  v15(v12, v9);
  sub_10000CF78(a2 + 15, a2[18]);
  sub_1000FF02C();
  v16 = a1;
  sub_10076D40C();
  v18 = v17;
  v19 = v32;
  v15(v12, v32);
  sub_10000CF78(a2 + 25, a2[28]);
  sub_1000FF02C();
  sub_10076D40C();
  v21 = v20;
  v15(v12, v19);
  sub_10000A570((a2 + 30), v43);
  v22 = *(v33 + 32);
  v23 = *(v33 + 16);
  v31 = *v33;
  v33 = v23;
  sub_10000A570((a2 + 40), &v46);
  sub_10000A570((a2 + 45), &v47);
  v42[0] = v18;
  v42[1] = v14;
  v42[2] = v21;
  v42[3] = v14;
  v44 = v33;
  *&v43[40] = v31;
  v45 = v22;
  sub_100202CC0(v42, v38);
  sub_10000A570((a2 + 60), &v39);
  sub_10000A570((a2 + 65), &v40);
  sub_10000A570((a2 + 70), &v41);
  sub_10000CF78(a2 + 10, a2[13]);
  sub_1000FF02C();
  sub_10076D40C();
  v25 = v24;
  v15(v12, v19);
  sub_100613BBC(a4, v16, v38);
  v27 = a5 - v25 - v26;
  sub_100102958((a2 + 50), &v35);
  if (v36)
  {
    sub_100012498(&v35, v37);
    sub_10000CF78(v37, v37[3]);
    sub_10076D2BC();
    v29 = v28;
    sub_10020332C(v38);
    sub_100203380(v42);
    v27 = v27 - v29;
    sub_10000CD74(v37);
  }

  else
  {
    sub_10020332C(v38);
    sub_100203380(v42);
    sub_10000CFBC(&v35, &unk_10094DA00);
  }

  return v27;
}

double sub_100613BBC(double a1, uint64_t a2, void *a3)
{
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(a3 + 24, a3[27]);
  sub_10076D2BC();
  sub_10000CF78(a3 + 19, a3[22]);
  sub_1000FF02C();
  sub_10076D40C();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000CF78(a3 + 29, a3[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 4, a3[7]);
    sub_1000FF02C();
    sub_10076D40C();
    v9(v8, v5);
  }

  sub_10000CF78(a3 + 34, a3[37]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 34, a3[37]);
    sub_10076D2BC();
  }

  sub_10000CF78(a3 + 29, a3[32]);
  if ((sub_10076D24C() & 1) == 0)
  {
    sub_10000CF78(a3 + 34, a3[37]);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000CF78(a3 + 14, a3[17]);
      sub_1000FF02C();
      sub_10076D40C();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_100613F04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 600))
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

uint64_t sub_100613F4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 600) = 1;
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

    *(result + 600) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100614040(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_100614088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100614148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 312))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100614190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 312) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 312) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100614230(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_100614264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 192))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1006142AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10061432C()
{
  result = qword_10094F2B0;
  if (!qword_10094F2B0)
  {
    sub_1007653CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F2B0);
  }

  return result;
}

char *sub_100614384(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_pageView;
  type metadata accessor for ArcadeDownloadPackSuggestionsPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton;
  v7 = objc_opt_self();
  *&v2[v6] = [v7 boldButton];
  v8 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton;
  *&v2[v8] = [objc_opt_self() linkButton];
  v9 = OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton;
  *&v2[v9] = [v7 boldButton];
  v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = 3;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_presenter] = a1;
  v10 = *&v2[v5];
  swift_retain_n();
  v11 = v10;

  v12 = sub_1005B6018(a1, v11, a2, v2);
  sub_100615764(&qword_1009610E0, v13, type metadata accessor for ArcadeDownloadPackSuggestionsViewController);
  v14 = v12;

  sub_10076AE5C();

  [*&v14[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton] addTarget:v14 action:"didTapDoneButton" forControlEvents:64];
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton] addTarget:v14 action:"didTapGetAllButtonWithSender:" forControlEvents:64];
  v15 = *(*&v14[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_pageView] + OBJC_IVAR____TtC20ProductPageExtension37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v20[3] = ObjectType;
  v20[4] = &off_10089D280;
  v16 = v15;

  v20[0] = v14;
  v17 = qword_1009A07B8;
  swift_beginAccess();
  sub_1006156A4(v20, v16 + v17);
  swift_endAccess();

  return v14;
}

void sub_10061463C()
{
  v0 = sub_10076C03C();
  v7[3] = v0;
  v7[4] = sub_100615764(&qword_100947230, 255, &type metadata accessor for Feature.iOS);
  v1 = sub_10000DB7C(v7);
  (*(*(v0 - 8) + 104))(v1, enum case for Feature.iOS.arcade_choose_your_favorites_brick_Future(_:), v0);
  LOBYTE(v0) = sub_10076C90C();
  sub_10000CD74(v7);
  if (v0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = sub_10076A79C();
    sub_10000A5D4(&unk_100947120);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    v7[0] = sub_10076A7AC();
    v7[1] = v5;
    sub_10077140C();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = 0xD000000000000017;
    *(inited + 80) = 0x80000001007F27B0;
    sub_1000FCED4(inited);
    swift_setDeallocating();
    sub_10000CFBC(inited + 32, &unk_100948B20);
    isa = sub_10076FE3C().super.isa;

    [v2 postNotificationName:v3 object:0 userInfo:isa];
  }
}

id sub_1006148F4(void *a1)
{
  v25 = a1;
  v2 = sub_10076F08C();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076F0CC();
  v6 = *(v5 - 8);
  v26 = v5;
  v27 = v6;
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F0EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v1[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] = 1;
  sub_10076AE3C();
  sub_10076148C();
  sub_10076F5CC();
  sub_10076142C();
  v17 = v16;

  if (v17 <= 0.0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  v18 = sub_10076AE0C();
  if (v18 == 2 || (v18 & 1) != 0)
  {
    return [v1 dismissViewControllerAnimated:1 completion:{0, v25}];
  }

  [v25 showsBusyIndicator];
  sub_100085204();
  v25 = sub_10077068C();
  sub_10076F0DC();
  sub_10076F15C();
  v20 = *(v10 + 8);
  v20(v12, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_1001D1F90;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089D2B8;
  v22 = _Block_copy(aBlock);
  v23 = v1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100615764(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0);
  sub_1000852B8();
  sub_1007712CC();
  v24 = v25;
  sub_10077064C();
  _Block_release(v22);

  (*(v28 + 8))(v4, v2);
  (*(v27 + 8))(v8, v26);
  return (v20)(v15, v9);
}

void sub_100614DA8(uint64_t a1)
{
  v2 = v1;
  sub_10063336C(a1, *(v1 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeDownloadPackViewController_objectGraph));
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
  v5 = sub_10076A28C();
  if (v5)
  {
    sub_10076B8EC();
    v7 = v6;

    if (v7)
    {
      v5 = sub_10076FF6C();
    }

    else
    {
      v5 = 0;
    }
  }

  [v4 setTitle:v5 forState:0];

  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton);
  v9 = sub_10076FF6C();
  [v8 setAccessibilityIdentifier:v9];

  v10 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton);
  v11 = sub_10076FF6C();
  [v10 setAccessibilityIdentifier:v11];

  v12 = sub_10076FF6C();
  [v4 setAccessibilityIdentifier:v12];

  sub_10076A2CC();
  if (!v13)
  {
    sub_10076A29C();
    v14 = sub_10076B8EC();
    v16 = v15;

    sub_100614F88(a1, v14, v16);
  }

  sub_10073042C();
}

void sub_100614F88(uint64_t a1, uint64_t a2, NSString a3)
{
  v5 = sub_10000A5D4(&qword_1009610D8);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = sub_10076B2EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
  v21 = v3;
  if (a3)
  {
    v12 = sub_10076FF6C();
  }

  else
  {
    v12 = 0;
  }

  [v20 setTitle:v12 forState:{0, v20}];

  v13 = *&v21[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton];
  if (a3)
  {
    a3 = sub_10076FF6C();
  }

  [v13 setTitle:a3 forState:0];

  sub_10076A2BC();
  v14 = sub_10076A28C();
  if (v14)
  {
  }

  v15 = *(v5 + 48);
  (*(v9 + 32))(v7, v11, v8);
  v7[v15] = v14 != 0;
  v16 = (*(v9 + 88))(v7, v8);
  if (v16 == enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.done(_:))
  {
    goto LABEL_9;
  }

  if (v16 != enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:))
  {
    sub_10000CFBC(v7, &qword_1009610D8);
    goto LABEL_14;
  }

  if (!v14)
  {
LABEL_9:
    (*(v9 + 8))(v7, v8);
  }

  else
  {
    (*(v9 + 8))(v7, v8);
    v17 = v21;
    v18 = [v21 buttonTray];
    [v18 addButton:*&v17[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

    v20 = v13;
  }

LABEL_14:
  v19 = [v21 buttonTray];
  [v19 addButton:v20];
}

uint64_t sub_100615278(unsigned __int8 a1)
{
  v2 = v1;
  result = sub_10076AE4C();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = sub_10076A2CC();
  if (!v7)
  {
    goto LABEL_21;
  }

  v8 = v7;
  v9 = v1[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus];
  if (v9 != 3 && v9 == a1)
  {
  }

  else
  {
    v11 = v6;
    v1[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_purchasesAvailabilityStatus] = a1;
    v12 = [v1 buttonTray];
    [v12 removeAllButtons];

    if (a1)
    {
      if (a1 == 1)
      {
        if ((v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] & 1) == 0)
        {
          sub_100614F88(v5, v11, v8);
        }
      }

      else if (v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_getAllButtonWasTapped] == 1)
      {

        v16 = [v2 buttonTray];
        [v16 addButton:*&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton]];

        v17 = [v2 buttonTray];
        [v17 addButton:*&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_secondaryDoneButton]];
      }

      else
      {
        v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryDoneButton];
        v19 = sub_10076FF6C();

        [v18 setTitle:v19 forState:0];

        v20 = [v2 buttonTray];
        [v20 addButton:v18];
      }

LABEL_21:
    }

    sub_10076A29C();
    v13 = sub_10076B8EC();
    v15 = v14;

    sub_100614F88(v5, v13, v15);
  }
}

void sub_100615500()
{

  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43ArcadeDownloadPackSuggestionsViewController_primaryGetAllButton);
}

uint64_t sub_1006156A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10095D0E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100615714()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10061574C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100615764(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1006157B4(void *a1)
{
  sub_1006191A0(a1);
}

void sub_100615824(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076B27C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B28C();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == enum case for Uber.AssetType.artwork(_:))
  {
    v13 = [v1 traitCollection];
    v14 = sub_1007706EC();

    if (v14)
    {
      v15 = sub_10076B20C();
      if (!v15)
      {
        return;
      }

LABEL_27:

      sub_10076B23C();
      sub_100615D64(v15, a1, v7);

      (*(v5 + 8))(v7, v4);
      return;
    }

    v15 = sub_10076B26C();
    if (v15)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (v12 == enum case for Uber.AssetType.video(_:))
    {
      v16 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
      v37 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
      v38 = v16;
      v17 = *(v16 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v18 = &qword_100957000;
      v19 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
      v39 = v2;
      if (v19)
      {
        type metadata accessor for VideoView();
        v20 = swift_dynamicCastClass();
        if (v20)
        {
          sub_1006192AC(&qword_100942810, type metadata accessor for VideoView);
          v21 = v19;
          v22 = [v20 superview];
          if (v22)
          {
            v23 = v22;
            v35 = sub_100016F40(0, &qword_1009441F0);
            v24 = v21;
            v25 = v17;
            v36 = a1;
            v26 = sub_100770EEC();
            a1 = v36;
            LODWORD(v35) = v26;

            v18 = &qword_100957000;
            if (v35)
            {
              [v20 removeFromSuperview];
            }
          }

          else
          {
          }
        }
      }

      else
      {
        v20 = 0;
      }

      v27 = v18;
      v28 = v18[334];
      v29 = *&v17[v28];
      *&v17[v28] = v20;
      v30 = v20;
      sub_100453A30(v29);

      if (v20)
      {
        *&v30[qword_1009602C8 + 8] = &off_10088D2D8;
        swift_unknownObjectWeakAssign();
      }

      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v31 = v40;
      v32 = *(*(v38 + v37) + v27[334]);
      if (v32)
      {
        type metadata accessor for VideoView();
        v33 = swift_dynamicCastClass();
        if (v33)
        {
          sub_1006192AC(&qword_100942810, type metadata accessor for VideoView);
          v34 = v32;
        }
      }

      else
      {
        v33 = 0;
      }

      sub_1006192AC(&qword_10094DC08, type metadata accessor for UberHeaderView);
      sub_100767D3C();

      if (!sub_10076B25C())
      {

        return;
      }

      v15 = sub_10076B84C();

      goto LABEL_27;
    }

    if (v12 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v9 + 8))(v11, v8);
      return;
    }

    v15 = sub_10076B1FC();
    if (v15)
    {
      goto LABEL_27;
    }
  }
}

id sub_100615D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10076D39C();
  v59 = *(v8 - 8);
  v60 = v8;
  __chkstk_darwin(v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076B21C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 tabBarController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 tabBar];

    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v67.origin.x = v20;
    v67.origin.y = v22;
    v67.size.width = v24;
    v67.size.height = v26;
    Height = CGRectGetHeight(v67);
  }

  else
  {
    Height = 0.0;
  }

  v61 = a1;
  v28 = sub_10076BE1C();
  v29 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView);
  v30 = type metadata accessor for MediaView();
  v66.receiver = v29;
  v66.super_class = v30;
  objc_msgSendSuper2(&v66, "setBackgroundColor:", v28);
  [*(*&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:v28];
  v31 = *&v29[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v31)
  {
    v32 = v31;
    [v32 setBackgroundColor:v28];
  }

  result = [v4 view];
  if (result)
  {
    v34 = result;
    [result bounds];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v68.origin.x = v36;
    v68.origin.y = v38;
    v68.size.width = v40;
    v68.size.height = v42;
    v43 = CGRectGetHeight(v68);
    v44 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset);
    result = [v4 view];
    if (result)
    {
      v45 = result;
      *&v46 = v43 - Height - v44;
      [result bounds];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v69.origin.x = v48;
      v69.origin.y = v50;
      v69.size.width = v52;
      v69.size.height = v54;
      Width = CGRectGetWidth(v69);
      v56 = [v4 traitCollection];
      sub_10020B56C(v56, a3, 1, Width, v46, 0);
      if (sub_1007706EC())
      {
        (*(v12 + 104))(v15, enum case for Uber.Style.inline(_:), v11);
        sub_1006192AC(&qword_10094DC28, &type metadata accessor for Uber.Style);
        sub_10077018C();
        sub_10077018C();
        if (v64 == v62 && v65 == v63)
        {
          (*(v12 + 8))(v15, v11);

LABEL_14:
          sub_10076BFCC();

          type metadata accessor for UberHeaderView();
          sub_1006192AC(&unk_1009624C0, type metadata accessor for UberHeaderView);
          sub_100760B8C();
        }

        v57 = sub_10077167C();
        (*(v12 + 8))(v15, v11);

        if (v57)
        {
          goto LABEL_14;
        }
      }

      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D35C();
      (*(v59 + 8))(v10, v60);
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1006162B8(double a1)
{
  v2 = v1;
  v4 = sub_1007604DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094B450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &aBlock[-1] - v10;
  v12 = a1 < 0.5;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle] != v12)
  {
    aBlock[0] = 0x3FC999999999999ALL;
    aBlock[6] = 0x3FA999999999999ALL;
    (*(v5 + 104))(v7, enum case for TimingCurve.linear(_:), v4);
    sub_1007607FC();
    sub_1007607EC();
    (*(v9 + 8))(v11, v8);
    v13 = *aBlock;
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    *(v15 + 24) = v12;
    aBlock[4] = sub_10061932C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_10089D4A8;
    v16 = _Block_copy(aBlock);
    v17 = v2;

    [v14 animateWithDuration:v16 animations:v13];
    _Block_release(v16);
  }
}

void sub_100616584()
{
  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver])
  {
    return;
  }

  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1001A3A30();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = v2;
    [v10 setContentInset:{v3, v5, v7, v9}];
    [v10 setScrollIndicatorInsets:{v3, v5, v7, v9}];

    v11 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_hasAnimatedToShowUber;
    if ((v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_hasAnimatedToShowUber] & 1) == 0 && [v0 isViewLoaded])
    {
      if ([v0 transitionCoordinator])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        [v10 contentOffset];
        if (v12 <= 0.0)
        {
          v13 = [v0 collectionView];
          if (!v13)
          {
            goto LABEL_19;
          }

          v14 = v13;
          [v13 _effectiveContentInset];
          v16 = v15;

          [v10 setContentOffset:1 animated:{0.0, -v16}];
          v0[v11] = 1;
        }
      }
    }

    v17 = [v0 collectionView];
    if (v17)
    {
      v18 = v17;
      sub_1001A37AC(v17);

      return;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }
}

void sub_1006167B4()
{
  v1 = sub_10076B21C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v28 - v6;
  __chkstk_darwin(v8);
  v10 = v28 - v9;
  MaxY = 0.0;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber])
  {

    sub_10076B23C();

    (*(v2 + 32))(v10, v7, v1);
    (*(v2 + 104))(v4, enum case for Uber.Style.above(_:), v1);
    sub_1006192AC(&qword_10094DC28, &type metadata accessor for Uber.Style);
    sub_10077018C();
    sub_10077018C();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_10077167C();
    }

    v13 = *(v2 + 8);
    v13(v4, v1);

    if (v12)
    {
      v14 = [v0 navigationController];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 navigationBar];

        [v16 frame];
        v18 = v17;
        v20 = v19;
        v22 = v21;
        v24 = v23;

        v29.origin.x = v18;
        v29.origin.y = v20;
        v29.size.width = v22;
        v29.size.height = v24;
        MaxY = CGRectGetMaxY(v29);
      }

      v25 = [v0 traitCollection];
      v26 = sub_10020B938(v25, 1);

      v13(v10, v1);
      MaxY = v26 - MaxY;
    }

    else
    {
      v13(v10, v1);
    }
  }

  v27 = &v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_navigationBarTransitionDistance];
  *v27 = fmax(MaxY, 16.0);
  *(v27 + 8) = 0;
  sub_1000739B4();
}

char *sub_100616AF8()
{
  v1 = v0;
  v2 = [v0 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
    if (!v4)
    {
      v6 = 0;
      goto LABEL_38;
    }

    v5 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView;
    v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
    if (v6)
    {
      v7 = v6;
LABEL_38:

      return v6;
    }

    v63 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber;
    v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph];
    v9 = objc_allocWithZone(type metadata accessor for UberHeaderView());
    swift_retain_n();

    v10 = sub_1002088B0(v4, 1, v8);
    [v1 pageMarginInsets];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView;
    [*&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] layoutMargins];
    if (v12 != v23 || v14 != v20 || v16 != v21 || v18 != v22)
    {
      [*&v10[v19] setLayoutMargins:{v12, v14, v16, v18}];
      [v10 invalidateIntrinsicContentSize];
      v27 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
      if (v27)
      {

        v27(v28);
        sub_1000167E0(v27);
      }
    }

    v29 = [v1 navigationItem];
    v30 = OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem;
    v31 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_navigationItem];
    if (v31)
    {
      v32 = v31;
      v33 = sub_10076FF6C();
      [v32 removeObserver:v10 forKeyPath:v33 context:&unk_10094DB60];

      v34 = *&v10[v30];
    }

    else
    {
      v34 = 0;
    }

    *&v10[v30] = v29;
    v35 = v29;

    v36 = *&v10[v30];
    if (v36)
    {
      v37 = v36;
      v38 = sub_10076FF6C();
      [v37 addObserver:v10 forKeyPath:v38 options:0 context:&unk_10094DB60];

      v39 = *&v10[v30];
      if (v39)
      {
        v39 = [v39 title];
        if (v39)
        {
          v40 = v39;
          v41 = sub_10076FF9C();
          v43 = v42;

          v44 = v43;
          v39 = v41;
LABEL_28:
          sub_100209360(v39, v44);

          v45 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v46 = &v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
          v47 = *&v10[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_sizeChangeObserver];
          *v46 = sub_10061929C;
          v46[1] = v45;

          sub_1000167E0(v47);

          type metadata accessor for UberScrollObserver();
          v48 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48[5] = 0;
          v48[6] = 0;
          v48[3] = v10;
          v48[4] = v3;
          swift_unknownObjectWeakAssign();
          v6 = v10;
          v49 = v3;
          sub_1001A36B0();
          v50 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v51 = v48[5];
          v48[5] = sub_1006192A4;
          v48[6] = v50;

          sub_1000167E0(v51);

          v52 = [v1 navigationItem];
          v53 = [v52 _largeTitleAccessoryView];

          if (v53)
          {
            v54 = [v1 navigationItem];
            [v54 _setLargeTitleAccessoryView:0];

            v55 = v53;
            sub_10018ED24(v53);
          }

          v56 = *&v1[v5];
          v57 = v6;
          if (v56)
          {
            [v56 removeFromSuperview];
            v56 = *&v1[v5];
          }

          *&v1[v5] = v6;
          v3 = v6;

          v58 = [v1 viewIfLoaded];
          if (v58)
          {
            v59 = v58;
            [v58 insertSubview:v3 atIndex:0];
          }

          *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver] = v48;

          v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
          v60 = [v1 viewIfLoaded];
          [v60 setNeedsLayout];

          if (v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[v64])
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:3];
          }

          else
          {
            v61 = [v1 navigationItem];
            [v61 setLargeTitleDisplayMode:2];
          }

          goto LABEL_38;
        }
      }
    }

    else
    {
      v39 = 0;
    }

    v44 = 0;
    goto LABEL_28;
  }

  return 0;
}

void sub_1006170F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView];
  if (v3)
  {
    type metadata accessor for UberHeaderView();
    sub_1006192AC(&unk_1009624C0, type metadata accessor for UberHeaderView);
    v4 = v3;
    sub_100760BFC();
    v5 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_titleView] + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryView);
    if (v5)
    {
      v6 = v5;
      v7 = [v1 navigationItem];
      v8 = v6;
      [v7 _setLargeTitleAccessoryView:v8];
    }
  }

  v9 = OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver];
  if (v10)
  {
    v11 = *(v10 + 40);
    if (v11)
    {

      v12 = sub_10001CE50(v11);
      v11(v12, 1.0, 0.0);

      sub_1000167E0(v11);
    }
  }

  v13 = *&v1[v2];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v2];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v2] = 0;

  *&v1[v9] = 0;

  v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid] = 1;
  v15 = [v1 viewIfLoaded];
  [v15 setNeedsLayout];

  if (v1[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] == 1 && !*&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber])
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = [v1 navigationItem];
  [v17 setLargeTitleDisplayMode:v16];
}

id sub_100617358(void *a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_inlineLockupHeight) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_detachFromNavigationBarWithoutAnimation) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_statusBarStyle) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_contentInsetsInvalid) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_hasAnimatedToShowUber) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberHeaderView) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uberScrollObserver) = 0;
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_startedAsFlowPreview) = 0;
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_artworkLoader) = v9;
  v5 = a1;

  v6 = sub_10007689C(v5, a2);

  sub_100767D5C();
  v7 = v6;
  sub_10076FC1C();
  sub_100767D2C();

  sub_100764FAC();
  sub_10076FC1C();
  sub_100764F6C();

  return v7;
}