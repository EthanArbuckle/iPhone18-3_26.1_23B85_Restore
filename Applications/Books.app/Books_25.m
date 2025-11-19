uint64_t sub_1003A7498(unint64_t a1)
{
  v3 = a1 >> 62;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_53:
    v33 = sub_1007A38D4();
    if (v33 < 0)
    {
      __break(1u);
    }

    v5 = v33;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v36 = a1 & 0xC000000000000001;
  v34 = (v4 + 32);
  v7 = _swiftEmptyArrayStorage;
  v35 = v4;
  while (1)
  {
    if (v3)
    {
      if (sub_1007A38D4() < v6)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v8 = sub_1007A38D4();
    }

    else
    {
      v8 = *(v4 + 16);
      if (v8 < v6)
      {
        goto LABEL_45;
      }
    }

    if (v8 < v5)
    {
      goto LABEL_46;
    }

    if (!v36 || v6 == v5)
    {

      if (!v3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v6 >= v5)
      {
        goto LABEL_51;
      }

      type metadata accessor for RootBarItem();

      v9 = v6;
      do
      {
        v10 = v9 + 1;
        sub_1007A3774(v9);
        v9 = v10;
      }

      while (v5 != v10);
      if (!v3)
      {
LABEL_16:
        v12 = (2 * v5) | 1;
        v11 = v34;
        goto LABEL_19;
      }
    }

    sub_1007A38E4();
    v11 = v13;
    v6 = v14;
    v12 = v15;
LABEL_19:
    v16 = sub_1003A8588(v11, v6, v12);
    if (v1)
    {
      break;
    }

    v18 = v16;
    v4 = v17;
    swift_unknownObjectRelease();
    if (v4)
    {
      return sub_1007A3CF4();
    }

    if (v5 < v18)
    {
      goto LABEL_47;
    }

    if (v3)
    {
      v19 = sub_1007A38D4();
      v4 = v35;
    }

    else
    {
      v4 = v35;
      v19 = *(v35 + 16);
    }

    if (v19 < v18)
    {
      goto LABEL_48;
    }

    if (v18 < 0)
    {
      goto LABEL_49;
    }

    if (!v36 || v18 == v5)
    {
    }

    else
    {
      if (v18 >= v5)
      {
        goto LABEL_52;
      }

      type metadata accessor for RootBarItem();

      v20 = v18;
      do
      {
        v21 = v20 + 1;
        sub_1007A3774(v20);
        v20 = v21;
      }

      while (v5 != v21);
    }

    v22 = v4;
    v24 = (2 * v5) | 1;
    v23 = v34;
    v25 = v18;
    if (v3)
    {

      v22 = sub_1007A38E4();
    }

    sub_1003A83E4(v22, v23, v25, v24);
    v27 = v26;
    swift_unknownObjectRelease();
    v4 = v27 >> 1;
    if ((v27 >> 1) < v18)
    {
      goto LABEL_50;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10066B274(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    if (v29 >= v28 >> 1)
    {
      v7 = sub_10066B274((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v29 + 1;
    v30 = &v7[16 * v29];
    *(v30 + 4) = v18;
    *(v30 + 5) = v4;
    v6 = v4 + 1;
    v31 = v4 >= v5;
    v4 = v35;
    if (v31)
    {
      return sub_1007A3CF4();
    }
  }

  return swift_unknownObjectRelease();
}

void sub_1003A77E0(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {
      if (!i)
      {
LABEL_20:
        sub_10079B8C4();

        return;
      }

      sub_1003BD4E8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v5 = 0;
      v6 = v1;
      v19 = v1 & 0xC000000000000001;
      v17 = v3;
      v18 = v1 & 0xFFFFFFFFFFFFFF8;
      v7 = v1;
      while (1)
      {
        v3 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v19)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *(v18 + 16))
          {
            goto LABEL_23;
          }

          v8 = *(v6 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = [v8 collectionID];
        if (!v10)
        {
          goto LABEL_26;
        }

        v11 = v10;
        v12 = [v9 hidden];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 BOOLValue];
        }

        else
        {
          v14 = 0;
        }

        v1 = _swiftEmptyArrayStorage[2];
        v15 = _swiftEmptyArrayStorage[3];
        if (v1 >= v15 >> 1)
        {
          sub_1003BD4E8((v15 > 1), v1 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v1 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v1];
        v16[4] = v11;
        *(v16 + 40) = v14;
        ++v5;
        v6 = v7;
        if (v3 == i)
        {
          v3 = v17;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1003A79EC(unint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {
      if (!i)
      {
LABEL_18:
        sub_10079B8C4();

        return;
      }

      sub_1003BD508(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      v22 = v3;
      while (1)
      {
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v24 = v6;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = sub_1007A3784();
        }

        else
        {
          if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v1 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = [v8 collectionID];
        if (!v10)
        {
          goto LABEL_24;
        }

        v11 = v10;
        v12 = sub_1007A2254();
        v14 = v13;

        v15 = [v9 title];
        if (!v15)
        {
          goto LABEL_25;
        }

        v16 = v15;
        v23 = sub_1007A2254();
        v18 = v17;

        v6 = v24;
        v20 = v24[2];
        v19 = v24[3];
        v3 = (v20 + 1);
        if (v20 >= v19 >> 1)
        {
          sub_1003BD508((v19 > 1), v20 + 1, 1);
          v6 = v24;
        }

        v6[2] = v3;
        v21 = &v6[4 * v20];
        v21[4] = v12;
        v21[5] = v14;
        v21[6] = v23;
        v21[7] = v18;
        ++v5;
        if (v7 == i)
        {
          v3 = v22;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

id sub_1003A7C04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() sharedProvider];
  [v3 removeObserver:v1 accountTypes:1];

  sub_10079AE34();
  v4 = sub_10079AE04();
  v5 = v1;
  sub_10079ADF4();

  v7.receiver = v5;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1003A7EE8(void *a1, char a2)
{
  if (qword_100AD1700 == -1)
  {
    v3 = a2 & 1;
  }

  else
  {
    v4 = a1;
    swift_once();
    a1 = v4;
    v3 = a2 & 1;
  }

  sub_10048A048(a1, v3);
}

uint64_t sub_1003A7F80(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  type metadata accessor for LibraryCollectionsService();
  sub_100488BFC(0, 0, a1, a2);
}

uint64_t sub_1003A803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1007A2CD4();
}

uint64_t sub_1003A8118(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1007A2CD4();
}

uint64_t sub_1003A8254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = a1;

  sub_1007A2CD4();
}

id sub_1003A83E4(id result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = a4 >> 1;
  v8 = a3;
  if (a4 >> 1 != a3)
  {
    if (a3 <= v7)
    {
      v9 = a4 >> 1;
    }

    else
    {
      v9 = a3;
    }

    v8 = a3;
    while (1)
    {
      if (v9 == v8)
      {
        __break(1u);
        goto LABEL_16;
      }

      result = [*(a2 + 8 * v8) isSearch];
      if ((result & 1) == 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    if (v8 >= a3)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  if (v7 < a3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    return v6;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1003A84C4()
{
  result = qword_100ADFAD8;
  if (!qword_100ADFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAD8);
  }

  return result;
}

uint64_t sub_1003A8518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADFAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id *sub_1003A8588(id *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2 <= v3)
    {
      v6 = a3 >> 1;
    }

    else
    {
      v6 = a2;
    }

    while (v6 != v4)
    {
      result = [v5[v4] isSearch];
      if (result)
      {
        return v4;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003A8628()
{

  return swift_deallocObject();
}

uint64_t sub_1003A8670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1003BD0CC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v7 >= v6 >> 1)
      {
        sub_1003BD0CC((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = _swiftEmptyArrayStorage;

  sub_1007A2CD4();
}

void sub_1003A891C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SleepButton();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  [v0 bounds];
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];

  v2 = [v0 titleLabel];
  if (v2)
  {
    v3 = v2;
    CGRectRoundedForScale();
    [v3 setFrame:?];
  }

  v4 = [v0 imageView];
  if (v4)
  {
    v5 = v4;
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    [v5 setFrame:?];
  }
}

uint64_t sub_1003A8B6C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4();
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100ADFB08 = v16;
  unk_100ADFB10 = v18;
  return result;
}

id sub_1003A8E8C()
{
  if (*(v0 + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) != 1)
  {
    return 0;
  }

  if (qword_100AD13F0 != -1)
  {
    swift_once();
  }

  result = [qword_100B22FF0 stringFromTimeInterval:round(*(v0 + OBJC_IVAR____TtC5Books11SleepButton_duration))];
  if (result)
  {
    v2 = result;
    v3 = sub_1007A2254();

    return v3;
  }

  return result;
}

id sub_1003A8F68(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003A8FE8()
{
  if (*(v0 + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) == 1)
  {
    v1 = [v0 titleLabel];
    if (v1 && (v2 = v1, v3 = [v1 text], v2, v3))
    {
      v4 = sub_1007A2254();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_100AD14D0 != -1)
    {
      swift_once();
    }

    v4 = qword_100ADFB08;
  }

  return v4;
}

void sub_1003A91B0()
{
  if (v0[OBJC_IVAR____TtC5Books11SleepButton_showsDuration] == 1)
  {
    v1 = v0[OBJC_IVAR____TtC5Books11SleepButton_showsHours];
    v2 = objc_opt_self();
    v3 = 1800.0;
    if (v1)
    {
      v3 = 288000.0;
    }

    v4 = [v2 stringWithDuration:v3];
    v5 = [v0 titleLabel];
    if (v5 && (v6 = v5, v7 = [v5 attributedText], v6, v7))
    {
      v8 = [v7 attributesAtIndex:0 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_100282B6C();
      sub_1007A2044();

      if (!v4)
      {
LABEL_7:

        v9 = 0.0;
LABEL_11:
        v11 = *&v0[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight];
        v10 = v9 + v11 + *&v0[OBJC_IVAR____TtC5Books11SleepButton_internalPadding];
        goto LABEL_12;
      }
    }

    else
    {
      sub_1001ED420(_swiftEmptyArrayStorage);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for Key(0);
    sub_100282B6C();
    v12 = v4;
    isa = sub_1007A2024().super.isa;

    [v12 sizeWithAttributes:isa];
    v9 = v14;

    goto LABEL_11;
  }

  v10 = *&v0[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight];
  v11 = v10;
LABEL_12:
  v15 = &v0[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
  *v15 = v10;
  v15[1] = v11;
}

id sub_1003A947C(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight] = 0;
  *&v1[OBJC_IVAR____TtC5Books11SleepButton_internalPadding] = 0;
  v3 = &v1[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC5Books11SleepButton_duration] = 0;
  v4 = &v1[OBJC_IVAR____TtC5Books11SleepButton_imageSize];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC5Books11SleepButton_showsDuration] = 0;
  v1[OBJC_IVAR____TtC5Books11SleepButton_showsHours] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SleepButton();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1003A95A8()
{
  v54 = sub_100796CF4();
  v0 = *(v54 - 1);
  __chkstk_darwin(v54);
  v53 = v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = v52 - v3;
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v52 - v10;
  v55 = [objc_allocWithZone(UIView) init];
  [v55 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  [v12 setFont:v13];

  v52[0] = objc_opt_self();
  v14 = [v52[0] bc_booksLabelColor];
  [v12 setTextColor:v14];

  [v12 setAdjustsFontForContentSizeCategory:1];
  sub_1007A2154();
  sub_100796C94();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = v54;
  (*(v0 + 16))(v53, v4, v54);
  sub_1007A22D4();
  (*(v0 + 8))(v4, v17);
  (*(v6 + 8))(v11, v5);
  v18 = sub_1007A2214();

  [v12 setText:v18];

  [v12 setTextAlignment:4];
  [v12 sizeToFit];
  v19 = v55;
  [v55 addSubview:v12];
  v20 = objc_opt_self();
  v21 = sub_1007A2214();
  v22 = [v20 __systemImageNamedSwift:v21];

  v23 = [objc_allocWithZone(UIImageView) initWithImage:v22];
  v24 = [v12 font];
  if (v24)
  {
    v25 = v24;
    v26 = [objc_opt_self() configurationWithFont:v24];

    [v23 setPreferredSymbolConfiguration:v26];
    v27 = v23;
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = [v52[0] bc_booksLabelColor];
    [v27 setTintColor:v28];

    [v19 addSubview:v27];
    v54 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100815F70;
    v30 = [v19 leadingAnchor];
    v31 = [v27 leadingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31 constant:-10.0];

    *(v29 + 32) = v32;
    v33 = [v19 heightAnchor];
    v34 = [v33 constraintEqualToConstant:56.0];

    *(v29 + 40) = v34;
    v35 = [v12 centerYAnchor];
    v36 = [v19 centerYAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v29 + 48) = v37;
    v38 = [v12 leadingAnchor];
    v39 = [v27 trailingAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:10.0];

    *(v29 + 56) = v40;
    v41 = [v12 trailingAnchor];

    v42 = [v19 layoutMarginsGuide];
    v43 = [v42 trailingAnchor];

    v44 = [v41 constraintEqualToAnchor:v43 constant:-10.0];
    *(v29 + 64) = v44;
    v45 = [v27 centerYAnchor];
    v46 = [v19 centerYAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v29 + 72) = v47;
    v48 = [v27 leadingAnchor];

    v49 = [v19 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v29 + 80) = v50;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v54 activateConstraints:isa];

    [v52[1] setView:v19];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003A9FA0()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books43AudiobookSleepTimerCustomDateViewController_datePicker];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setDatePickerMode:3];
  v14 = [objc_allocWithZone(UIView) init];
  [v14 addSubview:v1];
  v2 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100811370;
  v4 = [v1 rightAnchor];
  v5 = [v14 rightAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:0.0];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v14 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

  *(v3 + 40) = v9;
  v10 = [v14 heightAnchor];
  v11 = [v1 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v2 activateConstraints:isa];

  [v0 setView:v14];
}

id sub_1003AA3EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003AA458(double a1)
{
  v10 = 0;
  if (round(a1) > 0.0)
  {
    v3 = [objc_opt_self() stringWithDuration:0 explicitPositive:&v10 showsHours:a1];
    if (v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = sub_1007A2214();
LABEL_5:
  v4 = v3;
  [v1 setTitle:v3 forState:0];

  *&v1[OBJC_IVAR____TtC5Books11SleepButton_duration] = a1;
  v5 = a1 > 0.0;
  v6 = v1[OBJC_IVAR____TtC5Books11SleepButton_showsDuration];
  v1[OBJC_IVAR____TtC5Books11SleepButton_showsDuration] = v5;
  if (v5 != v6)
  {
    v7 = &v1[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v8 = [v1 superview];
    [v8 setNeedsLayout];
  }

  v1[OBJC_IVAR____TtC5Books11SleepButton_showsHours] = v10;
  v9 = &v1[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
  *v9 = 0;
  *(v9 + 1) = 0;
}

uint64_t sub_1003AA5DC()
{
  sub_1003AA60C();
  result = sub_10079CB54();
  qword_100B23270 = result;
  return result;
}

unint64_t sub_1003AA60C()
{
  result = qword_100ADFBD0;
  if (!qword_100ADFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFBD0);
  }

  return result;
}

uint64_t sub_1003AA670()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003AA6D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1003AA730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003AA7A4(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    sub_1003AA874();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = sub_1007A3184();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_1003AA874();
      v10 = a4;
      v11 = a2;
      v12 = sub_1007A3184();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1003AA874()
{
  result = qword_100AD7CB0;
  if (!qword_100AD7CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD7CB0);
  }

  return result;
}

uint64_t sub_1003AA8C0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return sub_10079B904();
}

uint64_t sub_1003AA93C@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v72 = type metadata accessor for PageTurnViewModel.State(0);
  v6 = __chkstk_darwin(v72);
  v71 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v70 = &v65 - v9;
  v10 = __chkstk_darwin(v8);
  v73 = &v65 - v11;
  __chkstk_darwin(v10);
  v13 = &v65 - v12;
  v14 = _s5StateO4TurnVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v75 = v1;
  sub_1003AE6C0();
  sub_100797A14();

  v69 = *(v1 + 88);
  sub_10079B904();
  sub_1003AB0E8(v5);
  sub_1003AE79C(v13, type metadata accessor for PageTurnViewModel.State);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    result = sub_100007840(v5, &qword_100AD8A78);
    _Q2 = 0uLL;
    v20 = 1.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    sub_1003AE734(v5, v17, _s5StateO4TurnVMa);
    v66 = v14;
    v24 = *(v14 + 24);
    v68 = v17;
    v25 = v17[v24];
    v26 = sub_1007A03D4();
    v27 = [objc_opt_self() currentTraitCollection];
    [v27 displayCornerRadius];
    v67 = v28;

    v29 = objc_opt_self();
    v30 = [v29 sharedApplication];
    v31 = [v30 userInterfaceLayoutDirection];

    v32 = 1.0;
    if (v31 == 1)
    {
      v32 = -1.0;
    }

    v33 = *(v2 + 16);
    if (*(v2 + 16))
    {
      v34 = -v32;
    }

    else
    {
      v34 = v32;
    }

    if (v26)
    {
      v35 = -0.5;
    }

    else
    {
      v35 = 0.5;
    }

    swift_getKeyPath();
    v75 = v2;
    sub_100797A14();

    if (*(v2 + 56) == 1)
    {
      if (v26)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 2.0;
      }

      if (v25)
      {
        swift_getKeyPath();
        v75 = v2;
        sub_100797A14();

        v36 = v73;
        sub_10079B904();
        v37 = sub_1003AD148();
        sub_1003AE79C(v36, type metadata accessor for PageTurnViewModel.State);
        v38 = [v29 sharedApplication];
        v39 = [v38 userInterfaceLayoutDirection];

        v40 = 1.0;
        v41 = -1.0;
        if (v39 != 1)
        {
          v41 = 1.0;
        }

        if (v33)
        {
          v41 = -v41;
        }

        v42 = -(v37 * v41);
        sub_1003AB370();
        v44 = (1.0 - v43) * v42;
      }

      else
      {
        v46 = [v29 sharedApplication];
        v47 = [v46 userInterfaceLayoutDirection];

        v40 = 1.0;
        v48 = -1.0;
        if (v47 != 1)
        {
          v48 = 1.0;
        }

        if (v33)
        {
          v49 = -v48;
        }

        else
        {
          v49 = v48;
        }

        swift_getKeyPath();
        v75 = v2;
        sub_100797A14();

        v36 = v73;
        sub_10079B904();
        v50 = sub_1003AD36C();
        sub_1003AE79C(v36, type metadata accessor for PageTurnViewModel.State);
        v51 = 220.0;
        if (v50)
        {
          v51 = 68.0;
        }

        v52 = v49 * v51;
        sub_1003AB370();
        v44 = v52 * (1.0 - v53);
      }
    }

    else
    {
      sub_1003AB370();
      v40 = v45;
      v23 = 2.0;
      v44 = 0.0;
      v36 = v73;
    }

    swift_getKeyPath();
    v75 = v2;
    sub_100797A14();

    v54 = v70;
    sub_10079B904();
    v55 = v54;
    v56 = v71;
    sub_1003AE734(v55, v71, type metadata accessor for PageTurnViewModel.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1003AE79C(v56, type metadata accessor for PageTurnViewModel.State);
    v58 = v68;
    if (!EnumCaseMultiPayload || *&v68[*(v66 + 32)])
    {
      v40 = 0.0;
    }

    v22 = v35 * v34;
    swift_getKeyPath();
    v75 = v2;
    sub_100797A14();

    sub_10079B904();
    v59 = sub_1003AD588();
    sub_1003AE79C(v36, type metadata accessor for PageTurnViewModel.State);
    result = sub_1003AE79C(v58, _s5StateO4TurnVMa);
    v21 = 0.0;
    if ((v59 & 0xFE) != 2)
    {
      v21 = v44;
    }

    v20 = 1.0;
    if ((v59 & 0xFE) != 2)
    {
      v20 = v40;
    }

    __asm { FMOV            V2.2D, #1.0 }

    *&_Q2 = v67;
  }

  v64 = v74;
  *v74 = v21;
  v64[1] = v20;
  *(v64 + 1) = _Q2;
  v64[4] = v22;
  v64[5] = v23;
  return result;
}

uint64_t sub_1003AB078()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 80);
}

uint64_t sub_1003AB0E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100ADFEC8);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_1003AE80C(v2, v6, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v6, v9, type metadata accessor for PageTurnViewModel.State.Active);
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State);
  }

  v11 = 1;
LABEL_6:
  v12 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, v11, 1, v12);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_100007840(v9, &qword_100ADFEC8);
    v14 = 1;
  }

  else
  {
    sub_1003AE80C(&v9[*(v12 + 24)], a1, _s5StateO4TurnVMa);
    sub_1003AE79C(v9, type metadata accessor for PageTurnViewModel.State.Active);
    v14 = 0;
  }

  v15 = _s5StateO4TurnVMa(0);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_1003AB370()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for PageTurnViewModel.State(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  swift_getKeyPath();
  v19 = v0;
  sub_1003AE6C0();
  sub_100797A14();

  v11 = sub_10079FE94();
  v13 = v12;
  if (v11 == sub_10079FE94() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_1007A3AB4();

    if ((v15 & 1) == 0)
    {
      swift_getKeyPath();
      v19 = v1;
      sub_100797A14();

      sub_10079B904();
      sub_1003AB0E8(v4);
      sub_1003AE79C(v10, type metadata accessor for PageTurnViewModel.State);
      v16 = _s5StateO4TurnVMa(0);
      (*(*(v16 - 8) + 48))(v4, 1, v16);
      sub_100007840(v4, &qword_100AD8A78);
    }
  }

  swift_getKeyPath();
  v19 = v1;
  sub_100797A14();

  sub_10079B904();
  sub_1003AD588();
  return sub_1003AE79C(v8, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1003AB6C0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 17);
}

uint64_t sub_1003AB730()
{
  v70 = _s5StateO4TurnVMa(0);
  v68 = *(v70 - 8);
  v1 = __chkstk_darwin(v70);
  v60 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __chkstk_darwin(v1);
  v62 = &v58 - v4;
  __chkstk_darwin(v3);
  v64 = &v58 - v5;
  v69 = type metadata accessor for PageTurnViewModel.State(0);
  v6 = __chkstk_darwin(v69);
  v63 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = (&v58 - v9);
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = sub_1001F1160(&qword_100AD8A78);
  v14 = __chkstk_darwin(v13 - 8);
  v61 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v65 = &v58 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = &v58 - v19;
  __chkstk_darwin(v18);
  v22 = (&v58 - v21);
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  v71 = v0;
  sub_1003AE6C0();
  sub_100797A14();

  sub_10079B904();
  sub_1003AB0E8(v22);
  v67 = v12;
  sub_1003AE79C(v12, type metadata accessor for PageTurnViewModel.State);
  swift_getKeyPath();
  v71 = v0;
  v66 = v23;
  v24 = v0;
  sub_100797A14();

  sub_10079B904();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1003AE79C(v10, type metadata accessor for PageTurnViewModel.State);
    sub_1000077D8(v22, v20, &qword_100AD8A78);
    v25 = v68;
    v26 = v70;
    if (v68[6](v20, 1, v70) == 1)
    {
      sub_100007840(v22, &qword_100AD8A78);
      sub_100007840(v20, &qword_100AD8A78);
      return 0;
    }

    v29 = v64;
    sub_1003AE734(v20, v64, _s5StateO4TurnVMa);
    v28 = *&v29[*(v26 + 20)];
    sub_1003AE79C(v29, _s5StateO4TurnVMa);
  }

  else
  {
    v28 = *v10;
    v26 = v70;
    v25 = v68;
  }

  v68 = v22;
  v30 = v65;
  sub_1000077D8(v22, v65, &qword_100AD8A78);
  v59 = *(v25 + 48);
  v31 = v59(v30, 1, v26);
  v32 = v67;
  v64 = v28;
  if (v31 == 1)
  {
    v33 = v28;
    sub_100007840(v30, &qword_100AD8A78);
    v34 = 0.0;
  }

  else
  {
    v35 = v62;
    sub_1003AE734(v30, v62, _s5StateO4TurnVMa);
    swift_getKeyPath();
    v71 = v24;
    v36 = v28;
    sub_100797A14();

    if (*(v24 + 56) == 1)
    {
      if (*(v35 + *(v70 + 24)))
      {
        v37 = [objc_opt_self() sharedApplication];
        v38 = [v37 userInterfaceLayoutDirection];

        v39 = 1.0;
        if (v38 == 1)
        {
          v39 = -1.0;
        }

        if (*(v24 + 16))
        {
          v40 = -v39;
        }

        else
        {
          v40 = v39;
        }

        swift_getKeyPath();
        v71 = v24;
        sub_100797A14();

        sub_10079B904();
        v41 = sub_1003AD36C();
        sub_1003AE79C(v32, type metadata accessor for PageTurnViewModel.State);
        v42 = 220.0;
        if (v41)
        {
          v42 = 68.0;
        }

        v43 = v40 * v42;
        sub_1003AB370();
        v45 = v44;
        sub_1003AE79C(v35, _s5StateO4TurnVMa);
        v34 = v43 * v45;
      }

      else
      {
        swift_getKeyPath();
        v71 = v24;
        sub_100797A14();

        sub_10079B904();
        v46 = sub_1003AD148();
        sub_1003AE79C(v32, type metadata accessor for PageTurnViewModel.State);
        v47 = [objc_opt_self() sharedApplication];
        v48 = [v47 userInterfaceLayoutDirection];

        v49 = 1.0;
        if (v48 == 1)
        {
          v49 = -1.0;
        }

        if (*(v24 + 16))
        {
          v49 = -v49;
        }

        v50 = -(v46 * v49);
        sub_1003AB370();
        v52 = v51;
        sub_1003AE79C(v35, _s5StateO4TurnVMa);
        v34 = v52 * v50;
      }
    }

    else
    {
      sub_1003AE79C(v35, _s5StateO4TurnVMa);
      v34 = 0.0;
    }

    v26 = v70;
  }

  swift_getKeyPath();
  v71 = v24;
  sub_100797A14();

  if (*(v24 + 56) == 1)
  {
    swift_getKeyPath();
    v71 = v24;
    sub_100797A14();

    v53 = v63;
    sub_10079B904();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1003AE79C(v53, type metadata accessor for PageTurnViewModel.State);
    if (EnumCaseMultiPayload)
    {
      v55 = v61;
      sub_1000077D8(v68, v61, &qword_100AD8A78);
      if (v59(v55, 1, v26) == 1)
      {
        sub_100007840(v55, &qword_100AD8A78);
      }

      else
      {
        v56 = v60;
        sub_1003AE734(v55, v60, _s5StateO4TurnVMa);
        sub_1007A03D4();
        sub_1003AE79C(v56, _s5StateO4TurnVMa);
      }
    }
  }

  swift_getKeyPath();
  v71 = v24;
  sub_100797A14();

  sub_10079B904();
  v57 = sub_1003AD588();

  sub_1003AE79C(v32, type metadata accessor for PageTurnViewModel.State);
  sub_100007840(v68, &qword_100AD8A78);
  if ((v57 & 0xFE) == 2)
  {
    return 0;
  }

  else
  {
    return *&v34;
  }
}

uint64_t sub_1003AC0A8()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v1 = *(v0 + 64);

  return v1;
}

void sub_1003AC128()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v0 = sub_10079FE94();
  v2 = v1;
  if (v0 == sub_10079FE94() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_1007A3AB4();

    if ((v5 & 1) == 0)
    {
      sub_1003AE058();
      v7 = v6;
      v8 = [objc_allocWithZone(CASpringAnimation) init];
      [v8 setMass:1.0];
      [v8 setStiffness:300.0];
      [v8 setDamping:35.0];
      [v8 setInitialVelocity:v7];
      [v8 settlingDuration];
    }
  }
}

double sub_1003AC2B0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 24);
}

uint64_t sub_1003AC324(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }

  return result;
}

__n128 sub_1003AC40C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  result = *(v3 + 24);
  v5 = *(v3 + 40);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1003AC4B4(double a1, double a2, double a3, double a4)
{
  v5.f64[0] = a1;
  v5.f64[1] = a2;
  v6.f64[0] = a3;
  v6.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 24), v5), vceqq_f64(*(v4 + 40), v6)))))
  {
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 48) = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }
}

