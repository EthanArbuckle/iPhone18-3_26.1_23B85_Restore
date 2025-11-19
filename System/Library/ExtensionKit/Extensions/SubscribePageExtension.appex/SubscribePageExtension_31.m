double sub_1003817B0()
{
  swift_getObjectType();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView);
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_10021AC00(v0 + v3, v7);
  sub_100380868(v1, &protocol witness table for UIView, v2, &protocol witness table for UIView, v7, v8);
  sub_10021ACB8(v7);
  sub_10000C888(v8, v8[3]);
  sub_100750404();
  v5 = v4;
  sub_10000C620(v8);
  return v5;
}

uint64_t sub_100381A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100381AA8(unint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v29 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10074F284();
  v6 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v31 = *(v2 + v9);
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v10)
  {
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a1 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v12 = v31;
    }

    else
    {
      v12 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v20[1] = v12;
    v21 = (v6 + 8);
    v13 = 4;
    v24 = v31 & 0xC000000000000001;
    v25 = v31 >> 62;
    v22 = v10;
    v23 = a1;
    do
    {
      v6 = v13 - 4;
      if (v27)
      {
        sub_100754574();
        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v6 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        a1 = v13 - 3;
        if (__OFADD__(v6, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          v10 = sub_100754664();
          goto LABEL_3;
        }
      }

      if (v25)
      {
        if (v6 == sub_100754664())
        {
LABEL_25:
        }
      }

      else if (v6 == *(v11 + 16))
      {
        goto LABEL_25;
      }

      if (v24)
      {
        v15 = sub_100754574();
      }

      else
      {
        if (v6 >= *(v11 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(v31 + 8 * v13);
      }

      v16 = v15;
      sub_10074F294();
      v17 = sub_10074F254();
      (*v21)(v8, v28);
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      v18 = v16;
      [v18 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();
      [v18 setContentMode:v17];

      sub_1007433C4();
      sub_10004D658();
      sub_100744204();

      ++v13;
      v14 = a1 == v22;
      a1 = v23;
    }

    while (!v14);
  }
}

uint64_t sub_100381F10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C518(&qword_10092DE18);
  __chkstk_darwin(v3);
  v4 = sub_10000C518(&qword_1009347F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  sub_100382E9C(v1 + v10, v9);
  v11 = sub_10000C518(&qword_10092A198);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_100382F0C(v9);
  sub_1007433C4();
  sub_100750624();
  sub_100311458();
  sub_1007512E4();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_100382E2C(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100382168()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_1009347F8);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = sub_10000C518(&qword_10092A198);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  swift_beginAccess();
  v11 = (v6 + 32);
  v12 = (v6 + 56);
  while (1)
  {
    v13 = *&v1[v9];
    result = v13 >> 62 ? sub_100754664() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = *&v1[v24];
    if (result == v15)
    {
      return result;
    }

    v16 = *&v1[v9];
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    if (sub_100754664() < *&v1[v24])
    {
LABEL_8:
      sub_100381F10(v8);
      sub_1007512B4();
      (*v11)(v4, v8, v5);
      (*v12)(v4, 0, 1, v5);
      swift_beginAccess();
      sub_100382E2C(v4, &v1[v10]);
      swift_endAccess();
      v17 = v25;
      swift_beginAccess();
      v18 = v17;
      sub_100753284();
      if (*((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23[1] = *((*&v1[v9] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_100753304();
      }

      sub_100753344();
      swift_endAccess();
      [v1 addSubview:v18];
    }

    else
    {
LABEL_13:
      swift_beginAccess();
      v19 = *&v1[v9];
      if (v19 >> 62)
      {
        if (sub_100754664())
        {
          goto LABEL_15;
        }

LABEL_2:
        swift_endAccess();
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_2;
        }

LABEL_15:
        result = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *&v1[v9] = v19;
        if (v19 >> 62 || (result & 1) == 0)
        {
          result = sub_10025F2C0(v19);
          v19 = result;
        }

        v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          __break(1u);
          return result;
        }

        v21 = v20 - 1;
        v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v21 + 0x20);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) = v21;
        *&v1[v9] = v19;
        swift_endAccess();
        v25 = v22;
        sub_100381F10(v8);
        sub_1007512D4();
        (*v11)(v4, v8, v5);
        (*v12)(v4, 0, 1, v5);
        swift_beginAccess();
        sub_100382E2C(v4, &v1[v10]);
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_100382578@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100750A34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100750A04();
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_numberOfArtworks);
  if (v9 < 2)
  {
    a1[3] = v5;
    a1[4] = &protocol witness table for HorizontalStack;
    v10 = sub_10000D134(a1);
    (*(v6 + 16))(v10, v8, v5);
    return (*(v6 + 8))(v8, v5);
  }

  v11 = OBJC_IVAR____TtC22SubscribePageExtension32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 >> 62;
  if (v12 >> 62)
  {
    goto LABEL_30;
  }

  result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v15)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return result;
  }

  while (1)
  {
    if ((v12 & 0xC000000000000001) == 0 || v15 == 0)
    {
      swift_bridgeObjectRetain_n();
    }

    else
    {
      sub_1007433C4();
      swift_bridgeObjectRetain_n();
      v17 = 0;
      do
      {
        v18 = v17 + 1;
        sub_100754554(v17);
        v17 = v18;
      }

      while (v15 != v18);
    }

    if (v13)
    {
      break;
    }

    v33 = v12 & 0xFFFFFFFFFFFFFF8;
    v19 = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = v15;
    v20 = v15 <= 0;
    if (!v15)
    {
      goto LABEL_26;
    }

LABEL_19:
    v12 = 0;
    if (v20)
    {
      v27 = v13;
    }

    else
    {
      v27 = v15;
    }

    v9 = v27 - v13;
    v13 = v19 + 8 * v13;
    while (v9 != v12)
    {
      if (__OFADD__(v12, 1))
      {
        goto LABEL_29;
      }

      v28 = *(v13 + 8 * v12);
      sub_1003829B8(v12, v28, v8, ObjectType);

      if (v21 == ++v12)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v30 = sub_100754664();
    result = sub_100754664();
    if (result < 0)
    {
      goto LABEL_39;
    }

    if (v30 >= v9)
    {
      v31 = v9;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= 0)
    {
      v15 = v31;
    }

    else
    {
      v15 = v9;
    }

    result = sub_100754664();
    if (result < v15)
    {
      goto LABEL_38;
    }
  }

  v33 = sub_100754674();
  v23 = v22;
  v13 = v24;
  v26 = v25;

  v19 = v23;
  v15 = v26 >> 1;
  v21 = v15 - v13;
  v20 = v15 <= v13;
  if (v15 != v13)
  {
    goto LABEL_19;
  }

LABEL_26:
  swift_unknownObjectRelease();
  v34[3] = v5;
  v34[4] = &protocol witness table for HorizontalStack;
  v29 = sub_10000D134(v34);
  (*(v6 + 16))(v29, v8, v5);
  a1[3] = sub_1007511A4();
  a1[4] = &protocol witness table for Margins;
  sub_10000D134(a1);
  sub_100751194();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1003829B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  sub_1007433C4();
  sub_1007503E4();
  sub_10000C888(v9, v9[3]);
  sub_100750434();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  sub_1007509F4();

  sub_10000C620(v8);
  return sub_10000C620(v9);
}

id sub_100382B60@<X0>(void *a1@<X8>)
{
  sub_1007433C4();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CarouselItemLockupCollectionView()
{
  result = qword_1009347E0;
  if (!qword_1009347E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100382C70()
{
  sub_100382D20();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100382D20()
{
  if (!qword_1009347F0)
  {
    sub_10000C724(&qword_10092A198);
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_1009347F0);
    }
  }
}

double sub_100382D84()
{
  sub_100382578(v3);
  sub_10000C888(v3, v3[3]);
  sub_100751254();
  v1 = v0;
  sub_10000C620(v3);
  return v1;
}

uint64_t sub_100382E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009347F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100382E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009347F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100382F0C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009347F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100382F84()
{
  if (*(v0 + 16) >= 1)
  {
    return sub_1007509C4();
  }

  return result;
}

uint64_t sub_100383034(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v9 = sub_100750304();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074BA54();
  sub_100039C50(v13, a5);
  sub_10000D0FC(v13, a5);
  v17[24] = &type metadata for Double;
  v17[25] = &protocol witness table for Double;
  *&v17[21] = a1;
  v17[19] = &type metadata for Double;
  v17[20] = &protocol witness table for Double;
  *&v17[16] = a2;
  if (qword_100921508 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_100981C50);
  (*(*(v14 - 8) + 16))(v12, v15, v14);
  (*(v10 + 104))(v12, enum case for FontSource.useCase(_:), v9);
  v17[14] = &type metadata for Double;
  v17[15] = &protocol witness table for Double;
  *&v17[11] = a3;
  v17[9] = &type metadata for Double;
  v17[10] = &protocol witness table for Double;
  v17[6] = 0x4046800000000000;
  v17[5] = &protocol witness table for Double;
  v17[4] = &type metadata for Double;
  v17[1] = 0x4024000000000000;
  return sub_10074BA44();
}

char *sub_100383260(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074AB44();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v42 - v13;
  if (qword_100921500 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v16 = sub_10000D0FC(v15, qword_100981C38);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = sub_100745C84();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v47[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel] = sub_100745C74();
  if (qword_100921508 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v15, qword_100981C50);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = sub_100745C74();
  v26 = v47;
  *&v47[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel] = v25;
  *&v26[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_itemViews] = _swiftEmptyArrayStorage;
  v48.receiver = v26;
  v48.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v48, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel;
  v33 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel];
  sub_10000D198();
  v34 = v33;
  v35 = sub_100753DD4();
  [v34 setTextColor:v35];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel;
  v37 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel];
  if (sub_1003836EC())
  {
    v38 = 3;
  }

  else
  {
    v38 = 4;
  }

  [v37 setNumberOfLines:v38];

  v39 = *&v31[v36];
  v40 = sub_100753DF4();
  [v39 setTextColor:v40];

  sub_1003837EC();
  [v31 addSubview:*&v31[v32]];
  [v31 addSubview:*&v31[v36]];

  return v31;
}

uint64_t sub_1003836EC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007537D4();

  if ((v3 & 1) == 0)
  {
    return 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == 1)
    {
      [v5 frame];
      Width = CGRectGetWidth(v10);
      [v1 bounds];
      v9 = CGRectGetWidth(v11);

      return v9 < Width;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1003837EC()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_100753804();

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel];
  if (v8)
  {
    v10 = enum case for DirectionalTextAlignment.leading(_:);
    v11 = *(v3 + 104);
    v11(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_100745BF4();
    [v9 setNumberOfLines:0];
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel];
    v11(v6, v10, v2);
    sub_100745BF4();
    return [v12 setNumberOfLines:0];
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel] setTextAlignment:1];
    [v9 setNumberOfLines:2];
    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel];
    [v14 setTextAlignment:1];
    if (sub_1003836EC())
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    return [v14 setNumberOfLines:v15];
  }
}

uint64_t sub_100383A64()
{
  ObjectType = swift_getObjectType();
  v23 = sub_100750354();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074BA54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074BA74();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v22[1] = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v11);
  if (sub_1003836EC())
  {
    if (qword_100920A58 != -1)
    {
      swift_once();
    }

    v14 = qword_100934818;
  }

  else
  {
    if (qword_100920A50 != -1)
    {
      swift_once();
    }

    v14 = qword_100934800;
  }

  v15 = sub_10000D0FC(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  v16 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel];
  v28 = sub_100745C84();
  v29 = &protocol witness table for UILabel;
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel];
  v26 = &protocol witness table for UILabel;
  v27 = v16;
  v25 = v28;
  v24 = v17;
  swift_beginAccess();
  v18 = v16;
  v19 = v17;

  sub_10015832C(v20);

  sub_10074BA64();
  sub_1007477B4();
  sub_10074BA34();
  (*(v2 + 8))(v4, v23);
  return (*(v10 + 8))(v13, v9);
}

double sub_100383DF4()
{
  v1 = sub_10074BA54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074BA74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1003836EC())
  {
    if (qword_100920A58 != -1)
    {
      swift_once();
    }

    v9 = qword_100934818;
  }

  else
  {
    if (qword_100920A50 != -1)
    {
      swift_once();
    }

    v9 = qword_100934800;
  }

  v10 = sub_10000D0FC(v1, v9);
  (*(v2 + 16))(v4, v10, v1);
  v11 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel);
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel);
  v19[8] = &protocol witness table for UILabel;
  v19[9] = v11;
  v19[7] = v20;
  v19[4] = v12;
  swift_beginAccess();
  v13 = v11;
  v14 = v12;

  sub_10015832C(v15);

  sub_10074BA64();
  sub_10074BA24();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_100384148(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_100753804();

  if (!a1 || (result = sub_100753804(), (result & 1) != (v5 & 1)))
  {
    sub_1003837EC();
    return [v2 setNeedsLayout];
  }

  return result;
}

objc_class *sub_100384264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_titleLabel];
  sub_1007489C4();
  if (v5)
  {
    v6 = sub_100753064();
  }

  else
  {
    v6 = 0;
  }

  [v4 setText:v6];

  v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_subtitleLabel];
  sub_1007489D4();
  if (v8)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  v10 = OBJC_IVAR____TtC22SubscribePageExtension24ArcadeWelcomeContentView_itemViews;
  result = swift_beginAccess();
  v12 = *&v2[v10];
  if (v12 >> 62)
  {
    result = sub_100754664();
    v13 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_16;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    goto LABEL_38;
  }

  for (i = 0; i != v13; ++i)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = sub_100754574();
    }

    else
    {
      v15 = *(v12 + 8 * i + 32);
    }

    v16 = v15;
    [v15 removeFromSuperview];
  }

LABEL_16:
  *&v2[v10] = _swiftEmptyArrayStorage;

  v17 = sub_1007489B4();
  v18 = v17;
  if (!(v17 >> 62))
  {
    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_36:

    return [v3 setNeedsLayout];
  }

  v19 = sub_100754664();
  if (!v19)
  {
    goto LABEL_36;
  }

LABEL_18:
  type metadata accessor for ArcadeWelcomeItemView();
  result = swift_getObjCClassFromMetadata();
  v29 = result;
  if (v19 >= 1)
  {
    v20 = 0;
    do
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
      }

      v21 = [objc_allocWithZone(v29) init];
      v22 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel];
      sub_100746544();
      if (v23)
      {
        v24 = sub_100753064();
      }

      else
      {
        v24 = 0;
      }

      [v22 setText:v24];

      v25 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel];
      sub_100746524();
      if (v26)
      {
        v27 = sub_100753064();
      }

      else
      {
        v27 = 0;
      }

      [v25 setText:v27];

      *&v21[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artwork] = sub_100746534();

      *&v21[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkLoader] = a2;

      [v21 setNeedsLayout];
      [v3 addSubview:v21];
      swift_beginAccess();
      v28 = v21;
      sub_100753284();
      if (*((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v10) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      ++v20;
      sub_100753344();
      swift_endAccess();
    }

    while (v19 != v20);
    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
  return result;
}

id sub_1003846D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v45 = a2;
  v47 = a1;
  v46 = sub_1007485D4();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v55._countAndFlagsBits = 0xD000000000000014;
  v55._object = 0x8000000100779490;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007458B4(v55, v64);
  v15 = sub_100753064();

  [v14 setTitle:v15];

  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x80000001007794B0;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_1007458B4(v56, v65);
  v16 = sub_100753064();

  [v14 setBackTitle:v16];

  v57._object = 0x80000001007794D0;
  v57._countAndFlagsBits = 0xD000000000000015;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1007458B4(v57, v66);
  v17 = sub_100753064();

  [v14 setCancelTitle:v17];

  v58._object = 0x80000001007794F0;
  v58._countAndFlagsBits = 0xD000000000000015;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_1007458B4(v58, v67);
  v18 = sub_100753064();

  [v14 setSubmitTitle:v18];

  if (a5)
  {
    v59._countAndFlagsBits = 0xD00000000000002ALL;
    v59._object = 0x80000001007795B0;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_1007458B4(v59, v68);
    v19 = sub_100753064();

    [v14 setSelectReasonTitle:v19];

    if (a3)
    {
      v20 = sub_100753064();
    }

    else
    {
      v20 = 0;
    }

    v26 = v47;
    [v14 setReportConcernExplanation:v20];

    v63._countAndFlagsBits = 0xD000000000000025;
    v63._object = 0x80000001007795E0;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_1007458B4(v63, v72);
    v27 = sub_100753064();

    [v14 setPrivacyNote:v27];

    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a6;
    v53 = sub_1003861C8;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1003859A4;
    v52 = &unk_100873200;
    v25 = _Block_copy(&aBlock);
  }

  else
  {

    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x8000000100779510;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_1007458B4(v60, v69);
    v21 = sub_100753064();

    [v14 setSelectReasonTitle:v21];

    v61._countAndFlagsBits = 0xD00000000000001ELL;
    v61._object = 0x8000000100779530;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_1007458B4(v61, v70);
    v22 = sub_100753064();

    [v14 setSelectReasonSubtitle:v22];

    v62._countAndFlagsBits = 0xD000000000000016;
    v62._object = 0x8000000100779550;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_1007458B4(v62, v71);
    v23 = sub_100753064();

    [v14 setPrivacyNote:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a6;
    v53 = sub_10038615C;
    v54 = v24;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1003859A4;
    v52 = &unk_1008731B0;
    v25 = _Block_copy(&aBlock);

    v26 = v47;
  }

  [v14 setCompletion:v25];
  _Block_release(v25);
  v29 = *(v26 + 16);
  if (v29)
  {
    v42 = v14;
    v43 = v7;
    v44 = a4;
    v45 = a6;
    aBlock = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v30 = v48 + 16;
    v48 = *(v48 + 16);
    v31 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v32 = *(v30 + 56);
    v33 = v46;
    do
    {
      (v48)(v13, v31, v33);
      v34 = [objc_allocWithZone(ASReportAConcernReason) init];
      sub_1007485B4();
      v35 = sub_100753064();

      [v34 setReasonID:v35];

      sub_1007485C4();
      v36 = sub_100753064();

      [v34 setName:v36];

      sub_1007485A4();
      v37 = sub_100753064();

      [v34 setUppercaseName:v37];

      (*(v30 - 8))(v13, v33);
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v31 += v32;
      --v29;
    }

    while (v29);

    v14 = v42;
  }

  else
  {
  }

  sub_10038617C();
  isa = sub_100753294().super.isa;

  [v14 setReasons:isa];

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v39 setModalPresentationStyle:2];

  return v39;
}

