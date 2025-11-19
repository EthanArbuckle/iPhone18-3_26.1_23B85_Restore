unint64_t sub_100414E50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000C518(&qword_100936E00);
    v3 = sub_1007546B4();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = sub_100412104(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100414F4C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936B88);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936D48);
    v7 = sub_1007546B4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936B88);
      result = sub_100412914(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100744EA4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 16 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100415150(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C518(a2);
  v4 = sub_1007546B4();
  v5 = a1[4];
  v6 = a1[5];
  result = sub_100412104(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v17 = v6;
    return v4;
  }

  v9 = (a1 + 7);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    *(v4[7] + 8 * result) = v6;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v4[2] = v12;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v13 = v9 + 2;
    v5 = *(v9 - 1);
    v14 = *v9;
    v15 = v6;
    result = sub_100412104(v5);
    v9 = v13;
    v6 = v14;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100415244(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936E10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936E18);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936E10);
      result = sub_100412840(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100742F74();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100415440(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10000C518(a2);
    v4 = sub_1007546B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      swift_unknownObjectRetain();
      result = sub_1003861D0(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
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

void *sub_100415550(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000C518(a2);
  v4 = sub_1007546B4();
  v5 = a1[4];
  v6 = a1[5];
  v7 = sub_100412104(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v4;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 7);
  while (1)
  {
    *(v4 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v5;
    *(v4[7] + 8 * v9) = result;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v11 + 2;
    v5 = *(v11 - 1);
    v16 = *v11;

    v9 = sub_100412104(v5);
    v11 = v15;
    result = v16;
    if (v17)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100415650(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936DD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936DE0);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936DD8);
      result = sub_100412B90(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100752C84();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100012160(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100415840(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100936DB8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10000C518(&qword_100936DC0);
    v7 = sub_1007546B4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016B4C(v9, v5, &qword_100936DB8);
      result = sub_100412ABC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100752C34();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_100012160(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100415A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Accessory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100415A94(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100415AF4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v11 = v10;
  v12 = type metadata accessor for AppEventView();

  return sub_100194FE8(v11, v8, a6, a4, v12, ObjectType);
}

id sub_100415B78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_100195300(*a1, a3);

  return [v3 setNeedsLayout];
}

uint64_t sub_100415BD0(void *a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppEventCollectionViewCell_appEventView];
  [v2 bounds];
  v6 = a1[3];
  v7 = a1[4];
  v8 = sub_10000C888(a1, v6);

  return sub_10019564C(v8, a2, v5, v6, v7);
}

uint64_t sub_100415D40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100415D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v10 = v9;
  v11 = [a5 traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = sub_100753954();

  if ((v13 & 1) == 0)
  {
    if (qword_100920180 != -1)
    {
      swift_once();
    }

    sub_100536A04(&unk_10097D3C0, a5);
    if (qword_100920458 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AppEventCardLayout.Metrics(0);
    v18 = sub_10000D0FC(v17, qword_10097E0D8);
    sub_10010F91C(v18, a1, a4, a5, ObjectType);
    goto LABEL_28;
  }

  v14 = _swiftEmptyArrayStorage;
  v33 = _swiftEmptyArrayStorage;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    do
    {
      sub_10000C824(v16, v32);
      sub_100012160(v32, v30);
      sub_10000C518(&qword_1009242A0);
      sub_1007428B4();
      if ((swift_dynamicCast() & 1) != 0 && v31)
      {
        sub_100753284();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v14 = v33;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (!(v14 >> 62))
  {
    v19 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v27 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v28 = [v27 absoluteDimension:?];
    v29 = sub_100749A04();

    return v29;
  }

  v19 = sub_100754664();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_17:
  result = type metadata accessor for AppEventView();
  if (v19 >= 1)
  {
    v21 = result;
    v22 = 0;
    v23 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v24 = sub_100754574();
      }

      else
      {
        v24 = *(v14 + 8 * v22 + 32);
      }

      ++v22;
      sub_100194FE8(v10, v24, a5, a4, v21, ObjectType);
      v26 = v25;

      if (v23 <= v26)
      {
        v23 = v26;
      }
    }

    while (v19 != v22);
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004162D4()
{
  v1 = v0;
  v2 = sub_100745334();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002920B8();
  sub_10074FB64();
  sub_100747C44();
  if (swift_dynamicCastClass())
  {
    v6 = sub_100747C34();
    if (v6 >> 62)
    {
      goto LABEL_29;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
      do
      {
        sub_1007442C4();
        sub_1007526E4();
        v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32GridTodayBrickCollectionViewCell_grid];
        v20[2] = v26;
        v21 = v8;
        sub_100747C24();
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
        v20[1] = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType;
        v11 = v21;
        v21[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType] = v10;
        sub_100602594();
        [v11 setNeedsLayout];
        v12 = sub_100747C34();
        if (v12 >> 62)
        {
          v1 = sub_100754664();
        }

        else
        {
          v1 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *&v21[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = v1;
        sub_100602764();
        v13 = sub_100747C34();
        v14 = v13;
        if (v13 >> 62)
        {
          v2 = sub_100754664();
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
          sub_100754574();
          v15 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_22:
          if (sub_10074EF64())
          {
            v1 = v21;
            sub_10074F374();
            v25 = 0;
            memset(v24, 0, sizeof(v24));
            v3 = swift_allocObject();
            *(v3 + 16) = v1;
            *(v3 + 24) = v5;
            v16 = v1;
            sub_1007441F4();

            v2 = v20[0];

            sub_100416858(v24);
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
        v18 = sub_100754664();
      }

      while (v18);
    }
  }
}

uint64_t type metadata accessor for GridTodayBrickCollectionViewCell()
{
  result = qword_100936EF8;
  if (!qword_100936EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100416820()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100416858(uint64_t a1)
{
  v2 = sub_10000C518(&unk_1009276E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CondensedInAppPurchaseContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v91 = a2;
  v4 = sub_100741E54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100741C54();
  v94 = *(v8 - 8);
  __chkstk_darwin(v8);
  v92 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v93 = &v77 - v11;
  v12 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v12 - 8);
  v90 = &v77 - v13;
  v89 = sub_10074C3E4();
  v84 = *(v89 - 1);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925560);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v86 = &v77 - v16;
  v17 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = sub_10000C518(&qword_100923590);
  __chkstk_darwin(v19 - 8);
  v82 = &v77 - v20;
  v21 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v21 - 8);
  v23 = &v77 - v22;
  v24 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v24 - 8);
  v26 = &v77 - v25;
  v27 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v27 - 8);
  v29 = &v77 - v28;
  sub_100741ED4();
  sub_10041AA54(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
  result = sub_1007468B4();
  if (*&v95[0])
  {
    v78 = v8;
    v79 = v7;
    v80 = v5;
    v81 = v4;
    v31 = sub_100741EC4();

    v32 = sub_100741D14();
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_headerLabel];
    v34 = "onLayoutEnvironment>16";
    if (v32)
    {
      v34 = "ultType.Heading.InAppPurchase";
      v35._countAndFlagsBits = 0xD00000000000003ALL;
    }

    else
    {
      v35._countAndFlagsBits = 0xD00000000000002DLL;
    }

    v35._object = (v34 | 0x8000000000000000);
    v98._countAndFlagsBits = 0;
    v98._object = 0xE000000000000000;
    sub_1007458B4(v35, v98);
    v36 = sub_100753064();

    [v33 setText:v36];

    v37 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_titleLabel];

    sub_10074EF34();
    if (v38)
    {
      v39 = sub_100753064();
    }

    else
    {
      v39 = 0;
    }

    [v37 setText:v39];

    v40 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_subtitleLabel];
    sub_100741D24();
    if (v41)
    {
      v42 = sub_100753064();
    }

    else
    {
      v42 = 0;
    }

    [v40 setText:v42];

    v43 = v3;
    sub_1000F4700();
    if (sub_10074EF04())
    {
      v44 = enum case for OfferStyle.white(_:);
      v45 = sub_100742E24();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v29, v44, v45);
      (*(v46 + 56))(v29, 0, 1, v45);
      v43 = v3;
      v47 = sub_100745E94();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
      v48 = sub_10074F8B4();
      (*(*(v48 - 8) + 56))(v23, 1, 1, v48);
      v49 = sub_1007455E4();
      v50 = v82;
      (*(*(v49 - 8) + 56))(v82, 1, 1, v49);
      memset(v95, 0, 32);
      v51 = sub_100749EA4();

      sub_10000C8CC(v95, &unk_100923520);
      sub_10000C8CC(v50, &qword_100923590);
      sub_10000C8CC(v23, &unk_100925520);
      sub_10000C8CC(v26, &unk_1009259A0);
      sub_10000C8CC(v29, &unk_100925530);
    }

    else
    {
      v51 = 0;
    }

    v82 = v51;
    v77 = v43;
    v52 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_offerButton];
    v53 = sub_10074EDF4();

    v54 = sub_10000C518(&unk_10092EEA0);
    v55 = v83;
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    v56 = v84;
    v57 = v89;
    (*(v84 + 104))(v85, enum case for OfferButtonSubtitlePosition.right(_:), v89);
    (*(v56 + 56))(v90, 1, 1, v57);
    sub_10041AA54(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    v58 = v86;
    sub_10074A9C4();
    sub_10015DE40(v51, v53, 0, v55, v58, v91, 0, 0);

    (*(v87 + 8))(v58, v88);
    sub_10000C8CC(v55, &unk_100925540);
    [v52 setHidden:0];
    sub_1007442C4();
    sub_100752764();
    sub_100752D34();
    v59 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView];
    v60 = *&v95[0];
    v96.value.super.isa = 0;
    v96.is_nil = 0;
    sub_100743384(v96, v61);
    v97.value.super.isa = 0;
    v97.is_nil = 0;
    sub_100743384(v97, v62);
    sub_1007433C4();
    sub_10041AA54(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744274();
    v91 = v60;
    sub_100744274();
    if (qword_100920240 != -1)
    {
      swift_once();
    }

    v90 = qword_10097DA98;
    v63 = v93;
    sub_100741D34();
    v64 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v65 = v94;
    v66 = v78;
    (*(v94 + 24))(&v59[v64], v63, v78);
    swift_endAccess();
    v89 = *(v65 + 16);
    v67 = v92;
    (v89)(v92, &v59[v64], v66);
    sub_100275D50(v67);
    v68 = *(v65 + 8);
    v68(v67, v66);
    v68(v63, v66);
    [v59 setBackgroundColor:v90];
    sub_1006C2A3C(v31, v59, v91);
    (v89)(v63, &v59[v64], v66);
    sub_100275D50(v63);
    v68(v63, v66);
    [v59 setNeedsLayout];
    [v59 setHidden:0];
    v69 = v80;
    v70 = &v59[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_metrics];
    v71 = v79;
    v72 = v81;
    (*(v80 + 16))(v79, v70, v81);
    sub_100741E04();
    v74 = v73;
    sub_100741E44();
    v76 = v77;
    *&v77[OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_tileOffset] = v74 + v75;
    [v76 setNeedsLayout];

    return (*(v69 + 8))(v71, v72);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.fetch(for:in:on:asPartOf:)(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a1, v6);
  sub_10000C518(&unk_100923100);
  sub_100741ED4();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = sub_100741EC4();

    sub_1006C2A3C(v5, *(v2 + OBJC_IVAR____TtC22SubscribePageExtension33CondensedInAppPurchaseContentView_inAppPurchaseView), a2);
  }

  return result;
}

uint64_t CondensedInAppPurchaseContentView.cancelArtworkFetches(on:asPartOf:deprioritizingFetches:)(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_100743384(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_100743384(v6, v3);
  sub_1007433C4();
  sub_10041AA54(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  return sub_100744274();
}

uint64_t static CondensedInAppPurchaseContentView.prefetchArtwork(for:with:asPartOf:)()
{
  sub_100741ED4();
  sub_10041AA54(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
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

double sub_10041787C(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v137 = a3;
  v152 = a1;
  v136 = sub_100750CC4();
  v156 = *(v136 - 8);
  __chkstk_darwin(v136);
  v122 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_100750CB4();
  v155 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100750C64();
  v154 = *(v135 - 8);
  __chkstk_darwin(v135);
  v119 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750D04();
  v124 = *(v7 - 8);
  v125 = v7;
  __chkstk_darwin(v7);
  v123 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007479B4();
  v130 = *(v9 - 8);
  v131 = v9;
  __chkstk_darwin(v9);
  v138 = (&v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v129 = &v110 - v12;
  v151 = sub_10074CD14();
  v153 = *(v151 - 8);
  __chkstk_darwin(v151);
  v144 = (&v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100750304();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100741E54();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741DD4();
  sub_100741E14();
  (*(v19 + 8))(v21, v18);
  v134 = sub_100750F34();
  swift_allocObject();
  v128 = sub_100750F14();
  v157 = a2;
  sub_100741AA4();
  LODWORD(v150) = enum case for FontSource.useCase(_:);
  v22 = *(v15 + 104);
  v148 = v15 + 104;
  v149 = v22;
  v140 = v14;
  v22(v17);
  v23 = v137;
  v24.super.isa = v137;
  v25.super.isa = sub_1007502F4(v24).super.isa;
  v26 = *(v15 + 8);
  v146 = v15 + 8;
  v147 = v26;
  v26(v17, v14);
  v27 = sub_100741D14();
  v28 = "onLayoutEnvironment>16";
  if (v27)
  {
    v28 = "ultType.Heading.InAppPurchase";
    v29._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v29._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v29._object = (v28 | 0x8000000000000000);
  v178._countAndFlagsBits = 0;
  v178._object = 0xE000000000000000;
  sub_1007458B4(v29, v178);
  v139 = v30;
  v31 = v25.super.isa;
  sub_100741B24();
  v32 = sub_10074F3F4();
  v176 = v32;
  v145 = sub_10041AA54(&qword_10092AC70, &type metadata accessor for Feature);
  v177 = v145;
  v33 = sub_10000D134(v175);
  LODWORD(v142) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v34 = *(v32 - 8);
  v141 = *(v34 + 104);
  v143 = (v34 + 104);
  v141(v33);
  sub_10074FC74();
  sub_10000C620(v175);
  v35 = v144;
  v118 = v31;
  sub_10074CD04();
  sub_10074CCE4();
  v139 = *(v153 + 8);
  v153 += 8;
  v36 = v35;
  v37 = v151;
  (v139)(v36, v151);
  sub_100741B84();
  v38 = v140;
  v149(v17, v150, v140);
  v39.super.isa = v23;
  isa = sub_1007502F4(v39).super.isa;
  v147(v17, v38);
  sub_10074EF34();
  v41 = isa;
  sub_100741B14();
  v173 = v32;
  v174 = v145;
  v42 = sub_10000D134(v172);
  (v141)(v42, v142, v32);
  sub_10074FC74();
  sub_10000C620(v172);
  v43 = v144;
  v117 = v41;
  sub_10074CD04();
  sub_10074CCE4();
  (v139)(v43, v37);
  sub_100741AC4();
  v44 = v140;
  v149(v17, v150, v140);
  v45 = v137;
  v46.super.isa = v137;
  v47 = sub_1007502F4(v46).super.isa;
  v147(v17, v44);
  sub_100741D24();
  v48 = v47;
  v49.super.isa = v45;
  sub_100741B74(v49);
  v170 = v32;
  v171 = v145;
  v50 = sub_10000D134(v169);
  (v141)(v50, v142, v32);
  sub_10074FC74();
  sub_10000C620(v169);
  v116 = v48;
  sub_10074CD04();
  sub_10074CCE4();
  (v139)(v43, v151);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v51 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v51 = qword_10093FF58;
  }

  v52 = v131;
  v53 = sub_10000D0FC(v131, v51);
  v54 = v130;
  v55 = v138;
  (*(v130 + 16))(v138, v53, v52);
  (*(v54 + 32))(v129, v55, v52);
  sub_100747964();
  sub_100747994();
  v56 = v134;
  swift_allocObject();
  v57 = sub_100750F14();
  v168[4] = &protocol witness table for LayoutViewPlaceholder;
  v168[3] = v56;
  v168[0] = v128;
  v167[4] = &protocol witness table for LayoutViewPlaceholder;
  v167[3] = v56;
  v167[0] = v57;
  v115 = v57;
  sub_10000C518(&unk_100923060);
  v58 = *(sub_100750CF4() - 8);
  v127 = *(v58 + 72);
  v59 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v113 = 4 * v127;
  v60 = swift_allocObject();
  v114 = v60;
  *(v60 + 16) = xmmword_1007AB1A0;
  v61 = v60 + v59;

  sub_100741A94();
  v165 = &type metadata for CGFloat;
  v166 = &protocol witness table for CGFloat;
  v164[0] = v62;
  sub_100741B54();
  v112 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v63 = v154;
  v64 = *(v154 + 104);
  v134 = v154 + 104;
  v138 = v64;
  v65 = v119;
  v64();
  v66 = sub_10000C518(&unk_100944F30);
  v67 = *(v155 + 72);
  v139 = *(v155 + 80);
  v140 = v66;
  v68 = v155;
  v132 = (v139 + 32) & ~v139;
  v152 = 2 * v67;
  v153 = 3 * v67;
  v151 = v67;
  v69 = swift_allocObject();
  v150 = xmmword_1007A5620;
  *(v69 + 16) = xmmword_1007A5620;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v159 = v69;
  v148 = sub_10041AA54(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v147 = sub_10000C518(&unk_100944F40);
  v149 = sub_100016BFC();
  v71 = v120;
  v70 = v121;
  sub_1007543A4();
  LODWORD(v146) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v72 = v156;
  v144 = *(v156 + 104);
  v145 = v156 + 104;
  v73 = v122;
  v74 = v136;
  v144(v122);
  v133 = v61;
  sub_100750CE4();
  v75 = *(v72 + 8);
  v156 = v72 + 8;
  v143 = v75;
  v75(v73, v74);
  v76 = *(v68 + 8);
  v155 = v68 + 8;
  v142 = v76;
  v76(v71, v70);
  v77 = *(v63 + 8);
  v154 = v63 + 8;
  v141 = v77;
  (v77)(v65, v135);
  sub_10000C8CC(v162, &qword_100931390);
  sub_10000C620(v164);
  v78 = v176;
  v79 = v177;
  v80 = sub_10000C888(v175, v176);
  v165 = v78;
  v166 = *(v79 + 8);
  v81 = sub_10000D134(v164);
  (*(*(v78 - 8) + 16))(v81, v80, v78);
  sub_100741AF4();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  v126 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  (v138)(v65);
  v82 = swift_allocObject();
  *(v82 + 16) = v150;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v158 = v82;
  sub_1007543A4();
  v83 = v136;
  (v144)(v73, v146, v136);
  v84 = v127;
  sub_100750CE4();
  v85 = v83;
  v143(v73, v83);
  v142(v71, v70);
  v86 = v135;
  (v141)(v65, v135);
  sub_10000C8CC(&v159, &qword_100931390);
  sub_10000C620(v162);
  sub_10000C620(v164);
  v111 = 2 * v84;
  v87 = v173;
  v88 = v174;
  v89 = sub_10000C888(v172, v173);
  v165 = v87;
  v166 = *(v88 + 8);
  v90 = sub_10000D134(v164);
  (*(*(v87 - 8) + 16))(v90, v89, v87);
  sub_100741AE4();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  (v138)(v65, v126, v86);
  v91 = swift_allocObject();
  *(v91 + 16) = v150;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v158 = v91;
  sub_1007543A4();
  (v144)(v73, v146, v85);
  v92 = v111;
  sub_100750CE4();
  v143(v73, v85);
  v142(v71, v70);
  v93 = v86;
  (v141)(v65, v86);
  sub_10000C8CC(&v159, &qword_100931390);
  sub_10000C620(v162);
  sub_10000C620(v164);
  v127 += v92;
  v94 = v170;
  v95 = v171;
  v96 = sub_10000C888(v169, v170);
  v165 = v94;
  v166 = *(v95 + 8);
  v97 = sub_10000D134(v164);
  (*(*(v94 - 8) + 16))(v97, v96, v94);
  sub_100741B04();
  v161 = 0;
  v159 = 0u;
  v160 = 0u;
  (v138)(v65, v126, v86);
  v98 = swift_allocObject();
  *(v98 + 16) = v150;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v158 = v98;
  sub_1007543A4();
  v99 = v136;
  (v144)(v73, v146, v136);
  sub_100750CE4();
  v143(v73, v99);
  v142(v71, v70);
  (v141)(v65, v93);
  sub_10000C8CC(&v159, &qword_100931390);
  sub_10000C620(v162);
  sub_10000C620(v164);
  sub_100741B54();
  v163 = 0;
  memset(v162, 0, sizeof(v162));
  (v138)(v65, v112, v93);
  v100 = swift_allocObject();
  *(v100 + 16) = v150;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v159 = v100;
  sub_1007543A4();
  (v144)(v73, v146, v99);
  sub_100750CE4();
  v143(v73, v99);
  v142(v71, v70);
  (v141)(v65, v93);
  sub_10000C8CC(v162, &qword_100931390);
  sub_10000C620(v164);
  v101 = v123;
  sub_100750CD4();
  sub_10000C620(v167);
  sub_10000C620(v168);
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_1007A5CF0;
  v103 = v137;
  *(v102 + 32) = v137;
  v104 = v103;
  v105 = sub_100751044();
  v106 = v125;
  sub_100750404();
  v108 = v107;

  (*(v124 + 8))(v101, v106);
  (*(v130 + 8))(v129, v131);
  sub_10000C620(v169);
  sub_10000C620(v172);
  sub_10000C620(v175);
  return v108;
}

double sub_100418DA4(uint64_t a1, uint64_t a2, objc_class *a3)
{
  v170 = a3;
  v174 = a1;
  v146 = sub_100750F54();
  v144 = *(v146 - 8);
  __chkstk_darwin(v146);
  v145 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v142 = &v126 - v7;
  v143 = sub_100750D04();
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v158 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_100750CC4();
  v181 = *(v179 - 8);
  __chkstk_darwin(v179);
  v136 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_100750CB4();
  v182 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_100750C64();
  v180 = *(v176 - 8);
  __chkstk_darwin(v176);
  v133 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750F84();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v138 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1007479B4();
  v156 = *(v14 - 8);
  v157 = v14;
  __chkstk_darwin(v14);
  v161 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v155 = &v126 - v17;
  v175 = sub_10074CD14();
  *&v178 = *(v175 - 8);
  __chkstk_darwin(v175);
  v19 = &v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100750304();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100741E54();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741DD4();
  sub_100741E14();
  (*(v25 + 8))(v27, v24);
  v153 = sub_100750F34();
  swift_allocObject();
  v154 = sub_100750F14();
  sub_100741AA4();
  LODWORD(v173) = enum case for FontSource.useCase(_:);
  v28 = *(v21 + 104);
  v171 = v21 + 104;
  *&v172 = v28;
  v162 = v20;
  v28(v23);
  v29.super.isa = a3;
  v30.super.isa = sub_1007502F4(v29).super.isa;
  v31 = *(v21 + 8);
  v168 = v21 + 8;
  v169 = v31;
  v31(v23, v20);
  v32 = sub_100741D14();
  v33 = "onLayoutEnvironment>16";
  if (v32)
  {
    v33 = "ultType.Heading.InAppPurchase";
    v34._countAndFlagsBits = 0xD00000000000003ALL;
  }

  else
  {
    v34._countAndFlagsBits = 0xD00000000000002DLL;
  }

  v34._object = (v33 | 0x8000000000000000);
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  v163 = sub_1007458B4(v34, v209);
  v35 = v30.super.isa;
  sub_100741B24();
  v36 = sub_10074F3F4();
  v207 = v36;
  v167 = sub_10041AA54(&qword_10092AC70, &type metadata accessor for Feature);
  v208 = v167;
  v37 = sub_10000D134(v206);
  LODWORD(v165) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v38 = *(v36 - 8);
  v164 = *(v38 + 104);
  v166 = v38 + 104;
  v164(v37);
  sub_10074FC74();
  sub_10000C620(v206);
  v160 = v19;
  v137 = v35;
  sub_10074CD04();
  sub_10074CCE4();
  v39 = *(v178 + 8);
  *&v178 = v178 + 8;
  v163 = v39;
  v40 = v19;
  v41 = v175;
  v39(v40, v175);
  v177 = a2;
  sub_100741B84();
  v42 = v162;
  (v172)(v23, v173, v162);
  v43.super.isa = v170;
  isa = sub_1007502F4(v43).super.isa;
  v169(v23, v42);
  sub_10074EF34();
  v45 = isa;
  sub_100741B14();
  v204 = v36;
  v205 = v167;
  v46 = sub_10000D134(v203);
  (v164)(v46, v165, v36);
  sub_10074FC74();
  sub_10000C620(v203);
  v47 = v160;
  v132 = v45;
  sub_10074CD04();
  sub_10074CCE4();
  v163(v47, v41);
  sub_100741AC4();
  v48 = v162;
  (v172)(v23, v173, v162);
  v49 = v170;
  v50.super.isa = v170;
  v51 = sub_1007502F4(v50).super.isa;
  v169(v23, v48);
  sub_100741D24();
  v52 = v51;
  v53.super.isa = v49;
  sub_100741B74(v53);
  v201 = v36;
  v202 = v167;
  v54 = sub_10000D134(v200);
  (v164)(v54, v165, v36);
  sub_10074FC74();
  sub_10000C620(v200);
  v131 = v52;
  sub_10074CD04();
  sub_10074CCE4();
  v163(v47, v175);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v55 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v55 = qword_10093FF58;
  }

  v56 = v157;
  v57 = sub_10000D0FC(v157, v55);
  v58 = v156;
  v59 = v161;
  (*(v156 + 16))(v161, v57, v56);
  (*(v58 + 32))(v155, v59, v56);
  sub_100747964();
  sub_100747994();
  v60 = v153;
  swift_allocObject();
  v130 = sub_100750F14();
  v199[5] = v154;
  v199[4] = &protocol witness table for LayoutViewPlaceholder;
  v199[3] = v60;
  v199[0] = v130;

  sub_100741AD4();
  sub_10000C888(v196, v197);
  sub_100750574();
  sub_100741A94();
  v151 = sub_100751034();
  v152 = sub_10000C518(&unk_1009231A0);
  v61 = swift_allocObject();
  v178 = xmmword_1007A5CF0;
  *(v61 + 16) = xmmword_1007A5CF0;
  *(v61 + 32) = v49;
  v129 = v49;
  v62 = sub_100751044();
  sub_10074FC64();

  sub_10000C620(v196);
  sub_10000C518(&unk_100923060);
  v63 = *(sub_100750CF4() - 8);
  v149 = *(v63 + 72);
  v64 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v65 = swift_allocObject();
  v128 = v65;
  *(v65 + 16) = xmmword_1007A97A0;
  v164 = (v65 + v64);
  sub_10000C888(v206, v207);
  sub_1007503C4();
  sub_100741AF4();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  LODWORD(v150) = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v66 = v180;
  v67 = *(v180 + 104);
  v148 = v180 + 104;
  v159 = v67;
  v68 = v133;
  v67(v133);
  v69 = sub_10000C518(&unk_100944F30);
  v70 = *(v182 + 72);
  v160 = *(v182 + 80);
  v161 = v69;
  v147 = (v160 + 32) & ~v160;
  v174 = 2 * v70;
  v175 = 3 * v70;
  v173 = v70;
  v71 = swift_allocObject();
  v172 = xmmword_1007A5620;
  *(v71 + 16) = xmmword_1007A5620;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v187 = v71;
  v170 = sub_10041AA54(&qword_100923050, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v169 = sub_10000C518(&unk_100944F40);
  v171 = sub_100016BFC();
  v72 = v134;
  v73 = v135;
  sub_1007543A4();
  LODWORD(v168) = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v74 = v181;
  v75 = *(v181 + 104);
  v166 = v181 + 104;
  v167 = v75;
  v76 = v136;
  v77 = v179;
  v75(v136);
  sub_100750CE4();
  v78 = *(v74 + 8);
  v181 = v74 + 8;
  v165 = v78;
  v78(v76, v77);
  v79 = *(v182 + 8);
  v182 += 8;
  v163 = v79;
  v79(v72, v73);
  v80 = *(v66 + 8);
  v180 = v66 + 8;
  v162 = v80;
  v81 = v176;
  v80(v68, v176);
  sub_10000C8CC(&v190, &qword_100931390);
  sub_10000C620(v193);
  sub_10000C620(v196);
  v82 = v204;
  v83 = v205;
  v84 = sub_10000C888(v203, v204);
  v197 = v82;
  v198 = v83[1];
  v85 = sub_10000D134(v196);
  (*(*(v82 - 8) + 16))(v85, v84, v82);
  sub_100741AE4();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v86 = swift_allocObject();
  *(v86 + 16) = v172;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v187 = v86;
  sub_1007543A4();
  v87 = v179;
  v167(v76, v168, v179);
  v88 = v149;
  sub_100750CE4();
  v165(v76, v87);
  v163(v72, v73);
  v89 = v68;
  v162(v68, v81);
  sub_10000C8CC(&v190, &qword_100931390);
  sub_10000C620(v193);
  sub_10000C620(v196);
  v127 = 2 * v88;
  v90 = v201;
  v91 = v202;
  v92 = sub_10000C888(v200, v201);
  v197 = v90;
  v198 = v91[1];
  v93 = sub_10000D134(v196);
  (*(*(v90 - 8) + 16))(v93, v92, v90);
  sub_100741B04();
  v192 = 0;
  v191 = 0u;
  v190 = 0u;
  v159(v68, v150, v81);
  v94 = swift_allocObject();
  *(v94 + 16) = v172;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  v187 = v94;
  sub_1007543A4();
  v95 = v179;
  v167(v76, v168, v179);
  v96 = v127;
  sub_100750CE4();
  v165(v76, v95);
  v163(v72, v73);
  v97 = v176;
  v162(v89, v176);
  sub_10000C8CC(&v190, &qword_100931390);
  sub_10000C620(v193);
  sub_10000C620(v196);
  v150 = v96 + v149;
  sub_100741B34();
  sub_100741A94();
  v194 = &type metadata for CGFloat;
  v195 = &protocol witness table for CGFloat;
  v193[0] = v98;
  v159(v89, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v97);
  v99 = swift_allocObject();
  *(v99 + 16) = v172;
  sub_100750CA4();
  sub_100750C84();
  sub_100750C94();
  *&v190 = v99;
  sub_1007543A4();
  v100 = v179;
  v167(v76, v168, v179);
  sub_100750CE4();
  v165(v76, v100);
  v163(v72, v73);
  v162(v89, v97);
  sub_10000C620(v196);
  sub_10000C8CC(v193, &qword_100931390);
  v101 = v158;
  sub_100750CD4();
  sub_100741A94();
  v102 = swift_allocObject();
  *(v102 + 16) = v178;
  v103 = v129;
  *(v102 + 32) = v129;
  v104 = v103;
  v105 = sub_100751044();
  sub_10074FC64();

  sub_100741A94();
  v106 = swift_allocObject();
  *(v106 + 16) = v178;
  *(v106 + 32) = v104;
  v107 = v104;
  v108 = sub_100751044();
  sub_10074FC64();

  sub_100741A94();
  v109 = swift_allocObject();
  *(v109 + 16) = v178;
  *(v109 + 32) = v107;
  v110 = v107;
  v111 = sub_100751044();
  sub_10074FC64();

  sub_100741B64();
  sub_10000C888(v196, v197);
  sub_100750574();
  sub_10000C620(v196);
  sub_1007503C4();
  v112 = v143;
  v194 = v143;
  v195 = &protocol witness table for VerticalFlowLayout;
  v113 = sub_10000D134(v193);
  v114 = v141;
  (*(v141 + 16))(v113, v101, v112);
  sub_10000C824(v196, &v190);
  v189 = &protocol witness table for Double;
  v188 = &type metadata for Double;
  v187 = 0;
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v115 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
  v116 = *(v144 + 104);
  v117 = v146;
  v116(v142, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v146);
  v183[3] = sub_1007507D4();
  v183[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v183);
  sub_1007507C4();
  v116(v145, v115, v117);
  v118 = v138;
  sub_100750F74();
  sub_10000C620(v196);
  (*(v114 + 8))(v158, v112);

  sub_10000C620(v199);
  v119 = swift_allocObject();
  *(v119 + 16) = v178;
  *(v119 + 32) = v110;
  v120 = v110;
  v121 = sub_100751044();
  sub_10041AA54(&qword_100936F08, &type metadata accessor for FlankedHorizontalLayout);
  v122 = v140;
  sub_100750404();
  v124 = v123;

  (*(v139 + 8))(v118, v122);
  (*(v156 + 8))(v155, v157);
  sub_10000C620(v200);
  sub_10000C620(v203);
  sub_10000C620(v206);
  return v124;
}

double _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV0F8StoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_100741E54();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100741B94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_100747C14();
  __chkstk_darwin(v10 - 8);
  v24 = sub_10074F704();
  v11 = *(v24 - 8);
  __chkstk_darwin(v24);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741ED4();
  sub_10041AA54(&qword_1009283B8, &type metadata accessor for InAppPurchaseSearchResult);
  sub_1007468B4();
  if (!v25)
  {
    return 0.0;
  }

  v21 = v3;
  v14 = sub_100741EC4();

  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  _s22SubscribePageExtension33CondensedInAppPurchaseContentViewC7metrics0F8StoreKit0d6SearchefG10CardLayoutV7MetricsVvpfi_0();
  swift_getKeyPath();
  sub_100746914();

  v15 = v25;
  sub_10074F674();
  if (sub_100753804())
  {
    sub_100741DD4();
    sub_100741E04();
    sub_100741E44();
    sub_100741B44();
    v16 = sub_10041787C(v14, v6, v15);

    v17 = *(v4 + 8);
    v18 = v21;
    v17(v6, v21);
    (*(v22 + 8))(v2, v23);
    v17(v9, v18);
  }

  else
  {
    v16 = sub_100418DA4(v14, v9, v15);

    (*(v4 + 8))(v9, v21);
  }

  (*(v11 + 8))(v13, v24);
  return v16;
}

uint64_t sub_10041AA54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10041AA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = xmmword_1007C0480;
  v19 = a1;
  v20 = a2;
  v21 = a3;
  v22 = a4;

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v5 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7 + 1;
  v9 = 16 * v5 + 40;
  while (1)
  {
    if (v5 == 3)
    {
      sub_10000C518(&qword_10092FE70);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70);
      sub_10010ABC4();
      v16 = sub_100752FF4();

      return v16;
    }

    if (v8 == ++v5)
    {
      break;
    }

    v10 = v9 + 16;
    v11 = *&v17[v9];
    v9 += 16;
    if (v11)
    {
      v12 = *&v17[v10 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1002554F8(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_1002554F8((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10041AE34()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SearchBar();
  v1 = objc_msgSendSuper2(&v8, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100016C60(0, &unk_100926F50);
    v3 = sub_1007532A4();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = v3;
  v4 = UIKeyInputEscape;
  v10._object = 0x80000001007699B0;
  v10._countAndFlagsBits = 0xD000000000000035;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1007458B4(v10, v11);
  v5 = sub_100753064();

  v6 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"handleCancelKeyCommand" discoverabilityTitle:v5];

  sub_100753284();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return v9;
}

void sub_10041B08C()
{
  v1 = [v0 searchTextField];
  v2 = [v1 font];

  if (v2)
  {
    v29._object = 0x800000010077BC00;
    v29._countAndFlagsBits = 0xD000000000000012;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007458B4(v29, v31);
    v3 = sub_100753064();
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100016C60(0, &qword_100923AB0);
    *(inited + 40) = v2;
    v5 = NSFontAttributeName;
    v6 = v2;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    type metadata accessor for Key(0);
    sub_100168B0C();
    isa = sub_100752F34().super.isa;

    [v3 sizeWithAttributes:isa];
    v9 = v8;

    v10 = [v0 searchTextField];
    v11 = [v0 searchTextField];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v10 textRectForBounds:{v13, v15, v17, v19}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    if (ceil(v9) > CGRectGetWidth(v33))
    {

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x800000010077BC20;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_1007458B4(v30, v32);
    }

    v28 = sub_100753064();

    [v0 setPlaceholder:v28];
  }
}

id sub_10041B348()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10041B3B4()
{
  result = qword_100936F38;
  if (!qword_100936F38)
  {
    sub_100746BC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F38);
  }

  return result;
}

uint64_t sub_10041B40C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100752624();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    sub_100752DA4();
  }

  else
  {
    (*(v4 + 104))(v7, enum case for ActionOutcome.performed(_:), v3, v5);
    sub_100752DB4();
    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10041B544(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_100752F44();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_10041B5F8()
{
  v0 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v0 - 8);
  v2 = aBlock - v1;
  v3 = sub_100749404();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100741264();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0);
  v11 = sub_100752DE4();
  sub_100746BB4();
  sub_1007493F4();
  (*(v4 + 8))(v6, v3);
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    sub_100144D70(v2);
    sub_10041B968();
    swift_allocError();
    sub_100752DA4();

    return v11;
  }

  (*(v8 + 32))(v10, v2, v7);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v14 = result;
    sub_100741204(v13);
    v16 = v15;
    v17 = [objc_allocWithZone(_LSOpenConfiguration) init];
    aBlock[4] = sub_10041B9BC;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10041B544;
    aBlock[3] = &unk_100875410;
    v18 = _Block_copy(aBlock);

    [v14 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v8 + 8))(v10, v7);
    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_10041B968()
{
  result = qword_100936F40;
  if (!qword_100936F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F40);
  }

  return result;
}

uint64_t sub_10041B9C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10041B9F0()
{
  result = qword_100936F48;
  if (!qword_100936F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936F48);
  }

  return result;
}

id sub_10041BA44(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100922CA0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v71[-v7];
  (*(v6 + 16))(&v71[-v7], a1, v5);
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v9 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v9 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v59 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v60 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v61 = *&v2[v59];
        *&v2[v59] = 0;

        result = [v2 view];
        if (result)
        {
          v62 = result;
          [result bounds];
          v64 = v63;
          v66 = v65;
          v68 = v67;
          v70 = v69;

          v72 = v64;
          v73 = v66;
          v74 = v68;
          v75 = v70;
          v76 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v8, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v44 = objc_allocWithZone(sub_100750FC4());
      v45 = sub_100750FB4();
      v46 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v47 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v48 = *&v2[v46];
      *&v2[v46] = v45;
      v49 = v45;

      result = [v2 view];
      if (result)
      {
        v50 = result;
        [result bounds];
        v52 = v51;
        v54 = v53;
        v56 = v55;
        v58 = v57;

        v72 = v52;
        v73 = v54;
        v74 = v56;
        v75 = v58;
        v76 = 0;
        sub_10074B964();

        sub_10074D904();
        sub_1004211EC(&qword_100938F40, &type metadata accessor for SearchLandingDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v8, v5);
    v29 = *(v8 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100938F40, &type metadata accessor for SearchLandingDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v29);
    v30 = sub_100751054();
    v31 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v32 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v33 = *&v2[v31];
    *&v2[v31] = v30;
    v34 = v30;

    result = [v2 view];
    if (result)
    {
      v35 = result;
      [result bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v72 = v37;
      v73 = v39;
      v74 = v41;
      v75 = v43;
      v76 = 0;
      sub_10074B964();

      sub_1000164A8(v29);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v8, v5);
  v2[qword_10097EE10] = 1;
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v12 = *&v2[v10];
  *&v2[v10] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v72 = v16;
  v73 = v18;
  v74 = v20;
  v75 = v22;
  v76 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v23 = qword_100930680;
  swift_beginAccess();
  v24 = *&v2[v23];
  if (v24)
  {
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = &v24[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v27 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v26 = sub_100421258;
    *(v26 + 1) = v25;
    v28 = v24;

    sub_1000164A8(v27);
  }

  sub_10074B824();
}

uint64_t sub_10041C0D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100926268);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v11 = qword_100930680;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_100421258;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_1000164A8(v15);
    }

    sub_10074B824();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100938FA0, &type metadata accessor for ArcadeDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v18);
    v19 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v19);
    sub_1000164A8(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v20 = objc_allocWithZone(sub_100750FC4());
    v21 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v21);
    sub_10074C0A4();
    sub_1004211EC(&qword_100938FA0, &type metadata accessor for ArcadeDiffablePagePresenter);
    return sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10041C618(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100926C68);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v11 = qword_100930680;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_100421258;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_1000164A8(v15);
    }

    sub_10074B824();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&unk_100926D30, &type metadata accessor for ArticleDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v18);
    v19 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v19);
    sub_1000164A8(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v20 = objc_allocWithZone(sub_100750FC4());
    v21 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v21);
    sub_10074C5B4();
    sub_1004211EC(&unk_100926D30, &type metadata accessor for ArticleDiffablePagePresenter);
    return sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v6 + 8))(v9, v5);
  }
}

id sub_10041CB60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100927D78);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v45 = objc_allocWithZone(sub_100750FC4());
      v46 = sub_100750FB4();
      v47 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10074B964();

        sub_10074D994();
        sub_1004211EC(&qword_1009390F0, &type metadata accessor for SearchResultsDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_1009390F0, &type metadata accessor for SearchResultsDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v30);
    v31 = sub_100751054();
    v32 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10074B964();

      sub_1000164A8(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100421258;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000164A8(v28);
  }

  sub_10074B824();
}

id sub_10041D1EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_10092BAF0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v45 = objc_allocWithZone(sub_100750FC4());
      v46 = sub_100750FB4();
      v47 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10074B964();

        sub_10074CA04();
        sub_1004211EC(&qword_100939030, &type metadata accessor for ReviewsDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100939030, &type metadata accessor for ReviewsDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v30);
    v31 = sub_100751054();
    v32 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10074B964();

      sub_1000164A8(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100421258;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000164A8(v28);
  }

  sub_10074B824();
}

id sub_10041D878(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&unk_10092D480);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v45 = objc_allocWithZone(sub_100750FC4());
      v46 = sub_100750FB4();
      v47 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10074B964();

        sub_10074E4D4();
        sub_1004211EC(&qword_100938F80, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100938F80, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v30);
    v31 = sub_100751054();
    v32 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10074B964();

      sub_1000164A8(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100421258;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000164A8(v28);
  }

  sub_10074B824();
}

id sub_10041DF04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_1009360B8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v45 = objc_allocWithZone(sub_100750FC4());
      v46 = sub_100750FB4();
      v47 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10074B964();

        sub_10074BF94();
        sub_1004211EC(&qword_100937508, &type metadata accessor for TodayDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100937508, &type metadata accessor for TodayDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v30);
    v31 = sub_100751054();
    v32 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10074B964();

      sub_1000164A8(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100421258;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000164A8(v28);
  }

  sub_10074B824();
}

id sub_10041E590(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_100933EA0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v45 = objc_allocWithZone(sub_100750FC4());
      v46 = sub_100750FB4();
      v47 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10074B964();

        sub_10074C964();
        sub_1004211EC(&qword_100937510, &type metadata accessor for ProductDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100937510, &type metadata accessor for ProductDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v30);
    v31 = sub_100751054();
    v32 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10074B964();

      sub_1000164A8(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100421258;
    *(v27 + 1) = v26;
    v29 = v25;

    sub_1000164A8(v28);
  }

  sub_10074B824();
}

id sub_10041EC1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_1009374D0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v72[-v8];
  (*(v6 + 16))(&v72[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    if (v10 != enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
    {
      if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
      {
        v60 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
        v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
        sub_10074B974();

        v62 = *&v2[v60];
        *&v2[v60] = 0;

        result = [v2 view];
        if (result)
        {
          v63 = result;
          [result bounds];
          v65 = v64;
          v67 = v66;
          v69 = v68;
          v71 = v70;

          v73 = v65;
          v74 = v67;
          v75 = v69;
          v76 = v71;
          v77 = 0;
          sub_10074B964();
          return (*(v6 + 8))(v9, v5);
        }

        goto LABEL_19;
      }

      sub_10074B824();
      sub_100750F94();
      v45 = objc_allocWithZone(sub_100750FC4());
      v46 = sub_100750FB4();
      v47 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
      v48 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
      sub_10074B974();

      v49 = *&v2[v47];
      *&v2[v47] = v46;
      v50 = v46;

      result = [v2 view];
      if (result)
      {
        v51 = result;
        [result bounds];
        v53 = v52;
        v55 = v54;
        v57 = v56;
        v59 = v58;

        v73 = v53;
        v74 = v55;
        v75 = v57;
        v76 = v59;
        v77 = 0;
        sub_10074B964();

        sub_10074D5D4();
        sub_1004211EC(&qword_100938F60, &type metadata accessor for SearchFocusDiffablePagePresenter);
        return sub_100748C54();
      }

LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    (*(v6 + 96))(v9, v5);
    v30 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100938F60, &type metadata accessor for SearchFocusDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v30);
    v31 = sub_100751054();
    v32 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
    v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
    sub_10074B974();

    v34 = *&v2[v32];
    *&v2[v32] = v31;
    v35 = v31;

    result = [v2 view];
    if (result)
    {
      v36 = result;
      [result bounds];
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v73 = v38;
      v74 = v40;
      v75 = v42;
      v76 = v44;
      v77 = 0;
      sub_10074B964();

      sub_1000164A8(v30);
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(v6 + 8))(v9, v5);
  v2[qword_10097EE10] = 1;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController;
  v12 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_overlayViewController];
  sub_10074B974();

  v13 = *&v2[v11];
  *&v2[v11] = 0;

  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = result;
  [result bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v73 = v17;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = 0;
  sub_10074B964();
  if (sub_10074B834())
  {
    sub_100746BF4();
  }

  v24 = qword_100930680;
  swift_beginAccess();
  v25 = *&v2[v24];
  if (v25)
  {
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = &v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    v28 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
    *v27 = sub_100420F2C;
    v27[1] = v26;
    v29 = v25;

    sub_1000164A8(v28);
  }

  sub_10074B824();
}

uint64_t sub_10041F2A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100750FA4();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C518(&qword_1009324A0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v22 - v8;
  (*(v6 + 16))(&v22 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_10097EE10) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (sub_10074B834())
    {
      sub_100746BF4();
    }

    v11 = qword_100930680;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC22SubscribePageExtension33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_100421258;
      *(v14 + 1) = v13;
      v16 = v12;

      sub_1000164A8(v15);
    }

    sub_10074B824();
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v18 = *(v9 + 1);
    sub_100751094();
    sub_1004211EC(&qword_100938FC0, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    swift_errorRetain();

    sub_10001B5AC(v18);
    v19 = sub_100751054();
    (*((swift_isaMask & *v2) + 0x168))(v19);
    sub_1000164A8(v18);
  }

  else if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    sub_10074B824();
    sub_100750F94();
    v20 = objc_allocWithZone(sub_100750FC4());
    v21 = sub_100750FB4();
    (*((swift_isaMask & *v2) + 0x168))(v21);
    sub_10074DEE4();
    sub_1004211EC(&qword_100938FC0, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    return sub_100748C54();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t sub_10041F7F0()
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

char *sub_10041F880(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  *(v2 + qword_100980270 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_10074D4D4();
  sub_100752764();
  sub_100752D34();
  *(v2 + qword_100936F50) = v11;

  v5 = sub_10046CCB8(a1, a2);
  v6 = *&v5[qword_10097EE38];
  v7 = v5;
  v8 = v6;

  sub_100749AD4();

  sub_10000C518(&unk_1009249D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007A6580;
  *(v9 + 32) = sub_1007519E4();
  *(v9 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v9 + 48) = sub_100751544();
  *(v9 + 56) = &protocol witness table for UITraitLayoutDirection;
  sub_100753704();

  swift_unknownObjectRelease();

  return v7;
}

void sub_10041FA2C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752AC4();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad", v9);
  v12 = [v0 collectionView];
  if (v12)
  {
    v13 = v12;
    [v12 setKeyboardDismissMode:1];
  }

  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    [v14 setAllowsSelection:1];
  }

  v16 = [v1 collectionView];
  if (v16)
  {
    v17 = v16;
    [v16 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  v18 = [v1 collectionView];
  if (v18)
  {
    v19 = v18;
    memset(v26, 0, sizeof(v26));
    sub_100752A84();
    sub_10000C8CC(v26, &unk_100923520);
    sub_100753C74();

    (*(v8 + 8))(v11, v7);
    sub_10000C518(&unk_1009249D0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1007A6580;
    *(v20 + 32) = sub_1007519E4();
    *(v20 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v20 + 48) = sub_100751554();
    *(v20 + 56) = &protocol witness table for UITraitLegibilityWeight;
    sub_100753704();
    swift_unknownObjectRelease();

    if (qword_100921728 != -1)
    {
      swift_once();
    }

    v21 = sub_100750B04();
    sub_10000D0FC(v21, qword_1009820F8);
    sub_1007502D4();
    sub_100750564();
    v23 = v22;
    (*(v4 + 8))(v6, v3);
    [v1 additionalSafeAreaInsets];
    [v1 setAdditionalSafeAreaInsets:v23];
    v24 = [v1 view];
    if (v24)
    {
      v25 = v24;
      [v24 setNeedsLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10041FE28(void *a1)
{
  v1 = a1;
  sub_10041FA2C();
}

void sub_10041FED4(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10074D4C4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10074D484();
  (*(v9 + 8))(v11, v8);
}

void sub_10042001C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10074D4C4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_10074D484();
  (*(v11 + 8))(v13, v10);
}

void sub_100420180(void *a1)
{
  v1 = a1;
  sub_100420158();
}

uint64_t sub_1004201F0(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_10074D4C4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100742964();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_10000C7B4(v6 + v15, v22);
  if (v23)
  {
    sub_10000C824(v22, v21);
    sub_10000C8CC(v22, &unk_100930240);
    v18 = a2;
    v19 = v7;
    sub_10000C888(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_100742974();
    (*(v12 + 8))(v14, v11);
    v16 = sub_10000C620(v21);
  }

  else
  {
    v16 = sub_10000C8CC(v22, &unk_100930240);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_10074D484();
  return (*(v8 + 8))(v10, v7);
}

void sub_100420484(void *a1)
{
  v1 = a1;
  sub_1004201C8();
}

id sub_1004204CC()
{
  v1 = v0;
  swift_getObjectType();
  sub_10000C518(&qword_100922CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5620;
  sub_10000C518(&qword_1009374F8);
  swift_allocObject();
  swift_retain_n();

  v3 = sub_10074DB94();
  v4 = sub_100420FF0();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 1;
  v6 = sub_1004211EC(&qword_100922CF8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_1004211EC(&qword_1009374E8, type metadata accessor for SearchFocusDiffablePageViewController);
  sub_10074DA64();
  sub_10074B884();

  result = [v1 collectionView];
  if (result)
  {
    sub_10074E304();
    swift_allocObject();
    *(v2 + 64) = sub_10074E2F4();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_10074D7C4();
    swift_allocObject();
    v8 = sub_10074D7B4();
    sub_1006B7418();
    if (swift_dynamicCastClass())
    {
      sub_10074D794();
      sub_10074D7A4();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10042076C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchFocusPageShelfLayoutSpacingProvider;
  result = sub_100420F9C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1004207A0@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1004211EC(&qword_1009374E8, type metadata accessor for SearchFocusDiffablePageViewController);
  sub_10074DA64();
  v2 = sub_10074DA44();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = sub_10074DA34();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_10000C5B4(v18, v17);
  sub_10000C610(v17, v15);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v16)
  {
    v13 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100254A80((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v13;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000C5B4(v19, v17);
  sub_10000C610(v17, v15);
  sub_10000C518(&qword_100922CC0);
  if (swift_dynamicCast() && v16)
  {
    v14 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100254A80(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v14;
    if (v8 >= v7 >> 1)
    {
      v12 = sub_100254A80((v7 > 1), v8 + 1, 1, v4);
      v9 = v14;
      v4 = v12;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  v10 = type metadata accessor for SearchFocusLayoutSectionProvider();
  swift_allocObject();

  result = sub_10021CC04(v20);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = result;
  return result;
}

unint64_t sub_100420A80@<X0>(uint64_t *a1@<X8>)
{
  sub_100744594();
  swift_allocObject();
  v2 = sub_100744584();
  swift_allocObject();
  v3 = sub_100744584();
  swift_allocObject();
  v4 = sub_100744584();
  a1[3] = &type metadata for SearchFocusPageGridProvider;
  result = sub_100420F48();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

void sub_100420B28(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_100980270];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100420BD8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchFocusShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_1004211EC(&qword_1009374D8, type metadata accessor for SearchFocusShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_100420C8C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009374D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_10041EC1C(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_10074D464();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100420DC4()
{

  v1 = v0 + qword_100980270;

  return sub_10000C4F0(v1);
}

uint64_t sub_100420E04(uint64_t a1)
{

  v2 = a1 + qword_100980270;

  return sub_10000C4F0(v2);
}

uint64_t type metadata accessor for SearchFocusDiffablePageViewController()
{
  result = qword_100936F80;
  if (!qword_100936F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100420EF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100420F48()
{
  result = qword_1009374E0;
  if (!qword_1009374E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009374E0);
  }

  return result;
}

unint64_t sub_100420F9C()
{
  result = qword_1009374F0;
  if (!qword_1009374F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009374F0);
  }

  return result;
}

unint64_t sub_100420FF0()
{
  result = qword_100937500;
  if (!qword_100937500)
  {
    sub_10000C724(&qword_1009374F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937500);
  }

  return result;
}

void sub_100421054(void *a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921728 != -1)
  {
    swift_once();
  }

  v6 = sub_100750B04();
  sub_10000D0FC(v6, qword_1009820F8);
  sub_1007502D4();
  sub_100750564();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  [a1 additionalSafeAreaInsets];
  [a1 setAdditionalSafeAreaInsets:v8];
  v9 = [a1 view];
  if (v9)
  {
    v10 = v9;
    [v9 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004211EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for MSODiffablePageViewController()
{
  result = qword_100937540;
  if (!qword_100937540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004212B0(__int32 a1)
{
  v54.i32[0] = a1;
  v1 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v1 - 8);
  v56 = v40 - v2;
  v55 = sub_10074F654();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v48 = (v40 - v6);
  __chkstk_darwin(v7);
  v9 = (v40 - v8);
  v10 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v10 - 8);
  v51 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = v40 - v13;
  __chkstk_darwin(v14);
  v49 = v40 - v15;
  __chkstk_darwin(v16);
  v45 = v40 - v17;
  __chkstk_darwin(v18);
  v44 = v40 - v19;
  __chkstk_darwin(v20);
  v43 = v40 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  sub_10000C518(&qword_100923E90);
  v26 = *(sub_10074F584() - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v46 = 2 * v42;
  v28 = swift_allocObject();
  v47 = v28;
  *(v28 + 16) = xmmword_1007A5620;
  v29 = v28 + v27;
  v57 = 0x3FF0000000000000;
  sub_10001CC10();
  sub_10074F614();
  sub_10074F604();
  v57 = 0x4034000000000000;
  sub_10074F614();
  v30 = vdup_n_s32((v54.i8[0] & 1) == 0);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  *v9 = vbslq_s8(v54, xmmword_1007C0730, xmmword_1007C0720);
  v41 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = *(v3 + 104);
  v40[2] = v3 + 104;
  v53 = v32;
  v33 = v9;
  v34 = v55;
  (v32)(v33);
  LOBYTE(v57) = 0;
  sub_10074F614();
  v57 = 0;
  sub_10074F614();
  v40[1] = v29;
  sub_10074F544();
  v57 = 0x3FF0000000000000;
  sub_10074F614();
  sub_10074F604();
  v57 = 0x4034000000000000;
  sub_10074F614();
  v35 = v48;
  *v48 = vbslq_s8(v54, xmmword_1007C0750, xmmword_1007C0740);
  v36 = v41;
  v53(v35, v41, v34);
  LOBYTE(v57) = 0;
  sub_10074F614();
  v57 = 0;
  sub_10074F614();
  sub_10074F544();
  v57 = 0x3FF0000000000000;
  sub_10074F614();
  sub_10074F604();
  v57 = 0x4034000000000000;
  sub_10074F614();
  v38 = v52;
  v37 = v53;
  *v52 = vbslq_s8(v54, xmmword_1007C0770, xmmword_1007C0760);
  v37(v38, v36, v55);
  LOBYTE(v57) = 0;
  sub_10074F614();
  v57 = 0;
  sub_10074F614();
  sub_10074F544();
  return v47;
}

uint64_t sub_1004219F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980278);
  sub_10000D0FC(v4, qword_100980278);
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009807C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_100421C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v74[2] = a3;
  v78 = a2;
  v74[1] = a1;
  v79 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v79);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10074AB44();
  v6 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = v74 - v9;
  v11 = sub_100750304();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider;
  *&v4[v15] = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v14 = UIFontTextStyleBody;
  (*(v12 + 104))(v14, enum case for FontSource.textStyle(_:), v11);
  v86[3] = v11;
  v86[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v86);
  (*(v12 + 16))(v16, v14, v11);
  v17 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v12 + 8))(v14, v11);
  v84 = v4;
  v18 = &v4[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_title];
  *v18 = 0;
  v18[1] = 0;
  v77 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel;
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_1009807C8);
  v21 = *(v19 - 8);
  v76 = *(v21 + 16);
  v76(v10, v20, v19);
  v75 = *(v21 + 56);
  v75(v10, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v23 = *(v6 + 104);
  v23(v82, enum case for DirectionalTextAlignment.none(_:), v83);
  v24 = sub_100745C84();
  v25 = objc_allocWithZone(v24);
  v26 = sub_100745C74();
  v27 = v84;
  *&v84[v77] = v26;
  v28 = &v27[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionText];
  *v28 = 0;
  v28[1] = 0;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel;
  if (qword_100921308 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v19, qword_100981650);
  v76(v10, v30, v19);
  v75(v10, 0, 1, v19);
  v23(v82, v22, v83);
  v31 = objc_allocWithZone(v24);
  v32 = sub_100745C74();
  v33 = v84;
  *&v84[v29] = v32;
  v33[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_hasDivider] = 0;
  v34 = type metadata accessor for EmptyStateView();
  v85.receiver = v33;
  v85.super_class = v34;
  v35 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v36 = sub_100016C60(0, &qword_100923500);
  v37 = v35;
  v38 = sub_100753E04();
  [v37 setBackgroundColor:v38];

  if (v78)
  {
    v39 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel];
    sub_10000C518(&unk_100929CA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v41 = qword_100920140;
    v42 = v39;
    v43 = NSParagraphStyleAttributeName;
    if (v41 != -1)
    {
      swift_once();
    }

    v44 = qword_10097D258;
    *(inited + 64) = sub_100016C60(0, &qword_10092A248);
    *(inited + 40) = v44;
    v45 = v44;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_100168AA4(inited + 32);
    v46 = objc_allocWithZone(NSAttributedString);
    v47 = sub_100753064();

    type metadata accessor for Key(0);
    sub_100168B0C();
    isa = sub_100752F34().super.isa;

    v49 = [v46 initWithString:v47 attributes:isa];

    [v42 setAttributedText:v49];
  }

  [v37 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel]];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel;
  [*&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel] setNumberOfLines:0];
  if (v81)
  {
    v51 = *&v37[v50];
    sub_10000C518(&unk_100929CA0);
    v52 = swift_initStackObject();
    *(v52 + 16) = xmmword_1007A6580;
    *(v52 + 32) = NSParagraphStyleAttributeName;
    v53 = qword_100920140;
    v54 = v51;
    v55 = NSParagraphStyleAttributeName;
    if (v53 != -1)
    {
      swift_once();
    }

    v56 = qword_10097D258;
    v57 = sub_100016C60(0, &qword_10092A248);
    *(v52 + 40) = v56;
    *(v52 + 64) = v57;
    *(v52 + 72) = NSForegroundColorAttributeName;
    v58 = v56;
    v59 = NSForegroundColorAttributeName;
    v60 = sub_100753DF4();
    *(v52 + 104) = v36;
    *(v52 + 80) = v60;
    sub_100413A18(v52);
    swift_setDeallocating();
    sub_10000C518(&unk_100923510);
    swift_arrayDestroy();
    v61 = objc_allocWithZone(NSAttributedString);
    v62 = sub_100753064();

    type metadata accessor for Key(0);
    sub_100168B0C();
    v63 = sub_100752F34().super.isa;

    v64 = [v61 initWithString:v62 attributes:v63];

    [v54 setAttributedText:v64];
  }

  [v37 addSubview:*&v37[v50]];
  v65 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider;
  [*&v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider] setHidden:(v37[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_hasDivider] & 1) == 0];
  v66 = qword_100920D78;
  v67 = *&v37[v65];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = sub_10000D0FC(v79, qword_100980640);
  v69 = v80;
  sub_1001154F8(v68, v80);
  v70 = &v67[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v69, v70);
  swift_endAccess();
  v71 = &v67[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v72 = *(v70 + 1);
  *v71 = *v70;
  *(v71 + 1) = v72;
  [v67 setNeedsLayout];
  [v67 setNeedsLayout];

  sub_1002FE2B0(v69);
  [v37 addSubview:*&v37[v65]];

  return v37;
}

uint64_t sub_1004226E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EmptyStateView();
  v22.receiver = v0;
  v22.super_class = v7;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider];
  [v0 frame];
  Width = CGRectGetWidth(v23);
  if (qword_100920D78 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for DividerView.Style(0);
  sub_10000D0FC(v10, qword_100980640);
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v11 = floor(*&qword_100980620);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v13 = v12;
  (*(v4 + 8))(v6, v3);
  [v8 setFrame:{0.0, 0.0, Width, v11 + v13}];
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  *(v15 + 24) = ObjectType;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100422F20;
  *(v16 + 24) = v15;
  aBlock[4] = sub_100045E0C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10011B528;
  aBlock[3] = &unk_1008756A8;
  v17 = _Block_copy(aBlock);
  v18 = v1;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_100422A18(char *a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel];
  [a1 bounds];
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  v13 = v12;
  v14 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel];
  [a1 bounds];
  [v14 sizeThatFits:{v15, v16}];
  v18 = v17;
  v20 = v19;
  v21 = v13 + v19;
  [a1 bounds];
  v22 = (CGRectGetWidth(v32) - v11) * 0.5;
  [a1 bounds];
  [v7 setFrame:{v22, (CGRectGetHeight(v33) - v21) * 0.5, v11, v13}];
  [a1 bounds];
  Width = CGRectGetWidth(v34);
  [v7 lastBaselineMaxY];
  v25 = v24;
  if (qword_100920BD0 != -1)
  {
    swift_once();
  }

  v26 = sub_100750B04();
  sub_10000D0FC(v26, qword_100980278);
  v27 = [a1 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v29 = v28;

  (*(v3 + 8))(v6, v2);
  return [v14 setFrame:{(Width - v18) * 0.5, v25 + v29, v18, v20}];
}

id sub_100422CE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmptyStateView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EmptyStateView()
{
  result = qword_100937B68;
  if (!qword_100937B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100422E30()
{
  result = sub_100750B04();
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

uint64_t sub_100422EE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100422F38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100422F50()
{
  v1 = sub_10074AB44();
  v35 = *(v1 - 8);
  __chkstk_darwin(v1);
  v33 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100750304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_divider;
  *(v0 + v10) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *v9 = UIFontTextStyleBody;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v36[3] = v6;
  v36[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v36);
  (*(v7 + 16))(v11, v9, v6);
  v12 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v7 + 8))(v9, v6);
  v34 = v0;
  v13 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_title);
  *v13 = 0;
  v13[1] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_titleLabel;
  if (qword_100920E28 != -1)
  {
    swift_once();
  }

  v14 = sub_100750534();
  v15 = sub_10000D0FC(v14, qword_1009807C8);
  v16 = *(v14 - 8);
  v30 = *(v16 + 16);
  v30(v5, v15, v14);
  v17 = *(v16 + 56);
  v17(v5, 0, 1, v14);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v19 = *(v35 + 104);
  v32 = v1;
  v35 += 104;
  v19(v33, enum case for DirectionalTextAlignment.none(_:), v1);
  v20 = sub_100745C84();
  v21 = objc_allocWithZone(v20);
  v22 = sub_100745C74();
  v23 = v34;
  *(v34 + v31) = v22;
  v24 = (v23 + OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionText);
  *v24 = 0;
  v24[1] = 0;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_descriptionLabel;
  if (qword_100921308 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v14, qword_100981650);
  v30(v5, v25, v14);
  v17(v5, 0, 1, v14);
  v19(v33, v18, v32);
  v26 = objc_allocWithZone(v20);
  v27 = sub_100745C74();
  v28 = v34;
  *(v34 + v31) = v27;
  *(v28 + OBJC_IVAR____TtC22SubscribePageExtension14EmptyStateView_hasDivider) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10042341C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v67 - v11;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(sub_100749AF4());
  *&v4[v14] = sub_100749AE4();
  v16 = &v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_100920BD8;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_imageView];
  v22 = qword_100937B80;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100016C60(0, &qword_10092B280), v25 = v22, v26 = sub_100753FC4(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_100920BE0;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100937B88);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_10037FD1C(v12);

  v34 = qword_100920BE8;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_10021AC00(qword_100937BA0, v68);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_10021AC5C(v68, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_10021ACB8(v68);
  [*(*&v5[v18] + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_100920BF0;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v29, qword_100937BC8);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_1001BBA8C(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v67.receiver = v5;
  v67.super_class = v42;
  v43 = objc_msgSendSuper2(&v67, "initWithFrame:", a1, a2, a3, a4);
  v44 = sub_100424BA4();
  v45 = [objc_allocWithZone(UICollectionView) initWithFrame:v44 collectionViewLayout:{a1, a2, a3, a4}];

  v46 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  v47 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView] = v45;
  v48 = v45;

  if (!v48)
  {
    __break(1u);
    goto LABEL_20;
  }

  sub_10074E264();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator] = sub_10074E204();

  v49 = v43;
  v50 = [v49 contentView];
  [v50 addSubview:*&v49[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView]];

  v51 = [v49 contentView];
  [v51 addSubview:*&v49[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView]];

  v52 = *&v43[v46];
  if (!v52)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v52 setDelegate:v49];
  v53 = *&v43[v46];
  if (!v53)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = objc_opt_self();
  v55 = v53;
  v56 = [v54 clearColor];
  [v55 setBackgroundColor:v56];

  v57 = *&v43[v46];
  if (!v57)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v59 = v57;
  sub_1007539D4();
  v60 = sub_100753064();

  [v59 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v60];

  v61 = *&v43[v46];
  if (!v61)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v62 = swift_getObjCClassFromMetadata();
  v63 = v61;
  sub_1007539D4();
  v64 = sub_100753064();

  sub_1007539D4();
  v65 = sub_100753064();

  [v63 registerClass:v62 forSupplementaryViewOfKind:v64 withReuseIdentifier:v65];

  v66 = [v49 contentView];
  if (*&v43[v46])
  {
    [v66 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_100423C08()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    sub_10074E224();

    if (swift_weakLoadStrong())
    {
      sub_10074B544();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = sub_10074B554();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100423CD8()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_100937B80 = v5;
  return result;
}

void sub_100423DE4()
{
  qword_100937BB8 = &type metadata for CGFloat;
  unk_100937BC0 = &protocol witness table for CGFloat;
  qword_100937BA0 = 0x4008000000000000;
}

uint64_t sub_100423E20()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100937BE0);
  v1 = sub_10000D0FC(v0, qword_100937BE0);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100423EE8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_100920BF8 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_100937BE0);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = sub_100750B04();
  v12 = &protocol witness table for StaticDimension;
  sub_10000D134(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_10000D134(v9);
  (*(v1 + 16))(v6, v3, v0);
  sub_100750B14();
  (*(v1 + 8))(v3, v0);
  sub_100012160(&v13, &unk_100937BF8);
  return sub_100012160(&v10, &unk_100937C20);
}

id sub_1004240E4(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

uint64_t sub_1004241C0()
{
  v1 = v0;
  v2 = sub_100750354();
  v58 = *(v2 - 8);
  v59 = v2;
  __chkstk_darwin(v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750304();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v49 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A014();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v53 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v54 = &v48 - v9;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v48 - v15;
  v16 = sub_100747064();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v69.receiver = v0;
  v69.super_class = v20;
  objc_msgSendSuper2(&v69, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v50 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v60 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v16, qword_10097E3A8);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = sub_100746FD4();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v29 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v29 = qword_10093FF58;
    }

    v30 = sub_10000D0FC(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v48;
    (*(v11 + 32))(v48, v31, v10);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v11 + 8))(v32, v10);
  }

  sub_100746F14();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v60, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  v68[3] = type metadata accessor for ImageHeadingView();
  v68[4] = &protocol witness table for UIView;
  v68[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  result = type metadata accessor for SearchHeadingView();
  v67[3] = result;
  v67[4] = &protocol witness table for UIView;
  v67[0] = v34;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v65[0] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_100016C60(0, &qword_100929830);
    v36 = v33;
    v37 = v34;
    sub_1007503E4();
    v65[3] = sub_1007507D4();
    v65[4] = &protocol witness table for ZeroDimension;
    sub_10000D134(v65);
    sub_1007507C4();
    if (qword_100920BF0 == -1)
    {
LABEL_16:
      v38 = sub_100750534();
      v39 = sub_10000D0FC(v38, qword_100937BC8);
      v40 = v49;
      (*(*(v38 - 8) + 16))(v49, v39, v38);
      v42 = v51;
      v41 = v52;
      (*(v51 + 104))(v40, enum case for FontSource.useCase(_:), v52);
      v64[3] = sub_100750B04();
      v64[4] = &protocol witness table for StaticDimension;
      sub_10000D134(v64);
      v62 = v41;
      v63 = &protocol witness table for FontSource;
      v43 = sub_10000D134(v61);
      (*(v42 + 16))(v43, v40, v41);
      sub_100750B14();
      (*(v42 + 8))(v40, v41);
      v62 = &type metadata for CGFloat;
      v63 = &protocol witness table for CGFloat;
      v61[0] = 0x4030000000000000;
      v44 = v54;
      sub_10074A004();
      v46 = v55;
      v45 = v56;
      (*(v55 + 16))(v53, v44, v56);
      sub_10000C824(v68, v65);
      sub_10000C824(v67, v64);
      sub_10000C824(v66, v61);
      sub_10074A034();
      swift_allocObject();
      v65[0] = sub_10074A024();
      (*(v46 + 8))(v44, v45);
      sub_10000C620(v66);
      sub_10000C620(v67);
      sub_10000C620(v68);
      sub_100426E4C(&qword_10092E2D8, &type metadata accessor for SearchLockupListLayout);
      v47 = v57;
      sub_100751124();
      (*(v58 + 8))(v47, v59);
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100424BA4()
{
  ObjectType = swift_getObjectType();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = ObjectType;
  v3 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v7[4] = sub_100425610;
  v7[5] = v2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1002B6430;
  v7[3] = &unk_1008757A0;
  v4 = _Block_copy(v7);

  v5 = [v3 initWithSectionProvider:v4];
  _Block_release(v4);

  return v5;
}

_BYTE *sub_100424CD0(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration];
    v5 = *&result[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = result;
      v7 = [result contentView];

      if (v7)
      {
        [v7 layoutMargins];
        v10 = sub_1004262D0(v4, v5, a2, v8, v9);
        if (v10)
        {
          v11 = v10;
          v12 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v14 = v11;
          v15 = v11;

          aBlock[4] = sub_100426784;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1005D5E28;
          aBlock[3] = &unk_1008757C8;
          v16 = _Block_copy(aBlock);

          [v15 setVisibleItemsInvalidationHandler:v16];

          _Block_release(v16);
          v7 = v15;
        }

        else
        {
          v14 = 0;
        }

        return v14;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_100424EB8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v2 = Strong;

    if (v1)
    {
      sub_10074B544();
      sub_100744F54();
    }
  }
}

id sub_100425180()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100425300()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_100423C08();
}

void (*sub_100425364(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1004253FC;
}

void sub_1004253FC(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_100423C08();
  }

  free(v3);
}

uint64_t sub_100425484()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_1004254E0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

uint64_t sub_1004255A0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004255D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100425618(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_100425630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, void *a9, uint64_t a10)
{
  v79 = a8;
  v78 = a7;
  v75 = a5;
  v76 = a6;
  v73 = a3;
  v74 = a4;
  v72 = a1;
  v10 = sub_100750304();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v80 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A014();
  v85 = *(v12 - 8);
  v86 = v12;
  __chkstk_darwin(v12);
  v83 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v84 = &v66 - v15;
  v88 = sub_10074CD14();
  v90 = *(v88 - 8);
  __chkstk_darwin(v88);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ImageHeadingView();
  if (qword_100920BD8 != -1)
  {
    swift_once();
  }

  v18 = qword_100937B80;
  if (qword_100920BE0 != -1)
  {
    swift_once();
  }

  v77 = sub_100750534();
  sub_10000D0FC(v77, qword_100937B88);
  if (qword_100920BE8 != -1)
  {
    swift_once();
  }

  v19 = sub_100016C60(0, &qword_100923AB0);
  v20 = [a9 traitCollection];
  v87 = v19;
  v21 = sub_100753C14();

  v22 = objc_opt_self();
  v70 = v21;
  v23 = [v22 configurationWithFont:v21];
  v24 = [v18 imageByApplyingSymbolConfiguration:v23];
  v25 = v24;
  if (v24)
  {
    [v24 size];
  }

  v26 = sub_100750F34();
  swift_allocObject();
  v27 = sub_100750F14();

  v89 = a9;
  v28 = [a9 traitCollection];
  sub_100753C14();

  v29 = sub_10074F3F4();
  *(&v98 + 1) = v29;
  v69 = sub_100426E4C(&qword_10092AC70, &type metadata accessor for Feature);
  *&v99 = v69;
  v30 = sub_10000D134(&v97);
  v31 = *(v29 - 8);
  v32 = *(v31 + 104);
  v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = v31 + 104;
  v67 = v32;
  v32(v30);
  sub_10074FC74();
  sub_10000C620(&v97);
  sub_10074CD04();
  v33 = sub_10074CCF4();
  v35 = v34;
  v36 = *(v90 + 8);
  v90 += 8;
  v36(v17, v88);
  v37 = *(v35 + 8);

  swift_unknownObjectRetain();
  sub_100380868(v27, &protocol witness table for LayoutViewPlaceholder, v33, v37, qword_100937BA0, &v97);

  swift_unknownObjectRelease();
  sub_1001A41D4(&v97, &v102);
  v38 = swift_allocObject();
  sub_100219FC4(&v102, (v38 + 16));
  swift_allocObject();
  v72 = sub_100750EF4();

  swift_unknownObjectRelease();

  sub_10000C620(&v97);
  if (qword_100920BF0 != -1)
  {
    swift_once();
  }

  v39 = v77;
  v40 = sub_10000D0FC(v77, qword_100937BC8);
  if (qword_100920BF8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v39, qword_100937BE0);
  if (qword_100920C00 != -1)
  {
    swift_once();
  }

  v41 = [v89 traitCollection];
  v71 = v40;
  sub_100753C14();

  *(&v98 + 1) = v29;
  *&v99 = v69;
  v42 = sub_10000D134(&v97);
  v67(v42, v68, v29);
  sub_10074FC74();
  sub_10000C620(&v97);
  sub_10074CD04();
  v43 = sub_10074CCF4();
  v45 = v44;
  v36(v17, v88);
  v46 = swift_allocObject();
  v47 = v76;
  *(v46 + 16) = v75;
  *(v46 + 24) = v47;
  swift_allocObject();

  v48 = sub_100750EF4();
  sub_1001BD96C(&unk_100937BF8, &v97);
  v49 = swift_allocObject();
  v50 = v100;
  *(v49 + 48) = v99;
  *(v49 + 64) = v50;
  *(v49 + 80) = v101;
  v51 = v98;
  *(v49 + 16) = v97;
  *(v49 + 32) = v51;
  *(v49 + 96) = v43;
  *(v49 + 104) = v45;
  *(v49 + 112) = v48;
  swift_allocObject();
  v52 = sub_100750EF4();
  v53 = swift_allocObject();
  *(v53 + 16) = a10;
  *(v53 + 24) = v78 & 1;
  *(v53 + 32) = v79;
  swift_allocObject();
  v54 = sub_100750EF4();
  *(&v98 + 1) = v26;
  *&v99 = &protocol witness table for LayoutViewPlaceholder;
  v96[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v97 = v72;
  v103 = v26;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  *&v102 = v52;
  v96[3] = v26;
  v96[0] = v54;
  v95[3] = sub_1007507D4();
  v95[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v95);

  sub_1007507C4();
  v55 = v80;
  (*(*(v39 - 8) + 16))(v80, v71, v39);
  v57 = v81;
  v56 = v82;
  (*(v81 + 104))(v55, enum case for FontSource.useCase(_:), v82);
  v94[3] = sub_100750B04();
  v94[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v94);
  v92 = v56;
  v93 = &protocol witness table for FontSource;
  v58 = sub_10000D134(v91);
  (*(v57 + 16))(v58, v55, v56);
  sub_100750B14();
  (*(v57 + 8))(v55, v56);
  v92 = &type metadata for CGFloat;
  v93 = &protocol witness table for CGFloat;
  v91[0] = 0x4030000000000000;
  v59 = v84;
  sub_10074A004();
  v61 = v85;
  v60 = v86;
  (*(v85 + 16))(v83, v59, v86);
  sub_10000C824(&v97, v95);
  sub_10000C824(&v102, v94);
  sub_10000C824(v96, v91);
  sub_10074A034();
  swift_allocObject();
  v62 = sub_10074A024();
  (*(v61 + 8))(v59, v60);
  sub_10000C620(v96);
  sub_10000C620(&v102);
  sub_10000C620(&v97);
  *&v97 = v62;
  sub_100426E4C(&qword_10092E2A0, &type metadata accessor for SearchLockupListLayout);
  sub_100750404();
  v64 = v63;

  return v64;
}

void sub_1004261E0()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(sub_100749AF4());
  *(v0 + v2) = sub_100749AE4();
  sub_100754644();
  __break(1u);
}

id sub_1004262D0(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  sub_1007539D4();
  v15 = v8;
  v16 = sub_100753064();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10000C518(&unk_1009231A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v17;
  sub_100016C60(0, &unk_10092E470);
  v22 = v17;
  isa = sub_100753294().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_10042678C()
{
  v1 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_10000C518(&unk_10092E290);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10000C518(&qword_100937CD0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v13)
    {

      v14 = v13;
      sub_1007518A4();

      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
        sub_100752564();
        v17 = sub_10074EDC4();

        if (!v17)
        {
          (*(v8 + 8))(v11, v7);

          return;
        }

        v18 = sub_10000C518(&unk_100923210);
        sub_1007526C4();
        v19 = *(v18 - 8);
        if ((*(v19 + 48))(v3, 1, v18) != 1)
        {
          sub_1003C0E00(v17, 1, v12, v3);

          (*(v8 + 8))(v11, v7);
          (*(v19 + 8))(v3, v18);
          return;
        }

        (*(v8 + 8))(v11, v7);

        v15 = &unk_100923960;
        v16 = v3;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    v15 = &unk_10092E290;
    v16 = v6;
LABEL_7:
    sub_10000C8CC(v16, v15);
  }
}

uint64_t sub_100426B10()
{
  v1 = sub_10000C518(&unk_10092E290);
  __chkstk_darwin(v1 - 8);
  v3 = &v13[-v2 - 8];
  v4 = sub_10000C518(&qword_100937CD0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13[-v7 - 8];
  v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v9)
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    return sub_10000C8CC(v3, &unk_10092E290);
  }

  v10 = v9;
  sub_1007518A4();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000C8CC(v3, &unk_10092E290);
  }

  result = (*(v5 + 32))(v8, v3, v4);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v14 = sub_10074EFD4();
    v15 = sub_100426E4C(&qword_1009340B0, &type metadata accessor for Lockup);

    sub_100752564();
    sub_10074E254();

    (*(v5 + 8))(v8, v4);
    return sub_10000C620(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100426D7C()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100426DB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100426DEC()
{
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 56);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_100426E4C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100426EA8()
{
  result = qword_100937CD8;
  if (!qword_100937CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937CD8);
  }

  return result;
}

double sub_100426F50()
{
  v27 = sub_10074F704();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v1 = &v20 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100749A94();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&qword_10092FA68);
  v22 = *(v3 - 8);
  v23 = v3;
  __chkstk_darwin(v3);
  v21 = &v20 - v4;
  v5 = sub_10000C518(&unk_10092E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  v9 = sub_100747C14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745324();
  sub_100427414(&qword_100926328, &type metadata accessor for UpsellBreakout);
  sub_1007468B4();
  if (!v29)
  {
    return 0.0;
  }

  sub_100746884();
  sub_100747C04();
  (*(v10 + 8))(v12, v9);
  swift_getKeyPath();
  sub_1007525B4();

  (*(v6 + 8))(v8, v5);

  sub_100752DF4();
  sub_100427414(&qword_100935530, &type metadata accessor for NilState);
  v13 = v21;
  sub_1007468E4();
  v14 = v24;
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v16 = v15;
  (*(v25 + 8))(v1, v27);
  sub_10007DC04();
  sub_1003C5678(v16);
  v18 = v17;
  swift_unknownObjectRelease();

  (*(v26 + 8))(v14, v28);
  (*(v22 + 8))(v13, v23);
  return v18;
}

uint64_t sub_100427414(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100427460()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_100750634();
    swift_getWitnessTable();
    v0 = sub_1007512F4();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

void sub_100427648(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)], *((swift_isaMask & *a1) + 0x50));
  sub_1000164A8(*&a1[*((swift_isaMask & *a1) + 0x68)]);

  swift_unknownObjectRelease();

  v2 = *((swift_isaMask & *a1) + 0xB0);
  swift_getAssociatedTypeWitness();
  sub_100750634();
  swift_getWitnessTable();
  v3 = sub_1007512F4();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  v4 = *&a1[*((swift_isaMask & *a1) + 0xD0)];
}

uint64_t sub_100427880()
{
  result = [v0 isTracking];
  if ((result & 1) == 0)
  {
    result = [v0 isDragging];
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_getAssociatedTypeWitness();
      sub_100750634();
      swift_getWitnessTable();
      sub_1007512F4();
      sub_100751294();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1004279A4(void *a1)
{
  v2 = sub_100740EA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100740E84();
  v6 = a1;
  sub_100427880();

  return (*(v3 + 8))(v5, v2);
}

id sub_100427A8C(char a1)
{
  [v1 setContentSize:{0.0, 0.0}];
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = a1;
  [v1 invalidateIntrinsicContentSize];

  return [v1 setNeedsLayout];
}

id sub_100427B18(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_100427C64(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100427B18(a3);
}

id sub_100427CD0(void *a1)
{
  v1 = a1;
  v2 = sub_100427D04();

  return v2;
}

id sub_100427D04()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

void sub_100427D3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_100427D90(a3);
}

id sub_100427D90(id a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "semanticContentAttribute");
  v7.receiver = v1;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, "setSemanticContentAttribute:", a1);
  if (v4 != a1)
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100427EB8(void *a1)
{
  sub_10000C518(&unk_1009259C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007A5A00;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000040;
  *(v2 + 40) = 0x800000010077C040;
  v3 = a1;
  sub_100754494();
}

double sub_100427F68(void *a1)
{
  v1 = a1;
  v2 = sub_100427FAC();

  return v2;
}

CGFloat sub_100427FAC()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, &v0[*((v2 & v1) + 0x60)], v3);
  (*(*((v2 & v1) + 0x58) + 24))(v8, v3);
  (*(v4 + 8))(v6, v3);
  return UIViewNoIntrinsicMetric;
}

CGFloat sub_100428140(uint64_t a1, CGFloat Width)
{
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v9 = v20 - v8;
  if (Width < COERCE_DOUBLE(1))
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v7 = swift_isaMask & *v2;
  }

  (*(v6 + 16))(v9, &v2[*(v7 + 96)], v5);
  (*(*(v4 + 88) + 24))(v20, v5);
  (*(v6 + 8))(v9, v5);
  return Width;
}

double sub_100428384(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = sub_100428140(v3, a2);

  return v4;
}

uint64_t sub_1004283D8()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v0) + 0x50);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = *((v3 & v2) + 0x60);
  v9 = *(v5 + 16);
  v9(v15 - v6, &v1[v8], v4);
  v10 = *((v3 & v2) + 0x58);
  v11 = (*(v10 + 32))(v4, v10);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v9(v7, &v1[v8], v4);
  (*(v10 + 24))(v15, v4, v10);
  result = (v12)(v7, v4);
  v14 = ceil(v11 / v15[9]);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1004285DC(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x50);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(a1).n128_u64[0];
  v8 = v42 - v7;
  result = [v1 contentSize];
  if (v11 == 0.0 && v10 == 0.0)
  {
    v12 = sub_1004283D8();
    v13 = *((swift_isaMask & *v1) + 0x60);
    v47 = *(v5 + 16);
    v42[1] = v5 + 16;
    v43 = v13;
    v14 = v13;
    v47(v8, v1 + v13, v4);
    v49 = *(v3 + 88);
    v15 = v49 + 24;
    v16 = *(v49 + 24);
    v16(v50, v4);
    v48 = v15;
    v17 = v16;
    v18 = *(v5 + 8);
    v44 = v16;
    v45 = v18;
    v18(v8, v4);
    v19 = v50[9];
    v20 = v47;
    v47(v8, v1 + v14, v4);
    v17(v51, v4, v49);
    v21 = v45;
    v45(v8, v4);
    v46 = v5 + 8;
    v22 = *&v51[1];
    v20(v8, v1 + v43, v4);
    v23 = v44;
    v44(v52, v4, v49);
    v21(v8, v4);
    v24 = v22 + *&v52[3] + 0.0;
    v25 = v43;
    v26 = v20;
    v20(v8, v1 + v43, v4);
    v23(v53, v4, v49);
    v27 = v45;
    v45(v8, v4);
    v28 = v24 + *&v53[4] * v12;
    v26(v8, v1 + v25, v4);
    v29 = v49;
    v30 = v44;
    v44(v54, v4, v49);
    v27(v8, v4);
    v31 = v28 + (v12 + -1.0) * *&v54[6];
    v32 = v47;
    v47(v8, v1 + v25, v4);
    v30(v55, v4, v29);
    v33 = v45;
    v45(v8, v4);
    v34 = v55[0];
    v32(v8, v1 + v25, v4);
    v35 = v49;
    v36 = v44;
    v44(v56, v4, v49);
    v33(v8, v4);
    v37 = v34 + *&v56[2] + 0.0;
    v38 = v43;
    v47(v8, v1 + v43, v4);
    v36(v57, v4, v35);
    v39 = v45;
    v45(v8, v4);
    v40 = v37 + *&v57[5] * v19;
    v47(v8, v1 + v38, v4);
    v44(v58, v4, v49);
    v39(v8, v4);
    result = sub_100428B64([v1 setContentSize:{v31, v40 + (v19 + -1.0) * *&v58[7]}]);
    v41 = (v1 + *((swift_isaMask & *v1) + 0xA8));
    if ((v41[2] & 1) == 0)
    {
      result = [v2 setContentOffset:{*v41, v41[1]}];
      *v41 = 0.0;
      v41[1] = 0.0;
      *(v41 + 16) = 1;
      if (*(v2 + *((swift_isaMask & *v2) + 0x88)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_100744F44();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_100428B64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v26 - v8;
  v10 = *(v6 + 16);
  v28 = *((v4 & v3) + 0x60);
  v29 = v10;
  (v10)(v9, v2 + v28, v5, v7);
  v11 = *((v4 & v3) + 0x58);
  v12 = *(v11 + 24);
  v12(v30, v5, v11);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *&v30[4] + *&v30[6];
  [v2 frame];
  Width = CGRectGetWidth(v33);
  result = [v2 contentInset];
  v18 = ceil((Width - v17) / v14);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v13;
  v19 = v12;
  v20 = v18;
  v21 = *(v2 + *((swift_isaMask & *v2) + 0x70));
  if (*(v2 + *((swift_isaMask & *v2) + 0x78)) == 1)
  {
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (!v22)
    {
      if (v23 + 0x4000000000000000 >= 0)
      {
        v24 = 2 * v23;
        v29(v9, v2 + v28, v5);
        v19(v31, v5, v11);
        result = v27(v9, v5);
        if ((v24 * v32) >> 64 == (v24 * v32) >> 63)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = 2 * v21;
  v29(v9, v2 + v28, v5);
  v19(v31, v5, v11);
  result = v27(v9, v5);
  if ((v25 * v32) >> 64 != (v25 * v32) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v20, v25 * v32))
  {
LABEL_12:
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    sub_100750634();
    swift_getWitnessTable();
    sub_1007512F4();
    sub_1007512A4();
    return swift_endAccess();
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_100428F84(uint64_t a1, double a2)
{
  v3 = v2;
  LODWORD(v52) = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v47 - v13;
  [v3 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(v8 + 16);
  v54 = *((swift_isaMask & *v3) + 0x60);
  v55 = v23;
  v23(v14, v3 + v54, v7);
  v24 = *((v6 & v5) + 0x58);
  v25 = *(v24 + 32);
  v26 = v25(v7, v24);
  v53 = *(v8 + 8);
  v53(v14, v7);
  if (v26 >= 1)
  {
    v59.origin.x = v16;
    v59.origin.y = v18;
    v59.size.width = v20;
    v59.size.height = v22;
    if (!CGRectIsEmpty(v59))
    {
      v50 = v24 + 32;
      v51 = v25;
      v48 = v10;
      v27 = v54;
      v55(v14, v3 + v54, v7);
      v28 = *(v24 + 24);
      v28(v56, v7, v24);
      v29 = v53;
      v53(v14, v7);
      v30 = v56[4] + v56[6];
      v31 = v3 + v27;
      v32 = v55;
      v55(v14, v31, v7);
      v28(v57, v7, v24);
      v29(v14, v7);
      v49 = v57[9];
      v32(v14, v3 + v54, v7);
      v28(v58, v7, v24);
      v29(v14, v7);
      v33 = *&v58[3];
      v34 = 0.0;
      if (a2 >= 0.0)
      {
        v34 = a2;
      }

      v35 = v34 + *&v58[1];
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      Width = CGRectGetWidth(v60);
      v37 = floor(v35 / v30);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = floor((v35 + Width - v33) / v30);
          if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v38 > -9.22337204e18)
            {
              if (v38 < 9.22337204e18)
              {
                v39 = v37;
                v40 = v38;
                if (v52)
                {
                  v41 = *(v3 + *((swift_isaMask & *v3) + 0x70));
                  v42 = __OFSUB__(v39, v41);
                  v39 -= v41;
                  v43 = v51;
                  if (v42)
                  {
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  v42 = __OFADD__(v40, v41);
                  v40 += v41;
                  if (v42)
                  {
LABEL_29:
                    __break(1u);
                    return;
                  }

                  v44 = v49;
                }

                else
                {
                  v43 = v51;
                  v44 = v49;
                }

                if ((v39 * v44) >> 64 == (v39 * v44) >> 63)
                {
                  v52 = v39 * v44;
                  v45 = v3 + v54;
                  v46 = v48;
                  v55(v48, v45, v7);
                  v43(v7, v24);
                  v53(v46, v7);
                  if ((v40 * v44) >> 64 == (v40 * v44) >> 63)
                  {
                    return;
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

uint64_t sub_1004294D4()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[10];
  v3 = *(v2 - 8);
  result = __chkstk_darwin();
  v6 = v32 - v5;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v0;
  v8 = v1[12];
  v10 = v3 + 16;
  v9 = *(v3 + 16);
  v38 = result;
  v43 = v9;
  v9(v6, v0 + v8, v2);
  v11 = v1[11];
  v12 = (*(v11 + 32))(v2, v11);
  v14 = *(v3 + 8);
  v13 = v3 + 8;
  v41 = v14;
  result = (v14)(v6, v2);
  if (v12 <= v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43(v6, v7 + v8, v2);
  v36 = v10;
  v42 = v8;
  v15 = v7;
  v39 = v7;
  v40 = v13;
  v16 = *(v11 + 24);
  v16(v44, v2, v11);
  v17 = v41;
  v41(v6, v2);
  v18 = v15 + v42;
  v19 = v43;
  v43(v6, v18, v2);
  v16(v45, v2, v11);
  v17(v6, v2);
  v20 = v42;
  v19(v6, &v39[v42], v2);
  v16(v46, v2, v11);
  result = (v41)(v6, v2);
  if (!v47)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v47;
  v21 = v39;
  v43(v6, &v39[v20], v2);
  v34 = v16;
  v35 = v11 + 24;
  v16(v48, v2, v11);
  v22 = v41;
  result = (v41)(v6, v2);
  if (!v49)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32[1] = v38 % v49;
  v33 = v38 / v33;
  v37 = v11;
  if (v33 < 1)
  {
    v24 = v42;
    v26 = v43;
    v25 = v34;
    if (v38 % v49)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = v38 % v49;
    v43(v6, &v21[v42], v2);
    v34(v50, v2, v11);
    v22(v6, v2);
    if (v23)
    {
      v24 = v42;
      v21 = v39;
      v25 = v34;
LABEL_9:
      v43(v6, &v21[v24], v2);
      v25(v51, v2, v37);
      v41(v6, v2);
      v24 = v42;
      v26 = v43;
      v43(v6, &v21[v42], v2);
      goto LABEL_12;
    }

    v24 = v42;
    v26 = v43;
    v21 = v39;
    v25 = v34;
  }

  v26(v6, &v21[v24], v2);
LABEL_12:
  v25(v52, v2, v37);
  result = (v41)(v6, v2);
  if ((v53 & 1) == 0)
  {
    return result;
  }

  v26(v6, &v21[v24], v2);
  v27 = v37;
  v25(v54, v2, v37);
  v28 = v41;
  result = (v41)(v6, v2);
  if (!v55)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if ((v38 + 1) % v55)
  {
    v29 = v27;
    v30 = v21;
    v31 = v29;
    v43(v6, &v30[v42], v2);
    v25(v56, v2, v31);
    return v28(v6, v2);
  }

  return result;
}

void sub_100429AAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v1) + 0x50);
  v59 = *(v3 - 8);
  __chkstk_darwin(ObjectType);
  v62 = v47 - v4;
  v7 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  *&v8 = __chkstk_darwin(AssociatedTypeWitness).n128_u64[0];
  v65 = v47 - v9;
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v69, "layoutSubviews", v8);
  sub_1004285DC(v10);
  [v1 contentOffset];
  sub_100428F84(1, v11);
  v13 = v12;
  v15 = v14;
  v16 = *((swift_isaMask & *v1) + 0xB8);
  swift_beginAccess();
  v57 = v16;
  v17 = *(v1 + v16);
  v63 = v7;
  v61 = v3;
  v56 = swift_getAssociatedTypeWitness();
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v48 = *((swift_isaMask & *v1) + 0xA0);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  while (v20)
  {
LABEL_10:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = *(*(v17 + 48) + ((v22 << 9) | (8 * v24)));
    if ((*(v1 + v48) & 1) == 0 && v25 >= v13 && v25 < v15)
    {
      continue;
    }

    sub_10042A208(v25);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_10;
    }
  }

  if (v13 == v15)
  {
LABEL_17:
    *(v1 + v48) = 0;
    return;
  }

  if (v15 < v13)
  {
    goto LABEL_35;
  }

  if (v13 < v15)
  {
    v27 = *v1;
    v66 = *((swift_isaMask & *v1) + 0x60);
    v28 = v1 + *((swift_isaMask & v27) + 0xC0);
    v47[0] = v1 + *((swift_isaMask & v27) + 0xC8);
    v60 = (v59 + 2);
    v53 = v63 + 40;
    ++v59;
    v52 = v63 + 56;
    v47[1] = v63 + 72;
    v51 = (v64 + 8);
    v54 = v15;
    v49 = v1;
    v50 = v28;
    do
    {
      swift_beginAccess();
      v67 = v13;
      sub_100752F84();
      v29 = v68;
      swift_endAccess();
      if (v29)
      {
      }

      else
      {
        v64 = sub_10042A6E0(v13);
        v30 = v61;
        v31 = *v60;
        v32 = v62;
        (*v60)(v62, v1 + v66, v61);
        v33 = v63;
        v34 = v65;
        (*(v63 + 40))(v13, v30, v63);
        v35 = *v59;
        (*v59)(v32, v30);
        v36 = v1 + v66;
        v37 = v50;
        v58 = v31;
        v31(v32, v36, v30);
        v38 = v64;
        (*(v33 + 56))(v34, v13, v64, v30, v33);
        v39 = v30;
        v40 = v35;
        v35(v32, v39);
        if ((v37[8] & 1) != 0 || v13 != *v37)
        {
          v15 = v54;
          if (*(v47[0] + 8))
          {
            (*v51)(v65, AssociatedTypeWitness);

            v1 = v49;
          }

          else
          {
            v1 = v49;
            if (v13 == *v47[0])
            {
              v45 = v61;
              v44 = v62;
              v58(v62, v49 + v66, v61);
              v46 = v65;
              (*(v63 + 72))(2, v38, v65, v45);

              v40(v44, v45);
              (*v51)(v46, AssociatedTypeWitness);
            }

            else
            {
              (*v51)(v65, AssociatedTypeWitness);
            }
          }
        }

        else
        {
          v1 = v49;
          v42 = v61;
          v41 = v62;
          v58(v62, v49 + v66, v61);
          v43 = v65;
          (*(v63 + 72))(1, v38, v65, v42);

          v40(v41, v42);
          (*v51)(v43, AssociatedTypeWitness);
          v15 = v54;
        }
      }

      ++v13;
    }

    while (v15 != v13);
    goto LABEL_17;
  }

LABEL_36:
  __break(1u);
}

void sub_10042A208(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = v31 - v7;
  v37 = *(v5 - 8);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v31 - v12;
  v38 = a1;
  v39 = a1;
  swift_beginAccess();
  v35 = v4;
  v13 = swift_getAssociatedTypeWitness();
  sub_100752F74();
  sub_100752F64();
  swift_endAccess();
  v14 = v40;
  if (v40)
  {
    v15 = &v1[*((swift_isaMask & *v1) + 0xC0)];
    if ((v15[8] & 1) == 0 && *v15 == v38 || (v16 = &v1[*((swift_isaMask & *v1) + 0xC8)], (v16[8] & 1) == 0) && *v16 == v38)
    {
      v17 = *((swift_isaMask & *v1) + 0x60);
      v31[0] = AssociatedTypeWitness;
      v18 = v37;
      v19 = *(v37 + 16);
      v32 = v40;
      v20 = v36;
      v19(v36, &v2[v17], v5);
      v21 = &v2[v17];
      v22 = v10;
      v19(v10, v21, v5);
      v31[1] = v13;
      v23 = v34;
      v24 = v35;
      v25 = v33;
      (*(v35 + 40))(v38, v5, v35);
      v26 = *(v18 + 8);
      v26(v22, v5);
      (*(v24 + 72))(0, v32, v25, v5, v24);
      (*(v23 + 8))(v25, v31[0]);
      v27 = v20;
      v14 = v32;
      v26(v27, v5);
    }

    v40 = v14;
    swift_beginAccess();
    sub_100750634();
    swift_getWitnessTable();
    sub_1007512F4();
    v28 = sub_1007512D4();
    swift_endAccess();
    if (v28)
    {
      v29 = v36;
      v30 = v37;
      (*(v37 + 16))(v36, &v2[*((swift_isaMask & *v2) + 0x60)], v5);
      (*(v35 + 64))(v14, v5);

      (*(v30 + 8))(v29, v5);
    }

    else
    {
    }
  }
}

id sub_10042A6E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *((swift_isaMask & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v19 - v8;
  swift_beginAccess();
  v10 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_100750634();
  swift_getWitnessTable();
  sub_1007512F4();
  sub_1007512C4();
  swift_endAccess();
  v11 = v21;
  if (v21)
  {
    v12 = v21;
  }

  else
  {
    (*(v7 + 16))(v9, &v2[*((swift_isaMask & *v2) + 0x60)], v6);
    v13 = (*(v10 + 48))(v6, v10);
    (*(v7 + 8))(v9, v6);
    v12 = v13;
    [v2 addSubview:v12];
    v11 = 0;
  }

  v14 = v11;
  v15 = v12;
  sub_1004294D4();
  [v15 setFrame:?];
  [v15 setAutoresizingMask:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  [v15 setSemanticContentAttribute:{objc_msgSendSuper2(&v20, "semanticContentAttribute")}];
  v17 = [v15 layer];
  [v17 setFlipsHorizontalAxis:{objc_msgSend(v15, "effectiveUserInterfaceLayoutDirection") == 1}];

  v21 = v15;
  v19[1] = a1;
  swift_beginAccess();
  sub_100752F74();
  sub_100752F94();
  swift_endAccess();
  return v15;
}

void sub_10042AA50(void *a1)
{
  v1 = a1;
  sub_100429AAC();
}

uint64_t sub_10042AA98(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & *v3) + 0x50);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v33 - v11;
  sub_1004285DC(v13);
  v15 = v10 + 16;
  v14 = *(v10 + 16);
  v39 = *((swift_isaMask & *v3) + 0x60);
  v40 = v14;
  v14(v12, &v3[v39], v9);
  v16 = *((v8 & v7) + 0x58);
  v17 = *(v16 + 24);
  v17(v41, v9, v16);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = *v41;
  v20 = *&v41[1];
  [v4 contentSize];
  v48.size.width = v21;
  v48.size.height = v22;
  v48.origin.x = v20;
  v48.origin.y = v19;
  v47.x = a2;
  v47.y = a3;
  if (!CGRectContainsPoint(v48, v47))
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v37 = v16;
  v38 = v18;
  v17(v42, v9, v16);
  result = v38(v12, v9);
  v24 = floor((a2 - v20) / (*&v42[4] + *&v42[6]));
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  if (v24 < 0 || sub_1004283D8() <= v25)
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v17(v43, v9, v37);
  result = v38(v12, v9);
  v26 = floor((a3 - v19) / (*&v43[5] + *&v43[7]));
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v12;
  v28 = v40;
  if (v26 < 0)
  {
    return 0;
  }

  v35 = v25;
  v36 = v26;
  v29 = v39;
  v33[1] = v15;
  v40(v27, &v4[v39], v9);
  v30 = v37;
  v34 = v17;
  v17(v44, v9, v37);
  v31 = v38;
  v38(v27, v9);
  if (v44[9] <= v36)
  {
    return 0;
  }

  v28(v27, &v4[v29], v9);
  v34(v45, v9, v30);
  result = v31(v27, v9);
  v32 = v35 * v46;
  if ((v35 * v46) >> 64 != (v35 * v46) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_10042AEDC()
{
  [v0 contentOffset];
  sub_100428F84(0, v1);
  v4 = (v3 - v2);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_1006312A4(v3 - v2, 0);
    if (sub_10042C3F4(v8, (v7 + 4), v4, v5, v6) != v4)
    {
      __break(1u);
    }
  }
}

void sub_10042AF78()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x58);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*((v3 & v2) + 0xC0)];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        sub_100752F84();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(1, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10042B34C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x58);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*((v3 & v2) + 0xC8)];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        sub_100752F84();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(2, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_10042B720(uint64_t a1, char a2)
{
  sub_10042CE7C();
  v5 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v5 = a1;
  v5[8] = a2 & 1;

  sub_10042B34C();
}

void sub_10042B794(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + 0xD0);
  v7 = *(v2 + v6);
  if (!v7 || [v7 phase] == 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == 4)
  {
    v9 = sub_100669078(a1);
    if (v9)
    {
      v10 = v9;
      [v9 locationInView:v2];
      v12 = v11;
      v14 = v13;
      v15 = [v2 hitTest:a2 withEvent:?];
      if (v15 && (sub_100016C60(0, &qword_100922300), v16 = v15, v17 = v2, v18 = sub_100753FC4(), v16, v17, (v18 & 1) != 0) || (v19 = sub_10042D21C(v15), (v19 & 1) == 0))
      {
        v20 = 0;
        v22 = 1;
      }

      else
      {
        v20 = sub_10042AA98(v19, v12, v14);
        v22 = v21;
      }

      sub_10042CB14();
      v23 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v23 = v20;
      v23[8] = v22 & 1;
      sub_10042AF78();

      v24 = *(v3 + v6);
      *(v3 + v6) = v10;
    }
  }

  sub_10042BE4C(v3, a1, a2, &selRef_touchesBegan_withEvent_);
}

void sub_10042B9AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & v5) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = v33 - v9;
  v11 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = v33 - v15;
  v17 = *((v6 & v5) + 0xD0);
  v18 = *(v3 + v17);
  if (v18)
  {
    v37 = v14;
    v19 = v18;
    if ((sub_1002A4ED0(v19, a1) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = *(v3 + v17);
    *(v3 + v17) = 0;

    v21 = v3 + *((swift_isaMask & *v3) + 0xC0);
    if (v21[8] & 1) != 0 || (v36 = *v21, ([v3 isDragging]))
    {
      sub_10042CB14();
      v22 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v22 = 0;
      v22[8] = 1;
      sub_10042AF78();
      sub_10042CE7C();
      v23 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v23 = 0;
      v23[8] = 1;
      sub_10042B34C();
      goto LABEL_6;
    }

    sub_10042CB14();
    v24 = v3 + *((swift_isaMask & *v3) + 0xC0);
    *v24 = 0;
    v24[8] = 1;
    sub_10042AF78();
    sub_10042CE7C();
    v25 = v3 + *((swift_isaMask & *v3) + 0xC8);
    *v25 = v36;
    v25[8] = 0;
    sub_10042B34C();
    v26 = swift_isaMask & *v3;
    v27 = v3 + *(v26 + 0x68);
    v35 = *v27;
    if (!v35)
    {
      goto LABEL_6;
    }

    v33[1] = *(v27 + 1);
    (*(v8 + 16))(v10, v3 + *(v26 + 96), v7);
    v28 = *(v11 + 40);
    v33[2] = v11 + 40;
    v34 = v28;

    v34(v36, v7, v11);
    (*(v8 + 8))(v10, v7);
    v29 = v35;
    v30 = v35(v16, v36);
    (*(v13 + 8))(v16, v37);
    if (v30)
    {
      sub_10042CB14();
      v31 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v31 = 0;
      v31[8] = 1;
      sub_10042AF78();
      sub_10042CE7C();
      v32 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v32 = 0;
      v32[8] = 1;
      sub_10042B34C();
    }

    sub_1000164A8(v29);
  }

LABEL_7:
  sub_10042BE4C(v3, a1, v38, &selRef_touchesEnded_withEvent_);
}

void sub_10042BE4C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  isa = sub_100753474().super.isa;
  v8.receiver = a1;
  v8.super_class = type metadata accessor for HorizontalShelfView();
  objc_msgSendSuper2(&v8, *a4, isa, a3);
}

uint64_t sub_10042BF40(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v8 = sub_100753484();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_10042BFF0(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0xD0);
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  sub_10042CB14();
  v7 = v2 + *((swift_isaMask & *v2) + 0xC0);
  *v7 = 0;
  v7[8] = 1;
  sub_10042AF78();
  sub_10042CE7C();
  v8 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v8 = 0;
  v8[8] = 1;
  sub_10042B34C();
  sub_10042BE4C(v2, a1, a2, &selRef_touchesCancelled_withEvent_);
}

uint64_t sub_10042C18C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_10042C210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100752FA4();

  return sub_10042C26C(a1, v6, a2, a3);
}

unint64_t sub_10042C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_100753014();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t *sub_10042C3F4(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10042C490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_100753354())
  {
    sub_1007546C4();
    v13 = sub_1007546B4();
  }

  else
  {
    v13 = &_swiftEmptyDictionarySingleton;
  }

  result = sub_100753374();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_100753334())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_100754564();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_10042C210(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_10042C77C()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_100750634();
  __chkstk_darwin(v5);
  v6 = (v1 + *((v3 & v2) + 0x68));
  *v6 = 0;
  v6[1] = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x70)) = 1;
  *(v1 + *((swift_isaMask & *v1) + 0x78)) = 0;
  v7 = *((swift_isaMask & *v1) + 0x80);
  v8 = objc_allocWithZone(sub_100749AF4());
  *(v1 + v7) = sub_100749AE4();
  v9 = (v1 + *((swift_isaMask & *v1) + 0x88));
  *v9 = 0;
  v9[1] = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x90)) = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x98)) = 0;
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 0;
  v10 = v1 + *((swift_isaMask & *v1) + 0xA8);
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_100750624();
  swift_getWitnessTable();
  sub_1007512E4();
  v11 = *((swift_isaMask & *v1) + 0xB8);
  swift_getTupleTypeMetadata2();
  v12 = sub_100753314();
  v13 = sub_10042C490(v12, &type metadata for Int, AssociatedTypeWitness, &protocol witness table for Int);

  *(v1 + v11) = v13;
  v14 = v1 + *((swift_isaMask & *v1) + 0xC0);
  *v14 = 0;
  v14[8] = 1;
  v15 = v1 + *((swift_isaMask & *v1) + 0xC8);
  *v15 = 0;
  v15[8] = 1;
  *(v1 + *((swift_isaMask & *v1) + 0xD0)) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10042CB14()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = &v0[*((v2 & v1) + 0xC0)];
  if ((v15[8] & 1) == 0)
  {
    v25 = v12;
    v26 = v11;
    v16 = *v15;
    swift_beginAccess();
    v27 = v16;
    swift_getAssociatedTypeWitness();
    sub_100752F84();
    v17 = v28;
    if (v28)
    {
      swift_endAccess();
      v18 = *((swift_isaMask & *v0) + 0x60);
      v23 = v16;
      v24 = AssociatedTypeWitness;
      v19 = *(v6 + 16);
      v19(v14, &v0[v18], v4);
      v19(v9, &v0[v18], v4);
      v20 = v25;
      (*(v3 + 40))(v23, v4, v3);
      v21 = *(v6 + 8);
      v21(v9, v4);
      (*(v3 + 72))(0, v17, v20, v4, v3);

      (*(v26 + 8))(v20, v24);
      v21(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_10042CE7C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = &v0[*((v2 & v1) + 0xC8)];
  if ((v15[8] & 1) == 0)
  {
    v29 = v12;
    v30 = v11;
    v16 = *v15;
    swift_beginAccess();
    v31 = v16;
    swift_getAssociatedTypeWitness();
    sub_100752F84();
    v17 = v32;
    if (v32)
    {
      swift_endAccess();
      v18 = *v0;
      v19 = &v0[*((swift_isaMask & *v0) + 0xC0)];
      v20 = *v19;
      v27 = v19[8];
      v26 = v16 == v20;
      v21 = *((swift_isaMask & v18) + 0x60);
      v28 = AssociatedTypeWitness;
      v25 = v16;
      v22 = *(v6 + 16);
      v22(v14, &v0[v21], v4);
      v22(v9, &v0[v21], v4);
      v23 = v29;
      (*(v3 + 40))(v25, v4, v3);
      v24 = *(v6 + 8);
      v24(v9, v4);
      (*(v3 + 72))(v26 & ~v27, v17, v23, v4, v3);

      (*(v30 + 8))(v23, v28);
      v24(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

unint64_t sub_10042D21C(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  swift_getAssociatedTypeWitness();
  while (1)
  {
    v5 = swift_dynamicCastUnknownClass();
    v4 = v5 != 0;
    if (v5)
    {
      break;
    }

    type metadata accessor for HorizontalShelfView();
    if (swift_dynamicCastClass())
    {
      break;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      if ([v6 isTracking])
      {
        break;
      }
    }

    v4 = [v3 superview];

    v3 = v4;
    if (!v4)
    {
      return v4;
    }
  }

  return v4;
}

void sub_10042D358(double *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v37 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_10042AEDC();
  v15 = v14;

  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = *a1;
    v18 = swift_unknownObjectUnownedLoadStrong();
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    Width = CGRectGetWidth(v40);
    if (v17 > 0.0)
    {
      v28 = Width;
      v29 = swift_unknownObjectUnownedLoadStrong();
      [v29 contentSize];
      v31 = v30;

      if (v17 < v31 - v28)
      {
        v32 = swift_unknownObjectUnownedLoadStrong();
        (*(v10 + 16))(v12, &v32[*((swift_isaMask & *v32) + 0x60)], v9);
        (*(*(*&v8 + 88) + 24))(v37, v9);

        (*(v10 + 8))(v12, v9);
        v33 = v38 + v39;
        v34 = a2;
        if (a2 == 0.0)
        {
          v34 = v4[3];
        }

        v35 = fmod(v17, v38 + v39);
        if (v34 >= 0.0)
        {
          v36 = v33 - v35 + *a1;
        }

        else
        {
          v36 = *a1 - v35;
        }

        *a1 = v36;
        v4[3] = a2;
        v4[4] = a3;
      }
    }
  }
}

unint64_t sub_10042D614()
{
  result = qword_100937DE8;
  if (!qword_100937DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937DE8);
  }

  return result;
}

uint64_t sub_10042D668(uint64_t a1, uint64_t a2)
{
  v2[26] = a1;
  v2[27] = a2;
  v3 = sub_100741264();
  v2[28] = v3;
  v2[29] = *(v3 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_10042D728, 0, 0);
}

id sub_10042D728()
{
  if (sub_1007466E4())
  {
    v1 = sub_100753094();
    v3 = v2;
    *(v0 + 144) = 1;
    *(v0 + 168) = &type metadata for Bool;
    sub_10000C610((v0 + 144), (v0 + 176));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1006743B4((v0 + 176), v1, v3, isUniquelyReferenced_nonNull_native);
  }

  if (sub_100746704())
  {
    v5 = sub_100753094();
    v7 = v6;
    *(v0 + 104) = &type metadata for Bool;
    *(v0 + 80) = 1;
    sub_10000C610((v0 + 80), (v0 + 112));
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006743B4((v0 + 112), v5, v7, v8);
  }

  v9 = sub_1007466F4();
  if ((v10 & 1) == 0)
  {
    v11 = v9;
    v12 = sub_100753094();
    v14 = v13;
    *(v0 + 40) = &type metadata for Double;
    *(v0 + 16) = v11;
    sub_10000C610((v0 + 16), (v0 + 48));
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1006743B4((v0 + 48), v12, v14, v15);
  }

  if (_swiftEmptyDictionarySingleton[2])
  {
    v16 = [objc_allocWithZone(_LSOpenConfiguration) init];
    if (v16)
    {
      isa = sub_100752F34().super.isa;
      [v16 setFrontBoardOptions:isa];
    }
  }

  else
  {
    v16 = 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v21 = *(v0 + 232);
    v20 = *(v0 + 240);
    v22 = *(v0 + 224);
    v23 = *(v0 + 208);

    sub_100746714();
    sub_100741204(v24);
    v26 = v25;
    (*(v21 + 8))(v20, v22);
    [v19 openURL:v26 configuration:v16 completionHandler:0];

    v27 = enum case for ActionOutcome.performed(_:);
    v28 = sub_100752624();
    (*(*(v28 - 8) + 104))(v23, v27, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10042DA58(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000A27FC;

  return sub_10042D668(a1, v4);
}

unint64_t sub_10042DAFC()
{
  result = qword_100937DF0;
  if (!qword_100937DF0)
  {
    sub_100746734();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937DF0);
  }

  return result;
}

uint64_t sub_10042DB54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10042DBA8();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_10042DBA8()
{
  result = qword_100937DF8;
  if (!qword_100937DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100937DF8);
  }

  return result;
}

uint64_t sub_10042DBFC()
{
  v0 = sub_100751344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751374();
  sub_100039C50(v4, qword_1009802A8);
  sub_10000D0FC(v4, qword_1009802A8);
  (*(v1 + 104))(v3, enum case for Separator.Position.bottom(_:), v0);
  v7[3] = sub_1007507D4();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v7);
  sub_1007507C4();
  return sub_100751354();
}

void sub_10042DD34()
{
  v1 = v0;
  v2 = sub_100751374();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator] & 1) == 0)
  {
    v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
LABEL_10:
    if (!v14)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v19 = v14;
    v12 = 0;
    v18 = v14;
LABEL_12:
    [v18 removeFromSuperview];
    goto LABEL_14;
  }

  if (qword_100920C08 != -1)
  {
    v27 = v4;
    swift_once();
    v4 = v27;
  }

  v7 = v4;
  v8 = sub_10000D0FC(v4, qword_1009802A8);
  (*(v3 + 16))(v6, v8, v7);
  v9 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
  swift_beginAccess();
  v11 = *(v3 + 40);
  v12 = v9;
  v11(&v9[v10], v6, v7);
  swift_endAccess();

  v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = sub_100753FC4();

    if ((v17 & 1) == 0)
    {
      v18 = *v13;
      if (*v13)
      {
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v20 = *v13;
  *v13 = v12;
  v21 = v12;

  v22 = *v13;
  if (v14)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    type metadata accessor for SeparatorView();
    v14 = v14;
    v23 = v22;
    v24 = sub_100753FC4();

    if (v24)
    {
      goto LABEL_22;
    }

    v22 = *v13;
    if (!*v13)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22)
  {
    v14 = 0;
LABEL_21:
    v25 = v22;
    v26 = [v1 contentView];
    [v26 addSubview:v25];

    v21 = v25;
    v14 = v26;
LABEL_22:

    v21 = v14;
  }
}

uint64_t sub_10042E030()
{
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_100982098);
  qword_1009802D8 = v0;
  unk_1009802E0 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_1009802C0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_10042E0EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_10000D198();
  v18 = sub_100753E54();
  v19 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v17] = sub_10025F574(v18, 0.0, 0.0, 0.0, 0.0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v21 = sub_100750534();
  v22 = sub_10000D0FC(v21, qword_100980CF0);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v16, v22, v21);
  (*(v23 + 56))(v16, 0, 1, v21);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v24 = objc_allocWithZone(sub_100745C84());
  *&v5[v20] = sub_100745C74();
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *&v5[v25] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView] = 0;
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v27 = sub_10074F164();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v28 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v47.receiver = v5;
  v47.super_class = v28;
  v29 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView]];

  v32 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  v33 = *&v29[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines;
  v35 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines];
  *&v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines] = 2;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if (v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] == 1)
  {
    v37 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel];
    v38 = v33;
    [v37 setNumberOfLines:2];
    if (*&v33[v34] == v35)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v33;
    if (v35 == 2)
    {
      goto LABEL_9;
    }
  }

  if (v33[v36])
  {
    sub_100260550();
  }

LABEL_9:

  v40 = [v29 contentView];
  [v40 addSubview:*&v29[v32]];

  v41 = [v29 contentView];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  [v41 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata]];

  v43 = *&v29[v42];
  v44 = sub_100753DF4();
  [v43 setTextColor:v44];

  v45 = sub_100753E54();
  [v29 setBackgroundColor:v45];

  return v29;
}

void sub_10042E718()
{
  v1 = [v0 contentView];
  v2 = [v0 backgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView];
  v4 = [v0 backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v6 = [v0 backgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  v8 = [v0 backgroundColor];
  [v7 setBackgroundColor:v8];
}

uint64_t sub_10042E858()
{
  v62 = sub_100751374();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v59 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView];
  sub_1007477B4();
  [v7 sizeThatFits:{v8, v9}];
  v11 = v10;
  sub_1007477B4();
  MinX = CGRectGetMinX(v69);
  sub_1007477B4();
  MinY = CGRectGetMinY(v70);
  sub_1007477B4();
  Width = CGRectGetWidth(v71);
  [v7 setFrame:{MinX, MinY, Width, v11}];
  if (qword_100920C10 != -1)
  {
    swift_once();
  }

  sub_10000C824(qword_1009802C0, v66);
  sub_1007477B4();
  Height = CGRectGetHeight(v72);
  v73.origin.x = MinX;
  v73.origin.y = MinY;
  v73.size.width = Width;
  v73.size.height = v11;
  v16 = CGRectGetHeight(v73);
  sub_10000C888(v66, v67);
  sub_100536120();
  sub_100750564();
  v18 = v17;
  v19 = v3 + 8;
  v20 = *(v3 + 8);
  v65 = v19;
  v20(v5, v2);
  v21 = Height - (v16 + v18);
  v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata];
  sub_1007477B4();
  v64 = v22;
  [v22 sizeThatFits:{v23, v24}];
  v26 = v25;
  v27 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v63 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  if ((v27[OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed] & 1) == 0)
  {
    sub_10000C888(v66, v67);
    sub_100536120();
    sub_100750564();
    v29 = v28;
    v20(v5, v2);
    v21 = v21 - (v26 + v29);
  }

  sub_1007477B4();
  [v27 measurementsWithFitting:v0 in:{CGRectGetWidth(v74), v21}];
  v31 = v30;
  sub_1007477B4();
  v32 = CGRectGetMinX(v75);
  v76.origin.x = MinX;
  v76.origin.y = MinY;
  v76.size.width = Width;
  v76.size.height = v11;
  MaxY = CGRectGetMaxY(v76);
  sub_10000C888(v66, v67);
  sub_100536120();
  sub_100750564();
  v35 = v34;
  v20(v5, v2);
  sub_1007477B4();
  [v27 setFrame:{v32, MaxY + v35, CGRectGetWidth(v77), v31}];
  [v27 frame];
  v36 = CGRectGetMinX(v78);
  [v27 frame];
  v37 = CGRectGetMaxY(v79);
  sub_10000C888(v66, v67);
  sub_100536120();
  sub_100750564();
  v39 = v38;
  v20(v5, v2);
  sub_1007477B4();
  v40 = CGRectGetWidth(v80);
  v41 = v64;
  [v64 setFrame:{v36, v37 + v39, v40, v26}];
  v42 = 1.0;
  if (v27[v63])
  {
    v42 = 0.0;
  }

  [v41 setAlpha:v42];
  v43 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView];
  if (v43)
  {
    v44 = v43;
    sub_1007477B4();
    CGRectGetMinX(v81);
    [v0 bounds];
    CGRectGetMinY(v82);
    sub_1007477B4();
    CGRectGetWidth(v83);
    [v0 bounds];
    CGRectGetHeight(v84);
    v45 = OBJC_IVAR____TtC22SubscribePageExtension13SeparatorView_separator;
    swift_beginAccess();
    v46 = v61;
    v47 = &v44[v45];
    v48 = v60;
    v49 = v62;
    (*(v61 + 16))(v60, v47, v62);
    sub_100751324();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    (*(v46 + 8))(v48, v49);
    [v44 setFrame:{v51, v53, v55, v57}];
  }

  return sub_10000C620(v66);
}

id sub_10042EF28()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = type metadata accessor for UpdatesLockupCollectionViewCell();
  v13.receiver = v0;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v6 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_100743384(v14, v7);

  v8 = sub_10074F164();
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  swift_beginAccess();
  sub_10043084C(v4, &v1[v9]);
  swift_endAccess();
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  sub_10025FCF0(0, 0);
  [v10 setNeedsLayout];
  return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata] setText:0];
}

void sub_10042F0F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24[-v7 - 8];
  v9 = sub_10074F314();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10074F284();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    v23 = a2;

    sub_10074F294();
    v14 = sub_10074F254();
    (*(v11 + 8))(v13, v10);
    if (qword_100920548 != -1)
    {
      swift_once();
    }

    v15 = sub_100747064();
    sub_10000D0FC(v15, qword_10097E3A8);
    sub_100746F34();
    sub_10074F374();
    v16 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView);
    v17 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v18 = *(v16 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v18 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_10000D198();
      sub_100753E34();
    }

    sub_100743224();

    [*(v16 + v17) setContentMode:v14];
    sub_10074F3C4();
    v19 = sub_10074F164();
    (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_10043084C(v8, v3 + v20);
    swift_endAccess();
    sub_1007442C4();
    v21 = *(v16 + v17);
    sub_1007433C4();
    v22 = v21;
    sub_100744244();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1007441F4();

    sub_10000C8CC(v24, &unk_1009276E0);
  }
}

void sub_10042F4C0(objc_class *a1, int a2, uint64_t a3)
{
  v39 = a2;
  v5 = sub_10000C518(&qword_100926DC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10074F164();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v38 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  sub_100171C7C(a3, v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) == 1)
  {
    v10 = v13;
  }

  else
  {
    v37 = a1;
    v36 = *(v15 + 32);
    v36(v19, v13, v14);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = v7;
      v22 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
      v23 = Strong;
      swift_beginAccess();
      sub_100171C7C(v23 + v22, v10);

      if (v20(v10, 1, v14) != 1)
      {
        v31 = v38;
        v36(v38, v10, v14);
        sub_1004308FC(&qword_100926DC8, &type metadata accessor for Artwork.URLTemplate);
        v32 = sub_100753014();
        v33 = *(v15 + 8);
        v33(v31, v14);
        v33(v19, v14);
        v7 = v35;
        a1 = v37;
        if ((v32 & 1) == 0)
        {
          return;
        }

        goto LABEL_9;
      }

      (*(v15 + 8))(v19, v14);
      v7 = v35;
    }

    else
    {
      (*(v15 + 8))(v19, v14);
      (*(v15 + 56))(v10, 1, 1, v14);
    }

    a1 = v37;
  }

  sub_10000C8CC(v10, &qword_100926DC0);
LABEL_9:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = *(*(v24 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);

    v40.is_nil = (v39 & 1) == 0;
    v40.value.super.isa = a1;
    sub_1007432F4(v40, v27);
  }

  swift_beginAccess();
  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    (*(v15 + 56))(v7, 1, 1, v14);
    v30 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
    swift_beginAccess();
    sub_10043084C(v7, v29 + v30);
    swift_endAccess();
  }
}

double sub_10042F924(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - v7;
  v83 = sub_1007479B4();
  v9 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v82 = &v80 - v12;
  v13 = sub_100747064();
  v93 = *(v13 - 8);
  v94 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100754724();
  v87 = *(v92 - 8);
  *&v15 = __chkstk_darwin(v92).n128_u64[0];
  v91 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView];
  v18 = [*(v17 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) attributedText];
  v19 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
  v88 = v3[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator];
  v20 = [*&v3[OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata] text];
  if (v20)
  {
    v21 = v20;
    v85 = sub_100753094();
    v89 = v22;
  }

  else
  {
    v85 = 0;
    v89 = 0;
  }

  [v3 layoutMargins];
  v27 = v26;
  if (v19)
  {
    v28 = 2;
  }

  else
  {
    v28 = 0;
  }

  v90 = v18;
  v84 = v24;
  if (v18)
  {
    v29 = v23;
    if (a2 >= a1)
    {
      v30 = a1;
    }

    else
    {
      v30 = a2;
    }

    v31 = a1;
    if (v30 != 0.0)
    {
      v32 = v24;
      v33 = v25;
      v34 = v18;
      v35 = [v3 traitCollection];
      v36 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v37 = objc_allocWithZone(v36);
      v38 = &v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_layoutMargins];
      *v38 = v29;
      *(v38 + 1) = v32;
      *(v38 + 2) = v33;
      *(v38 + 3) = v27;
      *&v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_numberOfLines] = v28;
      v39 = &v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_fittingSize];
      *v39 = a1;
      v39[1] = a2;
      *&v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_traitCollection] = v35;
      *&v37[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2420MeasurementsCacheKey_attributedText] = v34;
      v97.receiver = v37;
      v97.super_class = v36;
      v40 = objc_msgSendSuper2(&v97, "init");
      if (qword_1009206A8 != -1)
      {
        swift_once();
      }

      v41 = qword_10092F470;
      v42 = [qword_10092F470 objectForKey:v40];
      if (v42)
      {
        v43 = v42;

        v31 = *&v43[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
      }

      else
      {
        v86 = v41;
        v44 = qword_1009206A0;
        v43 = v34;
        if (v44 != -1)
        {
          swift_once();
        }

        v45 = sub_100750534();
        v46 = sub_10000D0FC(v45, qword_10092F458);
        v47 = *(v45 - 8);
        (*(v47 + 16))(v8, v46, v45);
        (*(v47 + 56))(v8, 0, 1, v45);
        sub_100750964();
        sub_100750984();
        sub_100750974();
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_10000C8CC(v8, &unk_100928A40);
        v54 = type metadata accessor for ExpandableTextView.CacheValue();
        v55 = objc_allocWithZone(v54);
        v56 = &v55[OBJC_IVAR____TtCC22SubscribePageExtension18ExpandableTextViewP33_177A8550F09467BBA030D3A485389D2410CacheValue_measurements];
        *v56 = a1;
        v56[1] = v29 + v33 + v49;
        *(v56 + 2) = v51;
        *(v56 + 3) = v53;
        v96.receiver = v55;
        v96.super_class = v54;
        v57 = objc_msgSendSuper2(&v96, "init");
        [v86 setObject:v57 forKey:v40];

        v31 = a1;
      }
    }
  }

  else
  {
    v31 = a1;
  }

  if (qword_100920C10 != -1)
  {
    swift_once();
  }

  LODWORD(v86) = v19;
  sub_10000C888(qword_1009802C0, qword_1009802D8);
  v58 = v91;
  sub_100536120();
  sub_100750564();
  v59 = *(v87 + 8);
  v59(v58, v92);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v60 = v94;
  v61 = sub_10000D0FC(v94, qword_10097E3A8);
  v62 = [v3 traitCollection];
  (*(v93 + 16))(v95, v61, v60);
  v63 = sub_100746FD4();
  if ((v65 & 1) == 0 && ((v63 | v64) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v66 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v66 = qword_10093FF58;
    }

    v67 = v83;
    v68 = sub_10000D0FC(v83, v66);
    v69 = v81;
    (*(v9 + 16))(v81, v68, v67);
    v70 = v82;
    (*(v9 + 32))(v82, v69, v67);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v9 + 8))(v70, v67);
  }

  v71 = v95;
  sub_100746F14();

  (*(v93 + 8))(v71, v94);
  if ((v89 == 0) | v86 & 1)
  {
    v72 = v90;
  }

  else
  {
    sub_10000C888(qword_1009802C0, qword_1009802D8);
    v73 = v91;
    sub_100536120();
    sub_100750564();
    v59(v73, v92);
    v72 = v90;
    if (qword_100920FE8 != -1)
    {
      swift_once();
    }

    v74 = sub_100750534();
    sub_10000D0FC(v74, qword_100980CF0);
    v75 = sub_10074F3F4();
    v98[3] = v75;
    v98[4] = sub_1004308FC(&qword_10092AC70, &type metadata accessor for Feature);
    v76 = sub_10000D134(v98);
    (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
    sub_10074FC74();
    sub_10000C620(v98);
    sub_10074CCB4();
  }

  if (v88)
  {
    if (qword_100920C08 != -1)
    {
      swift_once();
    }

    v77 = sub_100751374();
    sub_10000D0FC(v77, qword_1009802A8);
    sub_100753BD4();
    v31 = v78;
  }

  return v31;
}