uint64_t sub_1003AC5D0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 56);
}

uint64_t sub_1003AC640@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_1003AC6B8(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }

  return result;
}

uint64_t sub_1003AC798@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;
}

uint64_t sub_1003AC814(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003AC854(v1, v2);
}

uint64_t sub_1003AC854(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_1007A3AB4() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }
}

uint64_t sub_1003AC984()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v2 = sub_10079FE94();
  v4 = v3;
  if (v2 == sub_10079FE94() && v4 == v5)
  {

    v7 = 1;
    if (*(v1 + 56))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = sub_1007A3AB4();

    if ((v7 & 1) == *(v1 + 56))
    {
LABEL_6:
      *(v1 + 56) = v7 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100797A04();
}

uint64_t sub_1003ACB1C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  *a2 = *(v3 + 80);
  return result;
}

uint64_t sub_1003ACBBC(char a1)
{
  v3 = sub_10079FE94();
  v5 = v4;
  if (v3 == sub_10079FE94() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1007A3AB4();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1003AE6C0();
      sub_100797A04();
    }
  }

  *(v1 + 80) = a1;

  return sub_1003AC984();
}

uint64_t sub_1003ACD4C()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return sub_10079B904();
}

uint64_t sub_1003ACDC8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003AE80C(a1, v6, type metadata accessor for PageTurnViewModel.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1003AE6C0();
  sub_100797A04();

  return sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1003ACEE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v3 - 8);
  sub_1003AE80C(a2, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageTurnViewModel.State);
  return sub_10079B914();
}

uint64_t sub_1003ACF98()
{
  v1 = *(v0 + *(type metadata accessor for PageTurnViewModel.State.Active(0) + 28));
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 0xEE006E727554676ELL;
      goto LABEL_10;
    }

    v2 = 0xE90000000000006ELL;
    v3._countAndFlagsBits = 0x727554736465656ELL;
  }

  else if (v1 == 2)
  {
    v2 = 0xEA00000000007465;
    v3._countAndFlagsBits = 0x736552736465656ELL;
  }

  else
  {
    if (v1 == 3)
    {
      v2 = 0xEF7465736552676ELL;
LABEL_10:
      v3._countAndFlagsBits = 0x696D726F66726570;
      goto LABEL_11;
    }

    v2 = 0x80000001008D0A60;
    v3._countAndFlagsBits = 0xD000000000000012;
  }

LABEL_11:
  v3._object = v2;
  sub_1007A23D4(v3);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  sub_1007A23D4(v5);
  return 0x3A6576697463413CLL;
}

uint64_t sub_1003AD0BC()
{
  v1 = 0x727554736465656ELL;
  v2 = 0x736552736465656ELL;
  if (*v0 != 2)
  {
    v2 = 0x696D726F66726570;
  }

  if (*v0)
  {
    v1 = 0x696D726F66726570;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

double sub_1003AD148()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADFEC8);
  __chkstk_darwin(v5 - 8);
  v7 = (&v14 - v6);
  sub_1003AE80C(v1, v4, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v4, v7, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State);
  }

  v9 = 1;