uint64_t sub_100384E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = sub_100752614();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007530D4();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10074B514();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_100386760(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  v17 = v16;
  sub_10074B504();
  v57 = a6;
  v18 = sub_100747714();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_1003858D0(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_10000C518(&qword_100934878);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1007A5A00;
        sub_10000C518(&unk_10092E4D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007A6580;
        *(inited + 32) = 1684957547;
        v23 = v52;
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v23;
        *(inited + 56) = v53;
        *(inited + 64) = 0x746E656D6D6F63;
        v24 = v51;
        *(inited + 72) = 0xE700000000000000;
        *(inited + 80) = v24;
        *(inited + 88) = a5;

        v25 = sub_10038664C(inited);
        swift_setDeallocating();
        sub_10000C518(&qword_10093CA20);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_10000C518(&qword_100934880);
        v60[0] = v21;
        sub_10025B880(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_1003858D0(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_10000C518(&qword_100934878);
      v28 = swift_allocObject();
      v51 = xmmword_1007A5A00;
      *(v28 + 16) = xmmword_1007A5A00;
      sub_10000C518(&unk_10092E4D0);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_10038664C(v29);
      swift_setDeallocating();
      sub_10000C8CC(v29 + 32, &qword_10093CA20);
      *(v28 + 32) = v31;
      v61 = sub_10000C518(&qword_100934880);
      v60[0] = v28;
      sub_10025B880(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_10000C518(&qword_100934888);
  v33 = sub_100754274();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = sub_100741274();
    v38 = v37;

    sub_1007530C4();
    sub_1007530A4();
    if (v39)
    {
      v40 = v54;
      sub_1007525F4();
      v44 = sub_1007476E4();
      (*(v55 + 8))(v40, v56);

      v45 = sub_10000C518(&unk_100923210);
      v46 = v49;
      v47 = v50;
      sub_1007526C4();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_100386870(v36, v38);

        sub_10000C8CC(v47, &unk_100923960);
      }

      else
      {
        sub_1003C155C(v44, 1, v46, v47);

        sub_100386870(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }
    }

    sub_100386870(v36, v38);
  }

  else
  {
    v41 = v35;
    sub_100741134();

    swift_willThrow();
  }

  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v42 = sub_100752E44();
  sub_10000D0FC(v42, qword_100983318);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  sub_1007523A4();
  sub_100752D04();

  (*(v58 + 8))(v17, v59);
}

void (*sub_1003858D0(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100386300(v6, a2, a3);
  return sub_100385958;
}

void sub_100385958(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1003859A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  sub_100753094();
  if (a4)
  {
    sub_100753094();
  }

  v7 = a2;
  v6();
}

uint64_t sub_100385A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = sub_100752614();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007494E4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074B514();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  sub_100386760(_swiftEmptyArrayStorage);
  sub_10038664C(_swiftEmptyArrayStorage);
  v52 = v19;
  sub_10074B504();
  v44 = a6;
  v20 = sub_100747704();
  v21 = *(v20 + 16);
  if (v21)
  {
    v40 = a7;
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v22 = v24;
    v25 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v39 = v20;
    v26 = v20 + v25;
    v27 = *(v23 + 56);
    v24(v16, v20 + v25, v13);
    while (sub_1007494A4() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = sub_100754754();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (sub_1007494A4() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = sub_100754754();

        if (v31)
        {
          goto LABEL_4;
        }
      }

LABEL_5:
      (*(v23 - 8))(v16, v13);
      v26 += v27;
      if (!--v21)
      {

        a7 = v40;
        goto LABEL_17;
      }

      v22(v16, v26, v13);
    }

LABEL_4:
    sub_10074B4F4();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  sub_1007525F4();
  v33 = sub_1007476E4();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10000C8CC(v34, &unk_100923960);
  }

  else
  {
    sub_1003C155C(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

uint64_t sub_100386164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10038617C()
{
  result = qword_100934870;
  if (!qword_100934870)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100934870);
  }

  return result;
}

unint64_t sub_1003861D0(uint64_t a1, uint64_t a2)
{
  sub_100754834();
  sub_100753174();
  v4 = sub_100754884();

  return sub_100386248(a1, a2, v4);
}

unint64_t sub_100386248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100754754())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_100386300(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_100386618(v7);
  v7[9] = sub_10038640C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1003863AC;
}

void sub_1003863AC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10038640C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_1003861D0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100676A8C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100672F6C(v18, a4 & 1);
    v13 = sub_1003861D0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1007547B4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_100386564;
}

void sub_100386564(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_100674AE0(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1000C0714(*(v7 + 48) + 16 * v6);
    sub_1003DDF50(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_100386618(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100386640;
}

unint64_t sub_10038664C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100934898);
    v3 = sub_1007546B4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1003861D0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100386760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100934890);
    v3 = sub_1007546B4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1003868C4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1003861D0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000C610(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100386870(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1003868C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092C200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100386940()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074DC24();
  sub_100039C50(v4, qword_10097FCE0);
  sub_10000D0FC(v4, qword_10097FCE0);
  if (qword_1009213D8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009818C0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = sub_100750B04();
  v10[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v9);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  return sub_10074DC14();
}

id sub_100386C64()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100933290);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = sub_10000C518(&unk_1009332A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_10014CB74(&v1[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &unk_100933290);
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyLabel] setAttributedText:0];
    return [v1 setNeedsLayout];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_1007455C4();
    sub_1007455B4();
    v11 = sub_100743EA4();
    v12 = sub_1001D3738(v11, sub_1000E12F0);

    v13 = sub_100743E94();
    sub_10004DF04(v13, 0, v12);

    [v1 setNeedsLayout];
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_100386EF8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10074DC24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074DC44();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "layoutSubviews", v8);
  if (qword_100920A60 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v2, qword_10097FCE0);
  (*(v3 + 16))(v5, v11, v2);
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyLabel];
  v16[4] = type metadata accessor for DynamicTypeLinkedLabel();
  v16[5] = &protocol witness table for UILabel;
  v16[1] = v12;
  v13 = v12;
  sub_10074DC34();
  [v0 bounds];
  v14 = [v0 traitCollection];
  sub_100387284();
  sub_100751244();

  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for LinkableTextCollectionViewCell()
{
  result = qword_1009348D0;
  if (!qword_1009348D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100387284()
{
  result = qword_1009348E0;
  if (!qword_1009348E0)
  {
    sub_10074DC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009348E0);
  }

  return result;
}

char *sub_1003872DC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v35 = sub_10074AB44();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100752AC4();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100750534();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  v14 = sub_1007469A4();
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyText;
  v16 = sub_10000C518(&unk_1009332A0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  if (qword_1009213D8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v9, qword_1009818C0);
  (*(v10 + 16))(v12, v17, v9);
  v18 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyLabel] = sub_10004DA8C(v12, 0, 0);
  v38.receiver = v1;
  v38.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v38, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = [v19 contentView];
  [v20 setClipsToBounds:0];

  v21 = [v19 contentView];
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyLabel;
  v23 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension30LinkableTextCollectionViewCell_bodyLabel];
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v24 = v23;
  sub_100752A74();
  sub_10000C8CC(v36, &unk_100923520);
  sub_10000C8CC(v37, &unk_100923520);
  sub_100753C74();

  (*(v6 + 8))(v8, v34);
  v25 = *&v19[v22];
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.leading(_:), v35);
  v26 = v25;
  sub_100745BF4();

  v27 = *&v19[v22];
  sub_10000D198();
  v28 = v27;
  v29 = sub_100753DF4();
  v30 = *&v28[qword_100924048];
  *&v28[qword_100924048] = v29;
  v31 = v29;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_10004E2D4();
  }

  v32 = [v19 contentView];
  [v32 addSubview:*&v19[v22]];

  return v19;
}

uint64_t type metadata accessor for RoundedTitledButton()
{
  result = qword_1009348F0;
  if (!qword_1009348F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100387810()
{
  result = sub_100750B04();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1003878B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v8 = qword_1009348E8;
  swift_beginAccess();
  v9 = sub_100750B04();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v12 = v7;
  v11(&v7[v8], a2, v9);
  swift_endAccess();
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, a1, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = v12;
  sub_1007466A4();

  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_10000D198();
  v16 = sub_100753E84();
  [v15 _setBackgroundColor:v16];

  [v15 addTarget:v15 action:"didTapButton:" forControlEvents:64];
  v17 = sub_100753E44();
  [v15 setTintColor:v17];

  (*(v10 + 8))(a2, v9);
  (*(v14 + 8))(a1, v13);
  return v15;
}

UIFontTextStyle sub_100387B4C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10097FD08);
  v1 = sub_10000D0FC(v0, qword_10097FD08);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_100387BFC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097FD20);
  sub_10000D0FC(v4, qword_10097FD20);
  if (qword_100920A68 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_10097FD08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

double sub_100387DD8(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750B04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = a1;
  v21.super_class = ObjectType;
  v15 = a1;
  objc_msgSendSuper2(&v21, "sizeThatFits:", a2, a3);
  v17 = v16;
  v18 = qword_1009348E8;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v15[v18], v11);
  sub_1007502D4();
  sub_100750564();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v17;
}

void sub_100387FE8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_100388064(char *result)
{
  v1 = *&result[qword_10097FD38];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001B5AC(v1);
    v1(v3);

    return sub_1000164A8(v1);
  }

  return result;
}

id sub_1003880E8(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

id sub_100388150(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_1009348E8;
  if (qword_100920A70 != -1)
  {
    swift_once();
  }

  v12 = sub_100750B04();
  v13 = sub_10000D0FC(v12, qword_10097FD20);
  (*(*(v12 - 8) + 16))(&a1[v11], v13, v12);
  v14 = &a1[qword_10097FD38];
  *v14 = 0;
  *(v14 + 1) = 0;
  v16.receiver = a1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t sub_100388260()
{
  v1 = qword_1009348E8;
  v2 = sub_100750B04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_10097FD38);

  return sub_1000164A8(v3);
}

uint64_t sub_1003882DC(uint64_t a1)
{
  v2 = qword_1009348E8;
  v3 = sub_100750B04();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_10097FD38);

  return sub_1000164A8(v4);
}

double sub_100388364(double a1)
{
  sub_10074F2A4();
  sub_10074F2A4();
  return a1;
}

uint64_t sub_100388434(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10038847C(void *a1, uint64_t a2, void *a3, double a4)
{
  v82 = a2;
  v89 = sub_100749874();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_100749854();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v83 = v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v75[0] = v75 - v10;
  __chkstk_darwin(v11);
  v84 = v75 - v12;
  v80 = sub_10074CD14();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v78 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100748F14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v77 = v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v75 - v18;
  v90 = a1;
  v20 = sub_100745864();
  v92 = a3;
  v21 = [a3 traitCollection];
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
  v91 = [v20 length];
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = v21;
  *(v23 + 32) = v22;
  *(v23 + 40) = 1;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1002B1424;
  *(v24 + 24) = v23;
  v104 = sub_1002B1408;
  v105 = v24;
  aBlock = _NSConcreteStackBlock;
  v101 = 1107296256;
  v102 = sub_100047044;
  v103 = &unk_100873438;
  v25 = _Block_copy(&aBlock);
  v26 = v21;
  v27 = v22;

  [v20 enumerateAttributesInRange:0 options:v91 usingBlock:{0x100000, v25}];

  _Block_release(v25);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_7;
  }

  v91 = v27;
  sub_100745874();
  v28 = v77;
  v15[13](v77, enum case for TitledParagraphStyle.detail(_:), v14);
  sub_10038A528(&qword_1009436B0, &type metadata accessor for TitledParagraphStyle);
  v29 = v19;
  sub_100753274();
  sub_100753274();
  if (aBlock == v97[0] && v101 == v97[1])
  {
    v76 = 1;
  }

  else
  {
    v76 = sub_100754754();
  }

  v30 = v92;
  v31 = v15[1];
  v31(v28, v14);
  v31(v29, v14);

  sub_100745844();
  v75[2] = sub_100745854();
  v75[1] = v32;
  v77 = v91;
  v15 = [v30 traitCollection];
  sub_100038D38();
  if (qword_100920FF0 != -1)
  {
    goto LABEL_23;
  }

LABEL_7:
  v33 = sub_100750534();
  sub_10000D0FC(v33, qword_100980D08);
  v90 = v15;
  v34 = sub_100753C14();
  v35 = sub_10074F3F4();
  v103 = v35;
  v36 = sub_10038A528(&qword_10092AC70, &type metadata accessor for Feature);
  v104 = v36;
  v37 = sub_10000D134(&aBlock);
  v38 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v39 = *(*(v35 - 1) + 104);
  v39(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v35);
  v40 = v34;
  sub_10074FC74();
  sub_10000C620(&aBlock);
  v41 = v78;
  sub_10074CD04();
  sub_10074CCE4();
  v42 = v79[1];
  v43 = v80;
  v42(v41, v80);
  v98 = v35;
  v99 = v36;
  v44 = sub_10000D134(v97);
  v39(v44, v38, v35);
  v45 = v40;
  sub_10074FC74();
  sub_10000C620(v97);
  v79 = v45;
  sub_10074CD04();
  sub_10074CCE4();
  v42(v41, v43);
  v46 = 0;
  v47 = v76;
  if ((v76 & 1) == 0)
  {
    v46 = sub_100749804();
  }

  v48 = swift_allocObject();
  *(v48 + 16) = v46 & 1;
  v49 = v92;
  *(v48 + 24) = v81;
  *(v48 + 32) = v49;
  v50 = v82;
  *(v48 + 40) = v91;
  *(v48 + 48) = v50;
  v51 = sub_100750F34();
  swift_allocObject();
  v52 = v77;
  swift_unknownObjectRetain();
  v53 = sub_100750EF4();
  v96[3] = v51;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  v96[0] = v53;
  v54 = v87;
  v55 = v85;
  v56 = v84;
  if (v46)
  {
    if (qword_100920828 != -1)
    {
      swift_once();
    }

    v57 = sub_10000D0FC(v54, qword_10097EF38);
    v58 = *(v55 + 16);
    v58(v56, v57, v54);
    sub_1002ED600(v49, a4);
    sub_100749824();
    [v49 pageMarginInsets];
    sub_100749834();
  }

  else
  {
    if (v47)
    {
      if (qword_100920830 != -1)
      {
        swift_once();
      }

      v59 = qword_10097EF50;
    }

    else
    {
      if (qword_100920820 != -1)
      {
        swift_once();
      }

      v59 = qword_10097EF20;
    }

    v60 = sub_10000D0FC(v54, v59);
    v58 = *(v55 + 16);
    v61 = v75[0];
    v58(v75[0], v60, v54);
    (*(v55 + 32))(v56, v61, v54);
  }

  v58(v83, v56, v54);
  v62 = v103;
  v63 = v104;
  v64 = sub_10000C888(&aBlock, v103);
  v95[3] = v62;
  v95[4] = *(v63 + 1);
  v65 = sub_10000D134(v95);
  (*(*(v62 - 1) + 16))(v65, v64, v62);
  v66 = v98;
  v67 = v99;
  v68 = sub_10000C888(v97, v98);
  v94[3] = v66;
  v94[4] = *(v67 + 8);
  v69 = sub_10000D134(v94);
  (*(*(v66 - 8) + 16))(v69, v68, v66);
  sub_10000C824(v96, v93);
  v70 = v86;
  sub_100749864();
  sub_10038A528(&qword_100934A00, &type metadata accessor for TitledParagraphLayout);
  v71 = v89;
  sub_100750404();
  v73 = v72;

  (*(v88 + 8))(v70, v71);
  (*(v55 + 8))(v56, v54);
  sub_10000C620(v96);
  sub_10000C620(v97);
  sub_10000C620(&aBlock);
  return v73;
}

uint64_t sub_100389110()
{
  sub_10000C518(&qword_1009349F8);
  sub_10038931C();
  sub_100752954();
  return 3;
}

uint64_t sub_100389188()
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

unint64_t sub_10038931C()
{
  result = qword_100934998;
  if (!qword_100934998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934998);
  }

  return result;
}

unint64_t sub_100389374()
{
  result = qword_1009349E8;
  if (!qword_1009349E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009349E8);
  }

  return result;
}

unint64_t sub_1003893CC()
{
  result = qword_1009349F0;
  if (!qword_1009349F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009349F0);
  }

  return result;
}

void sub_100389420(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10000C518(&qword_100934A08);
  sub_10038931C();
  sub_100752E84();
  if (v10 == 1)
  {
    if (qword_100920818 != -1)
    {
      swift_once();
    }

    v8 = sub_10000C518(&unk_10092BC10);
    sub_10000D0FC(v8, qword_10097EF08);
    swift_unknownObjectRetain();
    sub_100743464();
    swift_unknownObjectRelease();
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  sub_10038847C(a1, v9, a5, a2);
}

id sub_100389550(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v113 = a3;
  v114 = a2;
  v119 = a1;
  v111 = sub_10074F964();
  v118 = *(v111 - 8);
  __chkstk_darwin(v111);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = &v103 - v9;
  __chkstk_darwin(v10);
  v105 = &v103 - v11;
  __chkstk_darwin(v12);
  v104 = &v103 - v13;
  v14 = sub_10000C518(&qword_100930640);
  __chkstk_darwin(v14 - 8);
  v110 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v108 = &v103 - v17;
  __chkstk_darwin(v18);
  v109 = &v103 - v19;
  __chkstk_darwin(v20);
  v116 = &v103 - v21;
  v112 = sub_100749A94();
  v22 = *(v112 - 8);
  __chkstk_darwin(v112);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100748F14();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v103 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v103 - v31;
  v115 = a5;
  v33 = [a5 snapshotPageTraitEnvironment];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_pageTraits] = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (*&v5[v34])
  {
    [v5 setNeedsLayout];
  }

  v117 = v5;
  swift_unknownObjectRelease();
  sub_100745874();
  (*(v26 + 104))(v28, enum case for TitledParagraphStyle.detail(_:), v25);
  sub_10038A528(&qword_1009436B0, &type metadata accessor for TitledParagraphStyle);
  sub_100753274();
  sub_100753274();
  if (aBlock == v126 && v121 == v127)
  {
    v35 = 1;
  }

  else
  {
    v35 = sub_100754754();
  }

  v36 = *(v26 + 8);
  v36(v28, v25);
  v36(v32, v25);

  v37 = v117;
  v117[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_useDetailPageStyling] = v35 & 1;
  sub_1002EC380();
  v38 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_separatorView];
  sub_100749A44();
  sub_10038A528(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v39 = v112;
  v40 = sub_100754324();
  (*(v22 + 8))(v24, v39);
  [v38 setHidden:v40 & 1];
  sub_10000C518(&qword_1009349F8);
  sub_10038931C();
  sub_100752964();
  v41 = aBlock;
  if (qword_100920818 != -1)
  {
    swift_once();
  }

  v42 = sub_10000C518(&unk_10092BC10);
  sub_10000D0FC(v42, qword_10097EF08);
  v43 = v115;
  v126 = v115;
  swift_unknownObjectRetain();
  sub_100743464();
  result = swift_unknownObjectRelease();
  v45 = v119;
  v46 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
    goto LABEL_56;
  }

  type metadata accessor for TitledParagraphCollectionViewCell();
  [v37 frame];
  v48 = v47;
  sub_10038847C(v45, v46, v43, v49);
  if (v48 < v50)
  {
    v51 = v41;
  }

  else
  {
    v51 = 0;
  }

  if ((v51 & 1) == 0)
  {
    v73 = sub_100745864();
    v74 = [v43 traitCollection];
    v75 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v73];
    v76 = [v73 length];
    v77 = swift_allocObject();
    *(v77 + 16) = 0;
    *(v77 + 24) = v74;
    *(v77 + 32) = v75;
    *(v77 + 40) = 1;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_100047814;
    *(v78 + 24) = v77;
    v124 = sub_1000B18A8;
    v125 = v78;
    aBlock = _NSConcreteStackBlock;
    v121 = 1107296256;
    v122 = sub_100047044;
    v123 = &unk_100873348;
    v79 = _Block_copy(&aBlock);
    v80 = v74;
    v81 = v75;

    [v73 enumerateAttributesInRange:0 options:v76 usingBlock:{0x100000, v79}];

    _Block_release(v79);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
