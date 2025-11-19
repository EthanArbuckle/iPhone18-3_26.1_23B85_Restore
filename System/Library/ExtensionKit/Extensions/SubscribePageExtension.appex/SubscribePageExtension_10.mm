Swift::Int sub_100121228()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100754834();
  sub_100754844(v1);
  sub_100754844(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_100754864(*&v4);
  return sub_100754884();
}

void sub_1001212A8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_100754844(*v0);
  sub_100754844(v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_100754864(*&v3);
}

Swift::Int sub_100121304()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_100754834();
  sub_100754844(v1);
  sub_100754844(v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  sub_100754864(*&v4);
  return sub_100754884();
}

uint64_t sub_1001213B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36[-1] - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  if ((v36[0] & 1) == 0)
  {
    sub_100747B84();
    sub_10074F594();
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    if (v14 <= 1.0)
    {
      return sub_1006AFCA4(a1);
    }

    sub_100121DA0(v36);
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
      if (*(v23 + 16) && (v24 = sub_1004125A4(v21, v20, v22), (v25 & 1) != 0))
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
    if (*(v26 + 16) && (v27 = sub_1004125A4(v15, v16, v17), (v28 & 1) != 0))
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
      v19 = sub_1006AFCA4(a1);
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

        v32 = sub_10011D030(v30, v31);

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
        sub_10067365C(v19, v15, v16, isUniquelyReferenced_nonNull_native, v17);
        *(v2 + 16) = v35;
        swift_endAccess();
        return v19;
      }

LABEL_30:
      v19 = sub_1006ADB54(v19);
      goto LABEL_31;
    }

LABEL_20:

    if (v30)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return sub_1006AFEB4(a1);
}

uint64_t sub_1001217C4()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100746954();
  sub_100746884();
  v5 = sub_1001213B0(v3);
  v6 = sub_1001219FC(v5);

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

uint64_t sub_1001218EC()
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

unint64_t sub_1001219A8()
{
  result = qword_100929408;
  if (!qword_100929408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100929408);
  }

  return result;
}

uint64_t sub_1001219FC(uint64_t result)
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

          sub_10000C518(&qword_100929410);
          v16 = swift_allocObject();
          v17 = 2 * j__malloc_size(v16) - 64;
          *(v16 + 2) = v15;
          *(v16 + 3) = v17;
          v18 = v16 + 32;
          v19 = *(v5 + 3) >> 1;
          if (*(v5 + 2))
          {
            v20 = v5 + 32;
            if (v16 != v5 || v18 >= &v20[v19])
            {
              v21 = v17;
              memmove(v16 + 32, v20, v19);
              v17 = v21;
            }

            *(v5 + 2) = 0;
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
        *v6++ = v12;
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

uint64_t sub_100121BE8(uint64_t result)
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
      result = sub_10000C5B4(v5, v21 + 8);
      v23 = v21[0];
      v24 = v21[1];
      v25 = v22;
      if (!v4)
      {
        v7 = v2[3];
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

        sub_10000C518(&qword_100929418);
        v10 = swift_allocObject();
        v11 = (j__malloc_size(v10) - 32) / 40;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[5 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 40 * v13);
          }

          v2[2] = 0;
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
      v6[4] = v25;
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
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v15 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (!v15)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100121DA0@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v1 - 8);
  v37 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v29 - v4;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092E450);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v34 = sub_100747BF4();
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v30 = *(v10 + 8);
  v30(v14, v9);
  v32 = *(v38 + 16);

  sub_100747B84();
  sub_10074F5C4();
  v16 = v15;
  v17 = *(v6 + 8);
  v31 = v5;
  v29 = v17;
  v17(v8, v5);
  v18 = v36;
  v19 = v37;
  sub_100747BB4();
  sub_100122174(v19);
  v20 = (*(v10 + 48))(v18, 1, v9);
  if (v20 == 1)
  {
    result = sub_100122174(v18);
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
  result = sub_100747BF4();
  v22 = result - 1;
  if (!__OFSUB__(result, 1))
  {
    swift_getKeyPath();
    v25 = v33;
    sub_1007525B4();

    v23 = *(v38 + 16);

    sub_100747B84();
    sub_10074F5C4();
    v24 = v26;
    v29(v8, v31);
    result = (v30)(v25, v9);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_100122174(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10093D6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001221DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v54 = a2;
  v4 = sub_10000C518(&unk_100929420);
  __chkstk_darwin(v4 - 8);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v52 - v8;
  v10 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v10 - 8);
  v12 = v52 - v11;
  v13 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v13 - 8);
  v15 = v52 - v14;
  v16 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v16 - 8);
  v18 = v52 - v17;
  v19 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v19 - 8);
  v21 = v52 - v20;
  v22 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v22 - 8);
  v24 = v52 - v23;
  sub_10074EFD4();
  sub_100122AD4();
  result = sub_1007468B4();
  v26 = v55[0];
  if (v55[0])
  {
    v53 = v6;
    v27 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView];
    v28 = sub_10000C518(&unk_10092EEA0);
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    v29 = sub_100742E24();
    (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
    v30 = sub_100745E94();
    (*(*(v30 - 8) + 56))(v18, 1, 1, v30);
    v31 = sub_10000C518(&unk_100925560);
    (*(*(v31 - 8) + 56))(v15, 1, 1, v31);
    v32 = sub_10074F8B4();
    (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
    sub_100656038(v26, v27, v24, v54, 0, 0, v21, v18, v12, v15);
    sub_10000C8CC(v12, &unk_100925520);
    v27[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v27 setNeedsLayout];
    sub_10000C8CC(v15, &unk_100925990);
    sub_10000C8CC(v18, &unk_1009259A0);
    sub_10000C8CC(v21, &unk_100925530);
    sub_10000C8CC(v24, &unk_100925540);
    v33 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel;
    v34 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    v35 = sub_10074EEA4();
    if (!v35)
    {
      sub_10000D198();
      v35 = sub_100753DF4();
    }

    v36 = v35;
    [v34 setTextColor:v35];

    v37 = [*&v27[v33] layer];
    sub_10074EEB4();
    v38 = sub_1007497F4();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    if (v40(v9, 1, v38) == 1)
    {
      sub_10000C8CC(v9, &unk_100929420);
    }

    else
    {
      sub_1007497E4();
      (*(v39 + 8))(v9, v38);
      v41 = v56;
      if (v56)
      {
        v42 = sub_10000C888(v55, v56);
        v52[1] = v52;
        v43 = *(v41 - 8);
        v54 = v3;
        v44 = v43;
        v45 = __chkstk_darwin(v42);
        v47 = v52 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v44 + 16))(v47, v45);
        v48 = sub_100754734();
        (*(v44 + 8))(v47, v41);
        v3 = v54;
        sub_10000C620(v55);
LABEL_9:
        [v37 setCompositingFilter:v48];

        swift_unknownObjectRelease();
        v49 = [v27 layer];
        v50 = v53;
        sub_10074EEB4();
        v51 = v40(v50, 1, v38) == 1;
        sub_10000C8CC(v50, &unk_100929420);
        [v49 setAllowsGroupBlending:v51];

        [v3 setNeedsLayout];
      }
    }

    v48 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_100122934@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100122990(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

void sub_100122A58()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_100743384(v4, v2);
}

unint64_t sub_100122AD4()
{
  result = qword_1009340B0;
  if (!qword_1009340B0)
  {
    sub_10074EFD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009340B0);
  }

  return result;
}

uint64_t sub_100122B2C()
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_100982098);
  qword_10097DC28 = v0;
  unk_10097DC30 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_10097DC10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100122BE8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
  v13 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v25.receiver = v4;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView]];

  v20 = [v18 contentView];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView;
  [v20 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView]];

  v22 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  [*&v18[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] addTarget:v18 action:"handleTapWithGestureRecognizer:"];
  v23 = *&v18[v22];
  [v23 setDelegate:v18];

  [*&v18[v21] addGestureRecognizer:*&v18[v22]];
  return v18;
}

id sub_100122E40()
{
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100122F6C()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  v26.receiver = v0;
  v26.super_class = v5;
  objc_msgSendSuper2(&v26, "layoutSubviews");
  v6 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView];
  sub_10017CB48();
  sub_100753B24();
  [v15 setFrame:?];
  if (qword_1009202F0 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10097DC10, qword_10097DC28);
  v16 = [v1 traitCollection];
  sub_100750574();
  v18 = v17;

  v27.origin.x = v8;
  v27.origin.y = v10;
  v27.size.width = v12;
  v27.size.height = v14;
  CGRectGetMinX(v27);
  [v15 frame];
  MaxY = CGRectGetMaxY(v28);
  v29.origin.x = v8;
  v29.origin.y = v10;
  v29.size.width = v12;
  v29.size.height = v14;
  Width = CGRectGetWidth(v29);
  v30.origin.x = v8;
  v30.origin.y = v10;
  v30.size.width = v12;
  v30.size.height = v14;
  v21 = CGRectGetMaxY(v30);
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView];
  if (qword_100920180 != -1)
  {
    v25 = v21;
    swift_once();
    v21 = v25;
  }

  sub_1006D51C0(&unk_10097D3C0, v22, Width, v21 - (v18 + MaxY));
  v23 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView];
  sub_10018DF10(v4);
  sub_1006D38E4(v23, v4);
  sub_10001BB14(v4);
  [v1 bounds];
  sub_100753B24();
  return [v22 setFrame:?];
}

void sub_100123398(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100123C3C(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView];
    sub_100009D34();
    v8 = v7;
    v9 = sub_100753FC4();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_100123538(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100017898;
}

id sub_1001235AC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_10017D15C();
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView];
  sub_1000CC798();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView;
  sub_10018EEAC();
  v3 = &v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t (*sub_100123748(uint64_t **a1))()
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
  v2[4] = sub_100123538(v2);
  return sub_1000181A8;
}

double sub_100123840()
{
  [*(*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  sub_1007477B4();
  CGRectGetHeight(v3);
  sub_1007477B4();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1001238CC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  sub_1007477B4();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_10012395C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1001239B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100123A1C(uint64_t *a1))()
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

uint64_t sub_100123AB8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_mediaContentView);
  sub_100009D34();
  v6 = v5;
  v7 = sub_100753FC4();

  return v7 & 1;
}

uint64_t sub_100123C3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100123C84()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100123D80(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension12AppEventView_appEventCardView] + OBJC_IVAR____TtC22SubscribePageExtension16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC22SubscribePageExtension38AppEventSearchResultCollectionViewCell_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

void sub_10012406C(void *a1)
{
  v2 = v1;
  v38 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      x = v46.origin.x;
      y = v46.origin.y;
      width = v46.size.width;
      height = v46.size.height;
      v12 = CGRectGetWidth(v46) * 0.2;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v13 = CGRectGetHeight(v47) * 0.2;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v49 = CGRectInset(v48, v12, v13);
      v14 = &v2[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionPresentAnimation_originRect];
      if (v2[OBJC_IVAR____TtC22SubscribePageExtension31TodayTransitionPresentAnimation_originRect + 32])
      {
        v15 = v49.origin.x;
        v16 = v49.origin.y;
        v17 = v49.size.width;
        v18 = v49.size.height;
      }

      else
      {
        v17 = v14[2];
        v18 = v14[3];
        v15 = *v14;
        v16 = v14[1];
      }

      [v38 addSubview:v7];
      [v7 setFrame:{v15, v16, v17, v18}];
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      *(v20 + 16) = v7;
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1000F1DFC;
      *(v21 + 24) = v20;
      v43 = sub_100045E0C;
      v44 = v21;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_10011B528;
      v42 = &unk_1008688F8;
      v22 = _Block_copy(&aBlock);
      v23 = v7;

      [v19 performWithoutAnimation:v22];
      _Block_release(v22);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else
      {
        v25 = [swift_unknownObjectRetain() containerView];
        v26 = [v25 traitCollection];

        LOBYTE(v25) = sub_1007537D4();
        swift_unknownObjectRelease();
        if (v25)
        {
          v27 = 0.62;
        }

        else
        {
          v27 = 0.61;
        }

        v28 = [a1 containerView];
        v29 = [v28 traitCollection];

        LOBYTE(v28) = sub_1007537D4();
        if (v28)
        {
          v30 = 0.8;
        }

        else
        {
          v30 = 0.84;
        }

        v31 = swift_allocObject();
        *(v31 + 2) = v2;
        *(v31 + 3) = v23;
        v31[4] = x;
        v31[5] = y;
        v31[6] = width;
        v31[7] = height;
        v43 = sub_100124B30;
        v44 = v31;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_1000CF7B0;
        v42 = &unk_100868948;
        v32 = _Block_copy(&aBlock);
        v33 = v23;
        v34 = v2;

        v35 = swift_allocObject();
        *(v35 + 16) = a1;
        *(v35 + 24) = v34;
        v43 = sub_100124C08;
        v44 = v35;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_100144DD8;
        v42 = &unk_100868998;
        v36 = _Block_copy(&aBlock);
        swift_unknownObjectRetain();
        v37 = v34;

        [v19 animateWithDuration:129 delay:v32 usingSpringWithDamping:v36 initialSpringVelocity:v27 options:0.0 animations:v30 completion:1.0];

        _Block_release(v36);
        _Block_release(v32);
      }

      return;
    }
  }
}

void sub_1001245B8(void *a1)
{
  v2 = v1;
  v30 = [a1 containerView];
  v4 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v4)
  {
    v5 = v4;
    v6 = [a1 viewForKey:UITransitionContextToViewKey];
    if (v6)
    {
      v7 = v6;
      [a1 finalFrameForViewController:v5];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [v30 addSubview:v7];
      [v7 setFrame:{v9, v11, v13, v15}];
      [v7 layoutIfNeeded];
      [v7 setAlpha:0.0];
      v16 = [swift_unknownObjectRetain() containerView];
      v17 = [v16 traitCollection];

      LOBYTE(v16) = sub_1007537D4();
      swift_unknownObjectRelease();
      if (v16)
      {
        v18 = 0.62;
      }

      else
      {
        v18 = 0.61;
      }

      v19 = [a1 containerView];
      v20 = [v19 traitCollection];

      LOBYTE(v19) = sub_1007537D4();
      if (v19)
      {
        v21 = 0.8;
      }

      else
      {
        v21 = 0.84;
      }

      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v2;
      *(v23 + 24) = v7;
      v35 = sub_100124A40;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1000CF7B0;
      v34 = &unk_100868830;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v7;

      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = v25;
      v35 = sub_100124AA4;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_100144DD8;
      v34 = &unk_100868880;
      v28 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      v29 = v25;

      [v22 animateWithDuration:129 delay:v24 usingSpringWithDamping:v28 initialSpringVelocity:v18 options:0.0 animations:v21 completion:1.0];

      _Block_release(v28);
      _Block_release(v24);
      return;
    }
  }
}

id sub_1001249A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitionPresentAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100124A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100124A40()
{
  v1 = *(v0 + 24);
  sub_100524128(1);

  return [v1 setAlpha:1.0];
}

uint64_t sub_100124A8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100124AA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100124AF0()
{

  return _swift_deallocObject(v0, 64, 7);
}

id sub_100124B30()
{
  v1 = *(v0 + 3);
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  sub_100524128(1);

  return [v1 setFrame:{v2, v3, v4, v5}];
}

uint64_t sub_100124BA4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100124C0C()
{
  v7 = sub_100753764();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100753724();
  __chkstk_darwin(v3);
  v4 = sub_100752224();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_1000A7FA0();
  sub_100752214();
  v8 = _swiftEmptyArrayStorage;
  sub_1000D835C(&qword_100927678, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000C518(&qword_100927680);
  sub_1000D83A4(&qword_100927688, &qword_100927680);
  sub_1007543A4();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_100753794();
  qword_1009294C8 = result;
  return result;
}

uint64_t sub_100124E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v17[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v17];

  if (a4)
  {
    v11 = v17[0];
  }

  else
  {
    v12 = v17[0];
    sub_100741134();

    swift_willThrow();
    if (qword_100921ED0 != -1)
    {
      swift_once();
    }

    v13 = sub_100752E44();
    sub_10000D0FC(v13, qword_1009832E8);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    swift_getErrorValue();
    v17[3] = v16;
    v14 = sub_10000D134(v17);
    (*(*(v16 - 1) + 16))(v14);
    sub_100752444();
    sub_1000277BC(v17);
    sub_100752D04();
  }

  return sub_100125404(a1, a2, &unk_1008689D0, sub_100125A74, &unk_1008689E8);
}

uint64_t sub_100125114(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      sub_100741134();

      swift_willThrow();
      if (qword_100921ED0 != -1)
      {
        swift_once();
      }

      v11 = sub_100752E44();
      sub_10000D0FC(v11, qword_1009832E8);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_1007523A4();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_10000D134(v15);
      (*(*(v14 - 1) + 16))(v12);
      sub_100752444();
      sub_1000277BC(v15);
      sub_100752D04();
    }
  }

  return sub_100125404(a1, a2, &unk_100868A70, sub_100125A30, &unk_100868A88);
}

uint64_t sub_100125404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = sub_1007521E4();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100752224();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A7FA0();
  v14 = sub_100753774();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_10001B5AC(a1);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000D835C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

uint64_t sub_1001256D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001256F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007521E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100752224();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009202F8 != -1)
  {
    swift_once();
  }

  v14[1] = qword_1009294C8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1001259E8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100868A38;
  v12 = _Block_copy(aBlock);
  sub_10001B5AC(a1);
  sub_100752204();
  v16 = _swiftEmptyArrayStorage;
  sub_1000D835C(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);
}

uint64_t sub_1001259F0()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100125A34()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_100125A80()
{
  v1 = v0;
  v2 = sub_1007506E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1007506B4();
  sub_1007506C4();
  sub_10000C824(v1 + 88, v7);
  v8[3] = sub_1007511A4();
  v8[4] = &protocol witness table for Margins;
  sub_10000D134(v8);
  sub_100751184();
  sub_1007506C4();
  sub_10000C620(v8);
  sub_100751244();
  return (*(v3 + 8))(v5, v2);
}