LABEL_6:
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v7, v9, 1, v10);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100007840(v7, &qword_100ADFEC8);
    return 0.0;
  }

  else
  {
    v12 = *v7;
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  }

  return v12;
}

uint64_t sub_1003AD36C()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADFEC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_1003AE80C(v1, v4, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v4, v7, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State);
  }

  v9 = 1;
LABEL_6:
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v7, v9, 1, v10);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100007840(v7, &qword_100ADFEC8);
    return 0;
  }

  else
  {
    v12 = v7[8];
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  }

  return v12;
}

uint64_t sub_1003AD588()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADFEC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_1003AE80C(v1, v4, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v4, v7, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State);
  }

  v9 = 1;
LABEL_6:
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v7, v9, 1, v10);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100007840(v7, &qword_100ADFEC8);
    return 4;
  }

  else
  {
    v12 = v7[*(v10 + 28)];
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  }

  return v12;
}

uint64_t sub_1003AD7A8(char a1)
{
  v3 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100ADFEC8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_1003AE734(v1, v5, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v5, v11, type metadata accessor for PageTurnViewModel.State.Active);
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v5, type metadata accessor for PageTurnViewModel.State);
  }

  v13 = 1;
LABEL_6:
  v14 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v11, v13, 1, v14);
  v16 = *(v15 + 48);
  if (v16(v11, 1, v14))
  {
    sub_1000077D8(v11, v9, &qword_100ADFEC8);
    if (v16(v9, 1, v14) == 1)
    {
      sub_100007840(v9, &qword_100ADFEC8);
    }

    else
    {
      sub_1003AE734(v9, v1, type metadata accessor for PageTurnViewModel.State.Active);
    }

    swift_storeEnumTagMultiPayload();
    return sub_100007840(v11, &qword_100ADFEC8);
  }

  else
  {
    v11[*(v14 + 28)] = a1;
    if (v16(v11, 1, v14) == 1)
    {
      sub_100007840(v11, &qword_100ADFEC8);
    }

    else
    {
      sub_1003AE734(v11, v1, type metadata accessor for PageTurnViewModel.State.Active);
    }

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1003ADADC()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003AE80C(v1, v7, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v7, v4, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = sub_1003ACF98();
      sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State.Active);
      return v9;
    }

    else
    {
      return 1701602409;
    }
  }

  else
  {
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State);
    return 0x6E69726170657270;
  }
}

uint64_t sub_1003ADC60(char a1, char a2)
{
  v5 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v5);
  *(v2 + 56) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_1001F1160(&qword_100ADFED8);
  swift_allocObject();
  *(v2 + 88) = sub_10079B924();
  *(v2 + 96) = _swiftEmptyArrayStorage;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  *(v2 + 16) = a1 & 1;
  *(v2 + 80) = a2;
  *(v2 + 17) = 0;
  v6 = *&UIEdgeInsetsZero.bottom;
  *(v2 + 24) = *&UIEdgeInsetsZero.top;
  *(v2 + 40) = v6;
  sub_1003AC984();
  return v2;
}

uint64_t sub_1003ADD78(char a1)
{
  v3 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v10 = v1;
  sub_1003AE6C0();
  sub_100797A14();

  sub_10079B904();
  sub_1003AD7A8(a1);
  swift_getKeyPath();
  v8 = v1;
  v9 = v5;
  v10 = v1;
  sub_100797A04();

  return sub_1003AE79C(v5, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1003ADED0()
{
  v0 = sub_10079ACE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23750;
  sub_10079ACF4();
  v5 = sub_10079ACC4();
  v6 = sub_1007A2994();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cancel reset animation", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_1003ADD78(4);
}

uint64_t sub_1003AE058()
{
  v1 = sub_1001F1160(&qword_100AD8A78);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateO4TurnVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_1003AE6C0();
  sub_100797A14();

  sub_10079B904();
  sub_1003AB0E8(v3);
  sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    return sub_100007840(v3, &qword_100AD8A78);
  }

  sub_1003AE734(v3, v10, _s5StateO4TurnVMa);
  sub_1003AB730();
  if (v12)
  {
  }

  return sub_1003AE79C(v10, _s5StateO4TurnVMa);
}

uint64_t sub_1003AE2E8()
{

  v1 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  v2 = sub_100797A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003AE3C4()
{
  result = sub_100797A54();
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

void sub_1003AE4BC()
{
  sub_1003AE530();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PageTurnViewModel.State.Active(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003AE530()
{
  if (!qword_100ADFDF8)
  {
    v0 = sub_10025D2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADFDF8);
    }
  }
}

void sub_1003AE5C0()
{
  _s5StateO4TurnVMa(319);
  if (v0 <= 0x3F)
  {
    sub_1003AE65C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003AE65C()
{
  if (!qword_100ADFE90)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADFE90);
    }
  }
}

unint64_t sub_1003AE6C0()
{
  result = qword_100AD9690;
  if (!qword_100AD9690)
  {
    type metadata accessor for PageTurnViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9690);
  }

  return result;
}

uint64_t sub_1003AE734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003AE79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003AE80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003AE8AC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

BOOL sub_1003AE8EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  if (!sub_10028A630(a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 4)
  {
    return v6 == v7;
  }

  return v7 == 4;
}

BOOL sub_1003AE994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100ADFED0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v22 - v15;
  v17 = *(v14 + 56);
  sub_1003AE80C(a1, &v22 - v15, type metadata accessor for PageTurnViewModel.State);
  sub_1003AE80C(a2, &v16[v17], type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1003AE79C(&v16[v17], type metadata accessor for PageTurnViewModel.State);
      v20 = v16;
LABEL_9:
      sub_1003AE79C(v20, type metadata accessor for PageTurnViewModel.State);
      return 1;
    }

LABEL_11:
    sub_100007840(v16, &qword_100ADFED0);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v20 = v16;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_1003AE80C(v16, v12, type metadata accessor for PageTurnViewModel.State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003AE79C(v12, type metadata accessor for PageTurnViewModel.State.Active);
    goto LABEL_11;
  }

  sub_1003AE734(v12, v9, type metadata accessor for PageTurnViewModel.State.Active);
  sub_1003AE734(&v16[v17], v7, type metadata accessor for PageTurnViewModel.State.Active);
  v19 = sub_1003AE8EC(v9, v7);
  sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  sub_1003AE79C(v9, type metadata accessor for PageTurnViewModel.State.Active);
  sub_1003AE79C(v16, type metadata accessor for PageTurnViewModel.State);
  return v19;
}

__n128 sub_1003AECAC()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = result;
  *(v1 + 40) = v3;
  return result;
}

void sub_1003AED3C()
{
  sub_1003AEDA8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1003AEDA8()
{
  if (!qword_100ADFF50)
  {
    type metadata accessor for HistoryModel.Entry(255);
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADFF50);
    }
  }
}

uint64_t sub_1003AEE48()
{
  result = sub_100796C04();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003AEEC4(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  return sub_100796BD4();
}

BOOL sub_1003AEF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryModel.Entry(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = (&v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = (&v34 - v8);
  v10 = sub_1001F1160(&qword_100ADFEE0);
  __chkstk_darwin(v10 - 8);
  v36 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v34 - v13);
  v15 = sub_1001F1160(&qword_100AE0010);
  __chkstk_darwin(v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  v22 = *(v21 + 48);
  sub_1003AF3FC(a1, &v34 - v19);
  v37 = a2;
  sub_1003AF3FC(a2, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) != 1)
  {
    sub_1003AF3FC(v20, v14);
    if (v23(&v20[v22], 1, v4) != 1)
    {
      sub_1003AF4C8(&v20[v22], v9);
      v26 = *v14 == *v9 && v14[1] == v9[1];
      if (v26 || (sub_1007A3AB4() & 1) != 0)
      {
        v27 = sub_100796BD4();
        sub_1003AF46C(v9);
        sub_1003AF46C(v14);
        sub_100007840(v20, &qword_100ADFEE0);
        if ((v27 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_14;
      }

      sub_1003AF46C(v9);
      sub_1003AF46C(v14);
      v24 = &qword_100ADFEE0;
LABEL_7:
      v25 = v20;
LABEL_21:
      sub_100007840(v25, v24);
      return 0;
    }

    sub_1003AF46C(v14);
LABEL_6:
    v24 = &qword_100AE0010;
    goto LABEL_7;
  }

  if (v23(&v20[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100007840(v20, &qword_100ADFEE0);
LABEL_14:
  v28 = *(type metadata accessor for HistoryModel(0) + 20);
  v29 = *(v15 + 48);
  sub_1003AF3FC(a1 + v28, v17);
  sub_1003AF3FC(v37 + v28, &v17[v29]);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v29], 1, v4) == 1)
    {
      sub_100007840(v17, &qword_100ADFEE0);
      return 1;
    }

    goto LABEL_19;
  }

  v31 = v36;
  sub_1003AF3FC(v17, v36);
  if (v23(&v17[v29], 1, v4) == 1)
  {
    sub_1003AF46C(v31);
LABEL_19:
    v24 = &qword_100AE0010;
LABEL_20:
    v25 = v17;
    goto LABEL_21;
  }

  v32 = v35;
  sub_1003AF4C8(&v17[v29], v35);
  if ((*v31 != *v32 || v31[1] != v32[1]) && (sub_1007A3AB4() & 1) == 0)
  {
    sub_1003AF46C(v32);
    sub_1003AF46C(v31);
    v24 = &qword_100ADFEE0;
    goto LABEL_20;
  }

  v33 = sub_100796BD4();
  sub_1003AF46C(v32);
  sub_1003AF46C(v31);
  sub_100007840(v17, &qword_100ADFEE0);
  return (v33 & 1) != 0;
}

uint64_t sub_1003AF3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADFEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AF46C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryModel.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003AF4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryModel.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1003AF5B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = a1;
  if (a4)
  {
    sub_1007A2254();
    v8 = sub_1007A2214();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v7;
  v11.super_class = a5(a1);
  v9 = objc_msgSendSuper2(&v11, "initWithStyle:reuseIdentifier:", a3, v8);

  return v9;
}

id sub_1003AF660(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1003AF810()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for AnalyticsDebugViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 navigationItem];
  v2 = sub_1007A2214();
  [v1 setTitle:v2];

  sub_1001F1160(&unk_100AE00A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100812CF0;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v3 + 32) = xmmword_100820270;
  *(v3 + 48) = sub_1003B0810;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v3 + 80) = xmmword_100820280;
  *(v3 + 96) = sub_1003B0818;
  *(v3 + 104) = v5;
  *(v3 + 112) = "jitterLowBoundTextFieldChangeWithTextField:";
  *(v3 + 120) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v3 + 128) = 0xD000000000000011;
  *(v3 + 136) = 0x80000001008D0C10;
  *(v3 + 144) = sub_1003B081C;
  *(v3 + 152) = v6;
  *(v3 + 160) = "jitterUpperBoundTextFieldChangeWithTextField:";
  *(v3 + 168) = 1;
  v7 = OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas;
  *&v0[OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas] = v3;
  v15 = v0;

  v8 = *(*&v0[v7] + 16);
  v16 = *&v0[v7];

  v14 = v8;
  if (!v8)
  {
  }

  v10 = 0;
  v11 = (v16 + 72);
  while (v10 < *(v16 + 16))
  {
    if (*v11)
    {
      type metadata accessor for AnalyticsDebugTextViewCell();
    }

    else
    {
      type metadata accessor for AnalyticsDebugSwitchCell();
    }

    sub_1003B0448();
    result = [v15 tableView];
    if (!result)
    {
      goto LABEL_11;
    }

    v12 = result;
    ++v10;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = sub_1007A2214();

    [v12 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v13];

    result = sub_1003B048C();
    v11 += 48;
    if (v14 == v10)
    {
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_1003AFB80(uint64_t a1, _BYTE *a2)
{
  v3 = a2[OBJC_IVAR___BKAnalyticsDebugViewController_analyticsJitterEnabled];
  a2[OBJC_IVAR___BKAnalyticsDebugViewController_analyticsJitterEnabled] = (v3 & 1) == 0;
  if (v3)
  {
    sub_100798304();
    sub_100798344();
  }

  sub_100798324();
  v4 = [a2 tableView];
  if (v4)
  {
    v5 = v4;
    [v4 reloadData];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1003AFD60(void *a1)
{
  v2 = v1;
  result = sub_100796E34();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v1 + OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas);
  if (result >= *(v5 + 16))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = v5 + 48 * result;
  v8 = *(v6 + 48);
  v7 = *(v6 + 56);
  v9 = *(v6 + 64);
  v10 = *(v6 + 72);
  sub_1003B0448();
  v11 = sub_1007A2214();

  isa = sub_100796DF4().super.isa;
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:isa];

  if (v10 == 1)
  {
    v14 = objc_allocWithZone(UITextField);

    v15 = [v14 initWithFrame:{0.0, 0.0, 50.0, 20.0}];
    [v15 addTarget:v2 action:v9 forControlEvents:0x20000];
    aBlock[0] = v8([v15 setKeyboardType:4]);
    sub_1007A3A74();
    v16 = sub_1007A2214();

    [v15 setText:v16];

    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 lightGrayColor];
    [v18 setBackgroundColor:v19];

    v20 = [v13 textLabel];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1007A2214();
      [v21 setText:v22];
    }
  }

  else
  {

    v23 = sub_100798314();
    v24 = objc_allocWithZone(type metadata accessor for DebugBoolDefaultSwitch());
    aBlock[4] = v8;
    aBlock[5] = v7;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A18F60;
    v25 = _Block_copy(aBlock);
    swift_retain_n();

    v26 = [v24 initWithInitialValue:v23 & 1 synchronize:v25 action:0];

    _Block_release(v25);
    v27 = [v13 textLabel];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1007A2214();
      [v28 setText:v29];
    }

    v18 = v26;
  }

  [v13 setAccessoryView:v18];
  sub_1003B048C();

  return v13;
}

id sub_1003B031C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003B0394(uint64_t a1, unsigned int a2)
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

uint64_t sub_1003B03DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1003B0448()
{
}

uint64_t sub_1003B048C()
{
}