LABEL_57:
      __break(1u);
      return result;
    }

    v72 = v108;
    v61 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView];
    v82 = v111;
    (*(v118 + 56))(v108, 1, 1, v111);
    v83 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
    v84 = v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
    v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 0;
    v116 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel;
    v85 = *&v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
    v86 = v81;
    [v85 setNumberOfLines:0];
    if (v84 != v61[v83])
    {
      sub_100260550();
    }

    v68 = v86;
    sub_10025FF08(v86);
    v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
    v87 = v110;
    sub_1002B111C(v72, v110);
    v88 = v118;
    v71 = &stru_1008F2000;
    if ((*(v118 + 48))(v87, 1, v82) == 1)
    {
      sub_10038A470(v87);
      goto LABEL_46;
    }

    v93 = v107;
    (*(v88 + 32))(v107, v87, v82);
    v94 = v106;
    (*(v88 + 16))(v106, v93, v82);
    v95 = (*(v88 + 88))(v94, v82);
    if (v95 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v95 == enum case for Paragraph.Alignment.center(_:))
      {
        v96 = 1;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.right(_:))
      {
        v96 = 2;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.justified(_:))
      {
        v96 = 3;
        goto LABEL_45;
      }

      if (v95 == enum case for Paragraph.Alignment.localized(_:))
      {
        v96 = 4;
        goto LABEL_45;
      }

      (*(v88 + 8))(v106, v82);
    }

    v96 = 0;
LABEL_45:
    [*&v61[v116] setTextAlignment:v96];
    (*(v88 + 8))(v107, v82);
    goto LABEL_46;
  }

  v52 = sub_100745834();
  v53 = [v43 traitCollection];
  v54 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v52];
  v55 = [v52 length];
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = v53;
  *(v56 + 32) = v54;
  *(v56 + 40) = 1;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_1002B1424;
  *(v57 + 24) = v56;
  v124 = sub_1002B1408;
  v125 = v57;
  aBlock = _NSConcreteStackBlock;
  v121 = 1107296256;
  v122 = sub_100047044;
  v123 = &unk_1008733C0;
  v58 = _Block_copy(&aBlock);
  v59 = v53;
  v60 = v54;

  [v52 enumerateAttributesInRange:0 options:v55 usingBlock:{0x100000, v58}];

  _Block_release(v58);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v37 = v117;
  v61 = *&v117[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_bodyTextView];
  v62 = v111;
  (*(v118 + 56))(v116, 1, 1, v111);
  v63 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v64 = v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed];
  v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] = 1;
  v65 = *&v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  v66 = *&v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
  v67 = v60;
  [v66 setNumberOfLines:v65];
  if (v64 != v61[v63])
  {
    sub_100260550();
  }

  v68 = v67;
  sub_10025FF08(v67);
  v61[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  v69 = v109;
  sub_1002B111C(v116, v109);
  v70 = v118;
  v71 = &stru_1008F2000;
  if ((*(v118 + 48))(v69, 1, v62) != 1)
  {
    v89 = v104;
    (*(v70 + 32))(v104, v69, v62);
    v90 = v105;
    (*(v70 + 16))(v105, v89, v62);
    v91 = (*(v70 + 88))(v90, v62);
    if (v91 != enum case for Paragraph.Alignment.left(_:))
    {
      if (v91 == enum case for Paragraph.Alignment.center(_:))
      {
        v92 = 1;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.right(_:))
      {
        v92 = 2;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.justified(_:))
      {
        v92 = 3;
        goto LABEL_42;
      }

      if (v91 == enum case for Paragraph.Alignment.localized(_:))
      {
        v92 = 4;
        goto LABEL_42;
      }

      (*(v70 + 8))(v105, v62);
    }

    v92 = 0;
LABEL_42:
    [v66 setTextAlignment:v92];
    (*(v70 + 8))(v89, v62);
    v72 = v116;
    goto LABEL_46;
  }

  sub_10038A470(v69);
  v72 = v116;
LABEL_46:
  [v61 v71[51].attr];

  sub_10038A470(v72);
  v97 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_primarySubtitleLabel];
  sub_100745844();
  if (v98)
  {
    v99 = sub_100753064();
  }

  else
  {
    v99 = 0;
  }

  [v97 setText:v99];

  v100 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension33TitledParagraphCollectionViewCell_secondarySubtitleLabel];
  sub_100745854();
  if (v101)
  {
    v102 = sub_100753064();
  }

  else
  {
    v102 = 0;
  }

  [v100 setText:v102];

  return [v37 v71[51].attr];
}

uint64_t sub_10038A458(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10038A470(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100930640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038A4D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10038A528(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10038A5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v32 = a7;
  v30 = a1;
  v31 = a3;
  v33 = a10;
  v34 = a6;
  v35 = sub_100741494();
  v13 = *(v35 - 8);
  __chkstk_darwin(v35);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&unk_100947360);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v30 - v19;
  v21 = *(v17 + 16);
  v21(&v30 - v19, a5, v16, v18);
  type metadata accessor for BoolPreferencesDebugSetting();
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 56) = v30;
  *(v22 + 64) = a2;
  *(v22 + 72) = v23;
  *(v22 + 80) = a4;
  *(v22 + 88) = v32;
  (v21)(v22 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key, v20, v16);
  v24 = (v22 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  v25 = v33;
  *v24 = v34;
  v24[1] = v25;

  swift_unknownObjectRetain();

  sub_100741484();
  v26 = sub_100741464();
  v28 = v27;
  (*(v13 + 8))(v15, v35);
  v36 = v26;
  v37 = v28;
  sub_1007544E4();
  (*(v17 + 8))(v20, v16);
  return v22;
}

void *sub_10038A804(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_10000C518(&qword_100933270);
  sub_100349280();
  sub_100752E84();
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100742B74();
  }

  swift_getObjectType();
  return sub_10027B8E4(a1, v8 & 1, a6);
}

uint64_t sub_10038A8CC()
{
  if (!sub_100279E58())
  {
    return 2;
  }

  sub_10000C518(&qword_100933260);
  sub_100349280();
  sub_100752954();
  return 3;
}

unint64_t sub_10038A9A8()
{
  result = qword_100934A58;
  if (!qword_100934A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934A58);
  }

  return result;
}

unint64_t sub_10038AA00()
{
  result = qword_100934A60;
  if (!qword_100934A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934A60);
  }

  return result;
}

void sub_10038AA54()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems] = sub_100742B84();

  v8 = sub_100742B94();
  v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleText];
  *v9 = v8;
  v9[1] = v10;

  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];

  v12 = sub_100753064();

  [v11 setText:v12];

  [v1 setNeedsLayout];
  v13 = sub_100742BA4();
  v14 = &v1[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v14 = v13;
  v14[1] = v15;

  sub_10027A9AC();
  v16 = sub_100742B64();
  if (v16)
  {
    v37 = v16;
    sub_10074ECD4();
    sub_100752764();
    sub_10038B0BC(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v17 = sub_10000C518(&unk_100933080);
    (*(*(v17 - 8) + 56))(v7, 0, 1, v17);
  }

  else
  {
    v18 = sub_10000C518(&unk_100933080);
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  v19 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10027C710(v7, &v1[v19]);
  swift_endAccess();
  sub_10027AB34();
  sub_10038B054(v7);
  sub_10000C518(&qword_100933260);
  sub_100349280();
  sub_100752964();
  if (v37)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_100742B74();
  }

  sub_10027C5AC();
  v1[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded] = v20 & 1;
  sub_10027A700();
  v21 = sub_100742B64();
  if (v21)
  {
    v37 = v21;
    sub_10074ECD4();
    sub_100752764();
    sub_10038B0BC(&qword_100928558, &type metadata accessor for Action);
    sub_100752684();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_10000C518(&unk_100933080);
  (*(*(v23 - 8) + 56))(v4, v22, 1, v23);
  swift_beginAccess();
  sub_10027C710(v4, &v1[v19]);
  swift_endAccess();
  sub_10027AB34();
  sub_10038B054(v4);
  v24 = [v1 traitCollection];
  v25 = sub_1007537B4();

  v1[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = (v25 & 1) == 0;
  if (v25)
  {
    v26 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v27 = *&v1[v26];
    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v1[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v1[v26] = 0;

    [v1 setNeedsLayout];
  }

  else
  {
    v29 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v30 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView;
    swift_beginAccess();
    v31 = *&v1[v30];
    if (v31)
    {
      [v31 removeFromSuperview];
      v32 = *&v1[v30];
    }

    else
    {
      v32 = 0;
    }

    *&v1[v30] = v29;
    v33 = v29;

    if (v33)
    {
      sub_10000D198();
      v34 = sub_100753DB4();
      [v33 setBackgroundColor:v34];

      v35 = [v1 contentView];
      [v35 addSubview:v33];
    }

    [v1 setNeedsLayout];
  }
}

uint64_t sub_10038B054(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100933090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10038B0BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10038B284()
{
  ObjectType = swift_getObjectType();
  v29 = ObjectType;
  v37 = sub_100750354();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074E3C4();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10074C224();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10000C518(&qword_100934A98);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_100745FE4();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46.receiver = v0;
  v46.super_class = ObjectType;
  objc_msgSendSuper2(&v46, "layoutSubviews", v14, v29);
  v17 = enum case for ChartOrCategoryBrickStyle.tile(_:);
  v18 = sub_10074B2D4();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v11, v17, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  sub_100745FD4();
  *(&v44 + 1) = v12;
  v45 = &protocol witness table for PlaceholderBrick;
  v20 = sub_10000D134(&v43);
  (*(v13 + 16))(v20, v16, v12);
  v21 = [v0 traitCollection];
  sub_10000C824(&v43, v41);
  sub_10074C1E4();
  sub_10000C620(&v43);
  v22 = v31;
  (*(v4 + 16))(v30, v8, v31);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28CategoryBrickPlaceholderView_artworkPlaceholder];
  v24 = sub_1007433C4();
  v40 = &protocol witness table for UIView;
  v39 = v24;
  v38 = v23;
  v47 = 0u;
  v48 = 0u;
  v49 = 1;
  v25 = v23;
  v26 = v32;
  sub_10074E3B4();
  sub_1007477B4();
  v27 = v33;
  sub_10074E384();
  (*(v36 + 8))(v27, v37);
  (*(v34 + 8))(v26, v35);
  (*(v4 + 8))(v8, v22);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_10038B934()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MessagesSearchViewController();
  objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10038BEA8;
  *(v3 + 24) = v2;
  v8[4] = sub_100045E0C;
  v8[5] = v3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10011B528;
  v8[3] = &unk_100873640;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performWithoutAnimation:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_10038BB34(void *a1, uint64_t a2, uint64_t a3, const char **a4)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for MessagesSearchViewController();
  v6 = *a4;
  v7 = v8.receiver;
  objc_msgSendSuper2(&v8, v6, a3);
  sub_100745584();
  sub_100745564();
  sub_1007454D4();
}

void sub_10038BBD0()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100923960);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v14 - v4;
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController])
  {
    v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_activeSearchBarObservingViewController + 8];
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = sub_100241724(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension20SearchViewController_objectGraph];
      v10 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_100052F00(v5);
      }

      else
      {
        sub_1003C0E00(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }

  v12 = [v1 navigationController];
  if (v12)
  {
    v13 = v12;
  }
}

id sub_10038BDAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesSearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesSearchViewController()
{
  result = qword_100934AC8;
  if (!qword_100934AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10038BE70()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10038BEDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10038BF1C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &v4[*a3];
  *v7 = a1;
  *(v7 + 1) = a2;

  v8 = *&v4[*a4];
  if (a2)
  {
    v9 = sub_100753064();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText:v9];

  v10 = sub_100753114();

  [v8 setHidden:v10 & 1];

  return [v4 setNeedsLayout];
}

id sub_10038C00C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueText];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueText + 8])
  {
    if (!v4)
    {
      type metadata accessor for FadeableDynamicTypeLabel(0);
      v5 = sub_100745C64();
      sub_10038FF84(v5);

      v6 = *&v0[v3];
      if (v6)
      {
        [v6 setLineBreakMode:2];
      }
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeFromSuperview];
      v7 = *&v0[v3];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v3] = 0;

    [v0 setNeedsLayout];
  }

  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  if (v8)
  {
    if (*(v2 + 1))
    {
      v9 = v8;

      v10 = sub_100753064();
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    [v9 setText:v10];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10038C168(uint64_t a1)
{
  v3 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_action;
  swift_beginAccess();
  sub_10027C710(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_tapGestureRecognizer);
  sub_100016B4C(v1 + v6, v5, &qword_100933090);
  v8 = sub_10000C518(&unk_100933080);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  v10 = v7;
  sub_10000C8CC(v5, &qword_100933090);
  [v10 setEnabled:v9];

  return sub_10000C8CC(a1, &qword_100933090);
}

uint64_t sub_10038C2DC()
{
  v58 = sub_10074A224();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v44[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = sub_10074F7D4();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v57 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10074A214();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v55 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100745B34();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100749104();
  sub_100039C50(v11, qword_10097FD50);
  v49 = sub_10000D0FC(v11, qword_10097FD50);
  if (qword_100921048 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v13 = sub_10000D0FC(v12, qword_100980E10);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v16 = v14 + 16;
  v15(v10, v13, v12);
  v17 = v8[13];
  v18 = enum case for FontSource.useCase(_:);
  v68 = v8 + 13;
  v65 = v17;
  v17(v10);
  v19 = sub_100750B04();
  v86[3] = v19;
  v86[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v86);
  v84 = v7;
  v85 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v83);
  v21 = v8[2];
  v69 = v8 + 2;
  v67 = v21;
  v21(v20, v10, v7);
  sub_100750B14();
  v22 = v8[1];
  v66 = v8 + 1;
  v63 = v22;
  v22(v10, v7);
  if (qword_100921040 != -1)
  {
    swift_once();
  }

  v60 = sub_10000D0FC(v12, qword_100980DF8);
  v15(v10, v60, v12);
  v45 = v18;
  v65(v10, v18, v7);
  v84 = v19;
  v85 = &protocol witness table for StaticDimension;
  sub_10000D134(v83);
  v23 = v16;
  v24 = v15;
  v81 = v7;
  v82 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v80);
  v26 = v67;
  v67(v25, v10, v7);
  sub_100750B14();
  v27 = v63;
  v63(v10, v7);
  v64 = v12;
  v61 = v23;
  v62 = v24;
  v24(v10, v60, v12);
  v28 = v45;
  v29 = v65;
  v65(v10, v45, v7);
  v81 = v19;
  v82 = &protocol witness table for StaticDimension;
  sub_10000D134(v80);
  v78 = v7;
  v79 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v77);
  v26(v30, v10, v7);
  sub_100750B14();
  v27(v10, v7);
  v31 = v28;
  v32 = v19;
  v33 = v29;
  if (qword_100921028 != -1)
  {
    swift_once();
  }

  v34 = v64;
  v46 = sub_10000D0FC(v64, qword_100980DB0);
  v35 = v62;
  v62(v10, v46, v34);
  v33(v10, v28, v7);
  v78 = v32;
  v79 = &protocol witness table for StaticDimension;
  sub_10000D134(v77);
  v36 = v33;
  v60 = v32;
  v75 = v7;
  v76 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v74);
  v67(v37, v10, v7);
  sub_100750B14();
  v63(v10, v7);
  v38 = v46;
  v35(v10, v46, v64);
  v36(v10, v28, v7);
  v75 = v60;
  v76 = &protocol witness table for StaticDimension;
  sub_10000D134(v74);
  v72 = v7;
  v73 = &protocol witness table for FontSource;
  v39 = sub_10000D134(v71);
  v40 = v67;
  v67(v39, v10, v7);
  sub_100750B14();
  v41 = v63;
  v63(v10, v7);
  v62(v10, v38, v64);
  v65(v10, v31, v7);
  v72 = v60;
  v73 = &protocol witness table for StaticDimension;
  sub_10000D134(v71);
  v70[3] = v7;
  v70[4] = &protocol witness table for FontSource;
  v42 = sub_10000D134(v70);
  v40(v42, v10, v7);
  sub_100750B14();
  v41(v10, v7);
  (*(v47 + 104))(v52, enum case for BadgeViewSpacing.standard(_:), v48);
  (*(v50 + 104))(v55, enum case for BadgeCaptionCappingType.none(_:), v51);
  (*(v53 + 104))(v57, enum case for BadgeType.chartPosition(_:), v54);
  (*(v56 + 104))(v59, enum case for BadgeValueViewAlignment.baseline(_:), v58);
  return sub_100749094();
}