char *sub_100125C54(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_todayCard] = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView;
  *&v5[v11] = [objc_allocWithZone(type metadata accessor for HeaderView()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer;
  type metadata accessor for TodayListCardLockupContainer();
  *&v5[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView] = 0;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_cardStyle;
  v14 = sub_10074FB54();
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton] = 0;
  v43[0] = sub_100046F68;
  v43[1] = 0;
  v43[2] = sub_100668580;
  v43[3] = 0;
  v43[4] = sub_10066873C;
  v43[5] = 0;
  v43[6] = sub_100668768;
  v43[7] = 0;
  v43[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v43[9] = 0;
  v43[10] = sub_1006685AC;
  v43[11] = 0;
  v44 = 0x4000000000000000uLL;
  *v45 = 0;
  *&v45[8] = 0x4018000000000000;
  *&v45[16] = 0;
  v45[24] = 1;
  v15 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView] = sub_100678FB8(v43, &v44);
  v42.receiver = v5;
  v42.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 layer];
  [v17 setAllowsGroupBlending:0];

  v18 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v20 = v16[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v21 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer];

  v22 = v21[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded];
  v21[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] = v20;
  if (v20 != v22)
  {
    [v21 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView;
  if (*(*(*&v16[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) == 1)
  {
    if (v16[v19])
    {
      v24 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v24 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v25 = v16[*v24] == 4;
  }

  else
  {
    v25 = 0;
  }

  [*&v16[v18] setHidden:v25];
  v26 = [*&v16[v18] layer];
  [v26 setZPosition:0.0];

  v27 = v16;
  v28 = [v27 contentView];
  [v28 addSubview:*&v16[v18]];

  v29 = [v27 backgroundView];
  if (v29)
  {
    v30 = v29;
    sub_100016C60(0, &qword_100923500);
    v31 = sub_100753E64();
    [v30 setBackgroundColor:v31];
  }

  sub_1001261C0();
  v32 = [v27 contentView];
  [v32 addSubview:*&v16[v23]];

  v33 = [v27 contentView];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView;
  [v33 addSubview:*&v27[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView]];

  v35 = *&v27[v34];
  sub_1001263EC();
  v36 = &v35[qword_1009441B0];
  *(v36 + 25) = *&v45[9];
  v37 = *v45;
  *v36 = v44;
  *(v36 + 1) = v37;
  [v35 setNeedsLayout];

  v38 = [v27 contentView];
  [v38 setClipsToBounds:1];

  sub_1001264B0();
  sub_10000C518(&unk_1009249D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007A5A00;
  *(v39 + 32) = sub_1007519E4();
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v41[3] = ObjectType;
  v41[0] = v27;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v41);
  return v27;
}

uint64_t sub_1001261C0()
{
  v1 = sub_100743584();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v7 = 0;
  }

  else
  {
    v8 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
    if (*(*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) == 1 && v8 == 4)
    {
      v7 = -1;
    }

    else if (v8 == 6)
    {
      v10 = [v0 traitCollection];
      v11 = sub_1007537F4();

      if (v11)
      {
        v7 = 10;
      }

      else
      {
        v7 = 5;
      }

      v6 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView;
    }

    else
    {
      v7 = 3;
    }
  }

  v12 = *&v0[v6];
  (*(v2 + 104))(v5, enum case for CornerStyle.continuous(_:), v1, v3);
  sub_10072118C(v5, 20.0);
  if ((v7 & 0xC) != 0)
  {
    [v12 _setContinuousCornerRadius:20.0];
  }

  v13 = [v12 layer];
  [v13 setMaskedCorners:sub_1007535E4()];

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_1001263EC()
{
  if (*(*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) == 1)
  {
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (v0[*v1] == 6)
    {
      v2 = 1;
    }

    else
    {
      v3 = [v0 traitCollection];
      v4 = sub_100753804();

      v2 = v4 ^ 1;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id sub_1001264B0()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100923E58);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10074FB54();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v15 = sub_1001263EC();
  v28 = v14;
  [v14 setHidden:(v15 & 1) == 0];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_100016B4C(&v1[v16], v4, &qword_100923E58);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000C8CC(v4, &qword_100923E58);
  }

  else
  {
    (*(v6 + 32))(v13, v4, v5);
    if ((sub_1001263EC() & 1) != 0 && v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark] == 1)
    {
      (*(v6 + 104))(v10, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v10, v13, v5);
    }

    v17 = v27;
    v18 = sub_1001263EC();
    sub_10067859C(v10, v18 & 1);
    if ((sub_1001263EC() & 1) != 0 && (v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark] & 1) != 0 || (*(*&v28[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) & 1) == 0 && (!v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? (v19 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v19 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory), v1[*v19] == 6))
    {
      (*(v6 + 104))(v17, enum case for TodayCard.Style.dark(_:), v5);
    }

    else
    {
      (*(v6 + 16))(v17, v13, v5);
    }

    v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (v20)
    {
      v21 = v20;
      if (sub_1001263EC())
      {
        v22 = 1;
      }

      else if (*(*&v28[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia))
      {
        v22 = 0;
      }

      else
      {
        if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
        {
          v23 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
        }

        else
        {
          v23 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
        }

        v22 = v1[*v23] == 6;
      }

      sub_10067859C(v17, v22);
    }

    v24 = *(v6 + 8);
    v24(v17, v5);
    v24(v10, v5);
    v24(v13, v5);
  }

  sub_1001261C0();
  return [v1 setNeedsLayout];
}

void sub_100126930(char a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
  if (v4)
  {
    v5 = v4;
    sub_10074F9D4();
  }

  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v6)
  {
    v7 = v6[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
    v6[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = a1 & 1;
    if (v7 != (a1 & 1))
    {
      v8 = v6;
      sub_10015A054();
    }
  }
}

void sub_1001269F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
  if (v1)
  {
    v2 = v1;
    sub_10074F9D4();
  }

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isMotionEnabled);
    v5 = v3[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating];
    v3[OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_isAnimating] = v4;
    if (v4 != v5)
    {
      v6 = v3;
      sub_10015A054();
    }
  }
}

uint64_t sub_100126AD8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100926C40);
}

void sub_100126B44(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v6, &unk_100926C40);
  swift_endAccess();
  v7 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  sub_100016B4C(v1 + v6, v5, &unk_100926C40);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v9 = v7;
  sub_10006644C(v5, v7 + v8, &unk_100926C40);
  swift_endAccess();
}

void sub_100126C80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView] + qword_100944200) = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning];
  sub_100679F5C();
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v3)
  {
    *(v3 + qword_100944200) = v1[v2];
    sub_100679F5C();
  }

  v4 = *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  v5 = v1[v2];
  v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isTransitioning] = v5;
  *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView] + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *((swift_isaMask & *Strong) + 0xC8);
    v8 = Strong;
    v9 = v4;
    v7(v5);
  }

  v10 = [v1 contentView];
  [v10 setClipsToBounds:(v1[v2] & 1) == 0];
}

uint64_t sub_100126E1C()
{
  if (*(*(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) != 1)
  {
    return 1;
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v1] == 6)
  {
    return 0;
  }

  v3 = [v0 traitCollection];
  v4 = sub_100753804();

  return v4 & 1;
}

void sub_100126F70(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setDragging:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  *(v4 + OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isDragging) = objc_msgSendSuper2(&v8, "isDragging");
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v5)
  {
    v7.receiver = v1;
    v7.super_class = ObjectType;
    v6 = v5;
    v6[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isDragging] = objc_msgSendSuper2(&v7, "isDragging");
  }
}

uint64_t sub_1001270CC(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100743584();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_setContinuousCornerRadius:", a1);
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "_continuousCornerRadius");
  v10 = v9;
  (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
  sub_10072118C(v7, v10);
  v11 = [v8 layer];
  [v11 setMaskedCorners:sub_1007535E4()];

  return (*(v5 + 8))(v7, v4);
}

void *sub_100127264()
{
  result = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_10012729C(char a1)
{
  if (a1)
  {

    sub_10012731C();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_10012731C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1006FF0CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

uint64_t sub_100127424(void *a1)
{
  if (a1)
  {
    v3 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
    v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView];
    v5 = v3;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      sub_100016C60(0, &qword_100922300);
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

void (*sub_100127534(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001275B4;
}

void sub_1001275B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v8 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3;
    v6 = v8;
    sub_10020ED5C(Strong);

    Strong = v5;
  }

  else
  {
    v7 = v8;
    sub_10020ED5C(Strong);
  }
}

uint64_t sub_100127684()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1007507B4();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007506E4();
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v56 - v9;
  v11 = sub_10074F704();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_100016B4C(&v1[v16], v10, &unk_100926C40);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v10, v11);
    if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v18 = v1[*v17];
    switch(v18)
    {
      case 7:
        sub_100128C28(v15, v63);
        v34 = [v1 contentView];
        [v34 bounds];

        v35 = [v1 traitCollection];
        v36 = v58;
        sub_100409928(v35);
        v37 = v60;
        sub_100751244();

        (*(v59 + 8))(v36, v37);
        sub_100135FE4(v63);
        (*(v12 + 8))(v15, v11);
        goto LABEL_17;
      case 6:
        sub_100128794(v15, v62);
        if (v62[13])
        {
          memcpy(v63, v62, sizeof(v63));
          v24 = [v1 contentView];
          [v24 bounds];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;

          v33 = [v1 traitCollection];
          sub_10044A380(v33, v26, v28, v30, v32);

          sub_100136038(v63);
LABEL_16:
          (*(v12 + 8))(v15, v11);
          goto LABEL_17;
        }

        sub_10000C8CC(v62, &qword_100929610);
        sub_100128C28(v15, v63);
        v42 = [v1 contentView];
        [v42 bounds];

        v43 = [v1 traitCollection];
        v44 = v58;
        sub_100409928(v43);
        v45 = v60;
        sub_100751244();

        (*(v59 + 8))(v44, v45);
        break;
      case 4:
        sub_1001280C8(v15, v63);
        v19 = [v1 contentView];
        [v19 bounds];

        v20 = v15;
        v21 = v11;
        v22 = [v1 traitCollection];
        sub_1007506B4();
        sub_1007506C4();
        sub_10000C824(&v63[11], &v61);
        v62[3] = sub_1007511A4();
        v62[4] = &protocol witness table for Margins;
        sub_10000D134(v62);
        sub_100751184();
        sub_1007506C4();
        sub_10000C620(v62);
        v23 = v57;
        sub_100751244();

        (*(v56 + 8))(v7, v23);
        sub_10013608C(v63);
        (*(v12 + 8))(v20, v21);
        goto LABEL_17;
      default:
        sub_100128C28(v15, v63);
        v38 = [v1 contentView];
        [v38 bounds];

        v39 = [v1 traitCollection];
        v40 = v58;
        sub_100409928(v39);
        v41 = v60;
        sub_100751244();

        (*(v59 + 8))(v40, v41);
        break;
    }

    sub_100135FE4(v63);
    goto LABEL_16;
  }

  sub_10000C8CC(v10, &unk_100926C40);
LABEL_17:
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4 && v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1 && v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory] == 5)
  {
    v46 = objc_opt_self();
    v47 = swift_allocObject();
    *(v47 + 16) = v1;
    v48 = swift_allocObject();
    v49 = sub_100135FB8;
    *(v48 + 16) = sub_100135FB8;
    *(v48 + 24) = v47;
    v63[4] = sub_100045E0C;
    v63[5] = v48;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 1107296256;
    v63[2] = sub_10011B528;
    v63[3] = &unk_100868F00;
    v50 = _Block_copy(v63);
    v51 = v1;

    [v46 performWithoutAnimation:v50];
    _Block_release(v50);
    LOBYTE(v46) = swift_isEscapingClosureAtFileLocation();

    if ((v46 & 1) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v52 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v52)
  {
    [v52 layoutIfNeeded];
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer] layoutIfNeeded];
  v49 = 0;
LABEL_25:
  v53 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton];
  if (v53)
  {
    v54 = v53;
    [v1 bounds];
    [v54 setFrame:{CGRectGetMaxX(v65) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  return sub_1000164A8(v49);
}

id sub_1001280C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v60 = &v57[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v59 = &v57[-v10];
  v11 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v11 - 8);
  v13 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v57[-v15];
  __chkstk_darwin(v17);
  v19 = &v57[-v18];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  v23 = a1;
  if (v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_10074F5D4();
    v25 = v24;
  }

  else
  {
    v25 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v26 = v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v27 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v27 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v58 = v3[*v27];
  v62 = v3;
  v63 = [v3 traitCollection];
  v61 = v7;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v26 == 1)
  {
    v28(v22, v23, v6);
    (*v29)(v22, 0, 1, v6);
    sub_100016B4C(v22, v19, &unk_100926C40);
    if ((*v30)(v19, 1, v6) == 1)
    {
      sub_10000C8CC(v19, &unk_100926C40);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v63;
    }

    else
    {
      v36 = v61;
      v37 = v59;
      (*(v61 + 32))(v59, v19, v6);
      sub_10074F694();
      sub_10074F694();
      v34 = v63;
      [v63 layoutDirection];
      sub_1007539B4();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    v35 = v62;
    sub_10000C8CC(v22, &unk_100926C40);
    if ((sub_1007537D4() & 1) == 0)
    {
      if (qword_100921738 != -1)
      {
        swift_once();
      }

      v41 = sub_100750B04();
      sub_10000D0FC(v41, qword_100982128);
      sub_100751034();
      sub_10000C518(&unk_1009231A0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007A5CF0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_100751044();
      sub_100750544();
      v25 = v45;
    }

    v46 = v25 + 20.0;
  }

  else
  {
    v28(v16, v23, v6);
    (*v29)(v16, 0, 1, v6);
    sub_100016B4C(v16, v13, &unk_100926C40);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10000C8CC(v13, &unk_100926C40);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;

      v35 = v62;
    }

    else
    {
      v48 = v60;
      v47 = v61;
      (*(v61 + 32))(v60, v13, v6);
      v35 = v62;
      if (v58 != 4)
      {
        sub_10074F694();
        sub_10074F694();
      }

      v49 = v63;
      [v63 layoutDirection];
      sub_1007539B4();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10000C8CC(v16, &unk_100926C40);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_1001263EC();

  v53 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 72) = type metadata accessor for HeaderView();
  *(a2 + 80) = sub_1001360E0(&qword_100929618, type metadata accessor for HeaderView);
  *(a2 + 48) = v53;
  v63 = *&v35[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 112) = type metadata accessor for TodayCardLabelsView();
  *(a2 + 120) = &protocol witness table for CustomLayoutView;
  *(a2 + 88) = v63;
  *a2 = v52 & 1;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  v54 = v53;
  v55 = v63;

  return v55;
}

uint64_t sub_100128794@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v4 && (v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView]) != 0 && *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_todayCard])
  {
    v6 = result;
    if (v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
    {

      v7 = v4;
      v8 = v5;
      sub_10074F5D4();
      v10 = v9;
    }

    else
    {
      v10 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];

      v11 = v4;
      v12 = v5;
    }

    v13 = [v3 traitCollection];
    v44 = sub_1001322D8(v6, v13, v10);
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = [v3 traitCollection];
    v21 = sub_100135990(v6, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v28 = sub_1001263EC();
    v29 = v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
    v43 = v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning];

    if (v29)
    {
      v30 = 272.0;
    }

    else
    {
      v30 = 177.0;
    }

    v68 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
    type metadata accessor for HeaderView();
    sub_100750434();
    v66 = v5;
    v31 = type metadata accessor for TodayCardLabelsView();
    sub_100750434();
    v32 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
    v63 = v31;
    v64 = &protocol witness table for CustomLayoutView;
    *&v62 = v32;
    v60 = type metadata accessor for TodayListCardLockupContainer();
    v61 = &protocol witness table for UIView;
    v33 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer];
    v58 = &protocol witness table for UIView;
    *&v59 = v4;
    v57 = v60;
    *&v56 = v33;
    v34 = OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v35 = *(*&v33[v34] + 16);
    if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView])
    {
      *&v50 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView];
      sub_100016C60(0, &qword_100922300);
      v36 = v32;
      v37 = v33;
      sub_100750434();
    }

    else
    {
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v38 = v32;
      v39 = v33;
    }

    v40 = v28 & 1;
    if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView])
    {
      *&v47 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView];
      sub_10000C518(&qword_100924E88);
      sub_100750434();
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
    }

    v41 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
    if (v41)
    {
      v46 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
      type metadata accessor for RiverTodayCardBackgroundView();
      v42 = v41;
      sub_100750434();
    }

    else
    {

      v49 = 0;
      v47 = 0u;
      v48 = 0u;
    }

    *a2 = v29;
    *(a2 + 1) = v43;
    *(a2 + 2) = v40;
    *(a2 + 3) = v46;
    *(a2 + 7) = BYTE4(v46);
    *(a2 + 8) = v44;
    *(a2 + 16) = v15;
    *(a2 + 24) = v17;
    *(a2 + 32) = v19;
    *(a2 + 40) = v21;
    *(a2 + 48) = v23;
    *(a2 + 56) = v25;
    *(a2 + 64) = v27;
    *(a2 + 72) = v30;
    sub_100012160(&v67, a2 + 80);
    sub_100012160(&v65, a2 + 120);
    sub_100012160(&v62, a2 + 160);
    sub_100012160(&v59, a2 + 200);
    result = sub_100012160(&v56, a2 + 240);
    *(a2 + 280) = v35;
    *(a2 + 288) = v53;
    *(a2 + 304) = v54;
    *(a2 + 320) = v55;
    *(a2 + 328) = v50;
    *(a2 + 344) = v51;
    *(a2 + 360) = v52;
    *(a2 + 368) = v47;
    *(a2 + 384) = v48;
    *(a2 + 400) = v49;
  }

  else
  {
    *(a2 + 400) = 0;
    *(a2 + 368) = 0u;
    *(a2 + 384) = 0u;
    *(a2 + 336) = 0u;
    *(a2 + 352) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 320) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 288) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

id sub_100128C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v65 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v64 = &v62[-v10];
  v11 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v11 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v66 = &v62[-v15];
  __chkstk_darwin(v16);
  v18 = &v62[-v17];
  __chkstk_darwin(v19);
  v21 = &v62[-v20];
  v22 = a1;
  if (v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32])
  {
    sub_10074F5D4();
    v24 = v23;
  }

  else
  {
    v24 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
  }

  v69 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v25 = v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v26 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v3[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v26 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v63 = v3[*v26];
  v27 = [v3 traitCollection];
  v67 = v7;
  v68 = v27;
  v28 = *(v7 + 16);
  v29 = (v7 + 56);
  v30 = (v7 + 48);
  if (v25 == 1)
  {
    v28(v21, v22, v6);
    (*v29)(v21, 0, 1, v6);
    sub_100016B4C(v21, v18, &unk_100926C40);
    if ((*v30)(v18, 1, v6) == 1)
    {
      sub_10000C8CC(v18, &unk_100926C40);
      left = UIEdgeInsetsZero.left;
      bottom = UIEdgeInsetsZero.bottom;
      right = UIEdgeInsetsZero.right;
      v34 = v68;
    }

    else
    {
      v36 = v67;
      v37 = v64;
      (*(v67 + 32))(v64, v18, v6);
      sub_10074F694();
      sub_10074F694();
      v34 = v68;
      [v68 layoutDirection];
      sub_1007539B4();
      left = v38;
      bottom = v39;
      right = v40;
      (*(v36 + 8))(v37, v6);
    }

    sub_10000C8CC(v21, &unk_100926C40);
    if ((sub_1007537D4() & 1) == 0)
    {
      if (qword_100921738 != -1)
      {
        swift_once();
      }

      v41 = sub_100750B04();
      sub_10000D0FC(v41, qword_100982128);
      sub_100751034();
      sub_10000C518(&unk_1009231A0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1007A5CF0;
      *(v42 + 32) = v34;
      v43 = v34;
      v44 = sub_100751044();
      sub_100750544();
      v24 = v45;
    }

    v46 = v24 + 20.0;
  }

  else
  {
    v35 = v66;
    v28(v66, v22, v6);
    (*v29)(v35, 0, 1, v6);
    sub_100016B4C(v35, v13, &unk_100926C40);
    if ((*v30)(v13, 1, v6) == 1)
    {
      sub_10000C8CC(v13, &unk_100926C40);
      left = UIEdgeInsetsZero.left;
      right = UIEdgeInsetsZero.right;
    }

    else
    {
      v47 = v67;
      v48 = v65;
      (*(v67 + 32))(v65, v13, v6);
      if (v63 != 4)
      {
        sub_10074F694();
        sub_10074F694();
      }

      v49 = v68;
      [v68 layoutDirection];
      sub_1007539B4();
      left = v50;
      right = v51;

      (*(v47 + 8))(v48, v6);
    }

    sub_10000C8CC(v35, &unk_100926C40);
    bottom = 20.0;
    v46 = 20.0;
  }

  v52 = sub_1001263EC();
  v53 = v3[v69];

  if (v53)
  {
    v54 = 272.0;
  }

  else
  {
    v54 = 177.0;
  }

  v55 = v52 & 1;
  v56 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  *(a2 + 88) = type metadata accessor for HeaderView();
  *(a2 + 96) = sub_1001360E0(&qword_100929618, type metadata accessor for HeaderView);
  *(a2 + 64) = v56;
  v57 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
  *(a2 + 128) = type metadata accessor for TodayCardLabelsView();
  *(a2 + 136) = &protocol witness table for CustomLayoutView;
  *(a2 + 104) = v57;
  v69 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  *(a2 + 168) = type metadata accessor for TodayListCardLockupContainer();
  *(a2 + 176) = &protocol witness table for UIView;
  *(a2 + 144) = v69;
  *a2 = v53;
  *(a2 + 1) = v55;
  *(a2 + 8) = v46;
  *(a2 + 16) = left;
  *(a2 + 24) = bottom;
  *(a2 + 32) = right;
  *(a2 + 40) = 0x4030000000000000;
  *(a2 + 48) = v54;
  *(a2 + 56) = 0x405B800000000000;
  v58 = v56;
  v59 = v57;
  v60 = v69;

  return v60;
}

void sub_1001293A0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_100923E58);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v21[-v5];
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  sub_10072082C();

  sub_100140EB0();
  v8 = sub_10074FB54();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_10006644C(v6, &v1[v9], &qword_100923E58);
  swift_endAccess();
  v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_1001295FC();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = sub_10074F9A4();

    swift_beginAccess();
    *(v14 + 32) = _swiftEmptyArrayStorage;

    v15 = *&v1[v11];
    if (v15)
    {
      v16 = v15;
      sub_10074FA34();
    }
  }

  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v17)
  {
    v18 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v19 = *&v17[v18];
    *&v17[v18] = _swiftEmptyArrayStorage;
    v20 = v17;
    sub_1001596B4(v19);
  }
}