void sub_1003B04C8(void *a1, void (*a2)(uint64_t))
{
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1007A2254();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    v9 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v10 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v10 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v34 = 0;
        v13 = sub_10063DF1C(v5, v7, 10);
        v31 = v32;
LABEL_64:

        if ((v31 & 1) == 0)
        {
          a2(v13);
        }

        return;
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        v33[0] = v5;
        v33[1] = v7 & 0xFFFFFFFFFFFFFFLL;
        if (v5 == 43)
        {
          if (v8)
          {
            if (--v8)
            {
              v13 = 0;
              v23 = v33 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  break;
                }

                v25 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  break;
                }

                v13 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  break;
                }

                ++v23;
                if (!--v8)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (v5 != 45)
        {
          if (v8)
          {
            v13 = 0;
            v28 = v33;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v8)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v8)
        {
          if (--v8)
          {
            v13 = 0;
            v17 = v33 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                break;
              }

              v19 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                break;
              }

              ++v17;
              if (!--v8)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v11 = sub_1007A37B4();
        }

        v12 = *v11;
        if (v12 == 43)
        {
          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v13 = 0;
              if (v11)
              {
                v20 = v11 + 1;
                while (1)
                {
                  v21 = *v20 - 48;
                  if (v21 > 9)
                  {
                    goto LABEL_62;
                  }

                  v22 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v13 = v22 + v21;
                  if (__OFADD__(v22, v21))
                  {
                    goto LABEL_62;
                  }

                  ++v20;
                  if (!--v8)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v12 != 45)
        {
          if (v9)
          {
            v13 = 0;
            if (v11)
            {
              while (1)
              {
                v26 = *v11 - 48;
                if (v26 > 9)
                {
                  goto LABEL_62;
                }

                v27 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_62;
                }

                v13 = v27 + v26;
                if (__OFADD__(v27, v26))
                {
                  goto LABEL_62;
                }

                ++v11;
                if (!--v9)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v13 = 0;
          LOBYTE(v8) = 1;
          goto LABEL_63;
        }

        if (v9 >= 1)
        {
          v8 = v9 - 1;
          if (v9 != 1)
          {
            v13 = 0;
            if (v11)
            {
              v14 = v11 + 1;
              while (1)
              {
                v15 = *v14 - 48;
                if (v15 > 9)
                {
                  goto LABEL_62;
                }

                v16 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_62;
                }

                v13 = v16 - v15;
                if (__OFSUB__(v16, v15))
                {
                  goto LABEL_62;
                }

                ++v14;
                if (!--v8)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v8) = 0;
LABEL_63:
            v34 = v8;
            v31 = v8;
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

uint64_t sub_1003B0820()
{
  v0 = sub_1001F1160(&unk_100AD9108);
  sub_100009A38(v0, qword_100AE00B0);
  sub_100008B98(v0, qword_100AE00B0);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_100798F14();
}

id sub_1003B08D0()
{
  v45 = sub_1001F1160(&unk_100AD9108);
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v45 - v1;
  v54 = _swiftEmptyArrayStorage;
  sub_1001F1160(&unk_100AE01E0);
  v2 = swift_allocObject();
  v47 = xmmword_10080B690;
  *(v2 + 16) = xmmword_10080B690;
  *(v2 + 32) = UIActivityTypeOpenInIBooks;
  v3 = UIActivityTypeOpenInIBooks;
  v4 = sub_1007A2214();
  v5 = sub_10066B640(1, 2, 1, v2);
  v5[2] = 2;
  v5[5] = v4;
  v6 = *(v0 + 24);
  v55 = *(v0 + 8);
  v56 = v6;
  v57 = *(v0 + 40);
  v7 = *(v0 + 64);
  v58 = *(v0 + 56);
  v8 = *v0;
  v9 = type metadata accessor for QuoteSharingSocialNetworkActivity();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork] = 1;
  *&v10[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage] = v7;
  *&v10[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage] = v8;
  v53.receiver = v10;
  v53.super_class = v9;
  v11 = v8;
  v12 = v7;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = v14;
  v17 = objc_msgSendSuper2(&v53, "init");
  sub_1007A25C4();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();

  v18 = v5[2];
  v19 = v5[3];
  v20 = UIActivityTypePostToFacebook;
  if (v18 >= v19 >> 1)
  {
    v43 = v19 > 1;
    v44 = v20;
    v5 = sub_10066B640(v43, v18 + 1, 1, v5);
    v20 = v44;
  }

  v5[2] = v18 + 1;
  v5[v18 + 4] = v20;
  v21 = objc_allocWithZone(v9);
  v21[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork] = 0;
  *&v21[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage] = v16;
  *&v21[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage] = v15;
  v52.receiver = v21;
  v52.super_class = v9;
  v22 = objc_msgSendSuper2(&v52, "init");
  sub_1007A25C4();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();

  v23 = sub_1007A2214();
  v25 = v5[2];
  v24 = v5[3];
  v26 = v23;
  if (v25 >= v24 >> 1)
  {
    v5 = sub_10066B640((v24 > 1), v25 + 1, 1, v5);
  }

  v5[2] = v25 + 1;
  v5[v25 + 4] = v26;
  v27 = objc_allocWithZone(v9);
  v27[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork] = 2;
  *&v27[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage] = v16;
  *&v27[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage] = v15;
  v51.receiver = v27;
  v51.super_class = v9;
  v28 = objc_msgSendSuper2(&v51, "init");
  sub_1007A25C4();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();

  sub_1001F1160(&qword_100AD7FB0);
  v29 = swift_allocObject();
  *(v29 + 16) = v47;
  v59 = v57;
  v60 = v56;
  v30 = type metadata accessor for QuoteSharingActivityItem();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_name] = v60;
  *&v31[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_author] = v59;
  *&v31[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_image] = v15;
  sub_1002BB1A4(&v60, v50);
  sub_1002BB1A4(&v59, v50);
  v49.receiver = v31;
  v49.super_class = v30;
  v32 = objc_msgSendSuper2(&v49, "init");
  *(v29 + 56) = v30;
  *(v29 + 32) = v32;
  if (qword_100AD14E0 != -1)
  {
    swift_once();
  }

  v33 = v45;
  v34 = sub_100008B98(v45, qword_100AE00B0);
  v35 = v48;
  v36 = v46;
  (*(v48 + 16))(v46, v34, v33);
  sub_100798EE4();
  (*(v35 + 8))(v36, v33);
  if ((v50[0] & 1) == 0)
  {
  }

  v37 = objc_allocWithZone(UIActivityViewController);
  isa = sub_1007A25D4().super.isa;

  sub_1003B1FB4();
  v39 = sub_1007A25D4().super.isa;

  v40 = [v37 initWithActivityItems:isa applicationActivities:v39];

  type metadata accessor for ActivityType(0);
  v41 = sub_1007A25D4().super.isa;

  [v40 setExcludedActivityTypes:v41];

  return v40;
}

uint64_t sub_1003B0F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B1F60();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003B0FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B1F60();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003B1034()
{
  sub_1003B1F60();
  sub_10079D194();
  __break(1u);
}

id sub_1003B14D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003B1618()
{
  v1 = v0;
  v2 = sub_1007969B4();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100796BB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork;
  v9 = sub_1003B52D0(*(v0 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork));
  v10 = UIImagePNGRepresentation(*(v1 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage));
  v46 = v8;
  if (v10)
  {
    v11 = v10;
    v12 = sub_1007969D4();
    v14 = v13;

    v15 = "ativekit.stickerImage";
    v16 = 0xD000000000000025;
    if (*(v1 + v8) == 1)
    {
      v16 = 0xD000000000000028;
    }

    else
    {
      v15 = "redSticker.backgroundImage";
    }

    if (*(v1 + v8))
    {
      v17 = v16;
    }

    else
    {
      v17 = 0xD000000000000027;
    }

    if (*(v1 + v8))
    {
      v18 = v15;
    }

    else
    {
      v18 = "aredSticker.stickerImage";
    }

    v50 = &type metadata for Data;
    *&v49 = v12;
    *(&v49 + 1) = v14;
    sub_1000076D4(&v49, v48);
    sub_1003B1DE4(v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    sub_1002F4B78(v48, v17, v18 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
    sub_10000ADCC(v12, v14);

    v8 = v46;
    v9 = v47;
  }

  v20 = UIImagePNGRepresentation(*(v1 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage));
  if (v20)
  {
    v21 = v20;
    v22 = sub_1007969D4();
    v24 = v23;

    v25 = "ativekit.backgroundImage";
    v26 = 0xD00000000000002BLL;
    if (*(v1 + v8) != 1)
    {
      v26 = 0xD000000000000028;
      v25 = "ngSocialNetworkActivity";
    }

    if (*(v1 + v8))
    {
      v27 = v26;
    }

    else
    {
      v27 = 0xD00000000000002ALL;
    }

    if (*(v1 + v8))
    {
      v28 = v25;
    }

    else
    {
      v28 = "aredSticker.backgroundImage";
    }

    v50 = &type metadata for Data;
    *&v49 = v22;
    *(&v49 + 1) = v24;
    sub_1000076D4(&v49, v48);
    sub_1003B1DE4(v22, v24);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    sub_1002F4B78(v48, v27, v28 | 0x8000000000000000, v29);
    sub_10000ADCC(v22, v24);

    v9 = v47;
  }

  v30 = [objc_opt_self() generalPasteboard];
  sub_1001F1160(&unk_100AE01A8);
  v31 = swift_allocObject();
  v42 = xmmword_10080B690;
  *(v31 + 16) = xmmword_10080B690;
  *(v31 + 32) = v9;
  sub_1001F1160(&qword_100AD6710);
  isa = sub_1007A25D4().super.isa;

  sub_1001F1160(&qword_100AE01B8);
  inited = swift_initStackObject();
  *(inited + 16) = v42;
  *(inited + 32) = UIPasteboardOptionExpirationDate;
  v34 = UIPasteboardOptionExpirationDate;
  sub_100796BA4();
  *(inited + 64) = v4;
  sub_1002256EC((inited + 40));
  sub_100796AE4();
  (*(v5 + 8))(v7, v4);
  sub_1001EDEC4(inited);
  swift_setDeallocating();
  sub_1003B1D34(inited + 32);
  _s3__C10OptionsKeyVMa_0(0);
  sub_1003B1D9C(&qword_100AD3FF8, _s3__C10OptionsKeyVMa_0);
  v35 = sub_1007A2024().super.isa;

  [v30 setItems:isa options:v35];

  v36 = [objc_opt_self() sharedApplication];
  v37 = v43;
  sub_1003B501C(*(v1 + v46), v43);
  sub_100796944(v38);
  v40 = v39;
  (*(v44 + 8))(v37, v45);
  sub_1001ED2F8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1003B1D9C(&qword_100AE01C0, type metadata accessor for OpenExternalURLOptionsKey);
  v41 = sub_1007A2024().super.isa;

  [v36 openURL:v40 options:v41 completionHandler:0];
}

id sub_1003B1BE8()
{
  v1 = [objc_allocWithZone(LPLinkMetadata) init];
  v2 = [objc_allocWithZone(NSItemProvider) initWithObject:*(v0 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_image)];
  v3 = [objc_allocWithZone(LPiTunesMediaBookMetadata) init];
  v4 = sub_1007A2214();
  [v3 setName:v4];

  v5 = sub_1007A2214();
  [v3 setAuthor:v5];

  v6 = [objc_allocWithZone(LPImage) initWithItemProvider:v2 properties:0 placeholderImage:0];
  [v3 setArtwork:v6];

  [v1 setSpecialization:v3];
  return v1;
}

uint64_t sub_1003B1D34(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B1D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003B1DE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

__n128 sub_1003B1E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003B1E5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003B1EA4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1003B1F0C()
{
  result = qword_100AE01C8;
  if (!qword_100AE01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE01C8);
  }

  return result;
}

unint64_t sub_1003B1F60()
{
  result = qword_100AE01D0;
  if (!qword_100AE01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE01D0);
  }

  return result;
}

unint64_t sub_1003B1FB4()
{
  result = qword_100AE01F0;
  if (!qword_100AE01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE01F0);
  }

  return result;
}

Swift::Int LocationControllingError.hashValue.getter(char a1)
{
  sub_1007A3C04();
  sub_1007A3C14(a1 & 1);
  return sub_1007A3C44();
}

unint64_t sub_1003B2090()
{
  result = qword_100AE0200;
  if (!qword_100AE0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0200);
  }

  return result;
}

unint64_t sub_1003B20E8()
{
  result = qword_100AE0208;
  if (!qword_100AE0208)
  {
    sub_1001F1234(&qword_100AE0210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0208);
  }

  return result;
}

__n128 sub_1003B216C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003B2198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1003B21E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1003B2268@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AE0218);
  __chkstk_darwin(v3 - 8);
  v5 = (&v11 - v4);
  *v5 = sub_10079E474();
  v5[1] = v6;
  v7 = sub_1001F1160(&qword_100AE0220);
  sub_1003B23E0(v1, (v5 + *(v7 + 44)));
  v12 = *v1;
  LOBYTE(v13) = *(v1 + 16);
  sub_1001F1160(&qword_100AE0228);
  sub_10079E1C4();
  v12 = *v1;
  LOBYTE(v13) = *(v1 + 16);
  sub_10079E1C4();
  sub_10079E474();
  sub_10079BE54();
  sub_1003B3C5C(v5, a1);
  v8 = (a1 + *(sub_1001F1160(&qword_100AE0230) + 36));
  v9 = v13;
  *v8 = v12;
  v8[1] = v9;
  result = *&v14;
  v8[2] = v14;
  return result;
}

uint64_t sub_1003B23E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE0238);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v27 - v9);
  v11 = sub_10079DF34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 80);
  sub_10079DF04();
  (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
  v16 = sub_10079DF94();

  (*(v12 + 8))(v14, v11);
  *v10 = sub_10079E474();
  v10[1] = v17;
  v18 = sub_1001F1160(&qword_100AE0240);
  sub_1003B2664(a1, (v10 + *(v18 + 44)));
  v19 = sub_10079D294();
  sub_10079BBA4();
  v20 = v10 + *(v5 + 44);
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1000077D8(v10, v7, &qword_100AE0238);
  *a2 = v16;
  v25 = sub_1001F1160(&qword_100AE0248);
  sub_1000077D8(v7, a2 + *(v25 + 48), &qword_100AE0238);

  sub_100007840(v10, &qword_100AE0238);
  sub_100007840(v7, &qword_100AE0238);
}

uint64_t sub_1003B2664@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE0250);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = sub_10079CB24();
  v20 = 1;
  sub_1003B2924(&v31);
  v23 = *&v32[16];
  v24 = *&v32[32];
  v25 = *&v32[48];
  v26 = v32[64];
  v21 = v31;
  v22 = *v32;
  v28 = v32[64];
  v27[2] = *&v32[16];
  v27[3] = *&v32[32];
  v27[4] = *&v32[48];
  v27[0] = v31;
  v27[1] = *v32;
  sub_1000077D8(&v21, v29, &qword_100AE0258);
  sub_100007840(v27, &qword_100AE0258);
  *&v19[39] = v23;
  *&v19[55] = v24;
  *&v19[71] = v25;
  v19[87] = v26;
  *&v19[7] = v21;
  *&v19[23] = v22;
  v11 = v20;
  *v9 = sub_10079CB34();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v12 = sub_1001F1160(&qword_100AE0260);
  sub_1003B2C8C(a1, &v9[*(v12 + 44)]);
  sub_1000077D8(v9, v6, &qword_100AE0250);
  v29[0] = v10;
  v29[1] = 0;
  LOBYTE(v30[0]) = v11;
  *(v30 + 1) = *v19;
  *(&v30[1] + 1) = *&v19[16];
  *(&v30[5] + 1) = *&v19[80];
  *(&v30[4] + 1) = *&v19[64];
  *(&v30[3] + 1) = *&v19[48];
  *(&v30[2] + 1) = *&v19[32];
  v13 = v30[0];
  *a2 = v10;
  a2[1] = v13;
  v14 = v30[1];
  v15 = v30[2];
  *(a2 + 89) = *(&v30[4] + 9);
  v16 = v30[4];
  a2[4] = v30[3];
  a2[5] = v16;
  a2[2] = v14;
  a2[3] = v15;
  v17 = sub_1001F1160(&qword_100AE0268);
  sub_1000077D8(v6, a2 + *(v17 + 48), &qword_100AE0250);
  sub_1000077D8(v29, &v31, &qword_100AE0270);
  sub_100007840(v9, &qword_100AE0250);
  sub_100007840(v6, &qword_100AE0250);
  *&v32[33] = *&v19[32];
  *&v32[49] = *&v19[48];
  v33 = *&v19[64];
  *&v32[1] = *v19;
  v31 = v10;
  v32[0] = v11;
  v34 = *&v19[80];
  *&v32[17] = *&v19[16];
  return sub_100007840(&v31, &qword_100AE0270);
}

uint64_t sub_1003B2924@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10079C8F4();
  sub_1003B29F8(&v10);
  v3 = v10;
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  LOBYTE(v10) = 1;
  v17 = v11;
  v16 = v14;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  sub_1001F1894(v5, v6, v7);

  sub_10020B430(v5, v6, v7);
}