char *sub_10038CC24(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_leadingValue;
  v13 = enum case for BadgeLeadingValue.infer(_:);
  v14 = sub_100746594();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_caption];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView] = 0;
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_heading];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueText];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_isTruncatable] = 1;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionCappingType;
  v19 = enum case for BadgeCaptionCappingType.none(_:);
  v20 = sub_10074A214();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_requiresRemainingWidth] = 0;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueViewAlignment;
  v22 = enum case for BadgeValueViewAlignment.baseline(_:);
  v23 = sub_10074A224();
  (*(*(v23 - 8) + 104))(&v4[v21], v22, v23);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_spacing;
  v25 = enum case for BadgeViewSpacing.standard(_:);
  v26 = sub_100745B34();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_action;
  v28 = sub_10000C518(&unk_100933080);
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgeType;
  v30 = enum case for BadgeType.custom(_:);
  v31 = sub_10074F7D4();
  (*(*(v31 - 8) + 104))(&v4[v29], v30, v31);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView] = 0;
  v32 = &v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgePositionInRibbon];
  *v32 = 0;
  v32[8] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_overallBadgeCount] = 0;
  v33 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_tapGestureRecognizer;
  *&v4[v33] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v34] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel;
  *&v4[v36] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v37 = type metadata accessor for BadgeView(0);
  v61.receiver = v4;
  v61.super_class = v37;
  v38 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 systemGrayColor];
  [v44 setTintColor:v45];

  v46 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_tapGestureRecognizer;
  [*&v44[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_tapGestureRecognizer] setEnabled:0];
  v47 = *&v44[v46];
  [v47 addTarget:v44 action:"didTapBadgeView:"];

  [v44 addGestureRecognizer:*&v44[v46]];
  v48 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel;
  [*&v44[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel] setNumberOfLines:1];
  [*&v44[v48] setTextAlignment:1];
  [*&v44[v48] setLineBreakMode:2];
  v49 = qword_100921040;
  v50 = *&v44[v48];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = sub_100750534();
  v52 = sub_10000D0FC(v51, qword_100980DF8);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v54(v11, v52, v51);
  v55 = *(v53 + 56);
  v55(v11, 0, 1, v51);
  sub_100745BA4();

  [v44 addSubview:*&v44[v48]];
  v56 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel;
  [*&v44[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel] setNumberOfLines:1];
  [*&v44[v56] setTextAlignment:1];
  [*&v44[v56] setLineBreakMode:2];
  v57 = qword_100921048;
  v58 = *&v44[v56];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_10000D0FC(v51, qword_100980E10);
  v54(v11, v59, v51);
  v55(v11, 0, 1, v51);
  sub_100745BA4();

  [v44 addSubview:*&v44[v56]];
  sub_10038DBA0();
  sub_10038DF90();

  return v44;
}

id sub_10038D338()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BadgeView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10038D69C()
{
  v1 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v1 - 8);
  v32 = &v30 - v2;
  v31 = sub_10074A214();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100746594();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for BadgeLeadingValue.infer(_:), v6, v8);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_leadingValue;
  swift_beginAccess();
  (*(v7 + 24))(&v0[v11], v10, v6);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v7 + 8))(v10, v6);
  v12 = &v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_caption];
  *v12 = 0;
  *(v12 + 1) = 0;

  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel];
  [v13 setText:0];

  LOBYTE(v10) = sub_100753114();

  [v13 setHidden:v10 & 1];
  [v0 setNeedsLayout];
  v14 = &v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_heading];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel];
  [v15 setText:0];

  LOBYTE(v7) = sub_100753114();

  [v15 setHidden:v7 & 1];
  [v0 setNeedsLayout];
  v16 = &v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueText];
  *v16 = 0;
  *(v16 + 1) = 0;

  sub_10038C00C();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel;
  v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v0[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v0[v17] = 0;

  [v0 setNeedsLayout];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView;
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView];
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *&v0[v20];
  }

  else
  {
    v22 = 0;
  }

  *&v0[v20] = 0;

  [v0 setNeedsLayout];
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView] = 0;

  v24 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment] = 4;
  [*&v0[v17] setTextAlignment:4];
  [v13 setTextAlignment:*&v0[v24]];
  [v15 setTextAlignment:*&v0[v24]];
  [v0 setNeedsLayout];
  v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_isTruncatable] = 1;
  [v0 setNeedsLayout];
  v25 = v31;
  (*(v3 + 104))(v5, enum case for BadgeCaptionCappingType.none(_:), v31);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v3 + 24))(&v0[v26], v5, v25);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v3 + 8))(v5, v25);
  v27 = sub_10000C518(&unk_100933080);
  v28 = v32;
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  return sub_10038C168(v28);
}

void sub_10038DBA0()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_100921028 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100980DB0);
  v7.super.isa = [v1 traitCollection];
  isa = v7.super.isa;
  v9 = sub_100750514(v7).super.isa;
  v10 = [(objc_class *)v9 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v10)
  {
    v18 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

    if (v18)
    {
      v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
      if (v11)
      {
        v12 = v11;
        [v12 setFont:v18];
      }

      v13 = v18;

      return;
    }
  }

  else
  {
  }

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  if (v14)
  {
    v15 = *(v5 - 8);
    (*(v15 + 16))(v4, v6, v5);
    (*(v15 + 56))(v4, 0, 1, v5);
    v16 = v14;
    sub_100745BA4();
  }
}

void sub_10038DE08()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tintColor];
    [v2 setTintColor:v3];
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 tintColor];
    [v5 setTextColor:v6];
  }
}

void sub_10038DF90()
{
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v1 systemGrayColor];
  [v0 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel];
  v5 = [v1 systemGrayColor];
  [v4 setTextColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel];
  sub_100016C60(0, &qword_100923500);
  v7 = [objc_allocWithZone(UIColor) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.4];
  v8.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.5];
  v9.super.isa = v7;
  isa = sub_100753EC4(v9, v8).super.isa;
  [v6 setTextColor:isa];
}

void sub_10038E130(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = sub_10074F7D4();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100745B34();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100746594();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v44 = sub_10074A224();
  v11 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074A214();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v18 = sub_100749104();
  v19 = sub_10000D0FC(v18, qword_10097FD50);
  (*(*(v18 - 8) + 16))(a1, v19, v18);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v15 + 16))(v17, &v2[v20], v14);
  sub_1007490C4();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v2[v21], v44);
  sub_100749064();
  sub_1007490E4();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_leadingValue;
  swift_beginAccess();
  v23 = v45;
  (*(v7 + 16))(v45, &v2[v22], v6);
  v24 = v46;
  (*(v7 + 104))(v46, enum case for BadgeLeadingValue.view(_:), v6);
  sub_100390728(&qword_100934BC0, &type metadata accessor for BadgeLeadingValue);
  sub_100753014();
  v25 = *(v7 + 8);
  v25(v24, v6);
  v25(v23, v6);
  sub_1007490B4();
  v26 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_spacing;
  swift_beginAccess();
  (*(v48 + 16))(v47, &v2[v26], v49);
  sub_100749084();
  v27 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgeType;
  swift_beginAccess();
  (*(v51 + 16))(v50, &v2[v27], v52);
  sub_1007490F4();
  v28 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView];
  if (v28)
  {
    v29 = v28;
    sub_1007432E4();
  }

  sub_1007490D4();
  if ((v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgePositionInRibbon + 8] & 1) == 0)
  {
    v30 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgePositionInRibbon];
    v31 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_overallBadgeCount];
    v32 = [v2 traitCollection];
    v33 = sub_1007537F4();
    v34 = v33;
    if (!v30 && (v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (__OFSUB__(v31, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (((v30 == v31 - 1) & v33) == 1)
    {
LABEL_10:
      v35 = sub_100749054();
      *(v36 + 8) = 0;
      v35(v53, 0);
      v37 = sub_100749074();
      *(v38 + 8) = 0;
      v37(v53, 0);
    }

    if (!v30 && ((v34 ^ 1) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v31, 1))
    {
      if ((v30 != v31 - 1) | v34 & 1)
      {
LABEL_16:

        return;
      }

LABEL_15:
      v39 = sub_100749054();
      *(v40 + 24) = 0;
      v39(v53, 0);
      v41 = sub_100749074();
      *(v42 + 24) = 0;
      v41(v53, 0);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_10038E874()
{
  v27 = sub_100750354();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100749104();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100749124();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeView(0);
  v44.receiver = v0;
  v44.super_class = v9;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  sub_10038E130(v5);
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel];
  v11 = sub_100745C84();
  v42 = v11;
  v43 = &protocol witness table for UILabel;
  v41 = v10;
  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView];
  v13 = sub_100016C60(0, &qword_100922300);
  v39 = v13;
  v40 = &protocol witness table for UIView;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel];
  }

  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  if (v15)
  {
    v16 = &protocol witness table for UILabel;
    v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
  }

  else
  {
    v17 = 0;
    v11 = 0;
    v16 = 0;
    v34 = 0;
    v35 = 0;
  }

  v33 = v17;
  v36 = v11;
  v37 = v16;
  v18 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView];
  if (v18)
  {
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v29 = 0;
    v30 = 0;
  }

  v28 = v18;
  v31 = v13;
  v32 = v19;
  v20 = v15;
  v21 = v18;
  v22 = v10;
  v23 = v12;
  sub_100749114();
  sub_1007477B4();
  sub_100749034();
  (*(v26 + 8))(v2, v27);
  return (*(v6 + 8))(v8, v25);
}

double sub_10038EBD4()
{
  v1 = sub_100749104();
  __chkstk_darwin(v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749124();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10038E130(v3);
  v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel);
  v9 = sub_100745C84();
  v25[18] = v9;
  v25[19] = &protocol witness table for UILabel;
  v25[15] = v8;
  v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView);
  v11 = sub_100016C60(0, &qword_100922300);
  v25[13] = v11;
  v25[14] = &protocol witness table for UIView;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel);
  }

  v25[10] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel);
  if (v13)
  {
    v14 = &protocol witness table for UILabel;
    v15 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel);
  }

  else
  {
    v15 = 0;
    v9 = 0;
    v14 = 0;
    v25[6] = 0;
    v25[7] = 0;
  }

  v25[5] = v15;
  v25[8] = v9;
  v25[9] = v14;
  v16 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView);
  if (v16)
  {
    v17 = &protocol witness table for UIView;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v16;
  v25[3] = v11;
  v25[4] = v17;
  v18 = v13;
  v19 = v16;
  v20 = v8;
  v21 = v10;
  sub_100749114();
  sub_100390728(&qword_100934BC8, &type metadata accessor for BadgeViewRibbonLayout);
  sub_100750404();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  return v23;
}

void sub_10038EEC8(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = sub_100753804();

  v6 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment] = v7;
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel] setTextAlignment:?];
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel] setTextAlignment:*&v2[v6]];
  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel] setTextAlignment:*&v2[v6]];
  [v2 setNeedsLayout];
  sub_10038DBA0();
}

void sub_10038F0C8()
{
  sub_100746594();
  if (v0 <= 0x3F)
  {
    sub_10074A214();
    if (v1 <= 0x3F)
    {
      sub_10074A224();
      if (v2 <= 0x3F)
      {
        sub_100745B34();
        if (v3 <= 0x3F)
        {
          sub_1001E5A54();
          if (v4 <= 0x3F)
          {
            sub_10074F7D4();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10038F378()
{
  if (v0[qword_100934B40] == 1)
  {
    if (*&v0[qword_100934B48])
    {
      return;
    }

    v2 = *&v0[qword_100934B50];
    v3 = *&v0[qword_100934B20];
    if (v2 == -1)
    {
      v6 = v3;
      v7 = [v0 traitCollection];
      v4 = sub_1007537F4();
    }

    else
    {
      v4 = v2 == 1;
      v5 = v3;
    }

    v8 = sub_10014D304(v3, v4 & 1);

    v1 = v8;
  }

  else
  {
    v1 = 0;
  }

  sub_10038F468(v1);
}

void sub_10038F468(void *a1)
{
  v3 = qword_100934B48;
  v4 = *&v1[qword_100934B48];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v10 = a1;

  v6 = [v1 layer];
  [v6 setMasksToBounds:0];

  v7 = *&v1[v3];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 layer];
    [v9 addSublayer:v8];
  }
}

id sub_10038F554(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, "text");
  if (v2)
  {
    v3 = v2;
    sub_100753094();

    v4 = sub_100753064();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_10038F608(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_100753094();
    v4 = a1;

    v5 = sub_100753064();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v10, "setText:", v5);

  sub_1007481E4();
  sub_100748194();
  sub_100748184();
  v7 = sub_100748204();
  if (v7)
  {
    v8 = v7;
    [a1 bounds];
    CGRectGetWidth(v11);
    [a1 lineBreakMode];
    v9 = sub_1007481A4();
  }

  else
  {
    v9 = -1;
  }

  *&a1[qword_100934B50] = v9;
}

id sub_10038F750(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = objc_msgSendSuper2(&v3, "attributedText");

  return v1;
}

void sub_10038F7AC(void *a1, uint64_t a2, void *a3)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v4 = v11.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v11, "setAttributedText:", v5);
  if (v5)
  {
    v6 = sub_1007481E4();
    v7 = v5;
    sub_100748184();
    v8 = objc_allocWithZone(v6);
    v9 = sub_1007481F4();
    [v4 bounds];
    CGRectGetWidth(v12);
    [v4 lineBreakMode];
    v10 = sub_1007481A4();
  }

  else
  {
    v10 = -1;
  }

  *&v4[qword_100934B50] = v10;
}

void sub_10038F8CC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (v0[qword_100934B38] == 1)
  {
    [v0 frame];
    [v0 sizeThatFits:{v1, v2}];
    v4 = v3;
    [v0 frame];
    v5 = floor(v4 - CGRectGetWidth(v12)) > COERCE_DOUBLE(1);
    v6 = qword_100934B40;
    v0[qword_100934B40] = v5;
    sub_10038F378();
    v7 = *&v0[qword_100934B48];
    if (v7)
    {
      if (v0[v6] == 1)
      {
        v8 = v7;
        [v0 frame];
        CGRectGetWidth(v13);
        [v0 bounds];
        CGRectGetMaxX(v14);
        [v0 bounds];
        CGRectGetMinY(v15);
        [v0 bounds];
        CGRectGetHeight(v16);
        v9 = *&v0[qword_100934B50];
        v10 = v8;
        [v0 bounds];
        if (v9 == -1)
        {
          sub_100753B24();
        }

        else
        {
          sub_100753B34();
        }

        [v10 setFrame:?];
      }
    }
  }
}

void sub_10038FAA8(void *a1)
{
  v1 = a1;
  sub_10038F8CC();
}

void sub_10038FAF0()
{
  if (*&v0[qword_100934B48])
  {
    v1 = *&v0[qword_100934B50];
    v2 = *&v0[qword_100934B20];
    if (v1 == -1)
    {
      v5 = v2;
      v6 = [v0 traitCollection];
      v3 = sub_1007537F4();
    }

    else
    {
      v3 = v1 == 1;
      v4 = v2;
    }

    v7 = sub_10014D304(v2, v3 & 1);

    sub_10038F468(v7);
  }
}

void sub_10038FBC4(void *a1)
{
  v1 = a1;
  sub_10038FAF0();
}

uint64_t sub_10038FC0C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v22[1] = a4;
  v23 = a2;
  v24 = a3;
  v11 = sub_10074AB44();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v15 - 8);
  v17 = v22 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_100934B20;
  sub_100016C60(0, &qword_100923500);
  *&v18[v19] = sub_100753E04();
  *&v18[qword_100934B28] = 0x3FD0000000000000;
  *&v18[qword_100934B30] = 0x4034000000000000;
  v18[qword_100934B38] = 1;
  v18[qword_100934B40] = 0;
  *&v18[qword_100934B48] = 0;
  *&v18[qword_100934B50] = -1;
  sub_100016B4C(a1, v17, &unk_100928A40);
  (*(v12 + 16))(v14, a6, v11);
  v20 = sub_100745C74();
  (*(v12 + 8))(a6, v11);
  sub_10000C8CC(a1, &unk_100928A40);
  return v20;
}

void sub_10038FE50()
{
  v1 = *(v0 + qword_100934B48);
}

id sub_10038FE90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10038FEC8(uint64_t a1)
{
  v2 = *(a1 + qword_100934B48);
}

unint64_t sub_10038FF30()
{
  result = qword_100934BB8;
  if (!qword_100934BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934BB8);
  }

  return result;
}

id sub_10038FF84(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel];
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
    v7 = v6;
    [v7 setNumberOfLines:1];
    [v7 setLineBreakMode:2];
    [v7 setTextAlignment:1];
    v8 = [v1 tintColor];
    [v7 setTextColor:v8];

    [v1 addSubview:v7];
    sub_10038DBA0();
  }

  return [v1 setNeedsLayout];
}

void sub_10039009C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_leadingValue;
  v2 = enum case for BadgeLeadingValue.infer(_:);
  v3 = sub_100746594();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_caption);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView) = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_heading);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_isTruncatable) = 1;
  v7 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionCappingType;
  v8 = enum case for BadgeCaptionCappingType.none(_:);
  v9 = sub_10074A214();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_requiresRemainingWidth) = 0;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueViewAlignment;
  v11 = enum case for BadgeValueViewAlignment.baseline(_:);
  v12 = sub_10074A224();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_spacing;
  v14 = enum case for BadgeViewSpacing.standard(_:);
  v15 = sub_100745B34();
  (*(*(v15 - 8) + 104))(v0 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_action;
  v17 = sub_10000C518(&unk_100933080);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgeType;
  v19 = enum case for BadgeType.custom(_:);
  v20 = sub_10074F7D4();
  (*(*(v20 - 8) + 104))(v0 + v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView) = 0;
  v21 = v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgePositionInRibbon;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_overallBadgeCount) = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_tapGestureRecognizer;
  *(v0 + v22) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v23) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel;
  *(v0 + v25) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_100754644();
  __break(1u);
}