void sub_1001295FC()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *(v0 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(v0 + v2) = 0;

    v17 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v18)
    {
      [v18 removeFromSuperview];
      v16 = *(v0 + v17);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v17) = 0;
  }

  else
  {
    v5 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v0 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v0 + v5) = 0;

    v8 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v0 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v0 + v8) = 0;

    v11 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *(v0 + v11);
    }

    else
    {
      v13 = 0;
    }

    *(v0 + v11) = 0;

    v14 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v15)
    {
      [v15 removeFromSuperview];
      v16 = *(v0 + v14);
    }

    else
    {
      v16 = 0;
    }

    *(v0 + v14) = 0;
  }

  v19 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_100129820()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100743584();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005F6EC0();
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_1000ED848;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_10066891C;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_1000ED848;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_1006685AC;
      v12 = sub_100668768;
      v13 = sub_10066873C;
      v14 = sub_100668580;
    }
  }

  v15 = &v7[qword_1009441F0];
  *v15 = sub_100046F68;
  v15[1] = 0;
  v15[2] = v14;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = 0;
  v15[6] = v12;
  v15[7] = 0;
  v15[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v15[9] = 0;
  v15[10] = v11;
  v15[11] = 0;

  sub_100679B2C();
  sub_1001263EC();
  v16 = &v7[qword_1009441B0];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded) = v18[v20];
  sub_10020E198();

  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] = v24;
  if (v24 != v25)
  {
    [v23 setNeedsLayout];
  }

  v26 = 20.0;
  if (v1[v8])
  {
    v26 = 0.0;
  }

  v27 = v51;
  v55.receiver = v1;
  v55.super_class = v51;
  objc_msgSendSuper2(&v55, "_setContinuousCornerRadius:", v26);
  v54.receiver = v1;
  v54.super_class = v27;
  objc_msgSendSuper2(&v54, "_continuousCornerRadius");
  v29 = v28;
  v31 = v52;
  v30 = v53;
  (*(v52 + 104))(v6, enum case for CornerStyle.continuous(_:), v53);
  sub_10072118C(v6, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:sub_1007535E4()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_1000ED848;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_10066891C;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_1000ED848;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_1006685AC;
        v41 = sub_100668768;
        v42 = sub_10066873C;
        v43 = sub_100668580;
      }
    }

    v44 = &v37[qword_1009441F0];
    *v44 = sub_100046F68;
    v44[1] = 0;
    v44[2] = v43;
    v44[3] = 0;
    v44[4] = v42;
    v44[5] = 0;
    v44[6] = v41;
    v44[7] = 0;
    v44[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v44[9] = 0;
    v44[10] = v40;
    v44[11] = 0;
    v45 = v37;

    sub_100679B2C();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_1001263EC();
      v48 = &v47[qword_1009441B0];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_100129F4C();
  sub_10012A57C();
  return [v1 setNeedsLayout];
}

void sub_100129F4C()
{
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v5) == 6)
      {
        v6 = *(v0 + v1);
      }

      else
      {
        v6 = 1;
      }

      [v4 setHidden:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v17) == 6)
      {
        v18 = *(v0 + v1);
      }

      else
      {
        v18 = 1;
      }

      [v16 setHidden:v18];
    }

    v19 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_1001263EC() & 1) == 0;

    [v19 setHidden:v20];
  }
}

void sub_10012A1C4()
{
  v1 = v0;
  v2 = sub_100746494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_100517558() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton))
  {
    sub_10031CC14();
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_10093CB70;
      v12 = *&v25[qword_10093CB70];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_1006FED78(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_100743BD4();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_100517558() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_100136178;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000CF7B0;
        aBlock[3] = &unk_100868BB8;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_10012A57C()
{
  v1 = v0;
  v2 = sub_100746494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_100517558() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_10012731C();
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_10093CB70;
      v12 = *&v25[qword_10093CB70];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_1006FED78(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_100743BD4();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_100517558() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_100132528;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000CF7B0;
        aBlock[3] = &unk_100868B68;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

id sub_10012A938(unsigned __int8 a1)
{
  v2 = v1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_1009441B8) = v2[*v6];
  sub_100679A78();
  v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_1009441B8] = v2[*v8];
    v9 = v7;
    sub_100679A78();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_100721640();

  if (v2[v5])
  {
    v13 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v13 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_10012AA94(v2[*v13], a1);

  return [v2 setNeedsLayout];
}

void sub_10012AA94(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100746264();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v53[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v53[-1] - v10;
  if (v3 == 7)
  {
    if (v4 == 7)
    {
      return;
    }
  }

  else if (v4 != 7)
  {
    switch(v3)
    {
      case 6:
        if (v4 == 6)
        {
          return;
        }

        break;
      case 5:
        if (v4 == 5)
        {
          return;
        }

        break;
      case 4:
        if (v4 == 4)
        {
          return;
        }

        break;
      default:
        if ((v4 - 7) <= 0xFFFFFFFC && v3 == v4)
        {
          return;
        }

        break;
    }
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    sub_1007461C4();
    sub_100746204();
    sub_100746244();
    v12 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
    v13 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
    v52 = v6;
    if (v13)
    {
      [v13 setHidden:0];
    }

    else
    {
      (*(v6 + 16))(v8, v11, v5);
      v14 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
      v15 = sub_100158CB4(v8);
      [v15 setClipsToBounds:1];
      [v2 bounds];
      CGRectGetWidth(v57);
      [v2 bounds];
      CGRectGetHeight(v58);
      [v15 bounds];
      [v15 setBounds:?];
      [v15 _setContinuousCornerRadius:20.0];
      v16 = [v15 layer];

      v17 = [v2 traitCollection];
      v18 = sub_1007537F4();

      if (v18)
      {
        v19 = 10;
      }

      else
      {
        v19 = 5;
      }

      [v16 setMaskedCorners:{v19, v52}];

      v20 = *&v2[v12];
      *&v2[v12] = v15;
      v21 = v15;

      v22 = [v2 contentView];
      [v22 addSubview:v21];
    }

    v23 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v24 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
      if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView])
      {
        v25 = [objc_allocWithZone(UIView) init];
        [v25 setClipsToBounds:1];
        v26 = *&v2[v23];
        *&v2[v23] = v25;
        v27 = v25;

        v28 = [v2 contentView];
        [v28 addSubview:v27];

        type metadata accessor for RiverCardDataSource();
        v29 = swift_allocObject();
        *(v29 + 32) = _swiftEmptyArrayStorage;
        *(v29 + 16) = xmmword_1007A88D0;
        *(v29 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v52 + 16))(v8, v11, v5);
        v30 = objc_allocWithZone(sub_10000C518(&qword_100924E88));

        v31 = sub_10074F994();
        [v31 setClipsToBounds:0];
        v32 = *&v2[v24];
        *&v2[v24] = v31;
        v33 = v31;

        [v27 addSubview:v33];
      }
    }

    v34 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v36 = v35;
      v37 = v2[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
      v38 = v35[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded];
      v35[OBJC_IVAR____TtC22SubscribePageExtension28TodayListCardLockupContainer_isExpanded] = v37;
      if (v37 != v38)
      {
        [v35 setNeedsLayout];
      }

      v39 = v36;
      v40 = [v39 layer];
      [v40 setZPosition:0.0];

      [v39 setClipsToBounds:1];
      v41 = *&v2[v34];
      *&v2[v34] = v39;
      v42 = v39;

      v43 = [v2 contentView];
      [v43 addSubview:v42];
    }

    v44 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v2[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v53[0] = sub_100046F68;
      v53[1] = 0;
      v53[2] = sub_10066891C;
      v53[3] = 0;
      v53[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[5] = 0;
      v53[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[7] = 0;
      v53[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[9] = 0;
      v53[10] = sub_1000ED848;
      v53[11] = 0;
      v54 = 0x4000000000000000uLL;
      *v55 = 0;
      *&v55[8] = 0x4018000000000000;
      *&v55[16] = 0;
      v55[24] = 1;
      v45 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
      v46 = sub_100678FB8(v53, &v54);
      sub_1001263EC();
      v47 = &v46[qword_1009441B0];
      *(v47 + 25) = *&v55[9];
      v48 = *v55;
      *v47 = v54;
      *(v47 + 1) = v48;
      [v46 setNeedsLayout];
      v46[qword_1009441B8] = v3;
      sub_100679A78();
      v49 = *&v2[v44];
      *&v2[v44] = v46;
      v50 = v46;

      v51 = [v2 contentView];
      [v51 addSubview:v50];
    }

    [v2 setNeedsLayout];
    (*(v52 + 8))(v11, v5);
  }

  else
  {

    sub_1001295FC();
  }
}

void sub_10012B20C()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_1001360E0(&qword_100929608, type metadata accessor for TodayListCardLockupContainer);
  sub_10074D3C4();
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    sub_10074D3C4();
  }
}

void sub_10012B33C()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100749574();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000164A8(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_1001360E0(&qword_100929608, type metadata accessor for TodayListCardLockupContainer);
  sub_10074D3B4();
  v4 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    sub_10074D3B4();
  }
}