uint64_t sub_1003B29F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v5 = sub_10079D4D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[2] = 0x736B6F6F42BFA3EFLL;
  v22[3] = 0xA800000000000000;
  sub_100206ECC();
  v9 = sub_10079D5D4();
  v11 = v10;
  v13 = v12;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.title3(_:), v5);
  v14 = sub_10079D3A4();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_10079D3D4();
  sub_10079D434();
  sub_100007840(v4, &unk_100AD1FC0);
  (*(v6 + 8))(v8, v5);
  v15 = sub_10079D5A4();
  v17 = v16;
  LOBYTE(v4) = v18;
  v20 = v19;

  sub_10020B430(v9, v11, v13 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v4 & 1;
  *(a1 + 40) = v20;
  sub_1001F1894(v15, v17, v4 & 1);

  sub_10020B430(v15, v17, v4 & 1);
}

uint64_t sub_1003B2C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE0278);
  __chkstk_darwin(v4 - 8);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v47[-v8];
  v10 = sub_1001F1160(&qword_100AE0280);
  __chkstk_darwin(v10 - 8);
  v57 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  v15 = sub_1001F1160(&qword_100AE0288);
  __chkstk_darwin(v15 - 8);
  v59 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v47[-v18];
  *v19 = sub_10079C8F4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v58 = v19;
  v20 = sub_1001F1160(&qword_100AE0290);
  sub_1003B324C(&v19[*(v20 + 44)]);
  v21 = *(a1 + 32);
  *&v66 = *(a1 + 24);
  *(&v66 + 1) = v21;
  sub_100206ECC();

  v56 = sub_10079D5D4();
  v55 = v22;
  v24 = v23;
  v54 = v25;
  v66 = *a1;
  v67 = *(a1 + 16);
  sub_1001F1160(&qword_100AE0228);
  sub_10079E1F4();
  v52 = *(&v61 + 1);
  v53 = v61;
  v51 = v62;
  v60 = sub_1003B58EC(*(a1 + 104));
  v27 = v26;
  v28 = v24 & 1;
  LOBYTE(v66) = v24 & 1;
  v48 = v24 & 1;
  v66 = *a1;
  v67 = *(a1 + 16);
  sub_10079E1C4();
  v29 = 0x4044000000000000;
  if (v61)
  {
    v29 = 0x4034000000000000;
  }

  v50 = v29;
  *v14 = sub_10079C8F4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v30 = &v14[*(sub_1001F1160(&qword_100AE0298) + 44)];
  v49 = v14;
  *v9 = sub_10079C8F4();
  *(v9 + 1) = 0x402E000000000000;
  v9[16] = 0;
  v31 = sub_1001F1160(&qword_100AE02A0);
  sub_1003B3544(a1, &v9[*(v31 + 44)]);
  sub_1000077D8(v9, v6, &qword_100AE0278);
  sub_1000077D8(v6, v30, &qword_100AE0278);
  v32 = v30 + *(sub_1001F1160(&qword_100AE02A8) + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_100007840(v9, &qword_100AE0278);
  sub_100007840(v6, &qword_100AE0278);
  v33 = v59;
  sub_1000077D8(v58, v59, &qword_100AE0288);
  v34 = v57;
  sub_1000077D8(v14, v57, &qword_100AE0280);
  *a2 = 0;
  *(a2 + 8) = 1;
  v35 = sub_1001F1160(&qword_100AE02B0);
  sub_1000077D8(v33, a2 + v35[12], &qword_100AE0288);
  v36 = a2 + v35[16];
  v37 = v56;
  v38 = v55;
  *&v61 = v56;
  *(&v61 + 1) = v55;
  LOBYTE(v62) = v28;
  v39 = v54;
  v40 = v53;
  *(&v62 + 1) = v54;
  *&v63 = v53;
  v41 = v52;
  *(&v63 + 1) = v52;
  v42 = v51;
  LOBYTE(v64) = v51;
  *(&v64 + 1) = v60;
  v65 = v27;
  v43 = v64;
  *(v36 + 32) = v63;
  *(v36 + 48) = v43;
  v44 = v62;
  *v36 = v61;
  *(v36 + 16) = v44;
  *(v36 + 64) = v65;
  v45 = a2 + v35[20];
  *v45 = v50;
  *(v45 + 8) = 0;
  sub_1000077D8(v34, a2 + v35[24], &qword_100AE0280);
  sub_1000077D8(&v61, &v66, &qword_100AE02B8);
  sub_100007840(v49, &qword_100AE0280);
  sub_100007840(v58, &qword_100AE0288);
  sub_100007840(v34, &qword_100AE0280);
  *&v66 = v37;
  *(&v66 + 1) = v38;
  v67 = v48;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v71 = v42;
  v72 = v60;
  v73 = v27;
  sub_100007840(&v66, &qword_100AE02B8);
  return sub_100007840(v59, &qword_100AE0288);
}

uint64_t sub_1003B324C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1001F1160(&qword_100AE02F0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v23 - v9);
  v11 = sub_10079DF24();
  sub_10079D3B4();
  v12 = sub_10079D3A4();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = sub_10079D424();
  sub_100007840(v3, &unk_100AD1FC0);
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(sub_1001F1160(&qword_100AD1CD8) + 36));
  v16 = *(sub_1001F1160(&qword_100AEE3C0) + 28);
  v17 = enum case for Image.Scale.large(_:);
  v18 = sub_10079DF84();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v19 = sub_10079DE24();

  *(v10 + *(v5 + 44)) = v19;
  sub_1000077D8(v10, v7, &qword_100AE02F0);
  v20 = v24;
  sub_1000077D8(v7, v24, &qword_100AE02F0);
  v21 = v20 + *(sub_1001F1160(&qword_100AE02F8) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_100007840(v10, &qword_100AE02F0);
  return sub_100007840(v7, &qword_100AE02F0);
}

uint64_t sub_1003B3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v3 = sub_10079DF34();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079B744();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v42 = sub_1001F1160(&qword_100AE02C0) - 8;
  __chkstk_darwin(v42);
  v45 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v40 - v16);
  v41 = *(a1 + 72);
  sub_10079DF04();
  sub_10079B734();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v40 = sub_10079DF94();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 16))(v10, v13, v7);
  sub_1001F1160(&qword_100AE02C8);
  sub_1003B3CCC();
  sub_10079B784();

  (*(v8 + 8))(v13, v7);
  v18 = v41;
  *v17 = v40;
  [v18 size];
  v21 = v19 / v20;
  v22 = v17 + *(sub_1001F1160(&qword_100AE02D8) + 36);
  *v22 = v21;
  *(v22 + 4) = 0;
  sub_10079E484();
  sub_10079BE54();
  v23 = (v17 + *(v42 + 44));
  v24 = *&v46[11];
  *v23 = *&v46[9];
  v23[1] = v24;
  v23[2] = *&v46[13];
  v25 = sub_10079CB34();
  LOBYTE(v51[0]) = 1;
  sub_1003B3A3C(v47);
  *(v46 + 7) = v47[0];
  *(&v46[2] + 7) = v47[1];
  *(&v46[4] + 7) = v47[2];
  *(&v46[6] + 7) = v47[3];
  LOBYTE(v6) = v51[0];
  v26 = sub_10079D354();
  KeyPath = swift_getKeyPath();
  v28 = v45;
  sub_1000077D8(v17, v45, &qword_100AE02C0);
  v29 = v28;
  v30 = v44;
  sub_1000077D8(v29, v44, &qword_100AE02C0);
  v31 = sub_1001F1160(&qword_100AE02E0);
  v32 = v30 + *(v31 + 48);
  v48[0] = v25;
  v48[1] = 0;
  LOBYTE(v49[0]) = v6;
  *(v49 + 1) = *v46;
  *(&v49[1] + 1) = *&v46[2];
  *(&v49[3] + 1) = *&v46[6];
  *(&v49[2] + 1) = *&v46[4];
  *&v49[4] = *(&v46[7] + 7);
  *(&v49[4] + 1) = KeyPath;
  v50 = v26;
  v33 = v49[0];
  *v32 = v25;
  *(v32 + 16) = v33;
  v34 = v49[1];
  v35 = v49[2];
  v36 = v49[3];
  v37 = v49[4];
  *(v32 + 96) = v26;
  *(v32 + 64) = v36;
  *(v32 + 80) = v37;
  *(v32 + 32) = v34;
  *(v32 + 48) = v35;
  v38 = v30 + *(v31 + 64);
  *v38 = 0;
  *(v38 + 8) = 1;
  sub_1000077D8(v48, v51, &qword_100AE02E8);
  sub_100007840(v17, &qword_100AE02C0);
  v54 = *&v46[2];
  v55 = *&v46[4];
  *v56 = *&v46[6];
  v51[0] = v25;
  v51[1] = 0;
  v52 = v6;
  v53 = *v46;
  *&v56[15] = *(&v46[7] + 7);
  v57 = KeyPath;
  v58 = v26;
  sub_100007840(v51, &qword_100AE02E8);
  return sub_100007840(v45, &qword_100AE02C0);
}

uint64_t sub_1003B3A3C@<X0>(uint64_t a1@<X8>)
{
  sub_100206ECC();

  v2 = sub_10079D5D4();
  v4 = v3;
  v6 = v5;
  sub_10079D3B4();
  v25 = sub_10079D544();
  v26 = v7;
  v9 = v8;
  v24 = v10;
  sub_10020B430(v2, v4, v6 & 1);

  v11 = sub_10079D5D4();
  v13 = v12;
  v15 = v14;
  sub_10079D3F4();
  v16 = sub_10079D544();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10020B430(v11, v13, v15 & 1);

  *a1 = v25;
  *(a1 + 8) = v9;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v26;
  *(a1 + 32) = v16;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_1001F1894(v25, v9, v24 & 1);

  sub_1001F1894(v16, v18, v20 & 1);

  sub_10020B430(v16, v18, v20 & 1);

  sub_10020B430(v25, v9, v24 & 1);
}

uint64_t sub_1003B3C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0218);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003B3CCC()
{
  result = qword_100AE02D0;
  if (!qword_100AE02D0)
  {
    sub_10079B744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE02D0);
  }

  return result;
}

unint64_t sub_1003B3D24()
{
  result = qword_100AE0300;
  if (!qword_100AE0300)
  {
    sub_1001F1234(&qword_100AE0230);
    sub_1003B3DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0300);
  }

  return result;
}

unint64_t sub_1003B3DB0()
{
  result = qword_100AE0308;
  if (!qword_100AE0308)
  {
    sub_1001F1234(&qword_100AE0218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0308);
  }

  return result;
}

uint64_t property wrapper backing initializer of QuoteSharingSegmentedControl.defaultImageWidth(double a1)
{
  v2 = sub_10079D4D4();
  v3 = __chkstk_darwin(v2);
  *&v7[1] = a1;
  (*(v5 + 104))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Font.TextStyle.body(_:), v3);
  sub_100247DCC();
  return sub_10079BDD4();
}

uint64_t QuoteSharingSegmentedControl.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10079C8F4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_1001F1160(&qword_100AE0310);
  sub_1003B3F7C(v1, (a1 + *(v3 + 44)));
  v4 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  result = sub_1001F1160(&qword_100AE0318);
  *(a1 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1003B3F7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for QuoteSharingSegmentedControl();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v29[1] = v5;
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AE03D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v31 = v29 - v11;
  __chkstk_darwin(v12);
  v30 = v29 - v13;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = sub_10079E504();
  sub_1003B4B40(a1, v6);
  v18 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_1003B4BA4(v6, v19 + v18);
  v35 = a1;

  sub_1001F1160(&qword_100AE03E0);
  v29[0] = sub_1003B4C28();
  sub_10079E054();
  sub_1003B4B40(a1, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1003B4BA4(v6, v20 + v18);
  v34 = a1;

  v21 = v30;
  sub_10079E054();
  v22 = *(v8 + 16);
  v23 = v31;
  v22(v31, v16, v7);
  v24 = v32;
  v22(v32, v21, v7);
  v25 = v33;
  v22(v33, v23, v7);
  v26 = sub_1001F1160(&qword_100AE0410);
  v22(&v25[*(v26 + 48)], v24, v7);

  v27 = *(v8 + 8);
  v27(v21, v7);
  v27(v16, v7);
  v27(v24, v7);
  return (v27)(v23, v7);
}

uint64_t sub_1003B438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = sub_10079DF24();
  type metadata accessor for QuoteSharingSegmentedControl();
  sub_1001F1160(&qword_100AD6BC0);
  sub_10079BDF4();
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_10079E474();
  v6 = v5;
  v7 = a2 + *(sub_1001F1160(&qword_100AE03E0) + 36);
  sub_1003B46E8(a1, 0, v7);
  result = sub_1001F1160(&qword_100AE0408);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_1003B4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = sub_10079DF24();
  type metadata accessor for QuoteSharingSegmentedControl();
  sub_1001F1160(&qword_100AD6BC0);
  sub_10079BDF4();
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_10079E474();
  v6 = v5;
  v7 = a2 + *(sub_1001F1160(&qword_100AE03E0) + 36);
  sub_1003B46E8(a1, 1, v7);
  result = sub_1001F1160(&qword_100AE0408);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_1003B46E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F1160(&qword_100AE0418);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-v8];
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v23 = *(a1 + 8);
  v24 = v10;
  v25 = v11;
  sub_1001F1160(&qword_100AE0228);
  sub_10079E1C4();
  v12 = 1;
  if (v22[7] == (a2 & 1))
  {
    v13 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
    v14 = *(sub_1001F1160(&qword_100AE0420) + 36);
    v15 = enum case for BlendMode.plusLighter(_:);
    v16 = sub_10079E534();
    (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
    *v9 = v13;
    *(v9 + 4) = 256;
    *(v9 + 2) = 0x3FC999999999999ALL;
    v17 = sub_10079E594();
    LODWORD(v13) = sub_10079D034();
    sub_10079E634();
    v18 = &v9[*(v6 + 36)];
    *v18 = 0x6948656C63726963;
    *(v18 + 1) = 0xEF746867696C6867;
    *(v18 + 2) = v17;
    *(v18 + 6) = v13;
    *(v18 + 4) = v19;
    *(v18 + 5) = v20;
    v18[48] = 1;
    sub_1003B4F18(v9, a3);
    v12 = 0;
  }

  return (*(v7 + 56))(a3, v12, 1, v6);
}

uint64_t type metadata accessor for QuoteSharingSegmentedControl()
{
  result = qword_100AE0378;
  if (!qword_100AE0378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B4978()
{
  sub_1003B4A0C();
  if (v0 <= 0x3F)
  {
    sub_100247D70();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003B4A0C()
{
  if (!qword_100AE0388)
  {
    v0 = sub_10079E224();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE0388);
    }
  }
}

unint64_t sub_1003B4A5C()
{
  result = qword_100AE03C0;
  if (!qword_100AE03C0)
  {
    sub_1001F1234(&qword_100AE0318);
    sub_100005920(&qword_100AE03C8, &qword_100AE03D0);
    sub_100005920(&qword_100ADC1E0, &qword_100AF4490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE03C0);
  }

  return result;
}

uint64_t sub_1003B4B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingSegmentedControl();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B4BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingSegmentedControl();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003B4C28()
{
  result = qword_100AE03E8;
  if (!qword_100AE03E8)
  {
    sub_1001F1234(&qword_100AE03E0);
    sub_1003B4CE0();
    sub_100005920(&qword_100AE0400, &qword_100AE0408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE03E8);
  }

  return result;
}

unint64_t sub_1003B4CE0()
{
  result = qword_100AE03F0;
  if (!qword_100AE03F0)
  {
    sub_1001F1234(&qword_100AE03F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE03F0);
  }

  return result;
}

uint64_t sub_1003B4D64()
{
  v1 = (type metadata accessor for QuoteSharingSegmentedControl() - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_1001F1160(&qword_100AD6BC0);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1003B4F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0418);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t QuoteSharingSocialNetwork.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  if (a1 == 1)
  {
    return 0xD000000000000021;
  }

  return result;
}

uint64_t sub_1003B501C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  if (!a1)
  {
    sub_1007969A4();
    v16 = sub_1007969B4();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v12, 1, v16);
    if (result != 1)
    {
      return (*(v17 + 32))(a2, v12, v16);
    }

    goto LABEL_11;
  }

  if (a1 == 1)
  {
    sub_1007969A4();
    v13 = sub_1007969B4();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v9, 1, v13);
    if (result != 1)
    {
      return (*(v14 + 32))(a2, v9, v13);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1007969A4();
  v18 = sub_1007969B4();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v6, 1, v18);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v19 + 32))(a2, v6, v18);
}