id sub_1004304D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpdatesLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpdatesLockupCollectionViewCell()
{
  result = qword_100937E50;
  if (!qword_100937E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004305DC()
{
  sub_100430694();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100430694()
{
  if (!qword_100937E60)
  {
    sub_10074F164();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_100937E60);
    }
  }
}

uint64_t sub_10043070C()
{
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v0 = sub_100747064();
  sub_10000D0FC(v0, qword_10097E3A8);
  return sub_100746F34();
}

void sub_100430788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

uint64_t sub_1004307F4(uint64_t a1)
{
  result = sub_1004308FC(&qword_100937E68, type metadata accessor for UpdatesLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10043084C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100926DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004308BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004308FC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100430944()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_expandableTextView;
  sub_10000D198();
  v10 = sub_100753E54();
  v11 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *(v1 + v9) = sub_10025F574(v10, 0.0, 0.0, 0.0, 0.0);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_versionMetadata;
  if (qword_100920FE8 != -1)
  {
    swift_once();
  }

  v13 = sub_100750534();
  v14 = sub_10000D0FC(v13, qword_100980CF0);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v8, v14, v13);
  (*(v15 + 56))(v8, 0, 1, v13);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v16 = objc_allocWithZone(sub_100745C84());
  *(v1 + v12) = sub_100745C74();
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_lockupView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_hasSeparator) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_separatorView) = 0;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31UpdatesLockupCollectionViewCell_fetchingArtworkTemplate;
  v19 = sub_10074F164();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  sub_100754644();
  __break(1u);
}