void sub_10012B47C(unint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v151 = a4;
  v159 = a1;
  v145 = sub_1007497C4();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v152 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074FB54();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v153 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10074A2E4();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v157 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v130 - v13;
  v14 = sub_10000C518(&qword_100923E58);
  __chkstk_darwin(v14 - 8);
  v16 = &v130 - v15;
  v17 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v17 - 8);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v130 - v21;
  v23 = sub_10074F704();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v143 = a3;
  v25(v22, a3, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10006644C(v22, &v4[v26], &unk_100926C40);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  v154 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v28 = *&v154[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView];
  sub_100016B4C(&v4[v26], v19, &unk_100926C40);
  v29 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v30 = v28;
  sub_10006644C(v19, v28 + v29, &unk_100926C40);
  swift_endAccess();

  v158 = a2;
  sub_1005F3E54(a2);
  v31 = [v4 backgroundView];
  if (v31)
  {
    v32 = v31;
    v33 = sub_10074FA74();
    if (!v33)
    {
      sub_100016C60(0, &qword_100923500);
      v33 = sub_100753E64();
    }

    v34 = v33;
    [v32 setBackgroundColor:v33];
  }

  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_todayCard] = v159;

  v35 = sub_10074FB64();
  sub_100747CA4();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    *(*&v154[v27] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 0;
    sub_100129F4C();
    return;
  }

  v37 = v36;
  v141 = v35;
  sub_10074FB74();
  (*(v155 + 56))(v16, 0, 1, v156);
  v38 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_10006644C(v16, &v5[v38], &qword_100923E58);
  swift_endAccess();
  v39 = sub_100747C54();
  v40 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark;
  v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark] = v39 & 1;
  v140 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v41 = v5[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v169 = sub_10074FB64();
  sub_100745204();
  sub_10000C518(&qword_1009295D0);
  v42 = swift_dynamicCast();
  v147 = v37;
  if (v42)
  {
    v146 = v40;
    sub_100012160(&v166, &aBlock);
    sub_10000C888(&aBlock, v163);
    v43 = [v5 traitCollection];
    v44 = sub_10074B8E4();

    if (v44)
    {
      sub_10000C888(&aBlock, v163);
      v45 = sub_10074B8C4();
      if (v45)
      {
        sub_1001326F4(v44, v45, v158, v143, v151);

        if (qword_100920290 != -1)
        {
          swift_once();
        }

        v46 = qword_10097DAD0;
        v47 = *algn_10097DAD8;
        v48 = sub_100747C54();
        v49 = v148;
        sub_10074FAE4();
        v50 = sub_10074A2C4();
        (*(v149 + 8))(v49, v150);
        sub_100131E4C(v46, v47, v48 & 1, v50 & 1);

        sub_10000C620(&aBlock);
        v40 = v146;
        goto LABEL_29;
      }
    }

    sub_10000C620(&aBlock);
    v40 = v146;
  }

  else
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10000C8CC(&v166, &qword_1009295D8);
  }

  v169 = sub_10074FB64();
  if (!swift_dynamicCast())
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10000C8CC(&v166, &qword_1009295D8);
LABEL_28:
    *(*&v154[v27] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_100012160(&v166, &aBlock);
  sub_10000C888(&aBlock, v163);
  v51 = [v5 traitCollection];
  v52 = sub_10074B8F4();

  if (!v52)
  {
LABEL_27:
    sub_10000C620(&aBlock);
    goto LABEL_28;
  }

  sub_10000C888(&aBlock, v163);
  v53 = sub_10074B8C4();
  if (!v53)
  {

    goto LABEL_27;
  }

  v54 = v40;
  if (v41 == 7)
  {
    v55 = v158;
  }

  else
  {
    v55 = v41;
  }

  sub_100134474(v52, v53, v55, v143, v151);

  if (qword_100920288 != -1)
  {
    swift_once();
  }

  v56 = qword_10097DAC0;
  v57 = *algn_10097DAC8;
  v58 = sub_100747C54();
  v59 = v148;
  sub_10074FAE4();
  v60 = sub_10074A2C4();
  (*(v149 + 8))(v59, v150);
  sub_100131E4C(v56, v57, v58 & 1, v60 & 1);

  sub_10000C620(&aBlock);
  v40 = v54;
LABEL_29:
  v61 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_1001263EC() & 1) != 0 && *(v40 + v5) == 1)
  {
    (*(v155 + 104))(v153, enum case for TodayCard.Style.dark(_:), v156);
  }

  else
  {
    sub_10074FB74();
  }

  v62 = sub_10074FB94();
  v64 = v63;
  v142 = sub_10074FB84();
  v146 = v65;
  v66 = sub_10074FA54();
  v148 = v67;
  sub_10074FAC4();
  v68 = sub_100747C74();
  v154 = v69;
  sub_10074FAE4();
  v70 = v158;
  v71 = sub_10066891C;
  v133 = v68;
  v132 = v66;
  if (v158 == 6)
  {
    v134 = sub_100046F68;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = sub_1000ED848;
  }

  else if (v158 == 4)
  {
    v137 = sub_1000ED848;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v71 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v134 = sub_100046F68;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v137 = sub_1006685AC;
    v136 = sub_100668768;
    v135 = sub_10066873C;
    v71 = sub_100668580;
    v134 = sub_100046F68;
  }

  v138 = sub_1001263EC();
  v61[qword_1009441E8] = 0;
  v72 = *&v61[qword_1009441D0];
  *(v72 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v73 = *&v61[qword_1009441C8];
  v139 = v64;
  sub_10020D440(v62, v64);
  v74 = sub_10074A2D4();
  v75 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v76 = *&v73[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v70 != 4 || (v74 & 1) != 0)
  {
    v77 = [v76 text];
    if (v77)
    {
      v78 = v77;
      sub_100753094();
    }

    v79 = sub_100753114();
    v80 = v79 & 1;

    if (v80 == [*&v73[v75] isHidden] || (v73[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v73[v75] setHidden:v80];
    }

    else
    {
      if ((v79 & 1) == 0)
      {
        [*&v73[v75] setAlpha:0.0];
        v130 = objc_opt_self();
        [v130 inheritedAnimationDuration];
        v82 = v81;
        v83 = swift_allocObject();
        *(v83 + 16) = v73;
        v164 = sub_100037A70;
        v165 = v83;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_1000CF7B0;
        v163 = &unk_100868CA8;
        v131 = _Block_copy(&aBlock);
        v84 = v73;

        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        v164 = sub_100037A7C;
        v165 = v85;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_100144DD8;
        v163 = &unk_100868CF8;
        v86 = _Block_copy(&aBlock);
        v87 = v84;

        v88 = v131;
        [v130 animateWithDuration:0 delay:v131 options:v86 animations:v82 completion:0.0];
        _Block_release(v86);
        _Block_release(v88);
      }

      [*&v73[v75] setHidden:v79 & 1];
      v73[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v73 setNeedsLayout];
    }
  }

  else if (([v76 isHidden] & 1) != 0 || (v73[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v73[v75] setHidden:1];
  }

  else
  {
    [*&v73[v75] setHidden:1];
    v73[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v73 setNeedsLayout];
  }

  v89 = &v61[qword_1009441F0];
  *v89 = v134;
  v89[1] = 0;
  v89[2] = v71;
  v89[3] = 0;
  v89[4] = v135;
  v89[5] = 0;
  v89[6] = v136;
  v89[7] = 0;
  v89[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v89[9] = 0;
  v89[10] = v137;
  v89[11] = 0;

  sub_100679B2C();
  v90 = v154;
  if (v146)
  {
    if (v158 == 4)
    {
      sub_10067B3D8();
    }

    else
    {
      sub_10067B3FC();
    }

    v91 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
    v92 = *(v72 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    v93 = objc_allocWithZone(NSAttributedString);
    v94 = v92;
    v95 = sub_100753064();
    type metadata accessor for Key(0);
    sub_1001360E0(&qword_1009276F0, type metadata accessor for Key);
    isa = sub_100752F34().super.isa;

    v97 = [v93 initWithString:v95 attributes:isa];

    [v94 setAttributedText:v97];
    [*(v72 + v91) setAdjustsFontSizeToFitWidth:0];
    [*(v72 + v91) setMinimumScaleFactor:0.0];
    [*(v72 + v91) setAttributedText:0];
    if (v148 && v61[qword_1009441C0] == 4)
    {
      v90 = v154;
      if (v158 == 4)
      {
        v98 = v142;
        v99 = v146;
        v100 = v132;
        v101 = v148;
      }

      else
      {
        v98 = v132;
        v99 = v148;
        v100 = v142;
        v101 = v146;
      }

      sub_10020D538(v98, v99, v100, v101);
    }

    else
    {
      sub_10020D440(v142, v146);
      v90 = v154;
    }
  }

  v102 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v103 = *(v72 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v104 = [v103 text];
  if (v104)
  {
    v105 = v147;
    v106 = &stru_1008F2000;
  }

  else
  {
    v104 = [*(v72 + v102) attributedText];
    v106 = &stru_1008F2000;
    if (!v104)
    {
      v107 = 1;
      v105 = v147;
      goto LABEL_68;
    }

    v105 = v147;
  }

  v107 = 0;
LABEL_68:
  v108 = v158;
  [v103 setHidden:v107];

  [v61 v106[51].attr];
  v109 = *&v61[qword_1009441D8];
  [v109 setImage:0];
  [v109 setHidden:1];
  if (v108 != 4 && (sub_10074A2B4() & 1) == 0 && v90)
  {
    v110 = v105;
    v111 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v111 = v133 & 0xFFFFFFFFFFFFLL;
    }

    v112 = v111 == 0;
    v113 = *&v61[qword_1009441E0];
    v114 = &v113[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v115 = *&v113[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v113 = *&v61[qword_1009441E0];
  v114 = &v113[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  v115 = *&v113[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v90)
  {
    v110 = v105;
    v112 = 1;
LABEL_76:
    v116 = v115;
    v90 = sub_100753064();
    v105 = v110;
    goto LABEL_78;
  }

  v116 = v115;
  v112 = 1;
LABEL_78:
  [v116 setText:v90];

  if (v112 == [*v114 isHidden] || (v113[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v114 setHidden:v112];
  }

  else
  {
    if (!v112)
    {
      [*v114 setAlpha:0.0];
      v117 = objc_opt_self();
      [v117 inheritedAnimationDuration];
      v119 = v118;
      v120 = swift_allocObject();
      *(v120 + 16) = v113;
      v164 = sub_1000377B8;
      v165 = v120;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_1000CF7B0;
      v163 = &unk_100868C08;
      v121 = _Block_copy(&aBlock);
      v122 = v113;

      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      v164 = sub_1000377D8;
      v165 = v123;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_100144DD8;
      v163 = &unk_100868C58;
      v124 = _Block_copy(&aBlock);
      v125 = v122;
      v105 = v147;

      [v117 animateWithDuration:0 delay:v121 options:v124 animations:v119 completion:0.0];
      _Block_release(v124);
      _Block_release(v121);
    }

    [*v114 setHidden:v112];
    v113[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v113 setNeedsLayout];
  }

  v126 = v153;
  sub_10067859C(v153, v138 & 1);
  [v61 setNeedsLayout];

  (*(v149 + 8))(v157, v150);
  (*(v144 + 8))(v152, v145);
  sub_1001263EC();
  v127 = &v61[qword_1009441B0];
  *v127 = 0x4000000000000000;
  *(v127 + 1) = 0;
  *(v127 + 2) = 0;
  *(v127 + 3) = 0x4018000000000000;
  *(v127 + 4) = 0;
  v127[40] = 1;
  [v61 setNeedsLayout];
  (*(v155 + 8))(v126, v156);
  v128 = sub_100747C94();
  sub_1007442C4();
  sub_100752764();
  v129 = v151;
  sub_100752D34();
  sub_100142F54(v128);

  if (v5[v140] == 6)
  {
    sub_10012CBF0(v159, v105, v158, v143, v129);
  }

  sub_1001261C0();
  sub_1001295FC();
  sub_100129F4C();
  sub_1001264B0();
  sub_10012E178();
  [v5 setNeedsLayout];
}

void sub_10012CBF0(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v148 = a3;
  v147 = a1;
  v138 = sub_10074A2E4();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v149 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_1007497C4();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074FB54();
  v143 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView);
  v139 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  v15 = *(*(v141 + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView);
  v145 = a2;
  v146 = v5;
  v144 = v14;
  v142 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = sub_10074F9A4();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_1001596B4(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = sub_10074F9A4();

    v26 = sub_100747C94();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = sub_10074F9A4();

      sub_1007442C4();
      sub_100752764();
      sub_100752D34();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = sub_100747C94();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = sub_100754664();
    if (v34)
    {
      goto LABEL_12;
    }

LABEL_33:
    v133 = _swiftEmptyArrayStorage;
    goto LABEL_34;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_33;
  }

LABEL_12:
  v35 = 0;
  v133 = _swiftEmptyArrayStorage;
  v140 = v11;
  do
  {
    v11 = v35;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v11 >= *(v33 + 16))
        {
          goto LABEL_31;
        }

        v35 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }
      }

      if (sub_10074EF64())
      {
        break;
      }

LABEL_15:
      ++v11;
      if (v35 == v34)
      {
        v11 = v140;
        goto LABEL_34;
      }
    }

    v36 = sub_10074F1E4();

    if (!v36)
    {
      goto LABEL_15;
    }

    sub_100753284();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
    v133 = aBlock;
    v11 = v140;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC22SubscribePageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v133;
  sub_1001596B4(v38);
  v6 = v146;
  v14 = v144;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v139[v141] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) == 1;
  v140 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    sub_10074FB74();
    goto LABEL_46;
  }

LABEL_45:
  (*(v143 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = sub_10074FB94();
  v46 = v45;
  v133 = sub_10074FB84();
  v139 = v47;
  v126 = sub_10074FA54();
  v141 = v48;
  sub_10074FAC4();
  v49 = sub_100747C74();
  v147 = v50;
  sub_10074FAE4();
  v51 = v148;
  v52 = sub_10066891C;
  v127 = v49;
  if (v148 == 6)
  {
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = sub_1000ED848;
  }

  else if (v148 == 4)
  {
    v132 = sub_1000ED848;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v132 = sub_1006685AC;
    v131 = sub_100668768;
    v130 = sub_10066873C;
    v52 = sub_100668580;
  }

  v128 = sub_1001263EC();
  v39[qword_1009441E8] = 0;
  v53 = *&v39[qword_1009441D0];
  *(v53 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_1009441C8];
  v129 = v46;
  sub_10020D440(v44, v46);
  v55 = sub_10074A2D4();
  v56 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      sub_100753094();
    }

    v60 = sub_100753114();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v54[v56] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v54[v56] setAlpha:0.0];
        v125 = objc_opt_self();
        [v125 inheritedAnimationDuration];
        v63 = v62;
        v64 = swift_allocObject();
        *(v64 + 16) = v54;
        v154 = sub_100037A70;
        v155 = v64;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_1000CF7B0;
        v153 = &unk_100868E38;
        v124 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v154 = sub_100037A7C;
        v155 = v66;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_100144DD8;
        v153 = &unk_100868E88;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v124;
        [v125 animateWithDuration:0 delay:v124 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_1009441F0];
  *v70 = sub_100046F68;
  v70[1] = 0;
  v70[2] = v52;
  v70[3] = 0;
  v70[4] = v130;
  v70[5] = 0;
  v70[6] = v131;
  v70[7] = 0;
  v70[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v70[9] = 0;
  v70[10] = v132;
  v70[11] = 0;

  sub_100679B2C();
  v11 = v147;
  if (v139)
  {
    if (v148 == 4)
    {
      sub_10067B3D8();
    }

    else
    {
      sub_10067B3FC();
    }

    v71 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = sub_100753064();
    type metadata accessor for Key(0);
    sub_1001360E0(&qword_1009276F0, type metadata accessor for Key);
    isa = sub_100752F34().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v141 && v39[qword_1009441C0] == 4)
    {
      v11 = v147;
      if (v148 == 4)
      {
        v78 = v133;
        v79 = v139;
        v80 = v126;
        v81 = v141;
      }

      else
      {
        v78 = v126;
        v79 = v141;
        v80 = v133;
        v81 = v139;
      }

      sub_10020D538(v78, v79, v80, v81);
    }

    else
    {
      sub_10020D440(v133, v139);
      v11 = v147;
    }
  }

  v82 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label);
  v84 = [v83 text];
  if (v84 || (v84 = [*(v53 + v82) attributedText]) != 0)
  {
    v6 = v146;

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v6 = v146;
  }

  v86 = v148;
  [v83 setHidden:v85];

  [v39 setNeedsLayout];
  v87 = *&v39[qword_1009441D8];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (sub_10074A2B4() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_1009441E0];
    v91 = &v90[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    if (v11)
    {
      v89 = 1;
      goto LABEL_88;
    }

    v93 = v92;
    v89 = 1;
  }

  else
  {
    v88 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v88 = v127 & 0xFFFFFFFFFFFFLL;
    }

    v89 = v88 == 0;
    v90 = *&v39[qword_1009441E0];
    v91 = &v90[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = sub_100753064();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v144;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v91 setHidden:v89];
  }

  else
  {
    if (!v89)
    {
      [*v91 setAlpha:0.0];
      v96 = objc_opt_self();
      [v96 inheritedAnimationDuration];
      v98 = v97;
      v99 = swift_allocObject();
      *(v99 + 16) = v90;
      v154 = sub_100037A70;
      v155 = v99;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v152 = sub_1000CF7B0;
      v153 = &unk_100868D98;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v154 = sub_100037A7C;
      v155 = v101;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v6 = v146;
      v152 = sub_100144DD8;
      v153 = &unk_100868DE8;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v144;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v140;
  sub_10067859C(v95, v128 & 1);
  [v39 setNeedsLayout];

  (*(v137 + 8))(v149, v138);
  (*(v135 + 8))(v142, v136);
  sub_1001263EC();
  v105 = &v39[qword_1009441B0];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v143 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = sub_100747C94();
  v107 = v106;
  v108 = v106 >> 62;
  if (v106 >> 62)
  {
    if (v106 < 0)
    {
      v111 = v106;
    }

    else
    {
      v111 = v106 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = sub_100754664();
    if (sub_100754664() < 0)
    {
      __break(1u);
      goto LABEL_134;
    }

    if (v112 >= 6)
    {
      v122 = 6;
    }

    else
    {
      v122 = v112;
    }

    if ((v112 & 0x8000000000000000) == 0)
    {
      v110 = v122;
    }

    else
    {
      v110 = 6;
    }

    if (sub_100754664() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      sub_10074EFD4();

      sub_100754554(0);
      if (v110 != 1)
      {
        sub_100754554(1);
        if (v110 != 2)
        {
          sub_100754554(2);
          if (v110 != 3)
          {
            sub_100754554(3);
            if (v110 != 4)
            {
              sub_100754554(4);
              if (v110 != 5)
              {
                sub_100754554(5);
              }
            }
          }
        }
      }
    }

    else
    {
    }

    if (v108)
    {
      v111 = sub_100754674();
      v11 = v113;
      v39 = v114;
      v112 = v115;

      if (v112)
      {
        goto LABEL_117;
      }
    }

    else
    {
      v39 = 0;
      v111 = v107 & 0xFFFFFFFFFFFFFF8;
      v11 = (v107 & 0xFFFFFFFFFFFFFF8) + 32;
      v112 = (2 * v110) | 1;
      if (v112)
      {
LABEL_117:
        sub_100754774();
        swift_unknownObjectRetain_n();
        v118 = swift_dynamicCastClass();
        if (!v118)
        {
          swift_unknownObjectRelease();
          v118 = _swiftEmptyArrayStorage;
        }

        v119 = v118[2];

        if (!__OFSUB__(v112 >> 1, v39))
        {
          if (v119 == (v112 >> 1) - v39)
          {
            v117 = swift_dynamicCastClass();
            swift_unknownObjectRelease_n();
            if (v117)
            {
              goto LABEL_124;
            }

            v117 = _swiftEmptyArrayStorage;
LABEL_123:
            swift_unknownObjectRelease();
LABEL_124:
            v120 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              sub_1007442C4();
              sub_100752764();
              v121 = v120;
              sub_100752D34();
              sub_100142F54(v117);
            }

            else
            {
            }

            return;
          }

          goto LABEL_135;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        swift_unknownObjectRelease_n();
      }
    }

    sub_1006314BC(v111, v11, v39, v112);
    v117 = v116;
    goto LABEL_123;
  }

  v109 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v109 >= 6)
  {
    v110 = 6;
  }

  else
  {
    v110 = v109;
  }

  if (v109 >= v110)
  {
    goto LABEL_103;
  }

LABEL_143:
  __break(1u);
}

void sub_10012E178()
{
  sub_1005F48BC();
  v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView]) != 0)
  {
    v3 = v2;
    v4 = [v0 contentView];
    sub_1006787A8();
    if (v5)
    {
      v7 = sub_100753064();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }

  else
  {
    v4 = [v0 contentView];
    sub_1006787A8();
    if (v6)
    {
      v7 = sub_100753064();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }
}

void sub_10012E2D4(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  p_info = (_TtC22SubscribePageExtension53ProductReviewFlowPreviewingCollectionElementsObserver + 32);
  v57 = a3;
  if ((a3 & 1) == 0)
  {
    v19 = swift_getObjectType();
    (*(a2 + 112))(v19, a2);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    v56 = ObjectType;
    sub_10006644C(v17, &v4[v20], &unk_100926C40);
    swift_endAccess();
    v21 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
    sub_100016B4C(&v4[v20], v14, &unk_100926C40);
    v22 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    v23 = v21;
    v24 = v21 + v22;
    p_info = _TtC22SubscribePageExtension53ProductReviewFlowPreviewingCollectionElementsObserver.info;
    sub_10006644C(v14, v24, &unk_100926C40);
    swift_endAccess();

    v4[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(v19, a2);
    sub_10013254C();
    v25 = (*(a2 + 136))(v19, a2);
    sub_1005F3E54(v25);
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_todayCard] = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_todayCard);
    v56 = a1;

    v28 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView;
    v29 = p_info[173];
    v55 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
    v30 = *(&v29->flags + v55);
    v31 = *(&v29->flags + *&v27[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView]);
    v32 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100016B4C(&v4[v32], v11, &unk_100926C40);
    v33 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v4[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v33 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    v34 = v4[*v33];
    v35 = v30;
    v36 = v31;
    v37 = v57;
    sub_100720AF4(v36, v57 & 1, v11, v34);

    sub_10000C8CC(v11, &unk_100926C40);
    if (v37)
    {
      sub_10012E838(v27);
    }

    else
    {
      v38 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView];
      if (v38)
      {
        v39 = v38;
        sub_10074F9D4();
      }

      swift_unknownObjectWeakAssign();
      v40 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
      sub_10067B5D0(v40);

      v41 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer];
      sub_100143004(v41);

      [*&v27[v28] frame];
      v42 = v55;
      [v55 setFrame:?];
      [v42 setHidden:{objc_msgSend(*&v27[v28], "isHidden")}];
      v43 = *(*&v27[v28] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView);
      v44 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style];
      v45 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_style + 8];
      v46 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] == 2;

      sub_100131E4C(v44, v45, v46, [v43 isHidden] ^ 1);

      [v42 setNeedsLayout];
      v47 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
      if (v47)
      {
        v48 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
        if (v48)
        {
          v49 = v47;
          v50 = v48;
          sub_10067B5D0(v49);
        }
      }

      v51 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
      if (v51)
      {
        v52 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          sub_100143004(v53);
        }
      }

      sub_10012E178();
    }

    [v4 setNeedsLayout];
  }
}

char *sub_10012E838(char *result)
{
  if ((*(*(*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia) & 1) == 0)
  {
    v2 = v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v1[*v2] == 6)
    {
      v3 = result;
      v4 = [v1 contentView];
      v5 = [v3 contentView];
      v6 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      v7 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
      v8 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      }

      v9 = *&v1[v8];
      if (v9)
      {
        [v9 removeFromSuperview];
      }

      if (v7)
      {
        v10 = *&v1[v8];
        *&v1[v8] = v7;
        v11 = v7;

        if (v4)
        {
          [v4 addSubview:v11];
        }
      }

      if (v9)
      {
        v12 = *&v3[v6];
        *&v3[v6] = v9;
        v13 = v9;

        if (!v5)
        {
          v5 = v4;
LABEL_19:

          v15 = [v1 contentView];
          v64 = v3;
          v65 = [v3 contentView];
          v16 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView;
          v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView];
          v18 = v15;
          v19 = v17;
          [v19 removeFromSuperview];
          v20 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView;
          v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverContainerView];
          v22 = v21;
          [v22 removeFromSuperview];
          if (v17)
          {
            v23 = *&v1[v20];
            *&v1[v20] = v17;
            v24 = v1;
            v25 = v16;
            v26 = v19;

            v27 = v26;
            v16 = v25;
            [v18 addSubview:v27];
          }

          if (v21)
          {
            v28 = *&v64[v16];
            *&v64[v16] = v21;
            v29 = v64;
            v30 = v22;

            [v65 addSubview:v30];
          }

          v31 = *&v1[v20];
          v66 = v16;
          v32 = *&v64[v16];
          v33 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
          v34 = *&v64[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView];
          if (v34)
          {
            v35 = v31;
            v36 = v34;
            v37 = v32;
            [v36 removeFromSuperview];
            v38 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView;
            v39 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_riverView];
            if (!v39)
            {
LABEL_26:
              if (v34)
              {
                v40 = *&v1[v38];
                *&v1[v38] = v34;
                v41 = v1;
                v42 = v34;

                if (v31)
                {
                  [v31 addSubview:v42];
                }
              }

              if (v39)
              {
                v43 = *&v64[v33];
                *&v64[v33] = v39;
                v44 = v64;
                v45 = v39;

                if (!v32)
                {
                  goto LABEL_33;
                }

                v46 = v45;
                [v32 addSubview:v46];
              }

              v45 = v32;
LABEL_33:

              v47 = [v1 contentView];
              v48 = *&v64[v66];
              v49 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView;
              v50 = *&v64[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
              if (v50)
              {
                v51 = v48;
                [v50 removeFromSuperview];
                v52 = OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView;
                v53 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
                if (!v53)
                {
LABEL_36:
                  if (v50)
                  {
                    v54 = *&v1[v52];
                    *&v1[v52] = v50;
                    v55 = v1;
                    v56 = v50;

                    if (v47)
                    {
                      [v47 addSubview:v56];
                    }
                  }

                  if (v53)
                  {
                    v57 = *&v64[v49];
                    *&v64[v49] = v53;
                    v58 = v64;
                    v59 = v53;

                    if (!v48)
                    {

                      goto LABEL_48;
                    }

                    v60 = v59;
                    [v48 addSubview:v60];
                  }

                  v47 = v48;
LABEL_48:

                  [v64 setNeedsLayout];

                  return [v1 setNeedsLayout];
                }
              }

              else
              {
                v63 = v48;
                v52 = v49;
                v53 = *&v1[v49];
                if (!v53)
                {
                  goto LABEL_36;
                }
              }

              [v53 removeFromSuperview];
              goto LABEL_36;
            }
          }

          else
          {
            v61 = v31;
            v62 = v32;
            v38 = v33;
            v39 = *&v1[v33];
            if (!v39)
            {
              goto LABEL_26;
            }
          }

          [v39 removeFromSuperview];
          goto LABEL_26;
        }

        v14 = v13;
        [v5 addSubview:v14];
      }

      v13 = v4;
      goto LABEL_19;
    }
  }

  return result;
}