unint64_t sub_1003B52D0(char a1)
{
  if (!a1)
  {
    sub_1001F1160(&unk_100ADE550);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *(inited + 32) = 0xD000000000000020;
    v3 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001008D1100;
    *(inited + 48) = 0x3534313332323036;
    *(inited + 56) = 0xEF30303938313939;
LABEL_8:
    v4 = sub_100019158(inited);
    swift_setDeallocating();
    sub_1003B5884(v3);
    return v4;
  }

  if (a1 != 1)
  {
    sub_1001F1160(&unk_100ADE550);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *(inited + 32) = 0xD000000000000021;
    v3 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001008D10A0;
    *(inited + 48) = 0xD000000000000024;
    *(inited + 56) = 0x80000001008D10D0;
    goto LABEL_8;
  }

  return sub_100019158(_swiftEmptyArrayStorage);
}

uint64_t sub_1003B5460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = ".FacebookStories";
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v2 == 1)
  {
    v6 = ".FacebookStories";
  }

  else
  {
    v6 = ".InstagramStories";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ished";
  }

  v9 = v8 | 0x8000000000000000;
  if (v3 == 1)
  {
    v10 = 0xD000000000000021;
  }

  else
  {
    v10 = 0xD000000000000020;
  }

  if (v3 != 1)
  {
    v4 = ".InstagramStories";
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xD000000000000020;
  }

  if (*a2)
  {
    v12 = v4;
  }

  else
  {
    v12 = "ished";
  }

  if (v7 == v11 && v9 == (v12 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1007A3AB4();
  }

  return v13 & 1;
}

Swift::Int sub_1003B5530()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1003B55C4()
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_1003B5644()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

uint64_t sub_1003B56D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s5Books25QuoteSharingSocialNetworkO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1003B5704(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000020;
  v3 = *v1;
  v4 = ".FacebookStories";
  if (v3 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v3 != 1)
  {
    v4 = ".InstagramStories";
  }

  if (*v1)
  {
    v2 = v5;
    v6 = v4;
  }

  else
  {
    v6 = "ished";
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t _s5Books25QuoteSharingSocialNetworkO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0CE30;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003B57B8()
{
  result = qword_100AE0428;
  if (!qword_100AE0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0428);
  }

  return result;
}

unint64_t sub_1003B5810()
{
  result = qword_100AE0430;
  if (!qword_100AE0430)
  {
    sub_1001F1234(&qword_100AE0438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0430);
  }

  return result;
}

uint64_t sub_1003B5884(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADD560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B58EC(unsigned __int8 a1)
{
  v2 = sub_10079D484();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_10079D3F4();
      v15 = enum case for Font.Design.monospaced(_:);
      v16 = sub_10079D3A4();
      v17 = *(v16 - 8);
      (*(v17 + 104))(v8, v15, v16);
      (*(v17 + 56))(v8, 0, 1, v16);
      sub_10079D424();
      sub_1003B5F54(v8);
      (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
      v10 = sub_10079D4A4();

      (*(v3 + 8))(v5, v2);
      return v10;
    }

    if (a1 != 4)
    {
      sub_10079D3C4();
      v21 = enum case for Font.Design.serif (_:);
      v22 = sub_10079D3A4();
      v23 = *(v22 - 8);
      (*(v23 + 104))(v8, v21, v22);
      (*(v23 + 56))(v8, 0, 1, v22);
      sub_10079D424();
      sub_1003B5F54(v8);
      (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
      sub_10079D4A4();

      (*(v3 + 8))(v5, v2);
      v10 = sub_10079D414();

      return v10;
    }

    sub_10079D3E4();
    v11 = enum case for Font.Design.serif (_:);
    v12 = sub_10079D3A4();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v8, v11, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
LABEL_11:
    sub_10079D424();
    sub_1003B5F54(v8);
    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
    v10 = sub_10079D4A4();

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  if (!a1)
  {
    sub_10079D3B4();
    v14 = sub_10079D3A4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    sub_10079D3D4();
    v18 = enum case for Font.Design.rounded(_:);
    v19 = sub_10079D3A4();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v8, v18, v19);
    (*(v20 + 56))(v8, 0, 1, v19);
    goto LABEL_11;
  }

  v9 = [objc_opt_self() systemFontOfSize:56.0 weight:UIFontWeightBold width:UIFontWidthCompressed];
  sub_10079D4F4();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v10 = sub_10079D4A4();

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_1003B5F54(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD1FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B5FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003B6004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B60C4()
{
  result = qword_100AE0450;
  if (!qword_100AE0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0450);
  }

  return result;
}

uint64_t sub_1003B6134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  KeyPath = swift_getKeyPath();
  v8 = sub_1001F1160(&qword_100AE0458);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_1001F1160(&qword_100AE0460) + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  v10 = swift_getKeyPath();
  v11 = a2 + *(sub_1001F1160(&qword_100AE0468) + 36);
  *v11 = v10;
  *(v11 + 8) = 0;
  v12 = swift_getKeyPath();
  v13 = (a2 + *(sub_1001F1160(&qword_100AE0470) + 36));
  *v13 = v12;
  v13[1] = v6;

  LOBYTE(v12) = sub_10079D2A4();
  sub_10079BBA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_1001F1160(&qword_100AE0478);
  v23 = a2 + *(result + 36);
  *v23 = v12;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

unint64_t sub_1003B62BC()
{
  result = qword_100AE0480;
  if (!qword_100AE0480)
  {
    sub_1001F1234(&qword_100AE0478);
    sub_1003B6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0480);
  }

  return result;
}

unint64_t sub_1003B6348()
{
  result = qword_100AE0488;
  if (!qword_100AE0488)
  {
    sub_1001F1234(&qword_100AE0470);
    sub_1003B6400();
    sub_100005920(&qword_100AE04A8, &qword_100AE04B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0488);
  }

  return result;
}

unint64_t sub_1003B6400()
{
  result = qword_100AE0490;
  if (!qword_100AE0490)
  {
    sub_1001F1234(&qword_100AE0468);
    sub_1003B64B8();
    sub_100005920(&qword_100ADC1B8, &qword_100ADC1C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0490);
  }

  return result;
}

unint64_t sub_1003B64B8()
{
  result = qword_100AE0498;
  if (!qword_100AE0498)
  {
    sub_1001F1234(&qword_100AE0460);
    sub_100005920(&qword_100AE04A0, &qword_100AE0458);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0498);
  }

  return result;
}

uint64_t type metadata accessor for QuoteSharingView()
{
  result = qword_100AE0510;
  if (!qword_100AE0510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B6610()
{
  sub_1003B66FC();
  if (v0 <= 0x3F)
  {
    sub_10024BB84(319, &qword_100AE3F00);
    if (v1 <= 0x3F)
    {
      sub_10024BB84(319, &qword_100AE0528);
      if (v2 <= 0x3F)
      {
        sub_10024BB84(319, &unk_100AE0530);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003B66FC()
{
  if (!qword_100AE0520)
  {
    sub_1001F1234(qword_100AF6430);
    v0 = sub_10079BCD4();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE0520);
    }
  }
}

uint64_t sub_1003B677C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_10079C874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AE0588);
  __chkstk_darwin(v7);
  v9 = (&v18 - v8);
  v10 = sub_1001F1160(&qword_100AE0578);
  v19 = *(v10 - 8);
  v20 = v10;
  __chkstk_darwin(v10);
  v12 = &v18 - v11;
  *v9 = sub_10079E474();
  v9[1] = v13;
  v14 = sub_1001F1160(&qword_100AE05B0);
  sub_1003B6A9C(a1, v9 + *(v14 + 44));
  (*(v4 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v3);
  v15 = sub_100005920(&qword_100AE0590, &qword_100AE0588);
  sub_10079DA94();
  (*(v4 + 8))(v6, v3);
  sub_100007840(v9, &qword_100AE0588);
  v22 = a1;
  sub_1001F1160(&qword_100AE0580);
  v23 = v7;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  sub_100005920(&qword_100AE0598, &qword_100AE0580);
  v16 = v20;
  sub_10079DBF4();
  return (*(v19 + 8))(v12, v16);
}

uint64_t sub_1003B6A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE05D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10079DF34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for QuoteSharingView() + 32) + 56);
  sub_10079DF04();
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  v15 = sub_10079DF94();

  (*(v11 + 8))(v13, v10);
  v16 = sub_10079C2C4();
  LOBYTE(v13) = sub_10079D294();
  *v9 = sub_10079CB24();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_1001F1160(&qword_100AE05D8);
  sub_1003B6D1C(a1, &v9[*(v17 + 44)]);
  sub_1000077D8(v9, v6, &qword_100AE05D0);
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  v18 = sub_1001F1160(&qword_100AE05E0);
  sub_1000077D8(v6, a2 + *(v18 + 48), &qword_100AE05D0);

  sub_100007840(v9, &qword_100AE05D0);
  sub_100007840(v6, &qword_100AE05D0);
}

uint64_t sub_1003B6D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v70 = sub_10079D4D4();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for QuoteSharingSegmentedControl() - 8;
  __chkstk_darwin(v66);
  v69 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = (&v53 - v6);
  v7 = type metadata accessor for QuoteSharingView();
  v8 = (v7 - 8);
  v61 = *(v7 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v7);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079C354();
  __chkstk_darwin(v10 - 8);
  v55 = sub_10079C374();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AE05E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v57 = sub_1001F1160(&qword_100AE05F0);
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v53 - v17;
  v18 = sub_1001F1160(&qword_100AE05F8);
  v63 = *(v18 - 8);
  v64 = v18;
  __chkstk_darwin(v18);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v72 = &v53 - v21;
  v77 = *(a1 + v8[9]);
  sub_1001F1160(&qword_100AE0600);
  sub_10079E014();
  v73 = a1;
  sub_1001F1160(&qword_100AE0608);
  sub_1003B8F0C();
  sub_10079E2E4();
  sub_10079C344();
  sub_10079C364();
  v22 = sub_100005920(&qword_100AE0660, &qword_100AE05E8);
  v23 = v55;
  sub_10079D624();
  v24 = v23;
  (*(v56 + 8))(v12, v23);
  (*(v14 + 8))(v16, v13);
  v25 = v8[7];
  v53 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v77) = v27;
  *(&v77 + 1) = v28;
  sub_1001F1160(&qword_100ADB850);
  sub_10079E014();
  v29 = v58;
  sub_1003B955C(a1, v58, type metadata accessor for QuoteSharingView);
  v30 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v31 = swift_allocObject();
  sub_1003B8CA0(v29, v31 + v30);
  sub_1001F1160(&qword_100AE0668);
  *&v74 = v13;
  *(&v74 + 1) = v24;
  v75 = v22;
  v76 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeConformance2();
  sub_1003B9394();
  v32 = v72;
  v33 = v57;
  v34 = v54;
  sub_10079DB34();

  (*(v59 + 8))(v34, v33);
  v35 = v53 + v8[8];
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v77) = v36;
  *(&v77 + 1) = v37;
  sub_1001F1160(&qword_100AE0698);
  sub_10079E014();
  v38 = v74;
  v39 = v75;
  v40 = v65;
  *v65 = 0;
  *(v40 + 8) = v38;
  *(v40 + 24) = v39;
  *&v74 = 0x4046000000000000;
  (*(v68 + 104))(v67, enum case for Font.TextStyle.body(_:), v70);
  sub_100247DCC();
  sub_10079BDD4();
  v41 = v63;
  v42 = *(v63 + 16);
  v43 = v62;
  v44 = v32;
  v45 = v64;
  v42(v62, v44, v64);
  v46 = v69;
  sub_1003B955C(v40, v69, type metadata accessor for QuoteSharingSegmentedControl);
  v47 = v71;
  *v71 = 0;
  *(v47 + 8) = 1;
  v48 = v47;
  v49 = sub_1001F1160(&qword_100AE06A0);
  v42(&v48[v49[12]], v43, v45);
  v50 = &v48[v49[16]];
  *v50 = 0;
  v50[8] = 1;
  sub_1003B955C(v46, &v48[v49[20]], type metadata accessor for QuoteSharingSegmentedControl);
  sub_1003B95C4(v40);
  v51 = *(v41 + 8);
  v51(v72, v45);
  sub_1003B95C4(v46);
  return (v51)(v43, v45);
}