uint64_t sub_1003903F4()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000C518(&unk_100933080);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_action;
  swift_beginAccess();
  sub_100016B4C(v0 + v11, v6, &qword_100933090);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100933090;
    v13 = v6;
    return sub_10000C8CC(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1007455B4();
  v14 = sub_10000C518(&unk_100923210);
  sub_1007526C4();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100923960;
    v13 = v3;
    return sub_10000C8CC(v13, v12);
  }

  sub_1007455C4();
  v17 = sub_1007455B4();
  sub_1003C0E00(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

uint64_t sub_100390728(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ChartOrCategoryBrickContext.init(model:in:)(uint64_t a1)
{
  sub_10000C824(a1, v3);
  sub_10074C1E4();
  return sub_10000C620(a1);
}

uint64_t sub_1003907E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100750534();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100390850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_100750534();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1003908C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_100750534();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100390940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_100750534();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1003909B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_100750534();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100390A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_100750534();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_100390AA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_10074C174();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.standard(_:))
  {
    v10 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
    a1[3] = v10;
    a1[4] = sub_100391400(&qword_100934BD0, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
    v11 = sub_10000D134(a1);
    if (qword_1009215E8 != -1)
    {
      swift_once();
    }

    v12 = sub_100750534();
    v13 = sub_10000D0FC(v12, qword_100981EF0);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v13, v12);
    v15 = v10[5];
    if (qword_1009215F0 != -1)
    {
      swift_once();
    }

    v16 = sub_10000D0FC(v12, qword_100981F08);
    v14((v11 + v15), v16, v12);
    v17 = v10[6];
    if (qword_1009215F8 != -1)
    {
      swift_once();
    }

    v18 = sub_10000D0FC(v12, qword_100981F20);
    v14((v11 + v17), v18, v12);
    v19 = v10[7];
    if (qword_100921600 != -1)
    {
      swift_once();
    }

    v20 = sub_10000D0FC(v12, qword_100981F38);
    v14((v11 + v19), v20, v12);
    v21 = v10[8];
    if (qword_100921608 != -1)
    {
      swift_once();
    }

    v22 = sub_10000D0FC(v12, qword_100981F50);
    v14((v11 + v21), v22, v12);
    v23 = v10[9];
    if (qword_100921610 != -1)
    {
      swift_once();
    }

    v24 = qword_100981F68;
LABEL_29:
    v35 = sub_10000D0FC(v12, v24);
    return (v14)(v11 + v23, v35, v12);
  }

  if (v9 == enum case for ChartOrCategoryBrickContext.BrickType.search(_:))
  {
    v25 = type metadata accessor for SearchChartOrCategoryBrickFontStyles(0);
    a1[3] = v25;
    a1[4] = sub_100391400(&qword_100934BD8, type metadata accessor for SearchChartOrCategoryBrickFontStyles);
    v11 = sub_10000D134(a1);
    if (qword_1009215E8 != -1)
    {
      swift_once();
    }

    v12 = sub_100750534();
    v26 = sub_10000D0FC(v12, qword_100981EF0);
    v14 = *(*(v12 - 8) + 16);
    v14(v11, v26, v12);
    v27 = v25[5];
    if (qword_1009215F0 != -1)
    {
      swift_once();
    }

    v28 = sub_10000D0FC(v12, qword_100981F08);
    v14((v11 + v27), v28, v12);
    v29 = v25[6];
    if (qword_100921618 != -1)
    {
      swift_once();
    }

    v30 = sub_10000D0FC(v12, qword_100981F80);
    v14((v11 + v29), v30, v12);
    v31 = v25[7];
    if (qword_100921620 != -1)
    {
      swift_once();
    }

    v32 = sub_10000D0FC(v12, qword_100981F98);
    v14((v11 + v31), v32, v12);
    v33 = v25[8];
    if (qword_100921628 != -1)
    {
      swift_once();
    }

    v34 = sub_10000D0FC(v12, qword_100981FB0);
    v14((v11 + v33), v34, v12);
    v23 = v25[9];
    if (qword_100921630 != -1)
    {
      swift_once();
    }

    v24 = qword_100981FC8;
    goto LABEL_29;
  }

  v37 = type metadata accessor for StandardChartOrCategoryBrickFontStyles(0);
  a1[3] = v37;
  a1[4] = sub_100391400(&qword_100934BD0, type metadata accessor for StandardChartOrCategoryBrickFontStyles);
  v38 = sub_10000D134(a1);
  if (qword_1009215E8 != -1)
  {
    swift_once();
  }

  v39 = sub_100750534();
  v40 = sub_10000D0FC(v39, qword_100981EF0);
  v41 = *(*(v39 - 8) + 16);
  v41(v38, v40, v39);
  v42 = v37[5];
  if (qword_1009215F0 != -1)
  {
    swift_once();
  }

  v43 = sub_10000D0FC(v39, qword_100981F08);
  v41((v38 + v42), v43, v39);
  v44 = v37[6];
  if (qword_1009215F8 != -1)
  {
    swift_once();
  }

  v45 = sub_10000D0FC(v39, qword_100981F20);
  v41((v38 + v44), v45, v39);
  v46 = v37[7];
  if (qword_100921600 != -1)
  {
    swift_once();
  }

  v47 = sub_10000D0FC(v39, qword_100981F38);
  v41((v38 + v46), v47, v39);
  v48 = v37[8];
  if (qword_100921608 != -1)
  {
    swift_once();
  }

  v49 = sub_10000D0FC(v39, qword_100981F50);
  v41((v38 + v48), v49, v39);
  v50 = v37[9];
  if (qword_100921610 != -1)
  {
    swift_once();
  }

  v51 = sub_10000D0FC(v39, qword_100981F68);
  v41((v38 + v50), v51, v39);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100391400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100391490(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750534();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100391510(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750534();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100391580()
{
  result = sub_100750534();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10039164C(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_100981A58);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_100750B04();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000D134(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000D134(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_100750B14();
  return (*(v8 + 8))(v10, v7);
}

char *sub_100391844(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_1007469A4();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView;
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v22 = sub_100750534();
  v23 = sub_10000D0FC(v22, qword_100981A58);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v16, v23, v22);
  (*(v24 + 56))(v16, 0, 1, v22);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v25 = objc_allocWithZone(sub_100745C84());
  *&v5[v21] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_pageTraits] = 0;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v27 = sub_100749E34();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v5[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = 1;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton] = 0;
  v28 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v36.receiver = v5;
  v36.super_class = v28;
  v29 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView]];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView]];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_taglineLabel;
  v33 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_100745C34();

  v34 = [v29 contentView];
  [v34 addSubview:*&v29[v32]];

  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v29;
}

uint64_t sub_100391CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:);
  v3 = sub_100749E34();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100391D64(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView);
    v4 = [a1 superview];
    if (v4)
    {
      v5 = v4;
      sub_100016C60(0, &qword_100922300);
      v6 = v3;
      v7 = sub_100753FC4();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_100391E18(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100393A40(&qword_1009230E0, type metadata accessor for VideoView);
    v5 = v2;
    v6 = [v4 superview];
    if (v6)
    {
      v7 = v6;
      sub_100016C60(0, &qword_100922300);
      v8 = v5;
      v9 = sub_100753FC4();

      if (v9)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          [v10 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v12 = v2;
  }

  swift_unknownObjectWeakAssign();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v2 addSubview:v13];
  }

  sub_10062FDFC();
  [v2 setNeedsLayout];
}

void (*sub_100391FB8(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10039201C;
}

void sub_10039201C(uint64_t a1, char a2)
{
  v4 = *a1;
  v29 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100393A40(&qword_1009230E0, type metadata accessor for VideoView);
      v7 = v4;
      v8 = v29;
      v9 = [v6 superview];
      if (v9)
      {
        v10 = v9;
        sub_100016C60(0, &qword_100922300);
        v11 = v8;
        v12 = sub_100753FC4();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
      v22 = v29;
    }

    swift_unknownObjectWeakAssign();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      [v29 addSubview:v24];
    }

    sub_10062FDFC();
    [v29 setNeedsLayout];

    v26 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_100393A40(&qword_1009230E0, type metadata accessor for VideoView);
      v15 = v29;
      v16 = [v6 superview];
      if (v16)
      {
        v17 = v16;
        sub_100016C60(0, &qword_100922300);
        v18 = v15;
        v19 = sub_100753FC4();

        if (v19)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v23 = v29;
    }

    swift_unknownObjectWeakAssign();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v29 addSubview:v27];
    }

    sub_10062FDFC();
    [v29 setNeedsLayout];

    v26 = v29;
  }
}

uint64_t sub_100392340()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v60 = sub_100750354();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100749E94();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749E34();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_10000C518(&qword_100934D90);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v54 = sub_100749E74();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v24 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v67.receiver = v1;
  v67.super_class = v24;
  v51 = v24;
  objc_msgSendSuper2(&v67, "layoutSubviews");
  v61 = v1[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_10009A9B0(&v1[v25], v19);
  v49 = v19;
  sub_10009A9B0(v19, v16);
  v26 = *(v6 + 48);
  if (v26(v16, 1, v5) == 1)
  {
    (*(ObjectType + 224))();
    if (v26(v16, 1, v5) != 1)
    {
      sub_10000C8CC(v16, &qword_100934D90);
    }
  }

  else
  {
    (*(v6 + 32))(v13, v16, v5);
  }

  v27 = *(v6 + 16);
  v27(v10, v13, v5);
  v28 = (*(v6 + 88))(v10, v5);
  v29 = v23;
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v30 = v50;
    if (qword_100920A88 != -1)
    {
      swift_once();
    }

    sub_10000C824(qword_10097FE28, v66);
  }

  else
  {
    v30 = v50;
    if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_100920A80 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE00, v66);
    }

    else
    {
      if (qword_100920A88 != -1)
      {
        swift_once();
      }

      sub_10000C824(qword_10097FE28, v66);
      (*(v6 + 8))(v10, v5);
    }
  }

  v27(v30, v13, v5);
  sub_10000C824(v66, v65);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v31 = sub_100750534();
  sub_10000D0FC(v31, qword_100981A58);
  v32 = [v1 traitCollection];
  sub_100753C14();

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v33 = sub_100750B04();
  v34 = sub_10000D0FC(v33, qword_100982098);
  v63 = v33;
  v64 = &protocol witness table for StaticDimension;
  v35 = sub_10000D134(v62);
  (*(*(v33 - 8) + 16))(v35, v34, v33);
  sub_100749E54();
  sub_10000C620(v66);
  (*(v6 + 8))(v13, v5);
  sub_10000C8CC(v49, &qword_100934D90);
  v36 = v53;
  v37 = v54;
  (*(v53 + 16))(v52, v29, v54);
  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView];
  v66[3] = type metadata accessor for SmallLockupView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v38;
  v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView];
  v65[3] = type metadata accessor for LockupMediaView();
  v65[4] = &protocol witness table for UIView;
  v65[0] = v39;
  v40 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_taglineLabel];
  v41 = v38;
  v42 = v39;
  if ([v40 hasContent])
  {
    v43 = sub_100745C84();
    v44 = v40;
    v45 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v40 = 0;
    v62[1] = 0;
    v62[2] = 0;
  }

  v63 = v43;
  v64 = v45;
  v62[0] = v40;
  v46 = v55;
  sub_100749E84();
  sub_1007477B4();
  v47 = v57;
  sub_100749E44();
  (*(v59 + 8))(v47, v60);
  (*(v56 + 8))(v46, v58);
  return (*(v36 + 8))(v29, v37);
}

uint64_t sub_100392C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_10000C518(&unk_100934D80);
  __chkstk_darwin(v12 - 8);
  v14 = &v44[-v13];
  v15 = sub_100746A94();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v47 = &v44[-v19];
  if (sub_10074A7E4())
  {
    v46 = a6;
    if (a2 | a1)
    {
      v28 = v47;
      sub_100750504();
      (*(v48 + 104))(v28, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v15);
      return (*(v48 + 32))(v46, v28, v15);
    }

    v20 = sub_100631A30(a3, a4, 0, 1);
    v21 = v20;
    v22 = v20 >> 62;
    if (v20 >> 62)
    {
      v23 = sub_100754664();
      if (a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
LABEL_5:
        v24 = sub_100743844();
        goto LABEL_12;
      }
    }

    v24 = 0;
LABEL_12:
    v45 = sub_100631D8C(v24);

    if (a3)
    {
      v29 = sub_100743844();
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_10074A7F4();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v14, a5, v30);
    (*(v31 + 56))(v14, 0, 1, v30);
    v32 = sub_1006322B4(v29, v14);

    sub_10000C8CC(v14, &unk_100934D80);
    if (v22)
    {
      result = sub_100754664();
      if (result)
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          sub_100754574();
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }
        }

        v33 = sub_10074F194();

        if (v33)
        {
          v34 = v47;
          (*(v48 + 104))(v47, enum case for LockupMediaLayout.DisplayType.landscape(_:), v15);
          return (*(v48 + 32))(v46, v34, v15);
        }

LABEL_24:
        v35 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v36 = *(v48 + 104);
        v36(v17, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v15);
        v37 = sub_100746A84();
        v38 = *(v48 + 8);
        v38(v17, v15);
        if (((v23 >= v37) & v32) != 0 || (v35 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v15), v39 = sub_100746A84(), v38(v17, v15), ((v23 >= v39) & v45) != 0) || (v35 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v15), v40 = sub_100746A84(), v38(v17, v15), v23 >= v40) || (v35 = enum case for LockupMediaLayout.DisplayType.oneUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v15), v41 = sub_100746A84(), v38(v17, v15), v23 == v41))
        {
          v34 = v47;
          v42 = v47;
          v43 = v35;
        }

        else
        {
          v43 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v34 = v47;
          v42 = v47;
        }

        v36(v42, v43, v15);
        return (*(v48 + 32))(v46, v34, v15);
      }
    }

    else
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_24;
  }

  v25 = enum case for LockupMediaLayout.DisplayType.none(_:);
  v26 = *(v48 + 104);

  return v26(a6, v25, v15);
}

uint64_t sub_100393210()
{
  v1 = sub_100753094();
  v3 = v2;
  if (v1 == sub_100753094() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = sub_100754754();

  if (v6)
  {
LABEL_15:
    v14 = *(v0 + 144);

    return v14();
  }

  v7 = sub_100753094();
  v9 = v8;
  if (v7 == sub_100753094() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_100754754();

    if ((v12 & 1) == 0)
    {

      return sub_1007504D4();
    }
  }

  return sub_100750504();
}

uint64_t sub_1003933A0()
{
  result = sub_10074EE74();
  if (!v1)
  {
    return sub_10074EE64();
  }

  return result;
}

id sub_1003934B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupCollectionViewCell()
{
  result = qword_100934D48;
  if (!qword_100934D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003935F8()
{
  sub_100393720(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_100393720(319, &qword_100934D60, &type metadata accessor for MixedMediaLockupLayout.LockupPosition);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100393720(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t (*sub_100393798(uint64_t **a1))()
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
  v2[4] = sub_100391FB8(v2);
  return sub_1000181A8;
}

uint64_t sub_100393808(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10039385C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1003938C8(uint64_t *a1))()
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

uint64_t sub_100393A40(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100393A88()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_lockupView;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_mediaView;
  *(v1 + v12) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_100921460 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_100981A58);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = objc_allocWithZone(sub_100745C84());
  *(v1 + v13) = sub_100745C74();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_pageTraits) = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v19 = sub_100749E34();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton) = 0;
  sub_100754644();
  __break(1u);
}

double sub_100393E30()
{
  v0 = sub_10074D544();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074A534();
  v4 = *(v15 - 8);
  __chkstk_darwin(v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v0);
  sub_1006B12A8(v3, v6);
  (*(v1 + 8))(v3, v0);
  sub_100747BA4();
  sub_10074A554();
  sub_100394100(&unk_10093F640, &type metadata accessor for LargeHeroBreakoutLayout);
  sub_100750D34();
  v12 = v11;
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v15);
  return v12;
}

uint64_t sub_100394100(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100394158@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10074E984();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  v10 = (*(v3 + 88))(v5, v2);
  if (v10 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_100921730 != -1)
    {
      swift_once();
    }

    v11 = sub_100750B04();
    v12 = v11;
    v13 = qword_100982110;
LABEL_9:
    v14 = sub_10000D0FC(v11, v13);
    a1[3] = v12;
    a1[4] = &protocol witness table for StaticDimension;
    v15 = sub_10000D134(a1);
    return (*(*(v12 - 8) + 16))(v15, v14, v12);
  }

  if (v10 == enum case for Shelf.ContentType.pageTabs(_:))
  {
    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v11 = sub_100750B04();
    v12 = v11;
    v13 = qword_1009820F8;
    goto LABEL_9;
  }

  sub_10031E4CC(a1);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100394430@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  if ((*(v5 + 88))(v7, v4) == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v12 = sub_100750B04();
    v13 = sub_10000D0FC(v12, qword_1009820F8);
    a2[3] = v12;
    a2[4] = &protocol witness table for StaticDimension;
    v14 = sub_10000D134(a2);
    return (*(*(v12 - 8) + 16))(v14, v13, v12);
  }

  else
  {
    sub_10031F808(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1003946A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v13 - v6;
  sub_100747BB4();
  sub_100122174(v7);
  v8 = sub_10000C518(&unk_10092E450);
  if ((*(*(v8 - 8) + 48))(v4, 1, v8) == 1)
  {
    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v9 = sub_100750B04();
    v10 = sub_10000D0FC(v9, qword_100982128);
    a1[3] = v9;
    a1[4] = &protocol witness table for StaticDimension;
    v11 = sub_10000D134(a1);
    return (*(*(v9 - 8) + 16))(v11, v10, v9);
  }

  else
  {
    sub_1002BCD0C();
    sub_10074BE44();
    return sub_100122174(v4);
  }
}

void sub_100394864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-v9 - 8];
  sub_100171C7C(a3, &v28[-v9 - 8]);
  v11 = sub_10074F164();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000C8CC(v10, &qword_100926DC0);
  }

  else
  {
    v16 = sub_10074F124();
    (*(v12 + 8))(v10, v11);
    if (v16)
    {
      if (a1)
      {
        v17 = [a1 imageByApplyingSymbolConfiguration:a5];
        if (v17)
        {
          v18 = v17;
          [v17 size];
          v20 = v19;
          v22 = v21;

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            v25 = sub_100743304();
            *(v26 + 16) = v20;
            *(v26 + 24) = v22;
            v25(v28, 0);
          }
        }
      }
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v15 = v13;
    v29.value.super.isa = a1;
    v29.is_nil = 0;
    sub_1007432F4(v29, v14);
  }
}