void sub_10012EE30(void (*a1)(void), int a2, char a3, void *a4, void *a5, void (*a6)(char *, char *, uint64_t))
{
  v175 = a6;
  v185 = a5;
  v183 = a4;
  LODWORD(v184) = a2;
  v8 = sub_100750954();
  v182 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = (&v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v158 - v12);
  __chkstk_darwin(v14);
  v181 = &v158 - v15;
  __chkstk_darwin(v16);
  v178 = (&v158 - v17);
  __chkstk_darwin(v18);
  v177 = (&v158 - v19);
  __chkstk_darwin(v20);
  v172 = &v158 - v21;
  __chkstk_darwin(v22);
  v180 = (&v158 - v23);
  v24 = sub_10074A2E4();
  v173 = *(v24 - 8);
  v174 = v24;
  __chkstk_darwin(v24);
  v179 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10074F704();
  v176 = *(v26 - 8);
  __chkstk_darwin(v26);
  v169 = (&v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v28 - 8);
  v170 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v171 = &v158 - v31;
  v32 = sub_10000C518(&unk_10092B0D0);
  __chkstk_darwin(v32 - 8);
  v34 = &v158 - v33;
  v35 = sub_100753CD4();
  __chkstk_darwin(v35);
  v38 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v166 = v36;
    v167 = a1;
    v39 = sub_10074FB64();
    v40 = sub_100747CA4();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v158 = v26;
      v160 = v13;
      v162 = v10;
      v168 = v8;
      v165 = v39;
      v187[0] = v41;
      v42 = v41;
      v43 = sub_10074B8E4();
      v161 = v42;
      v187[0] = v42;
      v159 = v40;
      v163 = sub_10074B8F4();
      v164 = v43;
      v44 = (v43 | v163) != 0;
      if (v175)
      {
        v45 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v46 = sub_100753CB4();
        v47 = *(v46 - 8);
        (*(v47 + 104))(v34, v45, v46);
        (*(v47 + 56))(v34, 0, 1, v46);
        sub_100753CC4();
        sub_10000C8CC(v34, &unk_10092B0D0);
        sub_100753C94();
        v49 = v48;
        (*(v166 + 8))(v38, v35);
        v50 = v184;
        v51 = v183;
      }

      else
      {
        v51 = v183;
        sub_10074F5D4();
        v49 = v55;
        v50 = v184;
      }

      v56 = v176;
      if (v44)
      {
        v57 = v185;
      }

      else
      {
        if (v50 == 6)
        {
          sub_1001322D8(v51, v185, v49);
          left = v58;
          right = v60;
        }

        else
        {
          v62 = v171;
          v63 = v158;
          v176[2](v171, v51, v158);
          (v56[7])(v62, 0, 1, v63);
          v64 = v62;
          v65 = v170;
          sub_100016B4C(v64, v170, &unk_100926C40);
          if ((v56[6])(v65, 1, v63) == 1)
          {
            sub_10000C8CC(v65, &unk_100926C40);
            left = UIEdgeInsetsZero.left;
            right = UIEdgeInsetsZero.right;
            v66 = v185;
          }

          else
          {
            v67 = v169;
            (v56)[4](v169, v65, v63);
            sub_10074F694();
            sub_10074F694();
            v66 = v185;
            [v185 layoutDirection];
            sub_1007539B4();
            left = v68;
            right = v69;
            (v56[1])(v67, v63);
          }

          sub_10000C8CC(v171, &unk_100926C40);
          if ((sub_1007537D4() & 1) == 0)
          {
            if (qword_100921738 != -1)
            {
              swift_once();
            }

            v70 = sub_100750B04();
            sub_10000D0FC(v70, qword_100982128);
            sub_100751034();
            sub_10000C518(&unk_1009231A0);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1007A5CF0;
            *(v71 + 32) = v66;
            v72 = v66;
            v73 = sub_100751044();
            sub_100750544();

            v50 = v184;
          }
        }

        sub_10074F5A4();
        v75 = v74;
        sub_10074FB94();
        v77 = v76;
        v78 = sub_10074FB84();
        v183 = v79;
        sub_10074FB64();
        if (swift_dynamicCastClass())
        {
          v80 = sub_100747C74();
          v82 = v81;
        }

        else
        {

          v80 = 0;
          v82 = 0;
        }

        v83 = sub_1000ED848;
        v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v86 = sub_10066891C;
        v159 = v80;
        v166 = v78;
        if (v50 != 6)
        {
          if (v50 == 4)
          {
            v83 = sub_1000ED848;
            v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
          }

          else
          {
            v83 = sub_1006685AC;
            v84 = sub_100668768;
            v85 = sub_10066873C;
            v86 = sub_100668580;
          }
        }

        v199[0] = sub_100046F68;
        v199[1] = 0;
        v199[2] = v86;
        v199[3] = 0;
        v199[4] = v85;
        v199[5] = 0;
        v169 = v84;
        v199[6] = v84;
        v199[7] = 0;
        v199[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v199[9] = 0;
        v167 = v83;
        v199[10] = v83;
        v199[11] = 0;
        v87 = sub_10074FAE4();
        __chkstk_darwin(v87);
        *(&v158 - 2) = v199;
        v88 = v185;
        v89 = sub_100753824();
        v90 = [v88 preferredContentSizeCategory];
        sub_100046F68();

        sub_100750944();
        if (qword_100921C20 != -1)
        {
          swift_once();
        }

        v91 = qword_100944158;
        v176 = objc_opt_self();
        v170 = v89;
        v92 = [v176 preferredFontDescriptorWithTextStyle:v91 compatibleWithTraitCollection:v89];
        v93 = [v92 fontDescriptorWithSymbolicTraits:2];
        v94 = objc_opt_self();
        if (v93)
        {
          v95 = [v94 fontWithDescriptor:v93 size:0.0];

          v92 = v93;
        }

        else
        {
          v95 = [v94 fontWithDescriptor:v92 size:0.0];
        }

        v184 = v82;

        v96 = v172;
        v97 = v177;
        sub_100750934();

        v98 = *(v182 + 8);
        v99 = v168;
        v98(v97, v168);
        sub_100750904();
        v98(v96, v99);
        v100 = sub_100413644(_swiftEmptyArrayStorage);
        if (qword_100921C28 != -1)
        {
          swift_once();
        }

        v101 = qword_100944160;
        v177 = type metadata accessor for TodayTransitioningLabelView();
        objc_allocWithZone(v177);
        v102 = sub_10020BC38(v100, v101);
        v103 = *&v102[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
        v104 = v178;
        v171 = v77;
        v105 = v103;
        if (v77)
        {
          v106 = sub_100753064();
        }

        else
        {
          v106 = 0;
        }

        [v103 setText:v106];

        v172 = v102;
        v107 = *(v182 + 16);
        v108 = v168;
        v182 += 16;
        v175 = v107;
        v107(v104, v180, v168);
        sub_100753F64();
        if (qword_100921C30 != -1)
        {
          swift_once();
        }

        v109 = qword_100944168;
        v110 = [v185 preferredContentSizeCategory];
        v167();

        __chkstk_darwin(v111);
        *(&v158 - 2) = v199;
        v112 = sub_100753824();
        v113 = v160;
        sub_100750944();
        v167 = v112;
        v114 = [v176 preferredFontDescriptorWithTextStyle:v109 compatibleWithTraitCollection:v112];
        v115 = objc_opt_self();
        v116 = [v115 fontWithDescriptor:v114 size:0.0];

        sub_100750934();
        v98(v113, v108);
        sub_100750904();
        v98(v104, v108);
        v117 = sub_100413644(_swiftEmptyArrayStorage);
        if (qword_100921C38 != -1)
        {
          swift_once();
        }

        v118 = qword_100944170;
        v119 = objc_allocWithZone(v177);
        v120 = sub_10020BC38(v117, v118);
        v121 = OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label;
        v122 = *&v120[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
        v123 = v183;
        if (v183)
        {
          v124 = v122;
          v123 = sub_100753064();
        }

        else
        {
          v125 = v122;
        }

        [v122 setText:v123];

        v166 = v121;
        v126 = v178;
        v127 = v168;
        v175(v178, v181, v168);
        v128 = sub_100753F64();
        __chkstk_darwin(v128);
        *(&v158 - 2) = v199;
        v129 = v185;
        v130 = sub_100753824();
        v131 = v160;
        sub_100750944();
        if (qword_100921C48 != -1)
        {
          swift_once();
        }

        v132 = v75 - left;
        v133 = v176;
        v176 = v130;
        v134 = [v133 preferredFontDescriptorWithTextStyle:qword_100944180 compatibleWithTraitCollection:v130];
        v135 = [v115 fontWithDescriptor:v134 size:0.0];

        sub_100750934();
        v98(v131, v127);
        v136 = [v129 preferredContentSizeCategory];
        v169();

        sub_100750904();
        v98(v126, v127);
        v137 = sub_100413644(_swiftEmptyArrayStorage);
        if (qword_100921C50 != -1)
        {
          swift_once();
        }

        v138 = v132 - right;
        v139 = qword_100944188;
        v140 = objc_allocWithZone(v177);
        v141 = sub_10020BC38(v137, v139);
        v142 = *&v141[OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_label];
        v143 = sub_10074A2B4();
        v144 = 0;
        v145 = v166;
        if ((v143 & 1) == 0 && v184)
        {
          v144 = sub_100753064();
        }

        [v142 setText:v144];

        v146 = v162;
        v147 = v168;
        v175(v178, v162, v168);
        sub_100753F64();
        v148 = *&v120[v145];
        v192 = sub_100745C84();
        v193 = &protocol witness table for UILabel;
        v190 = v120;
        v191 = v148;
        v194 = 0u;
        v195 = 0u;
        v196 = 0;
        v197 = v141;
        v187[0] = 0x4000000000000000;
        v187[1] = 0;
        v187[2] = 0;
        v187[3] = 0x4018000000000000;
        v187[4] = 0;
        v188 = 1;
        v189 = v172;
        v198 = 0;
        v149 = v148;
        v57 = v185;
        sub_1005607F0(v185, v186, v138, 1.79769313e308);
        sub_10000C888(v186, v186[3]);
        sub_100751254();

        v98(v146, v147);
        v98(v181, v147);
        v98(v180, v147);
        (*(v173 + 8))(v179, v174);
        sub_100135C44(v187);
        sub_10000C620(v186);
      }

      v150 = sub_100747C94();
      if (v150 >> 62)
      {
        v151 = sub_100754664();
      }

      else
      {
        v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for TodayListCardLockupContainer();
      sub_10013F6DC(v151, v57);
      if ((sub_1007537D4() & 1) == 0)
      {
        if (qword_100921738 != -1)
        {
          swift_once();
        }

        v152 = sub_100750B04();
        sub_10000D0FC(v152, qword_100982128);
        sub_100751034();
        sub_10000C518(&unk_1009231A0);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1007A5CF0;
        *(v153 + 32) = v57;
        v154 = v57;
        v155 = sub_100751044();
        sub_100750544();
      }

      v156 = [v57 preferredContentSizeCategory];
      sub_100753934();

      sub_1007535D4();
      v157 = [v57 preferredContentSizeCategory];
      sub_100753934();

      sub_1007535D4();
    }

    else
    {
    }
  }

  else
  {
    v52 = v184;
    v53 = v183;
    v54 = v185;

    sub_100039770(v52, v53, v54);
  }
}

void sub_10013034C()
{
  sub_1006784A0();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v1)
  {
    v2 = v1;
    sub_1006784A0();
  }
}

uint64_t sub_1001303C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v4 = sub_10074F344();
  __chkstk_darwin(v4 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F164();
  __chkstk_darwin(v7 - 8);
  v76 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074F3A4();
  v77 = *(v9 - 8);
  __chkstk_darwin(v9);
  v75 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_1009295C8);
  __chkstk_darwin(v11 - 8);
  v71 = v58 - v12;
  v79 = sub_10074F284();
  v74 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = v58 - v15;
  v16 = sub_100754724();
  v68 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10074A174();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10074DAE4();
  v64 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  v26 = sub_10074F704();
  v69 = *(v26 - 8);
  v70 = v26;
  __chkstk_darwin(v26);
  v78 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074FBB4();
  sub_1001360E0(&qword_100926C60, &type metadata accessor for TodayCard);
  result = sub_1007468B4();
  if (v82)
  {
    v61 = v9;
    v62 = v6;
    v29 = sub_10074FB64();

    sub_100747CA4();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v59 = v16;
      v63 = v29;
      v32 = sub_100747C94();
      v60 = a2;
      sub_100143CEC(v32);

      type metadata accessor for TodayCardGridTracker();
      sub_100752764();
      sub_100752D34();
      v33 = v82;
      LODWORD(v80) = sub_1001217C4();
      v82 = v31;
      swift_getKeyPath();
      sub_100746914();

      v34 = v81;
      v35 = sub_10074B8D4();

      if (v35)
      {
        v58[2] = v33;
        if (sub_100747C84())
        {
          v58[1] = v35;
          swift_getKeyPath();
          sub_100746914();

          swift_getKeyPath();
          sub_100746914();

          v58[0] = v82;
          v36 = v80;
          sub_1006E88C4(v80);
          v37 = v64;
          v38 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v39 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v36 != 6)
          {
            v39 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v36 != 4)
          {
            v38 = v39;
          }

          (*(v64 + 104))(v22, *v38, v20);
          (*(v37 + 32))(v25, v22, v20);
          v40 = sub_1007532B4();

          (*(v37 + 8))(v25, v20);
          sub_10074DAC4();
          if (v41)
          {
            sub_10074F2A4();
          }

          v42 = v79;
          v43 = v73;
          v44 = v74;
          v45 = v71;
          sub_10074DAD4();
          sub_10074A144();
          sub_100753BA4();
          sub_100753B64();
          v46 = v68;
          v47 = v66;
          v48 = v59;
          (*(v68 + 104))(v66, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v59);
          sub_100753B84();
          (*(v46 + 8))(v47, v48);
          (*(v65 + 8))(v19, v67);
          sub_10074DAB4();
          v49 = *(v44 + 48);
          v50 = v49(v45, 1, v42);
          v80 = v40;
          if (v50 == 1)
          {
            sub_10074F294();
            v51 = v49(v45, 1, v42);
            v52 = v42;
            if (v51 != 1)
            {
              sub_10000C8CC(v45, &qword_1009295C8);
            }
          }

          else
          {
            (*(v44 + 32))(v43, v45, v42);
            v52 = v42;
          }

          v53 = v75;
          sub_10074F174();
          sub_10074F3C4();
          v54 = v58[0];
          [v58[0] displayScale];
          (*(v44 + 16))(v72, v43, v52);
          sub_10074F384();
          sub_10074F394();
          sub_100748014();
          swift_allocObject();
          v55 = sub_100747FF4();

          (*(v77 + 8))(v53, v61);
          (*(v44 + 8))(v43, v79);
          (*(v69 + 8))(v78, v70);
          sub_10000C518(&unk_1009231A0);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1007A5CF0;
          *(v56 + 32) = v55;

          v57._rawValue = v56;
          sub_100744224(v57);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_100130E74(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  sub_100720E8C(a1, a3);
}

void sub_100130EF0()
{
  v0 = sub_100749CD4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100749D14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_10093CB70];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_10051D504(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

char *sub_100131250()
{
  v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer]) != 0)
  {
    sub_10000C518(&unk_1009231A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5CF0;
    v4 = v2;
    *(inited + 32) = [v0 contentView];
    v5 = [v4 subviews];
    sub_100016C60(0, &qword_100922300);
    v6 = sub_1007532A4();

    sub_10049FC94(v6);
    v7 = sub_100157E28(inited);
  }

  else
  {
    sub_10000C518(&unk_1009231A0);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1007A5CF0;
    *(v8 + 32) = [v0 contentView];
    v9 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_lockupContainer] subviews];
    sub_100016C60(0, &qword_100922300);
    v10 = sub_1007532A4();

    sub_10049FC94(v10);
    v7 = sub_100157E28(v8);
  }

  return v7;
}

void sub_1001314F8()
{

  sub_10000C8CC(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_cardStyle, &qword_100923E58);
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_muteButton);
}

uint64_t type metadata accessor for ListTodayCardCollectionViewCell()
{
  result = qword_100929550;
  if (!qword_100929550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100131738()
{
  sub_100131804();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100131804()
{
  if (!qword_100929560)
  {
    sub_10074FB54();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100929560);
    }
  }
}

void sub_10013185C(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_10020ED5C(Strong);
}

uint64_t (*sub_100131904(uint64_t **a1))()
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
  v2[4] = sub_100127534(v2);
  return sub_1000181A8;
}

uint64_t sub_100131978()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1001360E0(&qword_1009295C0, type metadata accessor for ListTodayCardCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1001319EC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1001360E0(&qword_1009295C0, type metadata accessor for ListTodayCardCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100131A78(uint64_t *a1))()
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
  sub_1001360E0(&qword_1009295C0, type metadata accessor for ListTodayCardCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

char *sub_100131B38()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView;
  v4 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v1[v3] = sub_1000F744C(&off_100862680);
  v9.receiver = v1;
  v9.super_class = type metadata accessor for HeaderView();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView];
  v7 = v5;
  [v7 addSubview:v6];
  [v7 addSubview:*&v7[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView]];
  [v7 setClipsToBounds:1];

  return v7;
}

void sub_100131D18()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for HeaderView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView];
  [v1 bounds];
  [v2 setFrame:?];
  sub_100131F7C();
  v3 = [v1 traitCollection];
  v4 = sub_1007537F4();

  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView];
  v6 = 0.174532925;
  if (v4)
  {
    v6 = -0.174532925;
  }

  v7 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle);
  *(v5 + OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_rotationAngle) = v6;
  if (v6 != v7)
  {
    sub_1000F7CD8();
  }
}

id sub_100131E4C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView);

  sub_1000F8070(a1, a2);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView;
  v13 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016C60(0, &qword_10092BE10);
  isa = sub_100753294().super.isa;

  [v13 setBackgroundEffects:isa];

  [*&v9[v12] setOverrideUserInterfaceStyle:*&v9[v11]];

  return [v9 setHidden:(a4 & 1) == 0];
}

void sub_100131F7C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView];
  [v2 frame];
  v3 = CGRectGetHeight(v9) * 0.5 * 0.176326981;
  [v2 frame];
  v4 = ceil(v3 + CGRectGetHeight(v10));
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_gradientBlurView];
  [v2 frame];
  MinX = CGRectGetMinX(v11);
  [v2 frame];
  v7 = CGRectGetHeight(v12) + -145.0;
  if (v7 < 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v7;
  }

  [v1 bounds];
  [v5 setFrame:{MinX, v8, CGRectGetWidth(v13), v4}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientStartY] = v3 / v4;
  sub_1000F7CD8();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension28TodayCardProtectionLayerView_gradientEndY] = (v3 + 145.0) / v4;
  sub_1000F7CD8();
}

id sub_1001320F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001321A8(uint64_t a1)
{
  result = sub_1001360E0(&qword_1009295A0, type metadata accessor for ListTodayCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_1001322D8(uint64_t a1, void *a2, double a3)
{
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_10074F704();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1005F6CA0(v8, a2);
  sub_10000C8CC(v8, &unk_100926C40);
  if ((sub_1007537D4() & 1) == 0)
  {
    if (qword_100921738 != -1)
    {
      swift_once();
    }

    v11 = sub_100750B04();
    sub_10000D0FC(v11, qword_100982128);
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007A5CF0;
    *(v12 + 32) = a2;
    v13 = a2;
    v14 = sub_100751044();
    sub_100750544();
    a3 = v15;
  }

  return a3 + 20.0;
}

uint64_t sub_1001324F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100132534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10013254C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_labelsView];
  v5 = v1[v2];
  *(v4 + qword_1009441C0) = v5;
  if (v5 == 7)
  {
    v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = 7;
    v8 = &qword_1009441C0;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory;
    *(*(v4 + qword_1009441C8) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_1009441D0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_1009441E0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v9 + qword_1009441C0) = v5;
    *(*(v9 + qword_1009441C8) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v9 + qword_1009441D0) + OBJC_IVAR____TtC22SubscribePageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v6 = *(v9 + qword_1009441E0);
    v7 = v5;
  }

  *(v6 + *v8) = v7;
LABEL_9:
  v10 = *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  v10[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory] = v5;
  v11 = v10;
  sub_1007217A8();

  return [v1 setNeedsLayout];
}