uint64_t sub_1003B75F4(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSharingView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v16 = xmmword_100820CC0;
  swift_getKeyPath();
  sub_1003B955C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuoteSharingView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1003B8CA0(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1001F1160(&qword_100AD71E8);
  sub_1001F1160(&qword_100AE06B8);
  sub_100258384();
  v7 = sub_1001F1234(&qword_100AE0618);
  v8 = sub_1001F1234(&qword_100AD1D90);
  v9 = sub_1003B9024();
  v12 = v8;
  v13 = &type metadata for Int;
  v14 = v9;
  v15 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = v7;
  v13 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_10079E264();
}

uint64_t sub_1003B781C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v59 = a2;
  v58 = sub_10079C0E4();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1001F1160(&qword_100AD1D90);
  __chkstk_darwin(v56);
  v10 = &v50 - v9;
  v11 = sub_1001F1160(&qword_100AE0618);
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v50 - v12;
  v13 = type metadata accessor for QuoteSharingView();
  v14 = (v3 + *(v13 + 24));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v60) = v15;
  v61 = v16;
  sub_1001F1160(&qword_100AE0698);
  result = sub_10079E014();
  v18 = v64;
  v19 = v65;
  v20 = (v3 + *(v13 + 32));
  v21 = v20[3];
  v66 = v20[2];
  v67 = v21;
  v68 = v20[4];
  v22 = v20[1];
  v64 = *v20;
  v65 = v22;
  if (a1 > 5)
  {
    __break(1u);
  }

  else
  {
    v50 = v18;
    v52 = v8;
    v53 = a1;
    v51 = *(&off_100A0CEC0 + a1 + 32);
    v23 = *v20;
    *&v69[23] = v20[1];
    v24 = v20[3];
    *&v69[39] = v20[2];
    *&v69[55] = v24;
    *&v69[71] = v20[4];
    *&v69[7] = v23;
    sub_1003B9620(&v64, &v60);
    v25 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v26 = *(sub_1001F1160(&qword_100AE0640) + 36);
    v54 = v11;
    v27 = &v10[v26];
    v28 = *(sub_10079C3D4() + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = sub_10079C9E4();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #20.0 }

    *v27 = _Q0;
    *&v27[*(sub_1001F1160(&qword_100AD97F8) + 36)] = 256;
    v36 = *&v69[48];
    *(v10 + 49) = *&v69[32];
    *(v10 + 65) = v36;
    *(v10 + 81) = *&v69[64];
    v37 = *&v69[16];
    *(v10 + 17) = *v69;
    *v10 = v50;
    *(v10 + 1) = *(&v18 + 1);
    v10[16] = v19;
    *(v10 + 12) = *&v69[79];
    *(v10 + 33) = v37;
    v10[104] = v51;
    *(v10 + 105) = v70[0];
    *(v10 + 27) = *(v70 + 3);
    *(v10 + 14) = v25;
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v38 = sub_10079DE24();

    v39 = &v10[*(sub_1001F1160(&qword_100AE0630) + 36)];
    *v39 = v38;
    *(v39 + 8) = xmmword_100820CD0;
    *(v39 + 3) = 0x4024000000000000;
    sub_10079E634();
    v41 = v55;
    v40 = v56;
    v42 = &v10[*(v56 + 36)];
    *v42 = a3;
    *(v42 + 1) = a3;
    *(v42 + 2) = v43;
    *(v42 + 3) = v44;
    sub_1003B96D0(v10, v41);
    v45 = v41 + *(sub_1001F1160(&qword_100AD1D98) + 36);
    v46 = v52;
    *v45 = v53;
    *(v45 + 8) = 1;
    v47 = v58;
    (*(v6 + 104))(v46, enum case for DynamicTypeSize.medium(_:), v58);
    v48 = sub_1003B9024();
    v60 = v40;
    v61 = &type metadata for Int;
    v62 = v48;
    v63 = &protocol witness table for Int;
    swift_getOpaqueTypeConformance2();
    v49 = v54;
    sub_10079D7D4();
    (*(v6 + 8))(v46, v47);
    return (*(v57 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_1003B7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE06A8);
  __chkstk_darwin(v4);
  v6 = v36 - v5;
  v7 = sub_1001F1160(&qword_100AE0690);
  __chkstk_darwin(v7);
  v9 = v36 - v8;
  v10 = sub_1003B81B8();
  if (v10)
  {
    v11 = v10;
    v39 = v7;
    v12 = (a1 + *(type metadata accessor for QuoteSharingView() + 32));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[4];
    v42 = v12[3];
    v43 = v15;
    v16 = *v12;
    v17 = *v12;
    v41[1] = v12[1];
    v41[2] = v14;
    *&v40[24] = v13;
    *&v40[40] = v14;
    *&v40[56] = v42;
    *&v40[72] = v12[4];
    v41[0] = v16;
    *&v40[8] = v17;
    *v40 = v11;
    sub_1001F1160(&qword_100AE06B0);
    sub_10079C9C4();
    v38 = a2;
    v18 = swift_allocObject();
    v36[1] = v4;
    v19 = v18;
    *(v18 + 16) = xmmword_10080EFF0;
    v37 = v11;
    sub_1003B9620(v41, v44);
    sub_10079C9B4();
    sub_10079C9A4();
    sub_1001F2948(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1003B1F0C();
    sub_10079D984();

    v44[2] = *&v40[32];
    v44[3] = *&v40[48];
    v44[4] = *&v40[64];
    v45 = *&v40[80];
    v44[0] = *v40;
    v44[1] = *&v40[16];
    sub_1003B967C(v44);
    v20 = sub_10079C2C4();
    v21 = sub_10079D294();
    v22 = &v9[*(v39 + 36)];
    *v22 = v20;
    v22[8] = v21;
    sub_1000077D8(v9, v6, &qword_100AE0690);
    swift_storeEnumTagMultiPayload();
    sub_1003B94A4();
    v23 = v38;
    sub_10079CCA4();

    sub_100007840(v9, &qword_100AE0690);
    v24 = sub_1001F1160(&qword_100AE0680);
    return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else if (sub_100798F24())
  {
    sub_10079DD64();
    v26 = sub_10079D564();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    *v6 = v26;
    *(v6 + 1) = v28;
    v6[16] = v30 & 1;
    *(v6 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_1003B94A4();
    sub_10079CCA4();
    v33 = sub_1001F1160(&qword_100AE0680);
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  else
  {
    v34 = sub_1001F1160(&qword_100AE0680);
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }
}

uint64_t sub_1003B81B8()
{
  v1 = sub_1001F1160(&qword_100AE06B8);
  __chkstk_darwin(v1 - 8);
  v3 = v7 - v2;
  v8 = *(v0 + *(type metadata accessor for QuoteSharingView() + 28));
  sub_1001F1160(&qword_100AE0600);
  sub_10079DFF4();
  sub_1003B781C(v7[1], v3, 0.9);
  sub_1001F1160(&qword_100AE06C0);
  swift_allocObject();
  sub_10079BF04();
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];

  sub_10079BEF4();
  v5 = sub_10079BEE4();

  return v5;
}

uint64_t sub_1003B830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1001F1160(&qword_100AE05B8);
  __chkstk_darwin(v3);
  v32 = v26 - v4;
  v33 = sub_1001F1160(&qword_100AE05C0);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = v26 - v5;
  v27 = v26 - v5;
  v7 = sub_10079CDD4();
  __chkstk_darwin(v7 - 8);
  v30 = sub_1001F1160(&qword_100AE05C8);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  sub_10079CD84();
  v36 = a1;
  sub_1001F1160(&qword_100ADB860);
  sub_100005920(&qword_100AEE360, &qword_100ADB860);
  v29 = v12;
  sub_10079BD14();
  sub_10079CDC4();
  sub_10079BD14();
  sub_10079CD94();
  v35 = a1;
  sub_10079BD14();
  v26[1] = v3;
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  v15 = v8;
  v16 = *(v8 + 16);
  v17 = v32;
  v18 = v12;
  v19 = v30;
  v16(v32, v18, v30);
  v20 = v31;
  v21 = v6;
  v22 = v33;
  (*(v31 + 16))(&v17[v13], v21, v33);
  v23 = v28;
  v16(&v17[v14], v28, v19);
  sub_10079CB84();
  v24 = *(v15 + 8);
  v24(v23, v19);
  (*(v20 + 8))(v27, v22);
  return (v24)(v29, v19);
}

uint64_t sub_1003B86EC()
{
  v0 = sub_10079C3B4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(qword_100AF6430);
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_1005A2820(&v5 - v2);
  sub_10079E1C4();
  sub_10079C3A4();
  sub_10079E1D4();
  return sub_1003B8E9C(v3);
}

uint64_t sub_1003B87E8@<X0>(uint64_t a1@<X8>)
{
  sub_10079D3B4();
  result = sub_10079D544();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1003B8850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v10[0] = a2;
  v10[1] = 0xE400000000000000;
  sub_1003B955C(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuoteSharingView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1003B8CA0(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  sub_100206ECC();
  return sub_10079E084();
}

uint64_t sub_1003B8988()
{
  type metadata accessor for QuoteSharingView();
  sub_1001F1160(&qword_100ADB850);
  return sub_10079E004();
}

uint64_t sub_1003B89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v14 = *(a1 - 8);
  v3 = *(v14 + 64);
  __chkstk_darwin(a1 - 8);
  v15 = v2;
  v12[1] = sub_1001F1160(&qword_100AE0570);
  v4 = sub_1001F1234(&qword_100AE0578);
  v5 = sub_1001F1234(&qword_100AE0580);
  sub_1001F1234(&qword_100AE0588);
  sub_100005920(&qword_100AE0590, &qword_100AE0588);
  v16 = v4;
  v17 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_100005920(&qword_100AE0598, &qword_100AE0580);
  swift_getOpaqueTypeConformance2();
  v6 = v13;
  sub_10079C2B4();
  sub_1003B955C(v2, v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuoteSharingView);
  v7 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v8 = swift_allocObject();
  sub_1003B8CA0(v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (v6 + *(sub_1001F1160(&qword_100AE05A0) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = sub_1003B8D04;
  v9[3] = v8;
  v10 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  result = sub_1001F1160(&qword_100AE05A8);
  *(v6 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1003B8CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B8E28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QuoteSharingView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1003B8E9C(uint64_t a1)
{
  v2 = sub_1001F1160(qword_100AF6430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003B8F0C()
{
  result = qword_100AE0610;
  if (!qword_100AE0610)
  {
    sub_1001F1234(&qword_100AE0608);
    sub_1001F1234(&qword_100AE0618);
    sub_1001F1234(&qword_100AD1D90);
    sub_1003B9024();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0610);
  }

  return result;
}

unint64_t sub_1003B9024()
{
  result = qword_100AE0620;
  if (!qword_100AE0620)
  {
    sub_1001F1234(&qword_100AD1D90);
    sub_1003B90B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0620);
  }

  return result;
}

unint64_t sub_1003B90B0()
{
  result = qword_100AE0628;
  if (!qword_100AE0628)
  {
    sub_1001F1234(&qword_100AE0630);
    sub_1003B913C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0628);
  }

  return result;
}

unint64_t sub_1003B913C()
{
  result = qword_100AE0638;
  if (!qword_100AE0638)
  {
    sub_1001F1234(&qword_100AE0640);
    sub_1003B9220(&qword_100AE0648, &qword_100AE0650, &unk_100820E28, sub_1003B92D0);
    sub_100005920(&unk_100AF6660, &qword_100AD97F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0638);
  }

  return result;
}

uint64_t sub_1003B9220(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2);
    a4();
    sub_100005920(&qword_100ADC1E0, &qword_100AF4490);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003B92D0()
{
  result = qword_100AE0658;
  if (!qword_100AE0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0658);
  }

  return result;
}

uint64_t sub_1003B9324@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QuoteSharingView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003B7CE4(v4, a1);
}

unint64_t sub_1003B9394()
{
  result = qword_100AE0670;
  if (!qword_100AE0670)
  {
    sub_1001F1234(&qword_100AE0668);
    sub_1003B9418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0670);
  }

  return result;
}

unint64_t sub_1003B9418()
{
  result = qword_100AE0678;
  if (!qword_100AE0678)
  {
    sub_1001F1234(&qword_100AE0680);
    sub_1003B94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0678);
  }

  return result;
}

unint64_t sub_1003B94A4()
{
  result = qword_100AE0688;
  if (!qword_100AE0688)
  {
    sub_1001F1234(&qword_100AE0690);
    sub_1003B1F0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0688);
  }

  return result;
}

uint64_t sub_1003B955C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B95C4(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSharingSegmentedControl();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B96D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD1D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B9740()
{
  v1 = type metadata accessor for QuoteSharingView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1001F1160(&qword_100AD61C8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_1001F1160(qword_100AF6430) + 32);
    v5 = sub_10079C3B4();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  v6 = v2 + *(v1 + 32);

  return swift_deallocObject();
}

unint64_t sub_1003B9960()
{
  result = qword_100AE06D0;
  if (!qword_100AE06D0)
  {
    sub_1001F1234(&qword_100AE05A0);
    sub_100005920(&qword_100AE06D8, &qword_100AE06E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE06D0);
  }

  return result;
}

__n128 sub_1003B9A18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1003B9A34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1003B9A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B9AE0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE06E8);
  sub_100008B98(v0, qword_100AE06E8);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_1003B9B54(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B9BE0()
{
  _s5Books18PropertyValueActorV9ActorTypeCMa_0();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100AE0708 = v0;
  return result;
}

uint64_t sub_1003B9C20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&qword_100AE0898);
  __chkstk_darwin(v2 - 8);
  v25[10] = v25 - v3;
  v4 = sub_1001F1160(&qword_100AE08A0);
  __chkstk_darwin(v4 - 8);
  v25[9] = v25 - v5;
  v6 = sub_1001F1160(&qword_100AE08A8);
  __chkstk_darwin(v6 - 8);
  v25[8] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25[7] = v25 - v9;
  v10 = sub_1001F1160(&qword_100AE08B0);
  __chkstk_darwin(v10 - 8);
  v25[6] = v25 - v11;
  v12 = sub_1001F1160(&qword_100AE08B8);
  __chkstk_darwin(v12 - 8);
  v25[5] = v25 - v13;
  v14 = sub_1001F1160(&qword_100AE08C0);
  __chkstk_darwin(v14 - 8);
  v25[4] = v25 - v15;
  v16 = sub_1001F1160(&qword_100AE08C8);
  __chkstk_darwin(v16 - 8);
  v17 = sub_1001F1160(&qword_100AE08D0);
  __chkstk_darwin(v17 - 8);
  v18 = sub_1001F1160(&qword_100AE08D8);
  __chkstk_darwin(v18 - 8);
  v19 = sub_1001F1160(&qword_100AE08E0);
  __chkstk_darwin(v19 - 8);
  v20 = sub_100799BE4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E764();
  sub_100799BD4();
  sub_100796C54();
  sub_100799FB4();
  sub_1003BB37C(&qword_100AE08E8, &type metadata accessor for Configuration);
  v25[11] = a1;
  sub_100799BC4();
  (*(v21 + 8))(v23, v20);
}

uint64_t sub_1003BA4F4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1001F1160(&qword_100AE0890);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  if (qword_100AD14F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE0708;

  return _swift_task_switch(sub_1003BA5D0, v3, 0);
}

uint64_t sub_1003BA5D0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration;
  swift_beginAccess();
  sub_1003BB234(v2 + v3, v1);
  v4 = sub_100799FB4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[10];
    v7 = v0[8];
    sub_1003BB2A4(v0[11]);
    sub_1003B9C20(v7);
    (*(v5 + 16))(v6, v7, v4);
    (*(v5 + 56))(v6, 0, 1, v4);
    swift_beginAccess();
    sub_1003BB30C(v6, v2 + v3);
    swift_endAccess();
  }

  else
  {
    (*(v5 + 32))(v0[8], v0[11], v4);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003BA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1001F1160(&qword_100AE0890);
  v4[9] = swift_task_alloc();
  v5 = sub_100799FB4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  if (qword_100AD14F0 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE0708;

  return _swift_task_switch(sub_1003BA8A8, v6, 0);
}

uint64_t sub_1003BA8A8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  sub_1003B9C20(v1);
  (*(v2 + 16))(v3, v1, v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v6 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration;
  swift_beginAccess();
  sub_1003BB30C(v3, v5 + v6);
  swift_endAccess();
  v7 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_onChangeBlocks;
  swift_beginAccess();
  v8 = *(v5 + v7);
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;

  sub_1006D1688(sub_1003BB57C, v9, v8);

  (*(v2 + 8))(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1003BAC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (qword_100AD14F0 != -1)
  {
    swift_once();
  }

  v7 = qword_100AE0708;

  return _swift_task_switch(sub_1003BAD18, v7, 0);
}

uint64_t sub_1003BAD18()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_onChangeBlocks;
  swift_beginAccess();
  v6 = *(v3 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10066B668(0, v6[2] + 1, 1, v6);
    *(v3 + v5) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10066B668((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_1003BB20C;
  v10[5] = v4;
  *(v3 + v5) = v6;
  swift_endAccess();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BAE58()
{
  sub_1003BB2A4(v0 + OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration);

  return swift_deallocClassInstance();
}

uint64_t sub_1003BAF00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_1003BA4F4(a1);
}

uint64_t sub_1003BAF9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = sub_1007A2744();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = qword_100AD14F0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_100AE0708;
  v12 = sub_1003BB37C(&qword_100AE0888, _s5Books18PropertyValueActorV9ActorTypeCMa_0);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v8;
  v13[5] = a1;
  v13[6] = a2;

  sub_1003457A0(0, 0, v7, &unk_100821010, v13);
}

uint64_t sub_1003BB144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1003BAC7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003BB234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BB2A4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003BB30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BB37C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003BB3C4(void *a1)
{
  v3 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration;
  v4 = sub_100799FB4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_onChangeBlocks) = &_swiftEmptyArrayStorage;
  *(v1 + 16) = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 defaultCenter];

  v8 = sub_1007A2E44();
  [v7 addObserver:v1 selector:"onConfigurationChange:" name:v8 object:*(v1 + 16)];

  return v1;
}

uint64_t sub_1003BB4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1003BA77C(a1, v4, v5, v6);
}

uint64_t sub_1003BB5B4()
{
  v0 = sub_1007A17D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_1007A1274();
  (*(v1 + 104))(v3, enum case for DocumentPaginationDirection.rightToLeft(_:), v0);
  sub_1003BB760();
  sub_1007A2574();
  sub_1007A2574();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1007A3AB4();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

unint64_t sub_1003BB760()
{
  result = qword_100AE08F0;
  if (!qword_100AE08F0)
  {
    sub_1007A17D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE08F0);
  }

  return result;
}

uint64_t sub_1003BB7E4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 16))
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4();
  }
}