void *sub_100430C6C(void *result, double a2)
{
  if (*(v2 + 32) != a2)
  {
    *(v2 + 32) = a2;
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentOffset];
    v7 = v6;
    v8 = [v3 contentInset];
    v9.n128_f64[0] = fmin((v5 + v7 + v9.n128_f64[0] - *(v2 + 32)) / *(v2 + 40), 1.0);
    if (v9.n128_f64[0] < 0.0)
    {
      v9.n128_f64[0] = 0.0;
    }

    return (*(v2 + 16))(v8, v9);
  }

  return result;
}

uint64_t sub_100430D0C(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  v7 = [a1 contentInset];
  v8.n128_f64[0] = fmin((v4 + v6 + v8.n128_f64[0] - *(v1 + 32)) / *(v1 + 40), 1.0);
  if (v8.n128_f64[0] < 0.0)
  {
    v8.n128_f64[0] = 0.0;
  }

  return (*(v1 + 16))(v7, v8);
}

uint64_t sub_100430D9C()
{

  return swift_deallocClassInstance();
}

CGFloat sub_100430DFC()
{
  CGAffineTransformMakeScale(&v2, 1.0, -1.0);
  *&v1.a = *&v2.m11;
  *&v1.c = *&v2.m13;
  *&v1.tx = *&v2.m21;
  CATransform3DMakeAffineTransform(&v2, &v1);
  *byte_1009802F0 = v2;
  return v2.m21;
}