uint64_t sub_100394A70(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v136 = a5;
  v141 = a4;
  v139 = a3;
  v138 = a2;
  v10 = sub_100752AC4();
  v143 = *(v10 - 8);
  v144 = v10;
  __chkstk_darwin(v10);
  v142 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v12 - 8);
  v134 = &v116 - v13;
  v132 = sub_100745B34();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v130 = &v116 - v16;
  v145 = sub_10074F7D4();
  v148 = *(v145 - 8);
  __chkstk_darwin(v145);
  v137 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v133 = &v116 - v19;
  __chkstk_darwin(v20);
  v128 = &v116 - v21;
  __chkstk_darwin(v22);
  v123 = &v116 - v23;
  v126 = sub_10074A224();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v116 - v26;
  v27 = sub_10000C518(&qword_1009273F8);
  __chkstk_darwin(v27 - 8);
  v117 = &v116 - v28;
  v135 = sub_100746594();
  v29 = *(v135 - 1);
  __chkstk_darwin(v135);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10074A214();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v122 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v116 - v36;
  sub_1007442C4();
  v38 = sub_100752764();
  v119 = a6;
  v118 = v38;
  sub_100752D34();
  v39 = *&v151[0];
  v121 = sub_1003973E8();
  v120 = v40;

  v41 = sub_100397BE4(a1, v39);
  v140 = v39;

  v149 = v33;
  v42 = *(v33 + 104);
  v146 = v37;
  v147 = v32;
  v42(v37, enum case for BadgeCaptionCappingType.none(_:), v32);
  sub_10074E7C4();
  v43 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_leadingValue;
  swift_beginAccess();
  v44 = v135;
  (*(v29 + 24))(&v7[v43], v31, v135);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v29 + 8))(v31, v44);
  v45 = &v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueText];
  v46 = v120;
  *v45 = v121;
  *(v45 + 1) = v46;

  sub_10038C00C();
  v47 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView;
  v48 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueView];
  v49 = v41;
  if (v48)
  {
    [v48 removeFromSuperview];
    v48 = *&v7[v47];
  }

  *&v7[v47] = v41;
  v50 = v49;

  v51 = v147;
  v52 = v125;
  if (v41)
  {
    v53 = [v7 tintColor];
    [v50 setTintColor:v53];

    [v7 addSubview:v50];
  }

  [v7 setNeedsLayout];
  v135 = v50;

  v54 = sub_10074E8A4();
  if (v55)
  {
    *&v151[0] = v54;
    *(&v151[0] + 1) = v55;
    v56 = v117;
    sub_100741544();
    v57 = sub_100741574();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    sub_1000D5C0C();
    v58 = sub_1007542B4();
    v60 = v59;
    sub_10000C8CC(v56, &qword_1009273F8);

    v54 = v58;
  }

  else
  {
    v60 = 0;
  }

  v61 = v127;
  sub_10038BF08(v54, v60);
  v62 = [v7 traitCollection];
  v63 = sub_100753804();

  if (v63)
  {
    v64 = 4;
  }

  else
  {
    v64 = 1;
  }

  v65 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment;
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_alignment] = v64;
  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueLabel] setTextAlignment:?];
  v66 = *&v7[v65];
  v121 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionLabel];
  [v121 setTextAlignment:v66];
  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_headingLabel] setTextAlignment:*&v7[v65]];
  [v7 setNeedsLayout];
  v67 = v149;
  v68 = v122;
  (*(v149 + 16))(v122, v146, v51);
  v69 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v67 + 24))(&v7[v69], v68, v51);
  swift_endAccess();
  [v7 setNeedsLayout];
  v70 = *(v67 + 8);
  v149 = v67 + 8;
  v127 = v70;
  (v70)(v68, v51);
  v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_isTruncatable] = sub_10074E7D4() & 1;
  [v7 setNeedsLayout];
  v71 = v123;
  sub_10074E854();
  v72 = v145;
  v73 = *(v148 + 88);
  v74 = v73(v71, v145);
  if (v74 == enum case for BadgeType.contentRating(_:))
  {
    v75 = v126;
    (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.center(_:), v126);
    v76 = enum case for BadgeType.chartPosition(_:);
  }

  else
  {
    v76 = enum case for BadgeType.chartPosition(_:);
    v75 = v126;
    if (v74 == enum case for BadgeType.chartPosition(_:))
    {
      v76 = v74;
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.topOfValueLabel(_:), v126);
    }

    else if (v74 == enum case for BadgeType.artwork(_:))
    {
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.centerOfView(_:), v126);
    }

    else
    {
      v77 = *(v52 + 104);
      if (v74 == enum case for BadgeType.paragraph(_:))
      {
        v77(v61, enum case for BadgeValueViewAlignment.topOfView(_:), v126);
      }

      else
      {
        v77(v61, enum case for BadgeValueViewAlignment.baseline(_:), v126);
        (*(v148 + 8))(v71, v72);
      }
    }
  }

  v78 = v124;
  (*(v52 + 32))(v124, v61, v75);
  v79 = v75;
  v80 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v52 + 24))(&v7[v80], v78, v79);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v52 + 8))(v78, v79);
  v81 = v128;
  sub_10074E854();
  v82 = v73;
  if (v73(v81, v72) == v76)
  {
    v83 = v129;
    *v129 = 0;
    v84 = v131;
    v85 = v132;
    (*(v131 + 104))(v83, enum case for BadgeViewSpacing.spacing(_:), v132);
  }

  else
  {
    v84 = v131;
    v83 = v129;
    v85 = v132;
    (*(v131 + 104))(v129, enum case for BadgeViewSpacing.standard(_:), v132);
    (*(v148 + 8))(v81, v72);
  }

  v86 = v134;
  v87 = v130;
  (*(v84 + 32))(v130, v83, v85);
  v88 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_spacing;
  swift_beginAccess();
  (*(v84 + 24))(&v7[v88], v87, v85);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v84 + 8))(v87, v85);
  v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_requiresRemainingWidth] = sub_100398EFC() & 1;
  if (v136)
  {
    *&v151[0] = v136;
    sub_10074ECD4();
    sub_1003990D8(&qword_100928558, &type metadata accessor for Action);

    v72 = v145;
    sub_100752684();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = sub_10000C518(&unk_100933080);
  (*(*(v90 - 8) + 56))(v86, v89, 1, v90);
  sub_10038C168(v86);
  v91 = v133;
  sub_10074E854();
  v92 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgeType;
  swift_beginAccess();
  v93 = v148;
  (*(v148 + 40))(&v7[v92], v91, v72);
  swift_endAccess();
  v94 = &v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_badgePositionInRibbon];
  *v94 = v138;
  v94[8] = v139 & 1;
  v95 = v72;
  v96 = v141;
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_overallBadgeCount] = v141;
  v97 = v137;
  sub_10074E854();
  v98 = v97;
  v99 = v82(v97, v95);
  v100 = v147;
  if (v99 == enum case for BadgeType.rating(_:))
  {
    v101 = sub_100397864();
    v102 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView;
    v103 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView];
    v104 = v101;
    if (v103)
    {
      [v103 removeFromSuperview];
      v103 = *&v7[v102];
    }

    *&v7[v102] = v101;
    v108 = v101;

    [v7 addSubview:v108];
    [v7 setNeedsLayout];

    v109 = &v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_caption];
    *v109 = 0;
    *(v109 + 1) = 0;

    v110 = v121;
    [v121 setText:0];

    v111 = sub_100753114();

    [v110 setHidden:v111 & 1];
    [v7 setNeedsLayout];
  }

  else
  {
    (*(v93 + 8))(v98, v95);
    v105 = OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView;
    v106 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_captionView];
    if (v106)
    {
      [v106 removeFromSuperview];
      v107 = *&v7[v105];
    }

    else
    {
      v107 = 0;
    }

    *&v7[v105] = 0;

    if (v96 < 4 || (v112 = sub_10074E7A4(), !v113))
    {
      v112 = sub_10074E884();
    }

    sub_10038BEF4(v112, v113);
  }

  sub_10038DF90();
  [v7 setNeedsLayout];
  *&v151[0] = 0x2E6567646162;
  *(&v151[0] + 1) = 0xE600000000000000;
  v152._countAndFlagsBits = sub_10074E814();
  sub_1007531B4(v152);

  memset(v151, 0, sizeof(v151));
  memset(v150, 0, sizeof(v150));
  v114 = v142;
  sub_100752A34();

  sub_10000C8CC(v150, &unk_100923520);
  sub_10000C8CC(v151, &unk_100923520);
  sub_100753C74();

  (*(v143 + 8))(v114, v144);
  return (v127)(v146, v100);
}