double sub_1003BB854@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD8DD8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (*(a1 + 40))
  {
    (*(v8 + 104))(v10, enum case for Font.TextStyle.body(_:), v7, v12);
    v17 = sub_10079D3A4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);

    sub_10079D434();
    sub_100007840(v6, &unk_100AD1FC0);
    (*(v8 + 8))(v10, v7);
    v18 = sub_10079D384();

    v26 = v16;
    v27 = v15;
    v28 = v18;
    v29 = 1;
    sub_100324680();
  }

  else
  {

    sub_10079DFA4();
    v19 = enum case for Image.TemplateRenderingMode.template(_:);
    v20 = sub_10079DF74();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v14, v19, v20);
    (*(v21 + 56))(v14, 0, 1, v20);
    v22 = sub_10079DF44();

    sub_100007840(v14, &qword_100AD8DD8);
    v26 = v22;
    sub_100324680();
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  sub_10079CCA4();
  result = *&v30;
  v24 = v31;
  v25 = v32;
  *a2 = v30;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  return result;
}

uint64_t sub_1003BBBC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  v21 = *v1;
  v22 = v3;
  v4 = v1[3];
  v23 = v1[2];
  v24 = v4;
  v6 = *(&v21 + 1);
  v5 = v22;
  v7 = sub_10079CFE4();
  v25 = *(&v24 + 1);
  *a1 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730);
  swift_storeEnumTagMultiPayload();
  v8 = sub_1001F1160(&qword_100AE08F8);
  v9 = (a1 + v8[9]);
  sub_1003BBD30(&v25, &v18);
  type metadata accessor for ChromeStyle();
  sub_1002B3600();
  *v9 = sub_10079C484();
  v9[1] = v10;
  v11 = a1 + v8[10];
  sub_1003BB854(&v21, &v18);
  v17 = v18;
  v12 = v19;
  v13 = v20;
  v14 = v24;
  KeyPath = swift_getKeyPath();
  *v11 = v17;
  *(v11 + 2) = v12;
  v11[24] = v13;
  *(v11 + 4) = KeyPath;
  *(v11 + 5) = v14;
  *(a1 + v8[11]) = v6;
  *(a1 + v8[12]) = v5;
  *(a1 + v8[13]) = v7 & 1;
  *(a1 + v8[14]) = 0;
  *(a1 + v8[15]) = v25;
}

uint64_t sub_1003BBD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003BBDA0()
{
  result = qword_100AE0908;
  if (!qword_100AE0908)
  {
    sub_1001F1234(&qword_100AE08F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0908);
  }

  return result;
}

void *sub_1003BBE04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1003BD10C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_1007A3784();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1003BD10C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for ContextAssetInfo();
        v16 = sub_1003BF7D4();
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_1001FF7E0(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1003BD10C((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for ContextAssetInfo();
        v16 = sub_1003BF7D4();
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_1001FF7E0(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1003BBFB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1003BD488(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007A3784();
        sub_1003AA874();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BD488((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1003AA874();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1003BD488((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000076D4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1003BC194(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_1003BD488(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007A3784();
        sub_1007A1614();
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BD488((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      sub_1007A1614();
      do
      {

        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1003BD488((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000076D4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003BC374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1003BD488(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1003BD488((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000076D4(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1003BC474(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_1003BD488(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007A3784();
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BD488((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1003BD488((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000076D4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003BC650(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1003BD540(0, v2, 0);
    v5 = a1 + 32;
    do
    {

      sub_1001F1160(a2);
      sub_1001F1160(&unk_100AEF1B0);
      swift_dynamicCast();
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_1003BD540((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      _swiftEmptyArrayStorage[v7 + 4] = v9;
      v5 += 8;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003BC778(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_1001F1160(&qword_100AD5A50);
    v1 = sub_1007A38C4();
  }

  else
  {
    v1 = a1;

    sub_1007A3AD4();
  }

  return v1;
}

uint64_t sub_1003BC894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1003BC92C, v7, v6);
}

uint64_t sub_1003BC92C()
{

  sub_100797864();
  sub_100797884();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BC9BC()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC5Books23BKSharedWithYouProvider_sharedWithYouController);
  sub_1007A26F4();
  v0[4] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1003BCA64, v2, v1);
}

uint64_t sub_1003BCA64()
{

  sub_100797884();
  v1 = *(v0 + 8);

  return v1();
}

void BKSharedWithYouProvider.update(_:)()
{
  v1 = v0;
  v50 = sub_1007969B4();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100797824();
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v46 = v0;
      v61 = _swiftEmptyArrayStorage;
      v6 = v4;
      sub_1003BD580(0, v5, 0);
      v7 = v61;
      v8 = sub_1001F1160(&unk_100ADACE0);
      v47 = (v2 + 8);
      v48 = v8;
      v45 = v6;
      v9 = (v6 + 48);
      while (1)
      {
        v51 = v7;
        v52 = v5;
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v53 = 0x696669746E656469;
        v54 = 0xEA00000000007265;
        v55 = v10;
        v56 = v11;
        v57 = 0x656372756F736572;
        v58 = 0xEB000000004C5255;
        swift_bridgeObjectRetain_n();
        v13 = v12;
        v14 = [v13 URL];
        v15 = v49;
        sub_100796974();

        v16 = sub_100796914();
        v18 = v17;
        (*v47)(v15, v50);
        v59 = v16;
        v60 = v18;
        v19 = sub_1007A3924();

        v20 = v53;
        v21 = v54;
        v22 = v55;
        v23 = v56;

        v24 = sub_10000E53C(v20, v21);
        if (v25)
        {
          break;
        }

        *(v19 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v24;
        v26 = (v19[6] + 16 * v24);
        *v26 = v20;
        v26[1] = v21;
        v27 = (v19[7] + 16 * v24);
        *v27 = v22;
        v27[1] = v23;
        v28 = v19[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v19[2] = v30;
        v31 = v57;
        v32 = v58;
        v33 = v59;
        v34 = v60;

        v35 = sub_10000E53C(v31, v32);
        if (v36)
        {
          break;
        }

        *(v19 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
        v37 = (v19[6] + 16 * v35);
        *v37 = v31;
        v37[1] = v32;
        v38 = (v19[7] + 16 * v35);
        *v38 = v33;
        v38[1] = v34;
        v39 = v19[2];
        v29 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v19[2] = v40;

        sub_1001F1160(&unk_100AE0920);
        swift_arrayDestroy();

        v7 = v51;
        v61 = v51;
        v42 = v51[2];
        v41 = v51[3];
        if (v42 >= v41 >> 1)
        {
          sub_1003BD580((v41 > 1), v42 + 1, 1);
          v7 = v61;
        }

        v7[2] = v42 + 1;
        v7[v42 + 4] = v19;
        v9 += 3;
        v5 = v52 - 1;
        if (v52 == 1)
        {

          v1 = v46;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    else
    {

      v7 = _swiftEmptyArrayStorage;
LABEL_13:
      v43 = *(v1 + OBJC_IVAR____TtC5Books23BKSharedWithYouProvider_dynamicArray);
      sub_1003BC650(v7, &unk_100AE0B70);

      sub_1001F1160(&unk_100AEF1B0);
      isa = sub_1007A25D4().super.isa;

      [v43 updateArray:isa];
    }
  }
}

char *sub_1003BD094(char *a1, int64_t a2, char a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE0990);
  *v3 = result;
  return result;
}

char *sub_1003BD0CC(char *a1, int64_t a2, char a3)
{
  result = sub_1003BDA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD0EC(void *a1, int64_t a2, char a3)
{
  result = sub_1003BDB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD10C(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &unk_100AE0960, &unk_100821298, &qword_100AD4B48);
  *v3 = result;
  return result;
}

size_t sub_1003BD14C(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0998, &unk_1008212B8, &type metadata accessor for ScoredBook);
  *v3 = result;
  return result;
}

char *sub_1003BD190(char *a1, int64_t a2, char a3)
{
  result = sub_1003BDCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD1B0(char *a1, int64_t a2, char a3)
{
  result = sub_1003BDDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD1D0(char *a1, int64_t a2, char a3)
{
  result = sub_1003BEE00(a1, a2, a3, *v3, &unk_100AEDDC0);
  *v3 = result;
  return result;
}

char *sub_1003BD200(char *a1, int64_t a2, char a3)
{
  result = sub_1003BDF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003BD220(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0B88, &unk_100821490, &type metadata accessor for LibraryBookInfo);
  *v3 = result;
  return result;
}

size_t sub_1003BD264(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0B80, &unk_100821488, &type metadata accessor for LibraryAudiobookInfo);
  *v3 = result;
  return result;
}

size_t sub_1003BD2A8(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &unk_100AE09C0, &unk_1008212E0, &qword_100ADBE20);
  *v3 = result;
  return result;
}

size_t sub_1003BD2E8(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &unk_100AE09D0, &unk_1008212F0, &qword_100ADBE40);
  *v3 = result;
  return result;
}

size_t sub_1003BD328(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &qword_100AE0A10, &unk_100821330, &qword_100ADBE80);
  *v3 = result;
  return result;
}

char *sub_1003BD368(char *a1, int64_t a2, char a3)
{
  result = sub_1003BDFF4(a1, a2, a3, *v3, &qword_100AE0A08);
  *v3 = result;
  return result;
}

size_t sub_1003BD398(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &qword_100AE09F8, &unk_100821318, &qword_100AE0A00);
  *v3 = result;
  return result;
}

size_t sub_1003BD3D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &unk_100AE09E0, &unk_100821300, &qword_100ADBE58);
  *v3 = result;
  return result;
}

char *sub_1003BD418(char *a1, int64_t a2, char a3)
{
  result = sub_1003BDFF4(a1, a2, a3, *v3, &qword_100AE09F0);
  *v3 = result;
  return result;
}

void *sub_1003BD448(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100AE0AD0, &unk_100821400, &qword_100AE0AD8);
  *v3 = result;
  return result;
}

char *sub_1003BD488(char *a1, int64_t a2, char a3)
{
  result = sub_1003BE0E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD4A8(char *a1, int64_t a2, char a3)
{
  result = sub_1003BE1F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD4C8(void *a1, int64_t a2, char a3)
{
  result = sub_1003BE2E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD4E8(char *a1, int64_t a2, char a3)
{
  result = sub_1003BE418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD508(char *a1, int64_t a2, char a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE09A0);
  *v3 = result;
  return result;
}

void *sub_1003BD540(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100AE0A20, &unk_100821340, &unk_100AEF1B0);
  *v3 = result;
  return result;
}

void *sub_1003BD580(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100ADA238, &unk_100817F50, &unk_100AE0B70);
  *v3 = result;
  return result;
}

void *sub_1003BD5C0(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &qword_100AE0B60, &unk_100821478, &qword_100AE0B68);
  *v3 = result;
  return result;
}

void *sub_1003BD600(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &qword_100AE0B10, &unk_100821440, &qword_100AE0B18);
  *v3 = result;
  return result;
}

size_t sub_1003BD640(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &unk_100AE0AB0, &unk_1008213D0, &type metadata accessor for ScoredGenre);
  *v3 = result;
  return result;
}

void *sub_1003BD684(void *a1, int64_t a2, char a3)
{
  result = sub_1003BE524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003BD6A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A38, &unk_100821358, &type metadata accessor for ContinuousClock.Instant);
  *v3 = result;
  return result;
}

void *sub_1003BD6E8(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &qword_100AE0B50, &unk_100821468, &qword_100AE0B58);
  *v3 = result;
  return result;
}

char *sub_1003BD728(char *a1, int64_t a2, char a3)
{
  result = sub_1003BEAC4(a1, a2, a3, *v3, &qword_100AE0A88);
  *v3 = result;
  return result;
}

char *sub_1003BD760(char *a1, int64_t a2, char a3)
{
  result = sub_1003BE880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD780(void *a1, int64_t a2, char a3)
{
  result = sub_1003BE990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD7A0(char *a1, int64_t a2, char a3)
{
  result = sub_1003BEAC4(a1, a2, a3, *v3, &unk_100AE0A60);
  *v3 = result;
  return result;
}

void *sub_1003BD7D8(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &unk_100AE01A8, &unk_1008203F0, &qword_100AD6710);
  *v3 = result;
  return result;
}

char *sub_1003BD818(char *a1, int64_t a2, char a3)
{
  result = sub_1003BEBE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD838(char *a1, int64_t a2, char a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE0A80);
  *v3 = result;
  return result;
}

char *sub_1003BD870(char *a1, int64_t a2, char a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE0A78);
  *v3 = result;
  return result;
}

char *sub_1003BD8A8(char *a1, int64_t a2, char a3)
{
  result = sub_1003BEE00(a1, a2, a3, *v3, &qword_100AE0A30);
  *v3 = result;
  return result;
}

size_t sub_1003BD8D8(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A70, &unk_100821390, &type metadata accessor for SeedBook);
  *v3 = result;
  return result;
}

void *sub_1003BD91C(void *a1, int64_t a2, char a3)
{
  result = sub_1003BEF24(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD93C(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF1D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD95C(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100AE0AF8, &unk_100821428, &qword_100AE0A18);
  *v3 = result;
  return result;
}

void *sub_1003BD99C(void *a1, int64_t a2, char a3)
{
  result = sub_1003BF434(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1003BD9BC(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A50, &unk_100821370, type metadata accessor for MediaAPINextInOrderedSeriesSeedBasedRecommendationService.NextInSeriesItem);
  *v3 = result;
  return result;
}

size_t sub_1003BDA00(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0988, &unk_1008212A8, &type metadata accessor for UserFeature);
  *v3 = result;
  return result;
}

size_t sub_1003BDA44(size_t a1, int64_t a2, char a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A48, &unk_100821368, &type metadata accessor for SelectionInfo);
  *v3 = result;
  return result;
}

char *sub_1003BDA88(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&unk_100AE0B30);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_1003BDB94(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AD5A68);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&unk_100AD5A70);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003BDCDC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0AA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1003BDDE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0AA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1003BDF00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0A98);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1003BDFF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_1001F1160(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1003BE0E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AD7FB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1003BE1F0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0AE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_1003BE2E4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&unk_100AE0970);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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
    sub_1001F1160(&qword_100AD4F30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003BE418(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE09A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

void *sub_1003BE524(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE09B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE09B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1003BE698(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001F1160(a5);
  v14 = *(sub_1001F1160(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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
  v19 = *(sub_1001F1160(a7) - 8);
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

char *sub_1003BE880(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0A40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 40 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_1003BE990(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE0B40);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE0B48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1003BEAC4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_1001F1160(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 72);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[72 * v9])
    {
      memmove(v13, v14, 72 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1003BEBE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F1160(&qword_100AE0A90);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
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

char *sub_1003BECF4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_1001F1160(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 5);
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[32 * v9])
    {
      memmove(v14, v15, 32 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1003BEE00(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
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
    sub_1001F1160(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size_0(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 3);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[8 * v9])
    {
      memmove(v14, v15, 8 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 8 * v9);
  }

  return v11;
}

void *sub_1003BEF24(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE0AE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&qword_100AE0AF0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003BF090(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_1001F1160(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
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
    sub_1001F1160(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1003BF1D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&qword_100AE0A28);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for MCatalogRequestRelationship(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1003BF300(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    sub_1001F1160(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size_0(v14);
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
    sub_1001F1160(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1003BF434(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001F1160(&unk_100AE0B00);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001F1160(&unk_100AF1C60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1003BF5D4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  sub_1001F1160(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size_0(v17);
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