uint64_t type metadata accessor for RevealingImageMirrorView()
{
  result = qword_100937F48;
  if (!qword_100937F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100430F74()
{
  v0 = sub_1007486F4();
  __chkstk_darwin(v0 - 8);
  v2 = v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100748714();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  v11 = sub_10007DC04();
  sub_10011F99C(v11, v2);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100120D24();
  swift_unknownObjectRelease();
  v12 = sub_100750F34();
  swift_allocObject();
  v13 = sub_100750F14();
  v18[10] = v12;
  v18[11] = &protocol witness table for LayoutViewPlaceholder;
  v18[7] = v13;
  swift_allocObject();
  v14 = sub_100750F14();
  v18[5] = v12;
  v18[6] = &protocol witness table for LayoutViewPlaceholder;
  v18[2] = v14;
  sub_100748704();
  swift_getKeyPath();
  sub_100746914();

  sub_1004312C4(&qword_10092EDE0, &type metadata accessor for SmallBreakoutLayout);
  sub_100750404();
  v16 = v15;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v16;
}

uint64_t sub_1004312C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10043130C(uint64_t a1)
{
  v2 = sub_100741494();
  v24 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&unk_1009231A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007A5CF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007A7210;
  type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0x6574616C756D6953;
  *(v7 + 64) = 0xEF65676E61684320;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_100431630;
  *(v7 + 112) = 0;
  sub_100741484();
  v8 = sub_100741464();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v5, v2);
  v26 = v8;
  v27 = v10;
  sub_1007544E4();
  *(v6 + 32) = v7;
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v14 = swift_allocObject();
  v14[7] = 0x6C6C412077656956;
  v14[8] = 0xE800000000000000;
  v14[10] = 0;
  v14[11] = 0;
  v14[9] = 0;
  v14[12] = sub_100432B04;
  v14[13] = v13;

  sub_100741484();
  v15 = sub_100741464();
  v17 = v16;

  v18 = v24;
  v11(v5, v24);
  v26 = v15;
  v27 = v17;
  sub_1007544E4();

  *(v6 + 40) = v14;
  type metadata accessor for DebugSection();
  v19 = swift_allocObject();
  sub_100741484();
  v20 = sub_100741464();
  v22 = v21;
  v11(v5, v18);
  v19[2] = v20;
  v19[3] = v22;
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[6] = v6;
  result = v25;
  *(v25 + 32) = v19;
  return result;
}

void sub_100431630()
{
  v0 = [objc_opt_self() defaultCenter];
  [v0 postNotificationName:ASDAppCapabilitiesDidChangeNotification object:0];
}

void sub_1004316A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100432B0C(a3);
  }
}