double sub_100395BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v124 = a9;
  v143 = a5;
  v127 = a4;
  v135 = a3;
  v123 = sub_10074CD14();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_100745B34();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v120 - v17;
  v142 = sub_100749104();
  v136 = *(v142 - 8);
  __chkstk_darwin(v142);
  v19 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000C518(&qword_1009273F8);
  __chkstk_darwin(v20 - 8);
  v126 = &v120 - v21;
  v138 = sub_10074A214();
  v146 = *(v138 - 8);
  __chkstk_darwin(v138);
  v130 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v145 = &v120 - v24;
  v139 = sub_100750534();
  v125 = *(v139 - 8);
  __chkstk_darwin(v139);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100743B04();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10074F7D4();
  v141 = *(v147 - 8);
  __chkstk_darwin(v147);
  v129 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v128 = &v120 - v33;
  __chkstk_darwin(v34);
  v36 = &v120 - v35;
  v144 = a1;
  sub_1003973E8();
  v137 = a2;
  v132 = v15;
  if (v37)
  {
    if (qword_100921028 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v139, qword_100980DB0);
    v38 = sub_10074F3F4();
    v151 = v38;
    v152 = sub_1003990D8(&qword_10092AC70, &type metadata accessor for Feature);
    v39 = sub_10000D134(v150);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    sub_10074FC74();
    sub_10000C620(v150);
    sub_10074CCB4();
  }

  sub_10074E854();
  v140 = *(v141 + 88);
  v40 = v140(v36, v147);
  v41 = enum case for BadgeType.rating(_:);
  if (v40 != enum case for BadgeType.rating(_:))
  {
    if (v40 == enum case for BadgeType.contentRating(_:))
    {
      v49 = sub_10074E894();
      v50 = sub_1007419D4();
      v47 = v136;
      v48 = v138;
      if (!*(v49 + 16))
      {

        goto LABEL_38;
      }

      v52 = sub_1003861D0(v50, v51);
      v54 = v53;

      if (v54)
      {
        sub_10000C5B4(*(v49 + 56) + 32 * v52, v150);

        if (swift_dynamicCast())
        {
          v55 = sub_10056003C(v148, v149, 0);

          [v55 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v48 = v138;
    if (v40 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v47) = enum case for BadgeType.rating(_:);
      v153._object = 0x8000000100779C20;
      v153._countAndFlagsBits = 0xD000000000000020;
      v154._countAndFlagsBits = 0;
      v154._object = 0xE000000000000000;
      v124 = sub_1007458B4(v153, v154);
      if (qword_100921030 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v47 = v136;
    if (v40 == enum case for BadgeType.editorsChoice(_:))
    {
      v68 = type metadata accessor for EditorsChoiceView();
      sub_100080000(0, v143, v68);
      goto LABEL_38;
    }

    v69 = v143;
    v70 = v147;
    if (v40 == enum case for BadgeType.artwork(_:))
    {
      if (qword_100920A78 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v142, qword_10097FD50);
      sub_1007490A4();
      v71 = [v69 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100753B64();
      goto LABEL_39;
    }

    if (v40 == enum case for BadgeType.paragraph(_:))
    {
      sub_1003975A4();
      if (qword_100921020 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v139, qword_100980D98);
      v74 = sub_10074F3F4();
      v151 = v74;
      v152 = sub_1003990D8(&qword_10092AC70, &type metadata accessor for Feature);
      v75 = sub_10000D134(v150);
      (*(*(v74 - 8) + 104))(v75, enum case for Feature.measurement_with_labelplaceholder(_:), v74);
      sub_10074FC74();
      sub_10000C620(v150);
      sub_10074CCB4();
      v77 = v76;

      v78 = [v69 traitCollection];
      sub_100539784(v77, a6);
    }

    else
    {
      if (v40 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v141 + 8))(v36, v147);
        goto LABEL_39;
      }

      v79 = sub_10074E894();
      v80 = sub_100741BF4();
      if (!*(v79 + 16))
      {

        goto LABEL_39;
      }

      v82 = sub_1003861D0(v80, v81);
      v84 = v83;

      if ((v84 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10000C5B4(*(v79 + 56) + 32 * v82, v150);

      sub_100016C60(0, &qword_100922300);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v78 = v148;
      [v148 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v42 = [v143 traitCollection];
  v43 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v28 + 104))(v30, enum case for SystemImage.star(_:), v27);
  v44 = v41;
  v45 = [v43 configurationWithTraitCollection:v42];
  v46 = sub_100743AE4();

  v41 = v44;
  (*(v28 + 8))(v30, v27);
  [v46 contentInsets];
  [v46 contentInsets];
  [v46 size];
  [v46 contentInsets];
  [v46 contentInsets];
  [v46 size];

  v47 = v136;
  v48 = v138;
  while (1)
  {
LABEL_38:
    v70 = v147;
LABEL_39:
    v85 = v128;
    sub_10074E854();
    if (v140(v85, v70) == v41)
    {
      v86 = sub_100397864();
      [v86 frame];
      CGRectGetWidth(v155);

      v87 = v143;
    }

    else
    {
      (*(v141 + 8))(v85, v70);
      if (v127 >= 4)
      {
        sub_10074E7A4();
        if (v88)
        {
          v87 = v143;
LABEL_45:
          if (qword_100921040 != -1)
          {
            swift_once();
          }

          sub_10000D0FC(v139, qword_100980DF8);
          v90 = sub_10074F3F4();
          v151 = v90;
          v152 = sub_1003990D8(&qword_10092AC70, &type metadata accessor for Feature);
          v91 = sub_10000D134(v150);
          (*(*(v90 - 8) + 104))(v91, enum case for Feature.measurement_with_labelplaceholder(_:), v90);
          sub_10074FC74();
          sub_10000C620(v150);
          sub_10074CCB4();

          v70 = v147;
          goto LABEL_48;
        }
      }

      sub_10074E884();
      v87 = v143;
      if (v89)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v146 + 104))(v145, enum case for BadgeCaptionCappingType.none(_:), v48);
    v92 = sub_10074E8A4();
    if (v93)
    {
      v94 = v48;
      v150[0] = v92;
      v150[1] = v93;
      v95 = v126;
      sub_100741544();
      v96 = sub_100741574();
      (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      sub_1000D5C0C();
      sub_1007542B4();
      sub_10000C8CC(v95, &qword_1009273F8);

      if (qword_100921048 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v139, qword_100980E10);
      v97 = sub_10074F3F4();
      v151 = v97;
      v152 = sub_1003990D8(&qword_10092AC70, &type metadata accessor for Feature);
      v98 = sub_10000D134(v150);
      (*(*(v97 - 8) + 104))(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
      sub_10074FC74();
      sub_10000C620(v150);
      sub_10074CCB4();

      v70 = v147;
      v48 = v94;
    }

    v99 = v134;
    if (qword_100920A78 != -1)
    {
      swift_once();
    }

    v100 = v142;
    v101 = sub_10000D0FC(v142, qword_10097FD50);
    (*(v47 + 16))(v19, v101, v100);
    v26 = v48;
    (*(v146 + 16))(v130, v145, v48);
    sub_1007490C4();
    v102 = v129;
    sub_10074E854();
    if (v140(v102, v70) == enum case for BadgeType.chartPosition(_:))
    {
      v103 = v132;
      *v132 = 0;
      v104 = v133;
      (*(v133 + 104))(v103, enum case for BadgeViewSpacing.spacing(_:), v99);
    }

    else
    {
      v104 = v133;
      v103 = v132;
      (*(v133 + 104))(v132, enum case for BadgeViewSpacing.standard(_:), v99);
      (*(v141 + 8))(v102, v70);
    }

    v105 = v137;
    (*(v104 + 32))(v131, v103, v99);
    sub_100749084();
    v48 = v26;
    if (v135)
    {
      goto LABEL_69;
    }

    v106 = [v87 traitCollection];
    v107 = sub_1007537F4();
    v108 = v107;
    if (!v105 && (v107 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v127, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v127 - 1 == v105) & v107) == 1)
    {
LABEL_62:
      v109 = sub_100749054();
      *(v110 + 8) = 0;
      v109(v150, 0);
      v111 = sub_100749074();
      *(v112 + 8) = 0;
      v111(v150, 0);
      v48 = v138;
    }

    if (!v105 && ((v108 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v127, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v56 = v139;
    v57 = sub_10000D0FC(v139, qword_100980DC8);
    (*(v125 + 16))(v26, v57, v56);
    v58.super.isa = [v143 traitCollection];
    isa = v58.super.isa;
    v60 = sub_100750514(v58).super.isa;
    v61 = [(objc_class *)v60 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v61)
    {
      v62 = [objc_opt_self() fontWithDescriptor:v61 size:0.0];

      v41 = v47;
      if (v62)
      {
        v63 = sub_10074F3F4();
        v151 = v63;
        v152 = sub_1003990D8(&qword_10092AC70, &type metadata accessor for Feature);
        v64 = sub_10000D134(v150);
        (*(*(v63 - 8) + 104))(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
        v65 = v62;
        sub_10074FC74();
        sub_10000C620(v150);
        v66 = v121;
        sub_10074CD04();
        sub_1003990D8(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
        v67 = v123;
        sub_100750404();

        (*(v122 + 8))(v66, v67);
        goto LABEL_26;
      }
    }

    else
    {

      v41 = v47;
    }

    v72 = sub_10074F3F4();
    v151 = v72;
    v152 = sub_1003990D8(&qword_10092AC70, &type metadata accessor for Feature);
    v73 = sub_10000D134(v150);
    (*(*(v72 - 8) + 104))(v73, enum case for Feature.measurement_with_labelplaceholder(_:), v72);
    sub_10074FC74();
    sub_10000C620(v150);
    sub_10074CCB4();

LABEL_26:
    (*(v125 + 8))(v26, v139);
    v47 = v136;
  }

  if ((v127 - 1 != v105) | v108 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v113 = sub_100749054();
  *(v114 + 24) = 0;
  v113(v150, 0);
  v115 = sub_100749074();
  *(v116 + 24) = 0;
  v115(v150, 0);
LABEL_68:

LABEL_69:
  sub_100749024();
  v118 = v117;
  (*(v47 + 8))(v19, v142);
  (*(v146 + 8))(v145, v48);
  return v118;
}

uint64_t sub_1003973E8()
{
  v0 = sub_10074F7D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10074E854();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for BadgeType.contentRating(_:))
  {
    v5 = sub_10074E894();
    v6 = sub_1007419E4();
    goto LABEL_5;
  }

  if (v4 == enum case for BadgeType.chartPosition(_:))
  {
    v5 = sub_10074E894();
    v6 = sub_10074C604();
LABEL_5:
    if (*(v5 + 16))
    {
      v8 = sub_1003861D0(v6, v7);
      v10 = v9;

      if (v10)
      {
        sub_10000C5B4(*(v5 + 56) + 32 * v8, v12);

        if (swift_dynamicCast())
        {
          return v13;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:
    v13 = 0;
    v14 = 0;
    return v13;
  }

  v13 = 0;
  v14 = 0;
  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_1003975A4()
{
  v0 = sub_10074F7D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  sub_10074E854();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_1003990D8(&qword_10092F418, &type metadata accessor for BadgeType);
  sub_100753274();
  sub_100753274();
  if (v17[0] == v18 && v17[1] == v19)
  {
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);
  }

  else
  {
    v8 = sub_100754754();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_10074E894();
  v11 = sub_10074C614();
  if (!*(v10 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_1003861D0(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_10000C5B4(*(v10 + 56) + 32 * v13, v17);

  if (swift_dynamicCast())
  {
    return v18;
  }

  return 0;
}

char *sub_100397864()
{
  v0 = type metadata accessor for RatingView();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating] = 0;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarColor] = 0;
  v2 = &v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starPadding];
  *v2 = 0;
  v2[8] = 1;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_100921700 != -1)
  {
    swift_once();
  }

  v3 = qword_10093B668;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = qword_10093B668;
  v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starSize] = 1;
  *v2 = 0;
  v2[8] = 1;
  v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_useCase] = 1;
  v4 = type metadata accessor for StarRow();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView] = sub_1004FC838(5, 1, 1, 0, 1, 0, 1);
  v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_fillEmptyStars] = 0;
  v7 = objc_allocWithZone(v4);
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView] = sub_1004FC838(5, 0, 1, 0, 1, 0, 1);
  v26.receiver = v1;
  v26.super_class = v0;
  v8 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004FA474();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView;
  v10 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_filledStarRowView];
  v11 = *&v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating];
  *&v10[OBJC_IVAR____TtC22SubscribePageExtensionP33_2C6014D15F02DB8C76D5CE42FDC095AC7StarRow_currentRating] = *&v8[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_rating];
  v12 = v10;
  sub_1004FAF60(v11);

  if (*&v8[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_emptyStarRowView])
  {
    [v8 addSubview:?];
  }

  [v8 addSubview:*&v8[v9]];

  v13 = sub_10074E894();
  v14 = sub_100749014();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_1003861D0(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_10000C5B4(*(v13 + 56) + 32 * v16, v25);

  sub_100016C60(0, &qword_10092BE20);
  if (swift_dynamicCast())
  {
    v19 = v24;
    [v24 floatValue];
    sub_1004FA340(v20);
    goto LABEL_14;
  }

LABEL_11:
  sub_1004FA340(0.0);
  v21 = [objc_opt_self() systemMidGrayColor];
  v19 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor];
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension10RatingView_starColor] = v21;
  sub_100016C60(0, &qword_100923500);
  v22 = v21;
  if ((sub_100753FC4() & 1) == 0)
  {
    sub_1004FA474();
  }

LABEL_14:
  return v8;
}

char *sub_100397BE4(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v2 = sub_10074D6B4();
  __chkstk_darwin(v2 - 8);
  v132 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074AB44();
  v142 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v9 = &v132 - v8;
  v10 = sub_10074F314();
  __chkstk_darwin(v10 - 8);
  v138 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074F284();
  v136 = *(v12 - 8);
  v137 = v12;
  __chkstk_darwin(v12);
  v135 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100934DA0);
  __chkstk_darwin(v14 - 8);
  v134 = &v132 - v15;
  v139 = sub_1007504F4();
  v141 = *(v139 - 8);
  __chkstk_darwin(v139);
  v140 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100749104();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10074F7D4();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E854();
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for BadgeType.rating(_:))
  {
    v26 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v27 = sub_10074E894();
    v28 = sub_10074CF64();
    if (*(v27 + 16))
    {
      v30 = sub_1003861D0(v28, v29);
      v32 = v31;

      if (v32)
      {
        sub_10000C5B4(*(v27 + 56) + 32 * v30, v146);

        if (swift_dynamicCast())
        {
          v33 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
          v34 = sub_100753064();
          v35 = v33;
LABEL_22:
          [v35 setText:v34];

          v43 = v26;
          [v43 setNeedsLayout];

LABEL_23:

          return v43;
        }

LABEL_21:
        v34 = 0;
        v35 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  if (v25 == enum case for BadgeType.contentRating(_:))
  {
    v36 = sub_10074E894();
    v37 = sub_1007419D4();
    if (*(v36 + 16))
    {
      v39 = sub_1003861D0(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_10000C5B4(*(v36 + 56) + 32 * v39, v146);

        if (swift_dynamicCast())
        {
          v42 = sub_10056003C(v144, v145, 0);

          v43 = [objc_allocWithZone(UIImageView) initWithImage:v42];
          [v43 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

          return v43;
        }

        return 0;
      }

LABEL_51:

      return 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (v25 == enum case for BadgeType.chartPosition(_:))
  {
    if (qword_100921030 != -1)
    {
      swift_once();
    }

    v44 = sub_100750534();
    v45 = sub_10000D0FC(v44, qword_100980DC8);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v9, v45, v44);
    (*(v46 + 56))(v9, 0, 1, v44);
    v142[13](v6, enum case for DirectionalTextAlignment.none(_:), v4);
    v47 = objc_allocWithZone(sub_100745C84());
    v48 = sub_100745C74();
    v49.super.isa = [v143 traitCollection];
    isa = v49.super.isa;
    v51 = sub_100750514(v49).super.isa;
    v52 = [(objc_class *)v51 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v52)
    {
      v53 = [objc_opt_self() fontWithDescriptor:v52 size:0.0];

      if (!v53)
      {
LABEL_18:
        [v48 setTextAlignment:1];
        v148._countAndFlagsBits = 0xD000000000000020;
        v148._object = 0x8000000100779C20;
        v150._countAndFlagsBits = 0;
        v150._object = 0xE000000000000000;
        sub_1007458B4(v148, v150);
        v54 = sub_100753064();

        [v48 setText:v54];

        v55 = objc_opt_self();
        v43 = v48;
        v56 = [v55 systemGrayColor];
        [v43 setTextColor:v56];

        return v43;
      }

      [v48 setFont:v53];
      isa = v53;
    }

    goto LABEL_18;
  }

  if (v25 == enum case for BadgeType.editorsChoice(_:))
  {
    v149._object = 0x80000001007681D0;
    v151._countAndFlagsBits = 0xD000000000000050;
    v151._object = 0x80000001007681F0;
    v149._countAndFlagsBits = 0xD000000000000017;
    sub_1007458B4(v149, v151);
    v57 = sub_100753194();

    v58 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
    return sub_1006BACE0(v57 < 19, 1, 0, 0, 2u);
  }

  if (v25 == enum case for BadgeType.artwork(_:))
  {
    v59 = sub_10074E874();
    if (!v59)
    {
      return 0;
    }

    v60 = v59;
    v61 = v143;
    sub_10038E130(v20);
    sub_1007490A4();
    (*(v18 + 8))(v20, v17);
    v62 = [v61 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_100753B64();
    v64 = v63;
    v66 = v65;
    sub_10074F2A4();
    v67 = v140;
    sub_100750504();
    LOBYTE(v62) = sub_100750454();
    v68 = v141 + 8;
    v69 = *(v141 + 8);
    v70 = v139;
    v69(v67, v139);
    v141 = v68;
    if (v62)
    {
      sub_10074F2A4();
      sub_100750504();
      sub_100750464();
      v64 = v71;
      v66 = v72;
      v69(v67, v70);
    }

    v73 = v134;
    v43 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v64, v66}];
    sub_10074F104();
    v74 = sub_10074F0F4();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_10000C8CC(v73, &qword_100934DA0);
      v76 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
    }

    else
    {
      v101 = sub_10074F0E4();
      (*(v75 + 8))(v73, v74);
      v76 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1 scale:v101];
    }

    v142 = v76;
    sub_1007432D4();
    v102 = v135;
    sub_10074F294();
    sub_10074F254();
    (*(v136 + 8))(v102, v137);
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v43 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    v103 = objc_opt_self();
    v104 = [v103 clearColor];
    sub_100743224();
    if (sub_10074E7B4())
    {
      v105 = [v103 secondaryLabelColor];
      sub_100743254();
      [v43 setAccessibilityIgnoresInvertColors:0];
    }

    if (sub_10074F1C4())
    {
      v106 = sub_10056028C(v60, 0);
      v107 = v106;
      sub_100743344();
      if (v106)
      {
        [v107 size];
        v108 = v140;
        sub_100750504();
        v109 = v69;
        v110 = sub_100750444();
        v109(v108, v70);
        [v107 size];
        sub_100750504();
        if (v110)
        {
          sub_100750474();
          v112 = v111;
          v114 = v113;
          v109(v108, v70);
          v115 = sub_100743304();
          *(v116 + 16) = v112;
          *(v116 + 24) = v114;
          v115(v146, 0);

          v61 = v143;
LABEL_71:
          v127 = *&v61[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView];
          *&v61[OBJC_IVAR____TtC22SubscribePageExtension9BadgeView_artworkView] = v43;
          v128 = v43;

          return v43;
        }

        sub_100750464();
        v121 = v123;
        v122 = v124;
        v109(v108, v70);
        v61 = v143;
      }

      else
      {
        v121 = 0;
        v122 = 0;
      }

      v125 = sub_100743304();
      *(v126 + 16) = v121;
      *(v126 + 24) = v122;
      v125(v146, 0);
    }

    else if (v133)
    {
      v147 = 0;
      memset(v146, 0, sizeof(v146));
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v118 = swift_allocObject();
      v119 = v142;
      *(v118 + 16) = v142;
      *(v118 + 24) = v117;
      v120 = v119;

      sub_1007441F4();

      sub_10000C8CC(v146, &unk_1009276E0);
LABEL_70:

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v25 == enum case for BadgeType.paragraph(_:))
  {
    v43 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_1003975A4();
    if (!v77)
    {
      return v43;
    }

    v78 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
    v79 = sub_100753064();
    [v78 setText:v79];

    [v43 setNeedsLayout];
    goto LABEL_23;
  }

  if (v25 != enum case for BadgeType.friendsPlaying(_:))
  {
    (*(v22 + 8))(v24, v21);
    return 0;
  }

  v80 = sub_10074E894();
  v81 = sub_10074DF54();
  if (!*(v80 + 16))
  {
    goto LABEL_50;
  }

  v83 = sub_1003861D0(v81, v82);
  v85 = v84;

  if ((v85 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_10000C5B4(*(v80 + 56) + 32 * v83, v146);

  sub_100016C60(0, &qword_10092BE20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v86 = v144;
  v87 = [v144 integerValue];

  v88 = sub_10074E894();
  v89 = sub_100746784();
  if (!*(v88 + 16))
  {
    goto LABEL_50;
  }

  v91 = sub_1003861D0(v89, v90);
  v93 = v92;

  if ((v93 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_10000C5B4(*(v88 + 56) + 32 * v91, v146);

  sub_10000C518(&qword_100934DA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v94 = v144;
  if (!v133)
  {
    goto LABEL_51;
  }

  v95 = (v144 >> 62);
  if (v144 >> 62)
  {
LABEL_88:
    v96 = sub_100754664();
  }

  else
  {
    v96 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v96 >= v87)
  {
    v97 = v87;
  }

  else
  {
    v97 = v96;
  }

  v98 = v132;
  sub_10074D6A4();
  v99 = objc_allocWithZone(type metadata accessor for AvatarShowcaseView());
  v43 = sub_1005B832C(v97, v98);
  *&v146[0] = _swiftEmptyArrayStorage;
  if (v95)
  {
    v87 = sub_100754664();
  }

  else
  {
    v87 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = 0;
  v95 = _swiftEmptyArrayStorage;
  while (v87 != v129)
  {
    if ((v94 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v129 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    v131 = sub_100745CE4();

    ++v129;
    if (v131)
    {
      sub_100753284();
      if (*((*&v146[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v146[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
      v95 = *&v146[0];
      v129 = v130;
    }
  }

  sub_1005B869C(v95, v133);

  return v43;
}

uint64_t sub_100398EFC()
{
  v0 = sub_10074F7D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_10074E854();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_1003990D8(&qword_10092F418, &type metadata accessor for BadgeType);
  sub_100753274();
  sub_100753274();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100754754();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_1003990D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100399120()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100399158()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003991B4()
{
  result = qword_100934DB0;
  if (!qword_100934DB0)
  {
    sub_10074CF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934DB0);
  }

  return result;
}

uint64_t sub_10039920C(void *a1)
{
  v2 = sub_100752624();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100742D64();
    v6 = a1;
    sub_10074CF74();
    sub_100742D24();

    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    sub_100752DB4();

    return (*(v3 + 8))(v5, v2);
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
    sub_100752D04();

    sub_1003995EC();
    swift_allocError();
    sub_100752DA4();
  }
}

uint64_t sub_1003994BC(uint64_t *a1)
{
  v1 = *a1;
  sub_10000C518(&qword_100930CA0);
  v2 = sub_100752DE4();
  sub_100742D64();
  v5[3] = sub_1000A7FA0();
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = sub_100753774();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_100742D14();

  sub_10000C620(v5);
  return v2;
}

uint64_t sub_1003995A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1003995EC()
{
  result = qword_100934DB8;
  if (!qword_100934DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934DB8);
  }

  return result;
}

unint64_t sub_100399654()
{
  result = qword_100934DC0;
  if (!qword_100934DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100934DC0);
  }

  return result;
}

uint64_t type metadata accessor for SearchAdTransparencyButton()
{
  result = qword_100934DD8;
  if (!qword_100934DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10039974C()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.525490196 green:0.752941176 blue:0.992156863 alpha:1.0];
  qword_10097FE90 = result;
  return result;
}

char *sub_1003997A0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100752AC4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = v27 - v7;
  v9 = qword_100934DC8;
  *&v0[v9] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = &v0[qword_100934DD0];
  *v10 = 0;
  *(v10 + 1) = 0;
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v12 = qword_100921338;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_1009816E0);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  sub_1007466A4();
  v17 = qword_100934DC8;
  [*&v13[qword_100934DC8] setClipsToBounds:1];
  v18 = qword_100920A90;
  v19 = *&v13[v17];
  if (v18 != -1)
  {
    swift_once();
  }

  [v19 setBackgroundColor:qword_10097FE90];

  [*&v13[v17] _setContinuousCornerRadius:4.0];
  [v13 addSubview:*&v13[v17]];
  v20 = objc_opt_self();
  v21 = v13;
  v22 = [v20 whiteColor];
  [v21 setTitleColor:v22 forState:0];

  v23 = [v20 whiteColor];
  sub_1007466C4();
  sub_100753C54();
  v24 = [v23 colorWithAlphaComponent:?];

  [v21 setTitleColor:v24 forState:4];
  v25 = v21;
  sub_100747764();

  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  sub_100752A74();
  sub_1000277BC(v27);
  sub_1000277BC(v28);
  sub_100753C74();
  (*(v3 + 8))(v5, v2);
  [v25 addTarget:v25 action:"didTapButton" forControlEvents:64];

  [v25 _setWantsAccessibilityUnderline:0];
  return v25;
}

char *sub_100399C18(char *result)
{
  v1 = *&result[qword_100934DD0];
  if (v1)
  {
    v2 = result;
    v3 = sub_10001B5AC(v1);
    v1(v3);

    return sub_1000164A8(v1);
  }

  return result;
}

double sub_100399C9C(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v1 titleForState:0];
  if (v3)
  {
    v4 = v3;
    v5 = sub_100753094();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = sub_100399FE4(v2, v5, v7);

  return v8;
}

id sub_100399D60()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  v1 = [v0 traitCollection];
  v2 = [v0 titleForState:0];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100753094();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  sub_100399FE4(v1, v4, v6);

  v7 = *&v0[qword_100934DC8];
  [v7 frame];
  [v7 setFrame:?];
  [v0 bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  return [v7 setCenter:{MidX, CGRectGetMidY(v16)}];
}

void sub_100399ED0(void *a1)
{
  v1 = a1;
  sub_100399D60();
}

uint64_t sub_100399F48()
{
  v1 = *(v0 + qword_100934DD0);

  return sub_1000164A8(v1);
}

uint64_t sub_100399F8C(uint64_t a1)
{
  v2 = *(a1 + qword_100934DD0);

  return sub_1000164A8(v2);
}

double sub_100399FE4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074CD14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    v21._object = 0x8000000100778D30;
    v21._countAndFlagsBits = 0xD00000000000001FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_1007458B4(v21, v22);
  }

  sub_100038D38();
  v9 = qword_100921338;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = sub_100750534();
  sub_10000D0FC(v10, qword_1009816E0);
  sub_100753C14();
  v11 = sub_10074F3F4();
  v20[3] = v11;
  v20[4] = sub_10039A2F8(&qword_10092AC70, &type metadata accessor for Feature);
  v12 = sub_10000D134(v20);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  sub_10074FC74();
  sub_10000C620(v20);
  sub_10074CD04();
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007A5CF0;
  *(v13 + 32) = a1;
  v14 = a1;
  v15 = sub_100751044();
  sub_10039A2F8(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_100750404();
  v17 = v16;

  (*(v6 + 8))(v8, v5);
  return v17 + 12.0;
}

uint64_t sub_10039A2F8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10039A38C()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742924();
  sub_10039A530(&qword_100934E30, &type metadata accessor for AppShowcase);
  sub_1007468B4();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  v5 = sub_10007DC04();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  sub_1004ABD20(v4, v5);
  v7 = v6;

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_10039A530(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10039A57C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();

  return sub_1005867E4(v9, v7, a6, ObjectType);
}

id sub_10039A5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1007454C4();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    sub_100586A7C(v6, a3);
  }

  else
  {
    sub_10074F8A4();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;

    sub_100586C90(v8, a3);
  }

LABEL_6:

  return [v3 setNeedsLayout];
}

double sub_10039A760(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_10039A810(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10039A858(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  v9 = [a4 traitCollection];
  v10 = [v9 preferredContentSizeCategory];
  v11 = sub_100753954();

  if ((v11 & 1) == 0)
  {
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    sub_100536A04(&unk_10097D3C0, a4);
    if (qword_1009219F0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    v16 = sub_10000D0FC(v15, qword_100982828);
    sub_1002C9824(v16, a4);
    goto LABEL_28;
  }

  v12 = _swiftEmptyArrayStorage;
  v27 = _swiftEmptyArrayStorage;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + 32;
    do
    {
      sub_10000C824(v14, v26);
      sub_100012160(v26, v25);
      sub_10000C518(&qword_1009242A0);
      sub_100742954();
      if ((swift_dynamicCast() & 1) != 0 && v25[5])
      {
        sub_100753284();
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v12 = v27;
      }

      v14 += 40;
      --v13;
    }

    while (v13);
  }

  if (!(v12 >> 62))
  {
    v17 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v23 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v24 = [v23 absoluteDimension:?];
    sub_100749A04();

    return;
  }

  v17 = sub_100754664();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v17 >= 1)
  {
    v18 = 0;
    v19 = 0.0;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v20 = sub_100754574();
      }

      else
      {
        v20 = *(v12 + 8 * v18 + 32);
      }

      ++v18;
      sub_1005867E4(v8, v20, a4, ObjectType);
      v22 = v21;

      if (v19 <= v22)
      {
        v19 = v22;
      }
    }

    while (v17 != v18);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_10039ABCC(uint64_t a1)
{
  v47 = a1;
  v36 = sub_100750104();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100748674();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EF0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_100752E44();
    v48 = sub_10000D0FC(v6, qword_100983348);
    v7 = sub_10000C518(&qword_100923930);
    v8 = *(sub_100752454() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    v38 = v10;
    v45 = v1;
    sub_100752434();
    v41 = "advertHostingPageExited";
    sub_1007523A4();
    sub_1007523A4();
    v40 = 2 * v9;
    v11 = sub_100748654();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_100752424();
    sub_10000C8CC(&v50, &unk_100923520);
    v44 = v6;
    sub_100752CE4();

    v13 = sub_100748664();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageEnter(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1004129E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000C8CC(&v50, &unk_100923520);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      sub_100752434();
      sub_1007523A4();
      sub_1007523A4();
      sub_1007523A4();
      v31 = sub_100748654();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_100752424();
      sub_10000C8CC(&v50, &unk_100923520);
      sub_100752D04();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1003DD6A4(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_1007500F4();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000C5B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000C5B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_100750114();
      sub_10000C8CC(&v50, &qword_100934F20);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10074FF84();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10039B260(uint64_t a1)
{
  v47 = a1;
  v36 = sub_100750074();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100748674();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EF0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_100752E44();
    v48 = sub_10000D0FC(v6, qword_100983348);
    v7 = sub_10000C518(&qword_100923930);
    v8 = *(sub_100752454() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    v38 = v10;
    v45 = v1;
    sub_100752434();
    v41 = "duplicatePosition";
    sub_1007523A4();
    sub_1007523A4();
    v40 = 2 * v9;
    v11 = sub_100748654();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_100752424();
    sub_10000C8CC(&v50, &unk_100923520);
    v44 = v6;
    sub_100752CE4();

    v13 = sub_100748664();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.pageExit(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1004129E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000C8CC(&v50, &unk_100923520);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      sub_100752434();
      sub_1007523A4();
      sub_1007523A4();
      sub_1007523A4();
      v31 = sub_100748654();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_100752424();
      sub_10000C8CC(&v50, &unk_100923520);
      sub_100752D04();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1003DD6A4(0x6E65644965676170, 0xEE00726569666974, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_100750064();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000C5B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000C5B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_100750084();
      sub_10000C8CC(&v50, &qword_100934F20);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10074FF74();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10039B8F4(uint64_t a1)
{
  v49 = a1;
  v38 = sub_100750014();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100748674();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EF0 != -1)
  {
    swift_once();
  }

  v7 = sub_100752E44();
  v48 = sub_10000D0FC(v7, qword_100983348);
  v8 = sub_10000C518(&qword_100923930);
  v9 = *(sub_100752454() - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  v12 = (v11 + 32) & ~v11;
  v44 = v8;
  v45 = 4 * v10;
  v42 = v11;
  *(swift_allocObject() + 16) = xmmword_1007A97A0;
  v43 = v12;
  v47 = v1;
  sub_100752434();
  sub_1007523A4();
  sub_1007523A4();
  v41 = 2 * v10;
  v13 = sub_100748654();
  *(&v52[0] + 1) = &type metadata for String;
  *&v51 = v13;
  *(&v51 + 1) = v14;
  v40 = 3 * v10;
  sub_100752424();
  sub_10000C8CC(&v51, &unk_100923520);
  v46 = v7;
  sub_100752CE4();

  v15 = sub_100748664();
  (*(v4 + 104))(v6, enum case for SearchAdOpportunity.LifecycleEventType.placed(_:), v3);
  if (!*(v15 + 16) || (v16 = sub_1004129E8(v6), (v17 & 1) == 0))
  {

    (*(v4 + 8))(v6, v3);
    v53 = 0;
    goto LABEL_18;
  }

  v18 = *(*(v15 + 56) + 8 * v16);
  v19 = *(v4 + 8);

  v19(v6, v3);

  v53 = v18;
  if (!v18)
  {
LABEL_18:
    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1003DD6A4(0x6E6174736E496461, 0xEC00000064496563, &v51);
  if (!*(&v52[0] + 1))
  {
LABEL_19:
    sub_10000C8CC(&v51, &unk_100923520);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    *(swift_allocObject() + 16) = xmmword_1007AB1A0;
    sub_100752434();
    sub_1007523A4();
    sub_1007523A4();
    sub_1007523A4();
    v20 = sub_100748654();
    *(&v52[0] + 1) = &type metadata for String;
    *&v51 = v20;
    *(&v51 + 1) = v21;
    sub_100752424();
    sub_10000C8CC(&v51, &unk_100923520);
    sub_100752D04();
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1003DD6A4(0x6E65644965676170, 0xEE00726569666974, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (!v53)
  {

    v51 = 0u;
    v52[0] = 0u;
    goto LABEL_19;
  }

  sub_1003DD6A4(0x6C706D6554644169, 0xEF65707954657461, &v51);
  if (!*(&v52[0] + 1))
  {

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_20;
  }

  if (v53)
  {
    sub_1003DD6A4(0xD000000000000010, 0x8000000100779E80, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_30;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10000C8CC(&v51, &unk_100923520);
LABEL_30:
  if (v53)
  {
    sub_1003DD6A4(0xD000000000000011, 0x8000000100779EA0, &v51);
    if (*(&v52[0] + 1))
    {
      swift_dynamicCast();
      goto LABEL_35;
    }
  }

  else
  {
    v51 = 0u;
    v52[0] = 0u;
  }

  sub_10000C8CC(&v51, &unk_100923520);
LABEL_35:
  sub_100750004();
  v23 = v53;
  if (!v53)
  {
LABEL_47:
    v35 = v39;
    sub_10074FF94();
    (*(v37 + 8))(v35, v38);
  }

  v24 = 1 << *(v53 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v53 + 64);
  v27 = (v24 + 63) >> 6;

  for (i = 0; v26; result = sub_10000C8CC(&v51, &qword_100934F20))
  {
    v29 = i;
LABEL_44:
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = v30 | (v29 << 6);
    v32 = (*(v23 + 48) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
    sub_10000C5B4(*(v23 + 56) + 32 * v31, v52);
    *&v51 = v33;
    *(&v51 + 1) = v34;
    sub_10000C5B4(v52, &v50);
    swift_bridgeObjectRetain_n();
    sub_100750024();
  }

  while (1)
  {
    v29 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      goto LABEL_47;
    }

    v26 = *(v23 + 64 + 8 * v29);
    ++i;
    if (v26)
    {
      i = v29;
      goto LABEL_44;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10039C250(uint64_t a1)
{
  v47 = a1;
  v36 = sub_100750044();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100748674();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EF0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_100752E44();
    v48 = sub_10000D0FC(v6, qword_100983348);
    v7 = sub_10000C518(&qword_100923930);
    v8 = *(sub_100752454() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    v38 = v10;
    v45 = v1;
    sub_100752434();
    v41 = "advertDidExitView";
    sub_1007523A4();
    sub_1007523A4();
    v40 = 2 * v9;
    v11 = sub_100748654();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_100752424();
    sub_10000C8CC(&v50, &unk_100923520);
    v44 = v6;
    sub_100752CE4();

    v13 = sub_100748664();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.onScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1004129E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000C8CC(&v50, &unk_100923520);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      sub_100752434();
      sub_1007523A4();
      sub_1007523A4();
      sub_1007523A4();
      v31 = sub_100748654();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_100752424();
      sub_10000C8CC(&v50, &unk_100923520);
      sub_100752D04();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1003DD6A4(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_100750034();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000C5B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000C5B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_100750054();
      sub_10000C8CC(&v50, &qword_100934F20);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10074FFA4();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10039C8E0(uint64_t a1)
{
  v47 = a1;
  v36 = sub_1007500D4();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100748674();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EF0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_100752E44();
    v48 = sub_10000D0FC(v6, qword_100983348);
    v7 = sub_10000C518(&qword_100923930);
    v8 = *(sub_100752454() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    v38 = v10;
    v45 = v1;
    sub_100752434();
    v41 = "ered undefined threshold";
    sub_1007523A4();
    sub_1007523A4();
    v40 = 2 * v9;
    v11 = sub_100748654();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v39 = 3 * v9;
    sub_100752424();
    sub_10000C8CC(&v50, &unk_100923520);
    v44 = v6;
    sub_100752CE4();

    v13 = sub_100748664();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.offScreen(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1004129E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000C8CC(&v50, &unk_100923520);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      sub_100752434();
      sub_1007523A4();
      sub_1007523A4();
      sub_1007523A4();
      v31 = sub_100748654();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_100752424();
      sub_10000C8CC(&v50, &unk_100923520);
      sub_100752D04();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1003DD6A4(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_1007500C4();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000C5B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000C5B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v37;
      sub_1007500E4();
      sub_10000C8CC(&v50, &qword_100934F20);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v37;
  sub_10074FFC4();
  (*(v35 + 8))(v34, v36);
}

uint64_t sub_10039CF70(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v4 = sub_100750134();
  v54 = *(v4 - 8);
  v55 = v4;
  __chkstk_darwin(v4);
  v56 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748674();
  v57 = *(v6 - 8);
  v58 = v6;
  __chkstk_darwin(v6);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&qword_100934F28);
  __chkstk_darwin(v9 - 8);
  v11 = v50 - v10;
  v12 = sub_10074B9B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10039E418(a2, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v12);
    if (v16(v11, 1, v12) != 1)
    {
      sub_10000C8CC(v11, &qword_100934F28);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  v17 = sub_10039D8BC();
  v19 = v18;
  result = (*(v13 + 8))(v15, v12);
  if ((v19 & 1) == 0)
  {
    result = sub_10039D8BC();
    if ((v21 & 1) == 0 && result != v17)
    {
      v53 = result;
      if (qword_100921EF0 != -1)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v51 = sub_100752E44();
        v50[10] = sub_10000D0FC(v51, qword_100983348);
        v22 = sub_10000C518(&qword_100923930);
        v23 = *(sub_100752454() - 8);
        v24 = *(v23 + 72);
        v25 = *(v23 + 80);
        v26 = (v25 + 32) & ~v25;
        v50[9] = 8 * v24;
        v50[6] = v25;
        v50[8] = v22;
        *(swift_allocObject() + 16) = xmmword_1007B3A60;
        v50[7] = v26;
        v52 = v2;
        sub_100752434();
        v50[5] = "advertWasRemoved";
        sub_1007523A4();
        sub_1007523A4();
        v50[4] = 2 * v24;
        v27 = sub_100748654();
        *(&v62[0] + 1) = &type metadata for String;
        *&v61 = v27;
        *(&v61 + 1) = v28;
        v50[3] = 3 * v24;
        sub_100752424();
        sub_10000C8CC(&v61, &unk_100923520);
        sub_1007523A4();
        v50[2] = 4 * v24;
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v17;
        v50[1] = 5 * v24;
        sub_100752424();
        sub_10000C8CC(&v61, &unk_100923520);
        sub_1007523A4();
        *(&v62[0] + 1) = &type metadata for Int;
        *&v61 = v53;
        sub_100752424();
        sub_10000C8CC(&v61, &unk_100923520);
        sub_100752CE4();

        v29 = sub_100748664();
        v31 = v57;
        v30 = v58;
        (*(v57 + 104))(v8, enum case for SearchAdOpportunity.LifecycleEventType.visible(_:), v58);
        if (!*(v29 + 16) || (v32 = sub_1004129E8(v8), (v33 & 1) == 0))
        {

          (*(v31 + 8))(v8, v30);
          v63 = 0;
LABEL_26:
          v61 = 0u;
          v62[0] = 0u;
LABEL_27:
          sub_10000C8CC(&v61, &unk_100923520);
LABEL_28:
          *(swift_allocObject() + 16) = xmmword_1007AB1A0;
          sub_100752434();
          sub_1007523A4();
          sub_1007523A4();
          sub_1007523A4();
          v47 = sub_100748654();
          *(&v62[0] + 1) = &type metadata for String;
          *&v61 = v47;
          *(&v61 + 1) = v48;
          sub_100752424();
          sub_10000C8CC(&v61, &unk_100923520);
          sub_100752D04();
        }

        v34 = *(*(v29 + 56) + 8 * v32);
        v35 = *(v31 + 8);

        v35(v8, v30);

        v63 = v34;
        if (!v34)
        {
          goto LABEL_26;
        }

        v2 = &v63;
        sub_1003DD6A4(0x6E6174736E496461, 0xEC00000064496563, &v61);
        if (!*(&v62[0] + 1))
        {
          goto LABEL_27;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_28;
        }

        sub_100750124();
        v36 = v63;
        if (!v63)
        {
          break;
        }

        v37 = 1 << *(v63 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & *(v63 + 64);
        v40 = (v37 + 63) >> 6;

        v17 = 0;
        v8 = &unk_1007BCD48;
        while (v39)
        {
          v41 = v17;
LABEL_23:
          v42 = __clz(__rbit64(v39));
          v39 &= v39 - 1;
          v43 = v42 | (v41 << 6);
          v44 = (*(v36 + 48) + 16 * v43);
          v45 = *v44;
          v46 = v44[1];
          sub_10000C5B4(*(v36 + 56) + 32 * v43, v62);
          *&v61 = v45;
          *(&v61 + 1) = v46;
          sub_10000C5B4(v62, &v60);
          swift_bridgeObjectRetain_n();
          v2 = v56;
          sub_100750144();
          sub_10000C8CC(&v61, &qword_100934F20);
        }

        while (1)
        {
          v41 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v41 >= v40)
          {

            goto LABEL_32;
          }

          v39 = *(v36 + 64 + 8 * v41);
          ++v17;
          if (v39)
          {
            v17 = v41;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_34:
        swift_once();
      }

LABEL_32:
      v49 = v56;
      sub_10074FFD4();
      (*(v54 + 8))(v49, v55);
    }
  }

  return result;
}

uint64_t sub_10039D8BC()
{
  v0 = sub_10074B9B4();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOnScreen(_:), v0, v2);
  sub_10039E488(&qword_100934F30);
  sub_100753274();
  sub_100753274();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v11[1] == v11[0])
  {
    return 100;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.moreThanHalfOnScreen(_:), v0);
  sub_10039E488(&qword_100934F38);
  v8 = sub_100753004();
  v6(v4, v0);
  if ((v8 & 1) == 0)
  {
    return 50;
  }

  (v5)(v4, enum case for AdvertVisibilityCalculator.VisibilityThreshold.fullyOffScreen(_:), v0);
  v9 = sub_100753004();
  v6(v4, v0);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  if (qword_100921EF0 != -1)
  {
    swift_once();
  }

  v10 = sub_100752E44();
  sub_10000D0FC(v10, qword_100983348);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_100752434();
  sub_1007523A4();
  sub_100752D04();

  return 0;
}

uint64_t sub_10039DC38(uint64_t a1)
{
  v47 = a1;
  v37 = sub_1007500A4();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100748674();
  v3 = *(v46 - 8);
  __chkstk_darwin(v46);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921EF0 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v6 = sub_100752E44();
    v48 = sub_10000D0FC(v6, qword_100983348);
    v7 = sub_10000C518(&qword_100923930);
    v8 = *(sub_100752454() - 8);
    v9 = *(v8 + 72);
    v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v42 = v7;
    v43 = 4 * v9;
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    v39 = v10;
    v45 = v1;
    sub_100752434();
    sub_1007523A4();
    sub_1007523A4();
    v41 = 2 * v9;
    v11 = sub_100748654();
    *(&v51[0] + 1) = &type metadata for String;
    *&v50 = v11;
    *(&v50 + 1) = v12;
    v40 = 3 * v9;
    sub_100752424();
    sub_10000C8CC(&v50, &unk_100923520);
    v44 = v6;
    sub_100752CE4();

    v13 = sub_100748664();
    v14 = v46;
    (*(v3 + 104))(v5, enum case for SearchAdOpportunity.LifecycleEventType.completed(_:), v46);
    if (!*(v13 + 16) || (v15 = sub_1004129E8(v5), (v16 & 1) == 0))
    {

      (*(v3 + 8))(v5, v14);
      v52 = 0;
LABEL_19:
      v50 = 0u;
      v51[0] = 0u;
LABEL_20:
      sub_10000C8CC(&v50, &unk_100923520);
LABEL_21:
      *(swift_allocObject() + 16) = xmmword_1007AB1A0;
      sub_100752434();
      sub_1007523A4();
      sub_1007523A4();
      sub_1007523A4();
      v31 = sub_100748654();
      *(&v51[0] + 1) = &type metadata for String;
      *&v50 = v31;
      *(&v50 + 1) = v32;
      sub_100752424();
      sub_10000C8CC(&v50, &unk_100923520);
      sub_100752D04();
    }

    v17 = v14;
    v18 = *(*(v13 + 56) + 8 * v15);
    v19 = *(v3 + 8);

    v19(v5, v17);

    v52 = v18;
    if (!v18)
    {
      goto LABEL_19;
    }

    v1 = &v52;
    sub_1003DD6A4(0x6E6174736E496461, 0xEC00000064496563, &v50);
    if (!*(&v51[0] + 1))
    {
      goto LABEL_20;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_21;
    }

    sub_100750094();
    v20 = v52;
    if (!v52)
    {
      break;
    }

    v21 = 1 << *(v52 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v3 = v22 & *(v52 + 64);
    v23 = (v21 + 63) >> 6;
    v5 = &v50;

    v24 = 0;
    while (v3)
    {
      v25 = v24;
LABEL_16:
      v26 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v27 = v26 | (v25 << 6);
      v28 = (*(v20 + 48) + 16 * v27);
      v29 = *v28;
      v30 = v28[1];
      sub_10000C5B4(*(v20 + 56) + 32 * v27, v51);
      *&v50 = v29;
      *(&v50 + 1) = v30;
      sub_10000C5B4(v51, &v49);
      swift_bridgeObjectRetain_n();
      v1 = v38;
      sub_1007500B4();
      sub_10000C8CC(&v50, &qword_100934F20);
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v23)
      {

        goto LABEL_24;
      }

      v3 = *(v20 + 64 + 8 * v25);
      ++v24;
      if (v3)
      {
        v24 = v25;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

LABEL_24:
  v34 = v38;
  sub_10074FFB4();
  (*(v36 + 8))(v34, v37);
}

uint64_t sub_10039E2C0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10039E418(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100934F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039E488(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10074B9B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10039E57C()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_100934FA0);
  sub_10000D0FC(v0, qword_100934FA0);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}