uint64_t sub_1001326F4(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v189 = a5;
  v222 = a4;
  v223 = a3;
  v225 = a2;
  v6 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v6 - 8);
  v182 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v184 = &v181 - v9;
  v10 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v10 - 8);
  v187 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = &v181 - v13;
  v227 = sub_100741264();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v183 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_10000C518(&unk_100932480);
  __chkstk_darwin(v216);
  v228 = &v181 - v15;
  v16 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v16 - 8);
  v185 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v188 = &v181 - v19;
  __chkstk_darwin(v20);
  v217 = &v181 - v21;
  __chkstk_darwin(v22);
  v224 = &v181 - v23;
  v24 = sub_10074F344();
  __chkstk_darwin(v24 - 8);
  v215 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10074F164();
  __chkstk_darwin(v26 - 8);
  v211 = &v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_10074F3A4();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000C518(&qword_1009295C8);
  __chkstk_darwin(v29 - 8);
  v208 = &v181 - v30;
  v31 = sub_10074F284();
  v231 = *(v31 - 1);
  v232 = v31;
  __chkstk_darwin(v31);
  v209 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v210 = &v181 - v34;
  v207 = sub_100754724();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v204 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_10074A174();
  v203 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_10074DAE4();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v199 = &v181 - v39;
  v40 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v40 - 8);
  v197 = &v181 - v41;
  v194 = sub_100744894();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v196 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_100747D94();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v236 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000C518(&qword_1009295E0);
  __chkstk_darwin(v44 - 8);
  v192 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v190 = &v181 - v47;
  v48 = sub_100744864();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v195 = &v181 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v230 = &v181 - v52;
  __chkstk_darwin(v53);
  v191 = &v181 - v54;
  __chkstk_darwin(v55);
  v57 = &v181 - v56;
  __chkstk_darwin(v58);
  v235 = &v181 - v59;
  __chkstk_darwin(v60);
  v62 = &v181 - v61;
  __chkstk_darwin(v63);
  v65 = &v181 - v64;
  __chkstk_darwin(v66);
  v68 = &v181 - v67;
  __chkstk_darwin(v69);
  v71 = &v181 - v70;
  v238 = a1;
  sub_10074EBB4();
  sub_100744834();
  v229 = *(v49 + 16);
  v229(v62, v71, v48);
  sub_1001360E0(&qword_1009295E8, &type metadata accessor for VideoControls);
  sub_100754334();
  v72 = sub_100754354();
  v234 = v71;
  if (v72)
  {
    v73 = *(v49 + 8);
    v73(v65, v48);
    v233 = v73;
    v73(v68, v48);
    v74 = 1;
    v75 = v190;
  }

  else
  {
    sub_100754364();
    v233 = *(v49 + 8);
    v233(v68, v48);
    v75 = v190;
    (*(v49 + 32))(v190, v65, v48);
    v74 = 0;
  }

  v76 = *(v49 + 56);
  v76(v75, v74, 1, v48);
  sub_10000C8CC(v75, &qword_1009295E0);
  v77 = v235;
  sub_10074EBF4();
  sub_100744834();
  v229(v62, v77, v48);
  v78 = v191;
  sub_100754334();
  v79 = sub_100754354();
  v218 = v49;
  if (v79)
  {
    v80 = v233;
    v233(v78, v48);
    v80(v57, v48);
    v81 = 1;
    v82 = v232;
    v83 = v192;
  }

  else
  {
    sub_100754364();
    v233(v57, v48);
    v83 = v192;
    (*(v49 + 32))(v192, v78, v48);
    v81 = 0;
    v82 = v232;
  }

  v76(v83, v81, 1, v48);
  sub_10000C8CC(v83, &qword_1009295E0);
  (*(v193 + 104))(v196, enum case for VideoFillMode.scaleAspectFill(_:), v194);
  sub_10074EC14();
  sub_10074F2A4();
  v84 = v197;
  sub_100750504();

  v85 = sub_1007504F4();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v229;
  v229(v230, v234, v48);
  v86(v195, v77, v48);
  sub_10074EBC4();
  v87 = v237;
  sub_10074EBA4();
  sub_10074EC04();
  sub_100747D74();
  sub_10074EC14();
  v88 = [v87 traitCollection];
  v89 = v223;
  sub_1006E88C4(v223);
  v90 = v200;
  v91 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v92 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v89 != 6)
  {
    v92 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v89 != 4)
  {
    v91 = v92;
  }

  v93 = v198;
  v94 = v201;
  (*(v200 + 104))(v198, *v91, v201);
  v95 = v199;
  (*(v90 + 32))(v199, v93, v94);
  v96 = sub_1007532B4();
  (*(v90 + 8))(v95, v94);
  sub_10074DAC4();
  v221 = v48;
  if (v97)
  {
    sub_10074F2A4();
  }

  v98 = v208;
  v99 = v202;
  sub_10074DAD4();
  sub_10074A144();
  sub_100753BA4();
  sub_100753B64();
  v100 = v206;
  v101 = v204;
  v102 = v207;
  (*(v206 + 104))(v204, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v207);
  sub_100753B84();
  (*(v100 + 8))(v101, v102);
  (*(v203 + 8))(v99, v205);
  sub_10074DAB4();
  v103 = v231;
  v104 = *(v231 + 48);
  v105 = v104(v98, 1, v82);
  v229 = v96;
  v106 = v88;
  if (v105 == 1)
  {
    v107 = v210;
    sub_10074F294();
    v108 = v107;
    v109 = v82;
    if (v104(v98, 1, v82) != 1)
    {
      sub_10000C8CC(v98, &qword_1009295C8);
    }
  }

  else
  {
    v108 = v210;
    (*(v103 + 32))(v210, v98, v82);
    v109 = v82;
  }

  v110 = v212;
  sub_10074F174();
  sub_10074F3C4();
  [v106 displayScale];
  v111 = v231;
  (*(v231 + 16))(v209, v108, v109);
  sub_10074F384();
  sub_10074F394();
  sub_100748014();
  swift_allocObject();
  v230 = sub_100747FF4();

  (*(v213 + 8))(v110, v214);
  (*(v111 + 8))(v108, v232);
  v112 = *&v237[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v231 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  v229 = v112;
  v113 = *(v112 + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  v114 = v224;
  sub_10074EC24();
  v115 = v226;
  v116 = *(v226 + 56);
  v117 = 1;
  v118 = v227;
  v116(v114, 0, 1, v227);
  v232 = v113;
  v215 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v120 = Strong;
    v121 = v217;
    (*(v115 + 16))(v217, Strong + qword_100982250, v118);

    v117 = 0;
  }

  else
  {
    v121 = v217;
  }

  v116(v121, v117, 1, v118);
  v122 = *(v216 + 48);
  v123 = v228;
  sub_100016B4C(v114, v228, &unk_100923970);
  v124 = v123;
  sub_100016B4C(v121, v123 + v122, &unk_100923970);
  v125 = *(v115 + 48);
  if (v125(v124, 1, v118) == 1)
  {
    sub_10000C8CC(v121, &unk_100923970);
    v126 = v228;
    sub_10000C8CC(v114, &unk_100923970);
    v127 = v125(v126 + v122, 1, v118);
    v128 = v221;
    if (v127 == 1)
    {
      sub_10000C8CC(v126, &unk_100923970);
      v129 = v229;
      goto LABEL_42;
    }
  }

  else
  {
    v130 = v188;
    sub_100016B4C(v124, v188, &unk_100923970);
    if (v125(v124 + v122, 1, v118) != 1)
    {
      v138 = v226;
      v139 = v124 + v122;
      v140 = v183;
      (*(v226 + 32))(v183, v139, v118);
      sub_1001360E0(&qword_100926240, &type metadata accessor for URL);
      v141 = v124;
      v142 = sub_100753014();
      v143 = *(v138 + 8);
      v143(v140, v118);
      sub_10000C8CC(v121, &unk_100923970);
      sub_10000C8CC(v224, &unk_100923970);
      v143(v188, v118);
      sub_10000C8CC(v141, &unk_100923970);
      v128 = v221;
      v129 = v229;
      if (v142)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    sub_10000C8CC(v121, &unk_100923970);
    v126 = v228;
    sub_10000C8CC(v114, &unk_100923970);
    (*(v226 + 8))(v130, v118);
    v128 = v221;
  }

  sub_10000C8CC(v126, &unk_100932480);
  v129 = v229;
LABEL_26:
  v131 = v129;
  sub_1007464C4();
  v229 = sub_100752764();
  sub_100752D34();
  v132 = v239;
  sub_10074EB94();
  v133 = v185;
  sub_10074EC24();
  v116(v133, 0, 1, v227);
  v134 = v186;
  sub_10074EBE4();
  v135 = v187;
  sub_10074EBD4();
  v136 = type metadata accessor for TodayCardVideoView();
  sub_1001360E0(&qword_1009295B8, type metadata accessor for TodayCardVideoView);
  v228 = v136;
  v137 = sub_1007464A4();
  sub_10000C8CC(v135, &unk_1009281C0);
  sub_10000C8CC(v134, &unk_1009281C0);
  sub_10000C8CC(v133, &unk_100923970);
  sub_10000C8CC(&v239, &unk_1009276E0);
  if (!v137)
  {
LABEL_31:

    v129 = v131;
    goto LABEL_42;
  }

  v227 = v132;
  if (*(v137 + qword_100982C58))
  {

    goto LABEL_31;
  }

  v144 = v232;
  *(v137 + qword_100982C50) = v232[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory];
  sub_100665360();
  swift_unknownObjectWeakAssign();
  v145 = v215;
  v146 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v147 = v137;
  sub_10020ED5C(v146);

  v148 = *&v145[v144];
  sub_10074EC14();
  sub_10074F2A4();
  v150 = v149;
  v152 = v151;

  v153 = sub_10074F704();
  v154 = *(v153 - 8);
  v155 = v184;
  (*(v154 + 16))(v184, v222, v153);
  (*(v154 + 56))(v155, 0, 1, v153);
  v156 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_videoView;
  v157 = swift_unknownObjectWeakLoadStrong();
  v226 = v156;
  v238 = v147;
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(v157);

  v158 = &v148[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkSize];
  *v158 = v150;
  *(v158 + 1) = v152;
  v158[16] = 0;
  v159 = swift_unknownObjectWeakLoadStrong();
  v129 = v131;
  if (v159)
  {
    v160 = v159;
    (*((swift_isaMask & *v159) + 0xE8))(v150, v152, 0);
  }

  v161 = v225;
  *&v148[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v225;

  v162 = swift_unknownObjectWeakLoadStrong();
  if (v162)
  {
    v163 = v162;
    v164 = *((swift_isaMask & *v162) + 0xD0);
    swift_bridgeObjectRetain_n();
    v164(v161);
  }

  else
  {
  }

  v165 = v184;
  v166 = v182;
  sub_100016B4C(v184, v182, &unk_100926C40);
  sub_10020E270(v166);
  v167 = v223;
  v148[OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_sizeCategory] = v223;
  v168 = swift_unknownObjectWeakLoadStrong();
  if (v168)
  {
    v169 = v168;
    (*((swift_isaMask & *v168) + 0x118))(v167);
  }

  v170 = swift_unknownObjectWeakLoadStrong();
  if (v170)
  {
    v171 = v170;
    v172 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v171) + 0x150))(v172, *v158, *(v158 + 1), v158[16], v225, v165, v167);
  }

  [v148 setNeedsLayout];
  v173 = v238;

  sub_10000C8CC(v165, &unk_100926C40);
  sub_1007442C4();
  sub_100752D34();
  sub_1001360E0(&qword_1009295F0, type metadata accessor for TodayCardVideoView);
  sub_100744204();
  v174 = v232;
  [*&v215[v232] setHidden:0];
  [*&v174[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView] setHidden:1];

  v174[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia] = 1;
  v128 = v221;
LABEL_42:

  v175 = *&v129[v231];
  v175[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory] = v237[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v176 = v175;
  sub_1007217A8();

  v177 = swift_unknownObjectWeakLoadStrong();
  if (v177)
  {
    *(v177 + qword_10093CB48 + 8) = &off_100868AB0;
    v178 = v177;
    swift_unknownObjectWeakAssign();
  }

  sub_10012A57C();

  (*(v219 + 8))(v236, v220);
  v179 = v233;
  v233(v235, v128);
  return v179(v234, v128);
}

void sub_100134474(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v145 = a5;
  v153 = a4;
  v154 = a2;
  v138 = a1;
  LODWORD(v134) = a3;
  v8 = sub_10000C518(&qword_100925B80);
  __chkstk_darwin(v8 - 8);
  v121 = &v116 - v9;
  v151 = sub_10074F704();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v119 = v10;
  v127 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_100741494();
  v129 = *(v148 - 8);
  __chkstk_darwin(v148);
  v126 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v11;
  __chkstk_darwin(v12);
  v128 = &v116 - v13;
  v122 = sub_10000C518(&qword_1009295F8);
  __chkstk_darwin(v122);
  v123 = &v116 - v14;
  v15 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v15 - 8);
  v120 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v116 - v18;
  __chkstk_darwin(v19);
  v124 = &v116 - v20;
  __chkstk_darwin(v21);
  v125 = &v116 - v22;
  v23 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v23 - 8);
  v144 = &v116 - v24;
  v25 = sub_10074F344();
  __chkstk_darwin(v25 - 8);
  v143 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10074F164();
  v147 = *(v130 - 8);
  __chkstk_darwin(v130);
  v146 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10074F3A4();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000C518(&qword_1009295C8);
  __chkstk_darwin(v29 - 8);
  v133 = &v116 - v30;
  v139 = sub_10074F284();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v136 = &v116 - v33;
  v132 = sub_100754724();
  v34 = *(v132 - 8);
  __chkstk_darwin(v132);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_10074A174();
  v37 = *(v131 - 8);
  __chkstk_darwin(v131);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10074DAE4();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = __chkstk_darwin(v44).n128_u64[0];
  v47 = &v116 - v46;
  v152 = v6;
  v48 = [v6 traitCollection];
  v150 = a3;
  sub_1006E88C4(a3);
  v49 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v50 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v134 != 6)
  {
    v50 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v134 != 4)
  {
    v49 = v50;
  }

  (*(v41 + 104))(v43, *v49, v40);
  (*(v41 + 32))(v47, v43, v40);
  v51 = sub_1007532B4();
  (*(v41 + 8))(v47, v40);
  sub_10074DAC4();
  if (v52)
  {
    sub_10074F2A4();
  }

  sub_10074DAD4();
  sub_10074A144();
  sub_100753BA4();
  sub_100753B64();
  v53 = v132;
  (*(v34 + 104))(v36, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v132);
  sub_100753B84();
  (*(v34 + 8))(v36, v53);
  (*(v37 + 8))(v39, v131);
  v54 = v133;
  sub_10074DAB4();
  v55 = v137;
  v56 = *(v137 + 48);
  v57 = v139;
  v58 = v56(v54, 1, v139);
  v134 = v51;
  if (v58 == 1)
  {
    v59 = v136;
    sub_10074F294();
    if (v56(v54, 1, v57) != 1)
    {
      sub_10000C8CC(v54, &qword_1009295C8);
    }
  }

  else
  {
    v59 = v136;
    (*(v55 + 32))(v136, v54, v57);
  }

  v60 = v140;
  sub_10074F174();
  sub_10074F3C4();
  [v48 displayScale];
  v61 = v48;
  (*(v55 + 16))(v135, v59, v57);
  sub_10074F384();
  sub_10074F394();
  sub_100748014();
  swift_allocObject();
  v62 = sub_100747FF4();

  (*(v141 + 8))(v60, v142);
  (*(v55 + 8))(v59, v57);
  v143 = *&v152[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v142 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  v63 = *&v143[OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView];
  sub_1007442C4();
  sub_100752764();
  v64 = v63;
  sub_100752D34();
  v65 = v155;
  v141 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);

  v145 = v64;
  v140 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView;
  v67 = *&v64[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView];
  sub_100747FB4();
  v69 = v68;
  v71 = v70;
  v72 = [*(v67 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) image];
  v73 = v149;
  v74 = v144;
  v75 = v151;
  v136 = *(v149 + 16);
  (v136)(v144, v153, v151);
  (*(v73 + 56))(v74, 0, 1, v75);
  sub_100527FD0(v72, v69, v71, 0, v154, v74, v150);

  v76 = v74;
  v77 = v67;
  sub_10000C8CC(v76, &unk_100926C40);
  v78 = *(v67 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded);
  v138 = v62;
  v139 = v65;
  v137 = v67;
  if (v78)
  {
    v79 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v80 = v125;
    sub_100016B4C(v67 + v79, v125, &qword_100926DC0);
    v81 = v124;
    sub_100748004();
    v82 = v147;
    v83 = v130;
    (*(v147 + 56))(v81, 0, 1, v130);
    v84 = *(v122 + 48);
    v85 = v123;
    sub_100016B4C(v80, v123, &qword_100926DC0);
    sub_100016B4C(v81, v85 + v84, &qword_100926DC0);
    v86 = v80;
    v87 = *(v82 + 48);
    if (v87(v85, 1, v83) == 1)
    {
      sub_10000C8CC(v81, &qword_100926DC0);
      sub_10000C8CC(v86, &qword_100926DC0);
      if (v87(v85 + v84, 1, v83) == 1)
      {
        sub_10000C8CC(v85, &qword_100926DC0);
        goto LABEL_20;
      }
    }

    else
    {
      v88 = v117;
      sub_100016B4C(v85, v117, &qword_100926DC0);
      if (v87(v85 + v84, 1, v83) != 1)
      {
        v112 = v146;
        v113 = v147;
        (*(v147 + 32))(v146, v85 + v84, v83);
        sub_1001360E0(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate);
        v114 = sub_100753014();
        v115 = *(v113 + 8);
        v115(v112, v83);
        sub_10000C8CC(v124, &qword_100926DC0);
        sub_10000C8CC(v125, &qword_100926DC0);
        v115(v88, v83);
        sub_10000C8CC(v85, &qword_100926DC0);
        v77 = v137;
        if (v114)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      sub_10000C8CC(v124, &qword_100926DC0);
      sub_10000C8CC(v125, &qword_100926DC0);
      (*(v147 + 8))(v88, v83);
    }

    sub_10000C8CC(v85, &qword_1009295F8);
    v77 = v137;
  }

LABEL_18:
  if ((*(v77 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v89 = v128;
    sub_100741484();
    v90 = v129;
    v91 = *(v129 + 16);
    v92 = v126;
    v93 = v148;
    v91(v126, v89, v148);
    sub_1001360E0(&qword_100929600, &type metadata accessor for UUID);
    sub_1007544E4();
    v146 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v91(v92, v89, v93);
    (v136)(v127, v153, v151);
    v94 = (*(v90 + 80) + 24) & ~*(v90 + 80);
    v95 = (v118 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 23) & 0xFFFFFFFFFFFFFFF8;
    v97 = v149;
    v98 = (*(v149 + 80) + v96 + 8) & ~*(v149 + 80);
    v99 = v98 + v119;
    v100 = swift_allocObject();
    *(v100 + 16) = v146;
    v101 = *(v90 + 32);
    v101(v100 + v94, v126, v148);
    v102 = (v100 + v95);
    *v102 = v69;
    v102[1] = v71;
    *(v100 + v96) = v154;
    (*(v97 + 32))(v100 + v98, v127, v151);
    *(v100 + v99) = v150;

    sub_1007441F4();

    sub_10000C8CC(&v155, &unk_1009276E0);

    v103 = v120;
    sub_100748004();
    (*(v147 + 56))(v103, 0, 1, v130);
    v104 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
    v105 = v137;
    swift_beginAccess();
    sub_10006644C(v103, v105 + v104, &qword_100926DC0);
    swift_endAccess();
    v106 = v121;
    v107 = v148;
    v101(v121, v128, v148);
    (*(v129 + 56))(v106, 0, 1, v107);
    v108 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10006644C(v106, v105 + v108, &qword_100925B80);
    swift_endAccess();
  }

LABEL_20:
  v109 = v145;
  [*&v140[v145] setHidden:0];
  [*&v109[v141] setHidden:1];

  v109[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia] = 1;

  v110 = *&v143[v142];
  v110[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory] = v152[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v111 = v110;
  sub_1007217A8();
}

_BYTE *sub_1001358B8()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ListTodayCardCollectionViewCell_headerView];
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView;
  result = *(v1 + OBJC_IVAR____TtC22SubscribePageExtensionP33_8767515069BB09BCE0E30A883EC3EF0710HeaderView_mediaView);
  if (result[OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_hasMedia] != 1)
  {
    return v0;
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v4] != 6)
  {
    v5 = [v0 traitCollection];
    v6 = v0;
    v7 = sub_100753804();

    result = v6;
    if ((v7 & 1) == 0)
    {
      return *(v1 + v2);
    }
  }

  return result;
}

double sub_100135990(uint64_t a1, void *a2)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(&v16 - v13, a1, v4, v12);
  (*(v5 + 56))(v14, 0, 1, v4);
  sub_100016B4C(v14, v10, &unk_100926C40);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000C8CC(v10, &unk_100926C40);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_10074F694();
    sub_10074F694();
    [a2 layoutDirection];
    sub_1007539B4();
    (*(v5 + 8))(v7, v4);
  }

  sub_10000C8CC(v14, &unk_100926C40);
  return 20.0;
}

uint64_t sub_100135C98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100135CD0()
{
  v1 = sub_100741494();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10074F704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

void sub_100135E40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100741494() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_10074F704() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_1005276FC(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_100135F80()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001360E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t FlowAction.destination.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C518(&unk_100925750);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];

  sub_10074EC44();
  sub_1001362FC(v1, v9, v5);
  v6 = type metadata accessor for FlowDestination();
  v7 = *(*(v6 - 8) + 48);
  if (v7(v5, 1, v6) != 1)
  {
    return sub_10013AB10(v5, a1, type metadata accessor for FlowDestination);
  }

  swift_storeEnumTagMultiPayload();
  result = (v7)(v5, 1, v6);
  if (result != 1)
  {
    return sub_10000C8CC(v5, &unk_100925750);
  }

  return result;
}

