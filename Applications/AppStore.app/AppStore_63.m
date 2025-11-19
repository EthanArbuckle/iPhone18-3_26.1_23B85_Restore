uint64_t sub_10071B7D8(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_100031660(a1, v8, &unk_100992460);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyFooter(_:), v9);
    sub_10071C09C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v27 == v25 && v28 == v26)
    {
      v20 = *(v10 + 8);
      v20(v12, v9);
      v20(v15, v9);
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v22 = *(v10 + 8);
      v22(v12, v9);
      v22(v15, v9);

      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    return 0;
  }

  sub_10002B894(v8, &unk_100992460);
LABEL_3:
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for StaticDimension();
  sub_1000056A8(v16, qword_1009D2448);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v18 = v17;
  (*(v3 + 8))(v5, v24);
  return v18;
}

uint64_t sub_10071BBD4()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork))
  {

    Artwork.config(using:)();
    type metadata accessor for ArtworkLoader();
    type metadata accessor for ArtworkView();
    static ArtworkLoader.handlerKey<A>(for:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(v10, &qword_10096FB90);
  }

  v1 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      if (*&v6[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category])
      {

        PrivacyCategory.artwork.getter();

        Artwork.config(using:)();
        v8 = *&v7[OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_iconView];
        type metadata accessor for ArtworkView();
        sub_10071C09C(&qword_1009777D0, &type metadata accessor for ArtworkView);
        v9 = v8;
        AnyHashable.init<A>(_:)();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v10, &qword_10096FB90);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_10071BF10()
{
  type metadata accessor for ArtworkView();
  sub_10071C09C(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v1 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categoryViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }
  }

  return result;
}

uint64_t sub_10071C09C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10071C0E4(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &unk_1009711F0;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_100722B0C();
      for (i = 0; i != v14; ++i)
      {
        sub_10002849C(v3);
        v18 = v3;
        v19 = sub_100548E5C(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100005744(0, &qword_100972EB0);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void sub_10071C3B8()
{
  type metadata accessor for ArtworkView();
  sub_100723074(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView);
  v2 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v3 = *(*(v1 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v4 = *(*(v1 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v5 = *(*(v1 + v2) + OBJC_IVAR____TtC8AppStore15SmallLockupView_inAppPurchaseIcon);
  if (v5)
  {
    v6 = *&v5[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_tileIconArtworkView];
    v7 = v5;
    v8 = v6;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

    v9 = *&v7[OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

void sub_10071C58C(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButtonAction;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButtonAction);
  *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButtonAction) = a1;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
    v5 = a1;
    [v4 removeAction:v3 forControlEvents:64];
    v6 = *(v1 + v2);
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
    v7 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
    v8 = v6;
    [v7 addAction:v8 forControlEvents:64];
  }

LABEL_4:
}

uint64_t sub_10071C660()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D3860);
  sub_1000056A8(v0, qword_1009D3860);
  return AspectRatio.init(_:_:)();
}

uint64_t sub_10071C6B4()
{
  sub_10002849C(&qword_10097B110);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B1E00;
  *(v0 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  result = type metadata accessor for UITraitHorizontalSizeClass();
  *(v0 + 64) = result;
  *(v0 + 72) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_1009937E0 = v0;
  return result;
}

double sub_10071C744()
{
  qword_100993828 = &type metadata for Double;
  unk_100993830 = &protocol witness table for Double;
  qword_100993850 = &type metadata for Double;
  unk_100993858 = &protocol witness table for Double;
  qword_100993838 = 0;
  qword_100993878 = &type metadata for Double;
  unk_100993880 = &protocol witness table for Double;
  qword_100993860 = 0;
  qword_1009938A0 = &type metadata for Double;
  unk_1009938A8 = &protocol witness table for Double;
  qword_100993888 = 0x4000000000000000;
  qword_1009938C8 = &type metadata for Double;
  unk_1009938D0 = &protocol witness table for Double;
  qword_1009938B0 = 0;
  qword_1009938F0 = &type metadata for Double;
  unk_1009938F8 = &protocol witness table for Double;
  qword_1009938D8 = 0x4026000000000000;
  qword_100993918 = &type metadata for Double;
  unk_100993920 = &protocol witness table for Double;
  qword_100993900 = 0x4026000000000000;
  qword_100993940 = &type metadata for Double;
  unk_100993948 = &protocol witness table for Double;
  qword_100993928 = 0x4026000000000000;
  qword_100993968 = &type metadata for Double;
  unk_100993970 = &protocol witness table for Double;
  qword_100993950 = 0x4026000000000000;
  qword_100993990 = &type metadata for Double;
  unk_100993998 = &protocol witness table for Double;
  qword_100993978 = 0x4042000000000000;
  qword_1009939B8 = &type metadata for Double;
  unk_1009939C0 = &protocol witness table for Double;
  qword_1009939A0 = 0x4044000000000000;
  qword_1009939E0 = &type metadata for Double;
  unk_1009939E8 = &protocol witness table for Double;
  qword_1009939C8 = 0x4032000000000000;
  result = 0.0;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_1009937E8 = xmmword_1007E0420;
  unk_1009937F8 = _Q1;
  xmmword_100993808 = _Q1;
  return result;
}

double sub_10071C7E4()
{
  qword_100993A30 = &type metadata for Double;
  unk_100993A38 = &protocol witness table for Double;
  qword_100993A58 = &type metadata for Double;
  unk_100993A60 = &protocol witness table for Double;
  qword_100993A40 = 0;
  qword_100993A80 = &type metadata for Double;
  unk_100993A88 = &protocol witness table for Double;
  qword_100993A68 = 0;
  qword_100993AA8 = &type metadata for Double;
  unk_100993AB0 = &protocol witness table for Double;
  qword_100993A90 = 0x4018000000000000;
  qword_100993AD0 = &type metadata for Double;
  unk_100993AD8 = &protocol witness table for Double;
  qword_100993AB8 = 0;
  qword_100993AF8 = &type metadata for Double;
  unk_100993B00 = &protocol witness table for Double;
  qword_100993AE0 = 0x4026000000000000;
  qword_100993B20 = &type metadata for Double;
  unk_100993B28 = &protocol witness table for Double;
  qword_100993B08 = 0x4026000000000000;
  qword_100993B48 = &type metadata for Double;
  unk_100993B50 = &protocol witness table for Double;
  qword_100993B30 = 0x4026000000000000;
  qword_100993B70 = &type metadata for Double;
  unk_100993B78 = &protocol witness table for Double;
  qword_100993B58 = 0x4026000000000000;
  qword_100993B98 = &type metadata for Double;
  unk_100993BA0 = &protocol witness table for Double;
  qword_100993B80 = 0x4042000000000000;
  qword_100993BC0 = &type metadata for Double;
  unk_100993BC8 = &protocol witness table for Double;
  qword_100993BA8 = 0x4044000000000000;
  qword_100993BE8 = &type metadata for Double;
  unk_100993BF0 = &protocol witness table for Double;
  qword_100993BD0 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #16.0 }

  xmmword_1009939F0 = xmmword_1007E0420;
  unk_100993A00 = _Q1;
  result = 16.0;
  xmmword_100993A10 = xmmword_1007E0430;
  return result;
}

double sub_10071C88C()
{
  qword_100993C38 = &type metadata for Double;
  unk_100993C40 = &protocol witness table for Double;
  qword_100993C60 = &type metadata for Double;
  unk_100993C68 = &protocol witness table for Double;
  qword_100993C48 = 0;
  qword_100993C88 = &type metadata for Double;
  unk_100993C90 = &protocol witness table for Double;
  qword_100993C70 = 0;
  qword_100993CB0 = &type metadata for Double;
  unk_100993CB8 = &protocol witness table for Double;
  qword_100993C98 = 0x4010000000000000;
  qword_100993CD8 = &type metadata for Double;
  unk_100993CE0 = &protocol witness table for Double;
  qword_100993CC0 = 0;
  qword_100993D00 = &type metadata for Double;
  unk_100993D08 = &protocol witness table for Double;
  qword_100993CE8 = 0x4030000000000000;
  qword_100993D28 = &type metadata for Double;
  unk_100993D30 = &protocol witness table for Double;
  qword_100993D10 = 0x4030000000000000;
  qword_100993D50 = &type metadata for Double;
  unk_100993D58 = &protocol witness table for Double;
  qword_100993D38 = 0x4030000000000000;
  qword_100993D78 = &type metadata for Double;
  unk_100993D80 = &protocol witness table for Double;
  qword_100993D60 = 0x4030000000000000;
  qword_100993DA0 = &type metadata for Double;
  unk_100993DA8 = &protocol witness table for Double;
  qword_100993D88 = 0x4042000000000000;
  qword_100993DC8 = &type metadata for Double;
  unk_100993DD0 = &protocol witness table for Double;
  qword_100993DB0 = 0x4044000000000000;
  qword_100993DF0 = &type metadata for Double;
  unk_100993DF8 = &protocol witness table for Double;
  qword_100993DD8 = 0x4032000000000000;
  __asm { FMOV            V1.2D, #20.0 }

  xmmword_100993BF8 = xmmword_1007E0440;
  unk_100993C08 = _Q1;
  result = 20.0;
  xmmword_100993C18 = xmmword_1007E0450;
  return result;
}

double sub_10071C934()
{
  qword_100993E40 = &type metadata for Double;
  unk_100993E48 = &protocol witness table for Double;
  qword_100993E68 = &type metadata for Double;
  unk_100993E70 = &protocol witness table for Double;
  qword_100993E50 = 0;
  qword_100993E90 = &type metadata for Double;
  unk_100993E98 = &protocol witness table for Double;
  qword_100993E78 = 0;
  qword_100993EB8 = &type metadata for Double;
  unk_100993EC0 = &protocol witness table for Double;
  qword_100993EA0 = 0x4018000000000000;
  qword_100993EE0 = &type metadata for Double;
  unk_100993EE8 = &protocol witness table for Double;
  qword_100993EC8 = 0;
  qword_100993F08 = &type metadata for Double;
  unk_100993F10 = &protocol witness table for Double;
  qword_100993EF0 = 0x4026000000000000;
  qword_100993F30 = &type metadata for Double;
  unk_100993F38 = &protocol witness table for Double;
  qword_100993F18 = 0x4026000000000000;
  qword_100993F58 = &type metadata for Double;
  unk_100993F60 = &protocol witness table for Double;
  qword_100993F40 = 0x4026000000000000;
  qword_100993F80 = &type metadata for Double;
  unk_100993F88 = &protocol witness table for Double;
  qword_100993F68 = 0x4026000000000000;
  qword_100993FA8 = &type metadata for Double;
  unk_100993FB0 = &protocol witness table for Double;
  qword_100993F90 = 0x4042000000000000;
  qword_100993FD0 = &type metadata for Double;
  unk_100993FD8 = &protocol witness table for Double;
  qword_100993FB8 = 0x4044000000000000;
  qword_100993FF8 = &type metadata for Double;
  unk_100994000 = &protocol witness table for Double;
  qword_100993FE0 = 0x4032000000000000;
  xmmword_100993E00 = xmmword_1007E0440;
  *algn_100993E10 = xmmword_1007E0460;
  result = 20.0;
  xmmword_100993E20 = xmmword_1007E0470;
  return result;
}

uint64_t sub_10071C9E0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_100994008);
  sub_1000056A8(v0, qword_100994008);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10071CB44(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v36 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DDB0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D08A8);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = type metadata accessor for StaticDimension();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v14(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DDA8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v6, qword_1009D0890);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v38);
  v34(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v32 = v14;
  if (qword_10096DD98 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v6, qword_1009D0860);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v38);
  v34(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v32(v5, v2);
  SmallLockupLayout.Metrics.headingSpace.setter();
  v19 = v11;
  if (qword_10096DDA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v6, qword_1009D0878);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24 = v32;
  v32(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  SmallLockupLayout.Metrics.numberOfLines.setter();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v38);
  v23(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24(v5, v2);
  return SmallLockupLayout.Metrics.subtitleSpace.setter();
}

uint64_t sub_10071D12C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_100994020);
  sub_1000056A8(v0, qword_100994020);
  if (qword_10096EED8 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_100994008);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_10071D290()
{
  v0 = type metadata accessor for UIButton.Configuration();
  sub_100005644(v0, qword_100994038);
  sub_1000056A8(v0, qword_100994038);
  sub_10071D2DC();
}

void sub_10071D2DC()
{
  v0 = sub_10002849C(&unk_100987100);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  static UIButton.Configuration.plain()();
  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() systemImageNamed:v3];

  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.contentInsets.setter();
  v5 = [objc_opt_self() labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v6 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleFootnote weight:UIFontWeightBold];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() configurationWithFont:v6 scale:1];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIConfigurationTextAttributesTransformer.init(_:)();
    v9 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v9 - 8) + 56))(v2, 0, 1, v9);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10071D4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributeContainer();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];
  v7 = objc_opt_self();
  if (v6)
  {
    [v7 fontWithDescriptor:v6 size:0.0];

    v5 = v6;
  }

  else
  {
    [v7 fontWithDescriptor:v5 size:0.0];
  }

  sub_1001469E0();
  return AttributeContainer.subscript.setter();
}

char *sub_10071D610(int a1)
{
  v2 = v1;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v3 - 8);
  v81 = v73 - v4;
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = v73 - v10;
  v12 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent;
  *(v2 + v12) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v13 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_secondaryContent;
  *(v2 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v2 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v78 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel;
  v84 = type metadata accessor for FontUseCase();
  v15 = *(v84 - 8);
  v83 = *(v15 + 56);
  v16 = v15 + 56;
  v83(v11, 1, 1, v84);
  v77 = v16;
  v17 = enum case for DirectionalTextAlignment.none(_:);
  v18 = v6 + 104;
  v82 = *(v6 + 104);
  v74 = enum case for DirectionalTextAlignment.none(_:);
  v75 = v5;
  v82(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v19 = type metadata accessor for DynamicTypeLabel();
  v76 = v19;
  v20 = objc_allocWithZone(v19);
  *(v2 + v78) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v78 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel;
  v21 = v83;
  v83(v11, 1, 1, v84);
  v22 = v17;
  v23 = v82;
  v73[1] = v18;
  v82(v8, v22, v5);
  v24 = objc_allocWithZone(v19);
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v73[0] = v2;
  *(v2 + v78) = v25;
  v26 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView;
  v27 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v2 + v26) = sub_100586590(1);
  v78 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel;
  v28 = v84;
  v21(v11, 1, 1, v84);
  v29 = v74;
  v30 = v75;
  v23(v8, v74, v75);
  v31 = v76;
  v32 = objc_allocWithZone(v76);
  v33 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = v73[0];
  *(v73[0] + v78) = v33;
  v35 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v36 = v28;
  v37 = ObjectType;
  v83(v11, 1, 1, v36);
  v82(v8, v29, v30);
  v38 = objc_allocWithZone(v31);
  v39 = v34;
  *&v34[v35] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton;
  *&v39[v40] = [objc_allocWithZone(UIButton) init];
  v41 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *&v39[v41] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v42 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v39[v42] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  *&v39[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButtonAction] = 0;
  v43 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v44 = enum case for MediaOverlayStyle.matchSystem(_:);
  v45 = type metadata accessor for MediaOverlayStyle();
  (*(*(v45 - 8) + 104))(&v39[v43], v44, v45);
  v39[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_displayMode] = v80 & 1;
  v85.receiver = v39;
  v85.super_class = v37;
  v46 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v50 = v46;
  [v50 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v50 setClipsToBounds:1];
  v51 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_secondaryContent;
  v52 = *&v50[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_secondaryContent];
  v53 = objc_opt_self();
  v54 = v52;
  v55 = [v53 systemBackgroundColor];
  [v54 setBackgroundColor:v55];

  [v50 addSubview:*&v50[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent]];
  [v50 addSubview:*&v50[v51]];
  v56 = *&v50[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView];
  LOBYTE(v54) = v56[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  v56[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 1;
  v57 = v56;
  sub_1002C3F30(v54);

  v58 = *&v50[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel];
  v59 = [v53 secondaryLabelColor];
  [v58 setTextColor:v59];

  v60 = *&v50[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView];
  v61 = [v53 labelColor];
  v62 = [v61 colorWithAlphaComponent:0.5];

  v63 = *&v60[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor];
  *&v60[OBJC_IVAR____TtC8AppStore13SeparatorView_lineColor] = v62;
  v64 = v62;

  [*&v60[OBJC_IVAR____TtC8AppStore13SeparatorView_lineView] setBackgroundColor:v64];
  v65 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton;
  v66 = qword_10096EEE8;
  v67 = *&v50[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton];
  if (v66 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for UIButton.Configuration();
  v69 = sub_1000056A8(v68, qword_100994038);
  v70 = *(v68 - 8);
  v71 = v81;
  (*(v70 + 16))(v81, v69, v68);
  (*(v70 + 56))(v71, 0, 1, v68);
  UIButton.configuration.setter();

  if (qword_10096EEB0 != -1)
  {
    swift_once();
  }

  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();
  [*&v50[v65] setNeedsUpdateConfiguration];
  sub_10071F258();
  sub_10071DF14();
  sub_10071F7AC();
  sub_10071F9A0();
  [v50 setNeedsLayout];

  return v50;
}

void sub_10071DF14()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v48 - v6;
  v48 = *&v0[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView];
  v8 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, &v1[v8], v2);
  v10 = v9;
  v49 = v9;
  v11 = MediaOverlayStyle.inverseUserInterfaceStyle.getter();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v48 setOverrideUserInterfaceStyle:v11];
  v13 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent];
  v10(v7, &v1[v8], v2);
  v14 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 24))(v13 + v14, v7, v2);
  swift_endAccess();
  sub_1000D0B60();
  v12(v7, v2);
  v15 = v50;
  v49(v50, &v1[v8], v2);
  MediaOverlayStyle.userInterfaceStyle.getter();
  v12(v15, v2);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = String._bridgeToObjectiveC()();

  v17 = [*&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel] layer];
  [v17 setCompositingFilter:v16];

  v18 = v1;
  v19 = [v1 traitCollection];
  v48 = v16;
  if (v19)
  {
    v20 = v19;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v21 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v21)
      {
        v22 = 0;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v23 = v16;
  v22 = v16;
LABEL_7:
  v50 = *&v18[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel];
  v24 = [v50 layer];
  v25 = v22;
  [v24 setCompositingFilter:v25];

  v49 = *&v18[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v26 = [v49 layer];
  [v26 setCompositingFilter:v25];

  if (v22)
  {
    v27 = sub_100005744(0, &qword_1009846D0);
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v28;
  v54 = v27;
  v29 = v25;
  sub_1005868E4(&v51);
  if (v22)
  {
    v30 = sub_100005744(0, &qword_1009846D0);
    v31 = v29;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v52 = 0;
    v53 = 0;
  }

  v51 = v31;
  v54 = v30;
  v32 = v29;
  sub_1002DCF64(&v51);
  v33 = *&v18[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
  v34 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v35 = [*(v33 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) isHidden];
  v36 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v35)
  {
    v36 = v34;
  }

  v37 = [*(*(v33 + v36) + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v37 setCompositingFilter:v32];

  v38 = [*(v33 + v34) isHidden];
  v39 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v38)
  {
    v39 = v34;
  }

  v40 = [*(*(*(v33 + v39) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v40 setCompositingFilter:v32];

  v41 = [v18 traitCollection];
  if (!v41)
  {
    goto LABEL_22;
  }

  v42 = v41;
  if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
  {

    goto LABEL_22;
  }

  v43 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v43 & 1) == 0)
  {
LABEL_22:
    v44 = &selRef_secondaryLabelColor;
    goto LABEL_23;
  }

  v44 = &selRef_labelColor;
LABEL_23:
  v45 = objc_opt_self();
  v46 = [v45 *v44];
  [v50 setTextColor:v46];

  v47 = [v45 *v44];
  [v49 setTextColor:v47];

  sub_10071FC00();
}

uint64_t sub_10071E4D4@<X0>(double *a1@<X8>, double a2@<D1>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  v7 = UITraitCollection.isSizeClassCompact.getter();

  v8 = [v3 traitCollection];
  v9 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v7)
  {
    if (v9)
    {
      if (qword_10096EEB8 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_1009937E8;
    }

    else
    {
      if (qword_10096EEC0 != -1)
      {
        swift_once();
      }

      v10 = &xmmword_1009939F0;
    }

    sub_10056F2D8(v10, __src);
    memcpy(a1, __src, 0x208uLL);
    *&__src[24] = &type metadata for Double;
    *&__src[32] = &protocol witness table for Double;
    *__src = 0x404E000000000000;
    sub_100007000((a1 + 10));
    sub_100005A38(__src, (a1 + 10));
    if (qword_10096EEA8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AspectRatio();
    sub_1000056A8(v12, qword_1009D3860);
    result = AspectRatio.height(fromWidth:)();
    a2 = trunc(v14);
  }

  else
  {
    if (v9)
    {
      if (qword_10096EEC8 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100993BF8;
    }

    else
    {
      if (qword_10096EED0 != -1)
      {
        swift_once();
      }

      v11 = &xmmword_100993E00;
    }

    sub_10056F2D8(v11, __src);
    result = memcpy(a1, __src, 0x208uLL);
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10071E720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v2 traitCollection];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
  {

    goto LABEL_6;
  }

  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v8 & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v9 = v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_displayMode];
LABEL_7:
  sub_10056F2D8(a1, a2);
  v22[6] = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent];
  type metadata accessor for AppPromotionScrollableContentContainerView();
  Measurable.placeable.getter();
  v22[5] = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_secondaryContent];
  sub_100005744(0, &qword_100972EB0);
  Measurable.placeable.getter();
  v10 = type metadata accessor for BoundsBasedPlaceable();
  *(a2 + 624) = v10;
  v11 = sub_100723074(&qword_1009940F0, &type metadata accessor for BoundsBasedPlaceable);
  *(a2 + 632) = v11;
  sub_1000056E0((a2 + 600));
  UIView.boundsBasedPlaceable.getter();
  *(a2 + 664) = v10;
  *(a2 + 672) = v11;
  sub_1000056E0((a2 + 640));
  UIView.boundsBasedPlaceable.getter();
  *(a2 + 704) = v10;
  *(a2 + 712) = v11;
  sub_1000056E0((a2 + 680));
  UIView.boundsBasedPlaceable.getter();
  v12 = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView];
  *(a2 + 744) = v10;
  *(a2 + 752) = v11;
  sub_1000056E0((a2 + 720));
  UIView.boundsBasedPlaceable.getter();
  v22[3] = v10;
  v22[4] = v11;
  sub_1000056E0(v22);
  UIView.boundsBasedPlaceable.getter();
  *(a2 + 784) = v10;
  *(a2 + 792) = v11;
  sub_1000056E0((a2 + 760));
  UIView.boundsBasedPlaceable.getter();
  v13 = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v21[3] = type metadata accessor for DynamicTypeLabel();
  v21[4] = &protocol witness table for UILabel;
  v21[0] = v13;
  v14 = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView];
  *(a2 + 904) = type metadata accessor for SeparatorView();
  *(a2 + 912) = sub_100723074(&qword_1009940F8, type metadata accessor for SeparatorView);
  *(a2 + 880) = v14;
  v15 = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
  *(a2 + 944) = type metadata accessor for SubscriptionLockupView();
  *(a2 + 952) = sub_100723074(&qword_100994100, type metadata accessor for SubscriptionLockupView);
  *(a2 + 920) = v15;
  v16 = *(v12 + qword_10098CA38);
  v17 = v13;
  v18 = v14;
  v19 = v15;
  LOBYTE(v16) = [v16 hasContent];
  *(a2 + 800) = 0u;
  *(a2 + 816) = 0u;
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0u;
  *(a2 + 864) = 0u;
  sub_10056F3C4(v22, a2 + 840);
  result = sub_10056F3C4(v21, a2 + 800);
  *(a2 + 960) = v9;
  *(a2 + 961) = v16;
  return result;
}

uint64_t sub_10071EB3C()
{
  v1 = v0;
  v45.receiver = v0;
  v45.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v45, "layoutSubviews");
  [v0 bounds];
  sub_10071E4D4(v44, v2);
  sub_10071E720(v44, v41);
  [v0 bounds];
  Width = v3;
  v6 = v5;
  v7 = [v0 traitCollection];
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v8)
    {
      v9 = *v41;
      sub_10057164C(v7, v43, v39);
      sub_10002A400(v39, v40);
      dispatch thunk of Placeable.measure(toFit:with:)();
      v11 = v9 + v10;
      goto LABEL_9;
    }
  }

  else
  {
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    sub_10056F770(v7, v39, 0.0, 0.0, Width, v6);
  }

  else
  {
    sub_100570178(v7, v39, 0.0, 0.0, Width, v6);
  }

  sub_10002A400(v39, v40);
  dispatch thunk of Placeable.measure(toFit:with:)();
  Width = v12;
  v11 = v13;
LABEL_9:
  sub_100007000(v39);

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v23 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v23)
    {
      sub_100571320(v22, v15, v17, v19, v21);
      goto LABEL_17;
    }
  }

  else
  {
  }

  v24 = UITraitCollection.isSizeClassCompact.getter();
  sub_10002A400(v42, v42[3]);
  dispatch thunk of Placeable.place(at:with:)();
  if (v24)
  {
    sub_10056F770(v22, v39, v15, v17, v19, v21);
  }

  else
  {
    sub_100570178(v22, v39, v15, v17, v19, v21);
    v46.origin.x = v15;
    v46.origin.y = v17;
    v46.size.width = v19;
    v46.size.height = v21;
    CGRectGetMinX(v46);
    v47.origin.x = v15;
    v47.origin.y = v17;
    v47.size.width = v19;
    v47.size.height = v21;
    CGRectGetMinY(v47);
    v48.origin.x = v15;
    v48.origin.y = v17;
    v48.size.width = v19;
    v48.size.height = v21;
    CGRectGetWidth(v48);
  }

  sub_10002A400(v39, v40);
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v39);
LABEL_17:

  v25 = [v1 traitCollection];
  if (v25)
  {
    v26 = v25;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v27 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v27)
      {
        v28 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent];
        [v1 bounds];
        Width = CGRectGetWidth(v49);
        v11 = v44[0];
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  [v1 bounds];
  Height = CGRectGetHeight(v50);
  v28 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent];
  if (vabdd_f64(Height, v11) <= 1.0)
  {
    [v1 bounds];
    Width = v30;
    v11 = v31;
  }

LABEL_24:
  [v28 setContentSize:{Width, v11}];
  sub_10071F05C();
  v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators] = 0;
  [v28 contentSize];
  v33 = v32;
  [v28 bounds];
  v34 = 0;
  if (CGRectGetHeight(v51) >= v33)
  {
    v35 = [v1 traitCollection];
    if (v35)
    {
      v36 = v35;
      if (UITraitCollection.isSizeClassCompact.getter())
      {
        v37 = UITraitCollection.prefersAccessibilityLayouts.getter();

        v34 = v37 ^ 1;
        goto LABEL_30;
      }
    }

    v34 = 1;
  }

LABEL_30:
  [*&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView] setHidden:v34 & 1];
  [*&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView] setHidden:v34 & 1];
  sub_100409138(v41);
  return sub_10040918C(v44);
}

void sub_10071F05C()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v4 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView;
  if ((v3 & 1) == 0)
  {
    v4 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel;
  }

  v14 = *&v1[*v4];
  v5 = [v1 traitCollection];
  v6 = UITraitCollection.isSizeClassCompact.getter();

  v7 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent];
  if (v6)
  {
    v8 = *(v7 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode);
    *(v7 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode) = v14;
    if ((v8 - 1) > 1)
    {
      if (v8)
      {
        sub_100005744(0, &qword_100972EB0);
        v11 = v14;
        sub_1000D1954(v8);
        v12 = static NSObject.== infix(_:_:)();
        sub_1000D1940(v8);
        if (v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v13 = v14;
        sub_1000D1954(0);
      }
    }

    else
    {
      v9 = v14;
    }

    sub_1000D09CC();
LABEL_14:
    sub_1000D0E68();
    sub_1000D1940(v8);

    goto LABEL_15;
  }

  v10 = *(v7 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode);
  *(v7 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode) = 2;
  if (v10 != 2)
  {
    sub_1000D09CC();
  }

  sub_1000D0E68();
  sub_1000D1940(v10);
LABEL_15:
}

uint64_t sub_10071F258()
{
  v1 = v0;
  sub_10002849C(&qword_100973210);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B15F0;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView);
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v44 = v2;
  v5 = v3;
  v6 = v4;
  v7 = [v1 traitCollection];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
  {

    goto LABEL_10;
  }

  v9 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v9 & 1) == 0)
  {
LABEL_10:
    v14 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel;
    v15 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView;
    v16 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel;
    goto LABEL_11;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];
  if (qword_10096E958 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v12 = static UIContentSizeCategory.>= infix(_:_:)();

    v13 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel);
    if (v12)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
    v15 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel;
    v16 = &OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView;
LABEL_11:
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007E0480;
    v18 = *(v1 + *v16);
    *(inited + 32) = v18;
    v19 = *(v1 + *v15);
    *(inited + 40) = v19;
    v20 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
    *(inited + 48) = v20;
    v21 = *(v1 + *v14);
    *(inited + 56) = v21;
    v22 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView);
    *(inited + 64) = v22;
    v23 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView);
    *(inited + 72) = v23;
    v24 = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = v22;
    v29 = v23;
    sub_1003946F8(inited);
    v11 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent);
    v10 = v44;
    sub_10002849C(&qword_1009711E8);
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_1007B10D0;
    *(v30 + 32) = v44;

    v31 = sub_10071C0E4(v30);
    swift_setDeallocating();
    sub_10002B894(v30 + 32, &unk_1009711F0);
    if (v31 >> 62)
    {
      v32 = _CocoaArrayWrapper.endIndex.getter();
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_23;
      }
    }

    if (v32 < 1)
    {
      __break(1u);
      goto LABEL_37;
    }

    v33 = 0;
    v10 = (v31 & 0xC000000000000001);
    do
    {
      if (v10)
      {
        v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v34 = *(v31 + 8 * v33 + 32);
      }

      v35 = v34;
      ++v33;
      [v11 addSubview:v34];
    }

    while (v32 != v33);
LABEL_23:

    v11 = *(v1 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_secondaryContent);
    v1 = &_swiftEmptyArrayStorage;
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_1007B10D0;
    *(v36 + 32) = &_swiftEmptyArrayStorage;

    v37 = sub_10071C0E4(v36);
    swift_setDeallocating();
    sub_10002B894(v36 + 32, &unk_1009711F0);
    if (v37 >> 62)
    {
      v38 = _CocoaArrayWrapper.endIndex.getter();
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_32;
      }
    }

    if (v38 >= 1)
    {
      break;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  for (i = 0; i != v38; ++i)
  {
    if ((v37 & 0xC000000000000001) != 0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(v37 + 8 * i + 32);
    }

    v41 = v40;
    [v11 addSubview:v40];
  }

LABEL_32:

  if (&_swiftEmptyArrayStorage >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v11 setHidden:v42 == 0];
}

id sub_10071F7AC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel];
  if (qword_10096E648 != -1)
  {
    swift_once();
  }

  v3 = qword_1009D2220;
  v4 = *algn_1009D2228;
  v5 = qword_1009D2230;
  v6 = [v0 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
  }

  else
  {
    v7 = UITraitCollection.isSizeClassCompact.getter();

    if (v7)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  [v2 setFont:v5];
  v8 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel];
  if (qword_10096E660 != -1)
  {
    swift_once();
  }

  v9 = qword_1009D2268;
  v10 = unk_1009D2270;
  v11 = qword_1009D2278;
  v12 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {

    v13 = v11;
  }

  else
  {
    v14 = UITraitCollection.isSizeClassCompact.getter();

    if (v14)
    {
      v13 = v9;
    }

    else
    {
      v13 = v10;
    }
  }

  [v8 setFont:v13];
  v15 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  v16 = [v1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
  }

  else
  {
    v17 = UITraitCollection.isSizeClassCompact.getter();

    if (v17)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }
  }

  [v15 setFont:v11];
  v18 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton];

  return [v18 setNeedsUpdateConfiguration];
}

uint64_t sub_10071F9A0()
{
  v1 = v0;
  v2 = type metadata accessor for SmallLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v20 - v8;
  v10 = [v0 traitCollection];
  v11 = UITraitCollection.prefersAccessibilityLayouts.getter();

  v12 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
  if (v11)
  {
    if (qword_10096EEE0 != -1)
    {
      swift_once();
    }

    v13 = qword_100994020;
  }

  else
  {
    if (qword_10096EED8 != -1)
    {
      swift_once();
    }

    v13 = qword_100994008;
  }

  v14 = sub_1000056A8(v2, v13);
  v15 = *(v3 + 16);
  v15(v9, v14, v2);
  v16 = *&v12[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v15(v5, v9, v2);
  v17 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v16[v17], v5, v2);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v3 + 8);
  v18(v5, v2);
  [v12 setNeedsLayout];
  return (v18)(v9, v2);
}

void sub_10071FC00()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_mediaOverlayStyle;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v6], v2);
  v7 = MediaOverlayStyle.userInterfaceStyle.getter();
  (*(v3 + 8))(v5, v2);
  if (v7 != 2)
  {
    goto LABEL_5;
  }

  v8 = [v1 traitCollection];
  if (v8)
  {
    v9 = v8;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v10 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v10)
      {
LABEL_5:
        v11 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
        v12 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
        v13 = [*(v11 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) isHidden];
        v14 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
        if (!v13)
        {
          v14 = v12;
        }

        v15 = *(*(v11 + v14) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
        sub_100005744(0, &qword_100970180);
        v16 = v15;
        v17 = static UIColor.appTint.getter();
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
  v19 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView;
  v20 = [*(v18 + OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView) isHidden];
  v21 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView;
  if (!v20)
  {
    v21 = v19;
  }

  v22 = *(*(v18 + v21) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v23 = objc_opt_self();
  v16 = v22;
  v17 = [v23 whiteColor];
LABEL_12:
  v24 = v17;
  [v16 setTintColor:v17];
}

uint64_t sub_10071FE68()
{
  sub_10002849C(&unk_100985700);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel);
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 16) = xmmword_1007B73E0;
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 80) = v8;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  return v1;
}

uint64_t sub_10071FF50()
{
  sub_10002849C(&unk_100985700);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B23A0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView);
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel);
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

uint64_t sub_10072001C()
{
  sub_10002849C(&unk_100985700);
  v1 = swift_allocObject();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent);
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  *(v1 + 16) = xmmword_1007B1890;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  v5 = v4;
  v6 = v3;
  return v1;
}

uint64_t type metadata accessor for AppPromotionDetailPageContentView()
{
  result = qword_1009940E0;
  if (!qword_1009940E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100720340()
{
  result = type metadata accessor for MediaOverlayStyle();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

id sub_100720404(id result)
{
  v2 = v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_displayMode];
  v1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_displayMode] = result & 1;
  if (v2 != (result & 1))
  {
    sub_10071F258();

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_100720468(char *a1)
{
  [*&a1[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton] setNeedsUpdateConfiguration];
  sub_10071F258();
  sub_10071DF14();
  sub_10071F7AC();
  sub_10071F9A0();

  return [a1 setNeedsLayout];
}

uint64_t sub_1007204CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v5 - 8);
  v132 = &v117 - v6;
  v131 = type metadata accessor for OfferButtonSubtitlePosition();
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_10002849C(&unk_1009701A0);
  v141 = *(v144 - 8);
  __chkstk_darwin(v144);
  v130 = &v117 - v8;
  v9 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v9 - 8);
  v135 = &v117 - v10;
  v11 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v11 - 8);
  v137 = &v117 - v12;
  v13 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v13 - 8);
  v136 = &v117 - v14;
  v15 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v15 - 8);
  v142 = &v117 - v16;
  v17 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v17 - 8);
  v127 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v145 = &v117 - v20;
  v21 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v21 - 8);
  v147 = &v117 - v22;
  v23 = *&v2[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel];
  ContingentOffer.badge.getter();
  v24 = String._bridgeToObjectiveC()();

  [v23 setText:v24];

  v25 = ContingentOffer.label.getter();
  sub_1002C3B04(v25, v26);
  if (qword_10096E658 != -1)
  {
    swift_once();
  }

  v27 = qword_1009D2250;
  v28 = *algn_1009D2258;
  v29 = qword_1009D2260;
  v30 = [v2 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
  }

  else
  {
    v31 = UITraitCollection.isSizeClassCompact.getter();

    if (v31)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }
  }

  v134 = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel];
  v139 = v29;
  v143 = a1;
  ContingentOffer.title.getter();
  v32 = Paragraph.text.getter();

  v33 = [objc_opt_self() secondaryLabelColor];
  v34 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v32];
  v35 = [v32 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v36 + 24) = v33;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_100664530;
  *(v37 + 24) = v36;
  v152 = sub_1002CA5FC;
  v153 = v37;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v138 = &v150;
  v150 = sub_1006607C0;
  v151 = &unk_1008D05A8;
  v38 = v3;
  v39 = _Block_copy(&aBlock);
  v40 = v34;
  v41 = v33;

  [v32 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v35 usingBlock:{0, v39}];

  _Block_release(v39);
  v42 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

  v140 = v38;
  v44 = [v38 traitCollection];
  v45 = objc_allocWithZone(NSMutableAttributedString);
  v46 = v139;
  v47 = v139;
  v48 = [v45 initWithAttributedString:v40];
  v49 = [v40 length];
  v50 = swift_allocObject();
  *(v50 + 16) = v46;
  *(v50 + 24) = v44;
  *(v50 + 32) = v48;
  *(v50 + 40) = 1;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_10010279C;
  *(v51 + 24) = v50;
  v152 = sub_1001027AC;
  v153 = v51;
  aBlock = _NSConcreteStackBlock;
  v149 = 1107296256;
  v150 = sub_1006606C4;
  v151 = &unk_1008D0620;
  v42 = _Block_copy(&aBlock);
  v38 = v153;
  v52 = v47;
  isEscapingClosureAtFileLocation = v48;

  v53 = v44;

  [v40 enumerateAttributesInRange:0 options:v49 usingBlock:{0x100000, v42}];

  _Block_release(v42);
  v54 = swift_isEscapingClosureAtFileLocation();

  v55 = v140;
  if (v54)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
    goto LABEL_29;
  }

  v133 = v52;
  [v134 setAttributedText:isEscapingClosureAtFileLocation];

  v56 = *&v55[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel];
  ContingentOffer.description.getter();
  if (v57)
  {
    v58 = String._bridgeToObjectiveC()();
  }

  else
  {
    v58 = 0;
  }

  [v56 setText:v58];

  v59 = *&v55[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton];
  ContingentOffer.learnMoreTitle.getter();
  v60 = String._bridgeToObjectiveC()();

  [v59 setTitle:v60 forState:0];

  v61 = *&v55[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel];
  if (ContingentOffer.additionalInfo.getter())
  {
    v62 = Paragraph.text.getter();
  }

  else
  {
    v62 = 0;
  }

  [v61 setAttributedText:v62];

  v63 = ContingentOffer.subtitle.getter();
  v65 = v64;
  v66 = ContingentOffer.trunkAppIcon.getter();
  sub_10058625C(v63, v65, v66);

  v67 = [v55 traitCollection];
  v68 = v147;
  v69 = v145;
  if (v67)
  {
    v70 = v67;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v71 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v71)
      {
        v72 = enum case for OfferStyle.infer(_:);
        v73 = type metadata accessor for OfferStyle();
        v74 = *(v73 - 8);
        (*(v74 + 104))(v68, v72, v73);
        (*(v74 + 56))(v68, 0, 1, v73);
        v69 = v145;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v75 = type metadata accessor for OfferStyle();
  (*(*(v75 - 8) + 56))(v68, 1, 1, v75);
LABEL_22:
  v76 = *&v55[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
  v77 = ContingentOffer.offerLockup.getter();
  v78 = sub_10002849C(&unk_100973240);
  v79 = *(v78 - 8);
  v134 = *(v79 + 56);
  v126 = v79 + 56;
  (v134)(v69, 1, 1, v78);
  v80 = v142;
  ContingentOffer.mediaOverlayStyle.getter();
  v81 = type metadata accessor for MediaOverlayStyle();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  type metadata accessor for InAppPurchaseLockup();
  v138 = v77;
  v82 = swift_dynamicCastClass();
  v83 = *&v76[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v139 = v76;
  if (v82)
  {
    v84 = v82;
    v125 = v78;
    v120 = type metadata accessor for OfferEnvironment();
    v85 = *(v120 - 8);
    v122 = *(v85 + 56);
    v123 = v85 + 56;
    v86 = v136;
    v122(v136, 1, 1, v120);
    v121 = *(v141 + 56);
    v87 = v137;
    v121(v137, 1, 1, v144);
    v88 = v69;
    v89 = type metadata accessor for OfferTint();
    v90 = *(v89 - 8);
    v118 = *(v90 + 56);
    v119 = v90 + 56;
    v91 = v135;
    v118(v135, 1, 1, v89);
    swift_retain_n();
    sub_1004F3190(v84, v83, v88, v146, 1, 0, v147, v86, v91, v87);
    sub_10002B894(v91, &unk_100973AD0);
    v83[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v83 setNeedsLayout];
    sub_10002B894(v87, &unk_100970150);
    sub_10002B894(v86, &unk_100970160);
    v92 = *&v139[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v124 = v84;
    v93 = InAppPurchaseLockup.parent.getter();
    v94 = v146;
    v122(v86, 1, 1, v120);
    v121(v87, 1, 1, v144);
    v118(v91, 1, 1, v89);
    sub_1004F3190(v93, v92, v145, v94, 0, 0, v147, v86, v91, v87);
    sub_10002B894(v91, &unk_100973AD0);
    v92[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v92 setNeedsLayout];

    sub_10002B894(v87, &unk_100970150);
    sub_10002B894(v86, &unk_100970160);
    v95 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v92[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v92[v95] setUserInteractionEnabled:0];
    [v92 setHidden:1];
    v96 = v138;
    v97 = Lockup.icon.getter();
    if (v97)
    {
    }

    sub_100709C80(v97 != 0);
    v98 = *&v92[v95];
    v99 = Lockup.offerDisplayProperties.getter();

    v100 = Lockup.buttonAction.getter();

    v101 = v127;
    (v134)(v127, 1, 1, v125);
    v102 = v128;
    v103 = v131;
    (*(v128 + 104))(v129, enum case for OfferButtonSubtitlePosition.below(_:), v131);
    (*(v102 + 56))(v132, 1, 1, v103);
    sub_100723074(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v104 = v130;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v99, v100, 0, v101, v104, v94, 0, 0);

    (*(v141 + 8))(v104, v144);
    sub_10002B894(v101, &unk_100973230);
    v105 = v139;
    sub_1001006C8(v96, v139);

    v80 = v142;
    sub_1005076FC(v105, v142);
    v69 = v145;
  }

  else
  {
    [v83 setHidden:1];
    v106 = *&v76[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v107 = type metadata accessor for OfferEnvironment();
    v108 = v136;
    (*(*(v107 - 8) + 56))(v136, 1, 1, v107);
    v109 = v137;
    (*(v141 + 56))(v137, 1, 1, v144);
    v110 = type metadata accessor for OfferTint();
    v111 = v135;
    (*(*(v110 - 8) + 56))(v135, 1, 1, v110);
    sub_1004F3190(v138, v106, v69, v146, 0, 0, v68, v108, v111, v109);
    sub_10002B894(v111, &unk_100973AD0);
    v106[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v106 setNeedsLayout];
    sub_10002B894(v109, &unk_100970150);
    v112 = v108;
    v113 = v139;
    sub_10002B894(v112, &unk_100970160);
    sub_1005076FC(v113, v80);
  }

  sub_10002B894(v80, &qword_100974528);
  sub_10002B894(v69, &unk_100973230);
  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  isEscapingClosureAtFileLocation = aBlock;
  if (!aBlock)
  {
    v42 = v133;
    v38 = v147;
    goto LABEL_31;
  }

  v42 = v133;
  v38 = v147;
  if (qword_10096E700 != -1)
  {
    goto LABEL_34;
  }

LABEL_29:
  v114 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v114, qword_1009D25C0);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v115 = ContingentOffer.offerLockup.getter();
  sub_100504CB0(v115, isEscapingClosureAtFileLocation);

LABEL_31:
  sub_10071F7AC();

  return sub_10002B894(v38, &qword_100973AE0);
}

uint64_t sub_100721850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v123 = a3;
  v134 = a2;
  v6 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v6 - 8);
  v129 = v114 - v7;
  v128 = type metadata accessor for OfferButtonSubtitlePosition();
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_10002849C(&unk_1009701A0);
  v138 = *(v141 - 8);
  __chkstk_darwin(v141);
  v127 = v114 - v9;
  v10 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v10 - 8);
  v131 = v114 - v11;
  v12 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v12 - 8);
  v133 = v114 - v13;
  v14 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v14 - 8);
  v132 = v114 - v15;
  v16 = sub_10002849C(&qword_100974528);
  __chkstk_darwin(v16 - 8);
  v139 = v114 - v17;
  v18 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v18 - 8);
  v124 = v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v114 - v21;
  v23 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v23 - 8);
  v25 = v114 - v24;
  v26 = *&v3[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel];
  OfferItem.badge.getter();
  v27 = String._bridgeToObjectiveC()();

  [v26 setText:v27];

  v28 = OfferItem.formattedEndDateString.getter();
  sub_1002C3B04(v28, v29);
  if (qword_10096E658 != -1)
  {
    swift_once();
  }

  v30 = qword_1009D2250;
  v31 = *algn_1009D2258;
  v32 = qword_1009D2260;
  v33 = [v3 traitCollection];
  v34 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v142 = v25;
  v143 = v22;
  if (v34)
  {
  }

  else
  {
    v35 = UITraitCollection.isSizeClassCompact.getter();

    if (v35)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }
  }

  v130 = *&v4[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel];
  v136 = v32;
  v140 = a1;
  OfferItem.title.getter();
  v36 = Paragraph.text.getter();

  v37 = [objc_opt_self() secondaryLabelColor];
  v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
  v39 = [v36 length];
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  *(v40 + 24) = v37;
  v41 = swift_allocObject();
  v41[2] = sub_1007230C8;
  v41[3] = v40;
  v148 = sub_1007230CC;
  v149 = v41;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v135 = &v146;
  v146 = sub_1006607C0;
  v147 = &unk_1008D0698;
  v42 = v4;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = v37;

  [v36 enumerateAttribute:NSStrikethroughStyleAttributeName inRange:0 options:v39 usingBlock:{0, v43}];

  _Block_release(v43);
  v46 = 1;
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_32;
  }

  v137 = v42;
  v48 = [v42 traitCollection];
  v49 = objc_allocWithZone(NSMutableAttributedString);
  v50 = v136;
  v51 = v136;
  v52 = [v49 initWithAttributedString:v44];
  v41 = [v44 length];
  v53 = swift_allocObject();
  *(v53 + 16) = v50;
  *(v53 + 24) = v48;
  *(v53 + 32) = v52;
  *(v53 + 40) = 1;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_100126854;
  *(v54 + 24) = v53;
  v148 = sub_100126848;
  v149 = v54;
  aBlock = _NSConcreteStackBlock;
  v145 = 1107296256;
  v146 = sub_1006606C4;
  v147 = &unk_1008D0710;
  v46 = _Block_copy(&aBlock);
  v55 = v51;
  isEscapingClosureAtFileLocation = v52;

  v56 = v48;

  [v44 enumerateAttributesInRange:0 options:v41 usingBlock:{0x100000, v46}];

  v135 = v55;
  _Block_release(v46);
  v57 = swift_isEscapingClosureAtFileLocation();

  v58 = v137;
  if (v57)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v130 setAttributedText:isEscapingClosureAtFileLocation];

  v59 = *&v58[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel];
  OfferItem.description.getter();
  if (v60)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  else
  {
    v61 = 0;
  }

  v62 = v142;
  [v59 setText:v61];

  v63 = [v58 traitCollection];
  if (v63)
  {
    v64 = v63;
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v65 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v65)
      {
        v66 = enum case for OfferStyle.infer(_:);
        v67 = type metadata accessor for OfferStyle();
        v68 = *(v67 - 8);
        (*(v68 + 104))(v62, v66, v67);
        v69 = 1;
        (*(v68 + 56))(v62, 0, 1, v67);
        goto LABEL_19;
      }
    }

    else
    {
    }
  }

  v70 = type metadata accessor for OfferStyle();
  (*(*(v70 - 8) + 56))(v62, 1, 1, v70);
  v69 = 0;
LABEL_19:
  v71 = *&v58[OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView];
  v72 = OfferItem.offerLockup.getter();
  v73 = sub_10002849C(&unk_100973240);
  v74 = *(v73 - 8);
  v75 = *(v74 + 56);
  v130 = (v74 + 56);
  v75(v143, 1, 1, v73);
  if (v69)
  {
    v76 = type metadata accessor for MediaOverlayStyle();
    v77 = v139;
    (*(*(v76 - 8) + 56))(v139, 1, 1, v76);
  }

  else
  {
    v77 = v139;
    sub_10050808C(v123, v139);
  }

  type metadata accessor for InAppPurchaseLockup();
  v78 = swift_dynamicCastClass();
  v79 = *&v71[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v136 = v71;
  if (v78)
  {
    v122 = v75;
    v123 = v73;
    v80 = v78;
    v117 = type metadata accessor for OfferEnvironment();
    v81 = *(v117 - 8);
    v116 = *(v81 + 56);
    v118 = v81 + 56;
    v82 = v143;
    v83 = v132;
    v116(v132, 1, 1, v117);
    v115 = *(v138 + 56);
    v84 = v133;
    v115(v133, 1, 1, v141);
    v85 = type metadata accessor for OfferTint();
    v86 = *(v85 - 8);
    v114[0] = *(v86 + 56);
    v114[1] = v86 + 56;
    v87 = v131;
    (v114[0])(v131, 1, 1, v85);
    swift_retain_n();
    v88 = v134;
    sub_1004F3190(v80, v79, v82, v134, 1, 0, v142, v83, v87, v84);
    sub_10002B894(v87, &unk_100973AD0);
    v79[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    v119 = v72;
    sub_10070AB34();
    v120 = v79;
    [v79 setNeedsLayout];
    sub_10002B894(v84, &unk_100970150);
    sub_10002B894(v83, &unk_100970160);
    v89 = *&v136[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v121 = v80;
    v90 = InAppPurchaseLockup.parent.getter();
    v116(v83, 1, 1, v117);
    v115(v84, 1, 1, v141);
    v91 = v88;
    (v114[0])(v87, 1, 1, v85);
    sub_1004F3190(v90, v89, v82, v88, 0, 0, v142, v83, v87, v84);
    sub_10002B894(v87, &unk_100973AD0);
    v89[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v89 setNeedsLayout];

    sub_10002B894(v84, &unk_100970150);
    sub_10002B894(v83, &unk_100970160);
    v92 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v89[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v89[v92] setUserInteractionEnabled:0];
    [v89 setHidden:1];
    v93 = v119;
    v94 = Lockup.icon.getter();
    if (v94)
    {
    }

    sub_100709C80(v94 != 0);
    v95 = *&v89[v92];
    v96 = Lockup.offerDisplayProperties.getter();

    v97 = Lockup.buttonAction.getter();

    v98 = v124;
    v122(v124, 1, 1, v123);
    v99 = v125;
    v100 = v128;
    (*(v125 + 104))(v126, enum case for OfferButtonSubtitlePosition.below(_:), v128);
    (*(v99 + 56))(v129, 1, 1, v100);
    sub_100723074(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v101 = v127;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v96, v97, 0, v98, v101, v91, 0, 0);

    (*(v138 + 8))(v101, v141);
    sub_10002B894(v98, &unk_100973230);
    v102 = v136;
    sub_1001006C8(v93, v136);

    v77 = v139;
    sub_1005076FC(v102, v139);
    v41 = v142;
  }

  else
  {
    [v79 setHidden:1];
    v103 = *&v71[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v104 = type metadata accessor for OfferEnvironment();
    v41 = v62;
    v105 = v132;
    (*(*(v104 - 8) + 56))(v132, 1, 1, v104);
    v106 = v133;
    (*(v138 + 56))(v133, 1, 1, v141);
    v107 = type metadata accessor for OfferTint();
    v108 = v131;
    (*(*(v107 - 8) + 56))(v131, 1, 1, v107);
    sub_1004F3190(v72, v103, v143, v134, 0, 0, v62, v105, v108, v106);
    sub_10002B894(v108, &unk_100973AD0);
    v103[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v103 setNeedsLayout];
    sub_10002B894(v106, &unk_100970150);
    v109 = v105;
    v110 = v136;
    sub_10002B894(v109, &unk_100970160);
    sub_1005076FC(v110, v77);
  }

  sub_10002B894(v77, &qword_100974528);
  sub_10002B894(v143, &unk_100973230);
  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  isEscapingClosureAtFileLocation = aBlock;
  v46 = v135;
  if (aBlock)
  {
    if (qword_10096E700 == -1)
    {
LABEL_29:
      v111 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v111, qword_1009D25C0);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v112 = OfferItem.offerLockup.getter();
      sub_100504CB0(v112, isEscapingClosureAtFileLocation);

      goto LABEL_30;
    }

LABEL_33:
    swift_once();
    goto LABEL_29;
  }

LABEL_30:
  sub_10071F7AC();

  return sub_10002B894(v41, &qword_100973AE0);
}

unint64_t sub_100722B0C()
{
  result = qword_100982818;
  if (!qword_100982818)
  {
    sub_10002D1A8(&unk_1009711F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982818);
  }

  return result;
}

void sub_100722B70()
{
  v1 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v5 - 8);
  v7 = v39 - v6;
  v8 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_primaryContent;
  v9 = v0;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for AppPromotionScrollableContentContainerView()) init];
  v10 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_secondaryContent;
  *(v9 + v10) = [objc_allocWithZone(UIView) init];
  v11 = v9;
  v12 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_availabilityLabelView;
  type metadata accessor for AppPromotionFormattedDateView();
  *(v9 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v45 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_promotionKindLabel;
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  v46 = *(v14 + 56);
  v15 = v14 + 56;
  v44 = v13;
  v46(v7, 1, 1, v13);
  v43 = v15;
  v16 = enum case for DirectionalTextAlignment.none(_:);
  v40 = *(v2 + 104);
  v17 = v4;
  v41 = enum case for DirectionalTextAlignment.none(_:);
  v47 = v1;
  v40(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v18 = type metadata accessor for DynamicTypeLabel();
  v42 = v18;
  v19 = objc_allocWithZone(v18);
  *(v11 + v45) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v45 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_titleLabel;
  v20 = v13;
  v21 = v46;
  v46(v7, 1, 1, v20);
  v22 = v16;
  v23 = v40;
  v39[1] = v2 + 104;
  v40(v17, v22, v1);
  v24 = objc_allocWithZone(v18);
  *(v11 + v45) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v25 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_subtitleView;
  v26 = objc_allocWithZone(type metadata accessor for AppPromotionSubtitleView());
  *(v11 + v25) = sub_100586590(1);
  v45 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_detailLabel;
  v27 = v44;
  v21(v7, 1, 1, v44);
  v28 = v41;
  v23(v17, v41, v47);
  v29 = v42;
  v30 = objc_allocWithZone(v42);
  *(v11 + v45) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_inlineLearnMoreLabel;
  v46(v7, 1, 1, v27);
  v23(v17, v28, v47);
  v32 = objc_allocWithZone(v29);
  *(v11 + v31) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v33 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButton;
  *(v11 + v33) = [objc_allocWithZone(UIButton) init];
  v34 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_separatorView;
  type metadata accessor for SeparatorView();
  *(v11 + v34) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v35 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v11 + v35) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v11 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) = 0;
  *(v11 + OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_learnMoreButtonAction) = 0;
  v36 = OBJC_IVAR____TtC8AppStore33AppPromotionDetailPageContentView_mediaOverlayStyle;
  v37 = enum case for MediaOverlayStyle.matchSystem(_:);
  v38 = type metadata accessor for MediaOverlayStyle();
  (*(*(v38 - 8) + 104))(v11 + v36, v37, v38);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100723074(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100723180()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView];
  v2 = [v0 isHighlighted];
  v3 = OBJC_IVAR____TtC8AppStore14SearchHintView_isHighlighted;
  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_isHighlighted] = v2;
  sub_100028BB8();
  if (v2)
  {
    v4 = static UIColor.tableViewCellSelectedBackground.getter();
  }

  else
  {
    v4 = static UIColor.defaultBackground.getter();
  }

  v5 = v4;
  [v1 setBackgroundColor:v4];

  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator] = v1[v3] ^ 1;
  v6 = *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView];

  return [v6 setHidden:?];
}

char *sub_10072324C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SearchHintView()) init];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for SearchHintCollectionViewCell();
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView;
  v12 = *&v10[OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView];
  v13 = v10;
  [v12 setUserInteractionEnabled:0];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v13;
}

id sub_1007234E8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SearchHintCollectionViewCell();
  objc_msgSendSuper2(&v7, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28SearchHintCollectionViewCell_hintView];
  v1[OBJC_IVAR____TtC8AppStore14SearchHintView_showSeparator] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_separatorView] setHidden:1];
  [*&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_titleLabel] setAttributedText:0];
  v2 = *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage];
  *&v1[OBJC_IVAR____TtC8AppStore14SearchHintView_iconImage] = 0;

  sub_1005EA968(v3, v4, v5);
  return [v1 setNeedsLayout];
}

id sub_1007235F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchHintCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double *sub_1007236D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_100144698(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100074068(v4, &v12);
      sub_10064095C(&v13, v14);
      sub_1000740D8(&v12);
      v15 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_100144698((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      *(v2 + 2) = v6 + 1;
      v7 = &v2[10 * v6];
      *(v7 + 2) = v14[0];
      v8 = v14[1];
      v9 = v14[2];
      v10 = v14[4];
      *(v7 + 5) = v14[3];
      *(v7 + 6) = v10;
      *(v7 + 3) = v8;
      *(v7 + 4) = v9;
      v4 += 88;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1007237E0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(&v30 + 1) = sub_100005744(0, &qword_100972EB0);
  *&v31 = &protocol witness table for UIView;
  *&v29 = a1;
  v8 = (a3 & 1) == 0;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = &type metadata for CGFloat;
  }

  if (v8)
  {
    v10 = &protocol witness table for CGFloat;
  }

  else
  {
    v10 = 0;
  }

  if (!v8)
  {
    a2 = 0;
  }

  sub_100005A38(&v29, v35);
  v36 = a2;
  v37 = 0;
  v38 = 0;
  v39 = v9;
  v40 = v10;
  v11 = OBJC_IVAR____TtC8AppStore18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v12 = *&v4[v11];
  v13 = a1;

  v14 = sub_100723A64(v13, v12);

  if (v14)
  {
    v15 = swift_beginAccess();
    __chkstk_darwin(v15);
    result = sub_100073E6C(&v4[v11], sub_100723FC4);
    v17 = *(*&v4[v11] + 16);
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    sub_1004A69B4(result, v17);
    swift_endAccess();
    v18 = &selRef_bringSubviewToFront_;
  }

  else
  {
    v18 = &selRef_addSubview_;
  }

  [v4 *v18];
  *&v29 = v13;
  sub_10064095C(v35, &v29 + 8);
  swift_beginAccess();
  v19 = *&v4[v11];
  v20 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v11] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_100034244(0, *(v19 + 2) + 1, 1, v19);
    *&v4[v11] = v19;
  }

  v23 = *(v19 + 2);
  v22 = *(v19 + 3);
  if (v23 >= v22 >> 1)
  {
    v19 = sub_100034244((v22 > 1), v23 + 1, 1, v19);
  }

  *(v19 + 2) = v23 + 1;
  v24 = &v19[11 * v23];
  v25 = v30;
  *(v24 + 2) = v29;
  *(v24 + 3) = v25;
  v26 = v31;
  v27 = v32;
  v28 = v33;
  *(v24 + 14) = v34;
  *(v24 + 5) = v27;
  *(v24 + 6) = v28;
  *(v24 + 4) = v26;
  *&v4[v11] = v19;
  swift_endAccess();
  [v4 setNeedsLayout];
  return sub_100640994(v35);
}

BOOL sub_100723A64(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 88;
    sub_100005744(0, &qword_100978360);
    v5 = static NSObject.== infix(_:_:)();
    v2 = v4;
  }

  while ((v5 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_100723AF4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  sub_100724018(v1 + OBJC_IVAR____TtC8AppStore18OnboardingTrayView_layoutMetrics, v16);
  swift_beginAccess();

  v9 = sub_1007236D0(v8);

  v17 = v9;
  LayoutMarginsAware<>.layoutFrame.getter();
  sub_100640480(v1, v10, v11, v12, v13);
  (*(v4 + 8))(v7, v3);
  return sub_100724074(v16);
}

double sub_100723CA0(uint64_t a1, double a2)
{
  v5 = type metadata accessor for _VerticalFlowLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_100724018(v2 + OBJC_IVAR____TtC8AppStore18OnboardingTrayView_layoutMetrics, v15);
  swift_beginAccess();

  v10 = sub_1007236D0(v9);

  v16 = v10;
  if (*(v10 + 2))
  {
    sub_10063FCE8(a1, v8);
    _VerticalFlowLayout.measurements(fitting:in:)();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    if (v12 > a2)
    {
      a2 = v12;
    }
  }

  else
  {
    a2 = JUMeasurementsZero[0];
  }

  sub_100724074(v15);
  return a2;
}

uint64_t sub_10072411C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  aBlock[4] = sub_100724550;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D0760;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v14[1] = _swiftEmptyArrayStorage;
  sub_10002D150();
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
}

uint64_t sub_10072438C(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v17[0] = v3 + 8;
  v17[1] = v3 + 16;

  v11 = 0;
  while (v8)
  {
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (v13 | (v11 << 6)), v2);
    v14 = sub_1005D8420();
    v16 = v15;
    result = (*(v3 + 8))(v5, v2);
    if (v14)
    {
      result = (*(v16 + 8))(v14, v16);
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1007245A0()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10002849C(&qword_100970EF0);
  v15 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007B23A0;
  v43 = v17 + v16;
  v49 = 0x3FF8000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  v42 = v7;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v14;
  v41 = v11;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x3FF8000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 2 * v27 + v45;
  v49 = 0x4004000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v29(v4, v46, v28);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v49 = 0x4014000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v49 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_100994170 = v37;
  return result;
}

uint64_t sub_100724FC8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  aBlock[4] = sub_1007266CC;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D07F8;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1007266D8(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_1007252AC(void *a1, void *a2, uint64_t a3)
{
  v50 = a3;
  v48 = a2;
  v4 = type metadata accessor for MetricsTopicProvider();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Bag();
  v51 = *(v7 - 8);
  v52 = v7;
  __chkstk_darwin(v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v14);
  v15 = type metadata accessor for OSLogger();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    v20 = [v19 request];
    if (v20)
    {
      v21 = v20;
      type metadata accessor for BaseObjectGraph();
      v22 = v52;
      v48 = v19;
      v23 = v50;
      inject<A, B>(_:from:)();
      sub_100005744(0, &qword_10098D1A0);
      inject<A, B>(_:from:)();
      v24 = aBlock;
      v25 = v51;
      (*(v51 + 16))(v9, v12, v22);
      MetricsTopicProvider.init(bag:)();
      HaveAnonymous = MetricsTopicProvider.shouldHaveAnonymousEvents.getter();
      (*(v49 + 8))(v6, v4);
      v27 = v24;
      v28 = [v24 ams_activeiTunesAccount];
      [v21 setAccount:v28];

      [v21 setAnonymousMetrics:HaveAnonymous & 1];
      v29 = v21;
      v30 = [objc_allocWithZone(AMSUIEngagementTaskViewController) initWithRequest:v29 bag:Bag.amsBag.getter()];

      swift_unknownObjectRelease();
      v31 = [v30 canPresent];
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v23;
      v55 = sub_100726720;
      v56 = v32;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v54 = sub_100235C48;
      *(&v54 + 1) = &unk_1008D0848;
      v33 = _Block_copy(&aBlock);
      v34 = v30;

      [v31 addFinishBlock:v33];
      _Block_release(v33);

      return (*(v25 + 8))(v12, v22);
    }

    else
    {
      if (qword_10096D120 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v15, qword_1009CE218);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v43._countAndFlagsBits = 0xD000000000000049;
      v43._object = 0x8000000100822190;
      LogMessage.StringInterpolation.appendLiteral(_:)(v43);
      *(&v54 + 1) = sub_100005744(0, &qword_1009899E8);
      *&aBlock = v19;
      v44 = v19;
      LogMessage.StringInterpolation.appendInterpolation(safe:)();
      sub_10003D444(&aBlock);
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v45);
      LogMessage.init(stringInterpolation:)();
      Logger.info(_:)();
    }
  }

  else
  {
    v36 = v48;
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v37 = sub_1000056A8(v15, qword_1009CE218);
    (*(v16 + 16))(v18, v37, v15);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v38._object = 0x80000001008187E0;
    v38._countAndFlagsBits = 0xD00000000000003BLL;
    LogMessage.StringInterpolation.appendLiteral(_:)(v38);
    aBlock = 0u;
    v54 = 0u;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v39._countAndFlagsBits = 0x3A726F727265202CLL;
    v39._object = 0xE900000000000020;
    LogMessage.StringInterpolation.appendLiteral(_:)(v39);
    v40 = v36;
    if (v36)
    {
      swift_getErrorValue();
      v40 = Error.localizedDescription.getter();
      v42 = &type metadata for String;
    }

    else
    {
      v41 = 0;
      v42 = 0;
      *&v54 = 0;
    }

    *&aBlock = v40;
    *(&aBlock + 1) = v41;
    *(&v54 + 1) = v42;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v46);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_100725AB8(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a4;
  v41 = a3;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v50 = type metadata accessor for FlowOrigin();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for FlowAnimationBehavior();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for FlowPresentationContext();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for FlowPage();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = v41;
    v24 = [v41 startEngagement];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v55 = sub_10013B73C;
    v56 = v25;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v54 = sub_100182E7C;
    *(&v54 + 1) = &unk_1008D0898;
    v26 = _Block_copy(&aBlock);
    v40 = v8;
    v27 = v23;

    [v24 addFinishBlock:v26];
    _Block_release(v26);

    v55 = 0;
    aBlock = 0u;
    v54 = 0u;
    (*(v19 + 104))(v22, enum case for FlowPage.viewController(_:), v18);
    v28 = type metadata accessor for URL();
    (*(*(v28 - 8) + 56))(v17, 1, 1, v28);
    v29 = type metadata accessor for ReferrerData();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v52 = sub_100005744(0, &qword_10097A988);
    v51 = v27;
    v30 = v27;
    static ActionMetrics.notInstrumented.getter();
    (*(v42 + 104))(v46, enum case for FlowPresentationContext.infer(_:), v43);
    (*(v44 + 104))(v49, enum case for FlowAnimationBehavior.infer(_:), v45);
    (*(v48 + 104))(v40, enum case for FlowOrigin.inapp(_:), v50);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    sub_1005D01FC(v31, 1, v47);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for OSLogger();
    sub_1000056A8(v33, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v34._object = 0x8000000100822240;
    v34._countAndFlagsBits = 0xD000000000000047;
    LogMessage.StringInterpolation.appendLiteral(_:)(v34);
    swift_getErrorValue();
    v35 = Error.localizedDescription.getter();
    *(&v54 + 1) = &type metadata for String;
    *&aBlock = v35;
    *(&aBlock + 1) = v36;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(&aBlock);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v37);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for OSLogger();
    sub_1000056A8(v38, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();
  }
}

uint64_t sub_1007263EC(uint64_t a1)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSLogger();
  sub_1000056A8(v6, qword_1009CE218);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  v7 = [objc_opt_self() engagementRequestForFullSheet];
  aBlock[4] = sub_1007266C4;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100182E7C;
  aBlock[3] = &unk_1008D07A8;
  v8 = _Block_copy(aBlock);

  [v7 addFinishBlock:v8];
  _Block_release(v8);
  sub_10002849C(&qword_1009764A0);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v9 = Promise.__allocating_init(value:)();

  return v9;
}

uint64_t sub_1007266D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100726740(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100971788);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C828;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_100983708, &type metadata accessor for SearchFocusDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for SearchFocusDiffablePagePresenter();
    sub_10072C7E0(&qword_100983708, &type metadata accessor for SearchFocusDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_100726ED4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100971EA8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C844;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_1009837D8, &type metadata accessor for ReviewsDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for ReviewsDiffablePagePresenter();
    sub_10072C7E0(&qword_1009837D8, &type metadata accessor for ReviewsDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_100727668(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100977EF0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C844;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_1009836C0, &type metadata accessor for ProductDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for ProductDiffablePagePresenter();
    sub_10072C7E0(&qword_1009836C0, &type metadata accessor for ProductDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_100727DFC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_10097C0A0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C844;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_1009838A8, &type metadata accessor for SearchResultsDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for SearchResultsDiffablePagePresenter();
    sub_10072C7E0(&qword_1009838A8, &type metadata accessor for SearchResultsDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_100728590(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_10097CCC0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v29 - v8);
  (*(v6 + 16))(&v29 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_1009CF3E8) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
    {
      PendingPageRender.isLayoutPending.setter();
    }

    v11 = qword_10097F2F0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_10072C844;
      v14[1] = v13;
      v16 = v12;

      sub_10001F63C(v15);
    }

    v17 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 launchedToTest];

    if (!v19)
    {

      return;
    }

    if (v17)
    {
      v20 = objc_opt_self();

      v21 = [v20 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v22 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v21 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v22 object:v17];

      return;
    }

    sub_100094120();
    v28 = swift_allocError();
    sub_10021CA80(v28);
    goto LABEL_16;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v23 = *v9;
    v24 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_100983768, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v24);
    v25 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    (*((swift_isaMask & *v2) + 0x168))(v25);
    sub_10021CA80(v23);
    sub_10001F63C(v24);
LABEL_16:

    return;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v26 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v27 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    (*((swift_isaMask & *v2) + 0x168))(v27);
    type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter();
    sub_10072C7E0(&qword_100983768, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_100728BDC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_10097D4C0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C844;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_100983728, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter();
    sub_10072C7E0(&qword_100983728, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_100729370(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_10098C390);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C844;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_100983790, &type metadata accessor for TodayDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for TodayDiffablePagePresenter();
    sub_10072C7E0(&qword_100983790, &type metadata accessor for TodayDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

void sub_100729B04(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_1009851B8);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v29 - v8);
  (*(v6 + 16))(&v29 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_1009CF3E8) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
    {
      PendingPageRender.isLayoutPending.setter();
    }

    v11 = qword_10097F2F0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_10072C844;
      v14[1] = v13;
      v16 = v12;

      sub_10001F63C(v15);
    }

    v17 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 launchedToTest];

    if (!v19)
    {

      return;
    }

    if (v17)
    {
      v20 = objc_opt_self();

      v21 = [v20 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v22 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v21 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v22 object:v17];

      return;
    }

    sub_100094120();
    v28 = swift_allocError();
    sub_10021CA80(v28);
    goto LABEL_16;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v23 = *v9;
    v24 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_100983748, &type metadata accessor for ArcadeDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v24);
    v25 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    (*((swift_isaMask & *v2) + 0x168))(v25);
    sub_10021CA80(v23);
    sub_10001F63C(v24);
LABEL_16:

    return;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v26 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v27 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    (*((swift_isaMask & *v2) + 0x168))(v27);
    type metadata accessor for ArcadeDiffablePagePresenter();
    sub_10072C7E0(&qword_100983748, &type metadata accessor for ArcadeDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_10072A150(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100980348);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v29 - v8);
  (*(v6 + 16))(&v29 - v8, a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    *(v2 + qword_1009CF3E8) = 1;
    (*((swift_isaMask & *v2) + 0x168))(0);
    if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
    {
      PendingPageRender.isLayoutPending.setter();
    }

    v11 = qword_10097F2F0;
    swift_beginAccess();
    v12 = *(v2 + v11);
    if (v12)
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = &v12[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      v15 = *&v12[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
      *v14 = sub_10072C844;
      v14[1] = v13;
      v16 = v12;

      sub_10001F63C(v15);
    }

    v17 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 launchedToTest];

    if (!v19)
    {

      return;
    }

    if (v17)
    {
      v20 = objc_opt_self();

      v21 = [v20 defaultCenter];
      type metadata accessor for PageRenderMetricsPresenter();
      v22 = static PageRenderMetricsPresenter.pageEndNotification.getter();
      [v21 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v22 object:v17];

      return;
    }

    sub_100094120();
    v28 = swift_allocError();
    sub_10021CA80(v28);
    goto LABEL_16;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v23 = *v9;
    v24 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_100980400, &type metadata accessor for ArticleDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v24);
    v25 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    (*((swift_isaMask & *v2) + 0x168))(v25);
    sub_10021CA80(v23);
    sub_10001F63C(v24);
LABEL_16:

    return;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
    static JULoadingViewController.PresentationContext.placeholder.getter();
    v26 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
    v27 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
    (*((swift_isaMask & *v2) + 0x168))(v27);
    type metadata accessor for ArticleDiffablePagePresenter();
    sub_10072C7E0(&qword_100980400, &type metadata accessor for ArticleDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
  }

  else
  {
    (*((swift_isaMask & *v2) + 0x168))(0);
    (*(v6 + 8))(v9, v5);
  }
}

void sub_10072A79C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&qword_100994700);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v83[-v8];
  (*(v6 + 16))(&v83[-v8], a1, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v6 + 8))(v9, v5);
    v2[qword_1009CF3E8] = 1;
    v11 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v13 = *&v2[v11];
    *&v2[v11] = 0;

    v14 = [v2 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v84 = v17;
      v85 = v19;
      v86 = v21;
      v87 = v23;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      if (dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter())
      {
        PendingPageRender.isLayoutPending.setter();
      }

      v24 = qword_10097F2F0;
      swift_beginAccess();
      v25 = *&v2[v24];
      if (v25)
      {
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = &v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        v28 = *&v25[OBJC_IVAR____TtC8AppStore33BaseCollectionCompositionalLayout_pendingPrepareObserver];
        *v27 = sub_10072C844;
        v27[1] = v26;
        v29 = v25;

        sub_10001F63C(v28);
      }

      v30 = dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
      v31 = [objc_opt_self() sharedApplication];
      v32 = [v31 launchedToTest];

      if (!v32)
      {

        return;
      }

      if (v30)
      {
        v33 = objc_opt_self();

        v34 = [v33 defaultCenter];
        type metadata accessor for PageRenderMetricsPresenter();
        v35 = static PageRenderMetricsPresenter.pageEndNotification.getter();
        [v34 addObserver:v2 selector:"ppt_pageRenderMetricsPresenterPageLoaded:" name:v35 object:v30];

        return;
      }

      sub_100094120();
      v82 = swift_allocError();
      sub_10021CA80(v82);
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v10 == enum case for DiffablePagePresenter.UpdatePhase.error<A>(_:))
  {
    (*(v6 + 96))(v9, v5);
    v36 = *v9;
    v37 = v9[1];
    type metadata accessor for JUContentUnavailableViewController();
    sub_10072C7E0(&qword_1009836E8, &type metadata accessor for SearchLandingDiffablePagePresenter);
    swift_errorRetain();

    sub_10000827C(v37);
    v38 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
    v39 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v40 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v41 = *&v2[v39];
    *&v2[v39] = v38;
    v42 = v38;

    v43 = [v2 view];
    if (v43)
    {
      v44 = v43;
      [v43 bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v84 = v46;
      v85 = v48;
      v86 = v50;
      v87 = v52;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();

      sub_10021CA80(v36);
      sub_10001F63C(v37);
LABEL_20:

      return;
    }

    goto LABEL_22;
  }

  if (v10 != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:))
  {
    v69 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
    v70 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
    static ViewControllerContainment.remove(_:)();

    v71 = *&v2[v69];
    *&v2[v69] = 0;

    v72 = [v2 view];
    if (v72)
    {
      v73 = v72;
      [v72 bounds];
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v81 = v80;

      v84 = v75;
      v85 = v77;
      v86 = v79;
      v87 = v81;
      v88 = 0;
      static ViewControllerContainment.add(_:to:frame:)();
      (*(v6 + 8))(v9, v5);
      return;
    }

    goto LABEL_24;
  }

  dispatch thunk of TimedMetricsPagePresenter.pageRenderMetrics.getter();
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v53 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v54 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  v55 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController;
  v56 = *&v2[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v57 = *&v2[v55];
  *&v2[v55] = v54;
  v58 = v54;

  v59 = [v2 view];
  if (v59)
  {
    v60 = v59;
    [v59 bounds];
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;

    v84 = v62;
    v85 = v64;
    v86 = v66;
    v87 = v68;
    v88 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    type metadata accessor for SearchLandingDiffablePagePresenter();
    sub_10072C7E0(&qword_1009836E8, &type metadata accessor for SearchLandingDiffablePagePresenter);
    MetricsPagePresenter.prepareToObserveAssets(_:)();
    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_10072AF30()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    v2 = dispatch thunk of TimedMetricsPagePresenter.pendingPageRender.getter();

    if (v2)
    {
      PendingPageRender.isLayoutPending.setter();
    }
  }

  return result;
}

char *sub_10072AFC0(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009D3888 + 8) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for AdvertRotationControllerProvider();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  *(v2 + qword_100994180) = v10;

  v5 = sub_1003B94D8(a1, a2);
  v6 = *&v5[qword_1009CF410];
  v7 = v5;
  v8 = v6;

  CompoundScrollObserver.addChild(_:)();

  return v7;
}

id sub_10072B0CC()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    if (v3)
    {
      return v3;
    }
  }

  v5 = [v0 navigationItem];

  return v5;
}

id sub_10072B164()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v0;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidLoad", v4);
  v7 = [v0 collectionView];
  if (v7)
  {
    v8 = v7;
    [v7 setKeyboardDismissMode:1];
  }

  v9 = [v0 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 setAllowsSelection:1];
  }

  v11 = [v0 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  result = [v0 collectionView];
  if (result)
  {
    v14 = result;
    memset(v15, 0, sizeof(v15));
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v15, &unk_1009711D0);
    UIView.setAutomationSemantics(_:)();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10072B360(void *a1)
{
  v1 = a1;
  sub_10072B164();
}

void sub_10072B40C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

void sub_10072B554(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v11 + 8))(v13, v10);
}

void sub_10072B6B8(void *a1)
{
  v1 = a1;
  sub_10072B690();
}

uint64_t sub_10072B728(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_1000674A8(v6 + v15, v22);
  if (v23)
  {
    sub_10002C0AC(v22, v21);
    sub_10002B894(v22, &unk_10097F510);
    v18 = a2;
    v19 = v7;
    sub_10002A400(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v12 + 8))(v14, v11);
    v16 = sub_100007000(v21);
  }

  else
  {
    v16 = sub_10002B894(v22, &unk_10097F510);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v8 + 8))(v10, v7);
}

void sub_10072B9BC(void *a1)
{
  v1 = a1;
  sub_10072B700();
}

id sub_10072BA04()
{
  v1 = v0;
  swift_getObjectType();
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B1E00;
  sub_10002849C(&qword_100994738);
  swift_allocObject();
  swift_retain_n();

  v3 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v4 = sub_10072C77C();
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = sub_10072C7E0(&qword_1009717C8, type metadata accessor for BackgroundConfigurationCollectionElementsObserver);
  *(v2 + 48) = v5;
  *(v2 + 56) = v6;
  sub_10072C7E0(&qword_100994718, type metadata accessor for SearchLandingDiffablePageViewController);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v2 + 64) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v2 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    type metadata accessor for CompoundCollectionElementsObserver();
    swift_allocObject();
    v8 = CompoundCollectionElementsObserver.init(children:)();
    sub_10073B25C();
    if (swift_dynamicCastClass())
    {
      CompoundCollectionElementsObserver.removingChildren(where:)();
      CompoundCollectionElementsObserver.addChild(_:)();
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

unint64_t sub_10072BCA0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchLandingPageShelfLayoutSpacingProvider;
  result = sub_10072C728();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10072BCD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for SearchLandingPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10072C7E0(&qword_100994720, &type metadata accessor for SearchLandingDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10072C7E0(&qword_100994728, type metadata accessor for SearchLandingPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_10072BDD4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10072C7E0(&qword_100994718, type metadata accessor for SearchLandingDiffablePageViewController);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v18[3] = swift_getObjectType();
  v18[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  sub_1000073E8(v18, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && *&v15[0])
  {
    v14 = v15[0];
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v19, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && *&v15[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v15[0];
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v15[0];
      v4 = v13;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v10 = type metadata accessor for SearchLandingLayoutSectionProvider();
  swift_allocObject();
  sub_10002C0AC(v17, v16);
  sub_10002C0AC(v16, v15);

  v11 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v16);
  result = sub_100007000(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

unint64_t sub_10072C0E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PageGridCache();
  swift_allocObject();
  v2 = PageGridCache.init()();
  swift_allocObject();
  v3 = PageGridCache.init()();
  a1[3] = &type metadata for SearchLandingPageGridProvider;
  result = sub_10072C6D4();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

void sub_10072C168(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_1009D3888];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_10072C218@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchLandingShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_10072C7E0(&qword_100994708, type metadata accessor for SearchLandingShelfComponentTypeMappingProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_10072C2CC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100994700);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_10072A79C(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    AdvertRotationControllerProvider.viewControllerWillBeReloaded()();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_10072C404(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = UITraitCollection.prefersAccessibilityLayouts.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0 || (!a1 ? (v7 = 2) : (v7 = UITraitCollection.prefersRightToLeftLayouts.getter() & 1), (v8 = [v2 traitCollection], v9 = UITraitCollection.prefersRightToLeftLayouts.getter(), v8, v7 == 2) || ((v9 ^ v7) & 1) != 0))
  {
    v10 = [v2 collectionView];
    if (v10)
    {
      v11 = v10;
      [v10 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10072C538(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10072C404(a3);
}

uint64_t sub_10072C5A4()
{

  v1 = v0 + qword_1009D3888;

  return sub_10001F64C(v1);
}

uint64_t sub_10072C5E4(uint64_t a1)
{

  v2 = a1 + qword_1009D3888;

  return sub_10001F64C(v2);
}

uint64_t type metadata accessor for SearchLandingDiffablePageViewController()
{
  result = qword_1009941B0;
  if (!qword_1009941B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10072C6D4()
{
  result = qword_100994710;
  if (!qword_100994710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994710);
  }

  return result;
}

unint64_t sub_10072C728()
{
  result = qword_100994730;
  if (!qword_100994730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994730);
  }

  return result;
}

unint64_t sub_10072C77C()
{
  result = qword_100994740;
  if (!qword_100994740)
  {
    sub_10002D1A8(&qword_100994738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994740);
  }

  return result;
}

uint64_t sub_10072C7E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_10002849C(&qword_100979010);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_100005A38(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_100005A38(a6, a9 + v32[14]);
  sub_100005A38(a7, a9 + v32[15]);
  sub_100005A38(a8, a9 + v32[16]);
  sub_100005A38(a16, a9 + v32[11]);
  sub_100005A38(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_10002849C(&unk_100980420);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_100005A38(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_100005A38(a22, a9 + v32[20]);
  result = sub_100005A38(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_100496F00(a1, a9);
  v21 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  sub_100005A38(a3, a9 + v21[6]);
  v24 = a9 + v21[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a4 + 32);
  sub_100005A38(a5, a9 + v21[10]);
  sub_100005A38(a6, a9 + v21[8]);
  sub_100005A38(a7, a9 + v21[9]);
  sub_100005A38(a8, a9 + v21[11]);
  v26 = a9 + v21[12];
  v27 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a10 + 32);
  sub_100005A38(a11, a9 + v21[13]);
  v28 = a9 + v21[14];
  v29 = *(a12 + 16);
  *v28 = *a12;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a12 + 32);
  v30 = a9 + v21[15];
  v31 = *(a13 + 16);
  *v30 = *a13;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a13 + 32);
  v32 = a9 + v21[16];
  v33 = *(a14 + 16);
  *v32 = *a14;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a14 + 32);
  v34 = a9 + v21[17];
  v35 = *(a15 + 16);
  *v34 = *a15;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a15 + 32);
  v36 = a9 + v21[18];
  v37 = *(a16 + 16);
  *v36 = *a16;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a16 + 32);
  v38 = a9 + v21[19];
  result = *a17;
  v40 = *(a17 + 16);
  *v38 = *a17;
  *(v38 + 16) = v40;
  *(v38 + 32) = *(a17 + 32);
  return result;
}

double ProductLockupInlineUberLayout.measurements(fitting:in:)(void *a1, double a2)
{
  swift_getObjectType();

  return sub_1007304B4(a1, v2, a2);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = UITraitCollection.isSizeClassRegular.getter();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v4 + 8))(v7, v3);
  }
}

double sub_10072D10C@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_100031660(v1 + *(v3 + 56), &v9, &unk_10097E890);
  if (v10)
  {
    sub_100005A38(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_10002A400(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_1000056E0(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_100007000(v11);
    return result;
  }

  sub_10002B894(&v9, &unk_10097E890);
  sub_100031660(v1 + *(v3 + 60), &v9, &qword_100975610);
  if (v10)
  {
    sub_100005A38(&v9, v11);
    sub_10002A400(v11, v12);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002C0AC(v11, a1);
      goto LABEL_3;
    }

    sub_100007000(v11);
  }

  else
  {
    sub_10002B894(&v9, &qword_100975610);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10002849C(&unk_100980420);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10002849C(&unk_100980420);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10002849C(&qword_100979010);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v159 = a2;
  v161 = sub_10002849C(&qword_100979010);
  v156 = *(v161 - 8);
  __chkstk_darwin(v161);
  v155 = &v154 - v13;
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000CC354(a3, a4, a5, a6, *v6, v6[1]);
  v177 = v19;
  v174 = v20;
  v179 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  sub_10002A400((v6 + v22[15]), *(v6 + v22[15] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v160 = v23;
  v26 = *(v15 + 8);
  v24 = v15 + 8;
  v25 = v26;
  v26(v17, v14);
  sub_10002A400((v7 + v22[16]), *(v7 + v22[16] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v163 = v27;
  v180 = v14;
  v26(v17, v14);
  v28 = [a1 traitCollection];
  v29 = UITraitCollection.isSizeClassCompact.getter();

  if ((v29 & 1) == 0 || (sub_10072D10C(&v183), v30 = v184, sub_10002B894(&v183, &qword_100975610), !v30))
  {
    sub_10002849C(&unk_100980420);
    v31 = v155;
    Conditional<>.value.getter();
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v25(v17, v180);
    (*(v156 + 8))(v31, v161);
  }

  v32 = [a1 traitCollection];
  v33 = UITraitCollection.isSizeClassCompact.getter();

  v166 = a3;
  v172 = v24;
  v175 = v18;
  v178 = v25;
  v176 = *&v22;
  v167 = a6;
  v164 = a5;
  v165 = a4;
  if (v33)
  {
    v34 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v35 = (v7 + *(v34 + 24));
    v36 = v35[3];
    v173 = v35[4];
    v171 = COERCE_DOUBLE(sub_10002A400(v35, v36));
    v186.origin.x = a3;
    v186.origin.y = a4;
    v186.size.width = a5;
    v186.size.height = a6;
    CGRectGetMinX(v186);
    v187.origin.x = a3;
    v187.origin.y = a4;
    v187.size.width = a5;
    v187.size.height = a6;
    CGRectGetMaxY(v187);
    v37 = (v7 + v22[20]);
    sub_10002A400(v37, v37[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v38 = v180;
    AnyDimension.value(in:rounded:)();
    v178(v17, v38);
    v188.origin.x = a3;
    v188.origin.y = a4;
    v188.size.width = a5;
    v188.size.height = a6;
    CGRectGetWidth(v188);
    sub_10002A400(v37, v37[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v39 = v38;
    v25 = v178;
    v178(v17, v39);
    dispatch thunk of LayoutView.frame.setter();
    v173 = v34;
    sub_100031660(v7 + *(v34 + 28), &v183, &qword_100975610);
    if (v184)
    {
      v171 = v185;
      sub_10002A400(&v183, v184);
      v189.origin.x = a3;
      v189.origin.y = a4;
      v189.size.width = a5;
      v189.size.height = a6;
      CGRectGetMinX(v189);
      v190.origin.x = a3;
      v190.origin.y = a4;
      v190.size.width = a5;
      v190.size.height = a6;
      CGRectGetMaxY(v190);
      v40 = (v7 + *(*&v176 + 84));
      sub_10002A400(v40, v40[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      v41 = v180;
      AnyDimension.value(in:rounded:)();
      v178(v17, v41);
      v191.origin.x = a3;
      v191.origin.y = a4;
      v191.size.width = a5;
      v191.size.height = a6;
      CGRectGetWidth(v191);
      sub_10002A400(v40, v40[3]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v42 = v41;
      v25 = v178;
      v178(v17, v42);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v183);
    }

    else
    {
      sub_10002B894(&v183, &qword_100975610);
    }

    v53 = v174;
    sub_100031660(v7 + v173[5], &v183, &qword_100975610);
    v18 = v175;
    if (v184)
    {
      sub_10002A400(&v183, v184);
      v54 = v166;
      v193.origin.x = v166;
      v193.origin.y = a4;
      v193.size.width = a5;
      v193.size.height = a6;
      CGRectGetMinX(v193);
      v194.origin.x = v54;
      v194.origin.y = a4;
      v194.size.width = a5;
      v194.size.height = a6;
      CGRectGetMinY(v194);
      v195.origin.x = v54;
      v195.origin.y = a4;
      v195.size.width = a5;
      v195.size.height = a6;
      CGRectGetWidth(v195);
      if (qword_10096D8C0 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v161, qword_1009CFA90);
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      v25(v17, v180);
      v55 = [a1 traitCollection];
      [v55 displayScale];

      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v183);
      v18 = v175;
      v53 = v174;
    }

    else
    {
      sub_10002B894(&v183, &qword_100975610);
    }
  }

  else
  {
    v192.origin.x = a3;
    v192.origin.y = a4;
    v192.size.width = a5;
    v192.size.height = a6;
    Width = CGRectGetWidth(v192);
    sub_10002A400((v7 + v22[17]), *(v7 + v22[17] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v45 = v44;
    v46 = v180;
    v25(v17, v180);
    v47 = (Width - v45) * 0.5;
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v49 = v48;
    v25(v17, v46);
    if (v47 > v49)
    {
      v50 = v47;
    }

    else
    {
      v50 = v49;
    }

    v51 = floor(v50);
    v52 = type metadata accessor for ProductLockupInlineUberLayout(0);
    sub_10002A400((v7 + *(v52 + 24)), *(v7 + *(v52 + 24) + 24));
    sub_1000CC354(a3, a4, a5, a6, 0.0, v51);
    dispatch thunk of LayoutView.frame.setter();
    v173 = v52;
    sub_100031660(v7 + *(v52 + 20), &v183, &qword_100975610);
    if (v184)
    {
      sub_10002A400(&v183, v184);
      dispatch thunk of LayoutView.frame.setter();
      sub_100007000(&v183);
    }

    else
    {
      sub_10002B894(&v183, &qword_100975610);
    }

    v53 = v174;
  }

  v196.origin.x = v18;
  v56 = v177;
  v196.origin.y = v177;
  v196.size.width = v53;
  v57 = v179;
  v196.size.height = v179;
  MidX = CGRectGetMidX(v196);
  v59 = v7[4];
  v60 = floor(MidX - v59 * 0.5);
  v197.origin.x = v18;
  v197.origin.y = v56;
  v197.size.width = v53;
  v197.size.height = v57;
  MinY = CGRectGetMinY(v197);
  v62 = v7[5];
  v63 = floor(MinY - v62 * 0.5);
  type metadata accessor for ProductLockupInlineUberLayout(0);
  v64 = v173;
  v65 = (v7 + v173[8]);
  sub_10002A400(v65, v65[3]);
  v170 = v60;
  v168 = v63;
  v171 = v59;
  v169 = v62;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(v7 + v64[19], &v183, &qword_100975610);
  if (v184)
  {
    sub_10002A400(&v183, v184);
    sub_10002A400(v65, v65[3]);
    v25 = v178;
    dispatch thunk of LayoutView.frame.getter();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v183);
  }

  else
  {
    sub_10002B894(&v183, &qword_100975610);
  }

  v66 = [a1 traitCollection];
  v67 = UITraitCollection.isSizeClassRegular.getter();

  v68 = 0.0;
  if (v67)
  {
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v68 = v69;
    v25(v17, v180);
  }

  v70 = (v7 + v173[10]);
  sub_10002A400(v70, v70[3]);
  v198.origin.x = v18;
  v71 = v177;
  v198.origin.y = v177;
  v198.size.width = v53;
  v72 = v179;
  v198.size.height = v179;
  CGRectGetWidth(v198);
  v158 = v68;
  v157 = v68 + v68;
  v199.origin.x = v18;
  v199.origin.y = v71;
  v199.size.width = v53;
  v199.size.height = v72;
  CGRectGetMaxY(v199);
  v200.origin.x = v170;
  v200.origin.y = v168;
  v200.size.width = v171;
  v200.size.height = v169;
  CGRectGetMaxY(v200);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v74 = v73;
  v25(v17, v180);
  v183 = v74;
  v75 = v174;
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(v70, v70[3]);
  v201.origin.x = v18;
  v201.origin.y = v71;
  v201.size.width = v75;
  v201.size.height = v72;
  CGRectGetMinX(v201);
  v202.origin.x = v18;
  v202.origin.y = v71;
  v202.size.width = v75;
  v202.size.height = v72;
  CGRectGetWidth(v202);
  v203.origin.x = v170;
  v203.origin.y = v168;
  v203.size.width = v171;
  v203.size.height = v169;
  CGRectGetMaxY(v203);
  dispatch thunk of LayoutView.frame.setter();
  v76 = [a1 traitCollection];
  v77 = UITraitCollection.isSizeClassCompact.getter();

  if (v77)
  {
    v78 = v175;
    v204.origin.x = v175;
    v204.origin.y = v71;
    v204.size.width = v75;
    v204.size.height = v72;
    MinX = CGRectGetMinX(v204);
    sub_10002A400(v70, v70[3]);
    dispatch thunk of LayoutView.frame.getter();
    MaxY = CGRectGetMaxY(v205);
    v206.origin.x = v78;
    v206.origin.y = v71;
    v206.size.width = v75;
    v206.size.height = v72;
    v80 = CGRectGetWidth(v206);
    v81 = v71;
    v82 = v80;
    v83 = v78;
    v84 = v75;
    v85 = v72;
    v86 = v173;
  }

  else
  {
    v87 = v173;
    v88 = (v7 + v173[6]);
    sub_10002A400(v88, v88[3]);
    dispatch thunk of LayoutView.frame.getter();
    MinX = CGRectGetMinX(v207);
    sub_10002A400(v70, v70[3]);
    dispatch thunk of LayoutView.frame.getter();
    MaxY = CGRectGetMaxY(v208);
    sub_10002A400(v88, v88[3]);
    dispatch thunk of LayoutView.frame.getter();
    v82 = CGRectGetWidth(v209);
    sub_10002A400(v88, v88[3]);
    dispatch thunk of LayoutView.frame.getter();
    v86 = v87;
  }

  v89 = CGRectGetMaxY(*&v83);
  v210.origin.x = v170;
  v210.origin.y = v168;
  v210.size.width = v171;
  v210.size.height = v169;
  v90 = v89 - CGRectGetMaxY(v210);
  v91 = v82 - v157;
  v92 = v158 + MinX;
  v93 = (v7 + v86[9]);
  sub_10002A400(v93, *(v93 + 3));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v171 = v94;
  v170 = v95;
  v169 = v96;
  v97 = (v7 + v86[11]);
  sub_10002A400(v97, *(v97 + 3));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v157 = v98;
  v158 = v99;
  v154 = v100;
  v168 = v101;
  sub_10002A400(v93, *(v93 + 3));
  v211.origin.x = v92;
  v102 = MaxY;
  v211.origin.y = MaxY;
  v211.size.width = v91;
  v211.size.height = v90;
  CGRectGetMinX(v211);
  v212.origin.x = v92;
  v212.origin.y = v102;
  v212.size.width = v91;
  v212.size.height = v90;
  CGRectGetMinY(v212);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v104 = v103;
  v178(v17, v180);
  v183 = v104;
  v105 = v169;
  AnyDimension.topMargin(from:in:)();
  v213.origin.x = v92;
  v213.origin.y = v102;
  v213.size.width = v91;
  v213.size.height = v90;
  CGRectGetWidth(v213);
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v97, *(v97 + 3));
  if (dispatch thunk of LayoutView.hasContent.getter())
  {
    v106 = *(v97 + 3);
    v171 = v97[4];
    sub_10002A400(v97, v106);
    v214.origin.x = v92;
    v107 = MaxY;
    v214.origin.y = MaxY;
    v214.size.width = v91;
    v214.size.height = v90;
    v170 = CGRectGetMinX(v214);
    sub_10002A400(v93, *(v93 + 3));
    dispatch thunk of LayoutView.frame.getter();
    CGRectGetMaxY(v215);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v109 = v108;
    v178(v17, v180);
    v183 = v109;
    v110 = v168;
    AnyDimension.topMargin(from:in:)();
    v216.origin.x = v92;
    v216.origin.y = v107;
    v216.size.width = v91;
    v216.size.height = v90;
    CGRectGetWidth(v216);
    dispatch thunk of LayoutView.frame.setter();
  }

  else
  {
    sub_10002A400(v97, *(v97 + 3));
    dispatch thunk of LayoutView.frame.setter();
    v97 = v93;
    v110 = v105;
  }

  v111 = v179;
  sub_10002A400(v97, *(v97 + 3));
  dispatch thunk of LayoutView.frame.getter();
  v171 = CGRectGetMaxY(v217) - v110;
  v112 = v173;
  v113 = (v7 + v173[13]);
  sub_10002A400(v113, v113[3]);
  v114 = v174;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v116 = v115;
  v118 = v117;
  v119 = v175;
  v218.origin.x = v175;
  v120 = v177;
  v218.origin.y = v177;
  v218.size.width = v114;
  v218.size.height = v111;
  v121 = floor(CGRectGetMidX(v218) + v116 * -0.5);
  sub_10002A400((v7 + *(*&v176 + 36)), *(v7 + *(*&v176 + 36) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v123 = v122;
  v178(v17, v180);
  v124 = floor(v171 + v123);
  sub_10002A400(v113, v113[3]);
  v169 = v121;
  v168 = v124;
  v171 = v116;
  v170 = v118;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(v7 + v112[17], &v181, &qword_100975610);
  if (v182)
  {
    sub_100005A38(&v181, &v183);
    v125 = v166;
    v219.origin.x = v166;
    v126 = v165;
    v219.origin.y = v165;
    v127 = v164;
    v219.size.width = v164;
    v128 = v167;
    v219.size.height = v167;
    MaxY = CGRectGetMinX(v219);
    v220.origin.x = v119;
    v220.origin.y = v120;
    v220.size.width = v114;
    v220.size.height = v111;
    CGRectGetMaxY(v220);
    v221.origin.x = v125;
    v221.origin.y = v126;
    v221.size.width = v127;
    v221.size.height = v128;
    CGRectGetWidth(v221);
    sub_10002A400(&v183, v184);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v183);
  }

  else
  {
    sub_10002B894(&v181, &qword_100975610);
  }

  sub_100031660(v7 + v112[18], &v181, &qword_100975610);
  if (v182)
  {
    sub_100005A38(&v181, &v183);
    v129 = v166;
    v222.origin.x = v166;
    v130 = v165;
    v222.origin.y = v165;
    v131 = v164;
    v222.size.width = v164;
    v132 = v167;
    v222.size.height = v167;
    CGRectGetMinX(v222);
    v223.origin.x = v175;
    v223.origin.y = v177;
    v223.size.width = v114;
    v223.size.height = v179;
    CGRectGetMaxY(v223);
    v224.origin.x = v129;
    v224.origin.y = v130;
    v224.size.width = v131;
    v224.size.height = v132;
    CGRectGetWidth(v224);
    sub_10002A400(&v183, v184);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v183);
  }

  else
  {
    sub_10002B894(&v181, &qword_100975610);
  }

  v133 = v176;
  sub_10072D10C(&v181);
  if (v182)
  {
    sub_100005A38(&v181, &v183);
    sub_10002A400(&v183, v184);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v225.origin.x = v175;
    v225.origin.y = v177;
    v225.size.width = v114;
    v225.size.height = v179;
    CGRectGetMidX(v225);
    v226.origin.x = v169;
    v226.origin.y = v168;
    v226.size.width = v171;
    v226.size.height = v170;
    CGRectGetMaxY(v226);
    sub_10002A400((v7 + *(*&v133 + 44)), *(v7 + *(*&v133 + 44) + 24));
    v134 = v179;
    AnyDimension.topMargin(from:in:)();
    sub_10002A400(&v183, v184);
    v114 = v174;
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v183);
  }

  else
  {
    sub_10002B894(&v181, &qword_100975610);
    v134 = v179;
  }

  sub_100031660(v7 + v112[16], &v181, &qword_100975610);
  v135 = v175;
  if (v182)
  {
    sub_100005A38(&v181, &v183);
    v136 = [a1 traitCollection];
    v137 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v137 & 1) != 0 || (sub_10072D10C(&v181), v138 = v182, sub_10002B894(&v181, &qword_100975610), v138) && (v139 = [a1 traitCollection], v140 = UITraitCollection.isSizeClassCompact.getter(), v139, (v140))
    {
      sub_10002A400(&v183, v184);
    }

    else
    {
      sub_10002A400(&v183, v184);
      Measurable.measuredSize(fitting:in:)();
      v227.origin.x = v135;
      v141 = v177;
      v227.origin.y = v177;
      v227.size.width = v174;
      v227.size.height = v134;
      CGRectGetMidX(v227);
      v228.origin.x = v135;
      v228.origin.y = v141;
      v228.size.width = v174;
      v228.size.height = v134;
      CGRectGetMaxY(v228);
      sub_10002849C(&unk_100980420);
      v142 = v155;
      Conditional<>.value.getter();
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      v178(v17, v180);
      (*(v156 + 8))(v142, v161);
      v135 = v175;
      sub_10002A400(&v183, v184);
      v114 = v174;
      dispatch thunk of LayoutView.frame.setter();
      sub_10002A400(&v183, v184);
    }

    dispatch thunk of LayoutView.isHidden.setter();
    sub_100007000(&v183);
  }

  else
  {
    sub_10002B894(&v181, &qword_100975610);
  }

  sub_100031660(v7 + v112[12], &v181, &qword_100975610);
  if (v182)
  {
    sub_100005A38(&v181, &v183);
    sub_10002A400(&v183, v184);
    Measurable.measuredSize(fitting:in:)();
    v143 = v114;
    v145 = v144;
    v171 = v144;
    v174 = v146;
    sub_10002A400((v7 + v112[6]), *(v7 + v112[6] + 24));
    dispatch thunk of LayoutView.frame.getter();
    v147 = CGRectGetMaxX(v229) - v145;
    v148 = (v7 + *(*&v133 + 56));
    sub_10002A400(v148, v148[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v150 = v149;
    v151 = v180;
    v152 = v178;
    v178(v17, v180);
    v176 = v147 - v150;
    v230.origin.x = v135;
    v230.origin.y = v177;
    v230.size.width = v143;
    v230.size.height = v134;
    CGRectGetMinY(v230);
    sub_10002A400(v148, v148[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v152(v17, v151);
    sub_10002A400(&v183, v184);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v183);
  }

  else
  {
    sub_10002B894(&v181, &qword_100975610);
  }

  return LayoutRect.init(representing:)();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100979010);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10002A400((v0 + *(v10 + 52)), *(v0 + *(v10 + 52) + 24));
  Measurable.measuredSize(fitting:in:)();
  v12 = v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10002849C(&unk_100980420);
  Conditional<>.value.getter();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v15 = v14;
  v16 = v23;
  v17 = *(v24 + 8);
  v24 += 8;
  v17(v5, v23);
  (*(v7 + 8))(v9, v6);
  sub_10002A400((v1 + *(v13 + 60)), *(v1 + *(v13 + 60) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v19 = v18;
  v17(v5, v16);
  sub_10002A400((v1 + *(v13 + 64)), *(v1 + *(v13 + 64) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v21 = v20;
  v17(v5, v16);
  return v12 + v15 + v19 + v21;
}

double sub_1007304B4(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10002849C(&qword_100979010);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = UITraitCollection.isSizeClassCompact.getter();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10002A400((a2 + v15[15]), *(a2 + v15[15] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_10002A400((a2 + v15[16]), *(a2 + v15[16] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v16(v12, v8);
    sub_10002A400((a2 + v15[17]), *(a2 + v15[17] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    v17 = v49;
    AnyDimension.value(in:rounded:)();
    v16(v12, v8);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v16(v12, v8);
    sub_10002849C(&unk_100980420);
    Conditional<>.value.getter();
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  CGSize.subtracting(insets:)();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = UITraitCollection.isSizeClassRegular.getter();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10002A400((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_10002A400(v27, v27[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(v27, v27[3]);
  if (dispatch thunk of LayoutView.hasContent.getter())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    AnyDimension.topMargin(from:in:)();
  }

  sub_10072D10C(&v52);
  if (v53)
  {
    sub_100005A38(&v52, v54);
    sub_10002A400(v54, v55);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10002A400((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    AnyDimension.topMargin(from:in:)();
    sub_10002A400((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*(v9 + 8))(v12, v8);
    sub_100007000(v54);
  }

  else
  {
    sub_10002B894(&v52, &qword_100975610);
  }

  v31 = v50;
  sub_10072D10C(v54);
  v32 = v55;
  sub_10002B894(v54, &qword_100975610);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = UITraitCollection.isSizeClassRegular.getter();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = UITraitCollection.prefersAccessibilityLayouts.getter(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      static Dimensions.defaultRoundingRule.getter();
      Conditional<>.value(in:rounded:)();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = UITraitCollection.isSizeClassCompact.getter();

  if (v38)
  {
    sub_10072D10C(v54);
    sub_10002B894(v54, &qword_100975610);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10002849C(&unk_100980420);
  v40 = v49;
  Conditional<>.value.getter();
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v41(v12, v8);
  static Dimensions.defaultRoundingRule.getter();
  Conditional<>.value(in:rounded:)();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  AnyDimension.topMargin(from:in:)();
  sub_10002A400((a2 + v39[9]), *(a2 + v39[9] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v41(v12, v8);
  sub_10002A400((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400((a2 + v39[15]), *(a2 + v39[15] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v41(v12, v8);
  sub_10002A400((a2 + v39[16]), *(a2 + v39[16] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v41(v12, v8);
  return a3;
}

uint64_t sub_100730FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100731058(uint64_t a1)
{
  *(a1 + 8) = sub_1007310C0(&qword_1009856D0);
  result = sub_1007310C0(&qword_100994748);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1007310C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10073112C()
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100154308(319, &qword_10098A3E0, &unk_10097E960);
    if (v1 <= 0x3F)
    {
      sub_100154428(319, &unk_10098A3C0);
      if (v2 <= 0x3F)
      {
        sub_100154428(319, &qword_10097E940);
        if (v3 <= 0x3F)
        {
          sub_100154308(319, &unk_10098A3D0, &unk_10097E950);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1007312A0()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1002D80C4();
      if (v2 <= 0x3F)
      {
        sub_100154428(319, &qword_1009842D0);
        if (v3 <= 0x3F)
        {
          sub_1007313B4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1007313B4()
{
  if (!qword_100994888)
  {
    sub_10002D1A8(&qword_100979010);
    v0 = type metadata accessor for Conditional();
    if (!v1)
    {
      atomic_store(v0, &qword_100994888);
    }
  }
}

BOOL sub_100731434(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *(a2 + 8);
  v4 = *(a2 + 9);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (v2 != 2)
  {
    return v4 != 2 && ((v4 ^ v2) & 1) == 0;
  }

  return v4 == 2;
}

uint64_t sub_100731498()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100994900);
  sub_1000056A8(v4, qword_100994900);
  if (qword_10096E2C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D17D8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100731670(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v57 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_10096E2C0 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v10, qword_1009D17C0);
  v22 = *(v11 + 16);
  v22(v19, v21, v10);
  (*(v11 + 56))(v19, 0, 1, v10);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v20] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons] = _swiftEmptyArrayStorage;
  v24 = &v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *&v5[v25] = [objc_allocWithZone(CALayer) init];
  v26 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096E2C8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v10, qword_1009D17D8);
  v22(v57, v27, v10);
  *&v5[v26] = DynamicTypeButton.__allocating_init(useCase:)();
  v28 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *&v5[v28] = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  v29 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_dividerView;
  *&v5[v29] = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 0;
  v30 = &v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  v32 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  *v31 = 0;
  v31[1] = 0;
  v58.receiver = v5;
  v58.super_class = v32;
  v33 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  v34 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  v35 = *&v33[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v36 = v33;
  [v35 setTextAlignment:1];
  v37 = v36;
  v38 = [v37 contentView];
  [v38 addSubview:*&v33[v34]];

  v39 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  v40 = *&v37[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  v41 = [v37 tintColor];

  if (v41)
  {
    v42 = [v41 CGColor];

    [v40 setBackgroundColor:v42];
    [*&v37[v39] setCornerRadius:20.0];
    v43 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton;
    v44 = *&v37[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton];
    v45._countAndFlagsBits = 0x465F54494D425553;
    v45._object = 0xEF4B434142444545;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    localizedString(_:comment:)(v45, v46);
    v47 = String._bridgeToObjectiveC()();

    [v44 setTitle:v47 forState:0];

    [*&v37[v43] addTarget:v37 action:"didTapSubmitButton:" forControlEvents:64];
    [*&v37[v43] setEnabled:0];
    v48 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_buttonContainer;
    [*&v37[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_buttonContainer] setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
    v49 = *&v37[v48];
    v50 = *&v37[v43];
    v51 = *&v49[OBJC_IVAR____TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer_submitButton];
    *&v49[OBJC_IVAR____TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer_submitButton] = v50;
    v52 = v50;
    v53 = v49;

    [v53 addSubview:v52];
    [v53 setNeedsLayout];

    v54 = [v37 contentView];
    [v54 addSubview:*&v37[v48]];

    v55 = [v37 contentView];
    [v55 addSubview:*&v37[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_dividerView]];
  }

  else
  {
    __break(1u);
  }
}

id sub_100731D48(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = v2;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v10 = result;
    if (result)
    {
LABEL_12:
      if (v10 >= 1)
      {

        v11 = 0;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v12 = *(v9 + 8 * v11 + 32);
          }

          v13 = v12;
          ++v11;
          v14 = [v1 contentView];
          [v14 addSubview:v13];

          [v13 addTarget:v1 action:"feedbackButtonSelectedWithFeedbackOptioButton:" forControlEvents:64];
        }

        while (v10 != v11);

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return result;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  return [v1 setNeedsLayout];
}

uint64_t sub_100731F38()
{
  v76 = type metadata accessor for LayoutRect();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v2 = *(v73 - 8);
  __chkstk_darwin(v73);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for FlankedVerticalLayout.Alignment();
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v79 = type metadata accessor for FlankedVerticalLayout();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for VerticalStackLayout.ExclusionCondition();
  v103 = *(v97 - 8);
  __chkstk_darwin(v97);
  v96 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for VerticalStackLayout.Child.Alignment();
  v11 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for VerticalStackLayout.Child();
  v85 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for VerticalStackLayout.Alignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for VerticalStackLayout();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  v119.receiver = v0;
  v119.super_class = v20;
  v81 = v20;
  objc_msgSendSuper2(&v119, "layoutSubviews");
  (*(v15 + 104))(v17, enum case for VerticalStackLayout.Alignment.center(_:), v14);
  v117 = type metadata accessor for ZeroDimension();
  v118 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v116);
  static ZeroDimension.zero.getter();
  v100 = v19;
  VerticalStackLayout.init(alignment:spacing:children:)();
  v21 = *(v0 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v21 >> 62)
  {
    goto LABEL_32;
  }

  v98 = v21 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v72 = v2;
    v23 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex;

    v24 = &protocol witness table for UIView;
    v71 = v6;
    v80 = v0;
    if (!i)
    {
      break;
    }

    v25 = 0;
    v70 = 0;
    v102 = (v0 + v23);
    v91 = v21 & 0xC000000000000001;
    v89 = enum case for VerticalStackLayout.Child.Alignment.center(_:);
    v88 = (v11 + 104);
    v87 = (v103 + 8);
    v86 = (v11 + 8);
    ++v85;
    v90 = v21;
    while (1)
    {
      if (v91)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v98 + 16))
        {
          goto LABEL_31;
        }

        v26 = *(v21 + 8 * v25 + 32);
      }

      v0 = v26;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v11 = i;
      v27 = v4;
      [v26 setLayoutMargins:{5.0, 10.0, 5.0, 10.0}];
      v28 = v24;
      v117 = type metadata accessor for FeedbackButton();
      v118 = v24;
      v116 = v0;
      v29 = qword_10096EEF8;
      v103 = v0;
      if (v29 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for StaticDimension();
      v31 = sub_1000056A8(v30, qword_100994900);
      v114 = v30;
      v115 = &protocol witness table for StaticDimension;
      v32 = sub_1000056E0(&v113);
      (*(*(v30 - 8) + 16))(v32, v31, v30);
      v33 = v94;
      v34 = v95;
      (*v88)(v94, v89, v95);
      v110 = _swiftEmptyArrayStorage;
      sub_100735EE4(&qword_100994A40, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_10002849C(&qword_100994A48);
      sub_100735F2C();
      v35 = v96;
      v36 = v97;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v37 = v92;
      static VerticalStackLayout.Child.make(forView:space:spaceMultiplier:alignment:excludeWhen:)();
      (*v87)(v35, v36);
      (*v86)(v33, v34);
      sub_100007000(&v113);
      sub_100007000(&v116);
      VerticalStackLayout.addChild(_:)();
      (*v85)(v37, v93);
      if ((*(v102 + 8) & 1) != 0 || v25 != *v102)
      {

        ++v25;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          v103 = v70;
          goto LABEL_19;
        }
      }

      else
      {

        ++v25;
        v70 = v103;
        i = v11;
        v4 = v27;
        v6 = v99;
        v0 = v101;
        v24 = v28;
        v21 = v90;
        if (v2 == v11)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v98 = v21 & 0xFFFFFFFFFFFFFF8;
  }

  v103 = 0;
  v6 = v99;
  v0 = v101;
LABEL_19:

  v38 = v84;
  v117 = v84;
  v118 = &protocol witness table for VerticalStackLayout;
  v39 = sub_1000056E0(&v116);
  (*(v83 + 16))(v39, v100, v38);
  v40 = v80;
  v41 = *&v80[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
  v114 = type metadata accessor for DynamicTypeLabel();
  v115 = v24;
  v113 = v41;
  v42 = v24;
  v43 = enum case for FlankedVerticalLayout.Alignment.center(_:);
  v44 = v0[13];
  v101 = v0 + 13;
  v44(v82, enum case for FlankedVerticalLayout.Alignment.center(_:), v6);
  v45 = qword_10096E6B0;
  v46 = v41;
  if (v45 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for StaticDimension();
  sub_1000056A8(v47, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v49 = v48;
  v50 = v73;
  v102 = *(v72 + 8);
  v102(v4, v73);
  v111 = &type metadata for CGFloat;
  v112 = &protocol witness table for CGFloat;
  v110 = v49;
  v51 = *&v40[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_buttonContainer];
  v52 = type metadata accessor for SubmitButtonContainer();
  v109 = v42;
  v108 = v52;
  v107 = v51;
  v44(v71, v43, v6);
  v53 = qword_10096E6C0;
  v54 = v51;
  if (v53 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v47, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v56 = v55;
  v102(v4, v50);
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v56;
  v57 = v77;
  FlankedVerticalLayout.init(sublayout:topView:topViewAlignment:topMargin:bottomView:bottomViewAlignment:bottomMargin:)();
  v58 = [v40 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v60 = v59;

  LayoutMarginsAware<>.layoutFrame.getter();
  v61 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_hasDivider;
  if (v40[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_hasDivider] == 1)
  {
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v102(v4, v50);
  }

  v62 = v74;
  FlankedVerticalLayout.placeChildren(relativeTo:in:)();
  (*(v75 + 8))(v62, v76);
  v63 = v103;
  if (v103)
  {
    v64 = *&v40[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
    v65 = v103;
    [v64 setAnchorPoint:{0.0, 0.0}];
    [v65 frame];
    CGRect.adding(outsets:)();
    [v64 setFrame:?];
  }

  if (v40[v61] == 1)
  {
    v66 = *&v40[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_dividerView];
    LayoutMarginsAware<>.layoutFrame.getter();
    MinX = CGRectGetMinX(v120);
    LayoutMarginsAware<>.layoutFrame.getter();
    v68 = CGRectGetMaxY(v121) - v60;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v66 setFrame:{MinX, v68, CGRectGetWidth(v122), v60}];
  }

  (*(v78 + 8))(v57, v79);
  return (*(v83 + 8))(v100, v84);
}

id sub_100732E68()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  [*&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  [*&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:0];
  v12 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v2 + 8 * v4 + 32);
      }

      v9 = v8;
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v4 != *v1)
      {
        v5 = [v8 tintColor];
        v6 = v9;
        v7 = v5;
      }

      else
      {
        v5 = [objc_opt_self() whiteColor];
        v6 = v5;
        v7 = v9;
      }

      [v9 setTitleColor:v5 forState:0];

      ++v4;
      if (v10 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_15:

  return [v12 setNeedsLayout];
}

id sub_100733094()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_41:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (1)
  {
    if (v3 == v4)
    {
      v2 = 0;
      goto LABEL_15;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v5 = *(v1 + v4 + 4);
    }

    v6 = v5;
    sub_100005744(0, &qword_100978360);
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      break;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_40;
    }
  }

  v2 = v4;
LABEL_15:

  v9 = *&v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
  [v9 removeFromSuperlayer];
  v10 = &v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v10 = v2;
  v10[8] = v3 == v4;
  if (v3 != v4)
  {
    v1 = [v23 contentView];
    v11 = [v1 layer];

    [v11 insertSublayer:v9 atIndex:0];
  }

  [*&v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton] setEnabled:v3 != v4];
  v12 = *&v23[v22];
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v17 = *(v12 + 8 * v14 + 32);
      }

      v18 = v17;
      v2 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ((v10[8] & 1) != 0 || v14 != *v10)
      {
        v15 = [v17 tintColor];
        v16 = v18;
        v1 = v15;
      }

      else
      {
        v15 = [objc_opt_self() whiteColor];
        v16 = v15;
        v1 = v18;
      }

      [v18 setTitleColor:v15 forState:0];

      ++v14;
      if (v2 == v13)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_31:

  result = [v23 setNeedsLayout];
  if ((v10[8] & 1) == 0)
  {
    v20 = *&v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
    if (v20)
    {
      v21 = *v10;

      v20(v21);

      return sub_10001F63C(v20);
    }
  }

  return result;
}

uint64_t sub_1007334E8()
{
  sub_10002849C(&qword_100994A30);
  sub_100735E40();
  return WritableStateLens<A>.updateValue(_:)();
}

uint64_t sub_100733560()
{
  sub_10002849C(&qword_100994A30);
  sub_100735E40();
  return WritableStateLens<A>.updateValue(_:)();
}

id sub_1007335D8()
{
  [*&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription] setText:0];
  sub_100731D48(_swiftEmptyArrayStorage);
  [*&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground] removeFromSuperlayer];
  v1 = &v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  *v1 = 0;
  v1[8] = 1;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton];
  [v2 setEnabled:0];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  v22 = v2;
  v23 = v0;
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v3 + 8 * v5 + 32);
      }

      v10 = v9;
      v11 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((v1[8] & 1) != 0 || v5 != *v1)
      {
        v6 = [v9 tintColor];
        v7 = v10;
        v8 = v6;
      }

      else
      {
        v6 = [objc_opt_self() whiteColor];
        v7 = v6;
        v8 = v10;
      }

      [v10 setTitleColor:v6 forState:{0, v22}];

      ++v5;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_15:

  [v23 setNeedsLayout];
  v12 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  *(v23 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v23;
  aBlock[4] = sub_100736BD8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D0B80;
  v15 = _Block_copy(aBlock);
  v16 = v23;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
  _Block_release(v15);
  [v16 setUserInteractionEnabled:(*(v23 + v12) & 1) == 0];
  if (*(v23 + v12) == 1)
  {
    v17 = 0x455454494D425553;
    v18 = 0xE900000000000044;
  }

  else
  {
    v17 = 0x465F54494D425553;
    v18 = 0xEF4B434142444545;
  }

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v17, v19);
  v20 = String._bridgeToObjectiveC()();

  [v22 setTitle:v20 forState:0];

  [v22 setEnabled:(*(v23 + v12) & 1) == 0];
  [v22 setNeedsLayout];
  v16[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_hasDivider] = 1;
  [*&v16[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:0];
  return [v16 setNeedsLayout];
}

uint64_t type metadata accessor for FeedbackButton()
{
  result = qword_1009949B0;
  if (!qword_1009949B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100733AEC()
{
  sub_1000798B8();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_100733E3C()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SubmitButtonContainer();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer_submitButton];
  if (v1)
  {
    v2 = v1;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v2 measurementsWithFitting:v0 in:{v3, v4}];
    v5 = v2;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v5 setFrame:?];
  }
}

id sub_100733F68(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100733FD4()
{
  v0 = Shelf.items.getter();
  if (*(v0 + 16))
  {
    sub_10002C0AC(v0 + 32, v3);

    sub_10002849C(&qword_100973D50);
    type metadata accessor for PersonalizationFeedbackRequest();
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
  }

  return 0;
}

double sub_10073406C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v83 = a4;
  v77 = a3;
  v104 = a2;
  v103 = a1;
  v85 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v85 - 8);
  __chkstk_darwin(v85);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for VerticalStackLayout.ExclusionCondition();
  v75 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for VerticalStackLayout.Child.Alignment();
  v74 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for VerticalStackLayout.Child();
  v73 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for VerticalStackLayout.Alignment();
  v12 = *(v87 - 1);
  __chkstk_darwin(v87);
  v88 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for VerticalStackLayout();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v105 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LabelPlaceholderCompatibility();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096E2C0 != -1)
  {
    swift_once();
  }

  v82 = v8;
  v84 = v6;
  v20 = type metadata accessor for FontUseCase();
  sub_1000056A8(v20, qword_1009D17C0);
  v21 = [a5 traitCollection];
  v22 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v23 = type metadata accessor for Feature();
  v113 = v23;
  v99 = sub_100735EE4(&qword_100972E50, &type metadata accessor for Feature);
  v114 = v99;
  v24 = sub_1000056E0(&v112);
  v25 = *(v23 - 8);
  v26 = *(v25 + 104);
  v98 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v100 = v23;
  v97 = v26;
  v96 = v25 + 104;
  v26(v24);
  v27 = v19;
  v28 = v22;
  isFeatureEnabled(_:)();
  sub_100007000(&v112);

  v79 = v28;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v29 = *(v16 + 8);
  v101 = v18;
  v104 = v15;
  v103 = v16 + 8;
  v95 = v29;
  v29(v18, v15);
  if (qword_10096E2C8 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v20, qword_1009D17D8);
  v86 = a5;
  v31 = [a5 traitCollection];
  v76 = v30;
  v78 = v27;
  v102 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v12 + 104))(v88, enum case for VerticalStackLayout.Alignment.center(_:), v87);
  v110 = type metadata accessor for ZeroDimension();
  v111 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v109);
  static ZeroDimension.zero.getter();
  VerticalStackLayout.init(alignment:spacing:children:)();
  v32 = *(v77 + 16);
  if (v32)
  {
    LODWORD(v88) = enum case for VerticalStackLayout.Child.Alignment.left(_:);
    v87 = (v74 + 104);
    v33 = (v75 + 8);
    v34 = (v74 + 8);
    v35 = (v73 + 8);
    v36 = v77 + 40;
    v37 = v91;
    do
    {
      v38 = v100;
      v110 = v100;
      v111 = v99;
      v39 = sub_1000056E0(&v109);
      v97(v39, v98, v38);

      v40 = v102;
      isFeatureEnabled(_:)();
      sub_100007000(&v109);
      v41 = v101;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v95(v41, v104);
      v42 = v110;
      v43 = v111;
      v44 = sub_10002A400(&v109, v110);
      v108[3] = v42;
      v108[4] = v43[1];
      v45 = sub_1000056E0(v108);
      (*(*(v42 - 8) + 16))(v45, v44, v42);
      if (qword_10096EEF8 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for StaticDimension();
      v47 = sub_1000056A8(v46, qword_100994900);
      v107[3] = v46;
      v107[4] = &protocol witness table for StaticDimension;
      v48 = sub_1000056E0(v107);
      (*(*(v46 - 8) + 16))(v48, v47, v46);
      v49 = v92;
      (*v87)(v37, v88, v92);
      v106 = _swiftEmptyArrayStorage;
      sub_100735EE4(&qword_100994A40, &type metadata accessor for VerticalStackLayout.ExclusionCondition);
      sub_10002849C(&qword_100994A48);
      sub_100735F2C();
      v50 = v93;
      v51 = v94;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v52 = v89;
      static VerticalStackLayout.Child.make(forView:space:spaceMultiplier:alignment:excludeWhen:)();
      (*v33)(v50, v51);
      (*v34)(v37, v49);
      sub_100007000(v107);
      sub_100007000(v108);
      sub_100007000(&v109);
      VerticalStackLayout.addChild(_:)();
      (*v35)(v52, v90);
      v36 += 16;
      --v32;
    }

    while (v32);
  }

  v53 = v86;
  [v86 pageMarginInsets];
  v94 = v54;
  CGSize.subtracting(insets:)();
  sub_10002A400(&v112, v113);
  Measurable.measuredSize(fitting:in:)();
  v55 = v81;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v56 = [v53 traitCollection];
  v57 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v58._countAndFlagsBits = 0x465F54494D425553;
  v58._object = 0xEF4B434142444545;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  localizedString(_:comment:)(v58, v59);
  v60 = v100;
  v110 = v100;
  v111 = v99;
  v61 = sub_1000056E0(&v109);
  v97(v61, v98, v60);
  v62 = v57;
  isFeatureEnabled(_:)();
  sub_100007000(&v109);
  v63 = v101;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v95(v63, v104);
  sub_10002A400(&v109, v110);
  Measurable.measuredSize(fitting:in:)();
  CGSize.adding(outsets:)();
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v64 = type metadata accessor for StaticDimension();
  sub_1000056A8(v64, qword_1009D2430);
  v65 = v82;
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v66 = *(v84 + 8);
  v67 = v85;
  v66(v65, v85);
  if (qword_10096E6C0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v64, qword_1009D2460);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v66(v65, v67);
  if (v83)
  {
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v66(v65, v67);
    v68 = [v53 traitCollection];
    static Separator.thickness(compatibleWith:)();
  }

  CGSize.adding(outsets:)();
  v70 = v69;

  (*(v80 + 8))(v105, v55);
  sub_100007000(&v109);
  sub_100007000(&v112);
  return v70;
}

uint64_t sub_100734F98(uint64_t a1, void *a2)
{
  result = sub_100733FD4();
  if (!result)
  {
    return result;
  }

  v4 = PersonalizationFeedbackRequest.description.getter();
  v6 = v5;
  v7 = PersonalizationFeedbackRequest.options.getter();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

LABEL_16:
    v17 = PersonalizationFeedbackRequest.hasDivider.getter();
    sub_10073406C(v4, v6, _swiftEmptyArrayStorage, v17 & 1, a2);
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  result = sub_100144128(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v18 = v4;
    v10 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v11 = PersonalizationFeedbackRequestOption.title.getter();
      v13 = v12;

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (*&v15 >= *&v14 >> 1)
      {
        sub_100144128((*&v14 > 1uLL), *&v15 + 1, 1);
      }

      ++v10;
      *&_swiftEmptyArrayStorage[2] = *&v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * *&v15];
      *(v16 + 4) = v11;
      *(v16 + 5) = v13;
    }

    while (v9 != v10);

    v4 = v18;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100735188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v81 = a3;
  v82 = a4;
  v88 = a2;
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v90 = v77 - v8;
  v9 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v9 - 8);
  v11 = v77 - v10;
  v12 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v12 - 8);
  v80 = v77 - v13;
  v86 = sub_10002849C(&qword_100994A30);
  v14 = *(v86 - 8);
  v15 = v14[8];
  __chkstk_darwin(v86);
  __chkstk_darwin(v16);
  v87 = v77 - v17;
  result = sub_100733FD4();
  if (result)
  {
    v77[1] = v15;
    v78 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v85 = v5;
    v19 = *&v5[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription];
    v20 = result;
    v21 = v19;
    PersonalizationFeedbackRequest.description.getter();
    v22 = String._bridgeToObjectiveC()();

    [v21 setText:v22];

    v84 = v20;
    v23 = PersonalizationFeedbackRequest.options.getter();
    v24 = v23;
    if (v23 >> 62)
    {
      goto LABEL_41;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v83 = v14;
      v79 = a5;
      if (i)
      {
        aBlock = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (i < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v89 = v24 & 0xC000000000000001;
        do
        {
          if (v89)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v27 = *(v24 + 8 * v26 + 32);
          }

          v28 = PersonalizationFeedbackRequestOption.action.getter();
          v29 = type metadata accessor for FeedbackButton();
          v30 = objc_allocWithZone(v29);
          if (v28)
          {
            v92 = v28;
            type metadata accessor for Action();
            v91 = v27;
            type metadata accessor for BaseObjectGraph();
            sub_100735EE4(&qword_100992FB0, &type metadata accessor for Action);
            ComponentModel.pairedWith<A>(objectGraph:)();
            v31 = 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = sub_10002849C(&unk_10097B3D0);
          (*(*(v32 - 8) + 56))(v11, v31, 1, v32);
          sub_100735CD8(v11, v30 + qword_100994998);
          v99.receiver = v30;
          v99.super_class = v29;
          v33 = objc_msgSendSuper2(&v99, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

          v34 = qword_10096E2C8;
          v35 = v33;
          if (v34 != -1)
          {
            swift_once();
          }

          ++v26;
          v36 = type metadata accessor for FontUseCase();
          v37 = sub_1000056A8(v36, qword_1009D17D8);
          v38 = *(v36 - 8);
          v39 = v90;
          (*(v38 + 16))(v90, v37, v36);
          (*(v38 + 56))(v39, 0, 1, v36);
          dispatch thunk of DynamicTypeButton.fontUseCase.setter();

          PersonalizationFeedbackRequestOption.title.getter();
          v40 = String._bridgeToObjectiveC()();

          [v35 setTitle:v40 forState:0];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (i != v26);

        v41 = aBlock;
        v14 = v83;
      }

      else
      {

        v41 = _swiftEmptyArrayStorage;
      }

      v42 = v85;
      sub_100731D48(v41);
      swift_getObjectType();
      dispatch thunk of ComponentContainerDelegate.containerState.getter();
      v43 = v87;
      WritableStateLens.init(_:)();
      v91 = v14[2];
      v44 = v78;
      v45 = v43;
      v46 = v86;
      (v91)(v78, v45, v86);
      v11 = ((*(v14 + 80) + 16) & ~*(v14 + 80));
      v47 = swift_allocObject();
      v48 = v14[4];
      v14 += 4;
      a5 = v48;
      (v48)(&v11[v47], v44, v46);
      v49 = &v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      v50 = *&v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption];
      *v49 = sub_100735D48;
      v49[1] = v47;
      sub_10001F63C(v50);
      (v91)(v44, v87, v46);
      v51 = swift_allocObject();
      (v48)(&v11[v51], v44, v46);
      v52 = &v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      v53 = *&v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
      *v52 = sub_100735DC4;
      v52[1] = v51;
      sub_10001F63C(v53);
      v54 = PersonalizationFeedbackRequest.hasDivider.getter();
      v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_hasDivider] = v54 & 1;
      [*&v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_dividerView] setHidden:(v54 & 1) == 0];
      [v42 setNeedsLayout];
      [v79 pageMarginInsets];
      [v42 setLayoutMargins:?];
      v90 = sub_100735E40();
      WritableStateLens<A>.currentValue.getter();
      v55 = aBlock;
      v56 = v94;
      v57 = *&v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground];
      [v57 removeFromSuperlayer];
      v58 = &v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex];
      *v58 = v55;
      v58[8] = v56;
      if ((v56 & 1) == 0)
      {
        v59 = [v42 contentView];
        v60 = [v59 layer];

        [v60 insertSublayer:v57 atIndex:0];
      }

      v91 = *&v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton];
      [v91 setEnabled:v56 ^ 1u];
      v61 = *&v42[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
      v24 = v61 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v24)
      {
        break;
      }

      v62 = 0;
      while (1)
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v62 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v64 = *(v61 + 8 * v62 + 32);
        }

        v65 = v64;
        v11 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        if ((v58[8] & 1) != 0 || v62 != *v58)
        {
          v63 = [v64 tintColor];
          a5 = v65;
          v14 = v63;
        }

        else
        {
          v63 = [objc_opt_self() whiteColor];
          a5 = v63;
          v14 = v65;
        }

        [v65 setTitleColor:v63 forState:0];

        ++v62;
        if (v11 == v24)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

LABEL_34:

    v66 = v85;
    [v85 setNeedsLayout];
    WritableStateLens<A>.currentValue.getter();
    v67 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted;
    v66[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted] = BYTE1(v94) & 1;
    v68 = objc_opt_self();
    v69 = swift_allocObject();
    *(v69 + 16) = v66;
    v97 = sub_100735E94;
    v98 = v69;
    aBlock = _NSConcreteStackBlock;
    v94 = 1107296256;
    v95 = sub_100007A08;
    v96 = &unk_1008D0B30;
    v70 = _Block_copy(&aBlock);
    v71 = v66;

    [v68 animateWithDuration:4 delay:v70 options:0 animations:0.2 completion:0.0];
    _Block_release(v70);
    [v71 setUserInteractionEnabled:(v66[v67] & 1) == 0];
    if (v66[v67])
    {
      v72 = 0x455454494D425553;
      v73 = 0xE900000000000044;
    }

    else
    {
      v72 = 0x465F54494D425553;
      v73 = 0xEF4B434142444545;
    }

    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v72, v74);
    v75 = String._bridgeToObjectiveC()();

    v76 = v91;
    [v91 setTitle:v75 forState:0];

    [v76 setEnabled:(v66[v67] & 1) == 0];
    [v76 setNeedsLayout];
    [v71 setNeedsLayout];

    return v83[1](v87, v86);
  }

  return result;
}

uint64_t sub_100735CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097B3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100735D48()
{
  sub_10002849C(&qword_100994A30);

  return sub_1007334E8();
}

uint64_t sub_100735DC4()
{
  sub_10002849C(&qword_100994A30);

  return sub_100733560();
}

unint64_t sub_100735E40()
{
  result = qword_100994A38;
  if (!qword_100994A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A38);
  }

  return result;
}

id sub_100735E94()
{
  v1 = *(v0 + 16);
  v2 = 0.6;
  if (!v1[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted])
  {
    v2 = 1.0;
  }

  return [v1 setAlpha:v2];
}

uint64_t sub_100735ED4(uint64_t result)
{
  *result = *(v1 + 16);
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100735EE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100735F2C()
{
  result = qword_100994A50;
  if (!qword_100994A50)
  {
    sub_10002D1A8(&qword_100994A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A50);
  }

  return result;
}

void sub_100735F90()
{
  v1 = v0;
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackDescription;
  if (qword_10096E2C0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v2, qword_1009D17C0);
  v14 = *(v3 + 16);
  v14(v11, v13, v2);
  (*(v3 + 56))(v11, 0, 1, v2);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v1 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons) = _swiftEmptyArrayStorage;
  v16 = v1 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedOptionBackground;
  *(v1 + v17) = [objc_allocWithZone(CALayer) init];
  v18 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096E2C8 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v2, qword_1009D17D8);
  v14(v25, v19, v2);
  *(v1 + v18) = DynamicTypeButton.__allocating_init(useCase:)();
  v20 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_buttonContainer;
  *(v1 + v20) = [objc_allocWithZone(type metadata accessor for SubmitButtonContainer()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_hasDivider) = 1;
  v21 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_dividerView;
  *(v1 + v21) = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v1 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted) = 0;
  v22 = (v1 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectFeedbackOption);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton);
  *v23 = 0;
  v23[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100736394()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = aBlock - v2;
  v4 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v4 - 8);
  v6 = aBlock - v5;
  v7 = sub_10002849C(&unk_10097B3D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - v9;
  if (v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex + 8])
  {
    return;
  }

  v11 = *&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_selectedIndex];
  v12 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v13 = *&v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (v13 >> 62)
  {
    if (v11 >= _CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v14 = *&v0[v12];
  if ((v14 & 0xC000000000000001) != 0)
  {

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_8;
  }

  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v11 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v15 = *(v14 + 8 * v11 + 32);
LABEL_8:
  sub_100079A28(v15 + qword_100994998, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_10097B3F0);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    ObjectGraphPair.objectGraph.getter();
    v16 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();

    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v3, 1, v16) == 1)
    {
      (*(v8 + 8))(v10, v7);
      sub_10002B894(v3, &unk_100972A00);
    }

    else
    {
      ObjectGraphPair.value.getter();
      v18 = ObjectGraphPair.objectGraph.getter();
      sub_1005F9AF4(aBlock[0], 1, v18, v3);

      (*(v8 + 8))(v10, v7);

      (*(v17 + 8))(v3, v16);
    }
  }

  v19 = OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted;
  v0[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_isSubmitted] = 1;
  v20 = objc_opt_self();
  v21 = swift_allocObject();
  *(v21 + 16) = v0;
  aBlock[4] = sub_100736BD8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D0BD0;
  v22 = _Block_copy(aBlock);
  v23 = v0;

  [v20 animateWithDuration:4 delay:v22 options:0 animations:0.2 completion:0.0];
  _Block_release(v22);
  [v23 setUserInteractionEnabled:(v0[v19] & 1) == 0];
  if (v0[v19] == 1)
  {
    v24 = 0x455454494D425553;
    v25 = 0xE900000000000044;
  }

  else
  {
    v24 = 0x465F54494D425553;
    v25 = 0xEF4B434142444545;
  }

  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v24, v26);
  v27 = *&v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_submitButton];
  v28 = String._bridgeToObjectiveC()();

  [v27 setTitle:v28 forState:0];

  [v27 setEnabled:(v0[v19] & 1) == 0];
  [v27 setNeedsLayout];
  v29 = *&v23[OBJC_IVAR____TtC8AppStore41PersonalizationFeedbackCollectionViewCell_didSelectSubmitButton];
  if (v29)
  {

    v29(1);
    sub_10001F63C(v29);
  }
}

double sub_100736954()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStoreP33_5C0EFAE2C001F32C54795036AF9AFFE421SubmitButtonContainer_submitButton];
  if (!v1)
  {
    return JUMeasurementsZero[0];
  }

  v2 = v1;
  [v0 layoutMargins];
  CGSize.subtracting(insets:)();
  [v2 measurementsWithFitting:v0 in:?];
  [v0 layoutMargins];
  CGSize.adding(outsets:)();
  v4 = v3;
  [v0 layoutMargins];
  [v0 layoutMargins];

  return v4;
}

uint64_t initializeBufferWithCopyOfBuffer for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationFeedbackCollectionViewCell.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_100736B24()
{
  result = qword_100994A58;
  if (!qword_100994A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A58);
  }

  return result;
}

unint64_t sub_100736B7C()
{
  result = qword_100994A60;
  if (!qword_100994A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A60);
  }

  return result;
}

id sub_100736BE4()
{
  v1 = ASKBuildTypeGetCurrent();
  sub_10002849C(&qword_100994A68);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B1E00;
  v3 = ASKBuildTypeDebug;
  v4 = ASKBuildTypeConvergence;
  *(v2 + 32) = ASKBuildTypeDebug;
  *(v2 + 40) = v4;
  v5 = ASKBuildTypeInternal;
  *(v2 + 48) = ASKBuildTypeInternal;
  type metadata accessor for BuildType(0);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  IsAnyOf = ASKBuildTypeIsAnyOf();

  if (IsAnyOf)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v0 objectForKey:v11];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      sub_100194454();
      if (swift_dynamicCast())
      {
        v13 = [v15 BOOLValue];

        return v13;
      }
    }

    else
    {
      sub_10002B894(v18, &unk_1009711D0);
    }
  }

  return 0;
}

uint64_t sub_100736DBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100982AB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  sub_100031660(a1, &v12 - v5, &unk_100982AB0);
  v7 = type metadata accessor for StoreTab.Identifier();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &unk_100982AB0);
    v9 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v9];
  }

  else
  {
    StoreTab.Identifier.rawValue.getter();
    (*(v8 + 8))(v6, v7);
    v10 = String._bridgeToObjectiveC()();

    v9 = String._bridgeToObjectiveC()();
    [v2 setObject:v10 forKey:v9];
  }

  return sub_10002B894(a1, &unk_100982AB0);
}

uint64_t sub_100736FA4@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return StoreTab.Identifier.init(rawValue:)();
    }
  }

  else
  {
    sub_10002B894(v9, &unk_1009711D0);
  }

  v6 = type metadata accessor for StoreTab.Identifier();
  return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
}

uint64_t sub_1007370DC@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_10002B894(v11, &unk_1009711D0);
    goto LABEL_8;
  }

  sub_100194454();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v5 = 1;
    goto LABEL_9;
  }

  [v8 doubleValue];
  Date.init(timeIntervalSinceReferenceDate:)();

  v5 = 0;
LABEL_9:
  v6 = type metadata accessor for Date();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

uint64_t sub_100737234()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100194454();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0);
    return 0;
  }
}

uint64_t sub_10073732C@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002B894(v11, &unk_1009711D0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100737488()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100194454();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0);
    return 0;
  }
}

uint64_t sub_100737580@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002B894(v11, &unk_1009711D0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_1007376DC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100194454();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0);
    return 0;
  }
}

uint64_t sub_1007377D4@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002B894(v11, &unk_1009711D0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_100737930()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100194454();
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0);
    return 0;
  }
}

uint64_t sub_100737A28@<X0>(uint64_t a1@<X8>)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002B894(v11, &unk_1009711D0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

id sub_100737B84()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100194454();
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_10002B894(v8, &unk_1009711D0);
  }

  return 0;
}

uint64_t sub_100737C94()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0);
  }

  return 1;
}

uint64_t sub_100737D84()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_10002B894(v7, &unk_1009711D0);
    return 0;
  }

  return result;
}

uint64_t sub_100737E74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, v6, &qword_100979710);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100979710);
    v11 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v11];

    return sub_10002B894(a1, &qword_100979710);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    Date.timeIntervalSinceReferenceDate.getter();
    v14 = v13;
    v15 = String._bridgeToObjectiveC()();
    [v2 setDouble:v15 forKey:v14];

    sub_10002B894(a1, &qword_100979710);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_1007380C4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100979718);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for TimeZone();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031660(a1, v6, &qword_100979718);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100979718);
    v11 = String._bridgeToObjectiveC()();
    [v2 removeObjectForKey:v11];

    return sub_10002B894(a1, &qword_100979718);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    TimeZone.identifier.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = String._bridgeToObjectiveC()();
    [v2 setObject:v13 forKey:v14];

    sub_10002B894(a1, &qword_100979718);
    return (*(v8 + 8))(v10, v7);
  }
}

unint64_t sub_100738334()
{
  result = qword_100994A70;
  if (!qword_100994A70)
  {
    type metadata accessor for GuidedSearchTokenToggleAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A70);
  }

  return result;
}

uint64_t sub_10073838C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for SearchActionCalculator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_100624370(Strong);

  v24 = v10;
  sub_100065AF0();
  v11 = v10;
  sub_10002849C(&qword_100991520);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1007386A4(&v21);
LABEL_6:
    sub_10002849C(&qword_1009764A0);
    sub_10073870C();
    swift_allocError();
    v14 = Promise.__allocating_init(error:)();

    return v14;
  }

  sub_100005A38(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_10002A400(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_100007000(v25);
    goto LABEL_6;
  }

  sub_10002849C(&qword_1009764A0);
  v14 = Promise.__allocating_init()();
  v15 = type metadata accessor for GuidedSearchPresenter();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  SearchActionCalculator.init(optimizationTermProviding:)();
  v16 = SearchActionCalculator.searchAction(modifying:with:)();
  type metadata accessor for MetricsActivity();
  v17 = static MetricsActivity.current.getter();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  dispatch thunk of MetricsActivity.performingContext(for:body:)();

  (*(v6 + 8))(v8, v5);
  sub_100007000(v25);
  return v14;
}

uint64_t sub_1007386A4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100991528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10073870C()
{
  result = qword_100994A78;
  if (!qword_100994A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A78);
  }

  return result;
}

uint64_t sub_100738760()
{
  sub_1005D076C(*(v0 + 24), 1, *(v0 + 32));
  Promise.pipe(to:)();
}

unint64_t sub_1007387C0()
{
  result = qword_100994A80;
  if (!qword_100994A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100994A80);
  }

  return result;
}

void sub_100738834(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_currentLinkView;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_currentLinkView];
  *&v1[OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_currentLinkView] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 setHidden:1];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v16 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    [v6 setHidden:0];
    v7 = [v1 contentView];
    sub_100028004();
    LayoutMarginsAware<>.layoutFrame.getter();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [v6 setFrame:{v9, v11, v13, v15}];
  }

LABEL_4:
}

id sub_100738968(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    swift_unknownObjectWeakInit();
    a2(0);
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v7 setHidden:1];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong addSubview:v7];
    }

    swift_unknownObjectWeakDestroy();
    v10 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

id sub_100738A4C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___standardLinkView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell____lazy_storage___presentationLinkView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_currentLinkView] = 0;
  v10 = OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v12;
}

void sub_100738C74()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore22LinkCollectionViewCell_currentLinkView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    sub_100028004();
    LayoutMarginsAware<>.layoutFrame.getter();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t type metadata accessor for LinkCollectionViewCell()
{
  result = qword_100994AC8;
  if (!qword_100994AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100738EA0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100738F40()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_1009951C0, &type metadata accessor for SearchFocusDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_1009951C8, &type metadata accessor for SearchFocusDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_1009951D0);
  sub_10073C310(&qword_1009951D8, &qword_1009951D0);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_1009951E0, &type metadata accessor for SearchFocusDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_1009951E8, &type metadata accessor for SearchFocusDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_100739444()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_1009951A0, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_100971E88, &type metadata accessor for ReviewsDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_1009951A8);
  sub_10073C310(&qword_1009951B0, &qword_1009951A8);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100971E80, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_1009951B8, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_100739948()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_100995190, &type metadata accessor for ProductDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_100977F30, &type metadata accessor for ProductDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_1009852A0);
  sub_10073C310(&qword_1009852B8, &qword_1009852A0);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100977F28, &type metadata accessor for ProductDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_100995198, &type metadata accessor for ProductDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_100739E4C()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_100995170, &type metadata accessor for SearchResultsDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_100995178, &type metadata accessor for SearchResultsDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_10097C0B8);
  sub_10073C310(&qword_10097C0C0, &qword_10097C0B8);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100995180, &type metadata accessor for SearchResultsDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_100995188, &type metadata accessor for SearchResultsDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_10073A350()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_100995138, &type metadata accessor for TodayDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_10098C3B0, &type metadata accessor for TodayDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_10097AB10);
  sub_10073C310(&qword_10097AB18, &qword_10097AB10);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100995140, &type metadata accessor for TodayDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_100995148, &type metadata accessor for TodayDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_10073A854()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_100995150, &type metadata accessor for ArcadeDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_100995158, &type metadata accessor for ArcadeDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_100985210);
  sub_10073C310(&qword_100985228, &qword_100985210);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100995160, &type metadata accessor for ArcadeDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_100995168, &type metadata accessor for ArcadeDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_10073AD58()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_1009950E8, &type metadata accessor for GenericDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_10097F2C0, &type metadata accessor for GenericDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_1009950F0);
  sub_10073C310(&qword_1009950F8, &qword_1009950F0);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100995100, &type metadata accessor for GenericDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_100995108, &type metadata accessor for GenericDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t sub_10073B25C()
{
  v1 = v0;
  sub_10002849C(&qword_1009717B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007C6680;
  sub_10073C364(&qword_100995110, &type metadata accessor for SearchLandingDiffablePagePresenter);
  type metadata accessor for OnDemandShelfFetchingCollectionElementsObserver();
  swift_allocObject();
  swift_retain_n();
  *(v2 + 32) = OnDemandShelfFetchingCollectionElementsObserver.init(presenter:)();
  *(v2 + 40) = &protocol witness table for OnDemandShelfFetchingCollectionElementsObserver;
  type metadata accessor for GenericPageCollectionElementsObserver();
  v3 = swift_allocObject();
  v4 = sub_10073C364(&qword_10097F4E0, type metadata accessor for GenericPageCollectionElementsObserver);
  *(v2 + 48) = v3;
  *(v2 + 56) = v4;
  sub_10073C364(&qword_100994720, &type metadata accessor for SearchLandingDiffablePagePresenter);
  v5 = *&v1[qword_1009CF410];

  v6 = v1;
  v7 = v5;
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ComponentContainerCollectionElementsObserver();
  swift_allocObject();
  v8 = v6;
  *(v2 + 64) = ComponentContainerCollectionElementsObserver.init(presenter:parent:scrollObserver:impressionsCalculator:)();
  *(v2 + 72) = &protocol witness table for ComponentContainerCollectionElementsObserver;
  sub_10002849C(&qword_100995118);
  sub_10073C310(&qword_100995120, &qword_100995118);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();
  type metadata accessor for ImpressionsCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 80) = ImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:)();
  *(v2 + 88) = &protocol witness table for ImpressionsCollectionElementsObserver;
  type metadata accessor for VideoRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 96) = VideoRegistrationCollectionElementsObserver.init()();
  *(v2 + 104) = &protocol witness table for VideoRegistrationCollectionElementsObserver;
  type metadata accessor for PlayableViewRegistrationCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 112) = PlayableViewRegistrationCollectionElementsObserver.init()();
  *(v2 + 120) = &protocol witness table for PlayableViewRegistrationCollectionElementsObserver;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  type metadata accessor for ArtworkLoadingCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 128) = ArtworkLoadingCollectionElementsObserver.init(componentTypeMappingProvider:)();
  *(v2 + 136) = &protocol witness table for ArtworkLoadingCollectionElementsObserver;
  v9 = *&v8[qword_10097F2E8];
  v10 = sub_10073C364(&qword_10097F4E8, type metadata accessor for TodayCardCollectionElementsObserver);
  *(v2 + 144) = v9;
  *(v2 + 152) = v10;
  v11 = *&v8[qword_10097F2E0];
  v12 = sub_10073C364(&unk_10097F4F0, type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver);
  *(v2 + 160) = v11;
  *(v2 + 168) = v12;
  sub_10073C364(&qword_100995128, &type metadata accessor for SearchLandingDiffablePagePresenter);
  type metadata accessor for SelectionHandlerCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 176) = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  *(v2 + 184) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  *(v2 + 192) = *&v8[qword_10097F2D8];
  *(v2 + 200) = &protocol witness table for VisibleShelfSupplementaryCollectionElementsObserver;
  type metadata accessor for AutomationCollectionElementsObserver();
  swift_allocObject();

  *(v2 + 208) = AutomationCollectionElementsObserver.init()();
  *(v2 + 216) = &protocol witness table for AutomationCollectionElementsObserver;
  sub_10073C364(&qword_100995130, &type metadata accessor for SearchLandingDiffablePagePresenter);
  type metadata accessor for InlineUnifiedMessageCollectionElementsObserver();
  swift_allocObject();
  *(v2 + 224) = InlineUnifiedMessageCollectionElementsObserver.init(presenter:parentViewController:)();
  *(v2 + 232) = &protocol witness table for InlineUnifiedMessageCollectionElementsObserver;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

void sub_10073B760(double a1)
{
  v3 = type metadata accessor for AttributeContainer();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v35 - v8;
  v10 = sub_10002849C(&qword_100975048);
  __chkstk_darwin(v10 - 8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v16 = type metadata accessor for AttributedString();
  __chkstk_darwin(v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = qword_1009CE058;
  if (*&v1[qword_1009CE058] != a1)
  {
    v44 = v4;
    v45 = v3;
    v21 = v1;
    v22 = v17;
    v23 = [v1 navigationItem];
    UINavigationItem.attributedTitle.getter();

    if ((*(v22 + 48))(v15, 1, v16) == 1)
    {
      sub_10002B894(v15, &qword_100975048);
    }

    else
    {
      v43 = v22;
      (*(v22 + 32))(v19, v15, v16);
      v41 = v21;
      v42 = [v21 navigationItem];
      v40 = sub_10002849C(&unk_100973960);
      inited = swift_initStackObject();
      v39 = xmmword_1007B10D0;
      *(inited + 16) = xmmword_1007B10D0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v25 = objc_opt_self();
      v37 = v25;
      v38 = NSForegroundColorAttributeName;
      v26 = [v25 labelColor];
      v27 = [v26 colorWithAlphaComponent:a1];

      v36 = sub_100028BB8();
      *(inited + 64) = v36;
      *(inited + 40) = v27;
      sub_100397150(inited);
      swift_setDeallocating();
      sub_10002B894(inited + 32, &unk_100970EC0);
      AttributeContainer.init(_:)();
      v28 = swift_initStackObject();
      *(v28 + 16) = v39;
      *(v28 + 32) = v38;
      v29 = [v37 labelColor];
      v30 = [v29 colorWithAlphaComponent:*&v41[v20]];

      *(v28 + 64) = v36;
      *(v28 + 40) = v30;
      sub_100397150(v28);
      swift_setDeallocating();
      sub_10002B894(v28 + 32, &unk_100970EC0);
      AttributeContainer.init(_:)();
      sub_10073C364(&unk_100984030, &type metadata accessor for AttributedString);
      AttributedStringProtocol.replacingAttributes(_:with:)();
      v31 = *(v44 + 8);
      v32 = v45;
      v31(v6, v45);
      v31(v9, v32);
      v33 = v43;
      (*(v43 + 56))(v12, 0, 1, v16);
      v34 = v42;
      UINavigationItem.attributedTitle.setter();

      (*(v33 + 8))(v19, v16);
    }
  }
}

uint64_t sub_10073BCC0()
{
  v1 = qword_100974F90;
  if (*(v0 + qword_100974F90))
  {
    v2 = *(v0 + qword_100974F90);
  }

  else
  {
    type metadata accessor for UberedPageScrollObserver();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 80) = 0;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 32) = 0u;
    *(v2 + 88) = 1;
    *(v2 + 24) = &off_1008B4DB8;
    swift_unknownObjectWeakAssign();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = *(v2 + 72);
    *(v2 + 72) = sub_10073C308;
    *(v2 + 80) = v3;

    sub_10001F63C(v4);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10073BDD4()
{
  v1 = qword_100974FA0;
  if (*(v0 + qword_100974FA0))
  {
    v2 = *(v0 + qword_100974FA0);
  }

  else
  {
    sub_10073BCC0();
    type metadata accessor for UberedCollectionElementsObserver();
    v2 = swift_allocObject();
    swift_weakInit();
    *(v2 + 24) = 0;
    swift_weakAssign();

    *(v0 + v1) = v2;
  }

  return v2;
}

char *sub_10073BE78(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009D3898) = 0;
  *(v2 + qword_1009CE058) = 0x3FF0000000000000;
  *(v2 + qword_100974F90) = 0;
  *(v2 + qword_100974F98) = 0x4034000000000000;
  *(v2 + qword_1009CE060) = 0;
  *(v2 + qword_100974FA0) = 0;

  v5 = sub_1003BBCA8(a1, a2);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NavigationBarVisibilityScrollObserver();
  v7 = swift_allocObject();
  *(v7 + 32) = xmmword_1007CC620;
  *(v7 + 16) = sub_10073C300;
  *(v7 + 24) = v6;
  v8 = qword_1009D3898;
  *&v5[qword_1009D3898] = v7;
  v9 = v5;

  v10 = *&v9[qword_1009CF410];

  if (*&v5[v8])
  {
    sub_10073C364(&qword_1009851D0, type metadata accessor for NavigationBarVisibilityScrollObserver);
  }

  CompoundScrollObserver.addChild(_:)();

  return v9;
}

void sub_10073C034(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1009CE058);
    *(Strong + qword_1009CE058) = a1;
    sub_10073B760(v4);
  }
}

uint64_t sub_10073C0A8()
{
  sub_10002849C(&qword_1009717B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007B1890;
  type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver();
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 24) = &off_1008D0D88;
  swift_unknownObjectWeakAssign();
  v2 = sub_10073C364(&qword_100977F38, type metadata accessor for NavigationBarVisibilityThresholdCollectionElementsObserver);
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B1890;
  *(v3 + 32) = sub_10073AD58();
  *(v3 + 40) = v4;
  v5 = sub_10073BDD4();
  v6 = sub_10073C364(&qword_100975038, type metadata accessor for UberedCollectionElementsObserver);
  *(v3 + 48) = v5;
  *(v3 + 56) = v6;
  type metadata accessor for CompoundCollectionElementsObserver();
  swift_allocObject();
  *(v0 + 48) = CompoundCollectionElementsObserver.init(children:)();
  *(v0 + 56) = &protocol witness table for CompoundCollectionElementsObserver;
  swift_allocObject();
  return CompoundCollectionElementsObserver.init(children:)();
}

uint64_t type metadata accessor for GenericDiffablePageViewController()
{
  result = qword_100994B00;
  if (!qword_100994B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10073C310(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10073C364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v0 - 8);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  return PageGrid.init(from:breakpointOverrides:)();
}

uint64_t sub_10073C478()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v2 = &v42 - v1;
  v53 = type metadata accessor for PageGrid.HorizontalMargins();
  v3 = *(v53 - 8);
  __chkstk_darwin(v53);
  v5 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v42 - v10;
  __chkstk_darwin(v12);
  v56 = &v42 - v13;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  sub_10002849C(&qword_100970EF0);
  v17 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v54 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v47 = v19;
  *(v19 + 16) = xmmword_1007B23A0;
  v20 = v19 + v18;
  v58 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4048000000000000;
  v21 = v11;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v3 + 104);
  v48 = v3 + 104;
  v28 = v53;
  v27(v5);
  v51 = v27;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v58) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  v50 = v8;
  PageGrid.DirectionalValue.init(_:)();
  v52 = v20;
  v55 = v16;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v58 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4048000000000000;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v5 = _Q0;
  (v27)(v5, v57, v28);
  LOBYTE(v58) = 0;
  v49 = v2;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v46 = left;
  v42 = v21;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v43 = 2 * v31;
  v58 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4048000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v44 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v5;
  *v5 = v44;
  v33 = v53;
  v34 = v51;
  (v51)(v5, v57, v53);
  LOBYTE(v58) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v35 = v43;
  v36 = v32;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v37 = v54;
  v43 = v35 + v54;
  v58 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v36 = v44;
  v38 = v57;
  (v34)(v36, v57, v33);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v58) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v43 = 4 * v37;
  v58 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v44 = vdupq_n_s64(0x404A000000000000uLL);
  *v36 = v44;
  v39 = v53;
  (v51)(v36, v38, v53);
  LOBYTE(v58) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v40 = v43;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v54 += v40;
  v58 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v36 = v44;
  (v51)(v36, v57, v39);
  LOBYTE(v58) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v58 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_1009D38A0 = v47;
  return result;
}

uint64_t sub_10073CE34()
{
  v0 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = type metadata accessor for PageGrid.HorizontalMargins();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10002849C(&qword_100970EE8);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_10002849C(&qword_100970EF0);
  v11 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_1007B23A0;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4048000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v20 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4048000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  LOBYTE(v20) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v20 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4048000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v20 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v20) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v16[1] = v10;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v20 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  LOBYTE(v20) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v20 = 0x4000000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0x4044000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.HorizontalMargins.zero.getter();
  LOBYTE(v20) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v20 = 0;
  PageGrid.DirectionalValue.init(_:)();
  result = PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  qword_1009D38A8 = v17;
  return result;
}

void sub_10073D660()
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

void sub_10073D778()
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

void sub_10073D87C()
{
  v1 = type metadata accessor for ASKBootstrapV2();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) = 1;
    v6 = (*(*v0 + 360))(v3);
    (*(*v0 + 240))(v6);
    ASKBootstrapV2.start()();
    v7 = sub_100005744(0, &qword_1009729E0);
    swift_retain_n();
    v8 = static OS_dispatch_queue.main.getter();
    v10[3] = v7;
    v10[4] = &protocol witness table for OS_dispatch_queue;
    v10[0] = v8;
    Promise.then(perform:orCatchError:on:)();

    sub_100007000(v10);
    type metadata accessor for ASDInAppPurchaseDatabase();
    dispatch thunk of static ASDInAppPurchaseDatabase.refresh()();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_10073DA60(uint64_t a1)
{
  v3 = type metadata accessor for Bag();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Dependency();
  v8 = *(v7 - 8);
  v49 = v7;
  v50 = v8;
  __chkstk_darwin(v7);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v44 - v11;
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore13BaseBootstrap_inAppMessagesMetricsEventRecorder];
  v51 = a1;
  if (v17)
  {
    v18 = *(*v1 + 144);

    v45 = v1;
    v20 = v18(v19);
    type metadata accessor for InAppMessagesManager();
    swift_allocObject();

    v22 = sub_1000EF870(v21, v20, v17);

    v52 = v22;

    Dependency.init<A>(satisfying:with:)();
    v23 = sub_10003474C(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_10003474C(v24 > 1, v25 + 1, 1, v23);
    }

    v26 = v49;

    *(v23 + 2) = v25 + 1;
    (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v25, v16, v26);
    v1 = v45;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    v26 = v49;
  }

  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v27 = (*(*v1 + 272))(v6);
  (*(v4 + 8))(v6, v3);
  if (v27)
  {
    type metadata accessor for CommerceDialogHandler();
    v52 = v27;
    v28 = v27;
    v29 = v46;
    Dependency.init<A>(satisfying:with:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10003474C(0, *(v23 + 2) + 1, 1, v23);
    }

    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v23 = sub_10003474C(v30 > 1, v31 + 1, 1, v23);
    }

    *(v23 + 2) = v31 + 1;
    v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v33 = *(v50 + 72);
    v46 = *(v50 + 32);
    (v46)(v23 + v32 + v33 * v31, v29, v26);
    v34 = CommerceDialogHandler.presentingViewController.getter();
    if (v34)
    {
      v35 = v34;
      v45 = v28;
      type metadata accessor for UserNotificationsManager();
      swift_allocObject();

      v36 = v35;
      v52 = UserNotificationsManager.init(objectGraph:rootViewController:)();

      Dependency.init<A>(satisfying:with:)();
      v38 = *(v23 + 2);
      v37 = *(v23 + 3);
      if (v38 >= v37 >> 1)
      {
        v23 = sub_10003474C(v37 > 1, v38 + 1, 1, v23);
      }

      v26 = v49;

      *(v23 + 2) = v38 + 1;
      (v46)(v23 + v32 + v38 * v33, v47, v26);
    }

    else
    {
    }
  }

  sub_100005744(0, &qword_10098D1A0);
  inject<A, B>(_:from:)();
  type metadata accessor for ASKBagContract();
  inject<A, B>(_:from:)();
  type metadata accessor for AccountDeviceList();
  swift_allocObject();
  v52 = AccountDeviceList.init(accountStore:bag:)();

  v39 = v48;
  Dependency.init<A>(satisfying:with:)();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_10003474C(0, *(v23 + 2) + 1, 1, v23);
  }

  v41 = *(v23 + 2);
  v40 = *(v23 + 3);
  if (v41 >= v40 >> 1)
  {
    v23 = sub_10003474C(v40 > 1, v41 + 1, 1, v23);
  }

  *(v23 + 2) = v41 + 1;
  (*(v50 + 32))(v23 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, v39, v26);
  v52 = v23;
  sub_10002849C(&qword_100984B10);
  sub_10000794C(&qword_100984B18, &qword_100984B10);
  v42 = dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  return v42;
}

uint64_t sub_10073E12C(uint64_t a1)
{
  v19 = a1;
  v18 = type metadata accessor for MetricsFieldsContext();
  v2 = *(v18 - 8);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetricsData();
  v5 = *(v17 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!(v9 >> 62))
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v11 = *(v1 + v8);
    if (v11 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v12 = result;
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_5:
        if (v12 < 1)
        {
          __break(1u);
          return result;
        }

        v15 = v8;
        v16 = v1;
        v13 = (v5 + 8);

        v14 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          ++v14;
          dispatch thunk of MetricsEvent.metricsData.getter();
          static MetricsFieldsContext.emptyContext.getter();
          MetricsPipeline.process(_:using:)();

          (*(v2 + 8))(v4, v18);
          (*v13)(v7, v17);
        }

        while (v12 != v14);

        v8 = v15;
        v1 = v16;
      }
    }

    *(v1 + v8) = &_swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_10073E3CC()
{
  v51 = type metadata accessor for Dependency();
  v45 = *(v51 - 8);
  v46 = (v51 - 8);
  v47 = v45;
  __chkstk_darwin();
  v50 = &v37 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for ArcadeButtonNameFieldsProvider();
  v58 = *(v56 - 8);
  __chkstk_darwin();
  v55 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ArcadeSubscriptionFieldsProvider();
  v57 = *(v52 - 8);
  __chkstk_darwin();
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsLogger.Configuration();
  __chkstk_darwin();
  v43 = type metadata accessor for ArtworkLoader();
  type metadata accessor for ArtworkLoaderURLSession();
  BaseObjectGraph.inject<A>(_:)();
  v54 = ArtworkLoader.__allocating_init(cacheLimit:renderIntent:urlSession:)();
  sub_100005744(0, &qword_100995400);
  ArtworkLoader.register(resourceLoader:)();
  sub_1007407AC(&qword_100984B38, &type metadata accessor for MetricsLogger.Configuration);
  inject<A>(_:from:)();
  v42 = type metadata accessor for DiagnosticsReporter();
  swift_allocObject();
  v53 = DiagnosticsReporter.init(_:onReportError:onReportIncident:)();
  DiagnosticsReporter.flushBootstrapLogger(_:)();
  DiagnosticsReporter.flushRecorder(_:)();
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v49 = updated;
  ASKBagContract.arcadeProductFamilyId.getter();
  v4 = sub_100005744(0, &qword_10098D1A0);
  inject<A, B>(_:from:)();
  v5 = updated;
  v6 = [objc_opt_self() sharedInstance];
  v63 = sub_100005744(0, &qword_100995408);
  v64 = &protocol witness table for ASDSubscriptionEntitlements;
  updated = v6;
  v60 = v4;
  v61 = &protocol witness table for ACAccountStore;
  v59 = v5;
  v40 = type metadata accessor for ArcadeSubscriptionManager();
  v7 = objc_allocWithZone(v40);
  v48 = v5;
  v8 = ArcadeSubscriptionManager.init(arcadeSubscriptionFamilyId:subscriptionEntitlements:activeStoreAccountProvider:)();
  v9 = v3;
  v41 = v3;
  ArcadeSubscriptionFieldsProvider.init(arcadeSubscriptionManager:)();
  sub_10002849C(&unk_100973AF0);
  inject<A, B>(_:from:)();
  v44 = updated;
  v38 = v8;
  swift_unknownObjectRetain();
  v10 = v55;
  ArcadeButtonNameFieldsProvider.init(arcadeSubscriptionManager:appStateController:)();
  sub_10002849C(&qword_100995410);
  v11 = (sub_10002849C(&qword_1009828B0) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  v39 = xmmword_1007B10D0;
  *(v13 + 16) = xmmword_1007B10D0;
  v14 = v13 + v12;
  v15 = (v14 + v11[14]);
  static MetricsFieldInclusionRequest.arcadeButtonName.getter();
  v16 = v56;
  v15[3] = v56;
  v15[4] = sub_1007407AC(&qword_100995418, &type metadata accessor for ArcadeButtonNameFieldsProvider);
  v17 = sub_1000056E0(v15);
  (*(v58 + 16))(v17, v10, v16);
  sub_1003999FC(v13);
  swift_setDeallocating();
  sub_10002B894(v14, &qword_1009828B0);
  swift_deallocClassInstance();
  sub_10002849C(&qword_1009927E0);
  v18 = (sub_10002849C(&qword_1009828A0) - 8);
  v19 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v39;
  v21 = v20 + v19;
  v22 = (v21 + v18[14]);
  static MetricsFieldExclusionRequest.arcadeSubscription.getter();
  v23 = v52;
  v22[3] = v52;
  v22[4] = sub_1007407AC(&qword_100995420, &type metadata accessor for ArcadeSubscriptionFieldsProvider);
  v24 = sub_1000056E0(v22);
  (*(v57 + 16))(v24, v9, v23);
  sub_10039980C(v20);
  swift_setDeallocating();
  sub_10002B894(v21, &qword_1009828A0);
  swift_deallocClassInstance();
  v25 = static MetricsPipeline.objectGraphWithNewPipelineConfiguredWith(optInProviders:optOutProviders:asPartOf:)();

  v26 = [objc_allocWithZone(type metadata accessor for EventStoreManager()) init];
  *&v39 = v25;

  BaseObjectGraph.__allocating_init(_:)();
  sub_10002849C(&qword_1009844F0);
  v27 = v47;
  v28 = swift_allocObject();
  v28[1] = xmmword_1007B5360;
  updated = v54;

  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for UpdateStore();
  updated = static UpdateStore.shared.getter();
  Dependency.init<A>(satisfying:with:)();
  updated = v53;

  Dependency.init<A>(satisfying:with:)();
  updated = v38;
  v43 = v38;
  Dependency.init<A>(satisfying:with:)();
  updated = v26;
  v46 = v26;
  Dependency.init<A>(satisfying:with:)();
  updated = v28;
  sub_10002849C(&qword_100984B10);
  sub_10000794C(&qword_100984B18, &qword_100984B10);
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  dispatch thunk of BaseObjectGraph.name.setter();
  updated = [objc_allocWithZone(type metadata accessor for UnifiedTabBadgingManager()) init];
  v45 = updated;
  v29 = v50;
  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v30 = v27[1];
  v31 = v51;
  v30(v29, v51);
  type metadata accessor for AppStoreEngagementManager();
  swift_allocObject();
  v32 = v43;

  updated = AppStoreEngagementManager.init(objectGraph:subscriptionManager:)();

  Dependency.init<A>(satisfying:with:)();
  dispatch thunk of BaseObjectGraph.adding(dependency:)();

  v30(v29, v31);
  v33 = objc_allocWithZone(type metadata accessor for AppUpdatesDataSource());

  updated = AppUpdatesDataSource.init(objectGraph:)();
  v34 = updated;
  Dependency.init<A>(satisfying:with:)();
  v35 = dispatch thunk of BaseObjectGraph.adding(dependency:)();

  swift_unknownObjectRelease();

  v30(v29, v31);
  (*(v58 + 8))(v55, v56);
  (*(v57 + 8))(v41, v52);
  return v35;
}

uint64_t sub_10073EF64(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  started = type metadata accessor for StartUpPerformanceEvent.Checkpoint();
  v35 = *(started - 8);
  v36 = started;
  (__chkstk_darwin)();
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_1009953E8);
  (__chkstk_darwin)();
  v42 = &v33 - v5;
  v39 = type metadata accessor for Bag();
  (__chkstk_darwin)();
  v40 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Date();
  v7 = *(v41 - 8);
  (__chkstk_darwin)();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MetricsPipeline();
  v38 = *(v10 - 8);
  v11 = (__chkstk_darwin)();
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v16 = v44;
  swift_unknownObjectWeakLoadStrong();
  NetworkActivity.delegate.setter();
  type metadata accessor for AutoPlayVideoSettingsManager();
  v17 = static AutoPlayVideoSettingsManager.shared.getter();
  ASKBagContract.defaultAutoPlayVideoSetting.getter();
  dispatch thunk of AutoPlayVideoSettingsManager.defaultAutoPlayVideoSetting.setter();

  v18 = [objc_opt_self() standardUserDefaults];
  v43 = v16;
  v19 = ASKBagContract.isQRCodeBadgingEnabled.getter();
  v20 = String._bridgeToObjectiveC()();
  [v18 setBool:v19 & 1 forKey:v20];

  v21 = v15;
  v22 = v37;

  inject<A, B>(_:from:)();
  sub_10073E12C(v21);
  type metadata accessor for PageRenderMetricsEvent();
  Date.init()();
  Date.timeIntervalSince1970.getter();
  (*(v7 + 8))(v9, v41);
  v23 = v10;
  v24 = v38;
  static PageRenderMetricsEvent.lastInteractionTime.setter();
  v25 = *(v24 + 16);
  v41 = v23;
  v25(v13, v21, v23);
  type metadata accessor for ArcadeAccountEventGenerator();
  swift_allocObject();
  ArcadeAccountEventGenerator.init(metricsPipeline:)();
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v26 = v44;
  swift_retain_n();
  ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)();

  type metadata accessor for CommerceDialogHandler();
  BaseObjectGraph.optional<A>(_:)();
  v27 = v44;
  if (v44)
  {
    CommerceDialogHandler.isActive.setter();
  }

  type metadata accessor for JSFreshnessWatchdog();
  inject<A, B>(_:from:)();
  v28 = type metadata accessor for BagOfflinePolicy();
  (*(*(v28 - 8) + 56))(v42, 1, 1, v28);
  sub_10002849C(&qword_100980988);
  inject<A, B>(_:from:)();
  v29 = JSFreshnessWatchdog.__allocating_init(bag:isOfflineBag:bagOfflinePolicy:networkInquiry:process:)();
  (*(*v2 + 368))(v22, v29);
  ASKBagContract.metricsPageRenderTopic.getter();
  static PendingAppLaunch.didFinishLaunch(postEventUsing:topic:)();

  type metadata accessor for StartUpPerformanceEvent();
  v30 = BaseObjectGraph.optional<A>(_:)();
  if (v44)
  {

    v31 = v34;
    static StartUpPerformanceEvent.Checkpoint.bootstrapFinished.getter();
    StartUpPerformanceEvent.record(checkpoint:)();

    v30 = (*(v35 + 8))(v31, v36);
  }

  *(v2 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) = 0;
  (*(*v2 + 384))(v30);

  return (*(v24 + 8))(v21, v41);
}

uint64_t sub_10073F5FC(uint64_t a1)
{
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_1000056E0(v7);
  (*(*(v6 - 8) + 16))(v3);
  static LogMessage.safe(_:)();
  sub_10002B894(v7, &unk_1009711D0);
  type metadata accessor for CompoundLogger();
  Logger.error(_:)();

  type metadata accessor for PageMetricsEvent();
  swift_allocObject();
  swift_errorRetain();
  PageMetricsEvent.init(error:pageUrl:)();
  v4 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  static PendingAppLaunch.didFailToLaunch()();
  *(v1 + OBJC_IVAR____TtC8AppStore13BaseBootstrap_isBootstrapping) = 0;
  return (*(*v1 + 376))(a1);
}

void sub_10073F88C()
{
  _StringGuts.grow(_:)(43);

  v0._countAndFlagsBits = StaticString.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 0xD000000000000017;
  v1._object = 0x80000001008227B0;
  String.append(_:)(v1);
  v2._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v2);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10073FA08@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Bag();
  __chkstk_darwin();
  v2 = type metadata accessor for MetricsTopicProvider();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  BaseObjectGraph.inject<A>(_:)();
  MetricsTopicProvider.init(bag:)();
  v6 = type metadata accessor for InAppMessagesMetricsEventRecorder();
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 32) = MetricsTopicProvider.createEventDecorator()();
  *(v7 + 40) = v8;
  sub_10011B8E8(0, 0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8AppStore13BaseBootstrap_inAppMessagesMetricsEventRecorder) = v7;
  }

  a1[3] = v6;
  a1[4] = sub_1007407AC(&qword_1009953F8, type metadata accessor for InAppMessagesMetricsEventRecorder);
  *a1 = v7;
  return (*(v3 + 8))(v5, v2);
}

void sub_10073FC10(uint64_t a1)
{
  type metadata accessor for ClickMetricsEvent();
  static ClickMetricsEvent.makeErrorRetryEvent()();
  v2 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_10073D87C();
}

uint64_t sub_10073FCD8(uint64_t a1, uint64_t a2)
{
  sub_10073E3CC();
  v3 = (*(*a2 + 328))();
  dispatch thunk of BaseObjectGraph.name.setter();
  type metadata accessor for NetworkActivity();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_10073EF64(v3);
}

uint64_t sub_10073FDEC(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v5 = *(v12 - 8);
  __chkstk_darwin();
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009729E0);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_1007407F4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D0E98;
  v10 = _Block_copy(aBlock);
  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1007407AC(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_10000794C(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

uint64_t sub_1007400D0()
{
  type metadata accessor for DebugNotificationCenter();
  inited = swift_initStaticObject();
  swift_getErrorValue();
  v1 = Error.localizedDescription.getter();
  v3 = v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_100737B84();

  if (v5)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 launchedToTest];

    if ((v7 & 1) == 0)
    {
      sub_10036881C();
      v8 = *(inited + 24);
      if (v8)
      {
        sub_100005744(0, &qword_100970180);
        v9 = v8;
        isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 0.23137, 0.18824, 0.5).super.isa;
        sub_1003682C8(v1, v3, isa, 0, 0, 3.0);
      }
    }
  }
}

uint64_t sub_100740240(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSIncident();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_100005744(0, &qword_1009729E0);
  v11 = static OS_dispatch_queue.main.getter();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10074074C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D0E48;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1007407AC(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_10000794C(&qword_100976F60, &unk_1009729F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

uint64_t sub_1007405D4(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  swift_initStaticObject();
  return sub_1003689F4(a1);
}

uint64_t sub_100740654()
{
  sub_10001F64C(v0 + 16);
  v1 = OBJC_IVAR____TtC8AppStore13BaseBootstrap_logger;
  v2 = type metadata accessor for CompoundLogger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10074074C()
{
  v1 = *(type metadata accessor for JSIncident() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1007405D4(v2);
}

uint64_t sub_1007407AC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100740808(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_badgeView] = [objc_allocWithZone(type metadata accessor for BadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView] = v12;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView] = v13;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView] = v14;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView;
  v17 = *&v15[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView];
  sub_100028BB8();
  v18 = v15;
  v19 = v17;
  v20 = static UIColor.defaultLine.getter();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView;
  v22 = *&v18[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView];
  v23 = static UIColor.defaultLine.getter();
  [v22 setBackgroundColor:v23];

  v24 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView;
  v25 = *&v18[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView];
  v26 = static UIColor.defaultLine.getter();
  [v25 setBackgroundColor:v26];

  v27 = [v18 contentView];
  [v27 addSubview:*&v18[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_badgeView]];

  v28 = [v18 contentView];
  [v28 addSubview:*&v15[v16]];

  v29 = [v18 contentView];
  [v29 addSubview:*&v18[v21]];

  v30 = [v18 contentView];
  [v30 addSubview:*&v18[v24]];

  return v18;
}

id sub_100740BD8()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_badgeView];
  v3 = [v1 contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = [v1 contentView];
  [v12 frame];

  if (qword_10096E6F8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  sub_1000056A8(v13, qword_1009D2508);
  v14 = [v1 traitCollection];
  static BadgeViewRibbonLayout.estimatedHeight(fitting:using:with:)();
  v16 = v15;

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = 1.0 / v19;
  v21 = [v1 traitCollection];
  LOBYTE(v14) = UITraitCollection.prefersRightToLeftLayouts.getter();

  v22 = 0.0;
  if ((v14 & 1) == 0)
  {
    v23 = [v1 contentView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v22 = CGRectGetMaxX(v53) - v20;
  }

  v32 = *&v1[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView];
  v33 = [v1 contentView];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v54.origin.x = v35;
  v54.origin.y = v37;
  v54.size.width = v39;
  v54.size.height = v41;
  [v32 setFrame:{v22, floor((CGRectGetHeight(v54) - (v16 + -54.0)) * 0.5), v20, v16 + -54.0}];
  v42 = [v1 traitCollection];
  [v42 displayScale];
  v44 = v43;

  v45 = *&v1[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView];
  v46 = 1.0 / v44;
  [v1 bounds];
  MinX = CGRectGetMinX(v55);
  [v1 bounds];
  [v45 setFrame:{MinX, 0.0, CGRectGetWidth(v56), v46}];
  v48 = *&v1[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView];
  [v1 bounds];
  v49 = CGRectGetMinX(v57);
  [v1 bounds];
  v50 = CGRectGetMaxY(v58) - v46;
  [v1 bounds];
  return [v48 setFrame:{v49, v50, CGRectGetWidth(v59), v46}];
}

uint64_t type metadata accessor for BadgeCollectionViewCell()
{
  result = qword_100995478;
  if (!qword_100995478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007410F0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100741194(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v4 - 8);
  v6 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v104 = &v87 - v8;
  v9 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v9 - 8);
  v103 = &v87 - v10;
  v11 = type metadata accessor for VideoControls();
  __chkstk_darwin(v11 - 8);
  v102 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v101 = &v87 - v14;
  v15 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v15 - 8);
  v109 = &v87 - v16;
  v100 = type metadata accessor for VideoFillMode();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for VideoConfiguration();
  v19 = *(v105 - 8);
  __chkstk_darwin(v105);
  v108 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AspectRatio();
  v106 = *(v21 - 8);
  v107 = v21;
  __chkstk_darwin(v21);
  v98 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PageGrid.Direction();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v94 = &v87 - v25;
  v97 = type metadata accessor for PageGrid();
  v26 = *(v97 - 8);
  __chkstk_darwin(v97);
  v28 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v87 - v30;
  type metadata accessor for FramedVideo();
  sub_1007420F0(&qword_10098B640, &type metadata accessor for FramedVideo);
  v110 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v33 = aBlock[0];
  if (aBlock[0])
  {
    v90 = v6;
    v91 = a2;
    v92 = v19;

    v34 = FramedMedia.caption.getter();
    v35 = [v34 length];

    v36 = &selRef_setRequiresColorStatistics_;
    v111 = v18;
    if (v35 < 1)
    {
      v48 = v112;
      [*&v112[qword_100989278] setText:0];
      v48[qword_1009D23C8] = 0;
      [*&v48[qword_100989268] setHidden:1];
    }

    else
    {
      v88 = v28;
      v89 = v26;
      v37 = FramedMedia.caption.getter();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v38 = aBlock[6];
      v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
      v40 = [v37 length];
      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = v38;
      *(v41 + 32) = v39;
      *(v41 + 40) = 1;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_10010279C;
      *(v42 + 24) = v41;
      aBlock[4] = sub_1001027AC;
      aBlock[5] = v42;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1006606C4;
      aBlock[3] = &unk_1008D0F10;
      v43 = _Block_copy(aBlock);
      v44 = v38;
      v45 = v39;

      [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

      _Block_release(v43);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        return result;
      }

      v47 = v112;
      [*&v112[qword_100989278] setAttributedText:v45];
      v47[qword_1009D23C8] = 1;
      [*&v47[qword_100989268] setHidden:0];

      v18 = v111;
      v26 = v89;
      v28 = v88;
      v36 = &selRef_setRequiresColorStatistics_;
    }

    v49 = *&v112[qword_100989270];
    FramedMedia.ordinal.getter();
    if (v50)
    {
      v51 = String._bridgeToObjectiveC()();
    }

    else
    {
      v51 = 0;
    }

    [v49 v36[11]];

    if (FramedMedia.isFullWidth.getter())
    {
      v52 = [v112 contentView];
      [v52 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }

    else
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.containerWidth.getter();
      v53 = *(v26 + 8);
      v54 = v97;
      v53(v31, v97);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.containerHeight.getter();
      v53(v28, v54);
      v88 = v31;
      v55 = v95;
      v56 = *(v95 + 104);
      v89 = v33;
      v57 = v94;
      v58 = v96;
      v56(v94, enum case for PageGrid.Direction.vertical(_:), v96);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.safeAreaInsets.getter();
      v53(v28, v54);
      (*(v55 + 16))(v93, v57, v58);
      sub_10069F96C(0.0);
      v59 = v88;
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*(v55 + 8))(v57, v58);
      v60 = [v112 contentView];
      PageGrid.horizontalMargins.getter();
      [v60 setLayoutMargins:?];

      v53(v59, v54);
      v18 = v111;
    }

    v61 = v108;
    v62 = v106;
    v63 = FramedVideo.artwork.getter();
    v64 = v107;
    if (v63)
    {
      v65 = v112;
      v66 = [v112 contentView];
      sub_100028004();
      LayoutMarginsAware<>.layoutFrame.getter();

      Artwork.size.getter();
      v67 = v98;
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(filling:)();
      v69 = v68;
      v71 = v70;

      (*(v62 + 8))(v67, v64);
      v72 = &v65[qword_1009D1FC0];
      *v72 = v69;
      *(v72 + 1) = v71;
    }

    if (FramedVideo.video.getter())
    {
      (*(v99 + 104))(v18, enum case for VideoFillMode.scaleAspectFill(_:), v100);
      if (FramedVideo.artwork.getter())
      {
        Artwork.size.getter();
        AspectRatio.init(_:_:)();

        v73 = 0;
      }

      else
      {
        v73 = 1;
      }

      (*(v62 + 56))(v109, v73, 1, v64);
      Video.playbackControls.getter();
      Video.autoPlayPlaybackControls.getter();
      Video.canPlayFullScreen.getter();
      Video.allowsAutoPlay.getter();
      Video.looping.getter();
      VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
      type metadata accessor for VideoViewManager();
      BaseObjectGraph.inject<A>(_:)();
      Video.playbackId.getter();
      v74 = v103;
      Video.videoUrl.getter();
      v75 = type metadata accessor for URL();
      (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
      v76 = v104;
      Video.templateMediaEvent.getter();
      v77 = v90;
      Video.templateClickEvent.getter();
      type metadata accessor for VideoView();
      sub_1007420F0(&qword_100973190, type metadata accessor for VideoView);
      v78 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
      sub_10002B894(v77, &unk_100973A50);
      sub_10002B894(v76, &unk_100973A50);
      sub_10002B894(v74, &qword_100982460);
      sub_10002B894(aBlock, &qword_10096FB90);
      sub_1004C1750();
      swift_unknownObjectWeakAssign();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v80 = Strong;
        v81 = *&v112[qword_100988130];
        v82 = v92;
        if (v81)
        {
          v83 = *&v112[qword_100988130];
        }

        else
        {
          v83 = [v112 contentView];
          v81 = 0;
        }

        v84 = v81;
        [v83 addSubview:v80];
        [v112 setNeedsLayout];
      }

      else
      {

        v82 = v92;
      }

      (*(v82 + 8))(v61, v105);
    }

    v85 = FramedMedia.hasRoundedCorners.getter();

    v112[qword_1009D23C0] = v85 & 1;
    sub_10012684C(v86);
  }

  return result;
}

void sub_1007420AC()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "prepareForReuse");
  sub_1004C0F18(0);
}

uint64_t sub_1007420F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100742138(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_10002849C(&unk_1009731C0);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10002849C(&unk_1009731D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v17 + 8))(v19, v16);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v20 = sub_100079F24();
  sub_10002C0AC(v39, v38);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Lockup();
  if (swift_dynamicCast())
  {
    v21 = v37;
    v22 = v31;
    (*(v10 + 16))(v12, v15, v31);
    type metadata accessor for NilState();
    v23 = v27;
    WritableStateLens.init(_:)();
    v24 = v36;
    sub_1004B91C4(v21, v23, v28, v9, v6, v20);
    swift_unknownObjectRelease();

    (*(v29 + 8))(v23, v30);
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v22);
    sub_100007000(v39);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v31);
    sub_100007000(v39);
    v24 = v36;
  }

  v25 = [v24 contentView];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return [v24 setNeedsLayout];
}

uint64_t sub_100742654@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1007426B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

char *sub_10074277C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentView] = 0;
  sub_100073D84(a1, &v1[OBJC_IVAR____TtC8AppStore18OnboardingPageView_layoutMetrics]);
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentScrollView] = v3;
  sub_10002C0AC(a1 + 80, v18);
  sub_10002C0AC(a1 + 40, &v19);
  sub_10002C0AC(a1 + 120, &v20);
  v4 = type metadata accessor for OnboardingTrayView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC8AppStore18OnboardingTrayView_itemViewLayoutItems] = &_swiftEmptyArrayStorage;
  sub_100724018(v18, &v5[OBJC_IVAR____TtC8AppStore18OnboardingTrayView_layoutMetrics]);
  v17.receiver = v5;
  v17.super_class = v4;
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1007240C8(v18);
  *&v1[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayView] = v6;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *&v1[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayBackgroundView] = v10;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for OnboardingPageView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentScrollView;
  [*&v11[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentScrollView] setContentInsetAdjustmentBehavior:2];
  [*&v11[v12] setShowsVerticalScrollIndicator:0];
  [*&v11[v12] setShowsHorizontalScrollIndicator:0];
  [v11 addSubview:*&v11[v12]];
  v13 = OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayBackgroundView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayBackgroundView]];
  v14 = [*&v11[v13] contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayView]];

  sub_100073DE0(a1);
  return v11;
}

id sub_100742A64()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayView];
  v2 = [v1 isHidden];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    [v1 measurementsWithFitting:v0 in:{v8, v9}];
    v6 = v10;
    v7 = v11;
    LayoutMarginsAware<>.layoutFrame.getter();
    v4 = floor(CGRectGetMidX(v38) + v6 * -0.5);
    LayoutMarginsAware<>.layoutFrame.getter();
    MaxY = CGRectGetMaxY(v39);
    v5 = MaxY - v7;
    [*&v0[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayBackgroundView] setFrame:{v4, MaxY - v7, v6, v7}];
    [v1 setFrame:{0.0, 0.0, v6, v7}];
  }

  [v0 bounds];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentScrollView];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentView];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    rect = v5;
    v17 = v14;
    LayoutMarginsAware<>.layoutFrame.getter();
    MinX = CGRectGetMinX(v40);
    LayoutMarginsAware<>.layoutFrame.getter();
    MinY = CGRectGetMinY(v41);
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v42);
    v34 = v4;
    v35 = v6;
    if (v2)
    {
      LayoutMarginsAware<>.layoutFrame.getter();
      Height = CGRectGetHeight(v43);
    }

    else
    {
      v44.origin.x = v4;
      v44.origin.y = rect;
      v44.size.width = v6;
      v44.size.height = v7;
      Height = CGRectGetMinY(v44);
    }

    v22 = Height;
    [v17 measurementsWithFitting:v0 in:{Width, Height}];
    v15 = v23;
    v16 = v24;
    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = Width;
    v45.size.height = v22;
    v25 = floor(CGRectGetMidX(v45) + v15 * -0.5);
    v46.origin.x = MinX;
    v46.origin.y = MinY;
    v46.size.width = Width;
    v46.size.height = v22;
    v26 = CGRectGetMinY(v46);
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v17 setFrame:?];
    if ((v2 & 1) != 0 || (v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v15, v47.size.height = v16, v27 = CGRectGetMaxY(v47), v48.origin.x = v34, v48.size.width = v35, v48.origin.y = rect, v48.size.height = v7, CGRectGetMinY(v48) > v27))
    {
      [*&v0[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayBackgroundView] setEffect:0];
      v3 = 0.0;
    }

    else
    {
      v49.origin.x = v34;
      v49.origin.y = rect;
      v49.size.width = v35;
      v49.size.height = v7;
      v33 = CGRectGetHeight(v49);
      v50.origin.x = v25;
      v50.origin.y = v26;
      v50.size.width = v15;
      v50.size.height = v16;
      v28 = CGRectGetMaxY(v50);
      v51.origin.x = v34;
      v51.origin.y = rect;
      v51.size.width = v35;
      v51.size.height = v7;
      v29 = v28 - CGRectGetMinY(v51);
      if (v29 >= v33)
      {
        v3 = v33;
      }

      else
      {
        v3 = v29;
      }

      v30 = *&v0[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayBackgroundView];
      v31 = [objc_opt_self() effectWithStyle:4];
      [v30 setEffect:v31];
    }
  }

  [v13 setContentSize:{v15, v16, *&v33}];
  [v13 setContentInset:{0.0, 0.0, v3, 0.0}];
  return [v13 setContentOffset:{0.0, 0.0}];
}

id sub_100742E8C(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (!a1 || ((UITraitCollection.prefersAccessibilityLayouts.getter() ^ v5) & 1) != 0)
  {
    return [v2 setNeedsLayout];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_10074309C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007431A0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096EF20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D38F8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10074337C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D38F8);
  v1 = sub_1000056A8(v0, qword_1009D38F8);
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D1748);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1007434FC()
{
  v1 = v0;
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100005744(0, &qword_1009730E0);
  v4 = qword_10096EF20;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  sub_1000056A8(v6, qword_1009D38F8);
  v7 = [v1 traitCollection];
  v8 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *(inited + 64) = v3;
  *(inited + 40) = v8;
  v9 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002B894(inited + 32, &unk_100970EC0);
  v10 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  v11 = v10;
  if (*(v1 + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_isCentered) == 1)
  {
    [v10 setAlignment:1];
  }

  else
  {
    v12 = [v1 traitCollection];
    v13 = UITraitCollection.prefersRightToLeftLayouts.getter();

    if (v13)
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    [v11 setAlignment:v14];
  }

  v28 = sub_100005744(0, &unk_100976610);
  *&v27 = v11;
  sub_100056164(&v27, v26);
  v15 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100051368(v26, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v17 = v9;
  v29 = v9;
  v18 = NSForegroundColorAttributeName;
  v19 = [v1 tintColor];
  if (v19)
  {
    v20 = v19;
    v28 = sub_100005744(0, &qword_100970180);
    *&v27 = v20;
    sub_100056164(&v27, v26);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_100051368(v26, v18, v21);

    v29 = v17;
  }

  else
  {
    sub_1000DAC3C(v18, &v27);

    sub_10002B894(&v27, &unk_1009711D0);
  }

  v22 = objc_allocWithZone(NSAttributedString);

  v23 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1007447EC(&qword_100976620, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v25 = [v22 initWithString:v23 attributes:isa];

  dispatch thunk of DynamicTypeLabel.axSetLinkStyleAttributedText(_:)();
  [v1 setNeedsLayout];
}

uint64_t sub_100743908()
{
  ObjectType = swift_getObjectType();
  v10.receiver = v0;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = ObjectType;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100744834;
  *(v4 + 24) = v3;
  v9[4] = sub_10006F094;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000489A8;
  v9[3] = &unk_1008D1088;
  v5 = _Block_copy(v9);
  v6 = v0;

  [v2 performWithoutAnimation:v5];
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

id sub_100743A88(uint64_t a1)
{
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_titleLabel);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v6 sizeThatFits:{v7, v8}];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v13);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMinX(v14);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMinY(v15);
  if (qword_10096EF10 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for StaticDimension();
  sub_1000056A8(v9, qword_1009D38C8);
  static Dimensions.defaultRoundingRule.getter();
  v10 = [v6 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();

  [v6 firstBaselineFromTop];
  (*(v3 + 8))(v5, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v6 setFrame:?];
}

void sub_100743D6C()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_titleLabel];
  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 tintColor];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v4];
      v8 = [v4 length];
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      *(v9 + 24) = v6;
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1002CA5F4;
      *(v10 + 24) = v9;
      v14[4] = sub_1002CA5FC;
      v14[5] = v10;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 1107296256;
      v14[2] = sub_1006607C0;
      v14[3] = &unk_1008D1010;
      v11 = _Block_copy(v14);
      v12 = v7;
      v13 = v6;

      [v4 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v8 usingBlock:{0x100000, v11}];

      _Block_release(v11);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if ((v13 & 1) == 0)
      {
        [v2 setAttributedText:v12];

        return;
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_100744000()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text];
  *v1 = 0;
  *(v1 + 1) = 0;

  sub_1007434FC();
  v0[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_isCentered] = 0;
  sub_1007434FC();
  v2 = &v0[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  return sub_10001F63C(v3);
}

void sub_100744220()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  *&v1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_tapGestureRecognizer] = 0;
  v1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_isCentered] = 0;
  v10 = &v1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction];
  *v11 = 0;
  v11[1] = 0;
  if (qword_10096EF20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D38F8);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v15 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v1[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24.receiver = v1;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v17 = OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_titleLabel;
  v18 = *&v16[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_titleLabel];
  v19 = v16;
  [v19 addSubview:v18];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"buttonTapped"];
  v21 = *&v19[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_tapGestureRecognizer];
  *&v19[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_tapGestureRecognizer] = v20;
  v22 = v20;

  if (v22)
  {
    v23 = *&v16[v17];
    [v23 addGestureRecognizer:v22];

    [*&v16[v17] setUserInteractionEnabled:1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100744554(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_10096EF20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for FontUseCase();
    sub_1000056A8(v2, qword_1009D38F8);
    v3 = type metadata accessor for Feature();
    v6[3] = v3;
    v6[4] = sub_1007447EC(&qword_100972E50, &type metadata accessor for Feature);
    v4 = sub_1000056E0(v6);
    (*(*(v3 - 8) + 104))(v4, enum case for Feature.measurement_with_labelplaceholder(_:), v3);
    isFeatureEnabled(_:)();
    sub_100007000(v6);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096EF10 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for StaticDimension();
    sub_1000056A8(v5, qword_1009D38C8);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096EF18 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v5, qword_1009D38E0);
    AnyDimension.bottomMargin(from:in:)();
  }
}

uint64_t sub_1007447EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AccountChannelsProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"notifyObserver" name:VSAccountStoreDidChangeNotification object:0];

  return v0;
}

uint64_t AccountChannelsProvider.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"notifyObserver" name:VSAccountStoreDidChangeNotification object:0];

  return v0;
}

uint64_t AccountChannelsProvider.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:VSAccountStoreDidChangeNotification object:0];

  sub_10001F64C(v0 + 16);
  return v0;
}

uint64_t AccountChannelsProvider.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:VSAccountStoreDidChangeNotification object:0];

  sub_10001F64C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t AccountChannelsProvider.updateObserver.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*AccountChannelsProvider.updateObserver.modify(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100745278;
}

void AccountChannelsProvider.fetchChannels(_:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedCenter];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_100744FB8;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100246D50;
  v7[3] = &unk_1008D10D8;
  v6 = _Block_copy(v7);

  [v4 fetchAccountChannelsWithCompletionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_100744D0C(void *a1, void (*a2)(char *))
{
  v4 = sub_10002849C(&qword_100995600);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for AdamId();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for AccountChannels();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  v13 = a1;
  v14 = [v13 adamID];
  if (!v14)
  {

LABEL_6:
    (*(v9 + 56))(v6, 1, 1, v8, v10);
    a2(v6);
    return sub_100745208(v6);
  }

  v20 = a2;
  v15 = v14;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  AdamId.init(value:)();
  v16 = [v13 channelIDs];
  if (v16)
  {
    v17 = v16;
    static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  AccountChannels.init(providerAdamId:subscribedChannelIds:)();
  (*(v9 + 16))(v6, v12, v8);
  (*(v9 + 56))(v6, 0, 1, v8);
  v20(v6);

  sub_100745208(v6);
  return (*(v9 + 8))(v12, v8);
}

uint64_t (*sub_100744FC0(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100745054;
}

void sub_100745058(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_1007450DC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedCenter];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10074527C;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100246D50;
  v7[3] = &unk_1008D1128;
  v6 = _Block_copy(v7);

  [v4 fetchAccountChannelsWithCompletionHandler:v6];
  _Block_release(v6);
}

uint64_t sub_100745208(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100995600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100745294()
{
  result = qword_100995608;
  if (!qword_100995608)
  {
    type metadata accessor for CopyTextAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995608);
  }

  return result;
}

uint64_t sub_1007452EC()
{
  v0 = type metadata accessor for ActionOutcome();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  CopyTextAction.text.getter();
  v5 = String._bridgeToObjectiveC()();

  [v4 setString:v5];

  sub_10002849C(&qword_1009764A0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return Promise.__allocating_init(value:)();
}

uint64_t sub_100745438(uint64_t a1, int a2, void *a3, uint64_t a4, double a5, double a6, double a7)
{
  v8 = v7;
  v15 = type metadata accessor for Separator.Position();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Separator();
  v73 = *(v74 - 8);
  *&v19 = __chkstk_darwin(v74).n128_u64[0];
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v8 contentView];
  [a3 pageMarginInsets];
  v23 = v22;
  [a3 pageMarginInsets];
  [v21 setLayoutMargins:{a5, v23, a7}];

  v24 = *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_messageTextView];
  v75 = a1;
  Banner.linkableMessage.getter();
  v25 = LinkableText.styledText.getter();
  v26 = LinkableText.linkedSubstrings.getter();
  v77 = a4;
  v27 = v24;
  v28 = sub_100746314(v26, sub_100520344);

  sub_1004F78BC(v25, v28);

  v76 = a2;
  if (a2)
  {
    (*(v16 + 104))(v18, enum case for Separator.Position.bottom(_:), v15);
    v81[3] = type metadata accessor for ZeroDimension();
    v81[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v81);
    static ZeroDimension.zero.getter();
    v29 = v72;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v30 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v31 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
    swift_beginAccess();
    v32 = *(v73 + 40);
    v33 = v30;
    v32(&v30[v31], v29, v74);
    swift_endAccess();

    v34 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView;
    v35 = *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView];
    if (v35)
    {
      [v35 removeFromSuperview];
      v36 = *&v8[v34];
    }

    else
    {
      v36 = 0;
    }

    *&v8[v34] = v33;
    v40 = v33;

    v41 = [v8 contentView];
    [v41 addSubview:v40];

    [*&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setHidden:1];
    sub_100028BB8();
    v42 = static UIColor.primaryText.getter();
    v43 = type metadata accessor for DynamicTypeLinkedTextView();
    v80.receiver = v27;
    v80.super_class = v43;
    v44 = objc_msgSendSuper2(&v80, "textColor");
    v79.receiver = v27;
    v79.super_class = v43;
    objc_msgSendSuper2(&v79, "setTextColor:", v42);
    v78.receiver = v27;
    v78.super_class = v43;
    v45 = objc_msgSendSuper2(&v78, "textColor");
    if (v45)
    {
      goto LABEL_8;
    }

LABEL_14:
    if (!v44)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v37 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView;
  v38 = *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_bottomSeparatorView];
  if (v38)
  {
    [v38 removeFromSuperview];
    v39 = *&v8[v37];
  }

  else
  {
    v39 = 0;
  }

  *&v8[v37] = 0;

  [*&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_roundedBackgroundView] setHidden:0];
  sub_100028BB8();
  v42 = static UIColor.secondaryText.getter();
  v49 = type metadata accessor for DynamicTypeLinkedTextView();
  v84.receiver = v27;
  v84.super_class = v49;
  v44 = objc_msgSendSuper2(&v84, "textColor");
  v83.receiver = v27;
  v83.super_class = v49;
  objc_msgSendSuper2(&v83, "setTextColor:", v42);
  v82.receiver = v27;
  v82.super_class = v49;
  v45 = objc_msgSendSuper2(&v82, "textColor");
  if (!v45)
  {
    goto LABEL_14;
  }

LABEL_8:
  v46 = v45;
  if (!v44)
  {

    goto LABEL_15;
  }

  v47 = v44;
  v48 = static NSObject.== infix(_:_:)();

  if ((v48 & 1) == 0)
  {
LABEL_15:
    sub_1004F6A30();
    goto LABEL_16;
  }

  v44 = v47;
LABEL_16:

  v42 = v44;
LABEL_17:

  sub_100028BB8();
  v50 = static UIColor.appTint.getter();
  [v27 setTintColor:v50];

  v51 = Banner.leadingArtwork.getter();
  sub_10063F468(v51);

  v52 = Banner.leadingArtworkTintColor.getter();
  sub_10063D928(v52);
  v53 = Banner.leadingArtworkSymbolConfiguration.getter();
  v54 = *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration];
  *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkSymbolConfiguration] = v53;
  v55 = v53;

  sub_10063DBB8();
  v56 = *(Banner.buttonActions.getter() + 16);

  v57 = OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow;
  v58 = *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow];
  if (v56)
  {
    v59 = v77;
    if (v58)
    {
      v60 = *&v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_buttonRow];
    }

    else
    {
      type metadata accessor for BannerButtonRow();
      v60 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    }

    v62 = v58;
    v63 = Banner.buttonActions.getter();
    sub_100142988(v63, v59);

    v64 = *&v8[v57];
    if (v64)
    {
      type metadata accessor for BannerButtonRow();
      v65 = v60;
      v58 = v64;
      v66 = static NSObject.== infix(_:_:)();

      if ((v66 & 1) == 0)
      {
        [v58 removeFromSuperview];
      }
    }

    else
    {
      v67 = v60;
      v58 = 0;
    }

    v68 = *&v8[v57];
    *&v8[v57] = v60;
    v69 = v60;

    sub_10063D9B0(v64);
  }

  else
  {
    if (v58)
    {
      [v58 removeFromSuperview];
      v61 = *&v8[v57];
    }

    else
    {
      v61 = 0;
    }

    *&v8[v57] = 0;

    sub_10063D9B0(v58);
  }

  v8[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_shouldUseArcadeMetrics] = v76 & 1;
  [v8 setNeedsLayout];
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  sub_100745C2C();
  [v8 setNeedsLayout];
}

void sub_100745C2C()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView];
    if (v2)
    {
      swift_retain_n();
      v6 = v2;
      v3 = [v0 traitCollection];
      sub_10063E968(v1);
      v5 = v4;

      if (v5)
      {
      }

      else
      {
        Artwork.config(using:)();
        type metadata accessor for ArtworkLoader();
        type metadata accessor for ArtworkView();
        static ArtworkLoader.handlerKey<A>(for:)();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

        sub_10002B894(v7, &qword_10096FB90);
      }
    }
  }
}

void sub_100745DF4(id a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v5 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Artwork.URLTemplate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_10007FF30(a3, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10002B894(v7, &qword_100972638);
  }

  else
  {
    v30 = a1;
    v18 = *(v9 + 32);
    v18(v17, v7, v8);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v20 = *(Strong + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtwork), v21 = Strong, , v21, v20))
    {
      Artwork.template.getter();

      v18(v14, v11, v8);
      sub_1007465A4(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v9 + 8);
      v23(v14, v8);
      v23(v17, v8);
      a1 = v30;
      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      (*(v9 + 8))(v17, v8);
      a1 = v30;
    }
  }

  if (a1)
  {
    a1 = [a1 imageWithRenderingMode:2];
  }

  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = *(v24 + OBJC_IVAR____TtC8AppStore24BannerCollectionViewCell_leadingArtworkView);
    v26 = v24;
    v27 = v25;

    if (v25)
    {
      v31.value.super.isa = a1;
      v31.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v31, v28);
    }
  }
}

void sub_100746148(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *a1;
  if (Banner.leadingArtwork.getter())
  {

    v8 = 15.0;
  }

  else
  {
    v8 = 22.0;
  }

  Banner.buttonActions.getter();
  sub_10002849C(&qword_10096F9A8);
  v9 = Array.isNotEmpty.getter();

  v10 = 15.0;
  if ((v9 & 1) == 0)
  {
    v10 = v8;
  }

  v11 = 9.0;
  if (v9)
  {
    v11 = 12.0;
  }

  *&v12 = v11;
  *(&v12 + 1) = 0x402E000000000000;
  v13 = v11;
  v14 = xmmword_1007B0C10;
  v15 = v8;
  v16 = 0x4022000000000000;
  v17 = v10;
  v18 = xmmword_1007B0C20;
  v19 = xmmword_1007B0C30;
  sub_10063EAAC(v7, &v12, a6);
}

uint64_t sub_100746314(uint64_t a1, void (*a2)(_OWORD *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v31 = _swiftEmptyArrayStorage;
  sub_100143FC4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  v28 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v29 = *(a1 + 36);
  v26 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v28 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    v13 = *(*(a1 + 56) + 8 * v6);

    a2(v30, v12, v11, v13);

    v31 = v3;
    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      result = sub_100143FC4((v14 > 1), v15 + 1, 1);
      v3 = v31;
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[6 * v15];
    v17 = v30[0];
    v18 = v30[2];
    *(v16 + 3) = v30[1];
    *(v16 + 4) = v18;
    *(v16 + 2) = v17;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v19 = *(v28 + 8 * v9);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v20 = v19 & (-2 << (v6 & 0x3F));
    if (v20)
    {
      v8 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v21 = v9 << 6;
      v22 = v9 + 1;
      v23 = (a1 + 72 + 8 * v9);
      while (v22 < (v8 + 63) >> 6)
      {
        v25 = *v23++;
        v24 = v25;
        v21 += 64;
        ++v22;
        if (v25)
        {
          result = sub_1000CAE24(v6, v29, 0);
          v8 = __clz(__rbit64(v24)) + v21;
          goto LABEL_4;
        }
      }

      result = sub_1000CAE24(v6, v29, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v26)
    {
      return v3;
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

uint64_t sub_1007465A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ArcadeSeeAllGamesButton()
{
  result = qword_100995668;
  if (!qword_100995668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100746690(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = &v1[qword_100995660];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  *&v1[qword_100995658] = a1;
  v31.receiver = v1;
  v31.super_class = ObjectType;

  v9 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = objc_allocWithZone(UIColor);
  v11 = v9;
  v12 = [v10 initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  [v11 setTintColor:v12];

  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 whiteColor];
  [v14 setBackgroundColor:v15];

  [v14 addTarget:v14 action:"navigateToSeeAllGames" forControlEvents:64];
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() systemImageNamed:v16];

  [v14 setImage:v17 forState:0];
  if (qword_10096DC78 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v19 = sub_1000056A8(v18, qword_1009D0500);
  v20 = [v14 traitCollection];
  (*(*(v18 - 8) + 16))(v7, v19, v18);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v30[3] = v4;
  v30[4] = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v30);
  (*(v5 + 16))(v21, v7, v4);
  CGFloat.scalingLike(_:with:)();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  sub_100007000(v30);
  v24 = floor(v23);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v24 = v24 + -5.0;
  }

  v26 = [objc_opt_self() configurationWithPointSize:v24];
  [v14 setPreferredSymbolConfiguration:v26 forImageInState:0];

  dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();
  sub_10002849C(&qword_10097B110);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B10D0;
  *(v27 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v27 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges(_:action:)();

  swift_unknownObjectRelease();

  return v14;
}

void sub_100746B0C()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  [v0 bounds];
  Width = CGRectGetWidth(v9);
  [v0 bounds];
  Height = CGRectGetHeight(v10);
  if (Height >= Width)
  {
    Height = Width;
  }

  v3 = floor(Height * 0.5);
  v4 = [v0 layer];
  [v4 cornerRadius];
  v6 = v5;

  if (vabdd_f64(v6, v3) > COERCE_DOUBLE(1))
  {
    v7 = [v0 layer];
    [v7 setCornerRadius:v3];
  }
}

void sub_100746C08(void *a1)
{
  v1 = a1;
  sub_100746B0C();
}

void sub_100746C50(char *a1)
{
  v1 = &a1[qword_100995660];
  if (a1[qword_100995660 + 16])
  {
    v2 = qword_10096DC78;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for FontUseCase();
    v5 = sub_1000056A8(v4, qword_1009D0500);
    v6 = [v3 traitCollection];
    sub_1002CE220(v5);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

void sub_100746D34(char *a1)
{
  v1 = &a1[qword_100995660];
  if (a1[qword_100995660 + 16])
  {
    v2 = qword_10096DC78;
    v3 = a1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for FontUseCase();
    v5 = sub_1000056A8(v4, qword_1009D0500);
    v6 = [v3 traitCollection];
    sub_1002CE220(v5);
    v8 = v7;

    *v1 = v8;
    *(v1 + 1) = v8;
    v1[16] = 0;
  }
}

id sub_100746E18()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v0[qword_100995660];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  if (qword_10096DC78 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D0500);
  v9 = [v0 traitCollection];
  (*(*(v7 - 8) + 16))(v5, v8, v7);
  (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
  v19[3] = v2;
  v19[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v19);
  (*(v3 + 16))(v10, v5, v2);
  CGFloat.scalingLike(_:with:)();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_100007000(v19);
  v13 = floor(v12);
  Main = JUScreenClassGetMain();

  if (Main == 1)
  {
    v13 = v13 + -5.0;
  }

  v15 = [objc_opt_self() configurationWithPointSize:v13];
  [v0 setPreferredSymbolConfiguration:v15 forImageInState:0];

  v18.receiver = v0;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "invalidateIntrinsicContentSize");
}

void sub_100747098(void *a1)
{
  v1 = a1;
  sub_100746E18();
}

uint64_t sub_1007470E0()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v49 = v37 - v2;
  v3 = type metadata accessor for FlowOrigin();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v48 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FlowAnimationBehavior();
  v42 = *(v5 - 8);
  v43 = v5;
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowPresentationContext();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v44 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v41 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v11 - 8);
  v40 = v37 - v12;
  v13 = type metadata accessor for FlowPage();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  __chkstk_darwin(v23);
  v25 = v37 - v24;
  v26 = *(v0 + qword_100995658);
  type metadata accessor for ASKBagContract();
  v37[0] = v26;
  BaseObjectGraph.inject<A>(_:)();
  v37[1] = v52;
  ASKBagContract.arcadeSAGURL.getter();
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  if (v29(v22, 1, v27) == 1)
  {
    URL.init(string:)();
    if (v29(v22, 1, v27) != 1)
    {
      sub_10002B894(v22, &qword_100982460);
    }
  }

  else
  {
    (*(v28 + 32))(v25, v22, v27);
    (*(v28 + 56))(v25, 0, 1, v27);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  (*(v14 + 104))(v16, enum case for FlowPage.arcadeSeeAllGames(_:), v13);
  sub_1000417F0(v25, v19);
  v30 = type metadata accessor for ReferrerData();
  (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
  v50 = 0u;
  v51 = 0u;
  static ActionMetrics.notInstrumented.getter();
  (*(v38 + 104))(v44, enum case for FlowPresentationContext.infer(_:), v39);
  (*(v42 + 104))(v45, enum case for FlowAnimationBehavior.infer(_:), v43);
  (*(v46 + 104))(v48, enum case for FlowOrigin.inapp(_:), v47);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v32 = sub_10002849C(&unk_100974490);
  v33 = v49;
  v34 = v37[0];
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v33, 1, v32) == 1)
  {
    sub_10002B894(v25, &qword_100982460);

    return sub_10002B894(v33, &unk_100972A00);
  }

  else
  {
    sub_1005F9C8C(v31, 1, v34, v33);

    sub_10002B894(v25, &qword_100982460);
    return (*(v35 + 8))(v33, v32);
  }
}

void sub_100747850(void *a1)
{
  v1 = a1;
  sub_1007470E0();
}

uint64_t sub_1007478F0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v4;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v5 = *(a1 + 16);
  v15 = *a1;
  v16 = v5;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100005744(0, &qword_1009729E0);
  *v9 = static OS_dispatch_queue.main.getter();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v23 = xmmword_100975F50;
    v24 = xmmword_100975F60;
    v25 = xmmword_100975F70;
    v26 = qword_100975F80;
    v21 = xmmword_100975F30;
    v22 = xmmword_100975F40;
    v27[3] = xmmword_100975F60;
    v27[4] = xmmword_100975F70;
    v27[1] = xmmword_100975F40;
    v27[2] = xmmword_100975F50;
    v28 = qword_100975F80;
    v27[0] = xmmword_100975F30;
    sub_100031660(&v21, v13, &unk_10097F520);
    xmmword_100975F50 = v17;
    xmmword_100975F60 = v18;
    xmmword_100975F70 = v19;
    qword_100975F80 = v20;
    xmmword_100975F30 = v15;
    xmmword_100975F40 = v16;
    sub_10002B894(v27, &unk_10097F520);
    v12 = sub_10019DADC(a1, v13);
    a2(v12);
    v13[2] = xmmword_100975F50;
    v13[3] = xmmword_100975F60;
    v13[4] = xmmword_100975F70;
    v14 = qword_100975F80;
    v13[0] = xmmword_100975F30;
    v13[1] = xmmword_100975F40;
    xmmword_100975F30 = v21;
    xmmword_100975F40 = v22;
    xmmword_100975F50 = v23;
    xmmword_100975F60 = v24;
    xmmword_100975F70 = v25;
    qword_100975F80 = v26;
    return sub_10002B894(v13, &unk_10097F520);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100747B68()
{
  v1 = type metadata accessor for DividerView.Style(0);
  *&v2 = __chkstk_darwin(v1).n128_u64[0];
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *&v0[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView];
  if (v5)
  {
    v6 = qword_10096EE48;
    v7 = v5;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_1000056A8(v1, qword_1009D36D8);
    sub_1002BB2D0(v8, v4);
    v9 = &v7[OBJC_IVAR____TtC8AppStore11DividerView_style];
    swift_beginAccess();
    sub_1002BB334(v4, v9);
    swift_endAccess();
    v10 = &v7[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
    v11 = *(v9 + 1);
    *v10 = *v9;
    *(v10 + 1) = v11;
    [v7 setNeedsLayout];
    [v7 setNeedsLayout];
    sub_1002BB398(v4);
    v12 = [v0 contentView];
    [v12 addSubview:v7];
  }

  return [v0 setNeedsLayout];
}

id sub_100747CFC()
{
  if (v0[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_hasDivider] == 1)
  {
    v1 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v2 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView;
    v3 = *&v0[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView];
    if (v3)
    {
      [v3 removeFromSuperview];
      v4 = *&v0[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v0[v2] = v1;
    v8 = v1;

    sub_100747B68();
  }

  else
  {
    v5 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView;
    v6 = *&v0[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView];
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *&v0[v5];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v5] = 0;

    sub_100747B68();
  }

  return [v0 setNeedsLayout];
}

UIFontTextStyle sub_100747E28()
{
  v0 = type metadata accessor for FontSource();
  sub_100005644(v0, qword_1009D3920);
  *sub_1000056A8(v0, qword_1009D3920) = UIFontTextStyleBody;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_100747EE8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  *v6 = UIFontTextStyleBody;
  *(v6 + 2) = 0;
  v8 = enum case for FontUseCase.preferredFont(_:);
  v9 = type metadata accessor for FontUseCase();
  (*(*(v9 - 8) + 104))(v6, v8, v9);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v14[3] = v3;
  v14[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v14);
  (*(v4 + 16))(v10, v6, v3);
  v11 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007480D0()
{
  v0 = type metadata accessor for StaticDimension();
  sub_100005644(v0, qword_100995750);
  sub_1000056A8(v0, qword_100995750);
  if (qword_10096EF40 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for FontSource();
  v2 = sub_1000056A8(v1, qword_1009D3920);
  v5[3] = v1;
  v5[4] = &protocol witness table for FontSource;
  v3 = sub_1000056E0(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return StaticDimension.init(_:scaledLike:)();
}

uint64_t sub_1007481E0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100979010);
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096EF40 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v3, qword_1009D3920);
  (*(v4 + 16))(v6, v8, v3);
  return Conditional<>.init(roundedCornersConstant:nonRoundedCornersConstant:source:)();
}

char *sub_100748338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v10, qword_1009D1610);
  (*(v11 + 16))(v13, v17, v10);
  *&v5[v16] = DynamicTypeButton.__allocating_init(useCase:)();
  *&v5[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_action;
  v19 = sub_10002849C(&unk_10097B3D0);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_hasDivider] = 0;
  v20 = type metadata accessor for RoundedButtonCollectionViewCell();
  v27.receiver = v5;
  v27.super_class = v20;
  v21 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v23 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button;
  v24 = *&v21[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button];
  [v24 addTarget:v21 action:"didTapButton:" forControlEvents:64];

  [*&v21[v23] _setWantsAccessibilityUnderline:0];
  v25 = [v21 contentView];

  [v25 addSubview:*&v21[v23]];
  return v21;
}

id sub_100748690()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RoundedButtonCollectionViewCell();
  v55.receiver = v0;
  v55.super_class = v9;
  objc_msgSendSuper2(&v55, "layoutSubviews");
  v10 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = *&v1[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC8AppStore11DividerView_style;
    swift_beginAccess();
    sub_1002BB2D0(v19 + v20, v8);
    v21 = qword_10096EE38;
    v22 = v19;
    if (v21 != -1)
    {
      swift_once();
    }

    v23 = floor(*&qword_1009D36B8);
    static Dimensions.defaultRoundingRule.getter();
    v24 = type metadata accessor for StaticDimension();
    AnyDimension.value(in:rounded:)();
    v26 = v25;
    v27 = *(v3 + 8);
    v27(v5, v2);
    v28 = v23 + v26;
    sub_1002BB398(v8);
    if (qword_10096EF48 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v24, qword_100995708);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v30 = v29;
    v27(v5, v2);
    [v22 setFrame:{0.0, v30, v16, v28}];
    v56.origin.x = 0.0;
    v56.origin.y = v30;
    v56.size.width = v16;
    v56.size.height = v28;
    MaxY = CGRectGetMaxY(v56);
    if (qword_10096EF50 != -1)
    {
      swift_once();
    }

    v32 = sub_10002849C(&qword_100979010);
    sub_1000056A8(v32, qword_100995720);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v34 = v33;

    v27(v5, v2);
    v35 = MaxY + v34;
  }

  else
  {
    if (qword_10096EF60 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for StaticDimension();
    sub_1000056A8(v36, qword_100995750);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v35 = v37;
    v27 = *(v3 + 8);
    v27(v5, v2);
  }

  v38 = *&v1[OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button];
  v39 = [v38 imageForState:0];
  if (v39)
  {

    if (UIAccessibilityIsBoldTextEnabled())
    {
      if (qword_10096EF30 != -1)
      {
        swift_once();
      }

      v40 = qword_1009956D8;
    }

    else
    {
      if (qword_10096EF28 != -1)
      {
        swift_once();
      }

      v40 = qword_1009956C0;
    }

    v42 = type metadata accessor for StaticDimension();
    sub_1000056A8(v42, v40);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v44 = v43;
    v27(v5, v2);
    v41 = ceil(v44 * 0.5);
  }

  else
  {
    v41 = 0.0;
  }

  v45 = [v1 traitCollection];
  v46 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (v46)
  {
    v47 = -v41;
  }

  else
  {
    v47 = v41;
  }

  [v38 setContentEdgeInsets:{0.0, v41 + 32.0, 0.0, v41 + v41 + 32.0}];
  [v38 setImageEdgeInsets:{0.0, -v47, 0.0, v47}];
  [v38 setTitleEdgeInsets:{0.0, v47, 0.0, -v47}];
  [v38 sizeThatFits:{v16, v18}];
  v49 = v48;
  if (qword_10096EF38 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for StaticDimension();
  sub_1000056A8(v50, qword_1009956F0);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v52 = v51;
  v27(v5, v2);
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v38 setFrame:{CGRectGetMidX(v57) - v49 * 0.5, v35, v49, v52}];
  return [v38 _setCornerRadius:v52 * 0.5];
}

uint64_t sub_100748DCC(void *a1)
{
  v3 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23[-v4];
  v6 = sub_10002849C(&unk_10097B3D0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-v8];
  v10 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  sub_100031660(v1 + v10, v5, &qword_10097B3F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10002B894(v5, &qword_10097B3F0);
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = [a1 bounds];
  v23[8] = 1;
  v25 = 1;
  v28 = 15;
  v24[0] = a1;
  v24[1] = v13;
  v24[2] = v14;
  v24[3] = v15;
  v24[4] = v16;
  __asm { FMOV            V0.2D, #10.0 }

  v26 = _Q0;
  v27 = _Q0;
  __chkstk_darwin(v12);
  *&v23[-16] = v9;
  v22 = a1;
  sub_1007478F0(v24, sub_1007499E4);
  sub_10019DB38(v24);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_10074902C()
{
  v0 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v0 - 8);
  v2 = v7 - v1;
  sub_10002849C(&unk_10097B3D0);
  v3 = ObjectGraphPair.objectGraph.getter();
  v4 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v2, 1, v4) == 1)
  {

    return sub_10002B894(v2, &unk_100972A00);
  }

  else
  {
    ObjectGraphPair.value.getter();
    sub_1005F9AF4(v7[1], 1, v3, v2);

    return (*(v5 + 8))(v2, v4);
  }
}

id sub_100749244()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoundedButtonCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RoundedButtonCollectionViewCell()
{
  result = qword_1009957B0;
  if (!qword_1009957B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100749350()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    sub_1000798B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_10074943C()
{
  v0 = sub_10002849C(&qword_100979010);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - v2;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RoundedButton.hasDivider.getter())
  {
    v34 = v1;
    if (qword_10096EF48 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for StaticDimension();
    sub_1000056A8(v8, qword_100995708);
    swift_getObjectType();
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v10 = v9;
    v11 = *(v5 + 8);
    v11(v7, v4);
    type metadata accessor for DividerView(0);
    if (qword_10096EE48 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for DividerView.Style(0);
    sub_1000056A8(v12, qword_1009D36D8);
    v13 = v10 + sub_1006DA268();
    if (qword_10096EF50 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v0, qword_100995720);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v15 = v14;
    v11(v7, v4);
    v16 = v13 + v15;
    if (qword_10096EF38 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v8, qword_1009956F0);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v18 = v17;
    v11(v7, v4);
    v19 = v16 + v18;
    if (qword_10096EF58 != -1)
    {
      swift_once();
    }

    v20 = sub_1000056A8(v0, qword_100995738);
    v21 = v34;
    (*(v34 + 16))(v3, v20, v0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v23 = v22;
    v11(v7, v4);
    (*(v21 + 8))(v3, v0);
  }

  else
  {
    if (qword_10096EF60 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for StaticDimension();
    sub_1000056A8(v24, qword_100995750);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v26 = v25;
    v27 = *(v5 + 8);
    v27(v7, v4);
    if (qword_10096EF38 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v24, qword_1009956F0);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v29 = v28;
    v27(v7, v4);
    v19 = v26 + v29;
    if (qword_10096EF68 != -1)
    {
      swift_once();
    }

    v30 = sub_1000056A8(v0, qword_100995768);
    (*(v1 + 16))(v3, v30, v0);
    static Dimensions.defaultRoundingRule.getter();
    Conditional<>.value(in:rounded:)();
    v23 = v31;
    v27(v7, v4);
    (*(v1 + 8))(v3, v0);
  }

  return v19 + v23;
}

void sub_100749A00()
{
  v1 = v0;
  v2 = type metadata accessor for FontUseCase();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_button;
  type metadata accessor for DynamicTypeButton();
  if (qword_10096E230 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v2, qword_1009D1610);
  (*(v3 + 16))(v5, v9, v2);
  *(v1 + v8) = DynamicTypeButton.__allocating_init(useCase:)();
  *(v1 + OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_dividerView) = 0;
  v10 = OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_action;
  v11 = sub_10002849C(&unk_10097B3D0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC8AppStore31RoundedButtonCollectionViewCell_hasDivider) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100749C18(uint64_t a1, void *a2, uint64_t a3)
{
  v5._object = 0x80000001007FF2F0;
  v6._countAndFlagsBits = 0xD000000000000050;
  v6._object = 0x80000001007FF310;
  v5._countAndFlagsBits = 0xD000000000000017;
  localizedString(_:comment:)(v5, v6);
  v7 = String.count.getter();

  v8 = v7 < 19;
  v9 = sub_10029C454(v7 < 19);
  v10 = sub_10029C720(v8);
  [v9 size];
  [v10 size];

  sub_10029E79C(1, v8, 0, 2, a2, a3);
}

uint64_t sub_100749D90()
{
  v0 = type metadata accessor for TitledButtonStackLayout.Metrics();
  sub_100005644(v0, qword_1009D3958);
  sub_1000056A8(v0, qword_1009D3958);
  if (qword_10096EF90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for StaticDimension();
  v2 = sub_1000056A8(v1, qword_1009957D8);
  v5[3] = v1;
  v5[4] = &protocol witness table for StaticDimension;
  v3 = sub_1000056E0(v5);
  (*(*(v1 - 8) + 16))(v3, v2, v1);
  return TitledButtonStackLayout.Metrics.init(buttonHeight:horizontalInterItemSpace:verticalInterItemSpace:maximumButtonWidth:)();
}

UIFontTextStyle sub_100749EE0()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009957C0);
  v1 = sub_1000056A8(v0, qword_1009957C0);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_100749FA8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096EF88 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009957C0);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

id sub_10074A184(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100995858);
  __chkstk_darwin(v9);
  v10 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_lineBreaks;
  v13 = sub_10002849C(&qword_100973F58);
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  *&v4[OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_buttons] = _swiftEmptyArrayStorage;
  type metadata accessor for RoundedTitledButton();
  ViewRecycler.init()();
  sub_10074B528();
  ReusePool.init(recycler:limit:)();
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  v14 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return v14;
}

uint64_t sub_10074A548()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_buttons;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = &v7[qword_1009D39E0];
      v10 = *&v7[qword_1009D39E0];
      *v9 = 0;
      *(v9 + 1) = 0;
      sub_10001F63C(v10);
      [v8 setTitle:0 forState:0];
      swift_beginAccess();
      sub_10002849C(&qword_100995878);
      ReusePool.recycle(_:)();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_10074A6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for AutomationSemantics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = ObjectType;
  swift_beginAccess();
  sub_10002849C(&qword_100995878);
  ReusePool.dequeue(or:)();
  swift_endAccess();
  v11 = *&v22[0];
  [v11 _setWantsAccessibilityUnderline:0];
  v12 = [v11 titleLabel];

  if (v12)
  {
    [v12 setNumberOfLines:2];
  }

  TitledButton.title.getter();
  v13 = String._bridgeToObjectiveC()();

  [v11 setTitle:v13 forState:0];

  TitledButton.id.getter();
  AnyHashable.description.getter();
  sub_10003D614(v23);
  memset(v23, 0, 32);
  memset(v22, 0, sizeof(v22));
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();

  sub_10002B894(v22, &unk_1009711D0);
  sub_10002B894(v23, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();
  (*(v8 + 8))(v10, v7);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = &v11[qword_1009D39E0];
  v16 = *&v11[qword_1009D39E0];
  *v15 = sub_10074BB5C;
  v15[1] = v14;

  sub_10001F63C(v16);
  v17 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_buttons;
  swift_beginAccess();
  v18 = v11;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v3 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v19 = [v3 contentView];
  [v19 addSubview:v18];
}

char *sub_10074AA58@<X0>(char **a1@<X8>)
{
  v2 = type metadata accessor for StaticDimension();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RoundedTitledButton();
  if (qword_10096E210 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v6, qword_1009D15B0);
  (*(v7 + 16))(v9, v10, v6);
  if (qword_10096EF90 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v2, qword_1009957D8);
  (*(v3 + 16))(v5, v11, v2);
  result = sub_10074DE84(v9, v5);
  *a1 = result;
  return result;
}

uint64_t sub_10074AC5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  result = TitledButton.action.getter();
  if (result)
  {
    v7 = result;
    v8 = sub_10002849C(&unk_100974490);
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {

      return sub_10002B894(v5, &unk_100972A00);
    }

    else
    {
      sub_1005F9AF4(v7, 1, a2, v5);

      return (*(v9 + 8))(v5, v8);
    }
  }

  return result;
}

uint64_t sub_10074ADC8()
{
  v1 = v0;
  v23 = type metadata accessor for LayoutRect();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100973F48);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for TitledButtonStackLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitledButtonStackLayout();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitledButtonStackCollectionViewCell();
  v24.receiver = v1;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, "layoutSubviews");
  if (qword_10096EF70 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v8, qword_1009D3958);
  (*(v9 + 16))(v11, v17, v8);
  swift_beginAccess();

  sub_1002A67D0(v18);

  v19 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_lineBreaks;
  swift_beginAccess();
  sub_10074BB64(v1 + v19, v7);
  TitledButtonStackLayout.init(metrics:items:lineBreaks:)();
  v20 = [v1 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  TitledButtonStackLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v23);
  return (*(v13 + 8))(v15, v12);
}

id sub_10074B1F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitledButtonStackCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TitledButtonStackCollectionViewCell()
{
  result = qword_100995828;
  if (!qword_100995828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10074B344()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    sub_10074B454();
    if (v1 <= 0x3F)
    {
      sub_10074B4B8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10074B454()
{
  if (!qword_100995840)
  {
    sub_10002D1A8(&qword_100973F58);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100995840);
    }
  }
}

void sub_10074B4B8()
{
  if (!qword_100995850)
  {
    sub_10002D1A8(&qword_100995858);
    sub_10074B528();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_100995850);
    }
  }
}

unint64_t sub_10074B528()
{
  result = qword_100995860;
  if (!qword_100995860)
  {
    sub_10002D1A8(&qword_100995858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995860);
  }

  return result;
}

uint64_t sub_10074B58C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for LayoutViewPlaceholder();
  v7[3] = result;
  v7[4] = &protocol witness table for LayoutViewPlaceholder;
  v7[0] = a1;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      sub_10002849C(&unk_10097E960);
      v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v5 + 2) = a2;
      v6 = (v5 + 4);
      do
      {
        sub_10002C0AC(v7, v6);
        v6 += 40;
        --a2;
      }

      while (a2);
    }

    else
    {
      v5 = _swiftEmptyArrayStorage;
    }

    sub_100007000(v7);
    return v5;
  }

  return result;
}

double sub_10074B640(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v30 = a1;
  v33 = type metadata accessor for IndexSet();
  __chkstk_darwin(v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v28 - v4;
  v5 = sub_10002849C(&qword_100973F48);
  __chkstk_darwin(v5 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TitledButtonStackLayout.Metrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for TitledButtonStackLayout();
  v16 = *(v29 - 8);
  __chkstk_darwin(v29);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EF70 != -1)
  {
    swift_once();
  }

  v19 = sub_1000056A8(v12, qword_1009D3958);
  (*(v13 + 16))(v15, v19, v12);
  TitledButtonStackLayout.Metrics.buttonHeight.getter();
  sub_10002A400(v35, v35[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v9 + 8))(v11, v8);
  sub_100007000(v35);
  type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v20 = LayoutViewPlaceholder.init(representing:)();
  v21 = TitledButtonStack.buttons.getter();
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_10074B58C(v20, v22);
  TitledButtonStack.regularLineBreaks.getter();
  TitledButtonStack.compactLineBreaks.getter();
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  v23 = sub_10002849C(&qword_100973F58);
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  TitledButtonStackLayout.init(metrics:items:lineBreaks:)();
  sub_10074BAFC();
  v24 = v29;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v26 = v25;
  (*(v16 + 8))(v18, v24);
  return v26;
}

unint64_t sub_10074BAFC()
{
  result = qword_100995868;
  if (!qword_100995868)
  {
    type metadata accessor for TitledButtonStackLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995868);
  }

  return result;
}

uint64_t sub_10074BB64(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973F48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10074BBD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v4 = sub_10002849C(&unk_1009732C0);
  __chkstk_darwin(v4 - 8);
  v6 = (v29 - v5);
  v7 = type metadata accessor for ArcadeDownloadPackSuggestionsPagePrimaryActionKind();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  ArcadeDownloadPackSuggestionsPage.title.getter();
  v15 = String._bridgeToObjectiveC()();

  [v14 setText:v15];

  ArcadeDownloadPackSuggestionsPage.primaryActionKind.getter();
  (*(v8 + 104))(v10, enum case for ArcadeDownloadPackSuggestionsPagePrimaryActionKind.getAll(_:), v7);
  sub_10074D524();
  v16 = dispatch thunk of static Equatable.== infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v10, v7);
  v17(v13, v7);
  if ((v16 & 1) != 0 || (v18 = ArcadeDownloadPackSuggestionsPage.getAllAction.getter()) == 0)
  {
    v21 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
    (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  }

  else
  {
    v19 = v18;
    v20 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);

    ArcadeDownloadPackSuggestionsPage.getAllButtonStyle.getter();
    *v6 = v19;
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
  }

  v22 = *&v3[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v23 = ArcadeDownloadPackSuggestionsPage.suggestions.getter();
  v24 = v23;
  if (!(v23 >> 62))
  {
    v25 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_7;
    }

LABEL_15:

    v28 = _swiftEmptyArrayStorage;
LABEL_16:
    sub_1002F1F30(v28, v6, 0, v30);

    [v3 setNeedsLayout];
    [v3 invalidateIntrinsicContentSize];
    sub_10074CD00();

    return sub_1006DF228(v6);
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_7:
  v31 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v25 & 0x8000000000000000) == 0)
  {
    v29[1] = v22;
    v27 = 0;
    do
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v27;

      ArcadeDownloadPackSuggestion.lockup.getter();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v25 != v27);

    v28 = v31;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_10074BFEC()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_100995880 = result;
  return result;
}

char *sub_10074C03C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DirectionalTextAlignment();
  v60 = *(v8 - 8);
  v61 = v8;
  __chkstk_darwin(v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v59 = &v53 - v11;
  v57 = type metadata accessor for WordmarkView.Alignment();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v58 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FontSource();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for StaticDimension();
  v17 = *(v56 - 8);
  __chkstk_darwin(v56);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v20 - 8);
  v22 = &v53 - v21;
  v54 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v23 = enum case for Wordmark.arcade(_:);
  v24 = type metadata accessor for Wordmark();
  v25 = *(v24 - 8);
  (*(v25 + 104))(v22, v23, v24);
  (*(v25 + 56))(v22, 0, 1, v24);
  if (qword_10096E340 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for FontUseCase();
  v53 = sub_1000056A8(v26, qword_1009D1940);
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v28(v16, v53, v26);
  (*(v14 + 104))(v16, enum case for FontSource.useCase(_:), v13);
  v67 = v13;
  v68 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v66);
  (*(v14 + 16))(v29, v16, v13);
  StaticDimension.init(_:scaledLike:)();
  (*(v14 + 8))(v16, v13);
  (*(v55 + 104))(v58, enum case for WordmarkView.Alignment.leading(_:), v57);
  v30 = v56;
  v67 = v56;
  v68 = &protocol witness table for StaticDimension;
  v31 = sub_1000056E0(v66);
  (*(v17 + 16))(v31, v19, v30);
  v32 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v33 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v17 + 8))(v19, v30);
  v34 = v63;
  *(v63 + v54) = v33;
  v35 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v36 = v59;
  v28(v59, v53, v26);
  (*(v27 + 56))(v36, 0, 1, v26);
  (*(v60 + 104))(v62, enum case for DirectionalTextAlignment.none(_:), v61);
  v37 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v34[v35] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v34[v38] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v39 = &v34[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];
  *v39 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  *(v39 + 1) = 0;
  v40 = ObjectType;
  v65.receiver = v34;
  v65.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v65, "initWithFrame:", a1, a2, a3, a4);
  v42 = *&v41[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  v43 = v41;
  [v43 addSubview:v42];
  v44 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  [v43 addSubview:*&v43[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel]];
  [v43 addSubview:*&v43[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView]];
  [*&v43[v44] setTextAlignment:1];
  [*&v43[v44] setNumberOfLines:0];
  v45 = *&v43[v44];
  v46 = [v43 traitCollection];
  v47 = [v46 preferredContentSizeCategory];

  LOBYTE(v46) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v46)
  {
    v48 = 4;
  }

  else
  {
    v48 = 1;
  }

  [v45 setTextAlignment:{v48, v53}];
  sub_10002849C(&qword_10097B110);
  v49 = swift_allocObject();
  v63 = xmmword_1007B10D0;
  *(v49 + 16) = xmmword_1007B10D0;
  *(v49 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v49 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v67 = v40;
  v66[0] = v43;
  v50 = v43;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v66);
  v51 = swift_allocObject();
  *(v51 + 16) = v63;
  *(v51 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v51 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v67 = v40;
  v66[0] = v50;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v66);
  return v50;
}

uint64_t sub_10074C8D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for VerticalStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  VerticalStack.init(with:)();
  v24 = *&v13[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_wordmarkView];
  type metadata accessor for WordmarkView();
  Measurable.placeable.getter();
  VerticalStack.adding(_:with:)();
  sub_100007000(v21);
  v14 = *(v4 + 8);
  v14(v6, v3);
  v15 = *&v13[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v22 = type metadata accessor for DynamicTypeLabel();
  v23 = &protocol witness table for UILabel;
  v21[0] = v15;
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  VerticalStack.adding(_:with:)();

  v14(v9, v3);
  sub_100007000(v21);
  v18 = *&v16[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView];
  v22 = type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  v23 = &protocol witness table for CustomLayoutView;
  v21[0] = v18;
  a1[3] = v3;
  a1[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(a1);
  v19 = v18;
  VerticalStack.adding(_:with:)();
  v14(v12, v3);
  return sub_100007000(v21);
}

uint64_t sub_10074CB98(int a1, id a2)
{
  v2 = [a2 traitCollection];
  UITraitCollection.isRegularPad.getter();

  return VerticalStack.Properties.bottomSpacing.setter();
}

void sub_10074CD00()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView];
  CGAffineTransformMakeScale(&v6, 0.9, 0.9);
  [v1 setTransform:&v6];
  if (qword_10096EF98 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_100995880 timingParameters:0.0];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *&v6.tx = sub_10074D57C;
  *&v6.ty = v3;
  *&v6.a = _NSConcreteStackBlock;
  *&v6.b = 1107296256;
  *&v6.c = sub_100007A08;
  *&v6.d = &unk_1008D1260;
  v4 = _Block_copy(&v6);
  v5 = v0;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
  sub_1002F37D8();
}

uint64_t sub_10074CF54()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_10074C8D4(v5);
  sub_10002A400(v5, v5[3]);
  [v0 bounds];
  v1 = [v0 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v5);
  v2 = *&v0[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock];

  v2(v3);
}

id sub_10074D0FC()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel];
  v2 = [v0 traitCollection];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategory.isAccessibilityCategory.getter();
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

uint64_t sub_10074D204(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 2) = v4;
  *(v5 + 3) = v3;
  *(v5 + 4) = a1;
  v6 = (v1 + OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v6 = sub_10074D5D0;
  v6[1] = v5;

  v7 = *v6;

  (v7)(v8);
}

void sub_10074D318(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v8 = *(v6 + OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView);

      v9 = v5;
      sub_1002F54C8(v8, a3, v9);
    }
  }
}

double sub_10074D478()
{
  sub_10074C8D4(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

unint64_t sub_10074D524()
{
  result = qword_1009958D0;
  if (!qword_1009958D0)
  {
    type metadata accessor for ArcadeDownloadPackSuggestionsPagePrimaryActionKind();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009958D0);
  }

  return result;
}

id sub_10074D57C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

void sub_10074D5DC()
{
  v0 = type metadata accessor for DirectionalTextAlignment();
  v40 = *(v0 - 8);
  v41 = v0;
  __chkstk_darwin(v0);
  v42 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v39 = &v33 - v3;
  v37 = type metadata accessor for WordmarkView.Alignment();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontSource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for StaticDimension();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100975F00);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v34 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_wordmarkView;
  v15 = enum case for Wordmark.arcade(_:);
  v16 = type metadata accessor for Wordmark();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  if (qword_10096E340 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v18, qword_1009D1940);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v8, v33, v18);
  (*(v6 + 104))(v8, enum case for FontSource.useCase(_:), v5);
  v45 = v5;
  v46 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v44);
  (*(v6 + 16))(v21, v8, v5);
  StaticDimension.init(_:scaledLike:)();
  (*(v6 + 8))(v8, v5);
  (*(v35 + 104))(v38, enum case for WordmarkView.Alignment.leading(_:), v37);
  v22 = v36;
  v45 = v36;
  v46 = &protocol witness table for StaticDimension;
  v23 = sub_1000056E0(v44);
  (*(v9 + 16))(v23, v11, v22);
  v24 = objc_allocWithZone(type metadata accessor for WordmarkView());
  v25 = WordmarkView.init(frame:wordmark:referenceLineHeight:alignment:)();
  (*(v9 + 8))(v11, v22);
  v26 = v43;
  v27 = v33;
  *(v43 + v34) = v25;
  v28 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_titleLabel;
  v29 = v39;
  v20(v39, v27, v18);
  (*(v19 + 56))(v29, 0, 1, v18);
  (*(v40 + 104))(v42, enum case for DirectionalTextAlignment.none(_:), v41);
  v30 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v26 + v28) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_gamesView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v26 + v31) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = (v26 + OBJC_IVAR____TtC8AppStore37ArcadeDownloadPackSuggestionsPageView_impressionsUpdateBlock);
  *v32 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v32[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_10074DC18()
{
  result = qword_100974B60;
  if (!qword_100974B60)
  {
    type metadata accessor for LargeLockupCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974B60);
  }

  return result;
}

double sub_10074DC70()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.traitEnvironment.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10020F064();
  v5 = v4;
  swift_unknownObjectRelease_n();
  return v5;
}

uint64_t type metadata accessor for RoundedTitledButton()
{
  result = qword_1009958E0;
  if (!qword_1009958E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10074DDE4()
{
  result = type metadata accessor for StaticDimension();
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

char *sub_10074DE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v8 = qword_1009958D8;
  swift_beginAccess();
  v9 = type metadata accessor for StaticDimension();
  v10 = *(v9 - 8);
  v11 = *(v10 + 24);
  v12 = v7;
  v11(&v7[v8], a2, v9);
  swift_endAccess();
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v6, a1, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = v12;
  dispatch thunk of DynamicTypeButton.fontUseCase.setter();

  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_100028BB8();
  v16 = static UIColor.defaultButtonBackgroundColor.getter();
  [v15 _setBackgroundColor:v16];

  [v15 addTarget:v15 action:"didTapButton:" forControlEvents:64];
  v17 = static UIColor.defaultButtonTitleColor.getter();
  [v15 setTintColor:v17];

  (*(v10 + 8))(a2, v9);
  (*(v14 + 8))(a1, v13);
  return v15;
}

UIFontTextStyle sub_10074E120()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_1009D39B0);
  v1 = sub_1000056A8(v0, qword_1009D39B0);
  *v1 = UIFontTextStyleSubheadline;
  *(v1 + 8) = 0;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleSubheadline;
}

uint64_t sub_10074E1D0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D39C8);
  sub_1000056A8(v4, qword_1009D39C8);
  if (qword_10096EFA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D39B0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

double sub_10074E3AC(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDimension();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = a1;
  v21.super_class = ObjectType;
  v15 = a1;
  objc_msgSendSuper2(&v21, "sizeThatFits:", a2, a3);
  v17 = v16;
  v18 = qword_1009958D8;
  swift_beginAccess();
  (*(v12 + 16))(v14, &v15[v18], v11);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v17;
}

void sub_10074E5BC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_10074E638(char *result)
{
  v1 = *&result[qword_1009D39E0];
  if (v1)
  {
    v2 = result;
    v3 = sub_10000827C(v1);
    v1(v3);

    return sub_10001F63C(v1);
  }

  return result;
}

id sub_10074E6BC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

id sub_10074E724(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = qword_1009958D8;
  if (qword_10096EFA8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for StaticDimension();
  v13 = sub_1000056A8(v12, qword_1009D39C8);
  (*(*(v12 - 8) + 16))(&a1[v11], v13, v12);
  v14 = &a1[qword_1009D39E0];
  *v14 = 0;
  *(v14 + 1) = 0;
  v16.receiver = a1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t sub_10074E834()
{
  v1 = qword_1009958D8;
  v2 = type metadata accessor for StaticDimension();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_1009D39E0);

  return sub_10001F63C(v3);
}

uint64_t sub_10074E8B0(uint64_t a1)
{
  v2 = qword_1009958D8;
  v3 = type metadata accessor for StaticDimension();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_1009D39E0);

  return sub_10001F63C(v4);
}

uint64_t sub_10074E93C()
{
  result = BaseObjectGraph.optional<A>(_:)();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    type metadata accessor for ASDInAppPurchaseStateProvider();
    swift_allocObject();
    ASDInAppPurchaseStateProvider.init()();
    type metadata accessor for InAppPurchaseStateDataSource();
    swift_allocObject();
    InAppPurchaseStateDataSource.init(withStateProvider:)();
    InAppPurchaseStateDataSource.refreshData()();
    type metadata accessor for InAppPurchaseInstallPagePresenter();
    static InAppPurchaseInstallPagePresenter.use(stateDataSource:)();
    type metadata accessor for InAppPurchaseOfferButtonPresenter();
    static InAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
    type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
    static StreamlinedInAppPurchaseOfferButtonPresenter.use(stateDataSource:)();
  }

  return result;
}

uint64_t sub_10074EA28(void *a1)
{
  v55 = a1;
  v1 = type metadata accessor for ModernAppStateDataSource();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v67 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = v53 - v5;
  v56 = type metadata accessor for AppStoreType();
  v69 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DeviceAppQuery();
  *&v54 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ASDDeviceAppFetcher();
  v61 = *(v12 - 8);
  v13 = v61;
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074E93C();
  updated = type metadata accessor for DeviceUpdateRegistry();
  v66 = DeviceUpdateRegistry.__allocating_init()();
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  ASDDeviceAppFetcher.init(regulatoryLogger:)();
  v64 = type metadata accessor for DeviceAppStateDataSource();
  v16 = *(v9 + 104);
  v53[1] = v9 + 104;
  v16(v11, enum case for DeviceAppQuery.betaApps(_:), v8);
  v65 = v12;
  *(&v75 + 1) = v12;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v17 = sub_1000056E0(&v74);
  v18 = *(v13 + 16);
  v58 = v15;
  v18(v17, v15, v12);
  v59 = v18;
  v60 = v13 + 16;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v19 = enum case for AppStoreType.default(_:);
  v20 = v69[13];
  v69 += 13;
  v21 = v56;
  v20(v7, enum case for AppStoreType.default(_:), v56);
  v53[0] = v11;
  v57 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  v16(v11, enum case for DeviceAppQuery.allStoreApps(_:), v54);
  v22 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v23 = sub_1000056E0(&v74);
  v18(v23, v15, v22);
  *(&v72 + 1) = updated;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;
  v20(v7, v19, v21);

  v56 = DeviceAppStateDataSource.__allocating_init(query:fetcher:updateRegistry:store:)();
  type metadata accessor for PurchaseHistoryAppStateDataSource();

  v69 = PurchaseHistoryAppStateDataSource.__allocating_init(asPartOf:)();
  sub_10002849C(&qword_100995930);
  v24 = type metadata accessor for App.Kind();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v54 = xmmword_1007B10D0;
  *(v27 + 16) = xmmword_1007B10D0;
  v28 = enum case for App.Kind.store(_:);
  v29 = *(v25 + 104);
  v29(v27 + v26, enum case for App.Kind.store(_:), v24);
  v69 = v69;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  type metadata accessor for RemotePersonalizationAppStateDataSource();

  v30 = RemotePersonalizationAppStateDataSource.__allocating_init(asPartOf:)();
  v31 = swift_allocObject();
  *(v31 + 16) = v54;
  v29(v31 + v26, v28, v24);
  v55 = v30;
  v32 = v67;
  ModernAppStateDataSource.init(_:isIncremental:supportedAppKinds:)();
  sub_10002849C(&qword_100995938);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1007B73E0;
  v34 = type metadata accessor for RemoteInstalledAppStateDataSource();
  swift_allocObject();
  v35 = RemoteInstalledAppStateDataSource.init()();
  *(v33 + 56) = v34;
  *(v33 + 64) = &protocol witness table for RemoteInstalledAppStateDataSource;
  *(v33 + 32) = v35;
  v36 = type metadata accessor for WaitingAppStateDataSource();
  swift_allocObject();
  v37 = WaitingAppStateDataSource.init()();
  *(v33 + 96) = v36;
  *(v33 + 104) = &protocol witness table for WaitingAppStateDataSource;
  *(v33 + 72) = v37;
  v38 = v64;
  *(v33 + 136) = v64;
  *(v33 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 112) = v57;
  *(v33 + 176) = v38;
  *(v33 + 184) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 152) = v56;
  v39 = v62;
  *(v33 + 216) = v62;
  v40 = sub_10074F260();
  *(v33 + 224) = v40;
  v41 = sub_1000056E0((v33 + 192));
  v42 = v63;
  v43 = *(v63 + 16);
  v43(v41, v70, v39);
  *(v33 + 256) = v39;
  *(v33 + 264) = v40;
  v44 = sub_1000056E0((v33 + 232));
  v43(v44, v32, v39);
  v45 = type metadata accessor for DefaultAppStateDataSource();
  swift_allocObject();

  v46 = DefaultAppStateDataSource.init()();
  *(v33 + 296) = v45;
  *(v33 + 304) = &protocol witness table for DefaultAppStateDataSource;
  *(v33 + 272) = v46;
  v47 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v48 = sub_1000056E0(&v74);
  v49 = v58;
  v59(v48, v58, v47);
  *(&v72 + 1) = updated;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;

  v50 = makeModernAppStateController(deviceAppFetcher:updateRegistry:dataSources:)();

  v51 = *(v42 + 8);
  v51(v67, v39);
  v51(v70, v39);
  (*(v61 + 8))(v49, v47);
  sub_100007000(&v71);
  sub_100007000(&v74);
  return v50;
}

unint64_t sub_10074F260()
{
  result = qword_100995940;
  if (!qword_100995940)
  {
    type metadata accessor for ModernAppStateDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995940);
  }

  return result;
}

char *sub_10074F2C8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
  type metadata accessor for ArtworkView();
  *&v4[v17] = static ArtworkView.iconArtworkView.getter();
  v18 = OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel;
  if (qword_10096E288 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1718);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v5[OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle] = 0;
  v23 = type metadata accessor for BundleChildView();
  v34.receiver = v5;
  v34.super_class = v23;
  v24 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel;
  [*&v28[OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel] setTextAlignment:1];
  v30 = *&v28[v29];
  sub_100005744(0, &qword_100970180);
  v31 = v30;
  v32 = static UIColor.secondaryText.getter();
  [v31 setTextColor:v32];

  [v28 addSubview:*&v28[OBJC_IVAR____TtC8AppStore15BundleChildView_icon]];
  [v28 addSubview:*&v28[v29]];

  return v28;
}

id sub_10074F670()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39[-1] - v7;
  __chkstk_darwin(v9);
  v11 = &v39[-1] - v10;
  v12 = type metadata accessor for BundleChildView();
  v40.receiver = v0;
  v40.super_class = v12;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v13 = [v0 traitCollection];
  v14 = type metadata accessor for Feature();
  v39[3] = v14;
  v39[4] = sub_100085D7C();
  v15 = sub_1000056E0(v39);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100007000(v39);
  if (v14)
  {
    v16 = UITraitCollection.isSizeClassCompact.getter();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  ArtworkView.style.getter();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  Artwork.Style.orIfUnspecified(_:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  Artwork.Style.iconHeight(fromWidth:)();
  v20 = v19;
  v18(v11, v2);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v41);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v42);
  ArtworkView.frame.setter();
  v23 = *&v1[OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel];
  [v23 firstBaselineFromTop];
  v25 = v1[OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle];
  if (v25 == 2)
  {
    return [v23 setFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  v27 = 18.0 - v24;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v23 sizeThatFits:{v28, v29}];
  if (v25)
  {
    v32 = v30;
    v43.origin.x = MinX;
    v43.origin.y = MinY;
    v43.size.width = v17;
    v43.size.height = v20;
    MaxX = CGRectGetMaxX(v43);
    v44.origin.x = MinX;
    v44.origin.y = MinY;
    v44.size.width = v17;
    v44.size.height = v20;
    v34 = CGRectGetMinY(v44);
    if (v32 > 80.0)
    {
      v32 = 80.0;
    }

    v45.origin.x = MinX;
    v45.origin.y = MinY;
    v45.size.width = v17;
    v45.size.height = v20;
    return [v23 setFrame:{v27 + MaxX, v34, v32, CGRectGetHeight(v45)}];
  }

  else
  {
    v35 = v31;
    LayoutMarginsAware<>.layoutFrame.getter();
    v36 = CGRectGetMinX(v46);
    v47.origin.x = MinX;
    v47.origin.y = MinY;
    v47.size.width = v17;
    v47.size.height = v20;
    v37 = v27 + CGRectGetMaxY(v47);
    v48.origin.x = MinX;
    v48.origin.y = MinY;
    v48.size.width = v17;
    v48.size.height = v20;
    return [v23 setFrame:{v36, v37, CGRectGetWidth(v48), v35}];
  }
}

id sub_10074FB34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleChildView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10074FBEC()
{
  result = qword_100995988;
  if (!qword_100995988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995988);
  }

  return result;
}

void sub_10074FC40(uint64_t a1, char a2)
{
  v3 = type metadata accessor for Feature();
  v7[3] = v3;
  v7[4] = sub_100085D7C();
  v4 = sub_1000056E0(v7);
  (*(*(v3 - 8) + 104))(v4, enum case for Feature.voyager_bundles_2025A(_:), v3);
  LOBYTE(v3) = isFeatureEnabled(_:)();
  sub_100007000(v7);
  if (v3)
  {
    UITraitCollection.isSizeClassCompact.getter();
  }

  if (a2 == 2 || (a2 & 1) != 0)
  {
    Artwork.Style.iconHeight(fromWidth:)();
  }

  else
  {
    Artwork.Style.iconHeight(fromWidth:)();
    sub_100005744(0, &qword_1009730E0);
    if (qword_10096E288 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for FontUseCase();
    sub_1000056A8(v5, qword_1009D1718);
    v6 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    [v6 descender];
  }
}

void sub_10074FDCC()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
  type metadata accessor for ArtworkView();
  *(v0 + v9) = static ArtworkView.iconArtworkView.getter();
  v10 = OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel;
  if (qword_10096E288 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D1718);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v10) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *(v1 + OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10075003C()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork.Style();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29[-1] - v7;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v29[-1] - v11;
  v13 = [v0 traitCollection];
  v14 = type metadata accessor for Feature();
  v29[3] = v14;
  v29[4] = sub_100085D7C();
  v15 = sub_1000056E0(v29);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.voyager_bundles_2025A(_:), v14);
  LOBYTE(v14) = isFeatureEnabled(_:)();
  sub_100007000(v29);
  if (v14)
  {
    v16 = UITraitCollection.isSizeClassCompact.getter();

    if (v16)
    {
      v17 = 32.0;
    }

    else
    {
      v17 = 62.0;
    }
  }

  else
  {

    v17 = 62.0;
  }

  ArtworkView.style.getter();
  (*(v3 + 104))(v5, enum case for Artwork.Style.roundedRect(_:), v2);
  Artwork.Style.orIfUnspecified(_:)();
  v18 = *(v3 + 8);
  v18(v5, v2);
  v18(v8, v2);
  v19 = OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle;
  v20 = v1[OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle];
  v21 = [v1 traitCollection];
  sub_10074FC40(v12, v20);

  v18(v12, v2);
  v22 = *&v1[OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel];
  type metadata accessor for BundleChildView();
  LayoutMarginsAware<>.layoutFrame.getter();
  [v22 sizeThatFits:{v23, v24}];
  v26 = fmin(v25, 80.0);
  if ((v1[v19] & 1) == 0)
  {
    v26 = -0.0;
  }

  return v17 + v26;
}

id sub_1007505A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleContainerViewController.ContainerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100750664()
{
  type metadata accessor for ArticleContainerViewController.ContainerView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = &v4[OBJC_IVAR____TtCC8AppStore30ArticleContainerViewControllerP33_3306EAC28C78331905A290D09A08BB9913ContainerView_frameUpdatedCallback];
  v3 = *&v4[OBJC_IVAR____TtCC8AppStore30ArticleContainerViewControllerP33_3306EAC28C78331905A290D09A08BB9913ContainerView_frameUpdatedCallback];
  *v2 = sub_100750E6C;
  v2[1] = v1;

  sub_10001F63C(v3);

  [v0 setView:v4];
}

void sub_100750740()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100750794();
  }
}

void sub_100750794()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_allowTraitCollectionOverrides] != 1 || (v2 = [v0 traitCollection], v3 = UITraitCollection.isRegularPad.getter(), v2, (v3 & 1) == 0))
  {
    v15 = &v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_previousShouldOverrideTraitCollections];
    if ((v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_previousShouldOverrideTraitCollections] & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v22.origin.x = v7;
  v22.origin.y = v9;
  v22.size.width = v11;
  v22.size.height = v13;
  Width = CGRectGetWidth(v22);
  v15 = &v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_previousShouldOverrideTraitCollections];
  if (Width < 650.0 != v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_previousShouldOverrideTraitCollections])
  {
    if (Width < 650.0)
    {
      v16 = *&v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController];
      v17 = objc_opt_self();
      v18 = [v17 traitCollectionWithHorizontalSizeClass:2];
      [v16 setOverrideTraitCollection:v18 forChildViewController:*&v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_articleViewController]];

      v19 = 1;
      v20 = [v17 traitCollectionWithHorizontalSizeClass:1];
      [v1 setOverrideTraitCollection:v20 forChildViewController:v16];

LABEL_9:
      *v15 = v19;
      return;
    }

LABEL_8:
    v21 = *&v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController];
    [v21 setOverrideTraitCollection:0 forChildViewController:*&v1[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_articleViewController]];
    [v1 setOverrideTraitCollection:0 forChildViewController:v21];
    v19 = 0;
    goto LABEL_9;
  }
}

void sub_1007509F0()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController];
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setAutoresizingMask:18];

  v16 = [v0 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = v16;
  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    [v17 addSubview:v18];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_100750DA0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArticleContainerViewController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_allowTraitCollectionOverrides] = 0;
  v5[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_previousShouldOverrideTraitCollections] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_wrapperViewController] = a1;
  *&v5[OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_articleViewController] = a2;
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = a1;
  v7 = a2;
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v8 addChildViewController:{v6, v10.receiver, v10.super_class}];

  return v8;
}

unint64_t sub_100750E88()
{
  result = qword_100995A08;
  if (!qword_100995A08)
  {
    type metadata accessor for SearchEntityChangeAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995A08);
  }

  return result;
}

uint64_t sub_100750EE0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for SearchActionCalculator();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v10 = sub_100624370(Strong);

  v24 = v10;
  sub_100065AF0();
  v11 = v10;
  sub_10002849C(&qword_100991520);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    sub_1007386A4(&v21);
LABEL_6:
    sub_10002849C(&qword_1009764A0);
    sub_1007511F8();
    swift_allocError();
    v14 = Promise.__allocating_init(error:)();

    return v14;
  }

  sub_100005A38(&v21, v25);
  v12 = v26;
  v13 = v27;
  sub_10002A400(v25, v26);
  if (!(*(v13 + 8))(v12, v13))
  {
    sub_100007000(v25);
    goto LABEL_6;
  }

  sub_10002849C(&qword_1009764A0);
  v14 = Promise.__allocating_init()();
  v15 = type metadata accessor for GuidedSearchPresenter();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v20 = a2;
  *(&v22 + 1) = v15;
  v23 = &protocol witness table for GuidedSearchPresenter;

  SearchActionCalculator.init(optimizationTermProviding:)();
  v16 = SearchActionCalculator.searchAction(modifying:with:)();
  type metadata accessor for MetricsActivity();
  v17 = static MetricsActivity.current.getter();
  v19 = &v19;
  __chkstk_darwin(v17);
  *(&v19 - 4) = v3;
  *(&v19 - 3) = v16;
  *(&v19 - 2) = v20;
  *(&v19 - 1) = v14;
  dispatch thunk of MetricsActivity.performingContext(for:body:)();

  (*(v6 + 8))(v8, v5);
  sub_100007000(v25);
  return v14;
}

unint64_t sub_1007511F8()
{
  result = qword_100995A10;
  if (!qword_100995A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995A10);
  }

  return result;
}

unint64_t sub_100751260()
{
  result = qword_100995A18;
  if (!qword_100995A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995A18);
  }

  return result;
}

uint64_t sub_1007512DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 != enum case for Shelf.ContentType.action(_:))
  {
    if (v12 == enum case for Shelf.ContentType.unifiedMessage(_:))
    {
      v18 = ASKDeviceTypeGetCurrent();
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v27 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v24 = type metadata accessor for SearchUnifiedMessageCollectionViewCell(0);
      v25 = type metadata accessor for SearchUnifiedMessageCollectionViewCell;
      sub_1007517C8(&qword_100995AD8, type metadata accessor for SearchUnifiedMessageCollectionViewCell);
      sub_1007517C8(&qword_100995AE0, type metadata accessor for SearchUnifiedMessageCollectionViewCell);
      v26 = &unk_100995AE8;
      goto LABEL_13;
    }

LABEL_17:
    v24 = sub_100111D00(a1, a2);
    goto LABEL_18;
  }

  v13 = ASKDeviceTypeGetCurrent();
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v16 != v17)
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
      goto LABEL_10;
    }

    v13 = ASKDeviceTypeGetCurrent();
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    if (v28 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v30 != v31)
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v32)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

LABEL_10:
  v24 = type metadata accessor for SearchActionCollectionViewCell();
  v25 = type metadata accessor for SearchActionCollectionViewCell;
  sub_1007517C8(&qword_100995AF0, type metadata accessor for SearchActionCollectionViewCell);
  sub_1007517C8(&qword_100990368, type metadata accessor for SearchActionCollectionViewCell);
  v26 = &unk_100995AF8;
LABEL_13:
  sub_1007517C8(v26, v25);
LABEL_18:
  (*(v5 + 8))(v7, v4);
  return v24;
}

uint64_t sub_1007517C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100751810()
{

  return swift_deallocClassInstance();
}

double sub_1007518B8()
{
  v101 = sub_10002849C(&qword_10098DB40);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v75 - v0;
  v94 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for ReviewSummaryLayout();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for DynamicTextAppearance();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v75 - v5;
  v84 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TextAppearance();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v75 - v9;
  __chkstk_darwin(v10);
  v79 = &v75 - v11;
  v92 = type metadata accessor for LabelPlaceholder();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v75 - v14;
  v15 = type metadata accessor for AttributedString();
  v108 = *(v15 - 8);
  v109 = v15;
  __chkstk_darwin(v15);
  v107 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PageGrid();
  v105 = *(v17 - 1);
  v106 = v17;
  __chkstk_darwin(v17);
  v104 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Shelf.PresentationHints();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  v24 = type metadata accessor for ShelfLayoutContext();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v28 - 8);
  v111 = sub_10002849C(&qword_100975A48);
  v85 = *(v111 - 8);
  __chkstk_darwin(v111);
  v30 = &v75 - v29;
  type metadata accessor for ReviewSummary();
  sub_100752844(&qword_100975A50, &type metadata accessor for ReviewSummary);
  ItemLayoutContext.typedModel<A>(as:)();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  ItemLayoutContext.state.getter();
  StateLens.init(_:)();
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.shelfPresentationHints.getter();
  (*(v25 + 8))(v27, v24);
  static Shelf.PresentationHints.isSeeAllContext.getter();
  sub_100752844(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v32 = v103;
  v33 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v34 = *(v102 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_10013E4BC();
  StateLens<A>.subscript.getter();

  LODWORD(v103) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v104;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v105 + 8))(v35, v106);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v36 = v117;
  v37 = v107;
  ReviewSummary.attributedBodyWithTitle.getter();
  v76 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = UITraitCollection.isSizeClassRegular.getter();
  }

  v40 = sub_1006A1914(v37, v38 & 1, v36);
  (*(v108 + 8))(v37, v109);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_10010279C;
  *(v44 + 24) = v43;
  v115 = sub_1001027AC;
  v116 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v114 = &unk_1008D1598;
  v45 = _Block_copy(aBlock);
  v109 = v36;
  v46 = v41;

  [v40 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

  _Block_release(v45);
  LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

  if (v40)
  {
    __break(1u);
    goto LABEL_13;
  }

  v47 = v77;
  TextAppearance.init()();
  v48 = v78;
  TextAppearance.withLineBreakMode(_:)();
  v49 = *(v80 + 8);
  v50 = v81;
  v49(v47, v81);
  TextAppearance.withNumberOfLines(_:)();
  v49(v48, v50);
  LabelPlaceholder.Options.init(rawValue:)();
  v107 = v46;
  LabelPlaceholder.init(_:with:where:)();
  v51 = ReviewSummary.subtitle.getter();
  v53 = v52;
  v54 = ReviewSummary.subtitleArtwork.getter();
  v55 = v82;
  v108 = v31;
  ReviewSummary.subtitleArtworkAlignment.getter();
  v56 = sub_1006A25DC(v51, v53, v54, v55);

  (*(v83 + 8))(v55, v84);
  v106 = v56;
  v43 = v86;
  DynamicTextAppearance.init()();
  if (qword_10096DFC0 != -1)
  {
LABEL_13:
    swift_once();
  }

  v57 = type metadata accessor for FontUseCase();
  sub_1000056A8(v57, qword_1009D0EC0);
  DynamicTextAppearance.withFontUseCase(_:)();
  (*(v88 + 8))(v43, v89);
  LabelPlaceholder.Options.init(rawValue:)();
  v58 = v90;
  LabelPlaceholder.init(_:with:where:)();
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v59 = v94;
  v60 = sub_1000056A8(v94, qword_1009D3418);
  (*(v93 + 16))(v95, v60, v59);
  v61 = v92;
  v114 = v92;
  v115 = &protocol witness table for LabelPlaceholder;
  v62 = sub_1000056E0(aBlock);
  v63 = v91;
  v64 = *(v91 + 16);
  v65 = v110;
  v64(v62, v110, v61);
  v112[3] = v61;
  v112[4] = &protocol witness table for LabelPlaceholder;
  v66 = sub_1000056E0(v112);
  v64(v66, v58, v61);
  v67 = v96;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  sub_100752844(&qword_10098DB48, &type metadata accessor for ReviewSummaryLayout);
  v68 = v99;
  v69 = v98;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v70 = v109;
  v71 = v101;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v39 = v72;

  (*(v100 + 8))(v68, v71);
  (*(v97 + 8))(v67, v69);
  v73 = *(v63 + 8);
  v73(v58, v61);
  v73(v65, v61);
  (*(v85 + 8))(v76, v111);
  return v39;
}

uint64_t sub_100752844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10075288C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = xmmword_1007E1610;
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
      sub_10002849C(&unk_100984350);
      swift_arrayDestroy();
      sub_10002849C(&unk_100977380);
      sub_10015872C();
      v16 = BidirectionalCollection<>.joined(separator:)();

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
        result = sub_100033E38(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_100033E38((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[2 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for FadeInDynamicTypeButton()
{
  result = qword_100995BD0;
  if (!qword_100995BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100752AE4(double a1, double a2, double a3, double a4)
{
  *&v4[qword_100995BB8] = 0x4059000000000000;
  v4[qword_100995BC8] = 0;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11 = sub_1005F2B1C(v10);

  *&v4[qword_100995BC0] = v11;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v9 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 addSublayer:*&v12[qword_100995BC0]];

  v15 = [v12 layer];
  [v15 setMasksToBounds:0];

  return v12;
}

id sub_100752C88(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeInDynamicTypeButton();
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_100752CE4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FadeInDynamicTypeButton();
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "backgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setBackgroundColor:", v6);
  sub_100752D84(v8);
}

void sub_100752D84(void *a1)
{
  v2 = v1;
  v4 = [v2 backgroundColor];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_100005744(0, &qword_100970180);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 backgroundColor];
  if (!v8)
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  v10 = sub_1005F2B1C(v8);

  sub_1007534C4(v10);
}

id sub_100752EB4()
{
  v1 = qword_100995BC0;
  if (v0[qword_100995BC8])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[qword_100995BC8])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*&v0[qword_100995BC0] setStartPoint:{v2, 0.5}];
  [*&v0[v1] setEndPoint:{v3, 0.5}];

  return [v0 setNeedsLayout];
}

uint64_t sub_100752F48()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for FontUseCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FadeInDynamicTypeButton();
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  dispatch thunk of DynamicTypeButton.fontUseCase.getter();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10025BAF0(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100005744(0, &qword_1009730E0);
  v11 = [v0 traitCollection];
  v12 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  [v12 lineHeight];
  [v1 bounds];
  CGRectGetMinX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  [v1 bounds];
  CGRectGetHeight(v17);
  v13 = *&v1[qword_100995BC0];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(_:relativeTo:)();
  [v13 setFrame:?];

  return (*(v6 + 8))(v8, v5);
}

void sub_1007531FC(void *a1)
{
  v1 = a1;
  sub_100752F48();
}

void sub_100753244(void *a1)
{
  v5 = a1;
  v1 = [v5 backgroundColor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1005F2B1C(v1);
    sub_1007534C4(v3);

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

id sub_1007532DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeInDynamicTypeButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10075332C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = DynamicTypeButton.__allocating_init(useCase:)();
  v9 = sub_1005F2B1C(a2);
  v10 = qword_100995BC0;
  v11 = *&v8[qword_100995BC0];
  *&v8[qword_100995BC0] = v9;

  [v8 setBackgroundColor:a2];
  v12 = [v8 layer];
  [v12 addSublayer:*&v8[v10]];

  v13 = [v8 layer];
  [v13 setMasksToBounds:0];

  (*(v5 + 8))(a1, v4);
  return v8;
}

void sub_1007534C4(void *a1)
{
  v2 = qword_100995BC0;
  v5 = *&v1[qword_100995BC0];
  *&v1[qword_100995BC0] = a1;
  v3 = a1;
  [v5 frame];
  [v3 setFrame:?];
  v4 = [v1 layer];
  [v4 insertSublayer:*&v1[v2] below:v5];

  [v5 removeFromSuperlayer];
  [v1 setNeedsLayout];
}

unint64_t sub_1007535A8()
{
  result = qword_100995C20;
  if (!qword_100995C20)
  {
    type metadata accessor for GameCenterDenylistPlayerAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995C20);
  }

  return result;
}

uint64_t sub_100753600(void *a1)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for GameCenter();
    v6 = a1;
    GameCenterDenylistPlayerAction.contactId.getter();
    static GameCenter.addContactToDenyList(_:for:)();

    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    Promise.resolve(_:)();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for OSLogger();
    sub_1000056A8(v8, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_1007539A0();
    swift_allocError();
    Promise.reject(_:)();
  }
}

uint64_t sub_1007538B0(uint64_t *a1)
{
  v1 = *a1;
  sub_10002849C(&qword_1009764A0);
  v2 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v5[3] = sub_1000076C0();
  v5[4] = &protocol witness table for OS_dispatch_queue;
  v5[0] = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v5);
  return v2;
}

unint64_t sub_1007539A0()
{
  result = qword_100995C28;
  if (!qword_100995C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995C28);
  }

  return result;
}

unint64_t sub_100753A08()
{
  result = qword_100995C30;
  if (!qword_100995C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995C30);
  }

  return result;
}

uint64_t sub_100753A6C@<X0>(uint64_t *a1@<X8>)
{
  v19[0] = type metadata accessor for Shelf.ContentType();
  v2 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v19[1] && (v13 = ShelfHeader.hasTrailingArtwork.getter(), result = , (v13 & 1) != 0))
  {
    a1[3] = &type metadata for CGFloat;
    a1[4] = &protocol witness table for CGFloat;
    *a1 = 0x4040000000000000;
  }

  else
  {
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v12(v8, v5);
    v15 = v19[0];
    if (*(v2 + 88))(v4, v19[0]) == enum case for Shelf.ContentType.ribbonBar(_:) && (ShelfLayoutContext.isFirstShelf.getter())
    {
      if (qword_10096E6D0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for StaticDimension();
      v17 = sub_1000056A8(v16, qword_1009D2490);
      a1[3] = v16;
      a1[4] = &protocol witness table for StaticDimension;
      v18 = sub_1000056E0(a1);
      (*(*(v16 - 8) + 16))(v18, v17, v16);
    }

    else
    {
      a1[3] = &type metadata for Double;
      a1[4] = &protocol witness table for Double;
      *a1 = 0;
    }

    return (*(v2 + 8))(v4, v15);
  }

  return result;
}

uint64_t sub_100753DA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v132 = a2;
  v121 = type metadata accessor for FontSource();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_10002849C(&qword_100972A48);
  __chkstk_darwin(v126);
  v130 = &v116 - v4;
  v5 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v5 - 8);
  v127 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = &v116 - v8;
  v9 = type metadata accessor for Shelf.ContentType();
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9);
  v134 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v11 - 8);
  v124 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = &v116 - v14;
  __chkstk_darwin(v15);
  v125 = &v116 - v16;
  __chkstk_darwin(v17);
  v19 = &v116 - v18;
  __chkstk_darwin(v20);
  v22 = &v116 - v21;
  __chkstk_darwin(v23);
  v25 = &v116 - v24;
  v118 = type metadata accessor for FloatingPointRoundingRule();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_1009731F0);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v122 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v116 - v31;
  __chkstk_darwin(v33);
  v35 = &v116 - v34;
  v135 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v36 = *(v28 + 8);
  v36(v35, v27);
  v133 = v36;
  if (v136)
  {
    v37 = ShelfHeader.hasTrailingArtwork.getter();

    if (v37)
    {
      ShelfLayoutContext.shelf.getter();
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v133(v32, v27);
      v38 = v137;
      if (v137)
      {
      }

      v39 = v118;
      v40 = v117;
      v41 = v116;
      if (qword_10096E6B0 != -1)
      {
        swift_once();
      }

      v42 = type metadata accessor for StaticDimension();
      sub_1000056A8(v42, qword_1009D2430);
      ShelfLayoutContext.traitEnvironment.getter();
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v44 = v43;
      swift_unknownObjectRelease();
      v45 = *(v40 + 8);
      v45(v41, v39);
      if (qword_10096E6B8 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v42, qword_1009D2448);
      ShelfLayoutContext.traitEnvironment.getter();
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      v47 = v46;
      swift_unknownObjectRelease();
      result = (v45)(v41, v39);
      v49 = v44 + v47;
      if (v38)
      {
        v49 = v44;
      }

      v50 = v132;
      v132[3] = &type metadata for CGFloat;
      v50[4] = &protocol witness table for CGFloat;
      *v50 = v49;
      return result;
    }
  }

  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v22, &unk_10098FFB0);
  sub_100094E74(v19, v25);
  v51 = *(v28 + 48);
  if (v51(v25, 1, v27) == 1)
  {
    sub_10002B894(v25, &unk_10098FFB0);
    v52 = v130;
LABEL_19:
    v59 = v122;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v60 = v59;
    v61 = v133;
    v133(v60, v27);
    v63 = v123;
    v62 = v124;
    ShelfLayoutContext.surroundingShelves.getter();
    sub_10002B894(v63, &unk_10098FFB0);
    v64 = v125;
    sub_100094E74(v62, v125);
    if (v51(v64, 1, v27) == 1)
    {
      sub_10002B894(v64, &unk_10098FFB0);
      v65 = 1;
      v66 = v131;
    }

    else
    {
      swift_getKeyPath();
      v66 = v131;
      ReadOnlyLens.subscript.getter();

      v61(v64, v27);
      v65 = 0;
    }

    v68 = v127;
    v67 = v128;
    v69 = v52;
    v70 = v129;
    (*(v128 + 56))(v66, v65, 1, v129);
    v71 = *(v126 + 48);
    (*(v67 + 16))(v69, v134, v70);
    sub_100094EE4(v66, v69 + v71);
    if ((*(v67 + 48))(v69 + v71, 1, v70) == 1)
    {
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      v73 = (*(v67 + 88))(v69, v70);
    }

    else
    {
      sub_100094EE4(v69 + v71, v68);
      v74 = *(v67 + 88);
      v75 = v74(v68, v70);
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      if (v75 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        v76 = v120;
        *v120 = UIFontTextStyleBody;
        v77 = v119;
        v78 = v121;
        (*(v119 + 104))(v76, enum case for FontSource.textStyle(_:), v121);
        v79 = type metadata accessor for StaticDimension();
        v80 = v132;
        v132[3] = v79;
        v80[4] = &protocol witness table for StaticDimension;
        sub_1000056E0(v80);
        v138 = v78;
        v139 = &protocol witness table for FontSource;
        v81 = sub_1000056E0(&v136);
        (*(v77 + 16))(v81, v76, v78);
        v82 = UIFontTextStyleBody;
        StaticDimension.init(_:scaledLike:)();
        (*(v77 + 8))(v76, v78);
        sub_10002B894(v66, &unk_100992460);
        v83 = *(v67 + 8);
        v83(v134, v70);
        sub_10002B894(v69 + v71, &unk_100992460);
        return (v83)(v69, v70);
      }

      (*(v67 + 8))(v68, v70);
      v73 = v74(v69, v70);
    }

    if (v73 == v72)
    {
      if ((ShelfLayoutContext.isFirstShelf.getter() & 1) == 0)
      {
        v93 = ShelfLayoutContext.traitCollection.getter();
        [v93 userInterfaceIdiom];

        v94 = v120;
        *v120 = UIFontTextStyleBody;
        v95 = v119 + 104;
        v96 = v121;
        (*(v119 + 104))(v94, enum case for FontSource.textStyle(_:), v121);
        v97 = type metadata accessor for StaticDimension();
        v98 = v132;
        v132[3] = v97;
        v98[4] = &protocol witness table for StaticDimension;
        v135 = sub_1000056E0(v98);
        v99 = (v95 - 88);
        v100 = v67;
        v101 = (v95 - 96);
        v102 = (v100 + 8);
        v138 = v96;
        v139 = &protocol witness table for FontSource;
        v103 = sub_1000056E0(&v136);
        (*v99)(v103, v94, v96);
        v104 = UIFontTextStyleBody;
        StaticDimension.init(_:scaledLike:)();
        (*v101)(v94, v96);
        sub_10002B894(v131, &unk_100992460);
        (*v102)(v134, v70);
LABEL_44:
        v110 = v69 + v71;
        v111 = &unk_100992460;
        return sub_10002B894(v110, v111);
      }

      v84 = v120;
      *v120 = UIFontTextStyleBody;
      v85 = v119;
      v86 = v121;
      (*(v119 + 104))(v84, enum case for FontSource.textStyle(_:), v121);
      v87 = type metadata accessor for StaticDimension();
      v88 = v132;
      v132[3] = v87;
      v88[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(v88);
      v138 = v86;
      v139 = &protocol witness table for FontSource;
      v89 = sub_1000056E0(&v136);
      (*(v85 + 16))(v89, v84, v86);
      v90 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v85 + 8))(v84, v86);
    }

    else
    {
      if (v73 == enum case for Shelf.ContentType.reviewSummary(_:))
      {
        v91 = v132;
        v132[3] = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4038000000000000;
      }

      else
      {
        if (v73 == enum case for Shelf.ContentType.productRatings(_:))
        {
          v105 = ShelfLayoutContext.traitCollection.getter();
          v106 = UITraitCollection.isSizeClassCompact.getter();

          v107 = 52.0;
          if (v106)
          {
            v107 = 36.0;
          }

          v108 = v132;
          v132[3] = &type metadata for Double;
          v108[4] = &protocol witness table for Double;
          *v108 = v107;
          goto LABEL_43;
        }

        if (v73 != enum case for Shelf.ContentType.productReviewAction(_:))
        {
          if (v73 != enum case for Shelf.ContentType.arcadeFooter(_:) && v73 != enum case for Shelf.ContentType.uber(_:))
          {
            if (qword_10096E6E0 != -1)
            {
              swift_once();
            }

            v112 = type metadata accessor for StaticDimension();
            v113 = sub_1000056A8(v112, qword_1009D24C0);
            v114 = v132;
            v132[3] = v112;
            v114[4] = &protocol witness table for StaticDimension;
            v115 = sub_1000056E0(v114);
            (*(*(v112 - 8) + 16))(v115, v113, v112);
            sub_10002B894(v66, &unk_100992460);
            (*(v67 + 8))(v134, v70);
            v111 = &qword_100972A48;
            v110 = v69;
            return sub_10002B894(v110, v111);
          }

          v109 = v132;
          v132[3] = &type metadata for Double;
          v109[4] = &protocol witness table for Double;
          *v109 = 0;
          goto LABEL_43;
        }

        v91 = v132;
        v132[3] = &type metadata for Double;
        v91[4] = &protocol witness table for Double;
        v92 = 0x4042000000000000;
      }

      *v91 = v92;
    }

LABEL_43:
    sub_10002B894(v66, &unk_100992460);
    (*(v67 + 8))(v134, v70);
    goto LABEL_44;
  }

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v53 = v136;
  v133(v25, v27);
  v52 = v130;
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = ShelfHeader.hasTrailingArtwork.getter();

  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for StaticDimension();
  v56 = sub_1000056A8(v55, qword_1009D2430);
  v57 = v132;
  v132[3] = v55;
  v57[4] = &protocol witness table for StaticDimension;
  v58 = sub_1000056E0(v57);
  return (*(*(v55 - 8) + 16))(v58, v56, v55);
}

uint64_t sub_100754DA8@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for PageGrid();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10002849C(&qword_100972A48) - 8;
  __chkstk_darwin(v52);
  v51 = &v45 - v5;
  v6 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_10002849C(&unk_1009731F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = type metadata accessor for Shelf.ContentType();
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v49 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v19 = v14;
  v20 = v17;
  v21 = v51;
  v18(v19, v11);
  v22 = v10;
  v23 = v15;
  v24 = v50;
  v25 = *(v52 + 56);
  (*(v50 + 16))(v21, v20, v23);
  sub_100094EE4(v22, &v21[v25]);
  v26 = *(v24 + 88);
  v27 = v26(v21, v23);
  v28 = enum case for Shelf.ContentType.categoryBrick(_:);
  if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    sub_10002B894(&v21[v25], &unk_100992460);
    goto LABEL_3;
  }

  if ((*(v24 + 48))(&v21[v25], 1, v23) == 1)
  {
LABEL_14:
    if (v26(v21, v23) == enum case for Shelf.ContentType.action(_:))
    {
      v38 = v45;
      ShelfLayoutContext.contentPageGrid.getter();
      PageGrid.interRowSpace.getter();
      v40 = v39;
      (*(v46 + 8))(v38, v47);
      v41 = v53;
      *(v53 + 3) = &type metadata for CGFloat;
      *(v41 + 4) = &protocol witness table for CGFloat;
      *v41 = v40 * 0.5;
      sub_10002B894(v22, &unk_100992460);
      (*(v24 + 8))(v20, v23);
      v42 = &v21[v25];
      v43 = &unk_100992460;
    }

    else
    {
      v44 = v53;
      *(v53 + 3) = &type metadata for Double;
      *(v44 + 4) = &protocol witness table for Double;
      *v44 = 0.0;
      sub_10002B894(v22, &unk_100992460);
      (*(v24 + 8))(v20, v23);
      v43 = &qword_100972A48;
      v42 = v21;
    }

    return sub_10002B894(v42, v43);
  }

  v35 = v48;
  sub_100094EE4(&v21[v25], v48);
  if (v26(v35, v23) != v28)
  {
    (*(v24 + 8))(v35, v23);
    goto LABEL_14;
  }

  sub_10002B894(&v21[v25], &unk_100992460);
  (*(v24 + 8))(v21, v23);
LABEL_3:
  v29 = type metadata accessor for Feature();
  v54[3] = v29;
  v54[4] = sub_100085D7C();
  v30 = sub_1000056E0(v54);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.shelf_header(_:), v29);
  LOBYTE(v29) = isFeatureEnabled(_:)();
  sub_100007000(v54);
  if ((v29 & 1) != 0 && (ShelfLayoutContext.isFirstShelf.getter() & 1) == 0)
  {
    v36 = v53;
    *(v53 + 3) = &type metadata for Double;
    *(v36 + 4) = &protocol witness table for Double;
    *v36 = 0.0;
  }

  else
  {
    if (qword_10096E6F0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for StaticDimension();
    v32 = sub_1000056A8(v31, qword_1009D24F0);
    v33 = v53;
    *(v53 + 3) = v31;
    v33[4] = &protocol witness table for StaticDimension;
    v34 = sub_1000056E0(v33);
    (*(*(v31 - 8) + 16))(v34, v32, v31);
  }

  sub_10002B894(v22, &unk_100992460);
  return (*(v24 + 8))(v20, v23);
}

uint64_t sub_10075549C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v5 - 8);
  v7 = v32 - v6;
  v8 = type metadata accessor for VideoConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AspectRatio();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v37);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for UpsellBreakout();
  result = swift_dynamicCast();
  if (result)
  {
    v34 = a2;
    v17 = v36;
    v18 = UpsellBreakout.video.getter();
    if (v18)
    {
      v33 = v13;
      v19 = *(*(*(v35 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v19 && (v32[4] = v18, v20 = type metadata accessor for VideoView(), (v21 = swift_dynamicCastClass()) != 0))
      {
        v32[2] = v20;
        v32[3] = v17;
        v22 = qword_1009D2200;
        v23 = v21;
        swift_beginAccess();
        v24 = *(v9 + 16);
        v32[1] = v23;
        v24(v11, v23 + v22, v8);
        v25 = v19;
        VideoConfiguration.aspectRatio.getter();
        (*(v9 + 8))(v11, v8);
        v26 = v33;
        if ((*(v33 + 48))(v7, 1, v12) != 1)
        {
          (*(v26 + 32))(v15, v7, v12);
          AspectRatio.maxSize(filling:)();
          Video.preview.getter();
          Artwork.config(_:mode:prefersLayeredImage:)();

          sub_1007582E0(&unk_1009840E0, type metadata accessor for VideoView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          return (*(v26 + 8))(v15, v12);
        }

        sub_10002B894(v7, &unk_1009732A0);
      }

      else
      {
      }
    }

    if (UpsellBreakout.artwork.getter())
    {
      Artwork.config(_:mode:prefersLayeredImage:)();
      v27 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView;
      v28 = v35;
      v29 = *(v35 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v29 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v30 = *(v28 + v27);
      type metadata accessor for ArtworkView();
      sub_1007582E0(&qword_100970E80, &type metadata accessor for ArtworkView);
      v31 = v30;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }

  return result;
}

id sub_100755A34(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v130 = a3;
  v131 = a1;
  v128 = a2;
  v7 = type metadata accessor for BreakoutDetails.TextAlignment();
  v126 = *(v7 - 8);
  v127 = v7;
  __chkstk_darwin(v7);
  v124 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v125 = &v102 - v10;
  v11 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v11 - 8);
  v121 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v120 = &v102 - v14;
  v15 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v15 - 8);
  v119 = &v102 - v16;
  v17 = type metadata accessor for VideoControls();
  __chkstk_darwin(v17 - 8);
  v118 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v117 = &v102 - v20;
  v21 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v21 - 8);
  v116 = &v102 - v22;
  v114 = type metadata accessor for VideoFillMode();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v115 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for VideoConfiguration();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v129 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v26 - 8);
  v112 = &v102 - v27;
  v111 = type metadata accessor for OfferButtonSubtitlePosition();
  v106 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10002849C(&unk_1009701A0);
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v102 - v29;
  v30 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v30 - 8);
  v105 = &v102 - v31;
  v104 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v33 = &v102 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v34 - 8);
  v103 = &v102 - v35;
  v36 = type metadata accessor for UpsellBreakout.DisplayProperties();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for ComponentLayoutOptions();
  v41 = *(v40 - 8);
  *&v42 = __chkstk_darwin(v40).n128_u64[0];
  v44 = &v102 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = [a4 snapshotPageTraitEnvironment];
  *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_pageTraits] = v45;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v5 setNeedsLayout];
  swift_unknownObjectRelease();
  static ComponentLayoutOptions.isFirstSection.getter();
  sub_1007582E0(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
  v46 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v41 + 8))(v44, v40);
  UpsellBreakout.displayProperties.getter();
  v47 = UpsellBreakout.DisplayProperties.wantsBlur.getter();
  (*(v37 + 8))(v39, v36);
  v48 = v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_isBackgroundEffectViewHidden];
  v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_isBackgroundEffectViewHidden] = ((v46 | v47) & 1) == 0;
  if (((v46 | v47) & 1) == v48)
  {
    if ((v46 | v47))
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView] aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer]];
    }

    else
    {
      [*&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView] removeFromSuperview];
    }
  }

  v49 = *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView];
  v50 = v49[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect];
  v49[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsTopEffect] = v46 & 1;
  if ((v46 & 1) != v50)
  {
    v51 = 0.0;
    if (v46)
    {
      *&v51 = 1.0;
    }

    [*&v49[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_topGradient] setOpacity:v51];
    [v49 setNeedsDisplay];
  }

  v52 = UpsellBreakout.offerButtonAction.getter();
  v53 = v130;
  if (v52)
  {
    v54 = v52;
    v55 = UpsellBreakout.offerDisplayProperties.getter();
    if (v55)
    {
      v56 = v55;
      v57 = *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton];
      v58 = v102;
      v59 = v104;
      (*(v102 + 104))(v33, enum case for OfferButtonPresenterViewAlignment.center(_:), v104);
      (*(v58 + 56))(v105, 1, 1, v59);
      sub_1007582E0(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);

      v60 = v103;
      AccessibilityConditional.init(value:axValue:)();
      v61 = sub_10002849C(&unk_100973240);
      (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
      v62 = v106;
      v63 = v111;
      (*(v106 + 104))(v108, enum case for OfferButtonSubtitlePosition.below(_:), v111);
      (*(v62 + 56))(v112, 1, 1, v63);
      sub_1007582E0(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
      v64 = v107;
      AccessibilityConditional.init(value:axValue:)();
      sub_10064AFA4(v56, v54, 0, v60, v64, v53, 0, 0);

      (*(v109 + 8))(v64, v110);
      sub_10002B894(v60, &unk_100973230);
      [v57 setHidden:0];

      goto LABEL_14;
    }
  }

  [*&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_offerButton] setHidden:1];
LABEL_14:
  sub_100756B78(v131, v53);
  if (UpsellBreakout.video.getter())
  {
    (*(v113 + 104))(v115, enum case for VideoFillMode.scaleAspectFill(_:), v114);
    Video.preview.getter();
    Artwork.size.getter();
    v65 = v116;
    AspectRatio.init(_:_:)();

    v66 = type metadata accessor for AspectRatio();
    (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v67 = v119;
    Video.videoUrl.getter();
    v68 = type metadata accessor for URL();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v120;
    Video.templateMediaEvent.getter();
    v70 = v121;
    Video.templateClickEvent.getter();
    v71 = type metadata accessor for VideoView();
    sub_1007582E0(&qword_100973190, type metadata accessor for VideoView);
    v130 = v71;
    v72 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v70, &unk_100973A50);
    sub_10002B894(v69, &unk_100973A50);
    sub_10002B894(v67, &qword_100982460);
    sub_10002B894(&v132, &qword_10096FB90);
    v73 = *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer];
    v74 = OBJC_IVAR____TtC8AppStore9MediaView_contentContainer;
    v75 = *(v73 + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    if (v72)
    {
      v76 = v72;
      v77 = [v76 superview];
      if (v77)
      {
        v78 = v77;
        sub_100005744(0, &qword_100972EB0);
        v79 = v75;
        v128 = v5;
        v80 = v79;
        v81 = static NSObject.== infix(_:_:)();

        v5 = v128;
        if (v81)
        {
          [v76 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v86 = *&v75[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents];
    *&v75[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents] = v72;
    v87 = v72;
    sub_10047C6C8(v86);

    if (*(*(v73 + v74) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents))
    {
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        *(v88 + qword_100988CA8 + 8) = &off_1008CDCD0;
        swift_unknownObjectWeakAssign();
      }
    }

    (*(v122 + 8))(v129, v123);
  }

  else if (UpsellBreakout.artwork.getter())
  {

    v82 = *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_artworkView];
    v83 = *(*&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
    v84 = *(v83 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
    *(v83 + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) = v82;
    v85 = v82;
    sub_10047C6C8(v84);

    sub_10047B37C();
  }

  UpsellBreakout.buttonCallToAction.getter();
  if (v89)
  {
    v90 = *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView];
    v91 = String._bridgeToObjectiveC()();

    [v90 setText:v91];

    UpsellBreakout.details.getter();
    v92 = v125;
    BreakoutDetails.textAlignment.getter();

    v93 = OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsTextAlignment;
    swift_beginAccess();
    v95 = v126;
    v94 = v127;
    (*(v126 + 24))(&v5[v93], v92, v127);
    swift_endAccess();
    v96 = v124;
    (*(v95 + 16))(v124, &v5[v93], v94);
    v97 = BreakoutDetails.TextAlignment.textAlignment(in:)();
    v98 = *(v95 + 8);
    v98(v96, v94);
    [v90 setTextAlignment:v97];
    v98(v92, v94);
  }

  v99 = *&v5[OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_tapGestureRecognizer];
  v100 = UpsellBreakout.video.getter();
  if (v100)
  {
  }

  [v99 setEnabled:v100 != 0];
  return [v5 setNeedsLayout];
}

uint64_t sub_100756B78(uint64_t a1, uint64_t a2)
{
  v73 = a2;
  v3 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v3 - 8);
  v72 = &v61 - v4;
  v5 = sub_10002849C(&unk_1009732B0);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = &v61 - v6;
  v66 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v66);
  v65 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v64 = &v61 - v9;
  __chkstk_darwin(v10);
  v67 = (&v61 - v11);
  __chkstk_darwin(v12);
  v14 = (&v61 - v13);
  v15 = type metadata accessor for BreakoutDetails.BackgroundStyle();
  v62 = *(v15 - 8);
  v63 = v15;
  __chkstk_darwin(v15);
  v61 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UpsellBreakout.DisplayProperties();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v61 - v22;
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  __chkstk_darwin(v27);
  v29 = &v61 - v28;
  UpsellBreakout.displayProperties.getter();
  v30 = UpsellBreakout.DisplayProperties.backgroundColor.getter();
  v31 = *(v18 + 8);
  v31(v29, v17);
  v69 = a1;
  if (!v30)
  {
    v30 = [objc_opt_self() clearColor];
  }

  v32 = *(v74 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_mediaViewContainer);
  v33 = type metadata accessor for MediaView();
  v75.receiver = v32;
  v75.super_class = v33;
  objc_msgSendSuper2(&v75, "setBackgroundColor:", v30);
  [*(*&v32[OBJC_IVAR____TtC8AppStore9MediaView_contentContainer] + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents) setBackgroundColor:v30];
  v34 = *&v32[OBJC_IVAR____TtC8AppStore9MediaView_reflectionView];
  if (v34)
  {
    v35 = v34;
    [v35 setBackgroundColor:v30];
  }

  v36 = *(v74 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_backgroundEffectView);
  UpsellBreakout.displayProperties.getter();
  v37 = UpsellBreakout.DisplayProperties.wantsBlur.getter();
  v31(v26, v17);
  v38 = v36[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect];
  v36[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_wantsBottomEffect] = v37 & 1;
  if ((v37 & 1) != v38)
  {
    v39 = 0.0;
    if (v37)
    {
      v39 = 1.0;
    }

    [*&v36[OBJC_IVAR____TtC8AppStore28BreakoutBackgroundEffectView_blurView] setAlpha:v39];
    [v36 setNeedsDisplay];
  }

  v40 = *(v74 + OBJC_IVAR____TtC8AppStore18UpsellBreakoutView_buttonDetailsView);
  UpsellBreakout.displayProperties.getter();
  v41 = UpsellBreakout.DisplayProperties.descriptionColor.getter();
  v31(v23, v17);
  if (!v41)
  {
    UpsellBreakout.details.getter();
    v42 = v61;
    BreakoutDetails.backgroundStyle.getter();

    v41 = sub_1001F0A44();
    (*(v62 + 8))(v42, v63);
  }

  v43 = v66;
  [v40 setTextColor:v41];

  if (qword_10096D000 != -1)
  {
    swift_once();
  }

  v44 = sub_1000056A8(v43, qword_1009CDE88);
  sub_1000C2608(v44, v14);
  UpsellBreakout.displayProperties.getter();
  v45 = UpsellBreakout.DisplayProperties.badgeColor.getter();
  v31(v20, v17);

  *v14 = v45;
  UpsellBreakout.displayProperties.getter();
  v46 = UpsellBreakout.DisplayProperties.titleColor.getter();
  v31(v20, v17);

  v14[1] = v46;
  UpsellBreakout.displayProperties.getter();
  v47 = UpsellBreakout.DisplayProperties.descriptionColor.getter();
  v31(v20, v17);

  v14[2] = v47;
  UpsellBreakout.displayProperties.getter();
  v48 = UpsellBreakout.DisplayProperties.callToActionColor.getter();
  v31(v20, v17);

  v14[3] = v48;
  if (qword_10096CFF8 != -1)
  {
    swift_once();
  }

  v49 = sub_1000056A8(v43, qword_1009CDE70);
  v50 = v67;
  sub_1000C2608(v49, v67);
  UpsellBreakout.displayProperties.getter();
  v51 = UpsellBreakout.DisplayProperties.badgeColor.getter();
  v31(v20, v17);

  *v50 = v51;
  UpsellBreakout.displayProperties.getter();
  v52 = UpsellBreakout.DisplayProperties.titleColor.getter();
  v31(v20, v17);

  v50[1] = v52;
  UpsellBreakout.displayProperties.getter();
  v53 = UpsellBreakout.DisplayProperties.descriptionColor.getter();
  v31(v20, v17);

  v50[2] = v53;
  UpsellBreakout.displayProperties.getter();
  v54 = UpsellBreakout.DisplayProperties.callToActionColor.getter();
  v31(v20, v17);

  v50[3] = v54;
  sub_1000C2608(v14, v64);
  sub_1000C2608(v50, v65);
  sub_10002849C(&qword_100973F50);
  v55 = v68;
  Conditional<>.init(regularValue:compactValue:)();
  v56 = UpsellBreakout.details.getter();
  v58 = v70;
  v57 = v71;
  v59 = v72;
  (*(v70 + 16))(v72, v55, v71);
  (*(v58 + 56))(v59, 0, 1, v57);
  sub_1003A9938(v56, v59, v73);

  sub_10002B894(v59, &unk_100975ED0);
  (*(v58 + 8))(v55, v57);
  sub_1000C266C(v50);
  return sub_1000C266C(v14);
}

id sub_100757530()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100757668(void *a1, uint64_t a2)
{
  v5 = [a1 snapshotPageTraitEnvironment];
  *&v2[OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_pageTraits] = v5;
  v6 = [a1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = static UIContentSizeCategory.> infix(_:_:)();
  if (v6)
  {
    sub_10002849C(&qword_100973210);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007B15F0;
    *(v8 + 32) = [a1 traitCollection];
    v9 = objc_opt_self();
    *(v8 + 40) = [v9 traitCollectionWithPreferredContentSizeCategory:a2];
    sub_100005744(0, &qword_100972780);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v9 traitCollectionWithTraitsFromCollections:isa];
  }

  else
  {
    v11 = [a1 traitCollection];
  }

  *&v2[OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_traitCollection] = v11;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for UpsellBreakoutSizingTraitEnvironment();
  return objc_msgSendSuper2(&v13, "init");
}

double sub_100757820(double a1)
{
  v2 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  __chkstk_darwin(v2 - 8);
  v48 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UpsellBreakoutLayout();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v49 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LabelPlaceholderCompatibility();
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin(v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FloatingPointRoundingRule();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_allocWithZone(type metadata accessor for UpsellBreakoutSizingTraitEnvironment());
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  v16 = swift_unknownObjectRetain();
  v17 = sub_100757668(v16, v15);
  swift_unknownObjectRelease();

  v18 = qword_10096ED20;
  v52 = *&v17[OBJC_IVAR____TtC8AppStoreP33_CF26EB3C1E0829881961C198130D7D1F36UpsellBreakoutSizingTraitEnvironment_traitCollection];
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = sub_10002849C(&unk_1009732B0);
  sub_1000056A8(v19, qword_1009D3358);
  v57[0] = v17;
  v20 = v17;
  Conditional.evaluate(with:)();

  type metadata accessor for BreakoutDetailsView(0);
  v21 = UpsellBreakout.details.getter();
  v22 = v20;
  sub_1003A9F80(v21, v13, v22, v57);

  sub_10002A39C(v57, &v54);
  v23 = swift_allocObject();
  sub_1000FDA14(&v54, (v23 + 16));
  v24 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v25 = LayoutViewPlaceholder.init(measureWith:)();
  if (UpsellBreakout.offerButtonAction.getter() && (, UpsellBreakout.offerDisplayProperties.getter()))
  {
    v43 = v13;
    v26 = v8;

    if (qword_10096ED18 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for StaticDimension();
    sub_1000056A8(v27, qword_1009D3340);
    v28 = v22;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();

    (*(v44 + 8))(v10, v26);
    swift_allocObject();
    v29 = LayoutViewPlaceholder.init(representing:)();

    v13 = v43;
  }

  else
  {
    v29 = 0;
  }

  UpsellBreakout.buttonCallToAction.getter();
  if (v30)
  {
    sub_100005744(0, &qword_1009730E0);
    if (qword_10096E318 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for FontUseCase();
    sub_1000056A8(v31, qword_1009D18C8);
    static UIFont.preferredFont(forUseWith:compatibleWith:)();
    v32 = type metadata accessor for Feature();
    *(&v55 + 1) = v32;
    v56 = sub_1007582E0(&qword_100972E50, &type metadata accessor for Feature);
    v33 = sub_1000056E0(&v54);
    (*(*(v32 - 8) + 104))(v33, enum case for Feature.measurement_with_labelplaceholder(_:), v32);
    isFeatureEnabled(_:)();
    sub_100007000(&v54);
    v34 = v45;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*(v46 + 8))(v34, v47);
  }

  else
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
  }

  v35 = v22;
  sub_100680570(v35, v48, a1);

  swift_allocObject();
  v36 = LayoutViewPlaceholder.init(representing:)();
  v37 = &protocol witness table for LayoutViewPlaceholder;
  v53[18] = v24;
  v53[19] = &protocol witness table for LayoutViewPlaceholder;
  v53[14] = &protocol witness table for LayoutViewPlaceholder;
  v53[15] = v36;
  v53[13] = v24;
  v53[10] = v25;
  if (!v29)
  {
    v24 = 0;
    v37 = 0;
    v53[6] = 0;
    v53[7] = 0;
  }

  v53[5] = v29;
  v53[8] = v24;
  v53[9] = v37;
  sub_100645648(&v54, v53);

  v38 = v49;
  UpsellBreakoutLayout.init(metrics:backgroundMediaView:detailsView:actionButton:buttonDetailsView:)();
  v39 = v35;
  UpsellBreakoutLayout.measuredSize(fitting:in:)();
  v41 = v40;

  (*(v50 + 8))(v38, v51);
  sub_10002B894(&v54, &unk_10097E890);
  sub_100007000(v57);
  sub_1000C266C(v13);
  return v41;
}

id sub_100757FBC(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for UpsellBreakoutLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100680570(a3, v8, a1);
  type metadata accessor for UpsellBreakoutLayout();
  sub_1007582E0(&qword_100995CD0, &type metadata accessor for UpsellBreakoutLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 absoluteDimension:v10];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  v18 = [v11 fractionalWidthDimension:1.0];
  v19 = [v11 absoluteDimension:v10];
  v20 = [v14 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10002849C(&qword_100973210);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B0B70;
  *(v21 + 32) = v16;
  sub_100005744(0, &qword_10098EFE0);
  v22 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [v17 horizontalGroupWithLayoutSize:v20 subitems:isa];

  return v24;
}

uint64_t sub_1007582E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100758328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a1;
  v21[2] = a4;
  v6 = type metadata accessor for PageGrid.Direction();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10002849C(&qword_100974650);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v21 - v15;
  sub_100031660(a2, v21 - v15, &unk_10098FFB0);
  sub_100031660(a3, &v16[*(v14 + 56)], &unk_10098FFB0);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0);
  ReadOnlyLens.subscript.getter();
  v17 = v21[1];

  v18 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v22)
  {
    v18 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v7 + 104))(v12, *v18, v6);
  if (*(v17 + 16))
  {
    v19 = *(v17 + 17);
    (*(v7 + 16))(v9, v12, v6);
    sub_10076BDC8(v19);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_10069F96C(0.0);
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v7 + 8))(v12, v6);
  return sub_10002B894(v16, &qword_100974650);
}

uint64_t sub_10075867C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1007586D8()
{
  swift_getWitnessTable();

  return PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_1007587D4()
{
  swift_getWitnessTable();

  return PageGridCaching.supplementaryPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
}

uint64_t sub_100758910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, double a7@<D6>, double a8@<D7>)
{
  v21[5] = a4;
  v21[6] = a5;
  *&v21[3] = a7;
  *&v21[4] = a8;
  v21[1] = a6;
  v21[2] = a1;
  v11 = sub_10002849C(&qword_100974650);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v21 - v16;
  v18 = *v8;
  sub_100031660(a2, v21 - v16, &unk_10098FFB0);
  sub_100031660(a3, &v17[*(v12 + 56)], &unk_10098FFB0);
  v21[7] = v18;
  sub_100031660(v17, v14, &qword_100974650);
  v19 = *(v12 + 56);
  type metadata accessor for TopChartsSegmentPageGridProvider();
  PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
  sub_10002B894(v17, &qword_100974650);
  sub_10002B894(&v14[v19], &unk_10098FFB0);
  return sub_10002B894(v14, &unk_10098FFB0);
}

char *sub_100758AF0(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v100 = &v93 - v10;
  v11 = type metadata accessor for FontSource();
  v114 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SmallLockupLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v98 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v93 - v18;
  v20 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_materialBackground;
  *&v4[v20] = [objc_allocWithZone(UIVisualEffectView) init];
  v21 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_tapGestureRecognizer;
  *&v4[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v4[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_selectionHandler];
  v24 = type metadata accessor for CarouselItemLockupOverlay();
  *v23 = 0;
  *(v23 + 1) = 0;
  v122.receiver = v4;
  v122.super_class = v24;
  v25 = objc_msgSendSuper2(&v122, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 setOverrideUserInterfaceStyle:2];
  v99 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v29 setMaximumContentSizeCategory:?];
  v94 = v29;

  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v14, qword_1009D3798);
  v108 = v15;
  v31 = *(v15 + 16);
  v105 = v14;
  v96 = v15 + 16;
  v95 = v31;
  v31(v19, v30, v14);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v115 = v19;
  if (qword_10096E3D0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  v33 = sub_1000056A8(v32, qword_1009D1AF0);
  v97 = *(v32 - 8);
  v35 = v97 + 16;
  v34 = *(v97 + 16);
  v109 = v32;
  v113 = v34;
  v34(v13, v33, v32);
  v36 = v114;
  v37 = v114 + 104;
  v38 = enum case for FontSource.useCase(_:);
  v107 = *(v114 + 104);
  v107(v13);
  v104 = type metadata accessor for StaticDimension();
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_1000056E0(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v39 = sub_1000056E0(v116);
  v111 = *(v36 + 16);
  v110 = v36 + 16;
  v111(v39, v13, v11);
  StaticDimension.init(_:scaledLike:)();
  v41 = *(v36 + 8);
  v40 = v36 + 8;
  v106 = v41;
  v41(v13, v11);
  SmallLockupLayout.Metrics.headingSpace.setter();
  if (qword_10096E3D8 != -1)
  {
    swift_once();
  }

  v42 = v109;
  v112 = sub_1000056A8(v109, qword_1009D1B08);
  v113(v13, v112, v42);
  v102 = v38;
  (v107)(v13, v38, v11);
  v43 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_1000056E0(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v44 = sub_1000056E0(v116);
  v103 = v37;
  v101 = v35;
  v111(v44, v13, v11);
  StaticDimension.init(_:scaledLike:)();
  v106(v13, v11);
  v114 = v40;
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v45 = v113;
  v113(v13, v112, v42);
  v46 = v102;
  v47 = v107;
  (v107)(v13, v102, v11);
  v120 = v43;
  v121 = &protocol witness table for StaticDimension;
  sub_1000056E0(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v48 = sub_1000056E0(v116);
  v49 = v111;
  v111(v48, v13, v11);
  StaticDimension.init(_:scaledLike:)();
  v50 = v106;
  v106(v13, v11);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v45(v13, v112, v109);
  v47(v13, v46, v11);
  v51 = v104;
  v120 = v104;
  v121 = &protocol witness table for StaticDimension;
  sub_1000056E0(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v52 = sub_1000056E0(v116);
  v49(v52, v13, v11);
  StaticDimension.init(_:scaledLike:)();
  v50(v13, v11);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  v113(v13, v112, v109);
  v53 = v102;
  v54 = v107;
  (v107)(v13, v102, v11);
  v120 = v51;
  v121 = &protocol witness table for StaticDimension;
  sub_1000056E0(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v55 = sub_1000056E0(v116);
  v111(v55, v13, v11);
  StaticDimension.init(_:scaledLike:)();
  v56 = v106;
  v106(v13, v11);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  v57 = v53;
  v58 = v51;
  if (qword_10096E3E8 != -1)
  {
    swift_once();
  }

  v59 = v109;
  v60 = sub_1000056A8(v109, qword_1009D1B38);
  v113(v13, v60, v59);
  v54(v13, v57, v11);
  v120 = v58;
  v121 = &protocol witness table for StaticDimension;
  sub_1000056E0(v119);
  v117 = v11;
  v118 = &protocol witness table for FontSource;
  v61 = sub_1000056E0(v116);
  v111(v61, v13, v11);
  StaticDimension.init(_:scaledLike:)();
  v56(v13, v11);
  v62 = v115;
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  v114 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView;
  v63 = v94;
  v64 = *&v94[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView];
  v65 = v98;
  v66 = v105;
  v95(v98, v62, v105);
  v67 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  v68 = v108;
  v69 = *(v108 + 24);
  v70 = v64;
  v69(&v64[v67], v65, v66);
  swift_endAccess();
  [v70 setNeedsLayout];

  v71 = *(v68 + 8);
  v108 = v68 + 8;
  v71(v65, v66);
  v72 = v114;
  v73 = *(*&v63[v114] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v74 = v100;
  v113(v100, v112, v59);
  (*(v97 + 56))(v74, 0, 1, v59);
  v75 = v73;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v76 = [*(*&v63[v72] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  v77 = kCAFilterPlusL;
  [v76 setCompositingFilter:kCAFilterPlusL];

  v78 = *(*&v63[v72] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  sub_100005744(0, &qword_100970180);
  v79 = v78;
  v80 = static UIColor.secondaryText.getter();
  [v79 setTextColor:v80];

  [*(*&v63[v72] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v81 = [*(*&v63[v72] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel) layer];
  [v81 setCompositingFilter:v77];

  [*&v63[v72] setMaximumContentSizeCategory:v99];
  v82 = [*&v63[v72] layer];
  [v82 setAllowsGroupBlending:0];

  v83 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_materialBackground;
  v84 = *&v63[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_materialBackground];
  sub_10075AD1C(v84, 26.0);

  v85 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_tapGestureRecognizer;
  [*&v63[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_tapGestureRecognizer] setEnabled:0];
  v86 = *&v63[v85];
  v87 = v63;
  [v86 addTarget:v87 action:"handleSelection:"];
  v88 = *&v63[v85];
  [v88 setDelegate:v87];

  [v87 addGestureRecognizer:*&v63[v85]];
  [v87 addSubview:*&v63[v83]];
  v89 = [*&v63[v83] contentView];
  [v89 addSubview:*&v63[v72]];

  v90 = [*&v63[v83] contentView];
  v91 = [v90 layer];

  [v91 setAllowsGroupBlending:0];
  v71(v115, v105);
  return v87;
}

uint64_t sub_1007598D4()
{
  v1 = type metadata accessor for Center();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = type metadata accessor for CarouselItemLockupOverlay();
  v15.receiver = v0;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v6 = *&v0[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_materialBackground];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v6 setFrame:?];
  v7 = *&v0[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView];
  v14[3] = type metadata accessor for SmallLockupView();
  v14[4] = sub_100270970(&qword_10097BAF8, type metadata accessor for SmallLockupView);
  v14[0] = v7;
  sub_10002C0AC(v14, v12);
  v13[3] = type metadata accessor for Margins();
  v13[4] = &protocol witness table for Margins;
  sub_1000056E0(v13);
  v8 = v7;
  Margins.init(insets:child:)();
  static Center.Axis.neither.getter();
  Center.init(_:filling:)();
  sub_100007000(v14);
  LayoutMarginsAware<>.layoutFrame.getter();
  v9 = [v0 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  return (*(v2 + 8))(v4, v1);
}

double sub_100759B50(double a1, double a2)
{
  v5 = type metadata accessor for Center();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10070A300(v14);
  sub_10002C0AC(v14, v12);
  v13[3] = type metadata accessor for Margins();
  v13[4] = &protocol witness table for Margins;
  sub_1000056E0(v13);
  Margins.init(insets:child:)();
  static Center.Axis.neither.getter();
  Center.init(_:filling:)();
  sub_100007000(v14);
  v9 = sub_10075A910(v8, v2, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t sub_100759E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - v8;
  v10 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v19 - 8);
  v21 = &v43 - v20;
  result = HeroCarouselItemOverlay.lockup.getter();
  if (result)
  {
    v23 = result;
    v44 = v2;
    v24 = *&v2[OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView];
    v25 = sub_10002849C(&unk_100973240);
    (*(*(v25 - 8) + 56))(v21, 1, 1, v25);
    v26 = type metadata accessor for OfferStyle();
    (*(*(v26 - 8) + 56))(v18, 1, 1, v26);
    v27 = type metadata accessor for OfferEnvironment();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = sub_10002849C(&unk_1009701A0);
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    v29 = type metadata accessor for OfferTint();
    (*(*(v29 - 8) + 56))(v9, 1, 1, v29);
    sub_1004F3190(v23, v24, v21, a2, 0, 0, v18, v15, v9, v12);
    sub_10002B894(v9, &unk_100973AD0);
    v24[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v24 setNeedsLayout];
    sub_10002B894(v12, &unk_100970150);
    sub_10002B894(v15, &unk_100970160);
    sub_10002B894(v18, &qword_100973AE0);
    sub_10002B894(v21, &unk_100973230);
    v30 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
    v31 = *&v24[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v31)
    {
      v32 = qword_10096E3D0;
      v33 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for FontUseCase();
      v35 = sub_1000056A8(v34, qword_1009D1AF0);
      v36 = *(v34 - 8);
      (*(v36 + 16))(v6, v35, v34);
      (*(v36 + 56))(v6, 0, 1, v34);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v37 = *&v24[v30];
      if (v37)
      {
        v38 = objc_opt_self();
        v39 = v37;
        v40 = [v38 secondaryLabelColor];
        [v39 setTextColor:v40];

        v41 = *&v24[v30];
        if (v41)
        {
          v42 = [v41 layer];
          [v42 setCompositingFilter:kCAFilterPlusL];
        }
      }
    }

    [v44 setNeedsLayout];
  }

  return result;
}

void sub_10075A3E0()
{
  v1 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Artwork.Crop();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HeroCarouselItemOverlay.lockup.getter())
  {
    v6 = dispatch thunk of Lockup.artwork.getter();

    if (v6)
    {
      Artwork.crop.getter();
      v7 = Artwork.Crop.preferredContentMode.getter();
      (*(v3 + 8))(v5, v2);
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v8, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      Artwork.config(_:mode:prefersLayeredImage:)();
      v9 = *(v0 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView);
      v10 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      v11 = *(v9 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v11 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [*(v9 + v10) setContentMode:v7];
      v12 = *(v9 + v10);
      type metadata accessor for ArtworkView();
      sub_100270970(&qword_100970E80, &type metadata accessor for ArtworkView);
      v13 = v12;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }
  }
}

id sub_10075A6D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemLockupOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10075A798(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10000827C(a1);
  sub_10000827C(a1);
  sub_10001F63C(v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_10001F63C(a1);
}

void sub_10075A850()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  type metadata accessor for ArtworkView();
  sub_100270970(&qword_100970E80, &type metadata accessor for ArtworkView);
  v2 = v1;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_10075A910(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = type metadata accessor for Resize.Rule();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = type metadata accessor for Center();
  v47[3] = v21;
  v47[4] = &protocol witness table for Center;
  v22 = sub_1000056E0(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_100270A74(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10002C0AC(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = type metadata accessor for Resize();
    v46 = &protocol witness table for Resize;
    sub_1000056E0(v44);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  }

  else
  {
    MeasurementRange.init(minimum:maximum:)();
    v28 = v27;
    v30 = v29;
    sub_10002C0AC(v47, v43);
    MeasurementRange.init(minimum:maximum:)();
    v32 = v31;
    v34 = v33;
    v45 = type metadata accessor for Constrain();
    v46 = &protocol witness table for Constrain;
    sub_1000056E0(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    Constrain.init(_:width:height:)();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    MeasurementRange.constrain(_:)();
  }

  sub_10002A400(v44, v45);
  v37 = [a2 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v39 = v38;

  sub_100007000(v44);
  sub_100007000(v47);
  return v39;
}

void sub_10075AD1C(void *a1, double a2)
{
  sub_10002849C(&qword_100973210);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = [objc_opt_self() effectWithStyle:17];
  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setBackgroundEffects:isa];

  [a1 _setContinuousCornerRadius:a2];
  v6 = [a1 layer];
  [v6 setCornerRadius:a2];

  v7 = [a1 layer];
  [v7 setCornerCurve:kCACornerCurveContinuous];

  v8 = [a1 layer];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v8 setBorderWidth:1.0 / v11];
  v12 = [a1 layer];
  v13 = [objc_opt_self() whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.15];

  v15 = [v14 CGColor];
  [v12 setBorderColor:v15];
}

void sub_10075AF8C()
{
  v1 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_materialBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView;
  type metadata accessor for SmallLockupView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_selectionHandler);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

BOOL sub_10075B068(void *a1)
{
  v2 = [a1 touchesForView:*(*(v1 + OBJC_IVAR____TtC8AppStore25CarouselItemLockupOverlay_smallLockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton)];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  sub_100005744(0, &qword_100981660);
  sub_10008DB40();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *(v4 + 16);
  }

  return v5 == 0;
}

uint64_t sub_10075B134@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v20 = a1;
  v21 = &type metadata for EmptyView;
  v22 = a2;
  v23 = &protocol witness table for EmptyView;
  v7 = type metadata accessor for UIHostingConfiguration();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v18[-v12];
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  UIHostingConfiguration.margins(_:_:)();
  v14 = *(v8 + 8);
  v14(v10, v7);
  v19 = v3;
  v15 = sub_10002D1A8(&qword_100995E50);
  v16 = sub_10075B65C();
  v20 = a1;
  v21 = v15;
  v22 = a2;
  v23 = v16;
  a3[3] = type metadata accessor for UIHostingConfiguration();
  a3[4] = swift_getWitnessTable();
  sub_1000056E0(a3);
  UIHostingConfiguration.background<A>(content:)();
  return (v14)(v13, v7);
}

uint64_t sub_10075B334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ProductPageCardBackgroundView.init()();
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v6 = (a2 + *(sub_10002849C(&qword_100995E50) + 36));
  *v6 = KeyPath;
  v6[1] = v5;
}

void sub_10075B3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1003B1D54(a1, a2, a3, a4, a5);
  v6 = [v5 contentView];
  v7 = [v6 layer];

  static Sizing.productPageCardCornerRadius.getter();
  [v7 setCornerRadius:?];

  v8 = [v5 contentView];
  sub_100028BB8();
  v9 = objc_opt_self();
  isa = UIColor.init(light:dark:)([v9 systemBackgroundColor], objc_msgSend(v9, "secondarySystemBackgroundColor")).super.isa;
  [v8 setBackgroundColor:isa];
}

id sub_10075B5C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProductPageCardViewHostingCell()
{
  result = qword_100995E40;
  if (!qword_100995E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10075B65C()
{
  result = qword_100995E58;
  if (!qword_100995E58)
  {
    sub_10002D1A8(&qword_100995E50);
    sub_10075B6E8();
    sub_10075B740();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995E58);
  }

  return result;
}

unint64_t sub_10075B6E8()
{
  result = qword_100995E60;
  if (!qword_100995E60)
  {
    type metadata accessor for ProductPageCardBackgroundView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100995E60);
  }

  return result;
}

unint64_t sub_10075B740()
{
  result = qword_100993090;
  if (!qword_100993090)
  {
    sub_10002D1A8(&qword_100982F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993090);
  }

  return result;
}

uint64_t sub_10075B7A4(uint64_t a1)
{

  return a1;
}

UIColor sub_10075B800()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(light:dark:)([objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.11372549, 0.137254902, 0.176470588, 1.0)).super.isa;
  qword_1009D3A08 = result.super.isa;
  return result;
}

UIColor sub_10075B8A4()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  result.super.isa = UIColor.init(light:dark:)(v2, v4).super.isa;
  qword_1009D3A10 = result.super.isa;
  return result;
}

uint64_t sub_10075B978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ItemBackground();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIBackgroundConfiguration();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a2, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 != enum case for ItemBackground.ad(_:))
  {
    if (v15 != enum case for ItemBackground.insetAd(_:))
    {
      if (v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
      {
        (*(v11 + 56))(a3, 1, 1, v10);
        return (*(v7 + 8))(v9, v6);
      }

      goto LABEL_12;
    }

LABEL_5:
    (*(v7 + 8))(v9, v6);
    static UIBackgroundConfiguration.clear()();
    if (qword_10096EFB0 != -1)
    {
      swift_once();
    }

    v17 = qword_1009D3A08;
    UIBackgroundConfiguration.backgroundColor.setter();
    UIBackgroundConfiguration.backgroundColor.setter();
    if (qword_10096EFB8 != -1)
    {
      swift_once();
    }

    v18 = qword_1009D3A10;
    UIBackgroundConfiguration.strokeColor.setter();
    UIBackgroundConfiguration.strokeWidth.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    goto LABEL_15;
  }

  PageGrid.columnCount.getter();
  if (v16 > 1.0)
  {
    goto LABEL_5;
  }

LABEL_12:
  static UIBackgroundConfiguration.clear()();
  if (qword_10096EFB0 != -1)
  {
    swift_once();
  }

  v20 = qword_1009D3A08;
  UIBackgroundConfiguration.backgroundColor.setter();
  (*(v7 + 8))(v9, v6);
LABEL_15:
  sub_10075BE38(a1, a2);
  UIBackgroundConfiguration.backgroundInsets.setter();
  (*(v11 + 32))(a3, v14, v10);
  return (*(v11 + 56))(a3, 0, 1, v10);
}

uint64_t sub_10075BD0C()
{
  static UIBackgroundConfiguration.clear()();
  if (qword_10096EFB0 != -1)
  {
    swift_once();
  }

  v0 = qword_1009D3A08;
  UIBackgroundConfiguration.backgroundColor.setter();
  UIBackgroundConfiguration.backgroundColor.setter();
  if (qword_10096EFB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1009D3A10;
  UIBackgroundConfiguration.strokeColor.setter();
  UIBackgroundConfiguration.strokeWidth.setter();
  UIBackgroundConfiguration.cornerRadius.setter();
  return UIBackgroundConfiguration.backgroundInsets.setter();
}

double sub_10075BE38(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ItemBackground();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  PageGrid.columnCount.getter();
  if (v7 <= 1.0)
  {
    (*(v4 + 16))(v6, a2, v3);
    if ((*(v4 + 88))(v6, v3) == enum case for ItemBackground.insetAd(_:))
    {
      return -10.0;
    }

    else
    {
      PageGrid.interRowSpace.getter();
      v9 = v10 * -0.5;
      PageGrid.horizontalMargins.getter();
      PageGrid.interRowSpace.getter();
      PageGrid.horizontalMargins.getter();
      (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    PageGrid.interRowSpace.getter();
    v9 = v8 * -0.5;
    PageGrid.interColumnSpace.getter();
    PageGrid.interRowSpace.getter();
    PageGrid.interColumnSpace.getter();
  }

  return v9;
}

double sub_10075C02C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v72 = a2;
  v73 = a1;
  v66 = type metadata accessor for PageGrid();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for LabelPlaceholderCompatibility();
  v68 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v54 - v6;
  __chkstk_darwin(v7);
  v55 = &v54 - v8;
  v9 = type metadata accessor for AchievementGroupView.Size();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Achievement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for AchievementSummaryLayout();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DA00 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v17, qword_1009CFC78);
  v23 = *(v18 + 16);
  v58 = v20;
  v23(v20, v22, v17);
  (*(v14 + 16))(v16, v72, v13);
  AchievementSummary.totalAchievements.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v24 = v80;
  v25 = UITraitCollection.isSizeClassCompact.getter();

  v26 = &enum case for AchievementGroupView.Size.phone(_:);
  if ((v25 & 1) == 0)
  {
    v26 = &enum case for AchievementGroupView.Size.pad(_:);
  }

  (*(v10 + 104))(v12, *v26, v9);
  v27 = type metadata accessor for AchievementGroupView();
  v28 = objc_allocWithZone(v27);
  v29 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
  v81 = v27;
  v82 = &protocol witness table for UIView;
  v80 = v29;
  v30 = AchievementSummary.completedAchievements.getter();
  v31._object = 0x80000001008005F0;
  v31._countAndFlagsBits = 0xD000000000000032;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  localizedStringWithCount(_:count:comment:)(v31, v30, v32);
  v33 = sub_1000367E8();
  if (qword_10096E040 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for FontUseCase();
  sub_1000056A8(v34, qword_1009D1040);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v35 = type metadata accessor for Feature();
  v79[3] = v35;
  v72 = sub_10075CFCC(&qword_100972E50, &type metadata accessor for Feature);
  v79[4] = v72;
  v36 = sub_1000056E0(v79);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = v38;
  v69 = v37 + 104;
  v38(v36);
  isFeatureEnabled(_:)();
  v67 = v33;
  sub_100007000(v79);
  v39 = v55;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v40 = v61;
  v68 = *(v68 + 8);
  (v68)(v39, v61);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v41 = v78[0];
  sub_10059DF60();

  if (qword_10096E048 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v34, qword_1009D1058);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v78[3] = v35;
  v78[4] = v72;
  v42 = sub_1000056E0(v78);
  v70(v42, v71, v35);
  isFeatureEnabled(_:)();
  sub_100007000(v78);
  v43 = v57;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v68)(v43, v40);
  AchievementSummary.completedText.getter();
  if (qword_10096E050 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v34, qword_1009D1070);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static UIFont.preferredFont(forUseWith:in:)();
  swift_unknownObjectRelease();
  v77[3] = v35;
  v77[4] = v72;
  v44 = sub_1000056E0(v77);
  v70(v44, v71, v35);
  isFeatureEnabled(_:)();
  sub_100007000(v77);
  v45 = v59;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v68)(v45, v40);
  v46 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v47 = LayoutViewPlaceholder.init(representing:)();
  v76 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v46;
  v74 = v47;
  v48 = v60;
  AchievementSummaryLayout.init(metrics:achievementGroupView:numberCompletedLabel:outOfTotalLabel:completedLabel:chevronView:)();
  swift_getKeyPath();
  v49 = v64;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v65 + 8))(v49, v66);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_10075CFCC(&unk_10098CEA0, &type metadata accessor for AchievementSummaryLayout);
  v50 = v63;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v52 = v51;
  swift_unknownObjectRelease();
  (*(v62 + 8))(v48, v50);
  return v52;
}

uint64_t sub_10075CB98(uint64_t a1)
{
  v2 = type metadata accessor for AchievementSummaryLayout.Metrics();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageGrid();
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Achievement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  type metadata accessor for AchievementSummary();
  sub_10075CFCC(&unk_10098CE40, &type metadata accessor for AchievementSummary);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v16 = v26;
  if (v26)
  {
    v17 = AchievementSummary.achievements.getter();
    if (*(v17 + 16))
    {
      (*(v9 + 16))(v11, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v8);

      (*(v9 + 32))(v14, v11, v8);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v18 = v26;
      v19 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v19)
      {
        sub_10075C02C(v16, v14, a1);
      }

      else
      {
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        PageGrid.componentMeasuringSize(spanning:)();
        (*(v23 + 8))(v7, v5);
        if (qword_10096DA00 != -1)
        {
          swift_once();
        }

        v20 = v25;
        v21 = sub_1000056A8(v25, qword_1009CFC78);
        v22 = v24;
        (*(v24 + 16))(v4, v21, v20);
        sub_100079F24();
        static AchievementSummaryLayout.estimatedMeasurements(fitting:using:in:)();
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

uint64_t sub_10075CFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10075D014(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HorizontalRule.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v8], a1, v4);
  swift_endAccess();
  (*(v5 + 16))(v7, &v2[v8], v4);
  v9.super.super.isa = *&v2[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v2[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v2 traitCollection];
  HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(v9, v10, v11);

  v12 = *(v5 + 8);
  v12(v7, v4);
  [v2 setNeedsDisplay];
  return (v12)(a1, v4);
}

char *sub_10075D1D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer;
  *&v5[v13] = [objc_allocWithZone(CAShapeLayer) init];
  v14 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_style;
  v15 = enum case for HorizontalRule.Style.solid(_:);
  v16 = type metadata accessor for HorizontalRule.Style();
  (*(*(v16 - 8) + 104))(&v5[v14], v15, v16);
  v17 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineColor;
  sub_100005744(0, &qword_100970180);
  *&v5[v17] = static UIColor.defaultLine.getter();
  v23.receiver = v5;
  v23.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = [v18 contentView];
  v21 = [v20 layer];

  [v21 addSublayer:*&v18[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer]];
  return v18;
}

void sub_10075D560()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HorizontalRule.Style();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer];
  [v17 setFrame:{v10, v12, v14, v16}];
  v18 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v18], v3);
  v19 = [v1 traitCollection];
  v20 = HorizontalRule.Style.path(in:traitCollection:)();

  (*(v4 + 8))(v7, v3);
  [v17 setPath:v20];
}

uint64_t sub_10075D7A8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HorizontalRule.Style();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "_dynamicUserInterfaceTraitDidChange", v5);
  v8 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v4 + 16))(v7, &v1[v8], v3);
  v9.super.super.isa = *&v1[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer];
  v10 = [*&v1[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineColor] CGColor];
  v11 = [v1 traitCollection];
  HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(v9, v10, v11);

  return (*(v4 + 8))(v7, v3);
}

uint64_t type metadata accessor for HorizontalRuleCollectionViewCell()
{
  result = qword_100995EA0;
  if (!qword_100995EA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10075DA68()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HorizontalRule.Style();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_10075DB40(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HorizontalRule.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v2[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineColor];
  *&v2[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineColor] = a1;
  v9 = a1;

  v10 = OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v10], v4);
  v11.super.super.isa = *&v2[OBJC_IVAR____TtC8AppStore32HorizontalRuleCollectionViewCell_lineLayer];
  v12 = [v9 CGColor];
  v13 = [v2 traitCollection];
  HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(v11, v12, v13);

  (*(v5 + 8))(v7, v4);
  return [v2 setNeedsDisplay];
}

char *sub_10075DCD8(char *a1, __int128 *a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = a2[5];
  v63 = a2[4];
  v64 = v10;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v12 = a2[1];
  v59 = *a2;
  v60 = v12;
  v13 = a2[3];
  v61 = a2[2];
  v62 = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer;
  *&v5[v14] = [objc_allocWithZone(AVPlayerLayer) init];
  swift_unknownObjectWeakAssign();
  v49 = a1;
  if (a1)
  {
    a1 = *&a1[qword_100988CC0];
  }

  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  *&v5[v15] = [objc_allocWithZone(CALayer) init];
  *&v5[OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext] = 0;
  v5[OBJC_IVAR____TtC8AppStore10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC8AppStore10MirrorView_contentsScaleFactor] = a3;
  *&v5[OBJC_IVAR____TtC8AppStore10MirrorView_contentsVerticalOffset] = a4;
  v58.receiver = v5;
  v58.super_class = type metadata accessor for MirrorView();
  v16 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setClipsToBounds:1];
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer;
  [*&v16[OBJC_IVAR____TtC8AppStore10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v18) = 1.0;
  [*&v16[v17] setOpacity:v18];
  [*&v16[v17] setAnchorPoint:{0.5, 0.5}];
  v19 = qword_10096D2F8;
  v20 = *&v16[v17];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10002849C(&unk_10097A780);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v20 setActions:isa];

  v22 = *&v16[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainScreen];
  [v25 scale];
  v27 = v26;

  [v24 setContentsScale:v27];
  [*&v16[v17] setMasksToBounds:1];
  v28 = *&v16[v17];
  v29 = a2[5];
  v54 = a2[4];
  v55 = v29;
  v30 = a2[7];
  v56 = a2[6];
  v57 = v30;
  v31 = a2[1];
  v50 = *a2;
  v51 = v31;
  v32 = a2[3];
  v52 = a2[2];
  v53 = v32;
  [v28 setTransform:&v50];
  sub_1001DA558();
  v33 = [v16 layer];

  [v33 addSublayer:*&v16[v17]];
  v34 = v16;
  [v34 setClipsToBounds:1];
  [v34 setUserInteractionEnabled:0];
  v35 = OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer;
  [*&v34[OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer] setAnchorPoint:{0.5, 0.5}];
  v36 = *&v34[v35];
  v37 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v36 setActions:v37];

  v38 = *&v34[v35];
  v39 = [v23 mainScreen];
  [v39 scale];
  v41 = v40;

  [v38 setContentsScale:v41];
  [*&v34[v35] setMasksToBounds:1];
  [*&v34[v35] setContentsGravity:kCAGravityResizeAspectFill];
  v42 = *&v34[v35];
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  [v42 setTransform:&v50];
  sub_10075E8D4();
  v43 = [v34 layer];
  v44 = *&v16[v17];
  v45 = *&v34[v35];
  v46 = v44;

  [v43 insertSublayer:v45 below:v46];
  sub_10002849C(&qword_10097B110);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007B10D0;
  *(v47 + 32) = type metadata accessor for _UITraitHDRHeadroomUsage();
  *(v47 + 40) = &protocol witness table for _UITraitHDRHeadroomUsage;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v34;
}

void sub_10075E2A8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_unknownObjectRelease();
      if (v5 == v1)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;

          if (v7 == a1)
          {
            return;
          }
        }

        else if (!a1)
        {
          return;
        }

        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_1004DFBEC(0, 0);
        }
      }
    }
  }
}

double sub_10075E580(double a1)
{
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for AspectRatio();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = qword_1009D2200;
    v17 = Strong;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v17[v16], v2);

    VideoConfiguration.aspectRatio.getter();
    (*(v3 + 8))(v5, v2);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      AspectRatio.maxSize(filling:)();
      a1 = v18;
LABEL_8:
      (*(v10 + 8))(v14, v9);
      return a1;
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_100072810(v8);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 image];

    if (v21)
    {
      [v21 size];
      v14 = v24;
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(filling:)();
      a1 = v22;

      goto LABEL_8;
    }
  }

  return a1;
}

void sub_10075E8D4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_100988CC0);
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    if (!v5)
    {

      goto LABEL_11;
    }

    sub_10019FDD0();
    v8 = v5;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {

      goto LABEL_12;
    }

LABEL_9:
    v10 = String._bridgeToObjectiveC()();
    v11 = OBJC_IVAR____TtC8AppStore10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v5 removeObserver:v1 forKeyPath:v10 context:v1 + v11];
    swift_endAccess();

LABEL_11:
    sub_1001DA558();

    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_unknownObjectRetain();
    sub_1004DFBEC(v14, &off_1008D1780);
  }

  v15 = *(v1 + OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer);
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16 && (v17 = v16, v18 = [v16 backgroundColor], v17, v18))
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v15 setBackgroundColor:v19];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + qword_100988CE0);
  }

  else
  {
    v22 = 0;
  }

  [v15 setPlayer:v22];

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23 && (v24 = *(v23 + qword_100988CE8), v25 = v23, v26 = v24, v25, v24))
  {
    v27 = [v26 videoGravity];
  }

  else
  {
    v27 = AVLayerVideoGravityResizeAspectFill;
  }

  [v15 setVideoGravity:v27];
}

void sub_10075EBB0()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer);
}

id sub_10075EBF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMirrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10075EC94(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC8AppStore15VideoMirrorView_videoLayer];
  v2 = [a1 traitCollection];
  v3 = [v2 _headroomUsage];

  v4 = &CADynamicRangeHigh;
  if (v3 != 1)
  {
    v4 = &CADynamicRangeConstrainedHigh;
  }

  v5 = *v4;
  [v1 setPreferredDynamicRange:v5];
}

id sub_10075ED44(void *a1)
{
  [a1 frame];

  return [a1 setFrame:?];
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityLayout(in:)()
{
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    return UITraitCollection.isSizeClassCompact.getter() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t AppEventDetailPageLayout.Metrics.init(artworkAspectRatio:contentHorizontalMargin:formattedDateTopMargin:accessibleFormattedDateTopMargin:closeButtonTopMargin:closeButtonLeadingMargin:closeButtonSize:muteButtonSpace:kindTopSpace:accessibleKindTopSpace:titleTopSpace:titleTrailingMargin:accessibleOverlayBottomSpace:shareButtonSize:accessibleShareButtonTopSpace:shareButtonLeadingContentInset:shareButtonBaseline:detailTopSpace:accessibleDetailTopSpace:accessibleContentContainerTopSpace:requirementsTopSpace:accessibleRequirementsTopSpace:notifyMeButtonTopSpace:accessibleNotifyMeButtonTopSpace:separatorTopSpace:separatorBottomSpace:accessibleSeparatorTopSpace:accessibleSeparatorBottomSpace:lockupBottomSpace:accessibleLockupBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33)
{
  v44 = type metadata accessor for AspectRatio();
  (*(*(v44 - 8) + 32))(a9, a1, v44);
  v45 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_100005A38(a2, a9 + v45[5]);
  sub_100005A38(a3, a9 + v45[6]);
  sub_100005A38(a4, a9 + v45[7]);
  sub_100005A38(a5, a9 + v45[8]);
  sub_100005A38(a6, a9 + v45[9]);
  v46 = (a9 + v45[10]);
  *v46 = a10;
  v46[1] = a11;
  sub_100005A38(a7, a9 + v45[11]);
  sub_100005A38(a8, a9 + v45[12]);
  sub_100005A38(a14, a9 + v45[13]);
  sub_100005A38(a15, a9 + v45[14]);
  sub_100005A38(a16, a9 + v45[15]);
  sub_100005A38(a17, a9 + v45[16]);
  v47 = (a9 + v45[17]);
  *v47 = a12;
  v47[1] = a13;
  sub_100005A38(a18, a9 + v45[18]);
  sub_100005A38(a19, a9 + v45[19]);
  sub_100005A38(a20, a9 + v45[20]);
  sub_100005A38(a21, a9 + v45[21]);
  sub_100005A38(a22, a9 + v45[22]);
  sub_100005A38(a23, a9 + v45[23]);
  sub_100005A38(a24, a9 + v45[24]);
  sub_100005A38(a25, a9 + v45[25]);
  sub_100005A38(a26, a9 + v45[26]);
  sub_100005A38(a27, a9 + v45[27]);
  sub_100005A38(a28, a9 + v45[28]);
  sub_100005A38(a29, a9 + v45[29]);
  sub_100005A38(a30, a9 + v45[30]);
  sub_100005A38(a31, a9 + v45[31]);
  sub_100005A38(a32, a9 + v45[32]);
  v48 = a9 + v45[33];

  return sub_100005A38(a33, v48);
}

uint64_t AppEventDetailPageLayout.init(metrics:shadowView:cardContentView:borderView:contentContainerView:mediaContainerView:artworkView:videoView:gradientBlurView:mediaReplicationView:overlayContentContainerView:contentBackgroundBlurView:formattedDateView:closeButtonView:kindLabel:titleLabel:shareButtonView:detailLabel:requirementsLabel:notifyMeButton:separatorView:lockupView:isCollapsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23, char a24)
{
  sub_10035800C(a1, a9);
  v29 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_100005A38(a2, a9 + v29[5]);
  sub_100005A38(a3, a9 + v29[6]);
  sub_100005A38(a4, a9 + v29[7]);
  sub_100005A38(a5, a9 + v29[8]);
  sub_100005A38(a6, a9 + v29[9]);
  sub_100005A38(a7, a9 + v29[10]);
  v30 = a9 + v29[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a8 + 32);
  v32 = a9 + v29[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  v34 = a9 + v29[13];
  v35 = *(a11 + 16);
  *v34 = *a11;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a11 + 32);
  sub_100005A38(a12, a9 + v29[14]);
  v36 = a9 + v29[15];
  v37 = *(a13 + 16);
  *v36 = *a13;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a13 + 32);
  sub_100005A38(a14, a9 + v29[16]);
  v38 = a9 + v29[17];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a15 + 32);
  sub_100005A38(a16, a9 + v29[18]);
  sub_100005A38(a17, a9 + v29[19]);
  v40 = a9 + v29[20];
  v41 = *(a18 + 16);
  *v40 = *a18;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a18 + 32);
  sub_100005A38(a19, a9 + v29[21]);
  v42 = a9 + v29[22];
  v43 = *(a20 + 16);
  *v42 = *a20;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a20 + 32);
  v44 = a9 + v29[23];
  v45 = *(a21 + 16);
  *v44 = *a21;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(a21 + 32);
  sub_100005A38(a22, a9 + v29[24]);
  result = sub_100005A38(a23, a9 + v29[25]);
  *(a9 + v29[26]) = a24;
  return result;
}

uint64_t AppEventDetailPageLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 traitCollection];
  v11 = UITraitCollection.isSizeClassRegular.getter();

  if (v11)
  {
    sub_100761304(a1, a2, a3, a4, a5);
    goto LABEL_8;
  }

  v12 = [a1 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v13 = UITraitCollection.isSizeClassCompact.getter();

    if (v13)
    {
      sub_100762CFC(a1, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_100764390(a1, v14, v15, a4, a5);
LABEL_8:

  return LayoutRect.init(representing:)();
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityTitleLayout(in:)(void *a1)
{
  if ((UITraitCollection.isSizeClassCompact.getter() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 preferredContentSizeCategory];
  v3 = static UIContentSizeCategory.>= infix(_:_:)();

  return v3 & 1;
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AspectRatio();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = type metadata accessor for AspectRatio();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.contentHorizontalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 20);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.formattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 24);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleFormattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 28);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 32);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 36);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 44);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 48);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleKindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 52);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 56);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTrailingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 60);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleOverlayBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 64);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 68));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 72);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonLeadingContentInset.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 76);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonBaseline.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 80);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 84);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleDetailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 88);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleContentContainerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 92);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.requirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 96);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleRequirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 100);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.notifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 104);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleNotifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 108);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 112);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 116);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 120);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 124);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.lockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 128);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleLockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 132);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t sub_100761304(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v12 - 1);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  LODWORD(v177) = UITraitCollection.prefersAccessibilityLayouts.getter();

  v18 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10002A400((*&v6 + v18[5]), *(*&v6 + v18[5] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((*&v6 + v18[6]), *(*&v6 + v18[6] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((*&v6 + v18[7]), *(*&v6 + v18[7] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((*&v6 + v18[8]), *(*&v6 + v18[8] + 24));
  dispatch thunk of LayoutView.frame.setter();
  v190.origin.x = a2;
  v190.origin.y = a3;
  v190.size.width = a4;
  v190.size.height = a5;
  CGRectGetHeight(v190);
  AspectRatio.width(fromHeight:)();
  v20 = floor(v19) + 4.0;
  v191.origin.x = a2;
  v191.origin.y = a3;
  v191.size.width = a4;
  v191.size.height = a5;
  v21 = CGRectGetHeight(v191) + 4.0;
  sub_10002A400((*&v6 + v18[9]), *(*&v6 + v18[9] + 24));
  v181 = a1;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((*&v6 + v18[10]), *(*&v6 + v18[10] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(*&v6 + v18[11], v188, &qword_100975610);
  if (v189)
  {
    sub_10002A400(v188, v189);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v188);
  }

  else
  {
    sub_10002B894(v188, &qword_100975610);
  }

  sub_100031660(*&v6 + v18[13], v188, &qword_100975610);
  v179 = a2;
  if (v189)
  {
    sub_10002A400(v188, v189);
    v192.origin.x = a2;
    v192.origin.y = a3;
    v192.size.width = a4;
    v192.size.height = a5;
    CGRectGetWidth(v192);
    v193.origin.x = v179;
    v193.origin.y = a3;
    v193.size.width = a4;
    v193.size.height = a5;
    CGRectGetHeight(v193);
    a2 = v179;
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v188);
  }

  else
  {
    sub_10002B894(v188, &qword_100975610);
  }

  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = v20;
  v194.size.height = v21;
  v22 = CGRectGetMaxX(v194) + -4.0;
  v195.origin.x = a2;
  v195.origin.y = a3;
  v195.size.width = a4;
  v195.size.height = a5;
  Width = CGRectGetWidth(v195);
  v196.origin.x = 0.0;
  v196.origin.y = 0.0;
  v196.size.width = v20;
  v196.size.height = v21;
  v24 = Width - CGRectGetWidth(v196) + 4.0;
  v197.origin.x = a2;
  v197.origin.y = a3;
  v197.size.width = a4;
  v197.size.height = a5;
  v25 = CGRectGetHeight(v197) + 4.0;
  sub_10002A400((*&v6 + v18[14]), *(*&v6 + v18[14] + 24));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v26 = v18[15];
  v176 = v6;
  sub_100031660(*&v6 + v26, v188, &qword_100975610);
  v180 = v12;
  v174 = a5;
  v175 = a3;
  if (v189)
  {
    sub_10002A400(v188, v189);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v188);
  }

  else
  {
    sub_10002B894(v188, &qword_100975610);
  }

  v27 = a4;
  *&v28 = COERCE_DOUBLE(type metadata accessor for AppEventDetailPageLayout.Metrics(0));
  v29 = v176;
  sub_10002A400((*&v176 + v28[5]), *(*&v176 + v28[5] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v31 = v30;
  v32 = *(v13 + 8);
  *&v183 = v13 + 8;
  v33 = v180;
  v32(v16, v180);
  v198.origin.y = 0.0;
  v198.origin.x = v22;
  v198.size.width = v24;
  v198.size.height = v25;
  v34 = CGRectGetWidth(v198) - (v31 + v31);
  v199.origin.y = 0.0;
  v199.origin.x = v22;
  v199.size.width = v24;
  v199.size.height = v25;
  Height = CGRectGetHeight(v199);
  v36 = v28[9];
  v37 = (*&v29 + v28[10]);
  v38 = *v37;
  v166 = *(v37 + 1);
  v167 = v38;
  sub_10002A400((*&v29 + v36), *(*&v29 + v36 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v32(v16, v33);
  v200.origin.y = 0.0;
  v200.origin.x = v31;
  v200.size.width = v34;
  v200.size.height = Height;
  CGRectGetHeight(v200);
  v39 = (*&v29 + v18[16]);
  v185 = v18;
  sub_10002A400(v39, v39[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v41 = v40;
  v43 = v42;
  sub_10002A400((*&v29 + v28[6]), *(*&v29 + v28[6] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v45 = v44;
  v32(v16, v33);
  v201.origin.y = 0.0;
  v201.origin.x = v31;
  v201.size.width = v34;
  v201.size.height = Height;
  MinX = CGRectGetMinX(v201);
  v202.origin.y = 0.0;
  v202.origin.x = v31;
  v202.size.width = v34;
  v202.size.height = Height;
  v47 = v45 + CGRectGetMinY(v202);
  sub_10002A400(v39, v39[3]);
  v168 = MinX;
  v172 = v41;
  v171 = v43;
  CGRect.withLayoutDirection(in:relativeTo:)();
  v48 = v33;
  dispatch thunk of LayoutView.frame.setter();
  v178 = v28;
  sub_10002A400((*&v29 + v28[8]), *(*&v29 + v28[8] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v173 = v16;
  v184 = *&v32;
  v32(v16, v33);
  v203.origin.x = v179;
  v203.origin.y = v175;
  v203.size.width = v27;
  v203.size.height = v174;
  CGRectGetMaxX(v203);
  v204.origin.y = 0.0;
  v204.origin.x = v31;
  v169 = v34;
  v204.size.width = v34;
  v182 = Height;
  v204.size.height = Height;
  CGRectGetMinY(v204);
  sub_100031660(*&v29 + v185[17], v188, &qword_100975610);
  v49 = v31;
  if (v189)
  {
    sub_10002A400(v188, v189);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v188);
  }

  else
  {
    sub_10002B894(v188, &qword_100975610);
  }

  v205.origin.x = v168;
  v205.origin.y = v47;
  v205.size.width = v172;
  v205.size.height = v171;
  MaxY = CGRectGetMaxY(v205);
  v51 = v176;
  v52 = (*&v176 + v178[17]);
  v53 = v52[1];
  v171 = *v52;
  sub_10002A400((*&v176 + v178[20]), *(*&v176 + v178[20] + 24));
  v54 = v173;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v168 = v55;
  v56 = v184;
  (*&v184)(v54, v48);
  v57 = v185;
  *&v172 = v185[20];
  sub_100031660(*&v51 + *&v172, &v186, &qword_100975610);
  v58 = v169;
  v170 = v27;
  v167 = v53;
  if (v187)
  {
    sub_100005A38(&v186, v188);
    v59 = v49;
    if (LOBYTE(v177))
    {
      v60 = v51;
      v61 = v178;
      sub_10002A400((*&v60 + v178[18]), *(*&v60 + v178[18] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v63 = v62;
      (*&v56)(v54, v48);
      sub_10002A400((*&v176 + v61[19]), *(*&v176 + v61[19] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v65 = v64;
      (*&v56)(v54, v48);
      v206.origin.y = 0.0;
      v206.origin.x = v49;
      v206.size.width = v58;
      v66 = v182;
      v206.size.height = v182;
      v67 = CGRectGetMinX(v206) - v65;
      v68 = MaxY + v63;
      sub_10002A400(v188, v189);
      v51 = v176;
      v69 = v171;
      CGRect.withLayoutDirection(in:relativeTo:)();
      v57 = v185;
      dispatch thunk of LayoutView.frame.setter();
      v207.origin.x = v67;
      v207.origin.y = v68;
      v207.size.width = v69;
      v207.size.height = v53;
      MaxY = CGRectGetMaxY(v207) - v168;
      sub_100007000(v188);
      goto LABEL_19;
    }

    sub_100007000(v188);
  }

  else
  {
    sub_10002B894(&v186, &qword_100975610);
    v59 = v49;
  }

  v66 = v182;
LABEL_19:
  v70 = (*&v51 + v57[18]);
  sub_10002A400(v70, v70[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v72 = v71;
  v74 = v73;
  v75 = 12;
  if (LOBYTE(v177))
  {
    v75 = 13;
  }

  v76 = v178;
  sub_10002A400((*&v51 + v178[v75]), *(*&v51 + v178[v75] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v78 = v77;
  v79 = v180;
  (*&v184)(v54, v180);
  v208.origin.y = 0.0;
  v208.origin.x = v59;
  v208.size.width = v58;
  v208.size.height = v66;
  v80 = CGRectGetMinX(v208);
  sub_10002A400(v70, v70[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v209.origin.x = v80;
  v209.origin.y = MaxY + v78;
  v209.size.width = v72;
  v209.size.height = v74;
  v81 = CGRectGetMaxY(v209);
  sub_100031660(*&v51 + *&v172, v188, &qword_100975610);
  v82 = v189 == 0;
  sub_10002B894(v188, &qword_100975610);
  if (((v82 | LODWORD(v177)) & 1) == 0)
  {
    sub_10002A400((*&v51 + v76[15]), *(*&v51 + v76[15] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    (*&v184)(v54, v79);
  }

  v210.origin.y = 0.0;
  v210.origin.x = v59;
  v210.size.width = v58;
  v83 = v58;
  v84 = v59;
  v85 = v182;
  v210.size.height = v182;
  CGRectGetHeight(v210);
  v86 = (*&v51 + v185[19]);
  sub_10002A400(v86, v86[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v88 = v87;
  v90 = v89;
  v166 = v91;
  sub_10002A400((*&v51 + v76[14]), *(*&v51 + v76[14] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v93 = v92;
  (*&v184)(v54, v79);
  v211.origin.y = 0.0;
  v211.origin.x = v84;
  v211.size.width = v83;
  v211.size.height = v85;
  v94 = CGRectGetMinX(v211);
  v95 = v81 + v93;
  sub_10002A400(v86, v86[3]);
  v176 = v84;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v212.origin.x = v94;
  v212.origin.y = v95;
  v212.size.width = v88;
  v212.size.height = v90;
  v96 = CGRectGetMaxY(v212);
  sub_100031660(*&v51 + *&v172, &v186, &qword_100975610);
  if (v187)
  {
    sub_100005A38(&v186, v188);
    if ((LOBYTE(v177) & 1) == 0)
    {
      v213.origin.x = v94;
      v213.origin.y = v95;
      v213.size.width = v88;
      v213.size.height = v90;
      CGRectGetMinY(v213);
      v214.origin.y = 0.0;
      v214.origin.x = v176;
      v214.size.width = v83;
      v214.size.height = v182;
      CGRectGetMaxX(v214);
      sub_10002A400(v188, v189);
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
    }

    sub_100007000(v188);
  }

  else
  {
    sub_10002B894(&v186, &qword_100975610);
  }

  v97 = v184;
  v98 = v173;
  v99 = v178;
  v100 = (*&v51 + v185[21]);
  sub_10002A400(v100, v100[3]);
  v101 = v182;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v103 = v102;
  v105 = v104;
  sub_10002A400((*&v51 + v99[21]), *(*&v51 + v99[21] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v107 = v106;
  (*&v97)(v98, v180);
  v215.origin.y = 0.0;
  v215.origin.x = v176;
  v215.size.width = v83;
  v215.size.height = v101;
  v108 = CGRectGetMinX(v215);
  v109 = v185;
  sub_10002A400(v100, v100[3]);
  v110 = v83;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v216.origin.x = v108;
  v216.origin.y = v96 + v107;
  v216.size.width = v103;
  v216.size.height = v105;
  v111 = CGRectGetMaxY(v216);
  sub_100031660(*&v51 + v109[22], &v186, &unk_10097E890);
  if (v187)
  {
    sub_100005A38(&v186, v188);
    sub_10002A400(v188, v189);
    if (dispatch thunk of LayoutView.isHidden.getter())
    {
      sub_100007000(v188);
      v112 = v180;
    }

    else
    {
      sub_10002A400(v188, v189);
      v113 = dispatch thunk of LayoutView.hasContent.getter();
      v112 = v180;
      if (v113)
      {
        sub_10002A400(v188, v189);
        v114 = v182;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v116 = v115;
        v118 = v117;
        sub_10002A400((*&v51 + v99[24]), *(*&v51 + v99[24] + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v120 = v119;
        (*&v184)(v98, v112);
        v217.origin.y = 0.0;
        v217.origin.x = v176;
        v217.size.width = v83;
        v217.size.height = v114;
        v121 = CGRectGetMinX(v217);
        sub_10002A400(v188, v189);
        v110 = v83;
        CGRect.withLayoutDirection(in:relativeTo:)();
        dispatch thunk of LayoutView.frame.setter();
        v218.origin.x = v121;
        v218.origin.y = v111 + v120;
        v218.size.width = v116;
        v218.size.height = v118;
        v111 = CGRectGetMaxY(v218);
      }

      sub_100007000(v188);
    }

    v109 = v185;
  }

  else
  {
    sub_10002B894(&v186, &unk_10097E890);
    v112 = v180;
  }

  sub_100031660(*&v51 + v109[23], &v186, &qword_100975610);
  if (v187)
  {
    sub_100005A38(&v186, v188);
    sub_10002A400(v188, v189);
    v122 = dispatch thunk of LayoutView.isHidden.getter();
    v123 = v184;
    if (v122)
    {
      v177 = v111;
    }

    else
    {
      sub_10002A400(v188, v189);
      v124 = v182;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v126 = v125;
      v128 = v127;
      sub_10002A400((*&v51 + v99[26]), *(*&v51 + v99[26] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v130 = v129;
      (*&v123)(v98, v112);
      v219.origin.y = 0.0;
      v219.origin.x = v176;
      v219.size.width = v83;
      v219.size.height = v124;
      v131 = CGRectGetMinX(v219);
      sub_10002A400(v188, v189);
      v110 = v83;
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      v220.origin.x = v131;
      v220.origin.y = v111 + v130;
      v220.size.width = v126;
      v220.size.height = v128;
      v177 = CGRectGetMaxY(v220);
    }

    sub_100007000(v188);
  }

  else
  {
    v177 = v111;
    sub_10002B894(&v186, &qword_100975610);
    v123 = v184;
  }

  sub_10002A400((*&v51 + v99[32]), *(*&v51 + v99[32] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v133 = v132;
  (*&v123)(v98, v112);
  v134 = (*&v51 + v185[25]);
  v135 = v112;
  v136 = v134[3];
  v180 = v134;
  sub_10002A400(v134, v136);
  v137 = v182;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v139 = v138;
  sub_10002A400((*&v51 + v99[29]), *(*&v51 + v99[29] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v141 = v140;
  (*&v123)(v98, v112);
  sub_10002A400((*&v51 + v99[28]), *(*&v51 + v99[28] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  v142 = v181;
  AnyDimension.value(in:rounded:)();
  v144 = v143;
  (*&v123)(v98, v135);
  v145 = [v142 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v147 = v146;

  *&v178 = v147;
  v183 = v141;
  v184 = v139;
  v148 = v133;
  v149 = v133 + v139 + v141 + v144 + v147;
  v150 = v177;
  v151 = v177 + v149;
  v221.origin.x = v179;
  v221.origin.y = v175;
  v221.size.width = v170;
  v221.size.height = v174;
  v152 = CGRectGetHeight(v221);
  v222.origin.y = 0.0;
  v153 = v110;
  v154 = v176;
  v222.origin.x = v176;
  v222.size.width = v153;
  v222.size.height = v137;
  v179 = CGRectGetMinX(v222);
  if (v152 >= v151)
  {
    v227.origin.y = 0.0;
    v227.origin.x = v154;
    v227.size.width = v153;
    v227.size.height = v137;
    v159 = CGRectGetHeight(v227);
    v160 = v184;
    v161 = v159 - v184 - v148;
    v228.origin.y = 0.0;
    v228.origin.x = v154;
    v228.size.width = v153;
    v228.size.height = v137;
    v162 = CGRectGetWidth(v228);
    sub_10002A400(v180, v180[3]);
    v163 = v179;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v229.origin.y = 0.0;
    v229.origin.x = v154;
    v229.size.width = v153;
    v229.size.height = v137;
    CGRectGetMinX(v229);
    v230.origin.x = v163;
    v230.origin.y = v161;
    v230.size.width = v162;
    v230.size.height = v160;
    CGRectGetMinY(v230);
    v231.origin.y = 0.0;
    v231.origin.x = v154;
    v231.size.width = v153;
    v231.size.height = v137;
    CGRectGetWidth(v231);
    sub_10002A400((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
  }

  else
  {
    v155 = v150 + v144;
    v223.origin.y = 0.0;
    v223.origin.x = v154;
    v223.size.width = v153;
    v223.size.height = v137;
    v156 = CGRectGetWidth(v223);
    sub_10002A400((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
    v157 = v179;
    v158 = *&v178;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v224.origin.y = 0.0;
    v224.origin.x = v154;
    v224.size.width = v153;
    v224.size.height = v137;
    CGRectGetMinX(v224);
    v225.origin.x = v157;
    v225.origin.y = v155;
    v225.size.width = v156;
    v225.size.height = v158;
    CGRectGetMaxY(v225);
    v226.origin.y = 0.0;
    v226.origin.x = v154;
    v226.size.width = v153;
    v226.size.height = v137;
    CGRectGetWidth(v226);
    sub_10002A400(v180, v180[3]);
  }

  CGRect.withLayoutDirection(in:relativeTo:)();
  return dispatch thunk of LayoutView.frame.setter();
}

uint64_t sub_100762CFC(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v178 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v178 - 8);
  __chkstk_darwin(v178);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AspectRatio.height(fromWidth:)();
  v15 = v14;
  v16 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10002A400((v5 + v16[9]), *(v5 + v16[9] + 24));
  dispatch thunk of LayoutView.frame.setter();
  v191.origin.x = 0.0;
  v191.origin.y = 0.0;
  v191.size.width = a4;
  v191.size.height = v15;
  CGRectGetWidth(v191);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a4;
  v177 = v15;
  v192.size.height = v15;
  CGRectGetHeight(v192);
  sub_10002A400((v5 + v16[10]), *(v5 + v16[10] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(v5 + v16[11], v189, &qword_100975610);
  if (v190)
  {
    sub_10002A400(v189, v190);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v189);
  }

  else
  {
    sub_10002B894(v189, &qword_100975610);
  }

  sub_100031660(v5 + v16[12], v189, &qword_100975610);
  if (v190)
  {
    sub_10002A400(v189, v190);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v189);
  }

  else
  {
    sub_10002B894(v189, &qword_100975610);
  }

  sub_10002A400((v5 + v16[14]), *(v5 + v16[14] + 24));
  dispatch thunk of LayoutView.frame.setter();
  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v183 = v16;
  v18 = v17;
  sub_10002A400((v5 + *(v17 + 20)), *(v5 + *(v17 + 20) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v21 = *(v11 + 8);
  v22 = v178;
  v21(v13, v178);
  v23 = sub_1000CC354(a2, a3, a4, a5, 0.0, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_10002A400((v5 + v18[8]), *(v5 + v18[8] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v173 = v30;
  v174 = v13;
  v175 = v21;
  v21(v13, v22);
  v182 = v18;
  v31 = v18[10];
  v32 = v183;
  v176 = *(v5 + v31 + 8);
  v193.origin.x = v23;
  v193.origin.y = v25;
  v193.size.width = v27;
  v184 = v29;
  v193.size.height = v29;
  CGRectGetMinY(v193);
  v33 = v32[17];
  v186 = v5;
  sub_100031660(v5 + v33, v189, &qword_100975610);
  v185 = v11 + 8;
  v181 = v23;
  if (v190)
  {
    sub_10002A400(v189, v190);
    v34 = v184;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v189);
    v35 = a4;
    v36 = v34;
  }

  else
  {
    sub_10002B894(v189, &qword_100975610);
    v35 = a4;
    v36 = v184;
  }

  v179 = v25;
  v37 = v178;
  v38 = 0;
  v39 = 0;
  v176 = v35;
  v40 = v177;
  Height = CGRectGetHeight(*(&v35 - 2));
  v42 = (v186 + v32[18]);
  sub_10002A400(v42, v42[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v173 = v43;
  v45 = v44;
  v46 = a1;
  v47 = [a1 traitCollection];
  v48 = UITraitCollection.isSizeClassCompact.getter();
  v49 = v27;
  v180 = v27;
  v50 = v174;
  if (v48)
  {
    v51 = [v47 preferredContentSizeCategory];
    v52 = static UIContentSizeCategory.>= infix(_:_:)();

    v53 = v181;
    if (v52)
    {
      v54 = 16;
      v55 = v37;
      v56 = v175;
      v57 = v46;
      goto LABEL_15;
    }
  }

  else
  {

    v53 = v181;
  }

  v58 = v186;
  v59 = (v186 + v183[19]);
  sub_10002A400(v59, v59[3]);
  v57 = v46;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v61 = v60;
  v63 = v62;
  sub_10002A400((v58 + v182[16]), *(v58 + v182[16] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v65 = v64;
  v66 = v37;
  v55 = v37;
  v56 = v175;
  v175(v50, v66);
  v67 = Height - v65 - v63;
  v194.origin.x = v53;
  v194.origin.y = v179;
  v194.size.width = v180;
  v194.size.height = v184;
  MinX = CGRectGetMinX(v194);
  sub_10002A400(v59, v59[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v195.origin.x = MinX;
  v195.origin.y = v67;
  v195.size.width = v61;
  v49 = v180;
  v36 = v184;
  v195.size.height = v63;
  Height = CGRectGetMinY(v195);
  v54 = 14;
LABEL_15:
  v69 = v182;
  sub_10002A400((v186 + v182[v54]), *(v186 + v182[v54] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v71 = v70;
  v72 = v56;
  v56(v50, v55);
  v73 = Height - v71 - v45;
  v196.origin.x = v53;
  v74 = v179;
  v196.origin.y = v179;
  v196.size.width = v49;
  v196.size.height = v36;
  v75 = CGRectGetMinX(v196);
  sub_10002A400(v42, v42[3]);
  v76 = v173;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v77 = v186;
  sub_10002A400((v186 + v69[13]), *(v186 + v69[13] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v79 = v78;
  v56(v50, v55);
  v197.origin.x = v75;
  v197.origin.y = v73;
  v197.size.width = v76;
  v197.size.height = v45;
  v80 = CGRectGetMinY(v197) - v79;
  v81 = v183;
  v82 = (v77 + v183[16]);
  sub_10002A400(v82, v82[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v84 = v83;
  v86 = v85;
  v87 = v80 - v85;
  v198.origin.x = v181;
  v198.origin.y = v74;
  v198.size.width = v49;
  v198.size.height = v36;
  v88 = CGRectGetMinX(v198);
  sub_10002A400(v82, v82[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v77 + v182[7]), *(v77 + v182[7] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v56(v50, v55);
  v199.origin.x = v88;
  v89 = v181;
  v199.origin.y = v87;
  v199.size.width = v84;
  v199.size.height = v86;
  CGRectGetMinY(v199);
  sub_100031660(v77 + v81[20], &v187, &qword_100975610);
  v90 = v55;
  if (v188)
  {
    sub_100005A38(&v187, v189);
    v91 = v182;
    sub_10002A400((v186 + v182[20]), *(v186 + v182[20] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v72(v50, v55);
    v200.origin.x = v89;
    v200.origin.y = v179;
    v200.size.width = v180;
    v200.size.height = v184;
    CGRectGetMinX(v200);
    sub_10002A400(v189, v190);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v189);
    v92 = v176;
  }

  else
  {
    sub_10002B894(&v187, &qword_100975610);
    v92 = v176;
    v91 = v182;
  }

  v93 = 0;
  v94 = 0;
  v95 = v177;
  MaxY = CGRectGetMaxY(*(&v92 - 2));
  v97 = [v57 traitCollection];
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v98 = [v97 preferredContentSizeCategory];
    v99 = static UIContentSizeCategory.>= infix(_:_:)();

    if (v99)
    {
      v100 = v186;
      v101 = (v186 + v183[19]);
      sub_10002A400(v101, v101[3]);
      v102 = v180;
      v103 = v184;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v105 = v104;
      v177 = v106;
      sub_10002A400((v100 + v91[23]), *(v100 + v91[23] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v108 = v107;
      v72(v50, v90);
      v201.origin.x = v181;
      v201.origin.y = v179;
      v201.size.width = v102;
      v201.size.height = v103;
      v109 = CGRectGetMinX(v201);
      v110 = MaxY + v108;
      sub_10002A400(v101, v101[3]);
      v111 = v177;
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      sub_10002A400((v100 + v91[22]), *(v100 + v91[22] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v113 = v112;
      v114 = v178;
      (v72)(v50);
      v202.origin.x = v109;
      v202.origin.y = v110;
      v202.size.width = v105;
      v202.size.height = v111;
      v177 = CGRectGetMaxY(v202);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v177 = MaxY;
  sub_10002A400((v186 + v91[23]), *(v186 + v91[23] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v113 = v115;
  v114 = v55;
  v72(v50, v55);
LABEL_23:
  v116 = v183;
  v117 = v186;
  v118 = (v186 + v183[21]);
  sub_10002A400(v118, v118[3]);
  v119 = v180;
  v120 = v184;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v122 = v121;
  v124 = v123;
  v203.origin.x = v181;
  v203.origin.y = v179;
  v203.size.width = v119;
  v203.size.height = v120;
  v125 = CGRectGetMinX(v203);
  v126 = v113 + v177;
  sub_10002A400(v118, v118[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v204.origin.x = v125;
  v204.origin.y = v126;
  v204.size.width = v122;
  v204.size.height = v124;
  v127 = CGRectGetMaxY(v204);
  sub_100031660(v117 + v116[22], &v187, &unk_10097E890);
  if (!v188)
  {
    sub_10002B894(&v187, &unk_10097E890);
    goto LABEL_27;
  }

  sub_100005A38(&v187, v189);
  sub_10002A400(v189, v190);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(v189);
LABEL_27:
    v128 = v182;
    goto LABEL_31;
  }

  sub_10002A400(v189, v190);
  v129 = dispatch thunk of LayoutView.hasContent.getter();
  v128 = v182;
  if (v129)
  {
    sub_10002A400(v189, v190);
    v130 = v180;
    v131 = v184;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v177 = v132;
    v134 = v133;
    sub_10002A400((v186 + v128[25]), *(v186 + v128[25] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v136 = v135;
    v72(v50, v114);
    v205.origin.x = v181;
    v205.origin.y = v179;
    v205.size.width = v130;
    v205.size.height = v131;
    v137 = CGRectGetMinX(v205);
    sub_10002A400(v189, v190);
    v138 = v177;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v206.origin.x = v137;
    v206.origin.y = v127 + v136;
    v206.size.width = v138;
    v206.size.height = v134;
    v127 = CGRectGetMaxY(v206);
  }

  sub_100007000(v189);
LABEL_31:
  sub_100031660(v186 + v183[23], &v187, &qword_100975610);
  if (v188)
  {
    sub_100005A38(&v187, v189);
    sub_10002A400(v189, v190);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(v189, v190);
      v177 = v127;
      v139 = v180;
      v140 = v184;
      dispatch thunk of Measurable.measurements(fitting:in:)();
      v142 = v141;
      v144 = v143;
      sub_10002A400((v186 + v128[27]), *(v186 + v128[27] + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v146 = v145;
      v72(v50, v114);
      v207.origin.x = v181;
      v207.origin.y = v179;
      v207.size.width = v139;
      v207.size.height = v140;
      v147 = CGRectGetMinX(v207);
      v148 = v177 + v146;
      sub_10002A400(v189, v190);
      CGRect.withLayoutDirection(in:relativeTo:)();
      dispatch thunk of LayoutView.frame.setter();
      v208.origin.x = v147;
      v208.origin.y = v148;
      v208.size.width = v142;
      v208.size.height = v144;
      v127 = CGRectGetMaxY(v208);
    }

    sub_100007000(v189);
  }

  else
  {
    sub_10002B894(&v187, &qword_100975610);
  }

  v149 = v186;
  sub_10002A400((v186 + v128[30]), *(v186 + v128[30] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v151 = v150;
  v72(v50, v114);
  v152 = [v57 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v154 = v153;

  v155 = v181;
  v209.origin.x = v181;
  v156 = v179;
  v209.origin.y = v179;
  v157 = v180;
  v209.size.width = v180;
  v158 = v184;
  v209.size.height = v184;
  v159 = CGRectGetMinX(v209);
  v177 = v127 + v151;
  v210.origin.x = v155;
  v210.origin.y = v156;
  v210.size.width = v157;
  v210.size.height = v158;
  Width = CGRectGetWidth(v210);
  v161 = v183;
  sub_10002A400((v149 + v183[24]), *(v149 + v183[24] + 24));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v149 + v128[31]), *(v149 + v128[31] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v163 = v162;
  v72(v50, v114);
  v211.origin.x = v159;
  v211.origin.y = v177;
  v211.size.width = Width;
  v211.size.height = v154;
  v164 = v163 + CGRectGetMaxY(v211);
  v165 = v161;
  v166 = (v149 + v161[25]);
  sub_10002A400(v166, v166[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v168 = v167;
  v212.origin.x = v155;
  v212.origin.y = v156;
  v212.size.width = v157;
  v212.size.height = v158;
  v169 = CGRectGetMinX(v212);
  v213.origin.x = v155;
  v213.origin.y = v156;
  v213.size.width = v157;
  v213.size.height = v158;
  v170 = CGRectGetWidth(v213);
  sub_10002A400(v166, v166[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v149 + v182[33]), *(v149 + v182[33] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v175(v50, v178);
  v214.origin.x = v169;
  v214.origin.y = v164;
  v214.size.width = v170;
  v214.size.height = v168;
  CGRectGetMaxY(v214);
  sub_10002A400((v149 + v165[8]), *(v149 + v165[8] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v149 + v165[5]), *(v149 + v165[5] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v149 + v165[6]), *(v149 + v165[6] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v149 + v165[7]), *(v149 + v165[7] + 24));
  return dispatch thunk of LayoutView.frame.setter();
}

uint64_t sub_100764390(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v125 - 8);
  __chkstk_darwin(v125);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AspectRatio.height(fromWidth:)();
  if (v13 >= a5)
  {
    v13 = a5;
  }

  v14 = floor(v13);
  v15 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10002A400((v5 + v15[5]), *(v5 + v15[5] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + v15[6]), *(v5 + v15[6] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + v15[7]), *(v5 + v15[7] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + v15[8]), *(v5 + v15[8] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + v15[9]), *(v5 + v15[9] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + v15[10]), *(v5 + v15[10] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(v5 + v15[11], v132, &qword_100975610);
  if (v133)
  {
    sub_10002A400(v132, v133);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v132);
  }

  else
  {
    sub_10002B894(v132, &qword_100975610);
  }

  sub_100031660(v5 + v15[12], v132, &qword_100975610);
  if (v133)
  {
    sub_10002A400(v132, v133);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v132);
  }

  else
  {
    sub_10002B894(v132, &qword_100975610);
  }

  sub_10002A400((v5 + v15[14]), *(v5 + v15[14] + 24));
  dispatch thunk of LayoutView.frame.setter();
  v16 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v128 = v15;
  v17 = v16;
  sub_10002A400((v5 + *(v16 + 20)), *(v5 + *(v16 + 20) + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v19 = v18;
  v20 = *(v10 + 8);
  v129 = v10 + 8;
  v21 = v125;
  v20(v12, v125);
  MinX = v19;
  v22 = sub_1000CC354(0.0, 0.0, a4, v14, 0.0, v19);
  v121 = a4;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v17[9];
  v31 = (v5 + v17[10]);
  v32 = *v31;
  v122 = v31[1];
  v123 = v32;
  sub_10002A400((v5 + v30), *(v5 + v30 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20(v12, v21);
  sub_10002A400((v5 + v17[11]), *(v5 + v17[11] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20(v12, v21);
  v134.origin.x = v23;
  v134.origin.y = v25;
  v134.size.width = v27;
  v134.size.height = v29;
  CGRectGetHeight(v134);
  v33 = (v5 + v128[16]);
  sub_10002A400(v33, v33[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400((v5 + v17[6]), *(v5 + v17[6] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20(v12, v21);
  v34 = v23;
  v135.origin.x = v23;
  v135.origin.y = v25;
  v135.size.width = v27;
  v135.size.height = v29;
  CGRectGetMinX(v135);
  v136.origin.x = v23;
  v136.origin.y = v25;
  v136.size.width = v27;
  v136.size.height = v29;
  CGRectGetMinY(v136);
  sub_10002A400(v33, v33[3]);
  v35 = v27;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v127 = v17;
  v36 = v17[8];
  v37 = v128;
  sub_10002A400((v5 + v36), *(v5 + v36 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v126 = v20;
  v20(v12, v21);
  v137.origin.x = v34;
  v137.origin.y = v25;
  v137.size.width = v27;
  v137.size.height = v29;
  CGRectGetMinY(v137);
  sub_100031660(v5 + v37[17], v132, &qword_100975610);
  if (v133)
  {
    sub_10002A400(v132, v133);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v132);
  }

  else
  {
    sub_10002B894(v132, &qword_100975610);
  }

  v38 = (v5 + v37[25]);
  sub_10002A400(v38, v38[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v40 = v39;
  v41 = v127;
  sub_10002A400((v5 + v127[32]), *(v5 + v127[32] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v43 = v42;
  v44 = v125;
  v126(v12, v125);
  v138.origin.x = v34;
  v138.origin.y = v25;
  v138.size.width = v35;
  v138.size.height = v29;
  MinX = CGRectGetMinX(v138);
  v139.origin.x = v34;
  v139.origin.y = v25;
  v139.size.width = v35;
  v139.size.height = v29;
  Height = CGRectGetHeight(v139);
  v123 = v40;
  v122 = Height - v40 - v43;
  v140.origin.x = v34;
  v140.origin.y = v25;
  v140.size.width = v35;
  v140.size.height = v29;
  Width = CGRectGetWidth(v140);
  sub_10002A400(v38, v38[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  v47 = v44;
  v48 = v128;
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v5 + v41[29]), *(v5 + v41[29] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v50 = v49;
  v51 = v47;
  v52 = v126;
  v126(v12, v51);
  v53 = [a1 traitCollection];
  static Separator.thickness(compatibleWith:)();
  v55 = v54;

  v141.origin.x = v34;
  v141.origin.y = v25;
  v141.size.width = v35;
  v141.size.height = v29;
  v56 = CGRectGetMinX(v141);
  v142.origin.x = MinX;
  v142.origin.y = v122;
  v142.size.width = Width;
  v57 = v34;
  v142.size.height = v123;
  v58 = CGRectGetMinY(v142) - v50 - v55;
  v143.origin.x = v57;
  v143.origin.y = v25;
  v143.size.width = v35;
  v143.size.height = v29;
  v59 = CGRectGetWidth(v143);
  sub_10002A400((v6 + v48[24]), *(v6 + v48[24] + 24));
  MinX = v57;
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v144.origin.x = v56;
  v144.origin.y = v58;
  v144.size.width = v59;
  v144.size.height = v55;
  MinY = CGRectGetMinY(v144);
  v61 = v41[28];
  v62 = v125;
  sub_10002A400((v6 + v61), *(v6 + v61 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v64 = v63;
  v52(v12, v62);
  v65 = MinY - v64;
  sub_100031660(v6 + v48[23], &v130, &qword_100975610);
  if (!v131)
  {
    sub_10002B894(&v130, &qword_100975610);
    goto LABEL_16;
  }

  sub_100005A38(&v130, v132);
  sub_10002A400(v132, v133);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(v132);
    v52 = v126;
LABEL_16:
    v66 = v29;
    goto LABEL_18;
  }

  sub_10002A400(v132, v133);
  v66 = v29;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v68 = v67;
  v70 = v69;
  v145.origin.x = MinX;
  v145.origin.y = v25;
  v145.size.width = v35;
  v145.size.height = v29;
  v71 = CGRectGetMinX(v145);
  sub_10002A400(v132, v133);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v146.origin.x = v71;
  v146.origin.y = v65 - v70;
  v146.size.width = v68;
  v146.size.height = v70;
  v72 = CGRectGetMinY(v146);
  sub_10002A400((v6 + v127[26]), *(v6 + v127[26] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v74 = v73;
  v52 = v126;
  v126(v12, v62);
  v65 = v72 - v74;
  sub_100007000(v132);
LABEL_18:
  sub_100031660(v6 + v128[22], &v130, &unk_10097E890);
  if (v131)
  {
    sub_100005A38(&v130, v132);
    sub_10002A400(v132, v133);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(v132, v133);
      if (dispatch thunk of LayoutView.hasContent.getter())
      {
        sub_10002A400(v132, v133);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v76 = v75;
        v78 = v77;
        v79 = v65 - v77;
        v147.origin.x = MinX;
        v147.origin.y = v25;
        v147.size.width = v35;
        v147.size.height = v66;
        v80 = CGRectGetMinX(v147);
        sub_10002A400(v132, v133);
        CGRect.withLayoutDirection(in:relativeTo:)();
        dispatch thunk of LayoutView.frame.setter();
        v148.origin.x = v80;
        v148.origin.y = v79;
        v148.size.width = v76;
        v148.size.height = v78;
        v81 = CGRectGetMinY(v148);
        sub_10002A400((v6 + v127[24]), *(v6 + v127[24] + 24));
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        AnyDimension.value(in:rounded:)();
        v83 = v82;
        v52(v12, v62);
        v65 = v81 - v83;
      }
    }

    sub_100007000(v132);
  }

  else
  {
    sub_10002B894(&v130, &unk_10097E890);
  }

  v84 = v128;
  v85 = (v6 + v128[21]);
  sub_10002A400(v85, v85[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v87 = v86;
  v89 = v88;
  v90 = v65 - v88;
  v149.origin.x = MinX;
  v149.origin.y = v25;
  v149.size.width = v35;
  v149.size.height = v66;
  v91 = CGRectGetMinX(v149);
  sub_10002A400(v85, v85[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v150.origin.x = v91;
  v150.origin.y = v90;
  v150.size.width = v87;
  v150.size.height = v89;
  v92 = CGRectGetMinY(v150);
  v93 = v127;
  sub_10002A400((v6 + v127[21]), *(v6 + v127[21] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v95 = v94;
  v96 = v126;
  v126(v12, v62);
  v97 = v92 - v95;
  v98 = (v6 + v93[17]);
  v99 = *v98;
  v121 = v98[1];
  *&v123 = v84[20];
  sub_100031660(v6 + *&v123, v132, &qword_100975610);
  v100 = v133;
  sub_10002B894(v132, &qword_100975610);
  if (v100)
  {
    sub_10002A400((v6 + v127[15]), *(v6 + v127[15] + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v96(v12, v62);
  }

  v122 = v99;
  v101 = MinX;
  v151.origin.x = MinX;
  v151.origin.y = v25;
  v151.size.width = v35;
  v151.size.height = v66;
  CGRectGetHeight(v151);
  v102 = v128;
  v103 = (v6 + v128[19]);
  sub_10002A400(v103, v103[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v105 = v104;
  v106 = v25;
  v107 = v101;
  v109 = v108;
  v120 = v110;
  v111 = v97 - v108;
  v152.origin.x = v101;
  v152.origin.y = v106;
  v152.size.width = v35;
  v152.size.height = v66;
  v112 = CGRectGetMinX(v152);
  sub_10002A400(v103, v103[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v116 = v112;
  v153.origin.x = v112;
  v117 = v111;
  v153.origin.y = v111;
  v119 = v105;
  v153.size.width = v105;
  v118 = v109;
  v153.size.height = v109;
  CGRectGetMinY(v153);
  sub_10002A400((v6 + v127[14]), *(v6 + v127[14] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v96(v12, v62);
  v113 = (v6 + v102[18]);
  sub_10002A400(v113, v113[3]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v154.origin.x = v107;
  v154.origin.y = v106;
  v154.size.width = v35;
  v154.size.height = v66;
  CGRectGetMinX(v154);
  sub_10002A400(v113, v113[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_100031660(v6 + *&v123, &v130, &qword_100975610);
  if (!v131)
  {
    return sub_10002B894(&v130, &qword_100975610);
  }

  sub_100005A38(&v130, v132);
  sub_10002A400((v6 + v127[20]), *(v6 + v127[20] + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v96(v12, v62);
  v155.origin.x = v116;
  v155.origin.y = v117;
  v155.size.width = v119;
  v155.size.height = v118;
  CGRectGetMinY(v155);
  v156.origin.x = v107;
  v156.origin.y = v106;
  v156.size.width = v35;
  v156.size.height = v66;
  CGRectGetMaxX(v156);
  sub_10002A400(v132, v133);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  return sub_100007000(v132);
}

void sub_10076575C()
{
  type metadata accessor for AppEventDetailPageLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &unk_10098A3C0);
    if (v1 <= 0x3F)
    {
      sub_100154308(319, &qword_10098A3E0, &unk_10097E960);
      if (v2 <= 0x3F)
      {
        sub_100154428(319, &qword_10097E940);
        if (v3 <= 0x3F)
        {
          sub_100154308(319, &unk_10098A3D0, &unk_10097E950);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1007658EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1007659C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100765A84()
{
  type metadata accessor for AspectRatio();
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &qword_1009842D0);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_100765B84(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView;
  sub_100005744(0, &qword_100970180);
  v14 = static UIColor.defaultBackground.getter();
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  *&v5[v13] = sub_10059F344(v14, 0.0, 0.0, 0.0, 0.0);
  v22.receiver = v5;
  v22.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 systemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView]];

  return v18;
}

uint64_t type metadata accessor for ParagraphCollectionViewCell()
{
  result = qword_1009960F8;
  if (!qword_1009960F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100766148(void *a1, char a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v18 - 8);
  v20 = &v48 - v19;
  if (a2)
  {
    v21 = 3;
  }

  else
  {
    v21 = 0;
  }

  if (a1)
  {
    v22 = a9 >= a8 ? a8 : a9;
    if (v22 != 0.0)
    {
      v23 = a1;
      v24 = [a3 traitCollection];
      v25 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_layoutMargins];
      *v27 = a4;
      v27[1] = a5;
      v27[2] = a6;
      v27[3] = a7;
      *&v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_numberOfLines] = v21;
      v28 = &v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_fittingSize];
      *v28 = a8;
      v28[1] = a9;
      *&v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_traitCollection] = v24;
      *&v26[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A120MeasurementsCacheKey_attributedText] = v23;
      v49.receiver = v26;
      v49.super_class = v25;
      v29 = objc_msgSendSuper2(&v49, "init");
      if (qword_10096E9D0 != -1)
      {
        swift_once();
      }

      v30 = qword_10098CEC8;
      v31 = [qword_10098CEC8 objectForKey:v29];
      if (v31)
      {
        v32 = v31;

        a8 = *&v32[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
      }

      else
      {
        v33 = qword_10096E9C8;
        v32 = v23;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for FontUseCase();
        v35 = sub_1000056A8(v34, qword_10098CEB0);
        v36 = *(v34 - 8);
        (*(v36 + 16))(v20, v35, v34);
        (*(v36 + 56))(v20, 0, 1, v34);
        static TextMeasurable.defaultTextAlignment.getter();
        static TextMeasurable.defaultLineBreakMode.getter();
        static TextMeasurable.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:)();
        v38 = v37;
        v40 = v39;
        v42 = v41;

        sub_10002B894(v20, &qword_100972ED0);
        v43 = type metadata accessor for ExpandableTextView.CacheValue();
        v44 = objc_allocWithZone(v43);
        v45 = &v44[OBJC_IVAR____TtCC8AppStore18ExpandableTextViewP33_059173C074D556A1611F1918B5AC36A110CacheValue_measurements];
        *v45 = a8;
        v45[1] = a4 + a6 + v38;
        *(v45 + 2) = v40;
        *(v45 + 3) = v42;
        v48.receiver = v44;
        v48.super_class = v43;
        v46 = objc_msgSendSuper2(&v48, "init");
        [v30 setObject:v46 forKey:v29];
      }
    }
  }

  return a8;
}

id sub_1007664DC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for HttpTemplateController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100766654(uint64_t a1)
{
  v93 = a1;
  v75 = type metadata accessor for FlowOrigin();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for FlowAnimationBehavior();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v74 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for FlowPresentationContext();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v72 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v5 - 8);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v7 - 8);
  v68 = &v62 - v8;
  v9 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v9 - 8);
  v65 = &v62 - v10;
  v63 = type metadata accessor for FlowPage();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HttpTemplateParameter();
  v95 = *(v12 - 8);
  __chkstk_darwin(v12);
  v89 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  v17 = sub_10002849C(&qword_100996168);
  v90 = *(v17 - 8);
  __chkstk_darwin(v17);
  v79 = (&v62 - v18);
  v19 = sub_10002849C(&qword_100996170);
  __chkstk_darwin(v19 - 8);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v62 - v23);
  v94 = v1;
  Action.title.getter();
  v26 = v25;
  HttpTemplateAction.message.getter();
  v28 = v27;
  if (!v26)
  {
    v29 = 0;
    if (v27)
    {
      goto LABEL_3;
    }

LABEL_5:
    v30 = 0;
    goto LABEL_6;
  }

  v29 = String._bridgeToObjectiveC()();

  if (!v28)
  {
    goto LABEL_5;
  }

LABEL_3:
  v30 = String._bridgeToObjectiveC()();

LABEL_6:
  v31 = [objc_opt_self() alertControllerWithTitle:v29 message:v30 preferredStyle:1];

  v92 = v31;
  sub_100767F3C(v31, v93);
  result = HttpTemplateAction.parameters.getter();
  v33 = result;
  v34 = 0;
  v35 = *(result + 16);
  v78 = OBJC_IVAR____TtC8AppStore22HttpTemplateController_hasRequiredParameters;
  v93 = v95 + 16;
  v91 = (v90 + 7);
  v77 = OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction;
  v90 += 6;
  v84 = v95 + 32;
  v82 += 7;
  v81 = &v97;
  v80 = (v95 + 8);
  v88 = v21;
  v87 = v17;
  v86 = result;
  v85 = v35;
  v83 = v24;
  while (1)
  {
    if (v34 == v35)
    {
      v36 = 1;
      v34 = v35;
      goto LABEL_13;
    }

    if ((v34 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v34 >= *(v33 + 16))
    {
      goto LABEL_19;
    }

    v37 = v95;
    v38 = v33 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v34;
    v39 = *(v17 + 48);
    v40 = v79;
    *v79 = v34;
    (*(v37 + 16))(v40 + v39, v38, v12);
    sub_1000476A0(v40, v21, &qword_100996168);
    v36 = 0;
    ++v34;
LABEL_13:
    (*v91)(v21, v36, 1, v17);
    sub_1000476A0(v21, v24, &qword_100996170);
    if ((*v90)(v24, 1, v17) == 1)
    {

      v98 = 0;
      aBlock = 0u;
      v97 = 0u;
      (*(v62 + 104))(v64, enum case for FlowPage.viewController(_:), v63);
      v58 = type metadata accessor for URL();
      (*(*(v58 - 8) + 56))(v65, 1, 1, v58);
      v59 = type metadata accessor for ReferrerData();
      (*(*(v59 - 8) + 56))(v68, 1, 1, v59);
      v101 = sub_100246DF4();
      v100 = v92;
      v60 = v92;
      static ActionMetrics.notInstrumented.getter();
      (*(v66 + 104))(v72, enum case for FlowPresentationContext.presentModal(_:), v67);
      (*(v70 + 104))(v74, enum case for FlowAnimationBehavior.infer(_:), v71);
      (*(v73 + 104))(v76, enum case for FlowOrigin.inapp(_:), v75);
      static FlowActionPresentation.stackPush.getter();
      type metadata accessor for FlowAction();
      swift_allocObject();
      v61 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();

      return v61;
    }

    v41 = *v24;
    v42 = *(v17 + 48);
    v43 = v95;
    v44 = *(v95 + 32);
    v44(v16, v24 + v42, v12);
    v45 = v12;
    v46 = v89;
    (*(v43 + 16))(v89, v16, v45);
    v47 = *(v43 + 80);
    v48 = v16;
    v49 = (v47 + 24) & ~v47;
    v50 = (v82 + v49) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v52 = v46;
    v12 = v45;
    v44((v51 + v49), v52, v45);
    v53 = v94;
    *(v51 + v50) = v94;
    v98 = sub_1007688EC;
    v99 = v51;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v97 = sub_100768994;
    *(&v97 + 1) = &unk_1008D1810;
    v54 = _Block_copy(&aBlock);
    v55 = v53;
    v16 = v48;

    [v92 addTextFieldWithConfigurationHandler:v54];
    _Block_release(v54);
    if (HttpTemplateParameter.isRequired.getter())
    {
      v56 = v94;
      v94[v78] = 1;
      v57 = *&v56[v77];
      if (v57)
      {
        [v57 setEnabled:0];
      }
    }

    result = (*v80)(v48, v45);
    v17 = v87;
    v21 = v88;
    v24 = v83;
    v33 = v86;
    v35 = v85;
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_1007671C8(uint64_t a1)
{
  v56 = a1;
  v2 = sub_10002849C(&unk_100982A90);
  v54 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v50 - v3;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v55 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v59 = type metadata accessor for ActionMetrics();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HttpTemplateParameter();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v62 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HttpTemplateSubstitutions();
  v60 = *(v12 - 8);
  v61 = v12;
  __chkstk_darwin(v12);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  sub_1001963E0(_swiftEmptyArrayStorage);
  sub_1001962CC(_swiftEmptyArrayStorage);
  v63 = v14;
  v15 = v1;
  HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)();
  v16 = OBJC_IVAR____TtC8AppStore22HttpTemplateController_textFields;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if (v17 >> 62)
  {
    goto LABEL_27;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v19 = off_100996000;
  if (v18)
  {
    while (v18 >= 1)
    {
      v51 = v2;
      v20 = v19[34];
      v50[1] = v15;
      v21 = *(v20 + v15);
      v65 = v17 & 0xC000000000000001;
      v66 = v21;
      v64 = v10 + 16;
      v22 = (v10 + 8);

      v15 = 0;
      v2 = v62;
      while (1)
      {
        v23 = v65 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v15 + 32);
        v24 = v23;
        v25 = HttpTemplateAction.parameters.getter();
        v26 = [v24 tag];
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_26;
        }

        (*(v10 + 16))(v2, v25 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, v9);

        v27 = [v24 text];
        if (v27)
        {
          v28 = v27;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v2 = v62;
          HttpTemplateSubstitutions.setParameter(value:for:)();

          (*v22)(v2, v9);
        }

        else
        {
          (*v22)(v2, v9);
        }

        if (v18 == ++v15)
        {

          v2 = v51;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      v18 = _CocoaArrayWrapper.endIndex.getter();
      v19 = off_100996000;
      if (!v18)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    swift_once();
    v30 = type metadata accessor for OSLogger();
    sub_1000056A8(v30, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    swift_getErrorValue();
    v31 = v70;
    v32 = v71;
    v68 = v71;
    v33 = sub_1000056E0(v67);
    (*(*(v32 - 8) + 16))(v33, v31, v32);
    static LogMessage.sensitive(_:)();
    sub_10002B894(v67, &unk_1009711D0);
    Logger.error(_:)();

    v34 = HttpTemplateAction.failureAction.getter();
    if (v34)
    {
      v35 = v34;
      v36 = sub_10002849C(&unk_100974490);
      v37 = v55;
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v38 = *(v36 - 8);
      if ((*(v38 + 48))(v37, 1, v36) == 1)
      {
        (*(v60 + 8))(v63, v61);

        v39 = v37;
        return sub_10002B894(v39, &unk_100972A00);
      }

      v68 = type metadata accessor for Action();
      v69 = sub_100768898(&qword_100989C80, &type metadata accessor for Action);
      v67[0] = v35;
      v46 = v54;
      v47 = v53;
      (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

      ActionDispatcher.perform(_:withMetrics:asPartOf:)();

      (*(v46 + 8))(v47, v2);
      (*(v60 + 8))(v63, v61);
      sub_100007000(v67);
      return (*(v38 + 8))(v37, v36);
    }

    else
    {
      (*(v60 + 8))(v63, v61);
    }
  }

  else
  {
LABEL_15:
    v29 = v57;
    static ActionMetrics.notInstrumented.getter();
    v40 = dispatch thunk of HttpTemplateAction.makeAction(with:body:actionMetrics:)();
    (*(v58 + 8))(v29, v59);
    v41 = sub_10002849C(&unk_100974490);
    v42 = v52;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 48))(v42, 1, v41);
    if (v44 == 1)
    {
      (*(v60 + 8))(v63, v61);

      v39 = v42;
      return sub_10002B894(v39, &unk_100972A00);
    }

    v68 = type metadata accessor for HttpAction();
    v69 = sub_100768898(&unk_100989C50, &type metadata accessor for HttpAction);
    v67[0] = v40;
    v48 = v54;
    v49 = v53;
    (*(v54 + 104))(v53, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v2);

    ActionDispatcher.perform(_:withMetrics:asPartOf:)();

    (*(v48 + 8))(v49, v2);
    (*(v60 + 8))(v63, v61);
    sub_100007000(v67);
    return (*(v43 + 8))(v42, v41);
  }
}

uint64_t sub_100767C8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for HttpTemplateParameter.InputType();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 setTag:{a2, v9}];
  HttpTemplateParameter.title.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [a1 setPlaceholder:v13];

  HttpTemplateParameter.inputType.getter();
  v14 = (*(v8 + 88))(v11, v7);
  if (v14 == enum case for HttpTemplateParameter.InputType.text(_:))
  {
    goto LABEL_5;
  }

  if (v14 == enum case for HttpTemplateParameter.InputType.email(_:))
  {
    v15 = 7;
  }

  else if (v14 == enum case for HttpTemplateParameter.InputType.phoneNumber(_:))
  {
    v15 = 5;
  }

  else
  {
    if (v14 != enum case for HttpTemplateParameter.InputType.decimalPad(_:))
    {
      (*(v8 + 8))(v11, v7);
LABEL_5:
      v15 = 0;
      goto LABEL_12;
    }

    v15 = 8;
  }

LABEL_12:
  [a1 setKeyboardType:v15];
  [a1 setDelegate:a4];
  v16 = [objc_opt_self() defaultCenter];
  [v16 addObserver:a4 selector:"textFieldDidChange:" name:UITextFieldTextDidChangeNotification object:a1];

  v17 = OBJC_IVAR____TtC8AppStore22HttpTemplateController_textFields;
  swift_beginAccess();
  v18 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

void sub_100767F3C(void *a1, uint64_t a2)
{
  v5._countAndFlagsBits = 0x432E6E6F69746341;
  v5._object = 0xED00006C65636E61;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  localizedString(_:comment:)(v5, v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = objc_opt_self();
  v9 = [v8 actionWithTitle:v7 style:0 handler:0];

  [a1 addAction:v9];
  v10._countAndFlagsBits = 0x4F2E6E6F69746341;
  v10._object = 0xE90000000000004BLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  localizedString(_:comment:)(v10, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a2;
  v13 = v2;

  v14 = String._bridgeToObjectiveC()();

  v18[4] = sub_100768870;
  v18[5] = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100768994;
  v18[3] = &unk_1008D17C0;
  v15 = _Block_copy(v18);

  v16 = [v8 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  [a1 addAction:v16];
  [a1 setPreferredAction:v16];
  v17 = *&v13[OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction];
  *&v13[OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction] = v16;
}

id sub_10076815C()
{
  v32 = type metadata accessor for HttpTemplateParameter();
  v1 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC8AppStore22HttpTemplateController_textFields;
  swift_beginAccess();
  v30 = *(v0 + v3);
  if (!(v30 >> 62))
  {
    v29 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_3;
    }

LABEL_21:
    result = *(v0 + OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction);
    if (result)
    {
      return [result setEnabled:1];
    }

    return result;
  }

LABEL_28:
  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (!v29)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore22HttpTemplateController_templateAction);
  v5 = v30 & 0xC000000000000001;
  v24 = v0;
  v25 = v30 & 0xFFFFFFFFFFFFFF8;
  v27 = (v1 + 8);
  v28 = v4;

  v6 = 0;
  v7 = &selRef_loadView;
  v26 = v1;
  while (1)
  {
    if (v5)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v25 + 16))
      {
        goto LABEL_27;
      }

      v8 = *(v30 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v0 = HttpTemplateAction.parameters.getter();
    v11 = [v9 v7[253]];
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    if (v11 >= v0[2])
    {
      goto LABEL_26;
    }

    v12 = v31;
    (*(v1 + 16))(v31, v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11, v32);

    v0 = v12;
    v13 = v9;
    if (HttpTemplateParameter.isRequired.getter())
    {
      v14 = [v9 text];
      if (!v14)
      {
        break;
      }

      v0 = v14;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v7;
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      v20 = v15 & 0xFFFFFFFFFFFFLL;
      v1 = v26;
      v21 = (v18 & 0x2000000000000000) == 0;
      v7 = v16;
      v13 = v9;
      if (v21)
      {
        v19 = v20;
      }

      if (!v19)
      {
        break;
      }
    }

    (*v27)(v31, v32);
    ++v6;
    if (v10 == v29)
    {

      v0 = v24;
      goto LABEL_21;
    }
  }

  v22 = *(v24 + OBJC_IVAR____TtC8AppStore22HttpTemplateController_okAction);
  if (v22)
  {
    [v22 setEnabled:0];
  }

  return (*v27)(v31, v32);
}

void sub_100768480(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for HttpTemplateParameter();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = HttpTemplateAction.parameters.getter();
  v11 = [a1 tag];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v11 >= *(v10 + 16))
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6);

  HttpTemplateParameter.maximumLength.getter();
  if ((v12 & 1) == 0)
  {
    v13 = [a1 text];
    if (v13)
    {
      v14 = v13;
      v15 = String._bridgeToObjectiveC()();
      v16 = [v14 stringByReplacingCharactersInRange:a2 withString:{a3, v15}];

      if (v16)
      {
        [v16 length];

        (*(v7 + 8))(v9, v6);
        return;
      }

      goto LABEL_11;
    }
  }

  (*(v7 + 8))(v9, v6);
}

uint64_t sub_100768898(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007688EC(void *a1)
{
  v3 = *(type metadata accessor for HttpTemplateParameter() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100767C8C(a1, v5, v1 + v4, v6);
}

id sub_100768998@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v4 - 8);
  v6 = v29 - v5;
  v7 = type metadata accessor for UIView.LayoutRegion();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageGrid.Direction();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = v29 - v16;
  v18 = [a1 presentingViewController];
  if (!v18)
  {
    v18 = a1;
  }

  result = [v18 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v20 = result;
  v30 = v13;
  v31 = a2;
  [result bounds];
  v22 = v21;
  v24 = v23;

  (*(v11 + 104))(v17, enum case for PageGrid.Direction.vertical(_:), v10);
  result = [v18 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v25 = result;
  v29[0] = v22;
  v29[1] = v24;
  v26 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v27 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v6, v26, v27);
  (*(v28 + 56))(v6, 0, 1, v27);
  static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
  sub_1004B1184(v6);
  UIView.edgeInsets(for:)();

  (*(v32 + 8))(v9, v33);
  (*(v11 + 16))(v30, v17, v10);
  if (qword_10096E9A0 != -1)
  {
    swift_once();
  }

  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();

  return (*(v11 + 8))(v17, v10);
}

void sub_100768F60()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8);
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled;
  (*(v3 + 96))((*(v0 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled) & 1) == 0, ObjectType, v3);
  if ((*(v3 + 136))(ObjectType, v3) != 6 && *(v0 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell))
  {
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
    v7 = swift_getObjectType();
    (*(v6 + 96))((*(v0 + v5) & 1) == 0, v7, v6);
  }

  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (v8)
  {
    v9 = v2 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = v8;
    v11 = swift_getObjectType();
    v12 = *(v10 + 32);
    v13 = v2;
    if (v12(v11, v10))
    {
      v15 = v14;
      v16 = swift_getObjectType();
      (*(v15 + 32))((*(v0 + v5) & 1) == 0, v16, v15);
      swift_unknownObjectRelease();
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
  if (v17)
  {
    v18 = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = *(v19 + 32);
      v21 = v19;
      v25 = v17;
      if (v20(v18, v21))
      {
        v23 = v22;
        v24 = swift_getObjectType();
        (*(v23 + 32))((*(v1 + v5) & 1) == 0, v24, v23);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1007691D8(double a1, double a2, double a3, double a4)
{
  v5 = (v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets);
  v6 = *(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets);
  v7 = *(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 8);
  v8 = *(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 16);
  v9 = *(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 24);
  if (v6 != a1 || v7 != a2 || v8 != a3 || v9 != a4)
  {
    v13 = *(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8);
    ObjectType = swift_getObjectType();
    *v20 = v6;
    *&v20[1] = v7;
    *&v20[2] = v8;
    *&v20[3] = v9;
    v21 = 0;
    (*(v13 + 224))(v20, ObjectType, v13);
    if (*(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell))
    {
      v15 = *(v4 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
      v16 = swift_getObjectType();
      v17 = v5[1];
      v18[0] = *v5;
      v18[1] = v17;
      v19 = 0;
      (*(v15 + 224))(v18, v16, v15);
    }
  }
}

void sub_1007693C4()
{
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 addSubview:v1];

  v4 = *&v0[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addSubview:v5];
}

void sub_10076954C(void *a1, uint64_t a2, uint64_t a3, const char **a4, void *a5, char a6)
{
  v12.receiver = a1;
  v12.super_class = swift_getObjectType();
  v10 = *a4;
  v11 = v12.receiver;
  objc_msgSendSuper2(&v12, v10, a3);
  v11[*a5] = a6;
}

void sub_1007695C4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v3 - 8);
  v5 = &v51 - v4;
  v6 = type metadata accessor for UIView.LayoutRegion();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51.receiver = v1;
  v51.super_class = ObjectType;
  objc_msgSendSuper2(&v51, "viewDidLayoutSubviews", v8);
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
  v14 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
  sub_1004B1184(v5);
  UIView.edgeInsets(for:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*(v7 + 8))(v10, v6);
  v24 = &v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
  v25 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets];
  v26 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 8];
  v27 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 16];
  v28 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_verticalSafeAreaInsets + 24];
  *v24 = v17;
  *(v24 + 1) = v19;
  *(v24 + 2) = v21;
  *(v24 + 3) = v23;
  sub_1007691D8(v25, v26, v27, v28);
  v29 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell];
  if (v29)
  {
    v30 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8];
    v31 = v29;
    sub_10076994C(v31, v30);
    v33 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
    v32 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
    v34 = [v1 view];
    if (v34)
    {
      v35 = v34;
      [v34 bounds];
      v37 = v36;

      v38 = sub_100769CEC(v37, v33, v32);
      [v33 setFrame:{0.0, 0.0, v38, v39}];

      return;
    }

    goto LABEL_8;
  }

  v40 = *&v1[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    [v40 setFrame:{v44, v46, v48, v50}];
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10076994C(void *a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (swift_dynamicCastClass())
  {
    v6 = *&v2[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8];
    ObjectType = swift_getObjectType();
    if ((*(v6 + 160))(ObjectType, v6) == 4)
    {
      if (v2[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isDisappearing])
      {
        return;
      }

      if (v2[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isAppearing] == 1)
      {
        v8 = objc_opt_self();
        v9 = swift_allocObject();
        v9[2] = a1;
        v9[3] = a2;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_10076A0D8;
        *(v10 + 24) = v9;
        aBlock[4] = sub_10006F094;
        aBlock[5] = v10;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000489A8;
        aBlock[3] = &unk_1008D1888;
        v11 = _Block_copy(aBlock);
        v12 = a1;
        v13 = v3;

        [v8 performWithoutAnimation:v11];
        _Block_release(v11);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

        __break(1u);
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  type metadata accessor for RiverTodayCardCollectionViewCell();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    v27 = [v2 view];
    if (v27)
    {
LABEL_15:
      v28 = v27;
      [v27 bounds];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      [a1 setFrame:{v30, v32, v34, v36}];
      return;
    }

    __break(1u);
LABEL_14:
    v27 = [v2 view];
    if (!v27)
    {
LABEL_20:
      __break(1u);
      return;
    }

    goto LABEL_15;
  }

  v16 = v15;
  *(v15 + OBJC_IVAR____TtC8AppStore32RiverTodayCardCollectionViewCell_isDisappearing) = *(v3 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isDisappearing);
  v37 = a1;
  v17 = [v3 view];
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v16 setFrame:{v20, v22, v24, v26}];
}

double sub_100769CEC(double a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_isCardModeEnabled])
  {
    return a1;
  }

  v12 = [v3 traitCollection];
  v13 = UITraitCollection.isRegularPad.getter();
  type metadata accessor for ListTodayCardCollectionViewCell();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a3 + 160))(ObjectType, a3);

  if (v15 != 6)
  {
LABEL_6:
    v16 = 1;
    goto LABEL_7;
  }

  v16 = 6;
LABEL_7:
  if (v13)
  {
    v17 = v16;
  }

  else
  {
    v17 = 5;
  }

  sub_100768998(v4, v11);
  v18 = swift_getObjectType();
  v19 = *&v4[OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_todayCard];
  v20 = [v4 traitCollection];
  v21 = [v4 view];
  (*(a3 + 80))(v19, v17, 1, v11, v20, v21, v18, a3);

  (*(v8 + 8))(v11, v7);
  return a1;
}

id sub_100769F64(void *a1, int a2, id a3)
{
  result = [a3 view];
  if (result)
  {
    v5 = result;
    [result bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    return [a1 setFrame:{v7, v9, v11, v13}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10076A0E8()
{
  result = qword_100974790;
  if (!qword_100974790)
  {
    type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974790);
  }

  return result;
}

double sub_10076A140()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  ShelfLayoutContext.contentPageGrid.getter();
  v4 = ShelfLayoutContext.traitCollection.getter();
  sub_1001B2E10(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

double sub_10076A28C(void *a1, double a2)
{
  v4 = type metadata accessor for SmallLockupLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (GameCenterReengagement.lockup.getter())
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v8 = v12;
    v9 = [v12 userInterfaceIdiom];

    if (v9 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView();
      sub_1003DF3C4(v7);
      swift_getObjectType();
      a2 = sub_10070B598(v7, a1);

      (*(v5 + 8))(v7, v4);
    }
  }

  return a2;
}

double sub_10076A46C(uint64_t a1)
{
  v3 = type metadata accessor for GameCenterReengagementLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GameCenterReengagementLayout();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ItemLayoutContext();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v59 = v11;
  v60 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageGrid();
  v57 = *(v12 - 8);
  v58 = v12;
  __chkstk_darwin(v12);
  v56 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for LabelPlaceholderCompatibility();
  v64 = *(v71 - 8);
  __chkstk_darwin(v71);
  v15 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameCenterReengagement();
  sub_10076AF90(&unk_100983E70, &type metadata accessor for GameCenterReengagement);
  ItemLayoutContext.typedModel<A>(as:)();
  v16 = v88[0];
  if (!v88[0])
  {
    return 0.0;
  }

  v50 = v1;
  v52 = v5;
  v54 = v7;
  v51 = sub_100079F24();
  v63 = GameCenterReengagement.badge.getter();
  v49[1] = v17;
  v18 = sub_1000367E8();
  v70 = v16;
  if (qword_10096E380 != -1)
  {
    swift_once();
  }

  v53 = v9;
  v55 = v6;
  v19 = type metadata accessor for FontUseCase();
  sub_1000056A8(v19, qword_1009D1A00);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v20 = v88[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v21 = type metadata accessor for Feature();
  v88[3] = v21;
  v68 = sub_10076AF90(&qword_100972E50, &type metadata accessor for Feature);
  v88[4] = v68;
  v22 = sub_1000056E0(v88);
  v23 = *(v21 - 8);
  v24 = *(v23 + 104);
  v69 = a1;
  v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v65 = v23 + 104;
  v66 = v24;
  v24(v22);
  isFeatureEnabled(_:)();
  sub_100007000(v88);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v63 = v18;
  v64 = *(v64 + 8);
  (v64)(v15, v71);
  GameCenterReengagement.title.getter();
  if (qword_10096E388 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v19, qword_1009D1A18);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v25 = v87[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v87[3] = v21;
  v87[4] = v68;
  v26 = sub_1000056E0(v87);
  v66(v26, v67, v21);
  isFeatureEnabled(_:)();
  sub_100007000(v87);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v64)(v15, v71);
  GameCenterReengagement.subtitle.getter();
  if (qword_10096E390 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v19, qword_1009D1A30);
  swift_getKeyPath();
  v27 = v69;
  ItemLayoutContext.subscript.getter();

  v28 = v86[0];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v86[3] = v21;
  v86[4] = v68;
  v29 = sub_1000056E0(v86);
  v66(v29, v67, v21);
  isFeatureEnabled(_:)();
  sub_100007000(v86);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (v64)(v15, v71);
  swift_getKeyPath();
  v30 = v56;
  v31 = v27;
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v57 + 8))(v30, v58);
  v32 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v33 = LayoutViewPlaceholder.init(measurements:)();
  v35 = v60;
  v34 = v61;
  v36 = v62;
  (*(v61 + 16))(v60, v31, v62);
  v37 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = v70;
  (*(v34 + 32))(v39 + v37, v35, v36);
  *(v39 + v38) = v50;
  swift_allocObject();

  v40 = LayoutViewPlaceholder.init(measureWith:)();
  v41 = swift_unknownObjectRetain();
  sub_10041DBC0(v41, v52);
  swift_unknownObjectRelease();
  v85 = 0;
  *&v83[40] = 0u;
  v84 = 0u;
  sub_10002C0AC(v88, v83);
  sub_10002C0AC(v87, &v82);
  sub_10002C0AC(v86, &v81);
  v79 = v32;
  v80 = &protocol witness table for LayoutViewPlaceholder;
  v71 = v33;
  v78 = v33;
  swift_getKeyPath();

  ItemLayoutContext.subscript.getter();

  v42 = v75;
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v43 = LayoutViewPlaceholder.init(representing:)();
  v76 = v32;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  v75 = v43;
  v73 = v32;
  v72 = v40;

  v44 = v53;
  GameCenterReengagementLayout.init(metrics:badgeGlyph:badgeLabel:titleLabel:subtitleLabel:heroContent:separator:footer:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_10076AF90(&unk_100993010, &type metadata accessor for GameCenterReengagementLayout);
  v45 = v55;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v47 = v46;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v54 + 8))(v44, v45);
  sub_100007000(v86);
  sub_100007000(v87);
  sub_100007000(v88);
  return v47;
}

double sub_10076AED8(void *a1, double a2)
{
  type metadata accessor for ItemLayoutContext();

  return sub_10076A28C(a1, a2);
}

uint64_t sub_10076AF90(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10076AFD8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8AppStore28TabPlaceholderViewController_storeTab;
  v6 = type metadata accessor for StoreTab();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v26.receiver = v2;
  v26.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v26, "initWithNibName:bundle:", 0, 0);
  v9 = sub_100040EAC();
  if (v9)
  {
    v10 = v9;
    [v8 setTabBarItem:v9];
    v11 = [v8 title];
    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = [v8 title];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {
LABEL_7:
        v18 = [v10 title];
        if (v18)
        {
          v19 = v18;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          StoreTab.title.getter();
          if (!v21)
          {
            v22 = 0;
            goto LABEL_15;
          }
        }

        v22 = String._bridgeToObjectiveC()();

LABEL_15:
        [v8 setTitle:v22];
      }
    }
  }

  else
  {
    StoreTab.title.getter();
    if (v20)
    {
      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    [v8 setTitle:v10];
  }

  result = [v8 view];
  if (result)
  {
    v24 = result;
    v25 = [objc_opt_self() systemBackgroundColor];
    [v24 setBackgroundColor:v25];

    (*(v7 + 8))(a1, v6);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10076B2C4(uint64_t a1)
{
  v73 = a1;
  v66 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v66);
  v67 = &v64 - v1;
  v2 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v2 - 8);
  v64 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v69 = &v64 - v5;
  __chkstk_darwin(v6);
  v70 = &v64 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  __chkstk_darwin(v8);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v64 - v12;
  v13 = sub_10002849C(&qword_100996240);
  __chkstk_darwin(v13);
  v15 = &v64 - v14;
  v16 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v16 - 8);
  v18 = &v64 - v17;
  v19 = type metadata accessor for FlowDestination();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v64 - v24;
  __chkstk_darwin(v26);
  v28 = &v64 - v27;
  __chkstk_darwin(v29);
  v31 = &v64 - v30;
  sub_1000404B8(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = &unk_1009796F0;
    v33 = v18;
LABEL_27:
    sub_10002B894(v33, v32);
    v41 = 0;
    return v41 & 1;
  }

  sub_10013A05C(v18, v31);
  v34 = &v15[*(v13 + 48)];
  sub_100118188(v31, v15);
  sub_100118188(v73, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_100118188(v15, v25);

        v43 = sub_10002849C(&unk_10097CCB0);
        v44 = *(v43 + 48);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          v45 = *(v43 + 48);
          v46 = v70;
          sub_100118248(&v25[v44], v70);
          v47 = v34 + v45;
          v48 = v69;
          sub_100118248(v47, v69);
          v49 = v67;
          v50 = *(v66 + 48);
          sub_1000417F0(v46, v67);
          sub_1000417F0(v48, v49 + v50);
          v51 = v71;
          v52 = *(v72 + 48);
          if (v52(v49, 1, v71) == 1)
          {
            sub_10002B894(v48, &qword_100982460);
            sub_10002B894(v46, &qword_100982460);
            sub_1001181EC(v31);
            if (v52(v49 + v50, 1, v51) == 1)
            {
              sub_10002B894(v49, &qword_100982460);
              v41 = 1;
              goto LABEL_33;
            }
          }

          else
          {
            v60 = v64;
            sub_1000417F0(v49, v64);
            if (v52(v49 + v50, 1, v51) != 1)
            {
              v61 = v72;
              v62 = v68;
              (*(v72 + 32))(v68, v49 + v50, v51);
              sub_10076BD70();
              v41 = dispatch thunk of static Equatable.== infix(_:_:)();
              v63 = *(v61 + 8);
              v63(v62, v51);
              sub_10002B894(v69, &qword_100982460);
              sub_10002B894(v70, &qword_100982460);
              sub_1001181EC(v31);
              v63(v60, v51);
              sub_10002B894(v49, &qword_100982460);
              goto LABEL_33;
            }

            sub_10002B894(v69, &qword_100982460);
            sub_10002B894(v70, &qword_100982460);
            sub_1001181EC(v31);
            (*(v72 + 8))(v60, v51);
          }

          sub_10002B894(v49, &unk_10097CCA0);
          v41 = 0;
          goto LABEL_33;
        }

        sub_1001181EC(v31);
        sub_10002B894(&v25[v44], &qword_100982460);
LABEL_26:
        v32 = &qword_100996240;
        v33 = v15;
        goto LABEL_27;
      }

LABEL_22:
      sub_1001181EC(v31);
      goto LABEL_26;
    }

    sub_1001181EC(v31);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_26;
    }

    sub_1001181EC(v34);
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        sub_1001181EC(v31);
        sub_100118188(v15, v22);

        v53 = sub_10002849C(&qword_1009703B8);
        v54 = *(v53 + 48);
        if (swift_getEnumCaseMultiPayload() != 13)
        {
          v58 = type metadata accessor for ArcadePageUrls();
          (*(*(v58 - 8) + 8))(&v22[v54], v58);
          goto LABEL_26;
        }

        v55 = *(v53 + 48);
        v56 = type metadata accessor for ArcadePageUrls();
        v57 = *(*(v56 - 8) + 8);
        v57(v34 + v55, v56);
        v57(&v22[v54], v56);
        break;
      case 44:
        sub_1001181EC(v31);
        if (swift_getEnumCaseMultiPayload() != 44)
        {
          goto LABEL_26;
        }

        break;
      case 20:
        sub_100118188(v15, v28);
        if (swift_getEnumCaseMultiPayload() == 20)
        {
          v36 = v71;
          v37 = v72;
          v38 = *(v72 + 32);
          v39 = v68;
          v38(v68, v28, v71);
          v40 = v65;
          v38(v65, v34, v36);
          v41 = static URL.== infix(_:_:)();
          v42 = *(v37 + 8);
          v42(v40, v36);
          v42(v39, v36);
          sub_1001181EC(v31);
LABEL_33:
          sub_1001181EC(v15);
          return v41 & 1;
        }

        sub_1001181EC(v31);
        (*(v72 + 8))(v28, v71);
        goto LABEL_26;
      default:
        goto LABEL_22;
    }
  }

  sub_1001181EC(v15);
  v41 = 1;
  return v41 & 1;
}

uint64_t type metadata accessor for TabPlaceholderViewController()
{
  result = qword_100996230;
  if (!qword_100996230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10076BCB8()
{
  result = type metadata accessor for StoreTab();
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

unint64_t sub_10076BD70()
{
  result = qword_100975040;
  if (!qword_100975040)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975040);
  }

  return result;
}

uint64_t sub_10076BDC8(__int32 a1)
{
  v54.i32[0] = a1;
  v1 = sub_10002849C(&qword_100970EE0);
  __chkstk_darwin(v1 - 8);
  v56 = v40 - v2;
  v55 = type metadata accessor for PageGrid.HorizontalMargins();
  v3 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v48 = (v40 - v6);
  __chkstk_darwin(v7);
  v9 = (v40 - v8);
  v10 = sub_10002849C(&qword_100970EE8);
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
  sub_10002849C(&qword_100970EF0);
  v26 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v42 = *(v26 + 72);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v46 = 2 * v42;
  v28 = swift_allocObject();
  v47 = v28;
  *(v28 + 16) = xmmword_1007B1E00;
  v29 = v28 + v27;
  v57 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  v57 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v30 = vdup_n_s32((v54.i8[0] & 1) == 0);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  v54 = vcltzq_s64(vshlq_n_s64(v31, 0x3FuLL));
  *v9 = vbslq_s8(v54, xmmword_1007E1F50, xmmword_1007E1F40);
  v41 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v32 = *(v3 + 104);
  v40[2] = v3 + 104;
  v53 = v32;
  v33 = v9;
  v34 = v55;
  (v32)(v33);
  LOBYTE(v57) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v57 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v40[1] = v29;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v57 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  v57 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v35 = v48;
  *v48 = vbslq_s8(v54, xmmword_1007E1F70, xmmword_1007E1F60);
  v36 = v41;
  v53(v35, v41, v34);
  LOBYTE(v57) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v57 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v57 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  static PageGrid.DirectionalValue<>.zero.getter();
  v57 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v38 = v52;
  v37 = v53;
  *v52 = vbslq_s8(v54, xmmword_1007E1F90, xmmword_1007E1F80);
  v37(v38, v36, v55);
  LOBYTE(v57) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v57 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v47;
}

uint64_t sub_10076C568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000076C0();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = a3;
  aBlock[4] = sub_10076CAF8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007A08;
  aBlock[3] = &unk_1008D1980;
  v14 = _Block_copy(aBlock);

  swift_errorRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10076CB04(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
  sub_10002849C(&unk_1009729F0);
  sub_1000079A4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

uint64_t sub_10076C840(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionOutcome();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = LocalAskToBuyAction.completion.getter();
  v7(a2);

  if (a2)
  {
    swift_errorRetain();
    Promise.reject(_:)();
  }

  else
  {
    (*(v4 + 104))(v6, enum case for ActionOutcome.performed(_:), v3);
    Promise.resolve(_:)();
    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10076C9AC(uint64_t a1)
{
  sub_10002849C(&qword_1009764A0);
  v2 = Promise.__allocating_init()();
  v3 = objc_opt_self();
  LocalAskToBuyAction.adamIdString.getter();
  v4 = String._bridgeToObjectiveC()();

  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v8[4] = sub_10076CAF0;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100235540;
  v8[3] = &unk_1008D1930;
  v6 = _Block_copy(v8);

  [v3 localApproveRequestWithItemIdentifier:v4 completion:v6];
  _Block_release(v6);

  return v2;
}

uint64_t sub_10076CB04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10076CB54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v2 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v4 + 8);
        ObjectType = swift_getObjectType();
        (*(v5 + 8))(v3, ObjectType, v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10076CC24()
{
  v1 = v0;
  v2 = PageFacetsPresenter.FacetsState.selectedFacetOptions.getter();
  if (*(v2 + 16) && (v3 = sub_1003D7A9C(v1 + OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_facet), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  v6 = *(v1 + OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_selectedFacetOptions);
  *(v1 + OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_selectedFacetOptions) = v5;

  sub_10076F0D0(v7, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {

    sub_10076CDF4();
  }
}

void (*sub_10076CCF0(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_10076F8D0;
}

void sub_10076CDF4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_1009962B8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource];
  if (!v7)
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = v7;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v17[0] = 0xD000000000000030;
  v17[1] = 0x80000001007FA550;
  v9 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  NSDiffableDataSourceSnapshot.reloadItems(_:)(v9);

  v10 = *&v1[v6];
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = v10;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v12 = &v1[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_preselectionContentOffset + 16])
  {
    (*(v3 + 8))(v5, v2);
    return;
  }

  v14 = *v12;
  v13 = v12[1];
  v15 = [v1 collectionView];
  if (v15)
  {
    v16 = v15;
    [v15 setContentOffset:{v14, v13}];

    (*(v3 + 8))(v5, v2);
    *v12 = 0.0;
    v12[1] = 0.0;
    *(v12 + 16) = 1;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_10076CFE4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v37 = sub_10002849C(&qword_1009962B8);
  v34 = *(v37 - 8);
  __chkstk_darwin(v37);
  v4 = &v34 - v3;
  v36 = sub_10002849C(&qword_1009962C0);
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v36);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v34 - v9;
  v44.receiver = v0;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, "viewDidLoad", v8);
  v11 = [v0 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 systemBackgroundColor];
  [v12 setBackgroundColor:v14];

  v15 = [v0 collectionView];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v13 systemBackgroundColor];
  [v16 setBackgroundColor:v17];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100972D08);
  type metadata accessor for PageFacets.Facet.Option();
  UICollectionView.CellRegistration.init(handler:)();
  if (![v0 collectionView])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v19 = v35;
  v18 = v36;
  (*(v5 + 16))(v35, v10, v36);
  v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v21 = swift_allocObject();
  (*(v5 + 32))(v21 + v20, v19, v18);
  v22 = objc_allocWithZone(sub_10002849C(&qword_1009962C8));
  v23 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  (*(v5 + 8))(v10, v18);
  v24 = OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource;
  v25 = *&v1[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource] = v23;

  sub_10076F8F4(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option);
  NSDiffableDataSourceSnapshot.init()();
  v26 = v37;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_1008B04E8);
  PageFacets.Facet.options.getter();
  aBlock = 0;
  v39 = 0;
  NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

  v27 = *&v1[v24];
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v28 = v27;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v34 + 8))(v4, v26);
  v29 = [v1 collectionView];
  if (v29)
  {
    v30 = v29;
    v31 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v42 = sub_10076D5A4;
    v43 = 0;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_1002E9BD4;
    v41 = &unk_1008D1A48;
    v32 = _Block_copy(&aBlock);
    v33 = [v31 initWithSectionProvider:v32];
    _Block_release(v32);

    [v30 setCollectionViewLayout:v33];

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_10076D5A4()
{
  v0 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICollectionLayoutListConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v0, v6);
  UICollectionLayoutListConfiguration.init(appearance:)();
  sub_100005744(0, &unk_100990AB0);
  v9 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t sub_10076D748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v5 - 8);
  v27 = v26 - v6;
  v7 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UICellAccessory.DisplayedState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UIListContentConfiguration();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.cell()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v26[2] = a1;
    PageFacets.Facet.Option.title.getter();
    UIListContentConfiguration.text.setter();
    v20 = *&v19[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_selectedFacetOptions];

    v21 = sub_10029615C(a3, v20);

    if (v21)
    {
      sub_10002849C(&qword_100972CA8);
      v22 = *(type metadata accessor for UICellAccessory() - 8);
      v26[1] = (*(v22 + 80) + 32) & ~*(v22 + 80);
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      (*(v11 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v10);
      v23 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v23 - 8) + 56))(v27, 1, 1, v23);
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v28 + 8))(v9, v29);
      (*(v11 + 8))(v13, v10);
    }

    UICollectionViewListCell.accessories.setter();
  }

  v30[3] = v14;
  v30[4] = &protocol witness table for UIListContentConfiguration;
  v24 = sub_1000056E0(v30);
  (*(v15 + 16))(v24, v17, v14);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_10076DB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100972C98);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for PageFacets.Facet.Option();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a3, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100005744(0, &qword_100972D08);
  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10076EFCC(v6);
  return v9;
}

void sub_10076DCC8(void *a1, uint64_t a2)
{
  v124 = a1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v119 = &v91[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v120 = type metadata accessor for DispatchQoS();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v91[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v114 = type metadata accessor for IndexPath();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = v7;
  v112 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v125 = type metadata accessor for DispatchTime();
  v116 = *(v125 - 8);
  __chkstk_darwin(v125);
  v110 = &v91[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v115 = &v91[-v10];
  v11 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v11 - 8);
  v97 = &v91[-v12];
  v99 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v91[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for UICellAccessory.DisplayedState();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v91[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PageFacets.Facet.DisplayType();
  v128 = *(v15 - 8);
  __chkstk_darwin(v15);
  v105 = &v91[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v106 = &v91[-v18];
  __chkstk_darwin(v19);
  v123 = &v91[-v20];
  __chkstk_darwin(v21);
  v126 = &v91[-v22];
  __chkstk_darwin(v23);
  v25 = &v91[-v24];
  __chkstk_darwin(v26);
  v28 = &v91[-v27];
  v29 = sub_10002849C(&qword_100972C98);
  __chkstk_darwin(v29 - 8);
  v31 = &v91[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v34 = &v91[-v33];
  v35 = type metadata accessor for PageFacets.Facet.Option();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v127 = &v91[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = *(v2 + OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource);
  if (!v38)
  {
    __break(1u);
    return;
  }

  v39 = v2;
  v40 = v38;
  v109 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_10076EFCC(v34);
    return;
  }

  v107 = v36;
  v41 = *(v36 + 32);
  v108 = v35;
  v41(v127, v34, v35);
  v103 = OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_facet;
  PageFacets.Facet.displayType.getter();
  v42 = *(v128 + 104);
  v92 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v102 = v128 + 104;
  v101 = v42;
  v42(v25);
  v43 = sub_10076F8F4(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v100 = v43;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v135 && v130 == v136)
  {
    v44 = 1;
  }

  else
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v45 = v128 + 8;
  v46 = *(v128 + 8);
  v46(v25, v15);
  v128 = v45;
  v104 = v46;
  v46(v28, v15);

  if ((v44 & 1) != 0 || (v47 = *(v39 + OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_selectedFacetOptions), , v48 = sub_10029615C(v127, v47), , (v48 & 1) == 0))
  {
    v50 = v124;
    [v124 contentOffset];
    v52 = v39 + OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_preselectionContentOffset;
    *v52 = v53;
    *(v52 + 8) = v54;
    *(v52 + 16) = 0;
    v55 = v107;
    v56 = v108;
    (*(v107 + 16))(v31, v127, v108);
    v57 = *(v55 + 56);
    v49 = 1;
    v57(v31, 0, 1, v56);
    PageFacetsPresenter.didSelect(option:in:)();
    sub_10076EFCC(v31);
    v51 = v123;
  }

  else
  {
    v49 = 0;
    v51 = v123;
    v50 = v124;
  }

  PageFacets.Facet.displayType.getter();
  v101(v51, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v15);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v135 && v130 == v136)
  {
    v58 = v51;
    v59 = v104;
    v104(v58, v15);
    v60 = v126;
LABEL_15:
    v59(v60, v15);

    goto LABEL_17;
  }

  v61 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v62 = v104;
  v104(v51, v15);
  v62(v126, v15);

  if (v61)
  {
    goto LABEL_17;
  }

  v67 = v106;
  PageFacets.Facet.displayType.getter();
  v68 = v105;
  v101(v105, v92, v15);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v135 && v130 == v136)
  {
    v69 = v68;
    v59 = v104;
    v104(v69, v15);
    v60 = v67;
    goto LABEL_15;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v71 = v104;
  v104(v68, v15);
  v71(v67, v15);

  if (v70)
  {
LABEL_17:
    v63 = v109;
    if (v49)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v65 = [v50 cellForItemAtIndexPath:isa];

      if (v65)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v66 = *(UICollectionViewListCell.accessories.getter() + 16);

          if (!v66)
          {
            sub_10002849C(&qword_100972CA8);
            v72 = *(type metadata accessor for UICellAccessory() - 8);
            v128 = (*(v72 + 80) + 32) & ~*(v72 + 80);
            *(swift_allocObject() + 16) = xmmword_1007B10D0;
            v73 = v94;
            v74 = v93;
            v75 = v96;
            (*(v94 + 104))(v93, enum case for UICellAccessory.DisplayedState.always(_:), v96);
            v76 = type metadata accessor for UICellAccessory.LayoutDimension();
            (*(*(v76 - 8) + 56))(v97, 1, 1, v76);
            v77 = v95;
            UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
            static UICellAccessory.checkmark(displayed:options:)();
            (*(v98 + 8))(v77, v99);
            (*(v73 + 8))(v74, v75);
          }

          UICollectionViewListCell.accessories.setter();
        }
      }
    }

    sub_100005744(0, &qword_1009729E0);
    v78 = static OS_dispatch_queue.main.getter();
    v79 = v110;
    static DispatchTime.now()();
    v80 = v115;
    + infix(_:_:)();
    v128 = *(v116 + 8);
    (v128)(v79, v125);
    v81 = v113;
    v82 = v112;
    v83 = v114;
    (*(v113 + 16))(v112, v63, v114);
    v84 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v85 = swift_allocObject();
    *(v85 + 16) = v50;
    (*(v81 + 32))(v85 + v84, v82, v83);
    v133 = sub_1000A2E5C;
    v134 = v85;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_100007A08;
    v132 = &unk_1008D19D0;
    v86 = _Block_copy(&aBlock);
    v87 = v50;

    v88 = v117;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10076F8F4(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    v89 = v119;
    v90 = v122;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v86);

    (*(v121 + 8))(v89, v90);
    (*(v118 + 8))(v88, v120);
    (v128)(v80, v125);
  }

  (*(v107 + 8))(v127, v108);
}

uint64_t type metadata accessor for PageFacetOptionsViewController()
{
  result = qword_1009962A8;
  if (!qword_1009962A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10076EF04()
{
  result = type metadata accessor for PageFacets.Facet();
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

uint64_t sub_10076EFCC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100972C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10076F03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002849C(&qword_1009962C0);

  return sub_10076DB80(a1, a2, a3);
}

void sub_10076F0D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacets.Facet.Option();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v44 = &v33 - v9;
  v12 = __chkstk_darwin(v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_10076F8F4(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option);
        v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_10076F8F4(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option);
          v31 = dispatch thunk of static Equatable.== infix(_:_:)();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

id sub_10076F480(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_10097CCE0);
  v28 = *(v9 - 8);
  v29 = v9;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  *&v3[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_diffableDataSource] = 0;
  v12 = &v3[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_preselectionContentOffset];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_facet;
  v14 = type metadata accessor for PageFacets.Facet();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v4[v13], a1, v14);
  *&v4[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_facetsPresenter] = a2;

  v16 = PageFacetsPresenter.selectedFacetOptions.getter();
  if (*(v16 + 16) && (v17 = sub_1003D7A9C(a1), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v4[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_selectedFacetOptions] = v19;
  v20 = [objc_allocWithZone(UICollectionViewLayout) init];
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v31, "initWithCollectionViewLayout:", v20, ObjectType);

  if (a3)
  {
    v22 = [v21 navigationItem];
    sub_100005744(0, &qword_100983870);
    sub_100005744(0, &qword_10097CD40);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v32.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v32.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v32, v33).super.super.isa;
    [v22 setRightBarButtonItem:isa];
  }

  v24 = [v21 navigationItem];
  PageFacets.Facet.title.getter();
  v25 = String._bridgeToObjectiveC()();

  [v24 setTitle:v25];

  PageFacetsPresenter.onSelectedFacetOptionsChanged.getter();
  sub_10002849C(&unk_100984580);
  sub_100097060(&unk_10097CD10, &unk_100984580);
  dispatch thunk of static EventEmitter.defaultScheduler.getter();
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v15 + 8))(a1, v14);
  sub_100007000(v30);
  (*(v28 + 8))(v11, v29);
  return v21;
}

uint64_t sub_10076F8F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10076F944()
{
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2430);
  qword_1009D3A68 = v0;
  unk_1009D3A70 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_1009D3A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_10076FA00(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction];
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
  [v19 addSubview:*&v18[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView]];

  v20 = [v18 contentView];
  v21 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView;
  [v20 addSubview:*&v18[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView]];

  v22 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  [*&v18[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] addTarget:v18 action:"handleTapWithGestureRecognizer:"];
  v23 = *&v18[v22];
  [v23 setDelegate:v18];

  [*&v18[v21] addGestureRecognizer:*&v18[v22]];
  return v18;
}

id sub_10076FC58()
{
  [*&v0[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10076FD84()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppEventSearchResultCollectionViewCell();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "layoutSubviews");
  v6 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *&v1[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView];
  sub_1000AB0CC();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v15 setFrame:?];
  if (qword_10096EFC0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D3A50, qword_1009D3A68);
  v16 = [v1 traitCollection];
  AnyDimension.value(with:)();

  v21.origin.x = v8;
  v21.origin.y = v10;
  v21.size.width = v12;
  v21.size.height = v14;
  CGRectGetMinX(v21);
  [v15 frame];
  CGRectGetMaxY(v22);
  v23.origin.x = v8;
  v23.origin.y = v10;
  v23.size.width = v12;
  v23.size.height = v14;
  CGRectGetWidth(v23);
  v24.origin.x = v8;
  v24.origin.y = v10;
  v24.size.width = v12;
  v24.size.height = v14;
  CGRectGetMaxY(v24);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView];
  if (qword_10096D5D8 != -1)
  {
    swift_once();
  }

  sub_100771F5C(&unk_1009CEDC8, v17);
  v18 = *&v17[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView];
  sub_100629FBC(v4);
  sub_100770A88(v18, v4);
  sub_1001A9220(v4);
  [v1 bounds];
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v17 setFrame:?];
}

void sub_1007701B0(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100770A40(&qword_100973190, 255, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView];
    sub_100028004();
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

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
    [*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_100770350(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1001D3090;
}

id sub_1007703C4()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for AppEventSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  sub_1000ACF48();
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView];
  sub_1002C1934();
  v2 = OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView;
  sub_1006269C4();
  v3 = &v1[OBJC_IVAR____TtC8AppStore12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t (*sub_100770560(uint64_t **a1))()
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
  v2[4] = sub_100770350(v2);
  return sub_1000B4CAC;
}

double sub_100770644()
{
  [*(*(*v0 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1007706D0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView);
  [*&v1[OBJC_IVAR____TtC8AppStore12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_100770760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1007707B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100770820(uint64_t *a1))()
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
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1007708BC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView) + OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore16AppEventCardView_mediaContentView);
  sub_100028004();
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_100770A40(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_100770A88(void *a1, uint64_t a2)
{
  v78 = type metadata accessor for FloatingPointRoundingRule();
  v82 = *(v78 - 8);
  __chkstk_darwin(v78);
  v81 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for StackMeasurable.Axis();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for StackMeasurable();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v72 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for VerticalSpaceMeasurable();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for OfferButtonMetrics();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v59 - v10;
  v11 = type metadata accessor for SmallLockupLayout.Metrics();
  v70 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AppEventCardLayout(0);
  sub_100031660(a2 + v14[18], &v85, &qword_100975610);
  v15 = v86;
  sub_10002B894(&v85, &qword_100975610);
  v16 = [a1 traitCollection];
  v17 = [v16 preferredContentSizeCategory];
  v18 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v18)
  {
    v59 = v15;
    v79 = a2;
    v19 = v14[13];
    v20 = v14[14];
    v21 = v14[16];
    v62 = v14[15];
    v63 = v21;
    if (qword_10096EB90 != -1)
    {
      swift_once();
    }

    v60 = (v79 + v19);
    v61 = (v79 + v20);
    v22 = sub_1000056A8(v11, qword_1009D3040);
    v80 = type metadata accessor for AppEventCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v24 = v23;
    v25 = [a1 traitCollection];
    v26 = v70;
    (*(v70 + 16))(v13, v22, v11);
    v27 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v29 = v71;
    if ((v30 & 1) == 0 && ((v27 | v28) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v31 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v31 = qword_100991028;
      }

      v32 = v67;
      v33 = sub_1000056A8(v67, v31);
      v34 = v66;
      v35 = v64;
      (*(v66 + 16))(v64, v33, v32);
      v36 = v65;
      (*(v34 + 32))(v65, v35, v32);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v34 + 8))(v36, v32);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v38 = v37;

    (*(v26 + 8))(v13, v11);
    *&v83 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v86 = &type metadata for CGFloat;
    v87 = &protocol witness table for CGFloat;
    *&v85 = v24;
    *(inited + 56) = v29;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((inited + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(inited);
    v40 = v79;
    v41 = v78;
    if (v59)
    {
      v86 = &type metadata for CGFloat;
      v87 = &protocol witness table for CGFloat;
      *&v85 = ceil(v38 + 16.0 + 16.0);
      v42 = v68;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v43 = v83;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = sub_100033260(0, v43[2] + 1, 1, v43);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = sub_100033260((v44 > 1), v45 + 1, 1, v43);
      }

      v86 = v29;
      v87 = &protocol witness table for VerticalSpaceMeasurable;
      v46 = sub_1000056E0(&v85);
      v47 = v69;
      (*(v69 + 16))(v46, v42, v29);
      v43[2] = v45 + 1;
      sub_100005A38(&v85, &v43[5 * v45 + 4]);
      (*(v47 + 8))(v42, v29);
      *&v83 = v43;
    }

    (*(v75 + 104))(v73, enum case for StackMeasurable.Axis.vertical(_:), v77);
    v48 = v72;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    (*(v74 + 8))(v48, v76);
    sub_10002A400(v40, v40[3]);
    v49 = v81;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v50 = *(v82 + 8);
    v82 += 8;
    v50(v49, v41);
    CGSize.subtracting(insets:)();
    sub_10002A400(v60, v60[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v52 = v51;
    v53 = v80;
    sub_10002A400((v40 + v80[7]), *(v40 + v80[7] + 24));
    AnyDimension.topMargin(from:in:)();
    *&v85 = v52;
    AnyDimension.bottomMargin(from:in:)();
    sub_10002A400(v61, v61[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v55 = v54;
    sub_10002A400((v40 + v53[8]), *(v40 + v53[8] + 24));
    AnyDimension.topMargin(from:in:)();
    *&v85 = v55;
    AnyDimension.bottomMargin(from:in:)();
    sub_100031660(v40 + v62, &v83, &unk_10097E890);
    if (v84)
    {
      sub_100005A38(&v83, &v85);
      sub_10002A400(&v85, v86);
      if (dispatch thunk of LayoutView.hasContent.getter())
      {
        sub_10002A400(&v85, v86);
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v57 = v56;
        sub_10002A400((v40 + v80[9]), *(v40 + v80[9] + 24));
        AnyDimension.topMargin(from:in:)();
        *&v83 = v57;
        AnyDimension.bottomMargin(from:in:)();
      }

      sub_100007000(&v85);
    }

    else
    {
      sub_10002B894(&v83, &unk_10097E890);
    }

    sub_10002A400((v40 + v80[10]), *(v40 + v80[10] + 24));
    v58 = v81;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v50(v58, v41);
    sub_100031660(v40 + v63, &v83, &qword_100975610);
    if (v84)
    {
      sub_100005A38(&v83, &v85);
      sub_10002A400(&v85, v86);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
      {
        sub_10002A400(&v85, v86);
        dispatch thunk of Measurable.measurements(fitting:in:)();
      }

      sub_100007000(&v85);
    }

    else
    {
      sub_10002B894(&v83, &qword_100975610);
    }
  }

  else
  {
    sub_100771830(a2, v15 != 0, a1);
  }
}

double sub_100771830(uint64_t a1, int a2, void *a3)
{
  v45 = a2;
  v50 = type metadata accessor for StackMeasurable.Axis();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for StackMeasurable();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for VerticalSpaceMeasurable();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfferButtonMetrics();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = type metadata accessor for SmallLockupLayout.Metrics();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EB88 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v14, qword_1009D3028);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  AspectRatio.height(fromWidth:)();
  v20 = v19;
  v52 = a3;
  v21 = [a3 traitCollection];
  (*(v15 + 16))(v17, v18, v14);
  v22 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v24 & 1) == 0 && ((v22 | v23) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v25 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v25 = qword_100991028;
    }

    v26 = sub_1000056A8(v8, v25);
    v27 = v42;
    (*(v42 + 16))(v10, v26, v8);
    (*(v27 + 32))(v13, v10, v8);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v27 + 8))(v13, v8);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v29 = v28;

  (*(v15 + 8))(v17, v14);
  v56 = _swiftEmptyArrayStorage;
  sub_10002849C(&qword_100996330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v20;
  v31 = v46;
  *(inited + 56) = v46;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((inited + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10039435C(inited);
  if (v45)
  {
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *&v53 = ceil(v29 + 4.0 + 4.0);
    v32 = v43;
    VerticalSpaceMeasurable.init(_:multiplier:)();
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_100033260(0, *(v33 + 2) + 1, 1, v33);
    }

    v35 = *(v33 + 2);
    v34 = *(v33 + 3);
    if (v35 >= v34 >> 1)
    {
      v33 = sub_100033260((v34 > 1), v35 + 1, 1, v33);
    }

    v54 = v31;
    v55 = &protocol witness table for VerticalSpaceMeasurable;
    v36 = sub_1000056E0(&v53);
    v37 = v44;
    (*(v44 + 16))(v36, v32, v31);
    *(v33 + 2) = v35 + 1;
    sub_100005A38(&v53, &v33[5 * v35 + 4]);
    (*(v37 + 8))(v32, v31);
    v56 = v33;
  }

  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  StackMeasurable.measurements(fitting:in:)();
  v39 = v38;
  (*(v49 + 8))(v6, v51);
  return v39;
}

double sub_100771F5C(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = type metadata accessor for VerticalMarginsMeasurable();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StackMeasurable.Axis();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StackMeasurable();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for StackMeasurable.Axis.vertical(_:), v6, v12);
  sub_10002849C(&qword_100996330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007B1890;
  sub_10002C0AC(a1, v31);
  v16 = type metadata accessor for VerticalSpaceMeasurable();
  *(v15 + 56) = v16;
  *(v15 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((v15 + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10002C0AC(a1 + 40, v31);
  *(v15 + 96) = v16;
  *(v15 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((v15 + 72));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  v31[3] = v10;
  v31[4] = &protocol witness table for StackMeasurable;
  v17 = sub_1000056E0(v31);
  (*(v11 + 16))(v17, v14, v10);
  v18 = *(a1 + 136);
  v29 = &type metadata for CGFloat;
  v30 = &protocol witness table for CGFloat;
  v28 = v18;
  v19 = *(a1 + 152);
  v26 = &type metadata for CGFloat;
  v27 = &protocol witness table for CGFloat;
  v25 = v19;
  VerticalMarginsMeasurable.init(child:topMargin:bottomMargin:skipIfEmpty:shouldMeasureToBaseline:)();
  VerticalMarginsMeasurable.measurements(fitting:in:)();
  v21 = v20;
  (*(v3 + 8))(v5, v24);
  (*(v11 + 8))(v14, v10);
  return v21;
}

void sub_1007722CC()
{
  v1 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1007723C8(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC8AppStore12AppEventView_appEventCardView] + OBJC_IVAR____TtC8AppStore16AppEventCardView_lockupView);
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
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC8AppStore38AppEventSearchResultCollectionViewCell_appEventViewTappedAction])
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

id sub_100772574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton()) init];
    SearchAd.adTransparencyAction.getter();
    Action.title.getter();
    v8 = v7;

    if (v8)
    {
      v9 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_1009750A8];
    v15 = *&v6[qword_1009750A8];
    *v14 = sub_100777650;
    v14[1] = v13;

    sub_10001F63C(v15);
    v16 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel());
    v17 = v6;
    v18 = sub_1002FDC78(v17);
    v19 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall;
    if (v3[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
      if ([v20 hasContent])
      {
        v21 = [v20 text];
        if (v21)
        {
LABEL_10:
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = v25;
          v21 = v23;
LABEL_15:
          v27 = &v18[qword_10097FBE0];
          *v27 = v21;
          *(v27 + 1) = v26;

          sub_1002FE304();
          v28 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel;
          v29 = *&v3[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel];
          v30 = v18;
          if (v29)
          {
            [v29 removeFromSuperview];
            v29 = *&v3[v28];
          }

          *&v3[v28] = v18;
          v31 = v18;

          sub_100776DD8();
          [v3 addSubview:v31];

          v32 = OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel;
          v33 = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
          if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
          {
            v35 = [v34 hasContent];
          }

          else
          {
            v35 = 0;
          }

          v36 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabelPresenter;
          swift_beginAccess();
          sub_100031660(&v3[v36], v39, &unk_1009711D0);
          v37 = v40;
          sub_10002B894(v39, &unk_1009711D0);
          if (v37 || v35)
          {
            [*&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] setHidden:1];
          }

          [v3 setNeedsLayout];
        }

LABEL_13:
        v26 = 0;
        goto LABEL_15;
      }

      if (v3[v19] == 1)
      {
        v21 = [*&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel] text];
        if (v21)
        {
          goto LABEL_10;
        }

        goto LABEL_13;
      }
    }

    v21 = SearchAd.advertisingText.getter();
    goto LABEL_15;
  }

  v2[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd] = 0;
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel;
  v11 = *&v3[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v3[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v3[v10] = 0;

  result = *&v3[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (result)
  {

    return [result setHidden:0];
  }

  return result;
}

double sub_1007729A4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = type metadata accessor for StaticDimension();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_10096DD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009D06C8);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v44);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v4, qword_1009D0758);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(&v41);
  v33(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v4, qword_1009D0788);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v37);
  v22(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  qword_1009D3BC0 = &type metadata for Double;
  qword_1009D3BC8 = &protocol witness table for Double;
  qword_1009D3BA8 = 0x4030000000000000;
  xmmword_1009D3A80 = vdupq_n_s64(0x4064000000000000uLL);
  sub_100005A38(&v53, &unk_1009D3A90);
  qword_1009D3AB8 = sub_10070BB7C;
  unk_1009D3AC0 = 0;
  sub_100005A38(&v50, &unk_1009D3AC8);
  sub_100005A38(&v47, &unk_1009D3AF0);
  sub_100005A38(&v38, &unk_1009D3B68);
  sub_100005A38(&v44, &unk_1009D3B18);
  sub_100005A38(&v41, &unk_1009D3B40);
  qword_1009D3B90 = 0;
  unk_1009D3B98 = 0;
  byte_1009D3BA0 = 0;
  *&result = 0x1000100010001;
  dword_1009D3BD0 = 65537;
  qword_1009D3BD8 = 0;
  byte_1009D3BE0 = 1;
  return result;
}

double sub_100772FD8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4053400000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = type metadata accessor for StaticDimension();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_10096DD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009D06C8);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v44);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v4, qword_1009D0758);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(&v41);
  v33(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v4, qword_1009D0788);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v37);
  v22(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  qword_1009D3D30 = &type metadata for Double;
  qword_1009D3D38 = &protocol witness table for Double;
  qword_1009D3D18 = 0x4020000000000000;
  xmmword_1009D3BF0 = vdupq_n_s64(0x4061000000000000uLL);
  sub_100005A38(&v53, &unk_1009D3C00);
  qword_1009D3C28 = sub_10070BB7C;
  unk_1009D3C30 = 0;
  sub_100005A38(&v50, &unk_1009D3C38);
  sub_100005A38(&v47, &unk_1009D3C60);
  sub_100005A38(&v38, &unk_1009D3CD8);
  sub_100005A38(&v44, &unk_1009D3C88);
  sub_100005A38(&v41, &unk_1009D3CB0);
  qword_1009D3D00 = 0;
  unk_1009D3D08 = 0;
  byte_1009D3D10 = 0;
  *&result = 16777217;
  dword_1009D3D40 = 16777217;
  qword_1009D3D48 = 0;
  byte_1009D3D50 = 1;
  return result;
}

double sub_100773610()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4028000000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = type metadata accessor for StaticDimension();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_10096DD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009D06C8);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v44);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v4, qword_1009D0758);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(&v41);
  v33(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v4, qword_1009D0788);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v37);
  v22(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  qword_1009D3EA0 = &type metadata for Double;
  qword_1009D3EA8 = &protocol witness table for Double;
  qword_1009D3E88 = 0x4030000000000000;
  xmmword_1009D3D60 = vdupq_n_s64(0x4054000000000000uLL);
  sub_100005A38(&v53, &unk_1009D3D70);
  qword_1009D3D98 = sub_10070BB7C;
  unk_1009D3DA0 = 0;
  sub_100005A38(&v50, &unk_1009D3DA8);
  sub_100005A38(&v47, &unk_1009D3DD0);
  sub_100005A38(&v38, &unk_1009D3E48);
  sub_100005A38(&v44, &unk_1009D3DF8);
  sub_100005A38(&v41, &unk_1009D3E20);
  qword_1009D3E70 = 0;
  unk_1009D3E78 = 0;
  byte_1009D3E80 = 0;
  *&result = 0x1000100010001;
  dword_1009D3EB0 = 65537;
  qword_1009D3EB8 = 0;
  byte_1009D3EC0 = 1;
  return result;
}

double sub_100773C40()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4024000000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = type metadata accessor for StaticDimension();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_10096DD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009D06C8);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v44);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v4, qword_1009D0758);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(&v41);
  v33(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v4, qword_1009D0788);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v37);
  v22(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  qword_1009D4010 = &type metadata for Double;
  qword_1009D4018 = &protocol witness table for Double;
  qword_1009D3FF8 = 0x4024000000000000;
  xmmword_1009D3ED0 = vdupq_n_s64(0x4048000000000000uLL);
  sub_100005A38(&v53, &unk_1009D3EE0);
  qword_1009D3F08 = sub_10070BB7C;
  unk_1009D3F10 = 0;
  sub_100005A38(&v50, &unk_1009D3F18);
  sub_100005A38(&v47, &unk_1009D3F40);
  sub_100005A38(&v38, &unk_1009D3FB8);
  sub_100005A38(&v44, &unk_1009D3F68);
  sub_100005A38(&v41, &unk_1009D3F90);
  qword_1009D3FE0 = 0;
  unk_1009D3FE8 = 0;
  byte_1009D3FF0 = 0;
  result = 7.29112205e-304;
  dword_1009D4020 = 0x1000000;
  qword_1009D4028 = 0;
  byte_1009D4030 = 1;
  return result;
}

double sub_100774270()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = type metadata accessor for StaticDimension();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_10096DD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009D06C8);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v44);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v4, qword_1009D0758);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(&v41);
  v33(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v4, qword_1009D0788);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v37);
  v22(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  qword_1009D4180 = &type metadata for Double;
  qword_1009D4188 = &protocol witness table for Double;
  qword_1009D4168 = 0x4018000000000000;
  xmmword_1009D4040 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100005A38(&v53, &unk_1009D4050);
  qword_1009D4078 = sub_10070BB7C;
  unk_1009D4080 = 0;
  sub_100005A38(&v50, &unk_1009D4088);
  sub_100005A38(&v47, &unk_1009D40B0);
  sub_100005A38(&v38, &unk_1009D4128);
  sub_100005A38(&v44, &unk_1009D40D8);
  sub_100005A38(&v41, &unk_1009D4100);
  qword_1009D4150 = 0;
  unk_1009D4158 = 0;
  byte_1009D4160 = 0;
  result = 7.29112205e-304;
  dword_1009D4190 = 0x1000000;
  qword_1009D4198 = 0;
  byte_1009D41A0 = 1;
  return result;
}

double sub_1007748A0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  *&v53 = 0x4032000000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_1009D0698);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v10 = v1 + 13;
  v9 = v1[13];
  v36 = enum case for FontSource.useCase(_:);
  v9(v3);
  v35 = type metadata accessor for StaticDimension();
  v51 = v35;
  v52 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v50);
  v48 = v0;
  v49 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v47);
  v33 = v1[2];
  v34 = v1 + 2;
  v33(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v12 = v1 + 1;
  v32 = v13;
  v13(v3, v0);
  if (qword_10096DD10 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v4, qword_1009D06C8);
  v7(v3, v14, v4);
  (v9)(v3, v36, v0);
  v48 = v35;
  v49 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v47);
  v45 = v0;
  v46 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(&v44);
  v33(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v4, qword_1009D0758);
  v7(v3, v16, v4);
  (v9)(v3, v36, v0);
  v45 = v35;
  v46 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v44);
  v42 = v0;
  v43 = &protocol witness table for FontSource;
  v17 = sub_1000056E0(&v41);
  v33(v17, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v32(v3, v0);
  v31 = v12;
  v18 = v10;
  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v4, qword_1009D0788);
  v7(v3, v30, v4);
  v19 = v36;
  (v9)(v3, v36, v0);
  v29 = v9;
  v20 = v35;
  v42 = v35;
  v43 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v41);
  v27 = v7;
  v28 = v8;
  v39 = v0;
  v40 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(&v38);
  v26[1] = v18;
  v22 = v33;
  v33(v21, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23 = v32;
  v32(v3, v0);
  v27(v3, v30, v4);
  v29(v3, v19, v0);
  v39 = v20;
  v40 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v38);
  v37[3] = v0;
  v37[4] = &protocol witness table for FontSource;
  v24 = sub_1000056E0(v37);
  v22(v24, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v23(v3, v0);
  qword_1009D42F0 = &type metadata for Double;
  qword_1009D42F8 = &protocol witness table for Double;
  qword_1009D42D8 = 0x4020000000000000;
  xmmword_1009D41B0 = vdupq_n_s64(0x4051000000000000uLL);
  sub_100005A38(&v53, &unk_1009D41C0);
  qword_1009D41E8 = sub_10070BB7C;
  unk_1009D41F0 = 0;
  sub_100005A38(&v50, &unk_1009D41F8);
  sub_100005A38(&v47, &unk_1009D4220);
  sub_100005A38(&v38, &unk_1009D4298);
  sub_100005A38(&v44, &unk_1009D4248);
  sub_100005A38(&v41, &unk_1009D4270);
  qword_1009D42C0 = 0;
  unk_1009D42C8 = 0;
  byte_1009D42D0 = 0;
  *&result = 16777217;
  dword_1009D4300 = 16777217;
  qword_1009D4308 = 0;
  byte_1009D4310 = 1;
  return result;
}

uint64_t sub_100774EF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v4 - 8);
  v54 = &v49 - v5;
  v6 = type metadata accessor for OfferButtonSubtitlePosition();
  v51 = *(v6 - 8);
  __chkstk_darwin(v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009701A0);
  v52 = *(v8 - 8);
  v53 = v8;
  __chkstk_darwin(v8);
  v49 = &v49 - v9;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v56 = &v49 - v16;
  v17 = &selRef_setRequiresColorStatistics_;
  v18 = [v1 traitCollection];
  v19 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v19)
  {
    v20 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  }

  else
  {
    v20 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  }

  v21 = &v2[v20];
  swift_beginAccess();
  sub_10003B8E8(v21, a1);
  v22 = *&v2[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  type metadata accessor for TodayCardLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v23 = (v22 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize);
  v24 = *(v22 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16);
  v55 = a1;
  if (v24)
  {
    v25 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v22 + v25, v57);
    sub_10002A400(v57, v57[3]);
    v17 = &selRef_setRequiresColorStatistics_;
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v27 = v26;
    v29 = v28;
    sub_100007000(v57);
    *v23 = v27;
    v23[1] = v29;
    *(v23 + 16) = 0;
  }

  else
  {
    v27 = *v23;
  }

  v30 = [v2 v17[35]];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v31 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v31 = qword_100991028;
  }

  v32 = sub_1000056A8(v10, v31);
  (*(v11 + 16))(v13, v32, v10);

  (*(v11 + 32))(v56, v13, v10);
  v33 = (v22 + OBJC_IVAR____TtC8AppStore11OfferButton_presenter);
  swift_beginAccess();
  v34 = v33[3];
  if (v34)
  {
    v35 = sub_10002A400(v33, v33[3]);
    v36 = *(v34 - 8);
    v37 = __chkstk_darwin(v35);
    v39 = &v49 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    dispatch thunk of OfferButtonPresenter.offerDisplayProperties.getter();
    (*(v36 + 8))(v39, v34);
  }

  v40 = v51;
  v41 = *(v51 + 104);
  v41(v50, enum case for OfferButtonSubtitlePosition.below(_:), v6);
  v42 = v54;
  v41(v54, enum case for OfferButtonSubtitlePosition.right(_:), v6);
  (*(v40 + 56))(v42, 0, 1, v6);
  sub_100140F54();
  v43 = v49;
  AccessibilityConditional.init(value:axValue:)();
  v44 = v56;
  OfferButtonMetrics.estimatedSize(for:subtitlePosition:in:)();
  v46 = v45;

  (*(v52 + 8))(v43, v53);
  result = (*(v11 + 8))(v44, v10);
  v48 = v55;
  *(v55 + 272) = v27;
  *(v48 + 280) = v46;
  *(v48 + 288) = 0;
  return result;
}

double sub_100775508(void *a1, double a2)
{
  v5 = type metadata accessor for OfferButtonMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v11 = &v22[-v10 - 8];
  sub_100774EF8(v27);
  v12 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10003B8E8(v2 + v12, v26);
  [v2 layoutMargins];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v13 = v26;
  }

  else
  {
    v13 = v27;
  }

  sub_10003B8E8(v13, v22);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v14 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v14 = qword_100991028;
  }

  v15 = sub_1000056A8(v5, v14);
  (*(v6 + 16))(v8, v15, v5);
  (*(v6 + 32))(v11, v8, v5);
  if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v17 = v16;
    OfferButtonMetrics.minimumSize.getter();
    v23 = v17;
    v24 = v18;
    v25 = 0;
  }

  v19 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a1, a2);
  (*(v6 + 8))(v11, v5);
  sub_10003B944(v22);
  sub_10003B944(v26);
  sub_10003B944(v27);
  return v19;
}

CGFloat sub_100775870()
{
  v1 = type metadata accessor for OfferButtonMetrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v17[-v6];
  sub_100774EF8(v22);
  v8 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10003B8E8(v0 + v8, v21);
  v9 = [v0 traitCollection];
  [v0 layoutMargins];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v10 = v21;
  }

  else
  {
    v10 = v22;
  }

  sub_10003B8E8(v10, v17);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v11 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v11 = qword_100991028;
  }

  v12 = sub_1000056A8(v1, v11);
  (*(v2 + 16))(v4, v12, v1);
  (*(v2 + 32))(v7, v4, v1);
  if ((v20 & 1) == 0 && v18 == 0.0 && v19 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v14 = v13;
    OfferButtonMetrics.minimumSize.getter();
    v18 = v14;
    v19 = v15;
    v20 = 0;
  }

  _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v17, v9, 0.0);

  (*(v2 + 8))(v7, v1);
  sub_10003B944(v17);
  sub_10003B944(v21);
  sub_10003B944(v22);
  return UIViewNoIntrinsicMetric;
}

uint64_t sub_100775C34@<X0>(uint64_t *a1@<X8>)
{
  sub_100774EF8(v140);
  if (*(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel);
    v4 = type metadata accessor for DynamicTypeLabel();
    *(&v116[1] + 1) = v4;
    *&v116[2] = &protocol witness table for UILabel;
    if (v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
    }

    *&v116[0] = v5;
    sub_100005A38(v116, v139);
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    if (v9)
    {
      v11 = v4;
    }

    else
    {
      v11 = 0;
    }

    if (v9)
    {
      v12 = &protocol witness table for UILabel;
    }

    else
    {
      v12 = 0;
    }

    v136 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    *&v137 = 0;
    *(&v137 + 1) = v11;
    v138 = v12;
    v133 = 0u;
    v134 = 0u;
    v135 = 0;
  }

  else
  {
    v6 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
    v7 = type metadata accessor for DynamicTypeLabel();
    v8 = v7;
    v139[4] = &protocol witness table for UILabel;
    v139[3] = v7;
    v139[0] = v6;
    v9 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel);
    if (v9)
    {
      v10 = type metadata accessor for SearchAdTransparencyLabel();
      v132 = &protocol witness table for UILabel;
      v131 = v10;
      *&v130 = v9;
      sub_100005A38(&v130, v116);
    }

    else
    {
      v13 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
      if (v13)
      {
        v14 = &protocol witness table for UILabel;
        v15 = v7;
      }

      else
      {
        v15 = 0;
        v14 = 0;
        *(&v116[0] + 1) = 0;
        *&v116[1] = 0;
      }

      *&v116[0] = v13;
      *(&v116[1] + 1) = v15;
      *&v116[2] = v14;
      v16 = v6;
      v9 = 0;
      v6 = v13;
    }

    v17 = v6;
    v136 = v116[0];
    v137 = v116[1];
    v138 = *&v116[2];
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
    v135 = &protocol witness table for UILabel;
    *(&v134 + 1) = v8;
    *&v133 = v3;
  }

  v18 = v9;
  v19 = v3;
  if (*(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkPresenter))
  {
    v20 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
    v21 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
    v22 = v20;
    v23 = v21;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_10003B8E8(v140, &v130);
  v24 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v25 = type metadata accessor for ArtworkView();
  v129 = &protocol witness table for UIView;
  v128 = v25;
  v103 = v24;
  v127[0] = v24;
  v26 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v27 = type metadata accessor for DynamicTypeLabel();
  v28 = v27;
  v126[4] = &protocol witness table for UILabel;
  v126[3] = v27;
  v102 = v26;
  v126[0] = v26;
  v29 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  v101 = v29;
  if (v29)
  {
    v30 = &protocol witness table for UILabel;
    v31 = v27;
  }

  else
  {
    v31 = 0;
    v30 = 0;
    v125[2] = 0;
    v125[1] = 0;
  }

  v125[0] = v29;
  v125[3] = v31;
  v125[4] = v30;
  v32 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v124[4] = &protocol witness table for UILabel;
  v124[3] = v27;
  v100 = v32;
  v124[0] = v32;
  sub_10002C0AC(v139, v121);
  sub_100031660(&v136, v120, &unk_10097E890);
  if (v20)
  {
    v33 = &protocol witness table for UILabel;
    v34 = v20;
    v35 = v28;
  }

  else
  {
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v119[2] = 0;
    v119[1] = 0;
  }

  v119[0] = v34;
  v119[3] = v35;
  v119[4] = v33;
  if (v21)
  {
    v36 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v36 = 0;
    v118[2] = 0;
    v118[1] = 0;
  }

  v118[0] = v21;
  v118[3] = v28;
  v118[4] = v36;
  sub_100031660(&v133, v117, &unk_10097E890);
  v37 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v109 = type metadata accessor for OfferButton();
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_1006455F4();
  v108 = swift_allocObject();
  *a1 = v108;
  sub_10003B8E8(&v130, v116);
  v104 = v35;
  BYTE8(v116[47]) = v35 != 0;
  v38 = v128;
  v39 = v129;
  sub_10002A400(v127, v128);
  v40 = type metadata accessor for Optional();
  v99 = &v99;
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v99 - v42;
  v107 = v20;
  v106 = v21;
  v105 = v37;
  v44 = v103;
  v45 = v102;
  v46 = v101;
  v47 = v100;
  LayoutView.nilIfHidden()();
  v48 = *(v38 - 8);
  if ((*(v48 + 48))(v43, 1, v38) == 1)
  {
    (*(v41 + 8))(v43, v40);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v38;
    v115 = v39;
    v49 = sub_1000056E0(&v113);
    (*(v48 + 32))(v49, v43, v38);
  }

  *(&v116[22] + 8) = v113;
  *(&v116[23] + 8) = v114;
  *(&v116[24] + 1) = v115;
  sub_100031660(v126, v110, &unk_10097E890);
  v50 = v111;
  if (v111)
  {
    v51 = v112;
    sub_10002A400(v110, v111);
    v52 = type metadata accessor for Optional();
    v53 = *(v52 - 8);
    __chkstk_darwin(v52);
    v55 = &v99 - v54;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v56 = *(v50 - 8);
    if ((*(v56 + 48))(v55, 1, v50) == 1)
    {
      (*(v53 + 8))(v55, v52);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v50;
      v115 = v51;
      v57 = sub_1000056E0(&v113);
      (*(v56 + 32))(v57, v55, v50);
    }

    sub_100007000(v110);
  }

  else
  {
    sub_10002B894(v110, &unk_10097E890);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[25] = v113;
  v116[26] = v114;
  *&v116[27] = v115;
  sub_100031660(v125, v110, &unk_10097E890);
  v58 = v111;
  if (v111)
  {
    v59 = v112;
    sub_10002A400(v110, v111);
    v60 = type metadata accessor for Optional();
    v61 = *(v60 - 8);
    __chkstk_darwin(v60);
    v63 = &v99 - v62;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v64 = *(v58 - 8);
    if ((*(v64 + 48))(v63, 1, v58) == 1)
    {
      (*(v61 + 8))(v63, v60);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v58;
      v115 = v59;
      v65 = sub_1000056E0(&v113);
      (*(v64 + 32))(v65, v63, v58);
    }

    sub_100007000(v110);
  }

  else
  {
    sub_10002B894(v110, &unk_10097E890);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[27] + 8) = v113;
  *(&v116[28] + 8) = v114;
  *(&v116[29] + 1) = v115;
  sub_10002C0AC(v124, &v116[30]);
  v66 = v122;
  v67 = v123;
  sub_10002A400(v121, v122);
  v68 = type metadata accessor for Optional();
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v99 - v70;
  if (v104)
  {
    LayoutTextView.nilIfHasNoContent()();
  }

  else
  {
    LayoutTextView.nilIfHiddenOrHasNoContent()();
  }

  v72 = *(v66 - 8);
  if ((*(v72 + 48))(v71, 1, v66) == 1)
  {
    (*(v69 + 8))(v71, v68);
    v115 = 0;
    v113 = 0u;
    v114 = 0u;
  }

  else
  {
    *(&v114 + 1) = v66;
    v115 = v67;
    v73 = sub_1000056E0(&v113);
    (*(v72 + 32))(v73, v71, v66);
  }

  *(&v116[32] + 8) = v113;
  *(&v116[33] + 8) = v114;
  *(&v116[34] + 1) = v115;
  sub_100031660(v120, v110, &unk_10097E890);
  v74 = v111;
  if (v111)
  {
    v75 = v112;
    sub_10002A400(v110, v111);
    v76 = type metadata accessor for Optional();
    v77 = *(v76 - 8);
    __chkstk_darwin(v76);
    v79 = &v99 - v78;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v80 = *(v74 - 8);
    if ((*(v80 + 48))(v79, 1, v74) == 1)
    {
      (*(v77 + 8))(v79, v76);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v74;
      v115 = v75;
      v81 = sub_1000056E0(&v113);
      (*(v80 + 32))(v81, v79, v74);
    }

    sub_100007000(v110);
  }

  else
  {
    sub_10002B894(v110, &unk_10097E890);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[35] = v113;
  v116[36] = v114;
  *&v116[37] = v115;
  sub_100031660(v119, &v116[37] + 8, &unk_10097E890);
  sub_100031660(v118, v110, &unk_10097E890);
  v82 = v111;
  if (v111)
  {
    v83 = v112;
    sub_10002A400(v110, v111);
    v84 = type metadata accessor for Optional();
    v85 = *(v84 - 8);
    __chkstk_darwin(v84);
    v87 = &v99 - v86;
    LayoutTextView.nilIfHasNoContent()();
    v88 = *(v82 - 8);
    if ((*(v88 + 48))(v87, 1, v82) == 1)
    {
      (*(v85 + 8))(v87, v84);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v82;
      v115 = v83;
      v89 = sub_1000056E0(&v113);
      (*(v88 + 32))(v89, v87, v82);
    }

    sub_100007000(v110);
  }

  else
  {
    sub_10002B894(v110, &unk_10097E890);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  v116[40] = v113;
  v116[41] = v114;
  *&v116[42] = v115;
  sub_100031660(v117, v110, &unk_10097E890);
  v90 = v111;
  if (v111)
  {
    v91 = v112;
    sub_10002A400(v110, v111);
    v92 = type metadata accessor for Optional();
    v93 = *(v92 - 8);
    __chkstk_darwin(v92);
    v95 = &v99 - v94;
    LayoutTextView.nilIfHiddenOrHasNoContent()();
    v96 = *(v90 - 8);
    if ((*(v96 + 48))(v95, 1, v90) == 1)
    {
      sub_10002B894(v117, &unk_10097E890);
      sub_10002B894(v120, &unk_10097E890);
      sub_10003B944(&v130);
      sub_10002B894(v118, &unk_10097E890);
      sub_100007000(v124);
      sub_10002B894(v125, &unk_10097E890);
      sub_10002B894(v126, &unk_10097E890);
      sub_10002B894(v119, &unk_10097E890);
      (*(v93 + 8))(v95, v92);
      v115 = 0;
      v113 = 0u;
      v114 = 0u;
    }

    else
    {
      *(&v114 + 1) = v90;
      v115 = v91;
      v97 = sub_1000056E0(&v113);
      (*(v96 + 32))(v97, v95, v90);
      sub_10002B894(v117, &unk_10097E890);
      sub_10002B894(v120, &unk_10097E890);
      sub_10003B944(&v130);
      sub_10002B894(v118, &unk_10097E890);
      sub_100007000(v124);
      sub_10002B894(v125, &unk_10097E890);
      sub_10002B894(v126, &unk_10097E890);
      sub_10002B894(v119, &unk_10097E890);
    }

    sub_100007000(v110);
  }

  else
  {
    sub_10002B894(v117, &unk_10097E890);
    sub_10002B894(v120, &unk_10097E890);
    sub_10003B944(&v130);
    sub_10002B894(v118, &unk_10097E890);
    sub_100007000(v124);
    sub_10002B894(v125, &unk_10097E890);
    sub_10002B894(v126, &unk_10097E890);
    sub_10002B894(v119, &unk_10097E890);
    sub_10002B894(v110, &unk_10097E890);
    v113 = 0u;
    v114 = 0u;
    v115 = 0;
  }

  *(&v116[42] + 8) = v113;
  *(&v116[43] + 8) = v114;
  *(&v116[44] + 1) = v115;
  *&v116[45] = v105;
  *(&v116[45] + 8) = v113;
  *(&v116[46] + 1) = v109;
  *&v116[47] = &protocol witness table for UIView;
  memcpy((v108 + 16), v116, 0x2F9uLL);

  sub_10002B894(&v136, &unk_10097E890);
  sub_10003B944(v140);
  sub_100007000(v121);
  sub_100007000(v127);
  sub_10002B894(&v133, &unk_10097E890);
  return sub_100007000(v139);
}

void sub_100776DD8()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972ED0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v45 = &v44 - v4;
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v6 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkPresenter;
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkPresenter);
  v9 = !v7 || (v8 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v7 + v8) != 1) || [v5 numberOfLines] == 0;
  [v5 setHidden:{v9, v3}];
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v11 = *(v1 + v6);
  if (v11 && (v12 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible, swift_beginAccess(), *(v11 + v12) == 1) && [v10 numberOfLines])
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd) == 1)
    {
      v13 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 1;
  }

  [v10 setHidden:v13];
  v14 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v15 = *(v1 + v6);
  v17 = v15 && (v16 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v15 + v16) & 1) != 0) || [v14 numberOfLines] == 0;
  [v14 setHidden:v17];
  v18 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v19 = *(v1 + v6);
  if (v19 && (v20 = OBJC_IVAR____TtC8AppStore18CrossLinkPresenter_isVisible, swift_beginAccess(), (*(v19 + v20) & 1) != 0) || ![v18 numberOfLines])
  {
    v21 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v21 = 0;
  }

  [v18 setHidden:v21];
  v22 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  if (v22)
  {
    v23 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
    v24 = v22;
    if (v23 == 1)
    {
      if ([v18 isHidden])
      {
        v25 = [v10 isHidden] ^ 1;
      }

      else
      {
        v25 = 1;
      }
    }

    else
    {
      v25 = 0;
    }

    [v24 setHidden:v25];
  }

  v26 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v27 = [v26 text];
  if (v27)
  {
    v28 = v27;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v29 = static String.isNilOrEmpty(_:)();

  if (v29)
  {
    v30 = 1;
  }

  else if (*(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd) == 1)
  {
    v30 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall);
  }

  else
  {
    v30 = 0;
  }

  [v26 setHidden:v30];
  v31 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel;
  v32 = *(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel);
  if (*(v1 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) == 1)
  {
    if (v32)
    {
      v33 = v32;
      dispatch thunk of DynamicTypeLabel.fontUseCase.getter();
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

      v34 = *(v1 + v31);
      if (v34)
      {
        v35 = v34;
        v36 = [v18 textColor];
        [v35 setTextColor:v36];
LABEL_45:
      }
    }
  }

  else if (v32)
  {
    v37 = qword_10096DD58;
    v38 = v32;
    if (v37 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for FontUseCase();
    v40 = sub_1000056A8(v39, qword_1009D07A0);
    v41 = *(v39 - 8);
    v42 = v45;
    (*(v41 + 16))(v45, v40, v39);
    (*(v41 + 56))(v42, 0, 1, v39);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v43 = *(v1 + v31);
    if (v43)
    {
      sub_100028BB8();
      v36 = v43;
      v35 = static UIColor.secondaryText.getter();
      [v36 setTextColor:v35];
      goto LABEL_45;
    }
  }
}

uint64_t sub_100777300()
{
  sub_10003B944(v0 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics);
  sub_10003B944(v0 + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics);
}

id sub_1007773A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007774DC(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10002B894(v4, &unk_100972A00);
  }

  v8 = SearchAd.adTransparencyAction.getter();
  sub_1005F9AF4(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

char *sub_100777658()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v58 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v58);
  v57 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UITypesettingLanguageAwareLineHeightRatio();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_allowsGroupBlending] = 1;
  v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_preferStackedLargeAXLayouts] = 0;
  v56 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel;
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D06B0);
  v14 = *(v12 - 8);
  v16 = v14 + 16;
  v15 = *(v14 + 16);
  v15(v11, v13, v12);
  v19 = *(v14 + 56);
  v18 = v14 + 56;
  v17 = v19;
  v19(v11, 0, 1, v12);
  v20 = *(v6 + 104);
  v48 = v6 + 104;
  v49 = v20;
  v50 = enum case for DirectionalTextAlignment.none(_:);
  v20(v8);
  v21 = type metadata accessor for DynamicTypeLabel();
  v22 = objc_allocWithZone(v21);
  v46 = v5;
  *&v1[v56] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v47 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v12, qword_1009D0710);
  v54 = v15;
  v55 = v16;
  v15(v11, v23, v12);
  v56 = v18;
  v17(v11, 0, 1, v12);
  v49(v8, v50, v46);
  v24 = objc_allocWithZone(v21);
  *&v1[v47] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkPresenter] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView____lazy_storage___lockupViews] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView____lazy_storage___crossLinkViews] = 0;
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D3ED0, &v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics]);
  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  sub_10003B8E8(&xmmword_1009D4040, &v1[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics]);
  v25 = type metadata accessor for TodayCardLockupView();
  v61.receiver = v1;
  v61.super_class = v25;
  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v51 + 104))(v53, enum case for UITypesettingLanguageAwareLineHeightRatio.disabled(_:), v52);
  v27 = v26;
  UIView.traitOverrides.getter();
  UIMutableTraits._typesettingLanguageAwareLineHeightRatio.setter();
  UIView.traitOverrides.setter();
  v28 = qword_10096DD10;
  v29 = *&v27[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v30 = v54;
  if (v28 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v12, qword_1009D06C8);
  v30(v11, v31, v12);
  v17(v11, 0, 1, v12);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v32 = qword_10096DD40;
  v33 = *&v27[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_1000056A8(v12, qword_1009D0758);
  v30(v11, v34, v12);
  v17(v11, 0, 1, v12);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v35 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel;
  v36 = *&v27[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v27[v35] setHidden:1];
  [*&v27[v35] setAlpha:0.0];
  [v27 addSubview:*&v27[v35]];
  v40 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel;
  v41 = *&v27[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel];
  v42 = [v37 labelColor];
  [v41 setTextColor:v42];

  [*&v27[v40] setHidden:1];
  [*&v27[v40] setAlpha:0.0];
  [v27 addSubview:*&v27[v40]];
  sub_10002849C(&qword_10097B110);
  v43 = swift_allocObject();
  v58 = xmmword_1007B10D0;
  *(v43 + 16) = xmmword_1007B10D0;
  *(v43 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v43 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v60[3] = v25;
  v60[0] = v27;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v60);
  v44 = swift_allocObject();
  *(v44 + 16) = v58;
  *(v44 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v44 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_100777F08(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView) + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  sub_10006C234(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_10002A400(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100007000(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 addTarget:v12 action:a2 forControlEvents:64];

  return swift_unknownObjectRelease();
}

char *sub_10077807C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v94 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v94);
  v95 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DirectionalTextAlignment();
  v91 = *(v104 - 8);
  __chkstk_darwin(v104);
  v92 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v89 = &v83 - v12;
  v13 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v13 - 8);
  v88 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v15 - 8);
  v87 = &v83 - v16;
  v17 = type metadata accessor for FontSource();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v4;
  v85 = &v4[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_metrics];
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1220);
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
  v101 = type metadata accessor for StaticDimension();
  v124[3] = v101;
  v124[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v124);
  v122 = v17;
  v123 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v121);
  v100 = v18[2];
  v100(v27, v20, v17);
  StaticDimension.init(_:scaledLike:)();
  v28 = v18[1];
  v98 = v18 + 1;
  v99 = v28;
  v28(v20, v17);
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v21, qword_1009D11F0);
  v106 = v24;
  v30 = v103;
  v103(v20, v29, v21);
  (v107)(v20, v102, v17);
  v122 = v101;
  v123 = &protocol witness table for StaticDimension;
  sub_1000056E0(v121);
  v119 = v17;
  v120 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v118);
  v100(v31, v20, v17);
  StaticDimension.init(_:scaledLike:)();
  v99(v20, v17);
  v97 = v21;
  v30(v20, v29, v21);
  v32 = v102;
  (v107)(v20, v102, v17);
  v96 = v26;
  v33 = v101;
  v119 = v101;
  v120 = &protocol witness table for StaticDimension;
  sub_1000056E0(v118);
  v116 = v17;
  v117 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v115);
  v100(v34, v20, v17);
  StaticDimension.init(_:scaledLike:)();
  v99(v20, v17);
  v84 = v29;
  v30(v20, v29, v21);
  (v107)(v20, v32, v17);
  v116 = v33;
  v117 = &protocol witness table for StaticDimension;
  sub_1000056E0(v115);
  v113 = v17;
  v114 = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v112);
  v36 = v100;
  v100(v35, v20, v17);
  StaticDimension.init(_:scaledLike:)();
  v37 = v99;
  v99(v20, v17);
  v113 = type metadata accessor for ZeroDimension();
  v114 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v112);
  static ZeroDimension.zero.getter();
  v30(v20, v29, v97);
  (v107)(v20, v102, v17);
  v111[3] = v101;
  v111[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v111);
  v110[3] = v17;
  v110[4] = &protocol witness table for FontSource;
  v38 = sub_1000056E0(v110);
  v36(v38, v20, v17);
  StaticDimension.init(_:scaledLike:)();
  v37(v20, v17);
  v109 = 0x4034000000000000;
  v110[0] = 0x4052000000000000;
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  InstallPagePreInstallPaidLayout.Metrics.init(titleSpace:subtitleSpace:separatorSpace:descriptionSpace:iconViewMargin:bottomLockupMargin:horizontalMargin:)();
  v39 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_divider;
  v40 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v41 = v105;
  *&v105[v39] = v40;
  v42 = v41;
  v43 = v88;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v44 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v42[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_inAppPurchaseView] = sub_1002EB7C0(v43, 0);
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
  v102 = type metadata accessor for DynamicTypeLabel();
  v50 = objc_allocWithZone(v102);
  *&v45[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v51 = v84;
  v52 = v97;
  v48(v46, v84, v97);
  v53 = v101;
  v101(v46, 0, 1, v52);
  v54 = v100;
  (v107)(v49, v100, v104);
  v55 = objc_allocWithZone(v102);
  *&v105[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v103(v46, v51, v52);
  v53(v46, 0, 1, v52);
  (v107)(v49, v54, v104);
  v56 = objc_allocWithZone(v102);
  v57 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v58 = v105;
  *&v105[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel] = v57;
  *&v58[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
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
  v64 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_divider;
  v65 = qword_10096EE48;
  v66 = *&v63[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_divider];
  if (v65 != -1)
  {
    swift_once();
  }

  v67 = sub_1000056A8(v94, qword_1009D36D8);
  v68 = v95;
  sub_1002BB2D0(v67, v95);
  v69 = &v66[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v68, v69);
  swift_endAccess();
  v70 = &v66[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v71 = *(v69 + 1);
  *v70 = *v69;
  *(v70 + 1) = v71;
  [v66 setNeedsLayout];
  [v66 setNeedsLayout];

  sub_1002BB398(v68);
  v72 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel;
  [*&v63[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel] setTextAlignment:1];
  v73 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel;
  [*&v63[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel] setTextAlignment:1];
  v74 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel;
  [*&v63[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel] setTextAlignment:1];
  v75 = *&v63[v72];
  sub_100028BB8();
  v76 = v75;
  v77 = static UIColor.primaryText.getter();
  [v76 setTextColor:v77];

  v78 = *&v63[v73];
  v79 = static UIColor.primaryText.getter();
  [v78 setTextColor:v79];

  v80 = *&v63[v74];
  v81 = static UIColor.secondaryText.getter();
  [v80 setTextColor:v81];

  [v63 addSubview:*&v63[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_inAppPurchaseView]];
  [v63 addSubview:*&v63[v72]];
  [v63 addSubview:*&v63[v73]];
  [v63 addSubview:*&v63[v64]];
  [v63 addSubview:*&v63[v74]];
  [v63 addSubview:*&v63[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView]];

  return v63;
}

double sub_100778DEC()
{
  v1 = type metadata accessor for InstallPagePreInstallPaidLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v27 = type metadata accessor for InstallPagePreInstallPaidLayout();
  v26 = *(v27 - 8);
  v5 = __chkstk_darwin(v27);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_metrics, v1, v5);
  v8 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_inAppPurchaseView);
  v44 = type metadata accessor for InAppPurchaseView();
  v45 = &protocol witness table for UIView;
  v43 = v8;
  v9 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel);
  v10 = type metadata accessor for DynamicTypeLabel();
  v41 = v10;
  v42 = &protocol witness table for UILabel;
  v39 = &protocol witness table for UILabel;
  v40 = v9;
  v11 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel);
  v38 = v10;
  v37 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_divider);
  v35 = type metadata accessor for DividerView(0);
  v36 = &protocol witness table for UIView;
  v34 = v12;
  v13 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel);
  v33 = &protocol witness table for UILabel;
  v32 = v10;
  v31 = v13;
  v14 = *(v0 + OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView);
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
  InstallPagePreInstallPaidLayout.init(metrics:iconView:titleText:subtitleText:separator:descriptionText:bottomLockupView:)();
  InstallPagePreInstallPaidLayout.measurements(fitting:in:)();
  v23 = v22;
  (*(v26 + 8))(v7, v27);
  return v23;
}

uint64_t sub_100779110()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v31 = ObjectType;
  v3 = type metadata accessor for LayoutRect();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v32 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InstallPagePreInstallPaidLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[1] = v8;
  v9 = type metadata accessor for InstallPagePreInstallPaidLayout();
  v33 = *(v9 - 8);
  v34 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v30 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55.receiver = v1;
  v55.super_class = ObjectType;
  objc_msgSendSuper2(&v55, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
  v53 = type metadata accessor for InAppPurchaseView();
  v54 = &protocol witness table for UIView;
  v52 = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel];
  v14 = type metadata accessor for DynamicTypeLabel();
  v50 = v14;
  v51 = &protocol witness table for UILabel;
  v49 = v13;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel];
  v47 = v14;
  v48 = &protocol witness table for UILabel;
  v46 = v15;
  v16 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_divider];
  v44 = type metadata accessor for DividerView(0);
  v45 = &protocol witness table for UIView;
  v42 = &protocol witness table for UILabel;
  v43 = v16;
  v17 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel];
  v41 = v14;
  v40 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView];
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
  InstallPagePreInstallPaidLayout.init(metrics:iconView:titleText:subtitleText:separator:descriptionText:bottomLockupView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v26 = v32;
  InstallPagePreInstallPaidLayout.placeChildren(relativeTo:in:)();
  [v1 frame];
  Width = CGRectGetWidth(v56);
  LayoutRect.size.getter();
  [v1 setContentSize:Width];
  (*(v35 + 8))(v26, v36);
  return (*(v33 + 8))(v25, v34);
}

uint64_t type metadata accessor for InstallPagePreInstallPaidOfferView()
{
  result = qword_1009963F0;
  if (!qword_1009963F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1007795F4()
{
  result = type metadata accessor for InstallPagePreInstallPaidLayout.Metrics();
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

void sub_10077969C()
{
  v0 = sub_10002849C(&qword_100979010);
  __chkstk_darwin(v0 - 8);
  v31 = v28 - v1;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_metrics;
  if (qword_10096E0E0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D1220);
  v8 = (*(v6 - 8) + 16);
  v38 = *v8;
  v38(v5, v7, v6);
  v10 = v3 + 13;
  v9 = v3[13];
  v41 = enum case for FontSource.useCase(_:);
  v40 = v9;
  v9(v5);
  v36 = type metadata accessor for StaticDimension();
  v57[3] = v36;
  v57[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v57);
  v55 = v2;
  v56 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v54);
  v35 = v3[2];
  v35(v11, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v12 = v3[1];
  v37 = v3 + 1;
  v39 = v12;
  v12(v5, v2);
  if (qword_10096E0D0 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v6, qword_1009D11F0);
  v14 = v38;
  v38(v5, v13, v6);
  v40(v5, v41, v2);
  v55 = v36;
  v56 = &protocol witness table for StaticDimension;
  sub_1000056E0(v54);
  v34 = v6;
  v28[1] = v8;
  v52 = v2;
  v53 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v51);
  v16 = v35;
  v35(v15, v5, v2);
  StaticDimension.init(_:scaledLike:)();
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
  sub_1000056E0(v51);
  v49 = v2;
  v50 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v48);
  v16(v20, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v39(v5, v2);
  v38(v5, v13, v17);
  v18(v5, v41, v2);
  v49 = v19;
  v21 = v19;
  v50 = &protocol witness table for StaticDimension;
  sub_1000056E0(v48);
  v46 = v2;
  v47 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v45);
  v23 = v35;
  v35(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24 = v39;
  v39(v5, v2);
  v46 = type metadata accessor for ZeroDimension();
  v47 = &protocol witness table for ZeroDimension;
  sub_1000056E0(v45);
  static ZeroDimension.zero.getter();
  v38(v5, v29, v34);
  v40(v5, v41, v2);
  v44[3] = v21;
  v44[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v44);
  v43[3] = v2;
  v43[4] = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v43);
  v23(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v24(v5, v2);
  v42 = 0x4034000000000000;
  v43[0] = 0x4052000000000000;
  sub_10002849C(&qword_100973F50);
  Conditional<>.init(regularValue:compactValue:)();
  v26 = v32;
  InstallPagePreInstallPaidLayout.Metrics.init(titleSpace:subtitleSpace:separatorSpace:descriptionSpace:iconViewMargin:bottomLockupMargin:horizontalMargin:)();
  v27 = OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_divider;
  *(v26 + v27) = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100779D10(uint64_t result)
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

uint64_t sub_100779DA8()
{
  sub_10001F64C(v0 + 32);

  return swift_deallocClassInstance();
}

void *sub_100779E08(void *result)
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

    return sub_100779D10(v7 + v8 <= v2);
  }

  return result;
}

void sub_100779E9C(void *a1, uint64_t a2, void *a3)
{
  type metadata accessor for ProductLockupCollectionViewCell();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerView);
    if (v7)
    {
      sub_100028004();
      v15 = a1;
      v8 = v7;
      UIPopoverPresentationControllerSourceItem.frame(in:)();

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
        sub_100779D10(v13 + v14 <= MaxY);
      }
    }
  }
}

id sub_100779FE0(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_1006A6558();
  v145 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_1006A6634();
  v9 = *&v5[OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = Review.title.getter();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = Review.title.getter();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = LanguageAwareString.string.getter();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = Review.title.getter();
    if (v22)
    {
      v23 = v22;
      v24 = dispatch thunk of LanguageAwareString.attributedString.getter();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    Review.dateText.getter();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = Review.dateText.getter();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    Review.dateText.getter();
    if (v35)
    {
      v36 = String._bridgeToObjectiveC()();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = Review.rating.getter();
  sub_1003A2E44(v37);
  v38 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = Review.reviewerName.getter();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = Review.reviewerName.getter();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = LanguageAwareString.string.getter();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = Review.reviewerName.getter();
    if (v49)
    {
      v50 = v49;
      v51 = dispatch thunk of LanguageAwareString.attributedString.getter();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = Review.dateAuthorText.getter();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = Review.dateAuthorText.getter();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = LanguageAwareString.string.getter();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = Review.dateAuthorText.getter();
    if (v63)
    {
      v64 = v63;
      v65 = dispatch thunk of LanguageAwareString.attributedString.getter();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = Review.contents.getter();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = dispatch thunk of LanguageAwareString.attributedString.getter();

  NSAttributedString.byCollapsingNewlines.getter();
  v69 = type metadata accessor for LanguageAwareString();
  static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
  v70 = objc_allocWithZone(v69);
  v71 = LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
  v72 = *(*&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = LanguageAwareString.string.getter();
      v81 = v80;

      v82 = LanguageAwareString.string.getter();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_1005A14B0(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      LanguageAwareString.string.getter();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = LanguageAwareString.string.getter();
    v76 = v75;

    v77 = Review.contents.getter();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v143 = v74;
  }

  else
  {
    v77 = Review.contents.getter();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v143 = 0;
  }

  v87 = v77;
  v88 = LanguageAwareString.string.getter();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v143 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = Review.contents.getter();
    sub_1005A14B0(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!Review.response.getter())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse] = 0;
    sub_1006A6404(v105);
    [*&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel] setText:0];
    sub_10059FAC0(0, 0);
    goto LABEL_119;
  }

  v93 = Response.contents.getter();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = dispatch thunk of LanguageAwareString.attributedString.getter();

  v96 = v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse] = 1;
  sub_1006A6404(v96);
  v97 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    Response.dateText.getter();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v102 = v101;

  v103 = Response.dateText.getter();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    Response.dateText.getter();
    if (v116)
    {
      v117 = String._bridgeToObjectiveC()();
    }

    else
    {
      v117 = 0;
    }

    [v97 setText:v117];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v139 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v139 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  NSAttributedString.byCollapsingNewlines.getter();
  v118 = type metadata accessor for LanguageAwareString();
  static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
  v119 = objc_allocWithZone(v118);
  v120 = LanguageAwareString.init(_:baseParagraphStyle:keepStatisticsOnLanguageComponents:)();
  v121 = *(*&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_languageAwareString);
  if (v6[v145] != 1)
  {
    if (v121)
    {
      v128 = v121;
      v129 = LanguageAwareString.string.getter();
      v131 = v130;

      v132 = LanguageAwareString.string.getter();
      if (v131)
      {
        if (v129 == v132 && v131 == v133)
        {

          goto LABEL_119;
        }

        v140 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v140)
        {
          goto LABEL_164;
        }

LABEL_151:
        v138 = v120;
        sub_1005A14B0(v120);

        goto LABEL_119;
      }
    }

    else
    {
      LanguageAwareString.string.getter();
    }

    goto LABEL_151;
  }

  if (v121)
  {
    v122 = v121;
    v123 = LanguageAwareString.string.getter();
    v125 = v124;

    v126 = Response.contents.getter();
    if (!v126)
    {
      if (v125)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v127 = v126;
    v146 = v95;
  }

  else
  {
    v134 = Response.contents.getter();
    if (!v134)
    {
      goto LABEL_164;
    }

    v127 = v134;
    v146 = v95;
    v125 = 0;
    v123 = 0;
  }

  v135 = LanguageAwareString.string.getter();
  v137 = v136;

  if (v125)
  {
    if (v137)
    {
      if (v123 == v135 && v125 == v137)
      {

        goto LABEL_119;
      }

      v142 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v95 = v146;
      if (v142)
      {
        goto LABEL_164;
      }

LABEL_162:
      v141 = Response.contents.getter();
      sub_1005A14B0(v141);

      goto LABEL_119;
    }

    v95 = v146;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v146;
  if (v137)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = Review.moreAction.getter();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler];
      *v111 = sub_10077ADB8;
      v111[1] = v110;

      sub_10001F63C(v112);
      v113 = &v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler];
      v114 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler];
      *v113 = sub_10077ADB8;
      v113[1] = v110;
      sub_10001F63C(v114);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_1006A5ABC();

  return [v6 setNeedsLayout];
}

uint64_t sub_10077AC84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000F40E0(v6);
  }

  sub_1005F9AF4(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_10077ADC4(uint64_t a1, int a2, int a3, void *a4)
{
  v159 = a4;
  v152 = a3;
  v165 = a2;
  v5 = sub_10002849C(&qword_1009964B0);
  v161 = *(v5 - 8);
  v162 = v5;
  __chkstk_darwin(v5);
  v160 = v144 - v6;
  v7 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  v153 = *(v7 - 8);
  v154 = v7;
  __chkstk_darwin(v7);
  v155 = v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductReviewCustomLayout();
  v10 = *(v9 - 8);
  v157 = v9;
  v158 = v10;
  __chkstk_darwin(v9);
  v156 = v144 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LabelPlaceholder();
  v163 = *(v12 - 8);
  v164 = v12;
  __chkstk_darwin(v12);
  v171 = v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v181 = v144 - v15;
  __chkstk_darwin(v16);
  v182 = v144 - v17;
  __chkstk_darwin(v18);
  v183 = v144 - v19;
  __chkstk_darwin(v20);
  v184 = v144 - v21;
  __chkstk_darwin(v22);
  v180 = v144 - v23;
  __chkstk_darwin(v24);
  v185 = v144 - v25;
  __chkstk_darwin(v26);
  v174 = v144 - v27;
  v28 = type metadata accessor for DynamicTextAppearance();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v150 = v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v151 = v144 - v32;
  __chkstk_darwin(v33);
  v35 = v144 - v34;
  __chkstk_darwin(v36);
  v179 = v144 - v37;
  __chkstk_darwin(v38);
  v147 = v144 - v39;
  __chkstk_darwin(v40);
  v148 = v144 - v41;
  __chkstk_darwin(v42);
  v170 = v144 - v43;
  __chkstk_darwin(v44);
  v145 = v144 - v45;
  __chkstk_darwin(v46);
  v146 = v144 - v47;
  __chkstk_darwin(v48);
  v176 = v144 - v49;
  __chkstk_darwin(v50);
  v177 = v144 - v51;
  __chkstk_darwin(v52);
  v178 = v144 - v53;
  __chkstk_darwin(v54);
  v186 = v144 - v55;
  __chkstk_darwin(v56);
  v58 = v144 - v57;
  __chkstk_darwin(v59);
  v169 = v144 - v60;
  __chkstk_darwin(v61);
  v63 = v144 - v62;
  __chkstk_darwin(v64);
  v66 = v144 - v65;
  __chkstk_darwin(v67);
  v69 = v144 - v68;
  __chkstk_darwin(v70);
  v175 = v144 - v71;
  v72 = Review.response.getter();
  if (v72)
  {
  }

  v166 = v72;
  v172 = v58;
  v188 = a1;
  v168 = v35;
  DynamicTextAppearance.init()();
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v189 = type metadata accessor for FontUseCase();
  sub_1000056A8(v189, qword_1009D0D28);
  DynamicTextAppearance.withFontUseCase(_:)();
  v73 = v29;
  v75 = v29 + 8;
  v74 = *(v29 + 8);
  v74(v63, v28);
  v76 = v28;
  v77 = v165;
  v144[3] = ~v165;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v74(v66, v76);
  v78 = (v77 & 1) == 0;
  v79 = v76;
  if (v78)
  {
    v80 = 4;
  }

  else
  {
    v80 = 0;
  }

  v144[2] = v80;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v191 = v75;
  v74(v69, v76);
  v81 = Review.title.getter();
  if (v81)
  {
    v82 = v81;
    LanguageAwareString.string.getter();
  }

  v173 = v74;
  v83 = *(v73 + 16);
  v187 = v73 + 16;
  v190 = v83;
  v83(v63, v175, v76);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v149 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v167 = LayoutViewPlaceholder.init(measureWith:)();
  v84 = v186;
  DynamicTextAppearance.init()();
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v85 = sub_1000056A8(v189, qword_1009D0D70);
  v86 = v172;
  v144[1] = v85;
  DynamicTextAppearance.withFontUseCase(_:)();
  v87 = v173;
  v173(v84, v79);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v87(v86, v79);
  v88 = v169;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v87(v63, v79);
  Review.dateText.getter();
  v89 = v88;
  v90 = v190;
  v190(v63, v89, v79);
  LabelPlaceholder.Options.init(rawValue:)();
  v91 = v186;
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v189, qword_1009D0D88);
  DynamicTextAppearance.withFontUseCase(_:)();
  v87(v91, v79);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v87(v86, v79);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v87(v63, v79);
  v92 = Review.reviewerName.getter();
  if (v92)
  {
    v93 = v92;
    LanguageAwareString.string.getter();

    v90 = v190;
  }

  v90(v63, v178, v79);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v94 = v186;
  DynamicTextAppearance.init()();
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v189, qword_1009D0DA0);
  v95 = v172;
  DynamicTextAppearance.withFontUseCase(_:)();
  v87(v94, v79);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v87(v95, v79);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v87(v63, v79);
  v96 = Review.dateAuthorText.getter();
  if (v96)
  {
    v97 = v96;
    LanguageAwareString.string.getter();

    v190(v63, v177, v79);
  }

  else
  {
    v90(v63, v177, v79);
  }

  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v98 = sub_1000056A8(v189, qword_1009D0D58);
  v99 = v145;
  v144[0] = v98;
  DynamicTextAppearance.withFontUseCase(_:)();
  v87(v63, v79);
  v100 = v146;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v87(v99, v79);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v87(v100, v79);
  v101 = Review.contents.getter();
  if (v101)
  {
    v102 = v101;
    LanguageAwareString.string.getter();
  }

  v103 = v190;
  v190(v63, v176, v79);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  v104 = v189;
  if (qword_10096DF40 != -1)
  {
    v143 = v189;
    swift_once();
    v104 = v143;
  }

  sub_1000056A8(v104, qword_1009D0D40);
  v105 = v147;
  DynamicTextAppearance.withFontUseCase(_:)();
  v106 = v173;
  v173(v63, v79);
  v107 = v148;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v106(v105, v79);
  v108 = v170;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v106(v107, v79);
  v109._object = 0x800000010081C190;
  v109._countAndFlagsBits = 0xD000000000000012;
  v110._countAndFlagsBits = 0;
  v110._object = 0xE000000000000000;
  localizedString(_:comment:)(v109, v110);
  v103(v63, v108, v79);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v111 = v186;
  DynamicTextAppearance.init()();
  v112 = v172;
  DynamicTextAppearance.withFontUseCase(_:)();
  v106(v111, v79);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v106(v112, v79);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v106(v63, v79);
  v113 = Review.response.getter();
  v114 = v171;
  if (v113)
  {
    Response.dateText.getter();
  }

  v190(v63, v179, v79);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  v115 = v150;
  DynamicTextAppearance.withFontUseCase(_:)();
  v106(v63, v79);
  v116 = v151;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v106(v115, v79);
  v117 = v168;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v106(v116, v79);
  if (Review.response.getter())
  {
    v118 = Response.contents.getter();

    if (v118)
    {
      LanguageAwareString.string.getter();
    }
  }

  v190(v63, v117, v79);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v119 = v114;
  if (qword_10096ED78 != -1)
  {
    swift_once();
  }

  v120 = v154;
  v121 = sub_1000056A8(v154, qword_1009D3440);
  (*(v153 + 16))(v155, v121, v120);
  v122 = v164;
  v200[3] = v164;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v123 = sub_1000056E0(v200);
  v124 = v163;
  v125 = *(v163 + 16);
  v125(v123, v174, v122);
  v199[3] = v122;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_1000056E0(v199);
  v125(v126, v185, v122);
  v198[3] = v122;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_1000056E0(v198);
  v125(v127, v180, v122);
  v197[3] = v122;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_1000056E0(v197);
  v125(v128, v184, v122);
  v196[3] = v122;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_1000056E0(v196);
  v125(v129, v183, v122);
  v195[3] = v122;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_1000056E0(v195);
  v125(v130, v182, v122);
  v194[3] = v122;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_1000056E0(v194);
  v125(v131, v181, v122);
  v193[3] = v122;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_1000056E0(v193);
  v125(v132, v119, v122);
  v192 = v167;
  Measurable.placeable.getter();
  v133 = v156;
  ProductReviewCustomLayout.init(metrics:titleLabel:dateLabel:authorLabel:dateAuthorLabel:bodyLabel:responseTitleLabel:responseDateLabel:responseBodyLabel:hasResponse:ratingsView:)();
  v134 = [v159 traitCollection];
  sub_1006A6EE0();
  v135 = v160;
  v136 = v157;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v137 = v162;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v139 = v138;

  (*(v161 + 8))(v135, v137);
  (*(v158 + 8))(v133, v136);
  v140 = *(v124 + 8);
  v140(v171, v122);
  v141 = v173;
  v173(v168, v79);
  v140(v181, v122);
  v141(v179, v79);
  v140(v182, v122);
  v141(v170, v79);
  v140(v183, v122);
  v141(v176, v79);
  v140(v184, v122);
  v141(v177, v79);
  v140(v180, v122);
  v141(v178, v79);
  v140(v185, v122);
  v141(v169, v79);
  v140(v174, v122);
  v141(v175, v79);
  return v139;
}

double sub_10077C1C8(void *a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096ED90 != -1)
  {
    swift_once();
  }

  v6 = sub_10002849C(&qword_100979010);
  sub_1000056A8(v6, qword_1009D3468);
  v31 = a1;
  Conditional.evaluate(with:)();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_10096ED88 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_1009D3460;
  v33.value._rawValue = 0;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = static SystemImage.load(_:with:)();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = static SystemImage.load(_:with:)();

  v17(v5, v2);
  UIImage.baselineOffsetFromBottom.getter();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

uint64_t sub_10077C588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a8;
  v55 = a6;
  v52 = a5;
  v50 = a2;
  v48[1] = a1;
  v10 = sub_10002849C(&unk_100993040);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v56 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v51 = v48 - v14;
  __chkstk_darwin(v15);
  v49 = v48 - v16;
  __chkstk_darwin(v17);
  v19 = v48 - v18;
  __chkstk_darwin(v20);
  v22 = v48 - v21;
  v23 = type metadata accessor for ActivityFeedLockupActionHandlers();
  __chkstk_darwin(v23 - 8);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ActivityFeedLockupViewModel();
  v26 = __chkstk_darwin(v25);
  v53 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v26);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100180C3C(a4, v22);
  sub_100180C3C(a3, v19);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v12 + v30 + v31) & ~v30;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10077DC9C(v22, v35 + v31);
  sub_10077DC9C(v19, v35 + v32);
  *(v35 + v33) = v29;
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v49;
  sub_100180C3C(v52, v49);
  v39 = (v30 + 32) & ~v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  sub_10077DC9C(v38, v40 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v51;
  sub_100180C3C(v55, v51);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_10077DC9C(v42, v43 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v56;
  sub_100180C3C(v57, v56);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v36;
  sub_10077DC9C(v45, v46 + v39);
  swift_retain_n();
  ActivityFeedLockupActionHandlers.init(profileHandler:leaderboardsHandler:achievementsHandler:appHandler:)();
  return ActivityFeedPlatterView.init(data:actionHandlers:)();
}

uint64_t sub_10077CA84(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_10002849C(&qword_100991E20);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v29 - v4;
  v5 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v5 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  __chkstk_darwin(v17);
  v19 = v29 - v18;
  v20 = type metadata accessor for ActivityFeedLockupViewModel();
  v32 = *(v20 - 8);
  v33 = v20;
  __chkstk_darwin(v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GameCenterActivityFeedCard();
  sub_10077EB48(&qword_100991DD0, &type metadata accessor for GameCenterActivityFeedCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v36[0])
  {
    GameCenterActivityFeedCard.data.getter();
    GameCenterActivityFeedCard.profileActionMetrics.getter();
    v30 = v16;
    GameCenterActivityFeedCard.profileAvatarActionMetrics.getter();
    GameCenterActivityFeedCard.leaderboardActionMetrics.getter();
    GameCenterActivityFeedCard.achievementActionMetrics.getter();
    v24 = GameCenterActivityFeedCard.appActionMetrics.getter();
    v29[2] = v29;
    __chkstk_darwin(v24);
    v29[1] = v29;
    v29[-8] = v22;
    v29[-7] = v2;
    v29[-6] = v31;
    v29[-5] = v19;
    v29[-4] = v16;
    v29[-3] = v13;
    v29[-2] = v10;
    v29[-1] = v7;
    __chkstk_darwin(v25);
    v29[-4] = sub_1006B0BAC;
    v29[-3] = v26;
    v29[-2] = v27;
    v29[-1] = v2;
    sub_10002849C(&qword_100991E28);
    v31 = v2;
    sub_1006B0BCC();
    v28 = v34;
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v36[3] = v3;
    v36[4] = sub_100097060(&qword_1009930A0, &qword_100991E20);
    sub_1000056E0(v36);
    UIHostingConfiguration.margins(_:_:)();
    (*(v35 + 8))(v28, v3);
    UICollectionViewCell.contentConfiguration.setter();

    sub_10002B894(v7, &unk_100993040);
    sub_10002B894(v10, &unk_100993040);
    sub_10002B894(v13, &unk_100993040);
    sub_10002B894(v30, &unk_100993040);
    sub_10002B894(v19, &unk_100993040);
    return (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_10077CF20(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a7;
  v11 = type metadata accessor for ActionMetrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v26 - v19;
  if (a3)
  {
    v21 = a4;
  }

  else
  {
    v21 = a5;
  }

  sub_100180C3C(v21, &v26 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_100180C3C(v20, v17);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      static ActionMetrics.notInstrumented.getter();
      if (v24(v17, 1, v11) != 1)
      {
        sub_10002B894(v17, &unk_100993040);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    sub_10077E118(a1, v27, v28, v14);

    (*(v12 + 8))(v14, v11);
  }

  return sub_10002B894(v20, &unk_100993040);
}

void *sub_10077D174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a1;
  v30 = a8;
  v10 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v13 - 8);
  v15 = v29 - v14;
  v16 = type metadata accessor for ActionMetrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v29 - v21;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29[0] = a5;

    sub_100180C3C(a9, v15);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      static ActionMetrics.notInstrumented.getter();
      if (v24(v15, 1, v16) != 1)
      {
        sub_10002B894(v15, &unk_100993040);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
    }

    (*(v17 + 16))(v19, v22, v16);
    type metadata accessor for GameCenterLeaderboardsAction();
    swift_allocObject();

    v25 = GameCenterLeaderboardsAction.init(leaderboardID:bundleID:actionMetrics:)();
    v26 = sub_10002849C(&unk_100974490);
    v27 = v30;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v12, 1, v26) == 1)
    {
      (*(v17 + 8))(v22, v16);

      return sub_10002B894(v12, &unk_100972A00);
    }

    else
    {
      sub_1005FA388(v25, 1, v27, v12);

      (*(v17 + 8))(v22, v16);
      return (*(v28 + 8))(v12, v26);
    }
  }

  return result;
}

void *sub_10077D530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a4;
  v29 = a7;
  v9 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for ActionMetrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_100180C3C(a8, v14);
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      static ActionMetrics.notInstrumented.getter();
      if (v23(v14, 1, v15) != 1)
      {
        sub_10002B894(v14, &unk_100993040);
      }
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
    }

    (*(v16 + 16))(v18, v21, v15);
    type metadata accessor for GameCenterAchievementsAction();
    swift_allocObject();

    v24 = GameCenterAchievementsAction.init(bundleID:achievementIdsToHighlight:actionMetrics:)();
    v25 = sub_10002849C(&unk_100974490);
    v26 = v29;
    BaseObjectGraph.injectIfAvailable<A>(_:)();
    v27 = *(v25 - 8);
    if ((*(v27 + 48))(v11, 1, v25) == 1)
    {
      (*(v16 + 8))(v21, v15);

      return sub_10002B894(v11, &unk_100972A00);
    }

    else
    {
      sub_1005FA3BC(v24, 1, v26, v11);

      (*(v16 + 8))(v21, v15);
      return (*(v27 + 8))(v11, v25);
    }
  }

  return result;
}

uint64_t sub_10077D8E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10002849C(&unk_100993040);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for ActionMetrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_100180C3C(a6, v12);
    v19 = *(v14 + 48);
    if (v19(v12, 1, v13) == 1)
    {
      static ActionMetrics.notInstrumented.getter();
      if (v19(v12, 1, v13) != 1)
      {
        sub_10002B894(v12, &unk_100993040);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    sub_10077E348(a1, a2, a5, v16);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterActivityFeedCollectionViewCell()
{
  result = qword_1009964E0;
  if (!qword_1009964E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10077DC28(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  static ActivityFeedPlatterView.viewHeight(for:)();
  return a2;
}

uint64_t sub_10077DC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100993040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10077DD0C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_10002849C(&unk_100993040) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10077CF20(a1, a2, a3, v3 + v9, v3 + v11, v13, v14);
}

void *sub_10077DEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10002849C(&unk_100993040) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_10077D530(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10077DF58()
{
  v1 = *(sub_10002849C(&unk_100993040) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for ActionMetrics();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10077E080(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10002849C(&unk_100993040) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10077D8E4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_10077E118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ActionMetrics();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  type metadata accessor for GameCenterPlayerProfileAction();
  swift_allocObject();

  v13 = GameCenterPlayerProfileAction.init(playerId:actionMetrics:)();
  v14 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    return sub_10002B894(v8, &unk_100972A00);
  }

  else
  {
    sub_1005FA354(v13, 1, a3, v8);

    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_10077E348(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v52 = a3;
  v54._countAndFlagsBits = a1;
  v54._object = a2;
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v53 = &v39 - v5;
  v50 = type metadata accessor for FlowOrigin();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowAnimationBehavior();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for FlowPresentationContext();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ActionMetrics();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for FlowPage();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v55 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v58 = 0xD00000000000001BLL;
  *(&v58 + 1) = 0x8000000100815260;
  String.append(_:)(v54);
  URL.init(string:)();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = &qword_100982460;
    v29 = v24;
    return sub_10002B894(v29, v28);
  }

  v30 = v55;
  (*(v26 + 32))(v55, v24, v25);
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v31 = *(v16 + 104);
  v39 = v18;
  v31(v18, enum case for FlowPage.product(_:), v15);
  (*(v26 + 16))(v21, v30, v25);
  (*(v26 + 56))(v21, 0, 1, v25);
  v32 = type metadata accessor for ReferrerData();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v56 = 0u;
  v57 = 0u;
  (*(v40 + 16))(v11, v49, v41);
  (*(v43 + 104))(v42, enum case for FlowPresentationContext.infer(_:), v44);
  (*(v45 + 104))(v48, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v47 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v33 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  v34 = sub_10002849C(&unk_100974490);
  v35 = v52;
  v36 = v53;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v37 = *(v34 - 8);
  if ((*(v37 + 48))(v36, 1, v34) == 1)
  {
    (*(v26 + 8))(v55, v25);

    v28 = &unk_100972A00;
    v29 = v36;
    return sub_10002B894(v29, v28);
  }

  sub_1005F9C8C(v33, 1, v35, v36);

  (*(v26 + 8))(v55, v25);
  return (*(v37 + 8))(v36, v34);
}

uint64_t sub_10077EB48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10077EB90(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (static AnyHashable.== infix(_:_:)())
    {
      type metadata accessor for NavigationActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = *(v4 + 72);
        if (v6)
        {

          v8 = v6(v7);
          v10 = v9;
          v11 = v1[9];
          if (!v11)
          {
            if (!v9)
            {
              goto LABEL_23;
            }

LABEL_19:

            return 0;
          }

          v12 = v8;
          v13 = v11();
          v15 = v14;
          if (v10)
          {
            if (v14)
            {
              if (v12 == v13 && v10 == v14)
              {
              }

              else
              {
                v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v19 & 1) == 0)
                {
LABEL_28:

                  return 0;
                }
              }

LABEL_23:
              v20 = *(v4 + 88);
              v21 = v2[11];
              if (!v20)
              {
                v25 = v21;

                if (!v21)
                {
                  return 1;
                }

                return 0;
              }

              if (v21)
              {
                type metadata accessor for DebugSettingsProvider();
                v22 = v21;
                v23 = v20;
                v24 = static NSObject.== infix(_:_:)();

                return v24 & 1;
              }

              goto LABEL_28;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v16 = v1[9];

          if (!v16)
          {
            goto LABEL_23;
          }

          v16(v17);
          v15 = v18;
        }

        if (!v15)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }
    }
  }

  return 0;
}

void sub_10077EDCC()
{
  AnyHashable.hash(into:)();
  v1 = String.hash(into:)();
  v2 = *(v0 + 72);
  if (v2 && (v2(v1), v3))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v4 = *(v0 + 88);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    v5 = v4;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

uint64_t sub_10077EED8()
{

  sub_10001F63C(*(v0 + 72));
}

uint64_t sub_10077EF18()
{
  sub_10003D614(v0 + 16);

  sub_10001F63C(*(v0 + 72));

  return swift_deallocClassInstance();
}

void sub_10077EFB4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  sub_100453E98(a1, &v27 - v5);
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10002B894(v6, &qword_100973D30);
LABEL_8:
    v27 = 0u;
    v28 = 0u;
    goto LABEL_9;
  }

  v9 = ImpressionMetrics.fields.getter();
  (*(v8 + 8))(v6, v7);
  if (!*(v9 + 16) || (v10 = sub_1000072B8(0x6973736572706D69, 0xEF7865646E496E6FLL), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_1000073E8(*(v9 + 56) + 32 * v10, &v27);

  if (*(&v28 + 1))
  {
    sub_100056164(&v27, v29);
    v12 = *&v2[OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_metricsLabel];
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    v13._countAndFlagsBits = 32;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);
    _print_unlocked<A, B>(_:_:)();
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = String._bridgeToObjectiveC()();

    [v12 setText:v15];

    sub_100007000(v29);
    v16 = *&v2[OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_overlayColor];
    goto LABEL_10;
  }

LABEL_9:
  sub_10002B894(&v27, &unk_1009711D0);
  v12 = *&v2[OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_metricsLabel];
  v17 = String._bridgeToObjectiveC()();
  [v12 setText:v17];

  v16 = [objc_opt_self() yellowColor];
LABEL_10:
  v18 = v16;
  v19 = [v18 colorWithAlphaComponent:0.2];
  [v2 setBackgroundColor:v19];

  v20 = [v2 layer];
  v21 = [v18 colorWithAlphaComponent:0.2];

  v22 = [v21 CGColor];
  [v20 setBorderColor:v22];

  [v12 sizeToFit];
  v23 = [v12 layer];
  [v12 frame];
  Height = CGRectGetHeight(v30);
  [v12 frame];
  Width = CGRectGetWidth(v31);
  if (Width >= Height)
  {
    Width = Height;
  }

  [v23 setCornerRadius:{Width * 0.5, v27, v28}];

  v26 = [v12 layer];
  [v26 setMasksToBounds:1];
}

char *sub_10077F3D4(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_metricsLabel;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  *&v5[OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_overlayColor] = a1;
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v28, "initWithFrame:", a2, a3, a4, a5);
  [v14 setTag:{58236912, v28.receiver, v28.super_class}];
  [v14 setUserInteractionEnabled:0];
  v15 = [v14 layer];
  [v15 setBorderWidth:5.0];

  v16 = OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_metricsLabel;
  [*&v14[OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_metricsLabel] setNumberOfLines:0];
  v17 = *&v14[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 boldSystemFontOfSize:20.0];
  [v19 setFont:v20];

  [*&v14[v16] setTextColor:*&v14[OBJC_IVAR____TtC8AppStore29ImpressionMetricsDebugOverlay_overlayColor]];
  v21 = *&v14[v16];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 whiteColor];
  [v23 setBackgroundColor:v24];

  v25 = *&v14[v16];
  [v25 frame];
  Width = CGRectGetWidth(v29);
  [*&v14[v16] frame];
  [v25 setFrame:{10.0, 10.0, Width, CGRectGetHeight(v30)}];

  [v14 addSubview:*&v14[v16]];
  return v14;
}

uint64_t sub_10077F78C(uint64_t a1, uint64_t a2)
{
  v32[1] = a2;
  v3 = type metadata accessor for FlowPresentationContext();
  v33 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32[0] = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = v32 - v6;
  __chkstk_darwin(v7);
  v35 = v32 - v8;
  v9 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v9);
  v36 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for FlowDestination();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v32 - v22;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, &v39, v16);
  v24 = *(v18 + 48);
  if (v24(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v24(v16, 1, v17) != 1)
    {
      sub_10002B894(v16, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v16, v23);
  }

  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v25 = 0;
  }

  else
  {
    FlowAction.presentationContext.getter();
    FlowAction.animationBehavior.getter();

    dispatch thunk of Action.clickSender.getter();
    sub_100462678(a1, &v39, v13);
    if (v24(v13, 1, v17) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v24(v13, 1, v17) != 1)
      {
        sub_10002B894(v13, &unk_1009796F0);
      }
    }

    else
    {
      sub_10013A05C(v13, v20);
    }

    sub_10065DB50(v35);
    sub_100781394(v20, type metadata accessor for FlowDestination);
    v26 = v33;
    v27 = *(v33 + 104);
    v27(v34, enum case for FlowPresentationContext.push(_:), v3);
    sub_1007813F4(&qword_100975970);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v39 == v37 && v40 == v38)
    {
      v28 = 1;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v29 = *(v26 + 8);
    v29(v34, v3);

    if (v28)
    {
      v29(v35, v3);
      sub_100781394(v36, type metadata accessor for FlowPresentationHints);
      v25 = 1;
    }

    else
    {
      v30 = v32[0];
      v27(v32[0], enum case for FlowPresentationContext.replace(_:), v3);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v39 == v37 && v40 == v38)
      {
        v25 = 1;
      }

      else
      {
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v29(v30, v3);
      v29(v35, v3);
      sub_100781394(v36, type metadata accessor for FlowPresentationHints);
    }
  }

  sub_100781394(v23, type metadata accessor for FlowDestination);
  return v25 & 1;
}

uint64_t sub_10077FD90(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for FlowAnimationBehavior();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FlowPresentationContext();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 viewControllers];
  sub_100005744(0, &qword_1009711C0);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    (*(v9 + 104))(v12, enum case for FlowPresentationContext.replace(_:), v8);
    sub_1007813F4(&qword_100975978);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    v17 = v16 ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = type metadata accessor for FlowPresentationHints();
  (*(v5 + 16))(v7, a1 + *(v18 + 20), v4);
  v19 = (*(v5 + 88))(v7, v4);
  if (v19 != enum case for FlowAnimationBehavior.infer(_:))
  {
    if (v19 == enum case for FlowAnimationBehavior.never(_:))
    {
      v17 = 0;
    }

    else if (v19 == enum case for FlowAnimationBehavior.always(_:))
    {
      v17 = 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  return v17 & 1;
}

uint64_t sub_100780078(uint64_t a1, void *a2, void *a3)
{
  v109 = a3;
  v104 = type metadata accessor for ActionOutcome();
  v103 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_1009767C0);
  __chkstk_darwin(v6 - 8);
  v108 = &v101 - v7;
  v112 = type metadata accessor for FlowPresentationContext();
  v113 = *(v112 - 8);
  __chkstk_darwin(v112);
  v101 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v110 = &v101 - v10;
  __chkstk_darwin(v11);
  v114 = &v101 - v12;
  v13 = type metadata accessor for FlowPresentationHints();
  __chkstk_darwin(v13);
  v115 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009796F0);
  __chkstk_darwin(v15 - 8);
  v106 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v101 - v18;
  v20 = type metadata accessor for FlowDestination();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v101 - v25;

  dispatch thunk of Action.clickSender.getter();
  sub_100462678(a1, &v117, v19);
  v27 = *(v21 + 48);
  v28 = v27(v19, 1, v20);
  v107 = v23;
  v105 = v27;
  if (v28 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v20) != 1)
    {
      sub_10002B894(v19, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v19, v26);
  }

  FlowAction.presentationContext.getter();
  FlowAction.animationBehavior.getter();
  v29 = [a2 traitCollection];
  v30 = v114;
  v111 = v26;
  sub_10065DB50(v114);

  v31 = sub_100623FBC(a2);
  if (!v31)
  {
    sub_10002849C(&qword_1009764A0);
    sub_100781340();
    swift_allocError();
    v41 = Promise.__allocating_init(error:)();
    (*(v113 + 8))(v30, v112);
LABEL_69:
    v99 = v111;
    sub_100781394(v115, type metadata accessor for FlowPresentationHints);
    sub_100781394(v99, type metadata accessor for FlowDestination);
    return v41;
  }

  v32 = v31;
  v33 = [v32 traitCollection];
  v123 = v32;
  sub_100005744(0, &qword_100975960);
  v34 = v32;
  sub_10002849C(&qword_100975968);
  v35 = swift_dynamicCast();
  v36 = v107;
  if ((v35 & 1) == 0)
  {
    *&v119 = 0;
    v117 = 0u;
    v118 = 0u;
  }

  dispatch thunk of Action.clickSender.getter();
  v37 = v106;
  sub_100462678(a1, v116, v106);
  v38 = v105;
  if (v105(v37, 1, v20) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v39 = v38(v37, 1, v20);
    v40 = v113;
    if (v39 != 1)
    {
      sub_10002B894(v37, &unk_1009796F0);
    }
  }

  else
  {
    sub_10013A05C(v37, v36);
    v40 = v113;
  }

  v42 = FlowAction.referrerUrl.getter();
  v44 = v43;
  v45 = v108;
  FlowAction.referrerData.getter();
  sub_1003C1668(v36, v33, v42, v44, v45, &v117, v109, 1);
  v47 = v46;

  sub_10002B894(v45, &unk_1009767C0);
  sub_100781394(v36, type metadata accessor for FlowDestination);
  sub_10002B894(&v117, &unk_100981880);
  if (!v47)
  {

    sub_10002849C(&qword_1009764A0);
    (*(v103 + 104))(v102, enum case for ActionOutcome.unsupported(_:), v104);
    v41 = Promise.__allocating_init(value:)();

    (*(v40 + 8))(v114, v112);
    goto LABEL_69;
  }

  v48 = [v34 presentingViewController];

  v49 = v112;
  v109 = v34;
  if (!v48)
  {
    goto LABEL_33;
  }

  v50 = [v34 viewControllers];
  sub_100005744(0, &qword_1009711C0);
  v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v51 >> 62))
  {
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

LABEL_32:

LABEL_33:
    v64 = sub_10077FD90(v115, v34);
    v65 = *(v40 + 104);
    v65(v110, enum case for FlowPresentationContext.push(_:), v49);
    sub_1007813F4(&qword_100975970);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    LODWORD(v113) = v64;
    if (v117 == v116[0])
    {
      v66 = 1;
    }

    else
    {
      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v33 = *(v40 + 8);
    (v33)(v110, v49);

    if (v66)
    {
      [v47 setModalPresentationCapturesStatusBarAppearance:1];
      v117 = xmmword_100975F30;
      v118 = xmmword_100975F40;
      v119 = xmmword_100975F50;
      v120 = xmmword_100975F60;
      v121 = xmmword_100975F70;
      v67 = qword_100975F80;
      v122 = qword_100975F80;
      v68 = BYTE8(xmmword_100975F50);
      v69 = v114;
      v70 = v109;
      if (BYTE8(xmmword_100975F50) != 255)
      {
        v71 = v117;
        v73 = v118;
        v72 = *&v119;
        v74 = v120;
        v75 = v121;
        v76 = v117;
        v77 = [v47 popoverPresentationController];
        if (v77)
        {
          v78 = v77;
          if (v68)
          {
            sub_100357ED0(&v117, v116);
            v79 = v78;
            [v79 setSourceView:v71];
            v80 = v79;
            v70 = v109;
            [v80 setSourceRect:{*(&v71 + 1), v73, v72}];
            sub_10002B894(&v117, &unk_10097F520);
          }

          else
          {
            [v77 setBarButtonItem:v71];
          }

          [v78 setPopoverLayoutMargins:{v74, v75}];
          [v78 setPermittedArrowDirections:v67];
        }

        else
        {
          if (qword_10096D120 != -1)
          {
            swift_once();
          }

          v98 = type metadata accessor for OSLogger();
          sub_1000056A8(v98, qword_1009CE218);
          sub_10002849C(&unk_100972A10);
          type metadata accessor for LogMessage();
          *(swift_allocObject() + 16) = xmmword_1007B10D0;
          LogMessage.init(stringLiteral:)();
          Logger.warning(_:)();
        }

        sub_10002B894(&v117, &unk_10097F520);
      }

      [v70 pushViewController:v47 animated:v113 & 1];
      goto LABEL_68;
    }

    v81 = v101;
    v65(v101, enum case for FlowPresentationContext.replace(_:), v49);
    v69 = v114;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v117 == v116[0])
    {
      (v33)(v81, v49);

      v70 = v109;
    }

    else
    {
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (v33)(v81, v49);

      v70 = v109;
      if ((v82 & 1) == 0)
      {
LABEL_68:
        sub_10002849C(&qword_1009764A0);
        (*(v103 + 104))(v102, enum case for ActionOutcome.performed(_:), v104);
        v41 = Promise.__allocating_init(value:)();

        (v33)(v69, v49);
        goto LABEL_69;
      }
    }

    objc_opt_self();
    v83 = swift_dynamicCastObjCClass();
    if (!v83)
    {
      v91 = [v70 viewControllers];
      sub_100005744(0, &qword_1009711C0);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v44 = (v50 >> 62);
      if (!(v50 >> 62))
      {
        if (!*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v44 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
        {
          v50 = sub_100549964(v50);
        }

        v93 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v93)
        {
          v94 = v93 - 1;
          v44 = *((v50 & 0xFFFFFFFFFFFFFF8) + 8 * v94 + 0x20);
          *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) = v94;
          *&v117 = v50;
          v95 = [v44 tabBarItem];
          [v47 setTabBarItem:v95];

          v96 = v47;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_60:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            isa = Array._bridgeToObjectiveC()().super.isa;

            v70 = v109;
            [v109 setViewControllers:isa animated:v113 & 1];

            goto LABEL_68;
          }

LABEL_78:
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          goto LABEL_60;
        }

LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

LABEL_75:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_76;
      }

      goto LABEL_55;
    }

    v51 = v83;
    v50 = v47;
    v84 = [v70 viewControllers];
    v44 = sub_100005744(0, &qword_1009711C0);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = v34 >> 62;
    if (!(v34 >> 62))
    {
      v85 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_47:
      v69 = v114;
      if (v85)
      {
        v86 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v45 || (v86 & 1) == 0)
        {
          v34 = sub_100549964(v34);
        }

        v87 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v87)
        {
          v88 = v87 - 1;
          v89 = *((v34 & 0xFFFFFFFFFFFFFF8) + 8 * v88 + 0x20);
          *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) = v88;

          v90 = Array._bridgeToObjectiveC()().super.isa;

          v70 = v109;
          [v109 setViewControllers:v90];

          [v70 presentViewController:v51 animated:0 completion:0];
          goto LABEL_68;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_72:
    v85 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_47;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_32;
  }

LABEL_17:
  if ((v51 & 0xC000000000000001) != 0)
  {
    v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_72;
    }

    v52 = *(v51 + 32);
  }

  v53 = v52;

  if ((sub_100039CB4(v53) & 1) == 0)
  {
    goto LABEL_23;
  }

  v54 = swift_allocObject();
  v55 = v109;
  *(v54 + 16) = v109;
  v56 = v55;
  if (sub_100039CB4(v47))
  {

LABEL_23:

LABEL_30:
    v34 = v109;
    goto LABEL_33;
  }

  v57 = [v47 navigationItem];
  v58 = [v57 rightBarButtonItems];
  if (v58)
  {
    v59 = v58;
    sub_100005744(0, &qword_100983870);
    v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v60 = _swiftEmptyArrayStorage;
  }

  *&v117 = v60;
  sub_100005744(0, &qword_100983870);
  sub_100005744(0, &qword_10097CD40);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10013B73C;
  *(v61 + 24) = v54;

  v124.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v124.is_nil = 0;
  v62.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemClose, v124, v125).super.super.isa;
  if (!(v60 >> 62) || (result = _CocoaArrayWrapper.endIndex.getter(), (result & 0x8000000000000000) == 0))
  {
    sub_1004A6D30(0, 0, v62.super.super.isa);
    v63 = Array._bridgeToObjectiveC()().super.isa;

    [v57 setRightBarButtonItems:v63];

    v40 = v113;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_100781340()
{
  result = qword_100996608;
  if (!qword_100996608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100996608);
  }

  return result;
}

uint64_t sub_100781394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007813F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FlowPresentationContext();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10078144C()
{
  result = qword_100996610;
  if (!qword_100996610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100996610);
  }

  return result;
}

uint64_t sub_1007814A0(void *a1)
{
  if (*v1 == *a1 && (static AnyHashable.== infix(_:_:)() & 1) != 0 && (type metadata accessor for StringUserDefaultsDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && ((v3 = v2, *(v2 + 56) == *(v1 + 56)) ? (v4 = *(v2 + 64) == *(v1 + 64)) : (v4 = 0), (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (*(v3 + 72) == *(v1 + 72) && *(v3 + 80) == *(v1 + 80) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
  {
    v5 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1007815A0()
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 88));
}

uint64_t sub_1007815F8()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

double sub_1007816D0()
{
  v1 = type metadata accessor for PageGrid();
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_10096FEE8);
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  v7 = sub_10002849C(&qword_10098F3E8);
  __chkstk_darwin(v7 - 8);
  v9 = v19 - v8;
  v10 = type metadata accessor for Annotation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100781A9C(&qword_10096FE80, &type metadata accessor for Annotation);
  ItemLayoutContext.typedModel<A>(as:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10061999C(v9);
    return 0.0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_100036A58();
    ItemLayoutContext.typedState<A>(as:)();
    StateLens<A>.currentValue.getter();
    v19[1] = v0;
    if (v23)
    {
      v15 = 1;
    }

    else
    {
      v15 = Annotation.shouldAlwaysPresentExpanded.getter();
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v20 + 8))(v3, v21);
    v16 = sub_100079F24();
    swift_getObjectType();
    sub_1000B28DC(v13, v15 & 1, v16);
    v14 = v17;
    swift_unknownObjectRelease();
    (*(v22 + 8))(v6, v4);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t sub_100781A9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100781AE4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009D4348);
  sub_1000056A8(v0, qword_1009D4348);
  return AspectRatio.init(_:_:)();
}

uint64_t sub_100781B38()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009D4360 = result;
  return result;
}

uint64_t sub_100781B7C()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.placeholderBackground.getter();
  qword_1009D4368 = result;
  return result;
}

uint64_t sub_100781C44()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D43B8);
  sub_1000056A8(v4, qword_1009D43B8);
  if (qword_10096F010 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D4370);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100781E18()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D43D0);
  sub_1000056A8(v4, qword_1009D43D0);
  if (qword_10096F018 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D4388);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100781FEC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009D43E8);
  sub_1000056A8(v4, qword_1009D43E8);
  if (qword_10096F020 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D43A0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1007821C0(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

void (*sub_1007822A4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1007822F8;
}

void sub_1007822F8(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v9 = *a1;
    sub_1007845C4();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 contentView];
      [v5 addSubview:v4];
    }

    [v2 setNeedsLayout];
  }

  else
  {
    v9 = *a1;
    sub_1007845C4();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 contentView];
      [v8 addSubview:v7];
    }

    [v2 setNeedsLayout];
  }
}

id sub_100782424()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v7)
  {
    type metadata accessor for RoundedCornerView();
    (*(v3 + 104))(v6, enum case for CornerStyle.arc(_:), v2);
    v8 = v7;
    v9 = RoundedCornerView.__allocating_init(radius:style:)();
    v10 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView;
    v11 = *&v1[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = v9;
    v16 = v9;

    sub_1007825E4();
    v17 = *&v1[v10];
    if (v17)
    {
      v18 = v17;
      [v18 addSubview:v8];
    }
  }

  else
  {
    v13 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView;
    v14 = *&v1[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v1[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v1[v13] = 0;

    sub_1007825E4();
  }

  return [v1 setNeedsLayout];
}

id sub_1007825E4()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView];
  if (v1)
  {
    v2 = v1;
    [v2 setClipsToBounds:1];
    if (qword_10096F008 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_1009D4368];
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    v4 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 contentView];
      [v6 addSubview:v5];
    }
  }

  return [v0 setNeedsLayout];
}

id sub_100782714()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v1)
  {
    v1[OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder] = 1;
    v2 = *&v1[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView];
    v3 = v1;
    [v2 setHidden:0];
    v4 = v3;
    [v4 _setCornerRadius:20.0];
    [v4 setNeedsLayout];
    if (qword_10096F000 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_1009D4360];

    v5 = [v0 contentView];
    [v5 addSubview:v4];
  }

  return [v0 setNeedsLayout];
}

char *sub_100782844(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v61 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = type metadata accessor for SystemImage();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v16 + 104))(v19, enum case for SystemImage.appstore(_:), v15, v17);
  v21 = static SystemImage.load(_:with:)();
  (*(v16 + 8))(v19, v15);
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v5[v20] = v22;
  v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView] = 0;
  if (qword_10096F010 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D4370);
  v25 = *(v23 - 8);
  v58 = *(v25 + 16);
  v59 = v25 + 16;
  v58(v14, v24, v23);
  v57 = *(v25 + 56);
  v57(v14, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v10 + 104);
  v27(v60, enum case for DirectionalTextAlignment.none(_:), v61);
  v28 = type metadata accessor for DynamicTypeLabel();
  v29 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialTypeLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096F018 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D4388);
  v58(v14, v30, v23);
  v57(v14, 0, 1, v23);
  v27(v60, v26, v61);
  v31 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v32 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v62.receiver = v5;
  v62.super_class = v32;
  v33 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel;
  v39 = qword_10096F020;
  v40 = *&v37[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v23, qword_1009D43A0);
  v58(v14, v41, v23);
  v57(v14, 0, 1, v23);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  [*&v37[v38] setLineBreakMode:4];
  v42 = [v37 contentView];
  v43 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialTypeLabel;
  [v42 addSubview:*&v37[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialTypeLabel]];

  v44 = [v37 contentView];
  v45 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon;
  [v44 addSubview:*&v37[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon]];

  v46 = [v37 contentView];
  [v46 addSubview:*&v37[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_titleLabel]];

  v47 = [v37 contentView];
  [v47 addSubview:*&v37[v38]];

  v48 = *&v37[v43];
  v49 = [v37 tintColor];
  [v48 setTextColor:v49];

  v50 = *&v37[v38];
  sub_100005744(0, &qword_100970180);
  v51 = v50;
  v52 = static UIColor.secondaryText.getter();
  [v51 setTextColor:v52];

  v53 = *&v37[v45];
  v54 = [v37 tintColor];

  [v53 setTintColor:v54];
  return v37;
}

void sub_100782FDC()
{
  v1 = v0;
  v174 = type metadata accessor for FloatingPointRoundingRule();
  v163 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = COERCE_DOUBLE(type metadata accessor for StaticDimension());
  v167 = *(*&v181 - 8);
  __chkstk_darwin(*&v181);
  v175 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100975CA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v159 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  *&v178 = &v156 - v8;
  __chkstk_darwin(v9);
  v11 = (&v156 - v10);
  __chkstk_darwin(v12);
  v172 = (&v156 - v13);
  __chkstk_darwin(v14);
  v16 = &v156 - v15;
  v17 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v184.receiver = v0;
  v184.super_class = v17;
  objc_msgSendSuper2(&v184, "layoutSubviews");
  v18 = [v0 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10002849C(&qword_100975C98);
  v27 = *(v5 + 72);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *&v29 = COERCE_DOUBLE(swift_allocObject());
  v168 = v28;
  v176 = *&v29;
  v30 = v29 + v28;
  v31 = *(v4 + 48);
  v160 = v1;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  *(v29 + v28) = v32;
  v33 = qword_10096F028;
  v171 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v181;
  v35 = sub_1000056A8(*&v181, qword_1009D43B8);
  v179 = *(v167 + 16);
  (*&v179)(v30 + v31, v35, *&v34);
  v36 = *(v4 + 48);
  v37 = *&v160[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_titleLabel];
  *(v30 + *&v27) = v37;
  v38 = v4;
  v39 = qword_10096F030;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = v181;
  v42 = sub_1000056A8(*&v181, qword_1009D43D0);
  (*&v179)(v30 + *&v27 + v36, v42, *&v41);
  v180 = v27;
  v43 = (v30 + 2 * *&v27);
  v177 = v38;
  v44 = *(v38 + 48);
  v45 = *&v160[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_subtitleLabel];
  *v43 = v45;
  v46 = qword_10096F038;
  v47 = v45;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = v181;
  v49 = sub_1000056A8(*&v181, qword_1009D43E8);
  (*&v179)(&v43[v44], v49, *&v48);
  *&v179 = v167 + 8;
  v50 = _swiftEmptyArrayStorage;
  v51 = 3;
  v170 = v30;
  v52 = v30;
  do
  {
    sub_1004CD234(v52, v16);
    sub_1004CD234(v16, v11);
    v54 = *v11;
    v55 = *(v177 + 48);
    v56 = [*v11 isHidden];

    v57 = **&v179;
    (**&v179)(v11 + v55, COERCE_DOUBLE(*&v181));
    if (v56)
    {
      sub_100784698(v16);
      v53 = v180;
    }

    else
    {
      sub_1004CD2A4(v16, *&v178);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100144514(0, *(v50 + 2) + 1, 1);
        v50 = v183[0];
      }

      v60 = *(v50 + 2);
      v59 = *(v50 + 3);
      if (v60 >= v59 >> 1)
      {
        sub_100144514(v59 > 1, v60 + 1, 1);
        v50 = v183[0];
      }

      *(v50 + 2) = v60 + 1;
      v53 = v180;
      sub_1004CD2A4(*&v178, v168 + v50 + v60 * *&v180);
    }

    v52 += *&v53;
    --v51;
  }

  while (v51);
  swift_setDeallocating();
  v61 = v177;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = *(v50 + 2);
  v63 = v160;
  v165 = v24;
  v166 = v26;
  v176 = v20;
  if (v62)
  {
    v170 = *(v61 + 48);
    v64 = sub_100005744(0, &qword_100978360);
    v164 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon;
    v161 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon;
    v65 = v168 + v50;
    v168 = (v167 + 32);
    v169 = v64;
    v167 = *&v163 + 8;
    v66 = 0.0;
    v157 = v65;
    v158 = v62;
    v67 = *&v181;
    v68 = v175;
    do
    {
      v69 = v172;
      sub_1004CD234(v65, v172);
      v70 = *v69;
      (*v168)(v68, v69 + v170, v67);
      v71 = v70;
      [v71 sizeThatFits:{v24, v26}];
      v74 = v73;
      if (v72 >= v24)
      {
        v72 = v24;
      }

      v178 = v72;
      v75 = [v63 traitCollection];
      v76 = v63;
      v77 = v173;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v79 = v78;

      v80 = v77;
      v63 = v76;
      (*v167)(v80, v174);
      v186.origin.x = v20;
      v186.origin.y = v22;
      v186.size.width = v24;
      v186.size.height = v26;
      v81 = v66 + CGRectGetMinY(v186);
      [v71 firstBaselineFromTop];
      v83 = v81 + v79 - v82;
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && v76[v164] == 1)
      {
        v84 = *&v76[v161];
        [v84 bounds];
        v85 = v24;
        v87 = v86;
        v89 = v88;
        v20 = v176;
        v187.origin.x = v176;
        v187.origin.y = v22;
        v187.size.width = v85;
        v187.size.height = v166;
        MinX = CGRectGetMinX(v187);
        v163 = v74;
        v90 = v74 * 0.5 + v83;
        v91 = v22;
        v92 = v90 - v89 * 0.5;
        CGRect.withLayoutDirection(in:relativeTo:)();
        [v84 setFrame:?];
        v188.origin.y = v92;
        v22 = v91;
        v188.origin.x = MinX;
        v188.size.width = v87;
        v24 = v165;
        v188.size.height = v89;
        v26 = v166;
        CGRectGetMaxX(v188);
      }

      else
      {
        v20 = v176;
        v185.origin.x = v176;
        v185.origin.y = v22;
        v185.size.width = v24;
        v185.size.height = v26;
        CGRectGetMinX(v185);
      }

      CGRect.withLayoutDirection(in:relativeTo:)();
      [v71 setFrame:?];

      v68 = v175;
      v67 = *&v181;
      v57(v175, *&v181);
      v66 = v66 + v79;
      v65 += *&v180;
      --v62;
    }

    while (v62);
    if (v158 > *(v50 + 2))
    {
      __break(1u);
      return;
    }

    v93 = v159;
    sub_1004CD234(v157 + (v158 - 1) * *&v180, v159);

    v94 = *v93;
    v95 = *(v177 + 48);
    [*v93 frame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v189.origin.x = v97;
    v189.origin.y = v99;
    v189.size.width = v101;
    v189.size.height = v103;
    v24 = v165;
    v26 = v166;
    MaxY = CGRectGetMaxY(v189);
    v57(v93 + v95, v67);
  }

  else
  {

    MaxY = 0.0;
    v67 = *&v181;
  }

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v67, qword_1009D2430);
  v105 = [v63 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1007B0B70;
  *(v106 + 32) = v105;
  v107 = v105;
  v108 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();
  v110 = v109;

  v111 = MaxY + v110;
  v112 = v176;
  v190.origin.x = v176;
  v190.origin.y = v22;
  v190.size.width = v24;
  v190.size.height = v26;
  v181 = CGRectGetMinX(v190);
  v191.origin.x = v112;
  v191.origin.y = v22;
  v191.size.width = v24;
  v191.size.height = v26;
  v113 = CGRectGetMaxY(v191) - (MaxY + v110);
  if (qword_10096EFF8 != -1)
  {
    swift_once();
  }

  v114 = type metadata accessor for AspectRatio();
  sub_1000056A8(v114, qword_1009D4348);
  AspectRatio.width(fromHeight:)();
  v116 = v115;
  v192.origin.x = v112;
  v192.origin.y = v22;
  v192.size.width = v24;
  v192.size.height = v26;
  Width = CGRectGetWidth(v192);
  AspectRatio.height(fromWidth:)();
  if (Width >= v116)
  {
    v119 = v116;
  }

  else
  {
    v119 = Width;
  }

  if (Width >= v116)
  {
    v118 = v113;
  }

  v120 = v119;
  v121 = *&v63[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  v122 = v118;
  if (v121)
  {
    v123 = v121;
    CGRect.withLayoutDirection(in:relativeTo:)();
    ArtworkView.frame.setter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = Strong;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v125 setFrame:?];
  }

  v126 = *&v63[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v126)
  {
    v127 = v126;
    CGRect.withLayoutDirection(in:relativeTo:)();
    v129 = v128;
    v131 = v130;
    v132 = v122;
    v134 = v133;
    v136 = v135;
    v137 = type metadata accessor for ArtworkGrid();
    v182.receiver = v127;
    v182.super_class = v137;
    v138 = v134;
    v122 = v132;
    objc_msgSendSuper2(&v182, "setFrame:", v129, v131, v138, v136);
    sub_1006B4F58();
    [v127 setNeedsLayout];
  }

  v139 = *&v63[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v139)
  {
    v140 = *&v63[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v140)
    {
      v141 = v139;
      v142 = v140;
      v63 = v160;
      [v142 setFrame:{v181, v111, v120, v122}];
      [v142 bounds];
      v144 = v143;
      v146 = v145;
      v178 = v122;
      v148 = v147;
      v150 = v149;
      ArtworkView.imageSize.getter();
      v180 = v111;
      v193.origin.x = v144;
      v193.origin.y = v146;
      v193.size.width = v148;
      v193.size.height = v150;
      CGRectGetMidX(v193);
      v179 = v120;
      v194.origin.x = v144;
      v194.origin.y = v146;
      v194.size.width = v148;
      v122 = v178;
      v194.size.height = v150;
      CGRectGetMidY(v194);
      v120 = v179;
      v111 = v180;
      CGRect.withLayoutDirection(in:relativeTo:)();
      ArtworkView.frame.setter();
    }
  }

  v151 = *&v63[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v151)
  {
    v152 = v151;
    sub_1002C65CC(v183);
    sub_1002C97E0(v63, v183, v120, v122);
    v179 = v22;
    v180 = v153;
    v154 = v181;
    sub_1001A927C(v183);
    v195.origin.x = v154;
    v195.origin.y = v111;
    v195.size.width = v120;
    v195.size.height = v122;
    CGRectGetMinX(v195);
    v196.size.height = v122;
    v196.origin.x = v154;
    v196.origin.y = v111;
    v196.size.width = v120;
    CGRectGetMinY(v196);
    v155 = v152;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v155 setFrame:?];
  }
}

id sub_100783E74()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  sub_1007845C4();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v0 contentView];
    [v6 addSubview:v5];
  }

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView;
  v8 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *&v0[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v0[v7] = 0;

  sub_100782424();
  v10 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v0[v10] = 0;

  sub_100782714();
  v13 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
  v14 = *&v0[OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v0[v13];
  }

  else
  {
    v15 = 0;
  }

  *&v0[v13] = 0;

  return [v0 setNeedsLayout];
}

id sub_100784088()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007841BC(void *a1)
{
  sub_1007845C4();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_10078426C(uint64_t **a1))()
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
  v2[4] = sub_1007822A4(v2);
  return sub_1000B4CAC;
}

void sub_1007842DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1002C17B4();
  }
}

uint64_t sub_100784344(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100784398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100784404(uint64_t *a1))()
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
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_10078457C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_1007845C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10078457C(&qword_100973190, 255, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_100102E9C(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_100784698(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100975CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100784700()
{
  v1 = type metadata accessor for SystemImage();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
  v7 = static SystemImage.load(_:with:)();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1007848C0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  v11 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_allocWithZone(UIView);
  v13 = v11;
  v14 = [v12 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = [v14 layer];
  [v15 setCornerRadius:20.0];

  v16 = v13;
  [v16 setBackgroundView:v14];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v16 contentView];
  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v16;
}

void sub_100784B84()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
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

  v4 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView;
  v5 = *&v0[OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView];
  if (v5)
  {
    if (([v5 isHidden] & 1) == 0)
    {
      v6 = *&v0[v4];
      if (v6)
      {
        v7 = v6;
        [v0 bounds];
        [v7 setFrame:?];
      }
    }
  }

  v8 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView;
  v9 = *&v0[OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (v9 && ([v9 isHidden] & 1) == 0)
  {
    v10 = *&v0[v8];
    if (v10)
    {
      v11 = v10;
      [v0 bounds];
      [v11 setFrame:?];
    }
  }
}

id sub_100784D6C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *&v2[*a1];
  if (v4)
  {
    v5 = *&v2[*a1];
  }

  else
  {
    a2(0);
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v7 = *&v2[v3];
    *&v2[v3] = v6;
    v5 = v6;

    v8 = [v2 contentView];
    [v8 addSubview:v5];

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

id sub_100784E14()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  objc_msgSendSuper2(&v12, "prepareForReuse");
  v1 = OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView];
  if (v2)
  {
    [v2 setHidden:1];
    v3 = *&v0[v1];
    if (v3)
    {
      v4 = &v3[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler];
      v5 = *&v3[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler];
      *v4 = 0;
      v4[1] = 0;
      v6 = v3;
      sub_10001F63C(v5);
      v7 = &v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler];
      v8 = *&v6[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler];
      *v7 = 0;
      v7[1] = 0;
      sub_10001F63C(v8);
      v9 = *v4;
      *v4 = 0;
      v4[1] = 0;
      sub_10001F63C(v9);
      v10 = *v7;
      *v7 = 0;
      v7[1] = 0;
      sub_10001F63C(v10);
    }
  }

  result = *&v0[OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView];
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

void sub_100784F54()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      aBlock[4] = sub_100785760;
      aBlock[5] = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008D1EE8;
      v6 = _Block_copy(aBlock);
      v7 = v2;

      [v4 animateWithDuration:v6 animations:0.5];
      _Block_release(v6);

      return;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v3)
  {
    v8 = v3;
    if (![v8 isHidden])
    {
      [v8 setClipsToBounds:0];
    }
  }
}

void sub_1007850D0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_1002C9E54;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_1008D1E48;
LABEL_10:
      v13 = sub_100007A08;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_100785758;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_1008D1E98;
    goto LABEL_10;
  }

LABEL_12:
}

void sub_1007852B0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView);
  if (!v3)
  {
LABEL_4:
    v4 = *(v1 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView);
    if (!v4)
    {
      return;
    }

    v10 = v4;
    if (![v10 isHidden] && a1)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v10;
      v15 = sub_1002C9E4C;
      v16 = v5;
      aBlock = _NSConcreteStackBlock;
      v12 = 1107296256;
      v6 = &unk_1008D1DA8;
LABEL_10:
      v13 = sub_100007A08;
      v14 = v6;
      v8 = _Block_copy(&aBlock);
      v9 = v10;

      [a1 addAnimations:v8];

      _Block_release(v8);
      return;
    }

    goto LABEL_12;
  }

  v10 = v3;
  if ([v10 isHidden])
  {

    goto LABEL_4;
  }

  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v10;
    v15 = sub_100785750;
    v16 = v7;
    aBlock = _NSConcreteStackBlock;
    v12 = 1107296256;
    v6 = &unk_1008D1DF8;
    goto LABEL_10;
  }

LABEL_12:
}

id sub_100785490()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_userReviewView);
  if (v1)
  {
    v2 = v1;
    if (![v2 isHidden])
    {
      v5 = &OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
      goto LABEL_10;
    }
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (!v3)
  {
    return 0;
  }

  v2 = v3;
  if ([v2 isHidden])
  {

    return 0;
  }

  v5 = &OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
LABEL_10:
  v6 = *&v2[*v5];

  return v6;
}

id sub_100785544()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericProductReviewCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for GenericProductReviewCollectionViewCell()
{
  result = qword_1009967B0;
  if (!qword_1009967B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10078562C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1007856D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore38GenericProductReviewCollectionViewCell_reviewSummaryView);
  if (v1)
  {
    v2 = v1;
    if (([v2 isHidden] & 1) == 0)
    {
      [v2 setClipsToBounds:1];
    }
  }
}

id sub_100785788()
{
  v1 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for IndexPath();
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

    v11 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100031660(v0 + v11, v3, &unk_10097DAE0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10002B894(v3, &unk_10097DAE0);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v10 cellForItemAtIndexPath:isa];

    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return result;
}

id sub_1007859B4()
{
  v1 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for IndexPath();
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

    v11 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_100031660(v0 + v11, v3, &unk_10097DAE0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      sub_10002B894(v3, &unk_10097DAE0);
      return 0;
    }

    (*(v5 + 32))(v7, v3, v4);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
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

void sub_100785C54(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = type metadata accessor for IndexPath();
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

  v19 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_100031660(v2 + v19, v7, &unk_10097DAE0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    sub_10002B894(v7, &unk_10097DAE0);
LABEL_14:
    v20 = 1;
    height = 0.0;
    v13 = 0uLL;
    goto LABEL_15;
  }

  (*(v9 + 32))(v11, v7, v8);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
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

id sub_10078617C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_10002849C(&qword_100996818);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v87 - v10;
  v99 = type metadata accessor for PageGrid();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v13 - 8);
  v94 = &v87 - v14;
  v96 = type metadata accessor for UIView.LayoutRegion();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v22 - 8);
  v24 = &v87 - v23;
  v25 = type metadata accessor for ItemLayoutContext();
  v105 = *(v25 - 8);
  v106 = v25;
  __chkstk_darwin(v25);
  v102 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1007888C8(a1);
  if (!v27)
  {
    return 0;
  }

  v100 = a1;
  v101 = v11;
  *(v4 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentedViewController + 8) = v28;
  v104 = v27;
  swift_unknownObjectWeakAssign();
  IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
  v103 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition;
  *(v4 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) = IsReduceMotionEnabled;
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
  v36 = OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  swift_beginAccess();
  sub_100031660(v35 + v36, v24, &unk_1009731E0);

  v38 = v105;
  v37 = v106;
  if ((*(v105 + 48))(v24, 1, v106) == 1)
  {

    sub_10002B894(v24, &unk_1009731E0);
    v8 = v91;
    v9 = v90;
    a2 = v89;
    v4 = v92;
LABEL_6:
    *(v4 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController + 8) = 0;
    swift_unknownObjectWeakAssign();
    v39 = type metadata accessor for IndexPath();
    (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
    v40 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
    swift_beginAccess();
    sub_1000F4070(v18, v4 + v40);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v42 = v100;
    v43 = v103;
    if (Strong)
    {
      v44 = Strong;
      v45 = *(Strong + qword_1009CF498);
      v44[qword_1009CF498] = 0;
      sub_100300898(v45);
    }

    goto LABEL_25;
  }

  v47 = v102;
  (*(v38 + 32))(v102, v24, v37);
  v48 = v92;
  *(v92 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController + 8) = v31;
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
    sub_1006D155C(v42, a2, v81);
    v46 = v84;
    *(v84 + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_transitioningViewProvider + 8) = &off_1008D1F10;
    swift_unknownObjectWeakAssign();
    v85 = v104;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10002849C(&qword_100996830);
    sub_100788FA4();

    dispatch thunk of static EventEmitter.defaultScheduler.getter();
    v86 = v101;
    EventEmitter.addObserver(on:singleUse:_:)();

    sub_100007000(v107);
    (*(v9 + 8))(v86, v8);
    return v46;
  }

  v88 = v34;
  v50 = [v34 collectionView];
  v42 = v100;
  if (v50 && (v51 = v50, v52 = [v50 indexPathsForSelectedItems], v51, v52))
  {
    v53 = type metadata accessor for IndexPath();
    v54 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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
    v56 = type metadata accessor for IndexPath();
    (*(*(v56 - 8) + 56))(v21, 1, 1, v56);
    v4 = v92;
  }

  v57 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
  swift_beginAccess();
  sub_1000F4070(v21, v4 + v57);
  swift_endAccess();
  type metadata accessor for TodayCard();
  sub_1002208A0();
  v58 = v102;
  ItemLayoutContext.typedModel<A>(as:)();
  v59 = v107[0];
  if (!v107[0])
  {
    (*(v105 + 8))(v58, v106);

    goto LABEL_25;
  }

  v60 = sub_1007859B4();
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
    v67 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
    v68 = *(v67 - 8);
    v69 = v94;
    (*(v68 + 104))(v94, v66, v67);
    (*(v68 + 56))(v69, 0, 1, v67);
    v70 = v93;
    static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
    sub_10002B894(v69, &unk_100996820);
    UIView.edgeInsets(for:)();
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
    ItemLayoutContext.subscript.getter();

    sub_100305DC8(v59, v61, v63, v79);

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

void sub_100786EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = *(Strong + qword_1009CF498);
      v5[qword_1009CF498] = 0;
      sub_100300898(v6);
    }
  }

  v7 = a3 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    sub_100554884(1, ObjectType, v10);
  }

  v12 = sub_100785788();
  if (v12)
  {
    v13 = v12;
    [v12 setHidden:1];
  }

  v14 = sub_10078702C();
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = swift_getObjectType();
    (*(v17 + 248))(1, v18, v17);
  }

  v19 = sub_1007870B0();
  if (v19)
  {
    v21 = v20;
    v23 = v19;
    v22 = swift_getObjectType();
    (*(v21 + 248))(1, v22, v21);
  }
}

char *sub_10078702C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *&result[qword_10097FCC0];
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);

      return v3;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *sub_1007870B0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = *(Strong + qword_10097FCC0);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
    v4 = v3;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_100787138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + qword_1009CF498);
    v5[qword_1009CF498] = 0;
    sub_100300898(v6);
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
    *(v15 + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_allowTraitCollectionOverrides) = 1;
  }

  v16 = sub_100785788();
  if (v16)
  {
    v17 = v16;
    swift_getObjectType();
    v18 = swift_conformsToProtocol2();

    if (v18)
    {
      v19 = a3 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController;
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

void sub_1007872E0(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v43 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (Strong)
    {
      v14 = *(v12 + 8);
      v15 = Strong;
      ObjectType = swift_getObjectType();
      sub_100554590(0, ObjectType, v14);
    }

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = *(v12 + 8);
      v20 = swift_getObjectType();
      sub_100554928(v20, v19);
    }

    v21 = sub_10078702C();
    if (v21)
    {
      v23 = v21;
      v24 = v22;
      v25 = swift_getObjectType();
      (*(v24 + 248))(0, v25, v24);
    }

    v26 = sub_1007870B0();
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
      sub_100300270(v32, *(v12 + 8));

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
        v36 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_selectedIndexPath;
        swift_beginAccess();
        sub_100031660(a3 + v36, v7, &unk_10097DAE0);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {

          sub_10002B894(v7, &unk_10097DAE0);
        }

        else
        {
          (*(v9 + 32))(v11, v7, v8);
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
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
      sub_100554884(0, v42, v41);
    }
  }
}

char *sub_100787708(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentingViewController];
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
    v7[qword_1009CF420] = 0;
  }

  sub_100785C54(0, v41);
  v8 = v1[OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
  v9 = type metadata accessor for TodayTransitionDismissAnimation();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_destinationRect];
  v11[32] = v42;
  v12 = v41[1];
  *v11 = v41[0];
  *(v11 + 1) = v12;
  v10[OBJC_IVAR____TtC8AppStore31TodayTransitionDismissAnimation_shouldUseReducedMotionTransition] = v8;
  v40.receiver = v10;
  v40.super_class = v9;
  v13 = objc_msgSendSuper2(&v40, "init");
  v14 = swift_allocObject();
  v14[2] = v1;
  v14[3] = v5;
  v14[4] = v6;
  v15 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  swift_beginAccess();
  v16 = *&v13[v15];
  v17 = v1;
  v18 = v5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v13[v15] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1000340DC(0, *(v16 + 2) + 1, 1, v16);
    *&v13[v15] = v16;
  }

  v21 = *(v16 + 2);
  v20 = *(v16 + 3);
  if (v21 >= v20 >> 1)
  {
    v16 = sub_1000340DC((v20 > 1), v21 + 1, 1, v16);
  }

  *(v16 + 2) = v21 + 1;
  v22 = &v16[3 * v21];
  *(v22 + 4) = sub_1007888A8;
  *(v22 + 5) = v14;
  *(v22 + 48) = 0;
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
    v24 = sub_1000340DC(0, *(v24 + 2) + 1, 1, v24);
    *&v13[v15] = v24;
  }

  v29 = *(v24 + 2);
  v28 = *(v24 + 3);
  if (v29 >= v28 >> 1)
  {
    v24 = sub_1000340DC((v28 > 1), v29 + 1, 1, v24);
  }

  *(v24 + 2) = v29 + 1;
  v30 = &v24[3 * v29];
  *(v30 + 4) = sub_1007888B4;
  *(v30 + 5) = v23;
  *(v30 + 48) = 1;
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
    v32 = sub_1000340DC(0, *(v32 + 2) + 1, 1, v32);
    *&v13[v15] = v32;
  }

  v37 = *(v32 + 2);
  v36 = *(v32 + 3);
  if (v37 >= v36 >> 1)
  {
    v32 = sub_1000340DC((v36 > 1), v37 + 1, 1, v32);
  }

  *(v32 + 2) = v37 + 1;
  v38 = &v32[3 * v37];
  *(v38 + 4) = sub_1007888BC;
  *(v38 + 5) = v31;
  *(v38 + 48) = 2;
  *&v13[v15] = v32;
  swift_endAccess();

  return v13;
}

void sub_100787ADC()
{
  v0 = sub_10078702C();
  if (v0)
  {
    v2 = v0;
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 248))(1, ObjectType, v3);
  }

  v5 = sub_1007870B0();
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

    *&v11[qword_10097FCB8] = 0;
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
        sub_100065AF0();
        v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v20 >> 62)
        {
          goto LABEL_27;
        }

        for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
        {
          v22 = 0;
          while (1)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

void sub_100787E20(int a1, int a2, id a3, uint64_t a4)
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
      v9 = v7 + OBJC_IVAR____TtC8AppStore33ArticlePagePresentationController_interactiveDismissal;
      swift_beginAccess();
      if (*(v9 + 24))
      {
        sub_10002C0AC(v9, v15);
        v10 = v16;
        v11 = v17;
        sub_10002A400(v15, v16);
        (*(v11 + 24))(v10, v11);
        sub_100007000(v15);
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

  if ((*(a4 + OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition) & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      v14 = *(Strong + qword_1009CF498);
      v13[qword_1009CF498] = 1;
      sub_100300898(v14);
    }
  }
}

void sub_100787F64(uint64_t a1, char a2, void *a3, id a4, uint64_t a5)
{
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    sub_100554884(0, ObjectType, a4);
    v14 = sub_10078702C();
    if (v14)
    {
      v16 = v14;
      v17 = v15;
      v18 = swift_getObjectType();
      (*(v17 + 248))(0, v18, v17);
    }

    v19 = sub_1007870B0();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      v23 = swift_getObjectType();
      (*(v22 + 248))(0, v23, v22);
    }

    v24 = sub_100785788();
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

      v86 = OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_presentedViewController;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        v36 = *&Strong[qword_10097FCC0];
        if (v36)
        {
          v80 = v9;
          v85 = v28;
          v37 = v36 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell;
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
              type metadata accessor for VideoPlaybackCoordinator();
              type metadata accessor for BaseObjectGraph();
              inject<A, B>(_:from:)();
              v74 = v87;
              v46 = v76;
              swift_getObjectType();
              v47 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
              v48 = v46;
              v49 = v74;
              dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

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
          v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
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

      sub_100554590(1, ObjectType, a4);
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
          type metadata accessor for VideoPlaybackCoordinator();
          type metadata accessor for BaseObjectGraph();
          inject<A, B>(_:from:)();
          v71 = v87;
          swift_getObjectType();
          v72 = v28;
          v28 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();
          v73 = v72;
          dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
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
      v31 = *(v29 + qword_1009CF498);
      v30[qword_1009CF498] = 0;
      sub_100300898(v31);
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v32[qword_1009CF420] = 1;
    }

    v33 = swift_getObjectType();
    sub_100554590(0, v33, a4);
  }
}

uint64_t type metadata accessor for TodayArticleTransitioningDelegate()
{
  result = qword_100996800;
  if (!qword_100996800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100788804()
{
  sub_10022B99C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1007888C8(void *a1)
{
  type metadata accessor for ArticleContainerViewController();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC8AppStore30ArticleContainerViewController_articleViewController);
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
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for OSLogger();
    sub_1000056A8(v13, qword_1009CE218);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B1890;
    LogMessage.init(stringLiteral:)();
    v15[3] = sub_100065AF0();
    v15[0] = a1;
    v14 = a1;
    static LogMessage.sensitive(_:)();
    sub_10002B894(v15, &unk_1009711D0);
    Logger.debug(_:)();

    return 0;
  }

  v6 = v5;
  v7 = a1;
  v8 = [v6 viewControllers];
  sub_100065AF0();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

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

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
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

char *sub_100788BD0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_100785C54(1, v38);
    v4 = v1[OBJC_IVAR____TtC8AppStore33TodayArticleTransitioningDelegate_shouldUseReducedMotionTransition];
    v5 = type metadata accessor for TodayTransitionPresentAnimation();
    v6 = objc_allocWithZone(v5);
    v7 = &v6[OBJC_IVAR____TtC8AppStore31TodayTransitionPresentAnimation_originRect];
    v7[32] = v39;
    v8 = v38[1];
    *v7 = v38[0];
    *(v7 + 1) = v8;
    v6[OBJC_IVAR____TtC8AppStore31TodayTransitionPresentAnimation_shouldUseReducedMotionTransition] = v4;
    v37.receiver = v6;
    v37.super_class = v5;
    v9 = objc_msgSendSuper2(&v37, "init");
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    v11 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
    swift_beginAccess();
    v12 = *&v9[v11];
    v13 = v1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v11] = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1000340DC(0, *(v12 + 2) + 1, 1, v12);
      *&v9[v11] = v12;
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_1000340DC((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v17 = &v12[3 * v16];
    *(v17 + 4) = sub_100788F84;
    *(v17 + 5) = v10;
    *(v17 + 48) = 0;
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
      v19 = sub_1000340DC(0, *(v19 + 2) + 1, 1, v19);
      *&v9[v11] = v19;
    }

    v24 = *(v19 + 2);
    v23 = *(v19 + 3);
    if (v24 >= v23 >> 1)
    {
      v19 = sub_1000340DC((v23 > 1), v24 + 1, 1, v19);
    }

    *(v19 + 2) = v24 + 1;
    v25 = &v19[3 * v24];
    *(v25 + 4) = sub_100788F8C;
    *(v25 + 5) = v18;
    *(v25 + 48) = 1;
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
      v27 = sub_1000340DC(0, *(v27 + 2) + 1, 1, v27);
      *&v9[v11] = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = sub_1000340DC((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[3 * v31];
    *(v32 + 4) = sub_100788F94;
    *(v32 + 5) = v26;
    *(v32 + 48) = 2;
    *&v9[v11] = v27;
    swift_endAccess();
  }

  else
  {
    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + qword_1009CF498);
      v34[qword_1009CF498] = 0;
      sub_100300898(v35);
    }

    return 0;
  }

  return v9;
}

unint64_t sub_100788FA4()
{
  result = qword_100972AA0;
  if (!qword_100972AA0)
  {
    sub_10002D1A8(&qword_100996830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972AA0);
  }

  return result;
}

uint64_t _AssistantIntent.IntentProjection.subscript.getter()
{
  return _AssistantIntent.IntentProjection.subscript.getter();
}

{
  return _AssistantIntent.IntentProjection.subscript.getter();
}

uint64_t _AssistantIntent.Value.init<A, B>(_:for:)()
{
  return _AssistantIntent.Value.init<A, B>(_:for:)();
}

{
  return _AssistantIntent.Value.init<A, B>(_:for:)();
}

uint64_t _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)()
{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

{
  return _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
}

uint64_t IndexPath.appending(_:)()
{
  return IndexPath.appending(_:)();
}

{
  return IndexPath.appending(_:)();
}

uint64_t Interpolator.value(forInput:)()
{
  return Interpolator.value(forInput:)();
}

{
  return Interpolator.value(forInput:)();
}

Swift::String __swiftcall localizedString(_:with:)(Swift::String _, Swift::OpaquePointer with)
{
  v2 = localizedString(_:with:)(_._countAndFlagsBits, _._object, with._rawValue);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

Swift::String __swiftcall localizedString(_:comment:)(Swift::String _, Swift::String comment)
{
  v2 = localizedString(_:comment:)(_._countAndFlagsBits, _._object, comment._countAndFlagsBits, comment._object);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t ItemLayoutContext.typedModel<A>(as:)()
{
  return ItemLayoutContext.typedModel<A>(as:)();
}

{
  return ItemLayoutContext.typedModel<A>(as:)();
}

Swift::String_optional __swiftcall localizedFileSize(_:)(NSNumber a1)
{
  v1 = localizedFileSize(_:)(a1.super.super.isa);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t SearchActionCalculator.searchAction(modifying:with:)()
{
  return SearchActionCalculator.searchAction(modifying:with:)();
}

{
  return SearchActionCalculator.searchAction(modifying:with:)();
}

Swift::String __swiftcall localizedStringWithCount(_:count:comment:)(Swift::String _, Swift::Int count, Swift::String comment)
{
  v3 = localizedStringWithCount(_:count:comment:)(_._countAndFlagsBits, _._object, count, comment._countAndFlagsBits, comment._object);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String_optional __swiftcall localizedStringForDecimal(_:_:)(NSNumber_optional a1, Swift::Int a2)
{
  v2 = localizedStringForDecimal(_:_:)(a1.value.super.super.isa, *&a1.is_nil, a2);
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

uint64_t dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)()
{
  return dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();
}

{
  return dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)();
}

Swift::String __swiftcall localizedStringForAdsLanguage(_:)(Swift::String a1)
{
  v1 = localizedStringForAdsLanguage(_:)(a1._countAndFlagsBits, a1._object);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t AdamId.init(value:)()
{
  return AdamId.init(value:)();
}

{
  return AdamId.init(value:)();
}

{
  return AdamId.init(value:)();
}

UIImageSymbolConfiguration_optional __swiftcall Artwork.configuration(with:)(UIImageSymbolConfiguration_optional with)
{
  v1 = Artwork.configuration(with:)(with.value.super.super.isa, *&with.is_nil);
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

UIImage_optional __swiftcall Wordmark.asset(in:)(UITraitCollection in)
{
  v1 = Wordmark.asset(in:)(in.super.isa);
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

uint64_t LabelPlaceholder.init(_:with:where:)()
{
  return LabelPlaceholder.init(_:with:where:)();
}

{
  return LabelPlaceholder.init(_:with:where:)();
}

{
  return LabelPlaceholder.init(_:with:where:)();
}

{
  return LabelPlaceholder.init(_:with:where:)();
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

uint64_t Preferences.subscript.getter()
{
  return Preferences.subscript.getter();
}

{
  return Preferences.subscript.getter();
}

uint64_t Promise<A>.init(_:)()
{
  return Promise<A>.init(_:)();
}

{
  return Promise<A>.init(_:)();
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t CGRect.withLayoutDirection(_:relativeTo:)()
{
  return CGRect.withLayoutDirection(_:relativeTo:)();
}

{
  return CGRect.withLayoutDirection(_:relativeTo:)();
}

CMTime __swiftcall CMTime.init(seconds:preferredTimescale:)(Swift::Double seconds, Swift::Int32 preferredTimescale)
{
  v2 = CMTime.init(seconds:preferredTimescale:)(*&preferredTimescale, seconds);
  result.epoch = v4;
  result.timescale = v3;
  result.flags = HIDWORD(v3);
  result.value = v2;
  return result;
}

Swift::String __swiftcall NSBundle.preferredLocalization(fromLanguageCodes:)(Swift::OpaquePointer fromLanguageCodes)
{
  v1 = NSBundle.preferredLocalization(fromLanguageCodes:)(fromLanguageCodes._rawValue);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}