uint64_t sub_1004316FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v118 = a2;
  v3 = sub_100752614();
  __chkstk_darwin(v3 - 8);
  v129 = v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_100741494();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100748FA4();
  __chkstk_darwin(v6 - 8);
  v117 = v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10074EA34();
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10074EAB4();
  __chkstk_darwin(v111);
  v114 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1007457B4();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v112 = v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10074DBC4();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v110 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10074C7B4();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v124 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v13 - 8);
  v120 = v96 - v14;
  v15 = sub_10000C518(&unk_100928740);
  __chkstk_darwin(v15 - 8);
  v123 = v96 - v16;
  v17 = sub_10000C518(&qword_10092F318);
  __chkstk_darwin(v17 - 8);
  v122 = v96 - v18;
  v19 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v19 - 8);
  v105 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v121 = v96 - v22;
  v23 = sub_1007439C4();
  __chkstk_darwin(v23 - 8);
  v99 = v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&qword_1009245A0);
  __chkstk_darwin(v25 - 8);
  v97 = v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v98 = v96 - v28;
  v29 = sub_10000C518(&qword_10092F320);
  __chkstk_darwin(v29 - 8);
  v31 = v96 - v30;
  v32 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v32 - 8);
  v34 = v96 - v33;
  v35 = sub_10074E984();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = *a1;
  v39 = a1[1];
  v141 = 0;
  v139 = 0u;
  v140 = 0u;
  v40 = *(v36 + 104);
  v100 = v96 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40();
  v41 = *(v36 + 56);
  v101 = v34;
  v41(v34, 1, 1, v35);
  v42 = sub_100743AA4();
  v43 = *(*(v42 - 8) + 56);
  v102 = v31;
  v43(v31, 1, 1, v42);
  *&v133 = 0;
  *(&v133 + 1) = 0xE000000000000000;
  sub_100754534(26);

  *&v133 = 0xD000000000000018;
  *(&v133 + 1) = 0x800000010077C320;
  v44 = objc_opt_self();
  v45 = sub_100753064();
  v46 = [v44 isCapableOfAction:0 capability:v45];

  if (v46)
  {
    v47._countAndFlagsBits = 7562585;
  }

  else
  {
    v47._countAndFlagsBits = 28494;
  }

  if (v46)
  {
    v48 = 0xE300000000000000;
  }

  else
  {
    v48 = 0xE200000000000000;
  }

  v47._object = v48;
  sub_1007531B4(v47);

  v136 = v133;
  *&v133 = 0x203A6E65704FLL;
  *(&v133 + 1) = 0xE600000000000000;
  v49 = sub_100753064();
  v50 = [v44 isCapableOfAction:3 capability:v49];

  if (v50)
  {
    v51._countAndFlagsBits = 7562585;
  }

  else
  {
    v51._countAndFlagsBits = 28494;
  }

  if (v50)
  {
    v52 = 0xE300000000000000;
  }

  else
  {
    v52 = 0xE200000000000000;
  }

  v51._object = v52;
  sub_1007531B4(v51);

  v96[1] = v133;
  v137 = v133;
  v96[0] = *(&v133 + 1);
  *&v133 = 0x203A657461647055;
  *(&v133 + 1) = 0xE800000000000000;
  v96[5] = v38;
  v96[4] = v39;
  v53 = sub_100753064();
  v54 = [v44 isCapableOfAction:1 capability:v53];

  if (v54)
  {
    v55._countAndFlagsBits = 7562585;
  }

  else
  {
    v55._countAndFlagsBits = 28494;
  }

  v56 = v120;
  if (v54)
  {
    v57 = 0xE300000000000000;
  }

  else
  {
    v57 = 0xE200000000000000;
  }

  v55._object = v57;
  sub_1007531B4(v55);

  v96[3] = v133;
  v138 = v133;
  v96[2] = *(&v133 + 1);
  v142 = _swiftEmptyArrayStorage;
  sub_10001E5F4(0, 3, 0);
  v58 = v142;

  v59 = v127;
  sub_100741484();
  v60 = sub_100741464();
  v62 = v61;
  v63 = *(v130 + 8);
  v130 += 8;
  v119 = v63;
  v63(v59, v128);
  v131 = v60;
  v132 = v62;
  sub_1007544E4();
  sub_1007525F4();
  v64 = sub_100752914();
  v65 = *(v64 - 8);
  v126 = *(v65 + 56);
  v125 = v65 + 56;
  v126(v56, 1, 1, v64);
  v66 = sub_10074ECD4();
  swift_allocObject();
  v67 = sub_10074EC94();
  v142 = v58;
  v69 = v58[2];
  v68 = v58[3];
  if (v69 >= v68 >> 1)
  {
    sub_10001E5F4((v68 > 1), v69 + 1, 1);
    v58 = v142;
  }

  v134 = v66;
  v70 = sub_10025AD1C(&qword_100928558, &type metadata accessor for Action);
  v135 = v70;
  *&v133 = v67;
  v58[2] = v69 + 1;
  sub_100012160(&v133, &v58[5 * v69 + 4]);

  v71 = v127;
  sub_100741484();
  v72 = sub_100741464();
  v74 = v73;
  v119(v71, v128);
  v131 = v72;
  v132 = v74;
  sub_1007544E4();
  sub_1007525F4();
  v126(v56, 1, 1, v64);
  swift_allocObject();
  v75 = sub_10074EC94();
  v142 = v58;
  v77 = v58[2];
  v76 = v58[3];
  v78 = v56;
  if (v77 >= v76 >> 1)
  {
    v94 = v75;
    sub_10001E5F4((v76 > 1), v77 + 1, 1);
    v75 = v94;
    v78 = v56;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v75;
  v58[2] = v77 + 1;
  sub_100012160(&v133, &v58[5 * v77 + 4]);

  v79 = v127;
  sub_100741484();
  v80 = sub_100741464();
  v82 = v81;
  v119(v79, v128);
  v131 = v80;
  v132 = v82;
  sub_1007544E4();
  sub_1007525F4();
  v126(v78, 1, 1, v64);
  swift_allocObject();
  v83 = sub_10074EC94();
  v142 = v58;
  v84 = v78;
  v86 = v58[2];
  v85 = v58[3];
  if (v86 >= v85 >> 1)
  {
    v95 = v83;
    sub_10001E5F4((v85 > 1), v86 + 1, 1);
    v83 = v95;
    v58 = v142;
  }

  v134 = v66;
  v135 = v70;
  *&v133 = v83;
  v58[2] = v86 + 1;
  sub_100012160(&v133, &v58[5 * v86 + 4]);
  swift_arrayDestroy();
  v87 = sub_100743914();
  v88 = *(*(v87 - 8) + 56);
  v88(v98, 1, 1, v87);
  v88(v97, 1, 1, v87);

  sub_100743954();
  sub_100743A94();
  swift_allocObject();
  v130 = sub_100743A64();
  v89 = sub_100741264();
  v90 = *(*(v89 - 8) + 56);
  v90(v121, 1, 1, v89);
  v91 = sub_100746384();
  (*(*(v91 - 8) + 56))(v122, 1, 1, v91);
  v92 = sub_100741454();
  (*(*(v92 - 8) + 56))(v123, 1, 1, v92);
  v126(v84, 1, 1, v64);
  v90(v105, 1, 1, v89);
  (*(v103 + 104))(v124, enum case for IncompleteShelfFetchStrategy.onPageLoad(_:), v104);
  (*(v106 + 104))(v110, enum case for ShelfHorizontalScrollTargetBehavior.viewAligned(_:), v107);
  (*(v108 + 104))(v112, enum case for ShelfBackground.none(_:), v109);
  sub_10000C518(&qword_10092F328);
  swift_allocObject();
  sub_1007522E4();
  *&v133 = _swiftEmptyArrayStorage;
  sub_10025AD1C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  sub_10000C518(&qword_10092F330);
  sub_10025AD64();
  sub_1007543A4();
  (*(v113 + 104))(v116, enum case for Shelf.ContentsMetadata.none(_:), v115);
  sub_100748F94();
  sub_10074EB84();
  swift_allocObject();
  result = sub_10074EB04();
  *v118 = result;
  return result;
}