uint64_t sub_1001362FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v301 = a3;
  v302 = a2;
  v4 = sub_10000C518(&qword_100929620);
  __chkstk_darwin(v4 - 8);
  v271 = &v256 - v5;
  v273 = type metadata accessor for ComponentOverflowData();
  v270 = *(v273 - 8);
  __chkstk_darwin(v273);
  v272 = (&v256 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000C518(&qword_100929628);
  __chkstk_darwin(v7 - 8);
  v276 = &v256 - v8;
  v9 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v9 - 8);
  v283 = &v256 - v10;
  v280 = sub_10074ED34();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v278 = &v256 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v12 - 8);
  v269 = &v256 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v268 = &v256 - v15;
  __chkstk_darwin(v16);
  v267 = &v256 - v17;
  __chkstk_darwin(v18);
  v264 = &v256 - v19;
  __chkstk_darwin(v20);
  v266 = &v256 - v21;
  __chkstk_darwin(v22);
  v263 = &v256 - v23;
  __chkstk_darwin(v24);
  v277 = &v256 - v25;
  __chkstk_darwin(v26);
  v295 = &v256 - v27;
  __chkstk_darwin(v28);
  v284 = &v256 - v29;
  __chkstk_darwin(v30);
  v285 = &v256 - v31;
  __chkstk_darwin(v32);
  v288 = &v256 - v33;
  __chkstk_darwin(v34);
  v287 = &v256 - v35;
  __chkstk_darwin(v36);
  v290 = &v256 - v37;
  __chkstk_darwin(v38);
  v291 = &v256 - v39;
  __chkstk_darwin(v40);
  v293 = &v256 - v41;
  __chkstk_darwin(v42);
  v292 = &v256 - v43;
  __chkstk_darwin(v44);
  v46 = &v256 - v45;
  v47 = sub_100741264();
  v298 = *(v47 - 8);
  v299 = v47;
  __chkstk_darwin(v47);
  v265 = &v256 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v262 = &v256 - v50;
  __chkstk_darwin(v51);
  v260 = &v256 - v52;
  __chkstk_darwin(v53);
  v257 = &v256 - v54;
  __chkstk_darwin(v55);
  v275 = &v256 - v56;
  __chkstk_darwin(v57);
  v294 = &v256 - v58;
  __chkstk_darwin(v59);
  v282 = &v256 - v60;
  __chkstk_darwin(v61);
  v281 = &v256 - v62;
  __chkstk_darwin(v63);
  v286 = &v256 - v64;
  __chkstk_darwin(v65);
  v289 = &v256 - v66;
  __chkstk_darwin(v67);
  v69 = &v256 - v68;
  __chkstk_darwin(v70);
  v72 = &v256 - v71;
  __chkstk_darwin(v73);
  v75 = &v256 - v74;
  v76 = sub_10074F4D4();
  v77 = *(v76 - 8);
  __chkstk_darwin(v76);
  v79 = &v256 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FlowDestination();
  v300 = *(v80 - 8);
  __chkstk_darwin(v80);
  v261 = (&v256 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v82);
  v259 = (&v256 - v83);
  __chkstk_darwin(v84);
  v258 = (&v256 - v85);
  __chkstk_darwin(v86);
  v88 = (&v256 - v87);
  sub_100742C94();
  v256 = v77;
  v89 = *(v77 + 88);
  v297 = v76;
  v90 = v89(v79, v76);
  if (v90 != enum case for FlowPage.search(_:))
  {
    v95 = v88;
    v296 = a1;
    v274 = v80;
    if (v90 == enum case for FlowPage.product(_:))
    {
      sub_100742CB4();
      v97 = v298;
      v96 = v299;
      if ((*(v298 + 48))(v46, 1, v299) == 1)
      {
LABEL_5:
        v98 = v46;
        goto LABEL_14;
      }

      (*(v97 + 32))(v75, v46, v96);
      v102 = sub_1007496E4();
      __chkstk_darwin(v102);
      *(&v256 - 2) = v302;
      sub_100742CC4();
      v103 = v304;
      if (v304)
      {

        v104 = sub_1007496B4();
      }

      else
      {
        v104 = 0;
      }

      v116 = sub_10000C518(&qword_100938F00);
      v117 = v116[12];
      v118 = v116[16];
      v119 = v116[20];
      v120 = v116[24];
      v121 = v299;
      (*(v97 + 16))(v95, v75, v299);
      *(v95 + v117) = 0;
      *(v95 + v118) = v103;
      *(v95 + v119) = v104;
      v122 = sub_100742C74();

      (*(v97 + 8))(v75, v121);
      *(v95 + v120) = v122;
      v93 = v274;
      goto LABEL_25;
    }

    v99 = v299;
    if (v90 == enum case for FlowPage.dynamicUI(_:))
    {
      v100 = v295;
      sub_100742CB4();
      v101 = v298;
      if ((*(v298 + 48))(v100, 1, v99) == 1)
      {
        v98 = v100;
        goto LABEL_14;
      }

      v109 = *(v101 + 32);
      v110 = v294;
      v109(v294, v100, v99);
      sub_100748B14();
      sub_100742CC4();
      v111 = v304;
      v92 = v302;
      if (!v304)
      {
        if (qword_100921EE0 != -1)
        {
          swift_once();
        }

        v128 = sub_100752E44();
        sub_10000D0FC(v128, qword_100983318);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A6580;
        sub_1007523A4();
        v306 = v297;
        sub_10000D134(&v304);
        sub_100742C94();
        sub_100752444();
        sub_10000C8CC(&v304, &unk_100923520);
        sub_100752CF4();

        (*(v101 + 8))(v294, v299);
        goto LABEL_16;
      }

      v112 = sub_10000C518(&qword_100929640);
      v113 = v110;
      v114 = *(v112 + 48);
      v109(v95, v113, v99);
      *(v95 + v114) = v111;
      v93 = v274;
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v94 = v95;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.webView(_:))
    {
      v105 = v293;
      sub_100742CB4();
      v106 = v298;
      if ((*(v298 + 48))(v105, 1, v99) == 1)
      {
        v98 = v105;
LABEL_14:
        sub_10000C8CC(v98, &unk_100923970);
        v92 = v302;
        if (qword_100921EE0 == -1)
        {
LABEL_15:
          v107 = sub_100752E44();
          sub_10000D0FC(v107, qword_100983318);
          sub_10000C518(&qword_100923930);
          sub_100752454();
          *(swift_allocObject() + 16) = xmmword_1007A6580;
          sub_1007523A4();
          v306 = v297;
          sub_10000D134(&v304);
          sub_100742C94();
          sub_100752444();
          sub_10000C8CC(&v304, &unk_100923520);
          sub_100752CF4();

LABEL_16:
          sub_10000C8CC(v92, &unk_100923520);
          return (*(v300 + 56))(v301, 1, 1, v274);
        }

LABEL_91:
        swift_once();
        goto LABEL_15;
      }

      v124 = *(v106 + 32);
      v124(v69, v105, v99);
      v124(v95, v69, v99);
      v93 = v274;
LABEL_25:
      swift_storeEnumTagMultiPayload();
LABEL_26:
      v94 = v95;
      v92 = v302;
      goto LABEL_27;
    }

    if (v90 == enum case for FlowPage.unknown(_:))
    {
      v46 = v292;
      sub_100742CB4();
      v115 = v298;
      if ((*(v298 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      (*(v115 + 32))(v72, v46, v99);
      sub_10000C518(&qword_100938EF0);
      (*(v115 + 16))(v95, v72, v99);
      sub_100742CA4();

      (*(v115 + 8))(v72, v99);
      v93 = v274;
      goto LABEL_25;
    }

    v125 = v298;
    if (v90 == enum case for FlowPage.viewController(_:))
    {
      v126 = sub_100016C60(0, &qword_10092B0C0);
      __chkstk_darwin(v126);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_100742CC4();
      v127 = v304;
      if (!v304)
      {
        if (qword_100921EE0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

LABEL_31:

      *v95 = v127;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.gallery(_:))
    {
      v129 = sub_10000C518(&qword_100939AC0);
      __chkstk_darwin(v129);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_100742CC4();
      v127 = v304;
      if (!v304)
      {
        if (qword_100921EE0 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_91;
      }

      goto LABEL_31;
    }

    if (v90 == enum case for FlowPage.video(_:))
    {
      v46 = v291;
      sub_100742CB4();
      if ((*(v125 + 48))(v46, 1, v99) == 1)
      {
        goto LABEL_5;
      }

      v130 = *(v125 + 32);
      v131 = v289;
      v130(v289, v46, v99);
      v132 = sub_10074EC34();
      __chkstk_darwin(v132);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_100742CC4();
      if (v304)
      {
        v133 = sub_10074EC14();
      }

      else
      {

        v133 = 0;
      }

      v146 = *(sub_10000C518(&unk_100938ED0) + 48);
      v130(v95, v131, v99);
      *(v95 + v146) = v133;
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.page(_:))
    {
LABEL_45:
      v134 = v290;
      sub_100742CB4();
      v135 = sub_100743684();
      __chkstk_darwin(v135);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_100742CC4();

      v136 = v304;
      v137 = *(sub_10000C518(&unk_100932490) + 48);
      *v95 = v136;
      sub_100066578(v134, v95 + v137, &unk_100923970);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.searchChartsAndCategories(_:))
    {
      v138 = v290;
      sub_100742CB4();
      v139 = sub_10074CE24();
      __chkstk_darwin(v139);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_100742CC4();

      v140 = v304;
      v141 = *(sub_10000C518(&qword_100929650) + 48);
      *v95 = v140;
      sub_100066578(v138, v95 + v141, &unk_100923970);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.topCharts(_:))
    {
      v142 = v290;
      sub_100742CB4();
      v143 = sub_1007447E4();
      __chkstk_darwin(v143);
      v92 = v302;
      *(&v256 - 2) = v302;
      sub_100742CC4();

      v144 = v304;
      v145 = *(sub_10000C518(&qword_100938E70) + 48);
      *v95 = v144;
      sub_100066578(v142, v95 + v145, &unk_100923970);
      v93 = v274;
      goto LABEL_19;
    }

    if (v90 == enum case for FlowPage.updates(_:))
    {
LABEL_229:

      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.today(_:))
    {
      v147 = v287;
      sub_100742CB4();
      if ((*(v125 + 48))(v147, 1, v99) != 1)
      {

        v150 = *(v125 + 32);
        v151 = v286;
        v150(v286, v147, v99);
        v150(v95, v151, v99);
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v147;
LABEL_59:
      sub_10000C8CC(v148, &unk_100923970);
      if (qword_100921EE0 == -1)
      {
LABEL_60:
        v149 = sub_100752E44();
        sub_10000D0FC(v149, qword_100983318);
        sub_10000C518(&qword_100923930);
        sub_100752454();
        *(swift_allocObject() + 16) = xmmword_1007A6580;
        sub_1007523A4();
        v306 = v297;
        sub_10000D134(&v304);
        sub_100742C94();
        sub_100752444();
        sub_10000C8CC(&v304, &unk_100923520);
        sub_100752CF4();

        goto LABEL_61;
      }

LABEL_155:
      swift_once();
      goto LABEL_60;
    }

    if (v90 == enum case for FlowPage.article(_:))
    {
      sub_100742CB4();
      sub_1007431A4();
      sub_100742CC4();
      sub_100016B4C(v302, &v304, &unk_100923520);
      if (v306)
      {
        sub_10074FBB4();
        swift_dynamicCast();
      }

      else
      {
        sub_10000C8CC(&v304, &unk_100923520);
      }

      v154 = sub_100743194();

      v155 = *(sub_10000C518(&qword_100938E20) + 48);
      *v95 = v154;
      sub_100066578(v288, v95 + v155, &unk_100923970);
      v93 = v274;
      goto LABEL_25;
    }

    if (v90 == enum case for FlowPage.purchases(_:))
    {
      sub_100016C60(0, &qword_100929648);
      sub_100742CC4();

      *v95 = v304;
      v93 = v274;
      goto LABEL_25;
    }

    v152 = v90;
    if (v90 == enum case for FlowPage.inAppPurchaseInstall(_:))
    {
      v153 = v285;
      sub_100742CB4();
      if ((*(v298 + 48))(v153, 1, v299) != 1)
      {
        v157 = v299;
        v158 = *(v298 + 32);
        v159 = v281;
        v158(v281, v285, v299);
        sub_100741EB4();
        sub_100742CC4();

        v160 = v304;
        v161 = *(sub_10000C518(&qword_100938E10) + 48);
        v158(v95, v159, v157);
        *(v95 + v161) = v160;
        v93 = v274;
        goto LABEL_25;
      }

      v148 = v285;
      goto LABEL_59;
    }

    if (v90 == enum case for FlowPage.writeReview(_:))
    {
      v156 = v284;
      sub_100742CB4();
      if ((*(v298 + 48))(v156, 1, v299) == 1)
      {
        v148 = v284;
        goto LABEL_59;
      }

      v164 = *(v298 + 32);
      v164(v282, v284, v299);
      v165 = v283;
      v166 = v280;
      sub_100742CC4();
      if ((*(v279 + 48))(v165, 1, v166) != 1)
      {

        v168 = *(v279 + 32);
        v169 = v278;
        v170 = v280;
        v168(v278, v283, v280);
        v171 = *(sub_10000C518(&unk_100938E00) + 48);
        v164(v95, v282, v299);
        v168(v95 + v171, v169, v170);
        v93 = v274;
        goto LABEL_25;
      }

      sub_10000C8CC(v283, &qword_100929630);
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      v167 = sub_100752E44();
      sub_10000D0FC(v167, qword_100983318);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A6580;
      sub_1007523A4();
      v306 = v297;
      sub_10000D134(&v304);
      sub_100742C94();
      sub_100752444();
      sub_10000C8CC(&v304, &unk_100923520);
      sub_100752CF4();

      (*(v298 + 8))(v282, v299);
LABEL_61:
      v92 = v302;
      goto LABEL_16;
    }

    if (v90 == enum case for FlowPage.reviews(_:))
    {
      v162 = sub_100743834();
      __chkstk_darwin(v162);
      *(&v256 - 2) = v302;
      sub_100742CC4();
      v163 = v304;
      if (!v304)
      {
        if (qword_100921EE0 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_155;
      }
    }

    else
    {
      if (v90 == enum case for FlowPage.account(_:) || v90 == enum case for FlowPage.finance(_:))
      {
        sub_100742CB4();

        v93 = v274;
        goto LABEL_25;
      }

      if (v90 == enum case for FlowPage.hiddenPurchases(_:))
      {
        goto LABEL_229;
      }

      if (v90 == enum case for FlowPage.mso(_:))
      {
        v172 = v277;
        sub_100742CB4();
        if ((*(v298 + 48))(v172, 1, v299) != 1)
        {
          v174 = v299;
          v175 = *(v298 + 32);
          v176 = v275;
          v175(v275, v277, v299);
          sub_100742E04();
          v177 = v276;
          sub_100742CC4();

          v178 = *(sub_10000C518(&qword_100929638) + 48);
          v175(v95, v176, v174);
          sub_100066578(v177, v95 + v178, &qword_100929628);
          v93 = v274;
          goto LABEL_25;
        }

        v148 = v277;
        goto LABEL_59;
      }

      if (v90 == enum case for FlowPage.versionHistory(_:))
      {
        v173 = sub_100743684();
        __chkstk_darwin(v173);
        *(&v256 - 2) = v302;
        sub_100742CC4();
        v163 = v304;
        if (!v304)
        {
          if (qword_100921EE0 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }
      }

      else
      {
        if (v90 == enum case for FlowPage.onboarding(_:))
        {
          __chkstk_darwin(v90);
          *(&v256 - 2) = v302;
          sub_100742CC4();
          v179 = v304;
          if (v304 != 4)
          {

            *v95 = v179;
            v93 = v274;
            goto LABEL_25;
          }

          if (qword_100921EE0 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_155;
        }

        if (v90 == enum case for FlowPage.reviewDetail(_:))
        {
          v180 = sub_10074F074();
          __chkstk_darwin(v180);
          *(&v256 - 2) = v302;
          sub_100742CC4();
          v163 = v304;
          if (!v304)
          {
            if (qword_100921EE0 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else if (v90 == enum case for FlowPage.editorsChoiceDetail(_:))
        {
          v181 = sub_100744464();
          __chkstk_darwin(v181);
          *(&v256 - 2) = v302;
          sub_100742CC4();
          v163 = v304;
          if (!v304)
          {
            if (qword_100921EE0 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }

        else
        {
          if (v90 == enum case for FlowPage.arcade(_:))
          {
            v182 = v290;
            sub_100742CB4();
            sub_100742BC4();
            sub_100742CC4();
            v183 = v304;
            sub_10000C518(&qword_100938EC0);
            *v95 = v183;
            sub_100016B4C(v182, v263, &unk_100923970);
            sub_100016B4C(v182, v266, &unk_100923970);
            sub_100744BD4();

            sub_10000C8CC(v182, &unk_100923970);
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 == enum case for FlowPage.arcadeSubscribe(_:))
          {
            sub_100747F74();
            sub_100742CC4();
            v184 = v304;
            v185 = sub_10000C518(&qword_100938EA0);
            v186 = *(v185 + 48);
            v187 = *(v185 + 64);
            sub_100742CB4();

            *(v95 + v186) = v184;
            *(v95 + v187) = 0;
            v93 = v274;
            goto LABEL_25;
          }

          if (v90 != enum case for FlowPage.upsellMarketingItem(_:))
          {
            if (v90 == enum case for FlowPage.arcadeSeeAllGames(_:))
            {
              v188 = v264;
              sub_100742CB4();
              if ((*(v298 + 48))(v188, 1, v299) != 1)
              {
                v190 = v299;
                v191 = *(v298 + 32);
                v192 = v257;
                v191(v257, v264, v299);
                sub_100748FF4();
                sub_100742CC4();

                v193 = v304;
                v194 = *(sub_10000C518(&qword_100938EB0) + 48);
                *v95 = v193;
                v191(v95 + v194, v192, v190);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v264;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeWelcome(_:))
            {
              v189 = v267;
              sub_100742CB4();
              if ((*(v298 + 48))(v189, 1, v299) != 1)
              {
                v197 = v299;
                v198 = *(v298 + 32);
                v199 = v260;
                v198(v260, v267, v299);
                v200 = sub_10000C518(&qword_100938E90);
                v201 = *(v200 + 48);
                v202 = *(v200 + 64);
                sub_100746564();
                sub_100742CC4();

                v203 = enum case for ArcadeWelcomePage.ContentType.none(_:);
                v204 = sub_100746554();
                (*(*(v204 - 8) + 104))(v95 + v201, v203, v204);
                v198(v95 + v202, v199, v197);
                v93 = v274;
                goto LABEL_25;
              }

              v148 = v267;
              goto LABEL_59;
            }

            if (v90 == enum case for FlowPage.arcadeDownloadPackCategories(_:))
            {
              sub_100742CC4();
              v195 = *(&v304 + 1);
              if (*(&v304 + 1))
              {
                v196 = v304;

                *v95 = v196;
                v95[1] = v195;
                v93 = v274;
                goto LABEL_25;
              }

              if (qword_100921EE0 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.componentOverflow(_:))
            {
              v205 = v271;
              v206 = v273;
              sub_100742CC4();
              if ((*(v270 + 48))(v205, 1, v206) != 1)
              {

                v207 = v272;
                sub_10013AB10(v271, v272, type metadata accessor for ComponentOverflowData);
                v208 = *(sub_10000C518(&unk_100938DD0) + 48);
                *v95 = *v207;
                v209 = *(v273 + 20);
                v210 = sub_1007417F4();
                (*(*(v210 - 8) + 32))(v95 + v208, v207 + v209, v210);
                v93 = v274;
                goto LABEL_25;
              }

              sub_10000C8CC(v271, &qword_100929620);
              if (qword_100921EE0 == -1)
              {
                goto LABEL_60;
              }

              goto LABEL_155;
            }

            if (v90 == enum case for FlowPage.notificationSettings(_:))
            {
              goto LABEL_229;
            }

            if (v90 == enum case for FlowPage.gameAchievements(_:))
            {
              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_100742CC4();
              v211 = v304;
              if (!v304)
              {
                if (qword_100921EE0 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }
            }

            else
            {
              if (v90 == enum case for FlowPage.gameCenterDashboard(_:))
              {
                goto LABEL_229;
              }

              if (v90 != enum case for FlowPage.gameCenterLeaderboards(_:))
              {
                if (v90 == enum case for FlowPage.gameCenterPlayerProfile(_:))
                {
                  sub_100742CC4();

                  *v95 = v304;
                  v93 = v274;
                  goto LABEL_25;
                }

                if (v90 == enum case for FlowPage.reportAConcern(_:))
                {
                  v213 = sub_100748594();
                  __chkstk_darwin(v213);
                  *(&v256 - 2) = v302;
                  sub_100742CC4();
                  if (v304)
                  {
                    v214 = sub_100748584();
                    v215 = sub_100748574();
                    v217 = v216;
                    v218 = sub_100748564();

                    *v95 = v214;
                    v95[1] = v215;
                    v95[2] = v217;
                    v95[3] = v218;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v90 != enum case for FlowPage.reviewSummaryReportConcern(_:))
                  {
                    if (v90 == enum case for FlowPage.shareSheet(_:))
                    {
                      v226 = sub_100746354();
                      __chkstk_darwin(v226);
                      *(&v256 - 2) = v302;
                      sub_100742CC4();
                      if (v304)
                      {
                        sub_10000C518(&qword_100938DF0);
                        *v95 = sub_100746314();
                        v95[1] = sub_100746304();
                        sub_1007462E4();

                        v93 = v274;
                        goto LABEL_25;
                      }

                      if (qword_100921EE0 == -1)
                      {
                        goto LABEL_60;
                      }

                      goto LABEL_155;
                    }

                    if (v90 == enum case for FlowPage.privacyDetail(_:))
                    {
                      v227 = v268;
                      sub_100742CB4();
                      if ((*(v298 + 48))(v227, 1, v299) != 1)
                      {
                        v230 = v298;
                        v229 = v299;
                        v231 = *(v298 + 32);
                        v232 = v262;
                        v231(v262, v268, v299);
                        sub_100743684();
                        sub_100742CC4();

                        v233 = v304;
                        v234 = *(sub_10000C518(&unk_100932490) + 48);
                        *v95 = v233;
                        v231(v95 + v234, v232, v229);
                        (*(v230 + 56))(v95 + v234, 0, 1, v229);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v268;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.privacyDefinitions(_:))
                    {
                      v228 = v269;
                      sub_100742CB4();
                      if ((*(v298 + 48))(v228, 1, v299) != 1)
                      {
                        v236 = v298;
                        v235 = v299;
                        v237 = *(v298 + 32);
                        v238 = v265;
                        v237(v265, v269, v299);
                        sub_100743684();
                        sub_100742CC4();

                        v239 = v304;
                        v240 = *(sub_10000C518(&unk_100932490) + 48);
                        *v95 = v239;
                        v237(v95 + v240, v238, v235);
                        (*(v236 + 56))(v95 + v240, 0, 1, v235);
                        v93 = v274;
                        goto LABEL_25;
                      }

                      v148 = v269;
                      goto LABEL_59;
                    }

                    if (v90 == enum case for FlowPage.accessibilityDetails(_:))
                    {
                      goto LABEL_45;
                    }

                    if (v90 == enum case for FlowPage.appEventDetail(_:))
                    {
                      v241 = sub_1007424A4();
                      __chkstk_darwin(v241);
                      *(&v256 - 2) = v302;
                      sub_100742CC4();
                      v242 = v304;
                      if (!v304)
                      {
                        if (qword_100921EE0 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016B4C(v302, &v304, &unk_100923520);
                      if (v306)
                      {
                        sub_100016C60(0, &qword_100922300);
                        v243 = swift_dynamicCast();
                        v244 = v303;
                        if (!v243)
                        {
                          v244 = 0;
                        }
                      }

                      else
                      {
                        sub_10000C8CC(&v304, &unk_100923520);
                        v244 = 0;
                      }

                      v254 = v258;
                      *v258 = v242;
                      *(v254 + 8) = v244;
                      v93 = v274;
                    }

                    else if (v90 == enum case for FlowPage.contingentOfferDetail(_:))
                    {
                      v245 = sub_10074B384();
                      __chkstk_darwin(v245);
                      *(&v256 - 2) = v302;
                      sub_100742CC4();
                      v246 = v304;
                      if (!v304)
                      {
                        if (qword_100921EE0 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016B4C(v302, &v304, &unk_100923520);
                      if (v306)
                      {
                        sub_100016C60(0, &qword_100922300);
                        v247 = swift_dynamicCast();
                        v248 = v303;
                        if (!v247)
                        {
                          v248 = 0;
                        }
                      }

                      else
                      {
                        sub_10000C8CC(&v304, &unk_100923520);
                        v248 = 0;
                      }

                      v254 = v259;
                      *v259 = v246;
                      *(v254 + 8) = v248;
                      v93 = v274;
                    }

                    else
                    {
                      if (v90 != enum case for FlowPage.offerItemDetail(_:))
                      {
                        if (v90 == enum case for FlowPage.debugSettings(_:))
                        {
                          sub_100742CC4();

                          v253 = v305;
                          *v95 = v304;
                          v95[2] = v253;
                          v93 = v274;
                          goto LABEL_25;
                        }

                        if (v90 == enum case for FlowPage.debugStorefrontPicker(_:) || v90 == enum case for FlowPage.debugTodayCardTriggers(_:))
                        {
                          goto LABEL_229;
                        }

                        v255 = enum case for FlowPage.personalizationTransparency(_:);

                        if (v152 == v255)
                        {
                          v93 = v274;
                          goto LABEL_25;
                        }

                        (*(v256 + 8))(v79, v297);
                        goto LABEL_61;
                      }

                      v249 = sub_1007482D4();
                      __chkstk_darwin(v249);
                      *(&v256 - 2) = v302;
                      sub_100742CC4();
                      v250 = v304;
                      if (!v304)
                      {
                        if (qword_100921EE0 == -1)
                        {
                          goto LABEL_60;
                        }

                        goto LABEL_155;
                      }

                      sub_100016B4C(v302, &v304, &unk_100923520);
                      if (v306)
                      {
                        sub_100016C60(0, &qword_100922300);
                        v251 = swift_dynamicCast();
                        v252 = v303;
                        if (!v251)
                        {
                          v252 = 0;
                        }
                      }

                      else
                      {
                        sub_10000C8CC(&v304, &unk_100923520);
                        v252 = 0;
                      }

                      v254 = v261;
                      *v261 = v250;
                      *(v254 + 8) = v252;
                      v93 = v274;
                    }

                    swift_storeEnumTagMultiPayload();
                    sub_10013AB10(v254, v95, type metadata accessor for FlowDestination);
                    goto LABEL_26;
                  }

                  v220 = sub_10074D5B4();
                  __chkstk_darwin(v220);
                  *(&v256 - 2) = v302;
                  sub_100742CC4();
                  if (v304)
                  {
                    v221 = sub_10074D5A4();
                    v222 = sub_10074D594();
                    v224 = v223;
                    v225 = sub_10074D584();

                    *v95 = v221;
                    v95[1] = v222;
                    v95[2] = v224;
                    v95[3] = v225;
                    v93 = v274;
                    goto LABEL_25;
                  }
                }

                if (qword_100921EE0 == -1)
                {
                  goto LABEL_60;
                }

                goto LABEL_155;
              }

              __chkstk_darwin(v90);
              *(&v256 - 2) = v302;
              sub_100742CC4();
              v211 = v304;
              if (!v304)
              {
                if (qword_100921EE0 != -1)
                {
                  swift_once();
                }

                v219 = sub_100752E44();
                sub_10000D0FC(v219, qword_100983318);
                sub_10000C518(&qword_100923930);
                sub_100752454();
                *(swift_allocObject() + 16) = xmmword_1007A6580;
                sub_1007523A4();
                v306 = v297;
                sub_10000D134(&v304);
                sub_100742C94();
                sub_100752444();
                sub_10000C8CC(&v304, &unk_100923520);
                sub_100752CF4();

                goto LABEL_61;
              }
            }

            v212 = *(&v304 + 1);

            *v95 = v211;
            v95[1] = v212;
            v93 = v274;
            goto LABEL_25;
          }

          sub_10074ADA4();
          sub_100742CC4();
          v163 = v304;
          if (!v304)
          {
            if (qword_100921EE0 == -1)
            {
              goto LABEL_60;
            }

            goto LABEL_155;
          }
        }
      }
    }

    *v95 = v163;
    v93 = v274;
    goto LABEL_25;
  }

  v91 = sub_1007440C4();
  __chkstk_darwin(v91);
  v92 = v302;
  *(&v256 - 2) = v302;
  sub_100742CC4();

  *v88 = v304;
  swift_storeEnumTagMultiPayload();
  v93 = v80;
  v94 = v88;
LABEL_27:
  v123 = v301;
  sub_10013AB10(v94, v301, type metadata accessor for FlowDestination);
  (*(v300 + 56))(v123, 0, 1, v93);
  return sub_10000C8CC(v92, &unk_100923520);
}

double sub_10013AAF0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10013AB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10013ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10074F314();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10074F284();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v18[1] = a2;

    sub_10074F294();
    v13 = (*(a4 + 32))(v12, a3, a4);
    (*(v10 + 8))(v12, v9);
    (*(a4 + 24))(a3, a4);
    v18[0] = v13;
    sub_10074F374();
    v14 = *(a4 + 16);
    v15 = v14(a3, a4);
    sub_10074F324();
    sub_100743364();
    [v15 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();

    v16 = v14(a3, a4);
    [v16 setContentMode:v18[0]];

    v17 = v14(a3, a4);
    sub_1007433C4();
    sub_10004D658();
    sub_100744204();
  }
}

void sub_10013AE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = v6(a3, a4);
  sub_100743204();

  v8 = v6(a3, a4);
  sub_1007433C4();
  sub_10004D658();
  sub_100744274();
}

uint64_t sub_10013AF64()
{
  v1 = sub_10074F314();
  __chkstk_darwin(v1 - 8);
  if (sub_1007427E4())
  {
    sub_10074EC14();
  }

  else
  {
    result = sub_100742804();
    if (!result)
    {
      return result;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView);
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  v4 = sub_10074D294();
  sub_10000D0FC(v4, qword_100982D60);
  sub_10074D1F4();
  [v3 contentMode];
  sub_10074F374();
  sub_10074F324();
  sub_100743364();
  [v3 setContentMode:sub_10074F184()];
  sub_100747FB4();
  sub_1007433A4();
  if (!sub_10074F1E4())
  {
    sub_10000D198();
    sub_100753E34();
  }

  sub_100743224();
  sub_1007433C4();
  sub_10004D658();
  sub_100744204();
}

void *sub_10013B150()
{
  v0 = sub_10074F284();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _swiftEmptyArrayStorage;
  if (sub_1007427E4())
  {
    sub_10074EC14();
  }

  else if (!sub_100742804())
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10074F294();
  sub_10074F254();
  (*(v1 + 8))(v3, v0);
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  v4 = sub_10074D294();
  sub_10000D0FC(v4, qword_100982D60);
  sub_10074D1F4();
  sub_10074F374();

  sub_100753284();
  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();

  return v7;
}

uint64_t sub_10013B344(int a1, int a2)
{
  v66 = a2;
  v3 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F654();
  v5 = *(v4 - 8);
  v72 = v4;
  v73 = v5;
  __chkstk_darwin(v4);
  v7 = (v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v8 - 8);
  v65 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = v57 - v11;
  __chkstk_darwin(v12);
  v63 = v57 - v13;
  __chkstk_darwin(v14);
  v62 = v57 - v15;
  __chkstk_darwin(v16);
  v61 = v57 - v17;
  __chkstk_darwin(v18);
  v59 = v57 - v19;
  __chkstk_darwin(v20);
  v57[5] = v57 - v21;
  __chkstk_darwin(v22);
  v57[4] = v57 - v23;
  __chkstk_darwin(v24);
  *&v58 = v57 - v25;
  __chkstk_darwin(v26);
  v57[3] = v57 - v27;
  __chkstk_darwin(v28);
  v57[2] = v57 - v29;
  __chkstk_darwin(v30);
  v57[1] = v57 - v31;
  __chkstk_darwin(v32);
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  __chkstk_darwin(v36);
  sub_10000C518(&qword_100923E90);
  v37 = *(sub_10074F584() - 8);
  v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v69 = *(v37 + 72);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007A7250;
  v60 = v39;
  v71 = v39 + v38;
  v70 = a1;
  if (a1)
  {
    v40 = 0x3FF0000000000000;
  }

  else
  {
    v40 = 0x4000000000000000;
  }

  v74 = v40;
  sub_10001CC10();
  sub_10074F614();
  v74 = 0x4020000000000000;
  sub_10001CC10();
  sub_10074F614();
  v74 = 0x4020000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v46 = *(v73 + 104);
  v68 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v73 += 104;
  v67 = v46;
  v46(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v74) = 0;
  sub_10074F614();
  v74 = 0;
  sub_10074F614();
  sub_10074F544();
  if (v70)
  {
    v48 = 0x3FF0000000000000;
  }

  else
  {
    v48 = 0x4000000000000000;
  }

  v74 = v48;
  sub_10074F614();
  v74 = 0x4024000000000000;
  sub_10074F614();
  v74 = 0x4024000000000000;
  sub_10074F614();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10074F614();
  v74 = 0;
  sub_10074F614();
  sub_10074F544();
  if (v70)
  {
    v50 = 0x4000000000000000;
  }

  else
  {
    v50 = 0x4008000000000000;
  }

  v74 = v50;
  sub_10074F614();
  if (v66)
  {
    v51 = 12.0;
  }

  else
  {
    v51 = 20.0;
  }

  v74 = *&v51;
  sub_10074F614();
  v74 = *&v51;
  sub_10074F614();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10074F614();
  v74 = 0;
  sub_10074F614();
  v58 = left;
  sub_10074F544();
  if (v70)
  {
    v52 = 0x4000000000000000;
  }

  else
  {
    v52 = 0x4010000000000000;
  }

  v74 = v52;
  sub_10074F614();
  v74 = *&v51;
  sub_10074F614();
  v74 = *&v51;
  sub_10074F614();
  *v7 = vdupq_n_s64(0x4041000000000000uLL);
  v67(v7, v68, v72);
  sub_1007535A4();
  LOBYTE(v74) = 0;
  sub_10074F614();
  v74 = 0;
  sub_10074F614();
  sub_10074F544();
  if (v70)
  {
    v53 = 0x4008000000000000;
  }

  else
  {
    v53 = 0x4014000000000000;
  }

  v74 = v53;
  sub_10074F614();
  if (v66)
  {
    v54 = 12.0;
  }

  else
  {
    v54 = 24.0;
  }

  v74 = *&v54;
  sub_10074F614();
  v74 = *&v51;
  sub_10074F614();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10074F614();
  v74 = 0;
  sub_10074F614();
  sub_10074F544();
  if (v70)
  {
    v55 = 0x4008000000000000;
  }

  else
  {
    v55 = 0x4018000000000000;
  }

  v74 = v55;
  sub_10074F614();
  v74 = *&v54;
  sub_10074F614();
  v74 = *&v51;
  sub_10074F614();
  *v7 = vdupq_n_s64(0x404A000000000000uLL);
  v67(v7, v68, v72);
  LOBYTE(v74) = 0;
  sub_10074F614();
  v74 = 0;
  sub_10074F614();
  sub_10074F544();
  return v60;
}

Swift::Int TodayCardTitleBackingGradient.Style.hashValue.getter(char a1)
{
  sub_100754834();
  sub_100754844(a1 & 1);
  return sub_100754884();
}

unint64_t sub_10013BF9C()
{
  result = qword_100929658;
  if (!qword_100929658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100929658);
  }

  return result;
}

id sub_10013C000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a3;
  v40 = a2;
  v41 = sub_100745394();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100745374();
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007453C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  sub_1007453D4();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_badge;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v4[v17], v10);
  swift_beginAccess();
  (*(v11 + 24))(&v4[v17], v16, v10);
  swift_endAccess();
  sub_1005900E0();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  v19 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_titleLabel];
  sub_1007453E4();
  if (v20)
  {
    v21 = sub_100753064();
  }

  else
  {
    v21 = 0;
  }

  [v19 setText:v21];

  v22 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_descriptionLabel];
  sub_100745354();
  if (v23)
  {
    v24 = sub_100753064();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v25 = sub_100745344();
  if (v25)
  {
    v26 = v25;
    sub_10074ECB4();
    v27 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton];
    if (v28)
    {
      v29 = sub_100753064();
    }

    else
    {
      v29 = 0;
    }

    [v27 setTitle:v29 forState:0];

    v32 = swift_allocObject();
    *(v32 + 16) = v37;
    *(v32 + 24) = v26;
    v33 = &v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v34 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
    *v33 = sub_10013D530;
    v33[1] = v32;

    v31 = v34;
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButton] setTitle:0 forState:0];
    v30 = &v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
    v31 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler];
    *v30 = 0;
    *(v30 + 1) = 0;
  }

  sub_1000164A8(v31);
  sub_100745384();
  sub_1007453A4();
  sub_10058D0A8(v40, v9, v6);
  (*(v39 + 8))(v6, v41);
  (*(v7 + 8))(v9, v38);
  return [v4 setNeedsLayout];
}

uint64_t sub_10013C494(uint64_t a1, uint64_t a2)
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

uint64_t sub_10013C5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t *a4@<X8>)
{
  v121 = a2;
  v103 = a4;
  v6 = sub_1007453C4();
  v105 = *(v6 - 8);
  v106 = v6;
  __chkstk_darwin(v6);
  v104 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_10074CD14();
  v115 = *(v119 - 8);
  __chkstk_darwin(v119);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100740E74();
  v111 = *(v10 - 8);
  v112 = v10;
  __chkstk_darwin(v10);
  v110 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100749194();
  v101 = *(v12 - 8);
  v102 = v12;
  __chkstk_darwin(v12);
  v100 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v96 - v15;
  v16 = sub_100745394();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v96 - v22;
  v122 = [a3 traitCollection];
  sub_1007453A4();
  (*(v17 + 104))(v19, enum case for BreakoutDetails.BackgroundStyle.material(_:), v16);
  sub_10013D538(&qword_100929660, &type metadata accessor for BreakoutDetails.BackgroundStyle);
  sub_100753274();
  sub_100753274();
  if (v144 != v140 || v145 != v141)
  {
    sub_100754754();
  }

  v24 = *(v17 + 8);
  v24(v19, v16);
  v24(v23, v16);

  v25 = type metadata accessor for BreakoutDetailsView.Config(0);
  sub_10058D4DC(v121, v120);
  v117 = sub_100038D38();
  v118 = v25;
  v26 = sub_100753C14();
  v27 = sub_1007453E4();
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
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
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
  sub_1007453E4();
  v39 = sub_10074F3F4();
  v146 = v39;
  v109 = sub_10013D538(&qword_10092AC70, &type metadata accessor for Feature);
  v147 = v109;
  v40 = sub_10000D134(&v144);
  v41 = *(v39 - 8);
  v42 = *(v41 + 104);
  v116 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v113 = v42;
  v114 = v41 + 104;
  (v42)(v40);
  v43 = v26;
  sub_10074FC74();
  sub_10000C620(&v144);
  v44 = v33;
  v107 = v43;
  sub_10074CD04();
  sub_10074CCE4();
  v115 = *(v115 + 8);
  (v115)(v33, v34);
  v45 = sub_100753C14();
  v46 = sub_100745354();
  v108 = v44;
  if (!v47)
  {
    v51 = v45;
    goto LABEL_17;
  }

  v140 = v46;
  v141 = v47;
  v48 = v110;
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
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
  sub_100745354();
  v56 = v109;
  v142 = v39;
  v143 = v109;
  v57 = sub_10000D134(&v140);
  v113(v57, v52, v39);
  v58 = v51;
  v98 = v39;
  v59 = v56;
  v60 = v58;
  sub_10074FC74();
  sub_10000C620(&v140);
  v61 = v108;
  v97 = v60;
  sub_10074CD04();
  sub_10074CCE4();
  v62 = v119;
  (v115)(v61, v119);
  v63 = v104;
  v99 = v29;
  sub_1007453D4();
  v65 = v105;
  v64 = v106;
  v66 = (*(v105 + 88))(v63, v106);
  if (v66 == enum case for BreakoutDetails.Badge.text(_:))
  {
    (*(v65 + 96))(v63, v64);
    sub_100753C14();
    v67 = v98;
    *(&v138 + 1) = v98;
    v139 = v59;
    v68 = sub_10000D134(&v137);
    v69 = v113;
    v113(v68, v116, v67);
    sub_10074FC74();
    sub_10000C620(&v137);
    sub_10074CD04();
    sub_10074CCE4();
    (v115)(v61, v62);
    v70 = *(&v135 + 1);
    v71 = v136;
    v72 = sub_10000C888(&v134, *(&v135 + 1));
    *(&v138 + 1) = v70;
    v139 = *(v71 + 8);
    v73 = sub_10000D134(&v137);
    (*(*(v70 - 8) + 16))(v73, v72, v70);
    sub_10000C620(&v134);
    v74 = v69;
    if (!sub_100745344())
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
        if (sub_100745344())
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
        if (sub_100745344())
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

    v75 = sub_100750F34();
    swift_allocObject();
    v76 = sub_100750F14();
    *(&v138 + 1) = v75;
    v139 = &protocol witness table for LayoutViewPlaceholder;
    *&v137 = v76;
    v61 = v108;
    v74 = v113;
    if (!sub_100745344())
    {
      goto LABEL_39;
    }
  }

LABEL_30:
  v77 = sub_100753C14();
  v78 = sub_10074ECB4();
  if (!v79)
  {
    goto LABEL_37;
  }

  *&v134 = v78;
  *(&v134 + 1) = v79;
  v80 = v110;
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
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
  sub_10074ECB4();
  *(&v135 + 1) = v67;
  v136 = v109;
  v86 = sub_10000D134(&v134);
  v74(v86, v116, v67);
  v87 = v77;
  sub_10074FC74();
  sub_10000C620(&v134);
  sub_10074CD04();
  sub_10074CCE4();

  (v115)(v61, v119);
LABEL_40:
  v88 = v101;
  v89 = v102;
  (*(v101 + 16))(v100, v120, v102);
  sub_10000C824(&v144, &v133);
  sub_10000C824(&v140, &v132);
  v131 = 0;
  v130 = 0u;
  *&v129[40] = 0u;
  sub_100016B4C(&v137, v129, &unk_100928A00);
  sub_100016B4C(&v134, v123, &qword_10092BC30);
  v90 = v124;
  if (v124)
  {
    v91 = v125;
    v92 = sub_10000C888(v123, v124);
    *(&v127 + 1) = v90;
    v128 = *(v91 + 8);
    v93 = sub_10000D134(&v126);
    (*(*(v90 - 8) + 16))(v93, v92, v90);
    sub_10000C620(v123);
  }

  else
  {
    sub_10000C8CC(v123, &qword_10092BC30);
    v126 = 0u;
    v127 = 0u;
    v128 = 0;
  }

  v94 = sub_1007491B4();
  v95 = v103;
  v103[3] = v94;
  v95[4] = sub_10013D538(&qword_100929668, &type metadata accessor for BreakoutDetailsLayout);
  v95[5] = sub_10013D538(&qword_100929670, &type metadata accessor for BreakoutDetailsLayout);
  sub_10000D134(v95);
  sub_1007491A4();

  sub_10000C8CC(&v134, &qword_10092BC30);
  sub_10000C620(&v140);
  sub_10000C620(&v144);
  (*(v88 + 8))(v120, v89);
  return sub_10000C8CC(&v137, &unk_100928A00);
}