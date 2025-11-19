Swift::Int sub_100348934()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_1003489D0()
{
  sub_10077008C();
}

Swift::Int sub_100348A58()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_100348AF0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034C52C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100348B20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100348B78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10077167C();
  }

  return v11 & 1;
}

Swift::Int sub_100348C6C()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_100348D14()
{
  sub_10077008C();
}

Swift::Int sub_100348DA8()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_100348E4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10034C5E0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100348E7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100348EE0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10077167C();
  }

  return v11 & 1;
}

id sub_100348FE4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_1000FE410(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_1003492FC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_1000CCBE8(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_10034A728();
    v5 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!sub_10077158C())
        {
          return;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = sub_10077149C();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_1003498A4(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

uint64_t sub_100349480(uint64_t result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating] = result;
  if (v3 != (result & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [*(result + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100349558()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = sub_10077167C();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_10077149C();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_10034AC9C(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_10034AC9C(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = sub_10077167C();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = sub_10077158C();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = sub_10077149C();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = (v19 - 1);
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount);
    v20 = (v21 - 1);
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_10034AA6C(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void *sub_1003498A4(void *result)
{
  v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || result && v2[2] == result[2])
  {
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_10065FA28(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = sub_10077158C();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v25 = sub_10077149C();

    v26 = v2[2];
    v27 = *(v25 + 16);
    swift_unknownObjectRelease();
    if (v26 != v27)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      result = (v14 - 1);
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    result = (v15 - 1);
    if (!__OFSUB__(v15, 1))
    {
LABEL_25:
      sub_10034AA6C(result);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v13 = sub_10077167C();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v16 = *&v1[v6];
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v17 = *(v16 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v17 = sub_10077149C();

LABEL_33:
  v18 = v2[2];

  v19 = *(v17 + 16);

  if (v18 != v19)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v20 = sub_10077167C();

  if (v20)
  {
LABEL_38:
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      v24 = v2[2];
      if (v24 == v23)
      {
        result = 0;
LABEL_42:
        sub_10034AC9C(result);
        goto LABEL_45;
      }

      result = (v24 + 1);
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

id sub_100349CBC(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = sub_10077158C();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = sub_10077158C();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  result = [v3 setScrollEnabled:?];
  v40 = _swiftEmptyArrayStorage;
  v35 = v11;
  v13 = *&v3[v11];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v14 = 0;
      v15 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
      v33 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex;
      v36 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v18 = *(a1 + 32 + 8 * a2);
        }

        v19 = v18;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v20 = swift_allocObject();
        *(v20 + 16) = v14;
        *(v20 + 24) = a2;
        *(v20 + 32) = v19;

        sub_10077019C();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v37 = v40;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *&v3[v15];
        *&v3[v15] = 0x8000000000000000;
        sub_10024A434(v20, v14, isUniquelyReferenced_nonNull_native);
        *&v3[v15] = v39;
        swift_endAccess();
        [v3 addSubview:*(v20 + 32)];
        v22 = *(v20 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v41);
        [v3 bounds];
        Width = CGRectGetWidth(v42);
        [v3 bounds];
        [v22 setFrame:{0.0, MinY, Width, CGRectGetHeight(v43)}];

        [*(v20 + 32) layoutIfNeeded];
        v25 = sub_10076C03C();
        v38[3] = v25;
        v38[4] = sub_1001D7794();
        v26 = sub_10000DB7C(v38);
        (*(*(v25 - 8) + 104))(v26, v36, v25);
        LOBYTE(v25) = sub_10076C90C();
        sub_10000CD74(v38);
        if ((v25 & 1) != 0 && *&v3[v33] == -1)
        {
          *&v3[v33] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10065FCA4(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v27 = [v5 layoutDirection];

        if (v27 == 1)
        {
          break;
        }

        v28 = *&v3[v35];
        v16 = __OFSUB__(v28, 1);
        v29 = (v28 - 1);
        if (v16)
        {
          goto LABEL_51;
        }

        if (a2 != v29)
        {
          v16 = __OFADD__(a2++, 1);
          if (v16)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v17 == v13)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v17 == v13)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v14;
        if (v17 >= v13)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v16 = __OFSUB__(a2--, 1);
        if (v16)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v30 = *&v3[v35];
        a2 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_47:
    v31 = *&v3[v32];
    *&v3[v32] = v37;
    sub_1003492FC(v31);
  }

  return result;
}

void sub_10034A1E4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = sub_10077167C();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = sub_10077167C();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = sub_10077167C();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_10060FF40(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_100349558();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_100185070(a1 | 0x100, 1.0);

        sub_100349480(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_100185070(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_10034A5F4(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_10077158C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_10034A728()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10034C5B0;
    *(v4 + 24) = v3;
    v7[4] = sub_1000349FC;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1001C5148;
    v7[3] = &unk_100891FA8;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

uint64_t sub_10034A8B8(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_10077149C();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }
}

id sub_10034AA6C(id result)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_1003492FC(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v17];
    v1[v18] = 0;
    return result;
  }

  v4 = result;
  v5 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_10060FF40(v4);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (v4 == v9)
    {
      v4 = 0;
    }

    else
    {
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

id sub_10034AC9C(uint64_t a1)
{
  result = sub_10077167C();
  v4 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = result;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_1005D522C(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers] = v8;
    sub_1003492FC(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v28];
    v1[v29] = 0;
    return result;
  }

  v7 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_10060FF40(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_10077019C();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_10034AF90()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = sub_10077149C();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_1003498A4(v13);
}

unint64_t sub_10034B1AC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers;
  result = *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers);
  if (result >> 62)
  {
    goto LABEL_74;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = result;

  result = sub_1004BBD0C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = result;
        v3 = sub_10077158C();
        result = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = sub_10077149C();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_10034B6EC(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        result = sub_1004BBD0C((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      v4[2] = v15 + 1;
      v16 = &v4[2 * v15];
      v16[4] = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = sub_10077158C();
      v17 = v41;
    }

    else
    {
      v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          result = sub_10077149C();
          v20 = result;
        }

        else
        {
          if (v19 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = v4[2];
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = *&v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = sub_10077167C();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = sub_10077167C();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_10018484C();
          sub_100184B50();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }

  return result;
}

id sub_10034B6EC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = sub_10077167C();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = sub_10077167C();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = sub_10077167C();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_10034BB70(void *a1)
{
  sub_100349480(0);
  v3 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v6 = v4, objc_msgSend(*(v5 + 32), "frame"), v6 == v7))
  {
    *(v1 + v3) = 0;

    sub_10034BCA4(0);
  }

  else
  {
    *(v1 + v3) = 1;

    sub_10034A1E4(1u);
  }
}

void sub_10034BCA4(char a1)
{
  v2 = v1;
  v4 = sub_100766DDC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_10034AA6C(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = sub_10077167C();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = sub_10077167C();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_10034AC9C(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10065FCA4(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = sub_10076C03C();
      v35 = v18;
      v36 = sub_1001D7794();
      v19 = sub_10000DB7C(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = sub_10076C90C();
      sub_10000CD74(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        sub_100766DBC();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_10065E9F4(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = sub_10076C03C();
    v35 = v25;
    v36 = sub_1001D7794();
    v26 = sub_10000DB7C(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = sub_10076C90C();
    sub_10000CD74(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_10034C0FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10034C2B8()
{
  result = qword_100953208;
  if (!qword_100953208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953208);
  }

  return result;
}

uint64_t sub_10034C30C(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = sub_10077167C();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = sub_10077167C();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

uint64_t sub_10034C52C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100883258;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10034C578()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10034C5C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10034C5E0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1008832C0;
  v6._object = a2;
  v4 = sub_10077160C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_10034C62C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_1000FE410(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10034C748()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_100349558();
  }

  sub_10034AF90();
  sub_10034B1AC();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_10076C03C();
    v19 = v10;
    v11 = sub_1001D7794();
    v20 = v11;
    v12 = sub_10000DB7C(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = sub_10076C90C();
    sub_10000CD74(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_10000DB7C(v18);
      v14(v16, v13, v10);
      v17 = sub_10076C90C();
      sub_10000CD74(v18);
      if ((v17 & 1) == 0)
      {
        sub_100660768(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10034C8F8()
{
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_100349558();
    }

    sub_10034AF90();

    sub_10034B1AC();
  }
}

unint64_t sub_10034C9DC()
{
  result = qword_100953218;
  if (!qword_100953218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953218);
  }

  return result;
}

void sub_10034CA30()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for SeparatorSupplementaryView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = sub_10076FF6C();
    sub_1007708FC();
    v5 = sub_10076FF6C();

    [v2 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v4 withReuseIdentifier:v5];
  }
}

void sub_10034CB14(void *a1)
{
  v1 = a1;
  sub_10034CA30();
}

double sub_10034CB5C()
{
  v1 = [v0 traitCollection];
  sub_10076E20C();
  v3 = v2;

  return v3;
}

void sub_10034CBAC(uint64_t a1)
{
  v3 = sub_10000A5D4(&qword_100953840);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10076B21C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007676EC())
  {
    (*(v7 + 104))(v9, enum case for Uber.Style.above(_:), v6);
    v10 = sub_10076B27C();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    sub_10076B29C();
    swift_allocObject();
    swift_retain_n();
    v11 = sub_10076B22C();
    v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
    *&v1[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber] = v11;

    sub_100618758(v12);
  }

  v13 = [v1 collectionView];
  sub_100439274(a1, v13);

  sub_1001C7AC0();
}

double sub_10034CDF4(void *a1)
{
  v1 = a1;
  sub_10034CE50();
  v3 = v2;

  return v3;
}

void sub_10034CE50()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 pageContainerSize];
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007706CC();

  if ((v6 & 1) != 0 && v4 > 672.0)
  {
    sub_1005A5D54(v7);
  }

  else
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, "pageMarginInsets");
  }
}

id sub_10034CF30(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  if (a2 == 0xD000000000000039 && 0x80000001007D7F90 == a3 || (sub_10077167C() & 1) != 0)
  {
    v9 = sub_10076FF6C();
    type metadata accessor for SeparatorSupplementaryView();
    sub_1007708FC();
    v10 = sub_10076FF6C();

    v11.super.isa = sub_10075E02C().super.isa;
    v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:v11.super.isa];
  }

  else
  {
    v13 = sub_10076FF6C();
    v11.super.isa = sub_10075E02C().super.isa;
    v15.receiver = v4;
    v15.super_class = ObjectType;
    v12 = objc_msgSendSuper2(&v15, "collectionView:viewForSupplementaryElementOfKind:atIndexPath:", a1, v13, v11.super.isa);
  }

  return v12;
}

id sub_10034D098(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076FF9C();
  v11 = v10;
  sub_10075E06C();
  v12 = a3;
  v13 = a1;
  v14 = sub_10034CF30(v12, v9, v11);

  (*(v6 + 8))(v8, v5);

  return v14;
}

void sub_10034D1D8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v36[1] = a5;
  v37 = a1;
  ObjectType = swift_getObjectType();
  v10 = sub_100763F9C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v38 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100763FDC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v36[0] = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v36 - v17;
  if (a3 == 0xD000000000000039 && 0x80000001007D7F90 == a4 || (sub_10077167C()) && (type metadata accessor for SeparatorSupplementaryView(), (v19 = swift_dynamicCastClass()) != 0))
  {
    v20 = v19;
    (*(v11 + 104))(v38, enum case for ComponentSeparator.Position.top(_:), v10);
    v37 = a2;
    [v6 pageContainerSize];
    v22 = v21;
    v23 = [v6 traitCollection];
    v24 = sub_1007706CC();

    if ((v24 & 1) != 0 && v22 > 672.0)
    {
      sub_1005A5D54(v25);
    }

    else
    {
      v41.receiver = v6;
      v41.super_class = ObjectType;
      objc_msgSendSuper2(&v41, "pageMarginInsets");
    }

    [v6 pageContainerSize];
    v29 = v28;
    v30 = [v6 traitCollection];
    v31 = sub_1007706CC();

    if ((v31 & 1) != 0 && v29 > 672.0)
    {
      sub_1005A5D54(v32);
    }

    else
    {
      v40.receiver = v6;
      v40.super_class = ObjectType;
      objc_msgSendSuper2(&v40, "pageMarginInsets");
    }

    sub_100763FAC();
    v33 = v36[0];
    (*(v14 + 16))(v36[0], v18, v13);
    v34 = OBJC_IVAR____TtC20ProductPageExtension26SeparatorSupplementaryView_separator;
    swift_beginAccess();
    (*(v14 + 24))(v20 + v34, v33, v13);
    swift_endAccess();
    sub_1006359A8();

    v35 = *(v14 + 8);
    v35(v33, v13);
    v35(v18, v13);
  }

  else
  {
    v26 = sub_10076FF6C();
    isa = sub_10075E02C().super.isa;
    v42.receiver = v6;
    v42.super_class = ObjectType;
    objc_msgSendSuper2(&v42, "collectionView:willDisplaySupplementaryView:forElementKind:atIndexPath:", v37, a2, v26, isa);
  }
}

uint64_t sub_10034D61C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FF9C();
  v13 = v12;
  sub_10075E06C();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_10034D1D8(v14, v15, v11, v13, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t type metadata accessor for VersionHistoryViewController()
{
  result = qword_100953248;
  if (!qword_100953248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034D858(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076F9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100953830);
  swift_allocObject();
  v8 = swift_retain_n();
  v9 = sub_10049303C(v8);

  v10 = sub_1004895EC(a1, v9, a2);
  sub_10034DAFC(&qword_100953838);
  v11 = v10;

  v12 = v11;
  sub_1007676FC();
  sub_10076770C();
  v14 = v13;

  if (v14)
  {
    v15 = sub_10076FF6C();
  }

  else
  {
    v15 = 0;
  }

  [v12 setTitle:v15];

  v12[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
  v16 = *&v12[OBJC_IVAR____TtC20ProductPageExtension30UberedCollectionViewController_uber];
  v17 = [v12 navigationItem];
  v18 = v17;
  if (v16)
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  [v17 setLargeTitleDisplayMode:v19];

  v20 = [v12 view];
  if (v20)
  {
    memset(v21, 0, sizeof(v21));
    sub_10076F96C();
    sub_1000258C0(v21);
    sub_100770B9C();

    (*(v5 + 8))(v7, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10034DAFC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VersionHistoryViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10034DB40(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_objectGraph] = a3;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_presenter] = a1;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_artworkLoader] = v28;
  if (a2)
  {
    v9 = ASKDeviceTypeGetCurrent();
    v10 = sub_10076FF9C();
    v12 = v11;
    if (v10 == sub_10076FF9C() && v12 == v13)
    {

      v16 = 1;
    }

    else
    {
      v15 = sub_10077167C();

      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = objc_allocWithZone(type metadata accessor for ArcadeSubscribePageView());
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView] = sub_1001FFAC0(v16);
  sub_10076615C();
  sub_10076F63C();
  v18 = v28;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator] = v28;
  if (v18)
  {

    sub_10076614C();
  }

  v19 = &v4[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver];
  *(v19 + 3) = sub_1007676AC();
  *(v19 + 4) = &protocol witness table for BasePresenter;
  *v19 = a1;
  v27.receiver = v4;
  v27.super_class = ObjectType;

  v20 = objc_msgSendSuper2(&v27, "initWithNibName:bundle:", 0, 0);
  sub_1003520A0(&qword_1009538E8, v21, type metadata accessor for ArcadeSubscribeViewController);
  v22 = v20;
  sub_10076768C();
  v23 = [v22 view];
  if (v23)
  {
    v24 = v23;
    sub_100016F40(0, &qword_100942F10);
    v25 = sub_100770D2C();
    [v24 setBackgroundColor:v25];

    v26 = [v22 view];
    if (v26)
    {
      [v26 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView]];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_10034E0B0()
{
  v1 = [v0 isViewLoaded];
  v2 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v3)
    {
      v4 = v3;
      [v0 addChildViewController:v4];
      result = [v4 view];
      if (result)
      {
        v6 = result;
        result = [v0 view];
        if (result)
        {
          v7 = result;
          [result bounds];
          v9 = v8;
          v11 = v10;
          v13 = v12;
          v15 = v14;

          [v6 setFrame:{v9, v11, v13, v15}];
          v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
          if (!v16)
          {
            result = [v0 view];
            if (result)
            {
              v18 = result;
              result = [v4 view];
              if (result)
              {
                v19 = result;
                [v18 addSubview:result];
                goto LABEL_12;
              }

LABEL_21:
              __break(1u);
              return result;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

          v17 = v16;
          result = [v0 view];
          if (result)
          {
            v18 = result;
            result = [v4 view];
            if (result)
            {
              v19 = result;
              [v18 insertSubview:result belowSubview:v17];

LABEL_12:
              [v4 didMoveToParentViewController:v0];

              v2 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
              goto LABEL_13;
            }

            goto LABEL_19;
          }

LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_13:
  v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView];
  v21 = *&v0[v2] != 0;

  return [v20 setHidden:v21];
}

void sub_10034E2DC()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v1)
  {
    v2 = v1;
    v15._object = 0x80000001007E0730;
    v15._countAndFlagsBits = 0xD00000000000001CLL;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    sub_1007622EC(v15, v16);
    v3 = sub_10076FF6C();

    [v2 setTitle:v3 forState:0];

    [v2 addTarget:v0 action:"dismissPressed:" forControlEvents:64];
    v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 view];
      if (!v6)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v7 = v6;
      v8 = [v5 view];
      if (!v8)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v9 = v8;
      [v7 insertSubview:v2 aboveSubview:v8];

      v10 = v2;
      v2 = v9;
    }

    else
    {
      v11 = [v0 view];
      if (!v11)
      {
LABEL_16:
        __break(1u);
        return;
      }

      v10 = v11;
      [v11 addSubview:v2];
    }
  }

  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  [v12 setNeedsLayout];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidLoad()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_10076769C();
  [v1 setModalInPresentation:1];
  v8 = [v1 navigationItem];
  [v8 setLargeTitleDisplayMode:2];

  [v1 setTitle:0];
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillAppear:", a1, v7);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_10075F2BC();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationItem];
  v11 = [v10 leftBarButtonItems];

  if (v11)
  {
    sub_100016F40(0, &qword_100958FF0);
    v12 = sub_1007701BC();

    if (v12 >> 62)
    {
      v13 = sub_10077158C();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v13 != 0;
  }

  else
  {
    v14 = 0;
  }

  v15 = [v2 navigationItem];
  v16 = [v15 rightBarButtonItems];

  if (v16)
  {
    sub_100016F40(0, &qword_100958FF0);
    v17 = sub_1007701BC();

    v18 = v17 >> 62 ? sub_10077158C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
      v14 = 1;
    }
  }

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    [v19 setNavigationBarHidden:!v14 animated:0];
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10075F2AC();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v14 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1, v11);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_10075F2BC();
  (*(v10 + 8))(v13, v9);
  if (sub_100760C6C())
  {
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v6 + 8))(v8, v5);
    sub_10076367C();
  }

  if (sub_100760C5C())
  {
    sub_10076FAEC();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10075DD7C();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076FAAC();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100946A10);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_10075F2AC();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = &v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v2;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "viewWillDisappear:", a1, v16);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v15 + 104))(v18, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v14);
  sub_10075F2BC();
  (*(v15 + 8))(v18, v14);
  if (sub_100760C6C())
  {
    sub_10076FA9C();
    sub_10075DD6C();
    sub_10075DD4C();
    (*(v20 + 8))(v7, v21);
    sub_10076369C();
    v19 = sub_1007636AC();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_10076368C();
  }

  if (sub_100760C5C())
  {
    sub_10076FA9C();
    sub_10076FAFC();

    (*(v22 + 8))(v10, v23);
  }

  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_10076614C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10075F2AC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidDisappear:", a1, v6);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v5 + 104))(v8, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v4);
  sub_10075F2BC();
  (*(v5 + 8))(v8, v4);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewDidBecomeFullyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewDidBecomeFullyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100760CAC();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

Swift::Void __swiftcall ArcadeSubscribeViewController.as_viewWillBecomePartiallyVisible()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075F2AC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000CF78(&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  sub_10076FA9C();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_10075F2BC();
  (*(v4 + 8))(v7, v3);
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator])
  {
    sub_10076614C();
  }

  sub_100760BDC();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F6C();

  sub_100761F8C();
  sub_100761F0C();
}

uint64_t sub_10034F7DC(SEL *a1, unsigned int *a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10075F2AC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, *a1, v8);
  sub_10000CF78(&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v7 + 104))(v10, *a2, v6);
  sub_10075F2BC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10034F92C(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_10075F2AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v15, v12);
  sub_10000CF78(&v13[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&v13[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v9 + 104))(v11, *a4, v8);
  sub_10075F2BC();

  return (*(v9 + 8))(v11, v8);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.viewWillLayoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66.receiver = v1;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "viewWillLayoutSubviews", v5);
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_22;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController];
  if (v18)
  {
    v19 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
    v20 = &selRef_initWithTabBarSystemItem_tag_;
    if (v19)
    {
      v21 = v18;
      v61 = v19;
      v22 = [v1 view];
      if (!v22)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v23 = v22;
      [v22 safeAreaInsets];

      v59 = v17;
      v60 = v15;
      sub_100770A3C();
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView];
      v58 = v32[OBJC_IVAR____TtC20ProductPageExtension23ArcadeSubscribePageView_style];
      v33 = [v32 traitCollection];
      v34 = sub_1007706EC();

      if (v34)
      {
        v35 = [v32 window];
        if (v35)
        {
          v36 = v35;
          [v35 frame];
          Width = CGRectGetWidth(v67);
          [v32 bounds];
          v38 = CGRectGetWidth(v68);

          v39 = v38 < Width;
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 1;
      }

      v46 = [v1 view];
      if (!v46)
      {
        goto LABEL_24;
      }

      v47 = v46;
      [v46 bounds];
      v49 = v48;

      v50 = [v1 traitCollection];
      v51 = sub_10077071C();

      v56 = v13;
      v57 = v11;
      if (v51)
      {
        sub_1001FE6B0(v39, v58, v62);
        sub_10000A570(&v64, v65);
        sub_100350058(v62);
      }

      else
      {
        sub_1001FF5C8(v39, v58, v62, v49);
        sub_10000A570(&v63, v65);
        sub_100350004(v62);
      }

      sub_10003F19C(v65, v62);
      sub_10000CF78(v62, v62[3]);
      sub_1000FF02C();
      sub_10076D40C();
      (*(v4 + 8))(v7, v3);
      sub_10000CD74(v62);
      v52 = v61;
      [v61 measurementsWithFitting:v1 in:{v29, v31}];
      v69.origin.x = v25;
      v69.origin.y = v27;
      v69.size.width = v29;
      v69.size.height = v31;
      CGRectGetMidX(v69);
      v70.origin.x = v25;
      v70.origin.y = v27;
      v70.size.width = v29;
      v70.size.height = v31;
      CGRectGetMaxY(v70);
      v53 = v52;
      sub_100770A4C();
      v20 = &selRef_initWithTabBarSystemItem_tag_;
      [v53 setFrame:?];

      v13 = v56;
      v11 = v57;
      v17 = v59;
      v15 = v60;
    }

    else
    {
      v45 = v18;
    }

    v54 = [v18 view];
    if (v54)
    {
      v55 = v54;
      [v54 v20[217]];

      return;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v40 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView];
  v41 = [v1 view];
  if (v41)
  {
    v42 = v41;
    [v41 bounds];

    v43 = [v1 view];
    if (v43)
    {
      v44 = v43;
      [v43 safeAreaInsets];

      sub_100770A3C();
      [v40 setFrame:?];
      return;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", isa);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

uint64_t ArcadeSubscribeViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1003502F0(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_10075F2AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CF78(&a1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  sub_10075F2BC();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10035041C()
{
  v0 = sub_10076F3BC();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10076F68C();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076FA1C();
  v16 = *(v6 - 8);
  v17 = v6;
  __chkstk_darwin(v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076305C();
  v13[2] = sub_10076303C();
  sub_100760C7C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F3C();

  sub_100761F8C();
  sub_100761F9C();

  v21 = 0;
  aBlock = 0u;
  v20 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_100761F8C();
  sub_100761F2C();

  sub_10076FA0C();
  swift_unknownObjectRelease();

  sub_10000CFBC(v23, &qword_1009538F0);
  sub_10000CFBC(&aBlock, &qword_1009538F8);
  v9 = v13[1];
  sub_10076F64C();
  sub_10076FC1C();
  sub_10076084C();
  sub_10076F67C();

  (*(v14 + 8))(v2, v15);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = sub_1003520E8;
  v22 = v10;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_10009AEDC;
  *(&v20 + 1) = &unk_100892208;
  v11 = _Block_copy(&aBlock);

  [v9 dismissViewControllerAnimated:1 completion:v11];
  _Block_release(v11);

  (*(v18 + 8))(v5, v3);
  return (*(v16 + 8))(v8, v17);
}

void sub_1003508DC()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076F0CC();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F0EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  if (!*(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton))
  {
    sub_100016F40(0, &qword_1009471F0);
    v21 = v3;
    v19 = sub_10077068C();
    sub_10076F0DC();
    sub_10076F15C();
    v20 = *(v10 + 8);
    v20(v12, v9);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100352104;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100892230;
    v17 = _Block_copy(aBlock);

    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003520A0(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    v18 = v19;
    sub_10077064C();
    _Block_release(v17);

    (*(v21 + 8))(v5, v2);
    (*(v22 + 8))(v8, v6);
    v20(v15, v9);
  }
}

void sub_100350CB4()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {

      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        sub_10076313C();
        if (qword_100940E58 != -1)
        {
          swift_once();
        }

        v10 = sub_10000A61C(v0, qword_1009A1900);
        (*(v1 + 16))(v3, v10, v0);
        v11 = sub_10076312C();
        v12 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
        v13 = *&v9[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *&v9[v12];
        }

        else
        {
          v14 = 0;
        }

        *&v9[v12] = v11;
        v15 = v11;

        sub_10034E2DC();
      }
    }
  }
}

uint64_t sub_100350E94(uint64_t a1)
{
  v3 = sub_10076F0EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_10076F11C();
  }

  *(v1 + v10) = a1;
  swift_retain_n();

  if (a1)
  {
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_100016F40(0, &qword_1009471F0);
    v12 = sub_10077068C();
    sub_10076F0DC();
    sub_10076137C();
    sub_10076F15C();
    v13 = *(v4 + 8);
    v13(v6, v3);
    sub_10077065C();

    return (v13)(v9, v3);
  }

  return result;
}

void ArcadeSubscribeViewController.apply(page:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_fallbackDismissButton];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = 0;

  sub_10034E2DC();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v8 = [v2 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  [v8 bounds];

  v10 = [v2 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10;
  [v10 safeAreaInsets];

  sub_100770A3C();
  sub_100200738(v12, v13, a1, sub_100351ED0, v7, *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_artworkLoader], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_impressionsCalculator], *&v2[OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_objectGraph]);

  v14 = [v2 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 setNeedsLayout];
}

uint64_t sub_100351298(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10000CD08(a1, v4);
    sub_10035041C();

    return sub_10000CFBC(v4, &unk_1009434C0);
  }

  return result;
}

Swift::Void __swiftcall ArcadeSubscribeViewController.toggleDismissButtonVisibility(shouldHide:)(Swift::Bool shouldHide)
{
  v3 = sub_10076F08C();
  __chkstk_darwin(v3);
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delayedDismissalReappearanceItem))
  {

    sub_10076F11C();
  }

  *(v1 + v4) = 0;

  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_pageView);
  if (shouldHide)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  v18 = sub_100351ED8;
  v19 = v9;
  aBlock = _NSConcreteStackBlock;
  v15 = 1107296256;
  v16 = sub_10009AEDC;
  v17 = &unk_1008920D8;
  v10 = _Block_copy(&aBlock);

  [v7 animateWithDuration:4 delay:v10 options:0 animations:0.15 completion:0.0];
  _Block_release(v10);
  if (shouldHide)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v5;
    v18 = sub_100351F34;
    v19 = v11;
    aBlock = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10009AEDC;
    v17 = &unk_100892128;
    _Block_copy(&aBlock);
    sub_1003520A0(&qword_100945160, 255, &type metadata accessor for DispatchWorkItemFlags);
    v12 = v5;
    sub_10000A5D4(&unk_10094E1C0);
    sub_1000852B8();
    sub_1007712CC();
    sub_10076F12C();
    swift_allocObject();
    v13 = sub_10076F10C();

    sub_100350E94(v13);
  }
}

void sub_100351630()
{
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = 0x3FF0000000000000;
  v4[4] = sub_100352164;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10009AEDC;
  v4[3] = &unk_100892280;
  v3 = _Block_copy(v4);

  [v0 animateWithDuration:4 delay:v3 options:0 animations:0.15 completion:0.0];
  _Block_release(v3);
}

Swift::Void __swiftcall ArcadeSubscribeViewController.dismiss()()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
  }

  else
  {
    v2 = [v0 navigationController];
    v3 = [v2 visibleViewController];

    if (v3)
    {
      sub_100016F40(0, &qword_1009453B0);
      v4 = v0;
      v5 = sub_100770EEC();

      if (v5)
      {
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8[4] = sub_10035215C;
        v8[5] = v6;
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 1107296256;
        v8[2] = sub_10009AEDC;
        v8[3] = &unk_100892150;
        v7 = _Block_copy(v8);

        [v4 dismissViewControllerAnimated:1 completion:v7];
        _Block_release(v7);
      }
    }
  }
}

void sub_1003518EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);

      ObjectType = swift_getObjectType();
      (*(v3 + 8))(ObjectType, v3);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.showLoading()()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10076857C();

  v7 = *(v1 + v5);
  *(v1 + v5) = v4;
  v8 = v4;

  sub_10034E0B0();
  if ((sub_10076767C() & 1) == 0)
  {
    sub_10076148C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_10076137C();
    sub_1003508DC();
  }
}

Swift::Void __swiftcall ArcadeSubscribeViewController.hideLoading()()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10076857C();

  v3 = *(v0 + v1);
  *(v0 + v1) = 0;

  sub_10034E0B0();
}

void ArcadeSubscribeViewController.show(updateError:)()
{
  v1 = v0;
  sub_10076DF3C();
  sub_1003520A0(&qword_100953890, 255, &type metadata accessor for ArcadeSubscribePresenter);
  swift_errorRetain();

  v2 = sub_10076DEFC();
  v3 = OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_overlayViewController);
  sub_10076857C();

  v5 = *(v1 + v3);
  *(v1 + v3) = v2;
  v6 = v2;

  sub_10034E0B0();
}

uint64_t ArcadeSubscribeViewController.perform(action:sender:)(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension29ArcadeSubscribeViewController_objectGraph);
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

id ArcadeSubscribeViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_10076FF6C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

uint64_t sub_100351E98()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100351EE4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100351EFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100351F40()
{
  result = qword_100953898;
  if (!qword_100953898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953898);
  }

  return result;
}

uint64_t sub_1003520A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10035210C()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_10035217C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView;
  type metadata accessor for ProductTapToRateView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView] = v10;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  v11 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView;
  v14 = *&v11[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView];
  sub_100016F40(0, &qword_100942F10);
  v15 = v14;
  v16 = sub_100770CDC();
  [v15 setBackgroundColor:v16];

  v17 = [v11 contentView];
  [v17 addSubview:*&v11[v13]];

  v18 = [v11 contentView];
  [v18 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView]];

  return v11;
}

id sub_100352400()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0);
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  if (qword_100940940 != -1)
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
  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_separatorView];
  sub_100770A4C();
  [v11 setFrame:?];
  if (([v11 isHidden] & 1) == 0)
  {
    sub_100770A3C();
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  return [*&v1[OBJC_IVAR____TtC20ProductPageExtension34ProductTapToRateCollectionViewCell_productTapToRateView] setFrame:{v4, v6, v8, v10}];
}

id sub_1003526B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductTapToRateCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100352754(void *a1)
{
  v3 = [a1 preferredContentSizeCategory];
  v4 = sub_10077084C();

  if (v4)
  {
    v5 = [v1 _localOverrideTraitCollection];
    if (!v5)
    {
      v9 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      [v1 _setLocalOverrideTraitCollection:v9];

      return 1;
    }
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = sub_10077086C();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  [v1 _setLocalOverrideTraitCollection:0];
  return 1;
}

uint64_t sub_100352870()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D67C();
  v17 = v4;
  v18 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v16);
  sub_10076D66C();
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0E38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v14 = sub_10076D9AC();
  v15 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v13);
  v11 = v0;
  v12 = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(&v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v11 = v4;
  v12 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v10);
  sub_10076D66C();
  qword_10099E8E8 = 0;
  unk_10099E8F0 = 0;
  sub_10003F19C(&v16, &unk_10099E8F8);
  sub_10003F19C(&v13, &unk_10099E920);
  qword_10099E950 = 0;
  unk_10099E958 = 0;
  qword_10099E948 = 2;
  return sub_10003F19C(&v10, &unk_10099E960);
}

uint64_t sub_100352AB0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763ADC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v4, qword_10099DDA0);
  (*(v5 + 16))(v7, v8, v4);
  sub_1007639AC();
  v10 = v9;
  v12 = v11;
  (*(v5 + 8))(v7, v4);
  v25 = &type metadata for Double;
  v26 = &protocol witness table for Double;
  *&v24 = 0x4024000000000000;
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A0E38);
  (*(*(v13 - 8) + 16))(v3, v14, v13);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v22 = sub_10076D9AC();
  v23 = &protocol witness table for StaticDimension;
  sub_10000DB7C(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(&v18);
  (*(v1 + 16))(v15, v3, v0);
  sub_10076D9BC();
  (*(v1 + 8))(v3, v0);
  v19 = sub_10076D67C();
  v20 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(&v18);
  sub_10076D66C();
  qword_10099E988 = v10;
  unk_10099E990 = v12;
  sub_10003F19C(&v24, &unk_10099E998);
  sub_10003F19C(&v21, &unk_10099E9C0);
  qword_10099E9F0 = 0;
  unk_10099E9F8 = 0;
  qword_10099E9E8 = 3;
  return sub_10003F19C(&v18, &unk_10099EA00);
}

char *sub_100352DF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
  sub_10075FD2C();
  *&v4[v15] = sub_10075FB3C();
  v46 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100940AB0 != -1)
  {
    swift_once();
  }

  v16 = sub_10076D3DC();
  v17 = sub_10000A61C(v16, qword_1009A0E20);
  v18 = *(v16 - 8);
  v45 = *(v18 + 16);
  v45(v14, v17, v16);
  v44 = *(v18 + 56);
  v44(v14, 0, 1, v16);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v43 = *(v10 + 104);
  v43(v48, enum case for DirectionalTextAlignment.none(_:), v9);
  v20 = sub_1007626BC();
  v42 = v9;
  v21 = v20;
  v22 = objc_allocWithZone(v20);
  *&v4[v46] = sub_1007626AC();
  v23 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v16, qword_1009A0E38);
  v45(v14, v24, v16);
  v44(v14, 0, 1, v16);
  v43(v48, v19, v42);
  v25 = objc_allocWithZone(v21);
  *&v4[v23] = sub_1007626AC();
  v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_allowsGroupBlending] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews] = 0;
  type metadata accessor for SmallLockupView();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v27 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
  swift_unknownObjectWeakAssign();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v26;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView]];
  [*&v26[v27] setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v26[v27]];
  v32 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  v33 = *&v31[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondaryLabelColor];
  [v35 setTextColor:v36];

  [*&v31[v32] setHidden:1];
  [*&v31[v32] setAlpha:0.0];
  [v31 addSubview:*&v31[v32]];
  v37 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  v38 = *&v31[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v39 = [v34 labelColor];
  [v38 setTextColor:v39];

  [*&v31[v37] setHidden:1];
  [*&v31[v37] setAlpha:0.0];
  [v31 addSubview:*&v31[v37]];

  return v31;
}

uint64_t sub_100353408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_100945560);
  __chkstk_darwin(v4 - 8);
  v6 = &v46 - v5;
  v56 = sub_100768FEC();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100946750);
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v50 = &v46 - v10;
  v11 = sub_10076443C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  v19 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v20 = sub_100763ADC();
  v21 = *(*(v20 - 8) + 16);
  v53 = a1;
  v21(a1, v18 + v19, v20);
  v51 = v2;
  v22 = [v2 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v23 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v23 = qword_100944CA0;
  }

  v24 = sub_10000A61C(v11, v23);
  (*(v12 + 16))(v14, v24, v11);

  v25 = *(v12 + 32);
  v49 = v17;
  v25(v17, v14, v11);
  v48 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton;
  v26 = (*(v18 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_presenter);
  swift_beginAccess();
  v27 = v26[3];
  if (v27)
  {
    v28 = sub_10000CF78(v26, v26[3]);
    v47 = v6;
    v29 = *(v27 - 8);
    v30 = __chkstk_darwin(v28);
    v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v29 + 16))(v32, v30);
    sub_10076584C();
    (*(v29 + 8))(v32, v27);
    v6 = v47;
  }

  v33 = v52;
  v34 = *(v52 + 104);
  v35 = v56;
  v34(v8, enum case for OfferButtonSubtitlePosition.below(_:), v56);
  v34(v6, enum case for OfferButtonSubtitlePosition.right(_:), v35);
  (*(v33 + 56))(v6, 0, 1, v35);
  sub_10033350C();
  v36 = v50;
  sub_10076759C();
  v37 = v49;
  sub_10076440C();

  (*(v54 + 8))(v36, v55);
  (*(v12 + 8))(v37, v11);
  v38 = *(v18 + v48);
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v39 = v38 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v38 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v40 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v38 + v40, v57);
    sub_10000CF78(v57, v57[3]);
    sub_100767A2C();
    v42 = v41;
    v44 = v43;
    sub_10000CD74(v57);
    *v39 = v42;
    *(v39 + 8) = v44;
    *(v39 + 16) = 0;
  }

  return sub_100763A5C();
}

uint64_t sub_100353BC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763ADC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50.receiver = v1;
  v50.super_class = ObjectType;
  v34[1] = ObjectType;
  objc_msgSendSuper2(&v50, "layoutSubviews", v8);
  sub_100353408(v10);
  v11 = [v1 traitCollection];
  v12 = sub_10077071C();

  v35 = v5;
  if ((v12 & 1) == 0)
  {
    if (qword_10093FF78 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  if (qword_10093FF80 != -1)
  {
LABEL_9:
    v13 = swift_once();
  }

LABEL_5:
  __chkstk_darwin(v13);
  v34[-2] = v10;
  sub_100354C70();
  sub_10076C13C();
  v39[6] = v45;
  v39[7] = v46;
  v39[8] = v47;
  v39[9] = v48;
  v39[2] = v41;
  v39[3] = v42;
  v39[4] = v43;
  v39[5] = v44;
  v39[0] = v40[0];
  v39[1] = v40[1];
  (*(v7 + 8))(v10, v6);
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView];
  v14 = v38;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView];
  *&v43 = type metadata accessor for SmallLockupView();
  *(&v43 + 1) = &protocol witness table for UIView;
  *(&v41 + 1) = v15;
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v17 = sub_1007626BC();
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  *(&v45 + 1) = v17;
  *&v46 = &protocol witness table for UILabel;
  *&v44 = v16;
  *&v48 = v17;
  *(&v48 + 1) = &protocol witness table for UILabel;
  *(&v46 + 1) = v18;
  sub_1001A9FF0(v39, &v49);
  sub_10075FD2C();
  v19 = v14;
  v20 = v15;
  v21 = v16;
  v22 = v18;
  sub_10076D28C();
  sub_1001AA028(v39);

  sub_10076422C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = [v1 traitCollection];
  LOBYTE(v16) = sub_10077071C();

  v32 = v35;
  if (v16)
  {
    sub_1001AA3A0(v35, v24, v26, v28, v30);
  }

  else
  {
    sub_1001AA8E4(v35, v24, v26, v28, v30);
  }

  (*(v36 + 8))(v32, v37);
  [v20 setNeedsLayout];
  return sub_100354CC4(v40);
}

uint64_t sub_100354098()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews);
  }

  else
  {
    sub_10000A5D4(&unk_100952248);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100785C70;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
    v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel);
    *(v2 + 32) = v4;
    v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    *(v2 + 40) = v5;
    v6 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
    *(v2 + 48) = v6;
    v7 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    *(v2 + 56) = v7;
    v8 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
    *(v2 + 64) = v8;
    *(v0 + v1) = v2;
    v9 = v7;
    v10 = v8;

    v11 = v4;
    v12 = v5;
    v13 = v6;
  }

  return v2;
}

uint64_t sub_1003541B0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews;
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews);
  }

  else
  {
    sub_10000A5D4(&unk_100942870);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_100785D70;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
    *(v2 + 32) = v3;
    *(v2 + 40) = v4;
    *(v0 + v1) = v2;
    v5 = v3;
    v6 = v4;
  }

  return v2;
}

void sub_100354258(char a1, char a2)
{
  if (a1)
  {
    if (([*(v2 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v4 = sub_100354098();
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v7 = *(v4 + 16);
    while (v7 != v5)
    {
      if (v5 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v8 = *(v4 + 8 * v5++ + 32);
      if (v8)
      {
        v9 = v8;
        sub_10077019C();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        v2 = &v34;
        sub_10077025C();
        v6 = v34;
      }
    }

    v2 = sub_1003541B0();
    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (([*(*(v2 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) isHidden] & 1) == 0)
    {
      return;
    }

    v6 = sub_1003541B0();
    v10 = sub_100354098();
    v11 = 0;
    v2 = _swiftEmptyArrayStorage;
    v34 = _swiftEmptyArrayStorage;
    v12 = *(v10 + 16);
    while (v12 != v11)
    {
      if (v11 >= *(v10 + 16))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v13 = *(v10 + 8 * v11++ + 32);
      if (v13)
      {
        v14 = v13;
        sub_10077019C();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
        v2 = v34;
      }
    }

    if ((a2 & 1) == 0)
    {
LABEL_19:
      if (v6 >> 62)
      {
        goto LABEL_59;
      }

      v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_21;
    }
  }

  if (v2 >> 62)
  {
    v20 = sub_10077158C();
    if (v20)
    {
      goto LABEL_33;
    }

LABEL_61:
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    *(v30 + 16) = v6;
    *(v30 + 24) = v2;
    v38 = sub_10029F3B8;
    v39 = v30;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_10009AEDC;
    v37 = &unk_100892300;
    v31 = _Block_copy(&v34);

    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    v38 = sub_10029F410;
    v39 = v32;
    v34 = _NSConcreteStackBlock;
    v35 = 1107296256;
    v36 = sub_1000513F0;
    v37 = &unk_100892350;
    v33 = _Block_copy(&v34);

    [v29 animateWithDuration:4 delay:v31 options:v33 animations:0.33 completion:0.0];
    _Block_release(v33);
    _Block_release(v31);
    return;
  }

  v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v20)
  {
    goto LABEL_61;
  }

LABEL_33:
  v21 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v22 = sub_10077149C();
    }

    else
    {
      if (v21 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      v22 = *(v2 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    [v22 setHidden:0];

    ++v21;
    if (v24 == v20)
    {
      goto LABEL_61;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v15 = sub_10077158C();
LABEL_21:
    if (v15)
    {
      v16 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v17 = sub_10077149C();
        }

        else
        {
          if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v17 = *(v6 + 8 * v16 + 32);
        }

        v18 = v17;
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_53;
        }

        [v17 setAlpha:0.0];
        [v18 setHidden:1];

        ++v16;
      }

      while (v19 != v15);
    }

    if (v2 >> 62)
    {
      break;
    }

    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_64;
    }

LABEL_43:
    v25 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v26 = sub_10077149C();
      }

      else
      {
        if (v25 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v26 = *(v2 + 8 * v25 + 32);
      }

      v27 = v26;
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      [v26 setAlpha:1.0];
      [v27 setHidden:0];

      ++v25;
      if (v28 == v6)
      {
        goto LABEL_64;
      }
    }
  }

  v6 = sub_10077158C();
  if (v6)
  {
    goto LABEL_43;
  }

LABEL_64:
}

uint64_t sub_1003547FC(void *a1)
{
  sub_100763A8C();
  sub_10000CD74((a1 + 15));
  sub_10003F19C(&v6, (a1 + 15));
  v2 = sub_100763A4C();
  if ((v4 & 1) == 0)
  {
    a1[13] = v2;
    a1[14] = v3;
  }

  result = sub_100763A0C();
  a1[12] = result;
  return result;
}

uint64_t sub_100354858(void *a1)
{
  sub_1007639AC();
  *a1 = v2;
  a1[1] = v3;
  sub_1007639EC();
  v10 = &type metadata for CGFloat;
  v11 = &protocol witness table for CGFloat;
  *&v9 = v4;
  sub_10000CD74((a1 + 2));
  sub_10003F19C(&v9, (a1 + 2));
  sub_100763A8C();
  sub_10000CD74((a1 + 15));
  sub_10003F19C(&v9, (a1 + 15));
  v5 = sub_100763A4C();
  if ((v7 & 1) == 0)
  {
    a1[13] = v5;
    a1[14] = v6;
  }

  result = sub_100763A0C();
  a1[12] = result;
  return result;
}

uint64_t sub_1003549F4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id sub_100354AB0()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel];
  v2 = sub_10076FF6C();
  [v1 setText:v2];

  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel];
  v4 = sub_10076FF6C();
  [v3 setText:v4];

  return [v0 setNeedsLayout];
}

uint64_t sub_100354BD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100354C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100354C30()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100354C70()
{
  result = qword_1009539A0;
  if (!qword_1009539A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009539A0);
  }

  return result;
}

void sub_100354D20()
{
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView;
  sub_10075FD2C();
  *(v0 + v8) = sub_10075FB3C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel;
  if (qword_100940AB0 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  v10 = sub_10000A61C(v9, qword_1009A0E20);
  v11 = *(v9 - 8);
  v21 = *(v11 + 16);
  v21(v7, v10, v9);
  v20 = *(v11 + 56);
  v20(v7, 0, 1, v9);
  v12 = enum case for DirectionalTextAlignment.none(_:);
  v13 = v2 + 104;
  v14 = *(v2 + 104);
  v23 = v13;
  v24 = v1;
  v14(v4, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_1007626BC();
  v16 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_1007626AC();
  v22 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkSubtitleLabel;
  if (qword_100940AB8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v9, qword_1009A0E38);
  v21(v7, v17, v9);
  v20(v7, 0, 1, v9);
  v14(v4, v12, v24);
  v18 = objc_allocWithZone(v15);
  *(v0 + v22) = sub_1007626AC();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_allowsGroupBlending) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___lockupViews) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView____lazy_storage___crossLinkViews) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1003550BC(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = sub_1007601DC();

  if (a1 < 0)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    result = sub_10077158C();
    if (result > a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result <= a1)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_10077149C();
    goto LABEL_8;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
    v5 = *(v3 + 8 * a1 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void sub_100355194(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = a1;
      if ((sub_10076BD4C() & 1) != 0 && (v7 = [v6 CGImage]) != 0)
      {
        v8 = v7;
        [v6 scale];
        v10 = [objc_allocWithZone(UIImage) initWithCGImage:v8 scale:2 orientation:v9];
      }

      else
      {
        v10 = v6;
      }

      v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      v12 = v10;
      v13 = v11;
      v15.is_nil = (a2 & 1) == 0;
      v15.value.super.isa = v10;
      sub_10075FCEC(v15, v14);

      v5 = v12;
    }
  }
}

void sub_1003552CC(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v5 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  sub_10075FCAC();

  if (*(v2 + 24))
  {
    v6 = *(a1 + v4);
    sub_10075FD2C();
    sub_100358CAC(&qword_100941820, &type metadata accessor for ArtworkView);

    v7 = v6;
    sub_100760BFC();
  }
}

uint64_t sub_1003553C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100355438()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_1007601DC();

  if (v1 >> 62)
  {
    v2 = sub_10077158C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

uint64_t sub_1003554F0(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_100355584@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.screenshots(_:);
  v3 = sub_10076517C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1003555F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1003550BC(a1);
  *a2 = result;
  return result;
}

id sub_100355620()
{
  type metadata accessor for BorderedScreenshotView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_10035566C()
{
  sub_10000A5D4(&unk_100942870);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100785D70;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.768627451 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.129411765 blue:0.129411765 alpha:1.0];
  *(v0 + 40) = result;
  qword_1009539A8 = v0;
  return result;
}

uint64_t sub_100355774@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_10015E5E0(a2, v4);
}

char *sub_1003557D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11 + 16;
  v13 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v14 = type metadata accessor for GradientView();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView] = 0;
  v16 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *&v4[v18] = [objc_allocWithZone(v14) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v19 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_isMotionEnabled] = 1;
  v20 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v68.receiver = v4;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v21 setClipsToBounds:1];
  [v21 _setContinuousCornerRadius:20.0];
  v22 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v23 = qword_10093FF88;
  v24 = *&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  if (v23 != -1)
  {
    swift_once();
  }

  *&v24[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = qword_1009539A8;

  sub_1001C05B8();

  [v21 addSubview:*&v21[v22]];
  v25 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] setClipsToBounds:1];
  v26 = [*&v21[v25] layer];
  v27 = sub_10076FF6C();
  [v26 setCompositingFilter:v27];

  [*&v21[v25] setAlpha:0.75];
  [v21 addSubview:*&v21[v25]];
  v28 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer] addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView]];
  [*&v21[v28] addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView]];
  v29 = [*&v21[v28] layer];
  v30 = sub_10076FF6C();
  [v29 setCompositingFilter:v30];

  [v21 addSubview:*&v21[v28]];
  v31 = sub_100356124();
  [v21 addSubview:v31];

  v32 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v33 = *(ObjectType + 168);
  v34 = *&v21[v32];
  v33(v67);
  v35 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_10015E684(v67, v34 + v35);
  swift_endAccess();

  v36 = *(ObjectType + 176);
  v37 = *&v21[v32];
  v36(v67);
  v38 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_10015E684(v67, v37 + v38);
  swift_endAccess();

  v39 = qword_10093F8F0;
  v40 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10076BCFC();
  v42 = sub_10000A61C(v41, qword_10099D570);
  v43 = *(v41 - 8);
  (*(v43 + 16))(v12, v42, v41);
  (*(v43 + 56))(v12, 0, 1, v41);
  sub_10075FCDC();

  v44 = *&v21[v32];
  v45 = objc_opt_self();
  v46 = v44;
  sub_1003EB7CC([v45 whiteColor]);

  v47 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v48 = [v45 whiteColor];
  [v47 setTextColor:v48];

  v49 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  sub_1000325F0();
  v50 = v49;
  v51 = sub_100770D1C();
  v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v53 = [v51 resolvedColorWithTraitCollection:v52];

  [v50 setTextColor:v53];
  v54 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v55 = [v45 whiteColor];
  [v54 setTintColor:v55];

  v56 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
  v57 = [v45 whiteColor];
  [v56 setTextColor:v57];

  v58 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v59 = [v45 whiteColor];
  [v58 setTextColor:v59];

  v60 = *(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v61 = [v45 whiteColor];
  [v60 setTextColor:v61];

  v62 = [*&v21[v32] traitCollection];
  [v62 userInterfaceStyle];

  sub_10076FF9C();
  v63 = sub_10076FF6C();

  v64 = [*(*&v21[v32] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v64 setCompositingFilter:v63];

  [v21 addSubview:*&v21[v32]];
  return v21;
}

char *sub_100356124()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 160))();
    v7 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v8 = sub_1000E4B54(v6);
    v9 = *(v0 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_100356248()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  v2 = [v0 traitCollection];
  [v0 bounds];
  v4.n128_u64[0] = v3;
  v6.n128_u64[0] = v5;
  v7 = (*((swift_isaMask & *v0) + 0x140))(v2, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v1 setLayoutMargins:{v7, v9, v11, v13}];
  [v0 bounds];
  [v1 sizeThatFits:{v14, v15}];
  v17 = v16;
  [v0 bounds];
  MinX = CGRectGetMinX(v23);
  [v0 bounds];
  MinY = CGRectGetMinY(v24);
  [v0 bounds];
  Width = CGRectGetWidth(v25);

  return [v1 setFrame:{MinX, MinY, Width, v17}];
}

void sub_1003563C8(uint64_t a1)
{
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = sub_1007601DC();
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = sub_10077158C();
    v6 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }
  }

  v7 = sub_10076BD4C();
  sub_10076BEFC();
  sub_10076D3AC();
  v8 = (v3 + 8);
  if (v7)
  {
    sub_10076D36C();
  }

  else
  {
    sub_10076D35C();
  }

  (*v8)(v5, v2);
}

void sub_100356580()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView);
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView);
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView);
  [v1 bounds];
  [v5 setFrame:?];
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer);
  [v1 bounds];
  [v6 setFrame:?];
  v7 = sub_100356124();
  [v1 bounds];
  [v7 setFrame:?];

  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView);
  if (v8)
  {
    v9 = v8;
    v10 = *(sub_10076C63C() + 16);

    [v1 bounds];
    v12 = v11;
    v14 = v13;
    v15 = [v1 window];
    v16 = v15;
    if (v15)
    {
      [v15 bounds];
      v18 = v17;
      v20 = v19;

      v21 = v18;
      v22 = v20;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = (*(ObjectType + 296))(v10, v21, v22, v16 == 0, v12, v14);
    v25 = v24;

    sub_10076C67C();
    v37 = v25 * 0.866 + v23 * 0.5 * 0.5;
    CGAffineTransformMakeRotation(&v39, 1.04719755);
    b = v39.b;
    c = v39.c;
    a = v39.a;
    d = v39.d;
    ty = v39.ty;
    tx = v39.tx;
    [v3 bounds];
    sub_1007704BC();
    sub_100770A7C();
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    CGRectApplyAffineTransform(v40, &v39);
    v29 = v9;
    [v29 bounds];
    [v29 setBounds:?];
    [v1 bounds];
    v31 = v30;
    v32 = sub_10076C68C();
    v34.n128_u64[0] = v33;
    (*((swift_isaMask & *v1) + 0x158))(v32, v31, v37, v34);
    [v29 setCenter:?];
    v39.a = a;
    v39.b = b;
    v39.c = c;
    v39.d = d;
    v39.tx = tx;
    v39.ty = ty;
    [v29 setTransform:&v39];
  }
}

double sub_100356960(uint64_t a1, void *a2)
{
  v4 = sub_10076443C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = sub_10076C22C();
  v13 = v12;
  v14 = (*(v2 + 168))(v28, v11);
  (*(v2 + 176))(v27, v14);
  (*(v2 + 312))(a2);
  if (sub_10077071C())
  {
    v15 = v27;
  }

  else
  {
    v15 = v28;
  }

  sub_10015E5E0(v15, v23);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v16 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v16 = qword_100944CA0;
  }

  v17 = sub_10000A61C(v4, v16);
  (*(v5 + 16))(v7, v17, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_1007643EC();
    v19 = v18;
    sub_1007643EC();
    v24 = v19;
    v25 = v20;
    v26 = 0;
  }

  v21 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, v13);
  (*(v5 + 8))(v10, v4, v21);
  sub_10015E58C(v23);
  sub_10015E58C(v27);
  sub_10015E58C(v28);
  return v13;
}

uint64_t sub_100356C74(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10076BF6C();
  __chkstk_darwin(v7 - 8);
  v137 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BEDC();
  v134 = *(v9 - 8);
  v135 = v9;
  __chkstk_darwin(v9);
  v133 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v11 - 8);
  v132 = &v132 - v12;
  v13 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v13 - 8);
  v146 = &v132 - v14;
  v15 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v15 - 8);
  v145 = &v132 - v16;
  v17 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v17 - 8);
  v144 = &v132 - v18;
  v19 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v19 - 8);
  v143 = &v132 - v20;
  v21 = sub_10000A5D4(&unk_100945550);
  __chkstk_darwin(v21 - 8);
  v141 = &v132 - v22;
  v23 = sub_10076A3AC();
  v139 = *(v23 - 8);
  __chkstk_darwin(v23);
  v140 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v25 - 8);
  v142 = &v132 - v26;
  v27 = sub_100762CAC();
  v151 = *(v27 - 8);
  v152 = v27;
  __chkstk_darwin(v27);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v150 = &v132 - v31;
  sub_100760C4C();
  sub_10076F64C();
  v148 = a2;
  sub_10076FC1C();
  v153 = v156[0];
  type metadata accessor for MediumDiagonalRiverCardDataSource();
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  *(v32 + 56) = 5;
  v149 = v32;
  v154 = a1;
  sub_10076ABDC();
  v34 = v33;
  v35 = ObjectType + 184;
  v36 = *(ObjectType + 184);
  v36();
  v136 = ObjectType;
  v36();
  if (v34)
  {
    sub_100762C1C();
  }

  sub_100762C4C();
  v37 = v150;
  sub_100762C8C();
  (*(v151 + 16))(v29, v37, v152);
  v38 = sub_10000A5D4(&qword_100953AF0);
  v39 = objc_allocWithZone(v38);

  v40 = sub_10076C62C();
  [v40 setHidden:0];
  v41 = v154;
  v42 = sub_10076ABEC();
  if (v42 >> 62)
  {
    v41 = v42;
    v44 = sub_10077158C();
    v42 = v41;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    v43 = 0;
    goto LABEL_11;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_10077149C();
  }

  else
  {
    if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_30:
      v86 = sub_10076D3DC();
      v87 = sub_10000A61C(v86, qword_1009A0DD8);
      v88 = *(v86 - 8);
      v89 = v132;
      (*(v88 + 16))(v132, v87, v86);
      (*(v88 + 56))(v89, 0, 1, v86);
      sub_1007625DC();

      v90 = *(v38 + v35);
      if (v90)
      {
        [v90 setAccessibilityIgnoresInvertColors:1];
      }

      goto LABEL_32;
    }

    v43 = *(v42 + 32);
  }

LABEL_11:
  *(sub_10076C63C() + 24) = v153;

  *(sub_10076C63C() + 48) = v148;

  *(sub_10076C63C() + 16) = v43;
  v147 = v43;

  sub_10076C66C();
  [v40 setHidden:0];
  v45 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView;
  v155 = v3;
  v46 = *&v3[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v46)
  {
    v47 = v40;
    v48 = v46;
    v49 = v47;
    v50 = v48;
    LOBYTE(v47) = sub_100770EEC();

    if ((v47 & 1) == 0)
    {
      sub_10076C6AC();
      [v50 removeFromSuperview];
    }
  }

  else
  {
    v51 = v40;
  }

  v52 = v155;
  v53 = *&v155[v45];
  *&v155[v45] = v40;
  v54 = v40;

  v55 = *&v52[v45];
  v138 = v54;
  if (!v55)
  {

    v55 = v46;
    goto LABEL_21;
  }

  if (v46)
  {
    v56 = v54;
    v57 = v46;
    v58 = v55;
    v59 = sub_100770EEC();

    if (v59)
    {

      v55 = v58;
LABEL_21:
      v60 = v155;
      goto LABEL_25;
    }

    v60 = v155;
    v54 = v56;
  }

  else
  {
    v61 = v55;
    v57 = 0;
    v60 = v155;
  }

  [*&v60[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] addSubview:v55];

LABEL_25:
  v38 = *&v60[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  [*(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v62 = sub_10076AC1C();
  v63 = v139;
  v64 = *(v139 + 104);
  v64(v140, enum case for OfferButtonPresenterViewAlignment.right(_:), v23);
  v65 = v141;
  v64(v141, enum case for OfferButtonPresenterViewAlignment.left(_:), v23);
  (*(v63 + 56))(v65, 0, 1, v23);
  sub_100358CAC(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v66 = v142;
  sub_10076759C();
  v67 = sub_10000A5D4(&qword_100945590);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = sub_10075F78C();
  v69 = v143;
  (*(*(v68 - 8) + 56))(v143, 1, 1, v68);
  v70 = sub_1007628DC();
  v71 = v144;
  (*(*(v70 - 8) + 56))(v144, 1, 1, v70);
  v72 = sub_10076C54C();
  v73 = v145;
  (*(*(v72 - 8) + 56))(v145, 1, 1, v72);
  v74 = sub_10000A5D4(&unk_100946750);
  v75 = v146;
  (*(*(v74 - 8) + 56))(v146, 1, 1, v74);
  sub_1004D0A60(v62, v38, v66, v148, 0, 0, v69, v71, v73, v75);
  *(v38 + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) = 1;
  sub_1006582B8();
  [(objc_class *)v38 setNeedsLayout];
  sub_1006582B8();

  sub_10000CFBC(v75, &qword_10094F730);
  sub_10000CFBC(v73, &unk_100949290);
  sub_10000CFBC(v71, &unk_1009492A0);
  sub_10000CFBC(v69, &unk_10094D210);
  sub_10000CFBC(v66, &unk_100946760);
  v76 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    [v78 setTextColor:v79];
  }

  v35 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
  v80 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v80)
  {
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 whiteColor];
    [v82 setTextColor:v83];

    v84 = *(v38 + v35);
    if (v84)
    {
      v85 = qword_100940A98;
      v41 = v84;
      if (v85 == -1)
      {
        goto LABEL_30;
      }

      goto LABEL_57;
    }
  }

LABEL_32:
  if (!v147)
  {
    goto LABEL_45;
  }

  v91 = sub_1007601DC();

  if (!(v91 >> 62))
  {
    result = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_35;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = sub_10077158C();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_35:
  if ((v91 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v93 = sub_10076BE1C();

  if (v93)
  {
    v94 = sub_100770E0C();

    if (v94)
    {
      v95 = 2;
    }

    else
    {
      v95 = 1;
    }

    goto LABEL_46;
  }

LABEL_45:
  v95 = 2;
LABEL_46:
  v96 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v97 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v98 = objc_opt_self();
  v99 = v97;
  v100 = [v98 systemGray5Color];
  v101 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v95];
  v102 = [v100 resolvedColorWithTraitCollection:v101];

  v103 = [v102 colorWithAlphaComponent:0.35];
  sub_10075FB8C();

  sub_10076AC1C();
  v104 = sub_10076BB5C();

  if (v104)
  {
    (*(v136 + 168))(v156, v105);
    sub_10015E58C(v156);
    v106 = v133;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v134 + 8))(v106, v135);
    sub_10076BFCC();
    v107 = *(v38 + v96);
    sub_10076BF7C();
    sub_10075FCCC();
    [v107 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_1000325F0();
      sub_100770D5C();
    }

    sub_10075FB8C();

    [*(v38 + v96) setContentMode:1];
    v108 = *(v38 + v96);
    sub_10075FD2C();
    sub_100358CAC(&qword_100941820, &type metadata accessor for ArtworkView);
    v109 = v108;
    sub_100760B8C();
  }

  v110 = sub_10076ABFC();
  if (v110)
  {
    v111 = v110;
    v112 = sub_10076AC0C();
    v113 = v155;
    v114 = *&v155[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView];
    if (v112)
    {
      v115 = v112;
      [*&v155[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView] setBackgroundColor:v112];
      v116 = [v114 layer];
      [v116 setCompositingFilter:0];

      v117 = *&v113[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10000A5D4(&unk_100942870);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_100785D70;
      *(v118 + 32) = [v111 colorWithAlphaComponent:0.4];
      *(v118 + 40) = v111;
      *&v117[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v118;
      v119 = v111;

      sub_1001C05B8();
      sub_1001C0414(&off_100882740);
      v120 = [v117 layer];
      [v120 setCompositingFilter:0];
    }

    else
    {
      v121 = sub_10076ABFC();
      [v114 setBackgroundColor:v121];

      v122 = [v114 layer];
      [v122 setCompositingFilter:0];

      v123 = *&v155[OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_10000A5D4(&unk_100942870);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_100785D70;
      v125 = [v98 whiteColor];
      v126 = [v125 colorWithAlphaComponent:0.4];

      *(v124 + 32) = v126;
      *(v124 + 40) = [v98 clearColor];
      *&v123[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v124;

      sub_1001C05B8();
      sub_1001C0414(&off_100882770);
      v113 = v155;
      v115 = [v123 layer];
      v120 = sub_10076FF6C();
      [v115 setCompositingFilter:v120];
    }

    v127 = sub_100356124();
    v128 = v111;
    v129 = sub_1000E5FDC(v111);
    v131 = v130;

    sub_1000E5C2C(2, v129, v131);

    [v113 setNeedsLayout];

    return (*(v151 + 8))(v150, v152);
  }

  else
  {
    (*(v151 + 8))(v150, v152);
  }
}

id sub_100358138()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100358288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10076C38C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076AC2C();
  sub_100358CAC(&qword_100953AE8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  result = sub_10076332C();
  v10 = v39[0];
  if (v39[0])
  {
    v11 = sub_10076ABEC();
    v12 = v11;
    if (v11 >> 62)
    {
      if (sub_10077158C())
      {
LABEL_4:
        v34 = a2;
        v35 = v5;
        v36 = v6;
        v37 = v10;
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = v3;
          v14 = sub_10077149C();
        }

        else
        {
          if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v13 = v3;
          v14 = *(v12 + 32);
        }

        v38 = v14;
        v15 = sub_1007601DC();

        swift_getKeyPath();
        sub_10076338C();

        swift_getKeyPath();
        sub_10076338C();

        v16 = v39[0];
        sub_100356960(v8, v39[0]);
        v18 = v17;

        v19 = v35;
        v20 = *(v36 + 8);
        v20(v8, v35);
        swift_getKeyPath();
        sub_10076338C();

        sub_10076C22C();
        v22 = v21;
        v20(v8, v19);
        v23 = [objc_opt_self() mainScreen];
        [v23 bounds];
        v25 = v24;
        v27 = v26;

        (*(v13 + 296))(v38, v25, v27, 0, v18, v22);
        if (v15 >> 62)
        {
          v28 = sub_10077158C();
          if (v28)
          {
LABEL_9:
            v39[0] = _swiftEmptyArrayStorage;
            sub_1007714EC();
            if ((v28 & 0x8000000000000000) == 0)
            {
              v29 = 0;
              do
              {
                if ((v15 & 0xC000000000000001) != 0)
                {
                  sub_10077149C();
                }

                else
                {
                }

                sub_10076BD4C();
                ++v29;
                sub_10076BFCC();

                sub_1007714CC();
                sub_1007714FC();
                sub_10077150C();
                sub_1007714DC();
              }

              while (v28 != v29);

              v30 = v39[0];
LABEL_21:
              v40 = v30;
              sub_10076AC1C();
              v31 = sub_10076BB5C();

              if (!v31)
              {
LABEL_24:
                v33._rawValue = v30;
                sub_100760BAC(v33);
              }

              (*(v13 + 176))(v39, v32);
              sub_10015E58C(v39);
              sub_10076BFCC();

              sub_10077019C();
              if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
LABEL_23:
                sub_10077025C();

                v30 = v40;
                goto LABEL_24;
              }

LABEL_28:
              sub_10077021C();
              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v28 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28)
          {
            goto LABEL_9;
          }
        }

        v30 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_1003587AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10076BF6C();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v7 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + 16))
  {

    v10 = sub_1007601CC();
  }

  else
  {
    v10 = 0;
  }

  sub_1007601EC();
  sub_10007AFB4(v10, v9);

  sub_1001253E8(v9);
  swift_beginAccess();
  sub_10076BD4C();
  sub_10076BFCC();
  v11 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
  v12 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  sub_10076BF7C();
  sub_10075FCCC();

  v13 = *(a2 + v11);
  [v13 setContentMode:sub_10076BDBC()];

  v14 = *(a2 + v11);
  sub_10075FD0C();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_1007601DC();

  if (!(v15 >> 62))
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = sub_10077158C();
  if (!result)
  {
LABEL_15:

LABEL_16:
    v19 = 2;
    goto LABEL_17;
  }

LABEL_7:
  if ((v15 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v17 = sub_10076BE1C();

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = sub_100770E0C();

  if (v18)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

LABEL_17:
  v20 = *(a2 + v11);
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 systemGray5Color];
  v24 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v19];
  v25 = [v23 resolvedColorWithTraitCollection:v24];

  v26 = [v25 colorWithAlphaComponent:0.35];
  sub_10075FB8C();

  if (*(v3 + 24))
  {
    sub_100760C4C();
    v27 = *(a2 + v11);
    sub_10075FD2C();

    v28 = v27;
    sub_100760BCC();

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a1;

    sub_100760B7C();

    sub_10000CFBC(v31, &qword_100943310);
  }
}

uint64_t sub_100358C24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100358C5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100358CAC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100358CF4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_riverView) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled) = 1;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100358E68()
{
  result = qword_10094F040;
  if (!qword_10094F040)
  {
    sub_10076989C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F040);
  }

  return result;
}

uint64_t sub_100358EC8(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v31 = sub_10075F65C();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v32 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100765F6C();
  v4 = *(v30 - 8);
  __chkstk_darwin(v30);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100766EDC();
  v7 = *(v29 - 8);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10000A5D4(&unk_100958150);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v28 - v15;
  v17 = sub_10076C15C();
  __chkstk_darwin(v17);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  (*(v19 + 104))(&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.gameCenterPlayerProfile(_:));
  v20 = sub_10075DB7C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = sub_10076096C();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_10076988C();
  if (v23)
  {
    v24 = &type metadata for String;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v36 = 0;
  }

  v34 = v22;
  v35 = v23;
  v37 = v24;
  sub_10076F4DC();
  (*(v7 + 104))(v9, enum case for FlowPresentationContext.infer(_:), v29);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v30);
  (*(v2 + 104))(v32, enum case for FlowOrigin.inapp(_:), v31);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v25 = sub_10075F5EC();
  v26 = sub_100563FF8(v25, 1, v33);

  return v26;
}

char *sub_1003593A8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_shouldApplyBreakoutData] = 1;
  type metadata accessor for UpsellBreakoutView();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView]];

  return v11;
}

uint64_t sub_10035960C()
{
  v1 = *(*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void (*sub_100359688(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView);
  v4 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(*(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_100359730;
}

void sub_100359730(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 8) + *(a1 + 16));
  v5 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a2)
  {
    if (v3)
    {
      sub_10035A238(&qword_100942810, type metadata accessor for VideoView);
      v7 = v3;
      v8 = [v7 superview];
      if (v8)
      {
        v9 = v8;
        sub_1000ACA5C();
        v10 = v6;
        v11 = sub_100770EEC();

        if (v11)
        {
          [v7 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_1009602B8 + 8) = &off_1008965B8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10035A238(&qword_100942810, type metadata accessor for VideoView);
      v12 = v3;
      v13 = [v12 superview];
      if (v13)
      {
        v14 = v13;
        sub_1000ACA5C();
        v15 = v6;
        v16 = sub_100770EEC();

        if (v16)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v21 = *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v6[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v22 = v3;
    sub_100453A30(v21);

    if (*(*(v4 + v5) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        *(v23 + qword_1009602B8 + 8) = &off_1008965B8;

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_100359B88(void *a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  objc_msgSendSuper2(&v16, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView];
    v6 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v7 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
    v8 = *(*(v5 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
    v9 = *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
    *&v8[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v6;
    v10 = a1;
    if (v6 != v9)
    {
      [v8 setNeedsLayout];
    }

    v11 = *(*(*(v5 + v7) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v11)
    {
      type metadata accessor for VideoView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        v15 = v11;

        *(v13 + qword_1009602E0) = v14;
        v10 = v15;
      }
    }
  }
}

id sub_100359D44()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UpsellBreakoutCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for UpsellBreakoutCollectionViewCell()
{
  result = qword_100953B20;
  if (!qword_100953B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100359E1C()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_100359EF4(uint64_t **a1))()
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
  v2[4] = sub_100359688(v2);
  return sub_100019A4C;
}

uint64_t sub_100359F64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100359FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10035A024(uint64_t *a1))()
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

uint64_t sub_10035A0C0(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension32UpsellBreakoutCollectionViewCell_upsellBreakoutView) + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_1000ACA5C();
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10035A238(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10035A2E8()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for RuleResultsViewController();
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v1 = [objc_allocWithZone(UITextView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView;
  v3 = *&v0[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView] = v1;
  v4 = v1;

  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = [v0 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v4 setFrame:{v8, v10, v12, v14}];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*&v0[v2])
  {
    v16 = v15;
    [v15 addSubview:?];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_10035A46C(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RuleResultsViewController();
  result = objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView];
  if (v5)
  {
    v6 = v5;
    v7 = sub_10076FF6C();
    [v6 setText:v7];

    sub_100760E1C();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = sub_100085204();

    v9[3] = v8;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = sub_10077068C();
    sub_10076FC6C();

    sub_10000CD74(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10035A610(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView);
    v4 = Strong;
    v5 = v3;

    if (v3)
    {
      v6 = [v5 text];
      if (!v6)
      {
LABEL_11:
        __break(1u);
        return;
      }

      v7 = v6;
      sub_10076FF9C();

      v14 = *(v1 + 16);
      if (v14)
      {
        v8 = 0;
        v9 = (v1 + 40);
        while (v8 < *(v1 + 16))
        {
          ++v8;
          v10 = v1;
          v12 = *(v9 - 1);
          v11 = *v9;

          v15._countAndFlagsBits = v12;
          v15._object = v11;
          sub_1007700CC(v15);

          sub_10077014C();
          sub_1007700BC();

          v1 = v10;

          v9 += 2;
          if (v14 == v8)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_11;
      }

LABEL_8:
      v13 = sub_10076FF6C();

      [v5 setText:v13];
    }
  }
}

void sub_10035A7E8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension25RuleResultsViewController_textView);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      swift_getErrorValue();
      sub_1007716EC();
      v4 = sub_10076FF6C();

      [v3 setText:v4];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_10035A970()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RuleResultsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10035AA24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10035AA6C()
{
  v33 = sub_10076D1AC();
  v38 = *(v33 - 8);
  __chkstk_darwin(v33);
  v1 = &v30 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100763DBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100763E2C();
  sub_10000DB18(v6, qword_100953B80);
  v35 = sub_10000A61C(v6, qword_100953B80);
  v53[18] = &type metadata for CGFloat;
  v53[19] = &protocol witness table for CGFloat;
  v53[14] = &protocol witness table for CGFloat;
  v53[15] = 0x4024000000000000;
  v53[13] = &type metadata for CGFloat;
  v53[10] = 0xC04F000000000000;
  v53[8] = &type metadata for CGFloat;
  v53[9] = &protocol witness table for CGFloat;
  v53[5] = 0x4036000000000000;
  if (qword_10093FFA0 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_100953BB0, v53);
  v7 = *(v3 + 104);
  v36 = v5;
  v7(v5, enum case for ArcadeFooterLayout.ButtonLocation.bottom(_:), v2);
  v52[13] = &type metadata for Double;
  v52[14] = &protocol witness table for Double;
  v52[9] = &protocol witness table for Double;
  v52[10] = 0x402E000000000000;
  v52[8] = &type metadata for Double;
  v52[5] = 0x4040000000000000;
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v40 = sub_10000A61C(v8, qword_1009A1C48);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v9 + 16;
  v10(v1, v40, v8);
  v31 = enum case for FontSource.useCase(_:);
  v12 = v38 + 104;
  v37 = *(v38 + 104);
  v13 = v33;
  v37(v1);
  v32 = sub_100767EAC();
  v52[3] = v32;
  v14 = sub_10035E400(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  v52[4] = v14;
  sub_10000DB7C(v52);
  v15 = UIContentSizeCategoryExtraExtraExtraLarge;
  sub_100767E9C();
  v16 = v40;
  v34 = v8;
  v39 = v11;
  v40 = v10;
  v10(v1, v16, v8);
  v17 = v12;
  v18 = v1;
  v19 = v37;
  v20 = v31;
  (v37)(v18, v31, v13);
  v51[3] = v32;
  v51[4] = v14;
  sub_10000DB7C(v51);
  v21 = v15;
  sub_100767E9C();
  v50 = 0;
  v49 = 0u;
  v48 = 0u;
  v54 = xmmword_100788B30;
  v55 = xmmword_100788B30;
  v56 = 0;
  if (qword_100940B50 != -1)
  {
    swift_once();
  }

  v22 = v34;
  v32 = sub_10000A61C(v34, qword_1009A0FE8);
  v40(v18, v32, v22);
  v19(v18, v20, v13);
  v23 = sub_10076D9AC();
  v47[3] = v23;
  v47[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v47);
  v45 = v13;
  v46 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v44);
  v25 = v38;
  v30 = v17;
  v26 = *(v38 + 16);
  v26(v24, v18, v13);
  sub_10076D9BC();
  v27 = *(v25 + 8);
  v27(v18, v13);
  v40(v18, v32, v22);
  (v37)(v18, v20, v13);
  v45 = v23;
  v46 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v44);
  v42 = v13;
  v43 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(v41);
  v26(v28, v18, v13);
  sub_10076D9BC();
  v27(v18, v13);
  v43 = &protocol witness table for Double;
  v42 = &type metadata for Double;
  v41[0] = 0x3FF0000000000000;
  return sub_100763E0C();
}

uint64_t sub_10035B0A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [swift_unknownObjectRetain() traitCollection];
    sub_1007706EC();

    sub_100763DEC();
    if (qword_10093FFA8 != -1)
    {
      swift_once();
    }

    v3 = sub_10000A5D4(&unk_10094CD50);
    sub_10000A61C(v3, qword_10099EA40);
    swift_unknownObjectRetain();
    sub_10075FDCC();
    swift_unknownObjectRelease();
    sub_100763E1C();
    if (qword_10093FF98 != -1)
    {
      swift_once();
    }

    v4 = sub_10000A5D4(&unk_100945BD0);
    sub_10000A61C(v4, qword_100953B98);
    swift_unknownObjectRetain();
    sub_10075FDCC();
    swift_unknownObjectRelease();
    sub_100763DFC();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10035B288()
{
  v0 = sub_10000A5D4(&unk_100945BD0);
  sub_10000DB18(v0, qword_100953B98);
  sub_10000A61C(v0, qword_100953B98);
  sub_10000A5D4(&unk_100943120);
  return sub_10075FDFC();
}

uint64_t sub_10035B320()
{
  v0 = sub_10076D1AC();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_100953BC8 = sub_100767EAC();
  qword_100953BD0 = sub_10035E400(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  sub_10000DB7C(qword_100953BB0);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_100767E9C();
}

uint64_t sub_10035B470()
{
  v0 = sub_10000A5D4(&unk_10094CD50);
  sub_10000DB18(v0, qword_10099EA40);
  sub_10000A61C(v0, qword_10099EA40);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for CGSize(0);
  return sub_10075FDEC();
}

UIFontTextStyle sub_10035B51C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10099EA58);
  v1 = sub_10000A61C(v0, qword_10099EA58);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_10035B5D8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100767EAC();
  sub_10000DB18(v4, qword_10099EA70);
  sub_10000A61C(v4, qword_10099EA70);
  if (qword_10093FFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099EA58);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_100767E9C();
}

char *sub_10035B774(double a1, double a2, double a3, double a4)
{
  v105 = sub_10076F9AC();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100762CAC();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = sub_100767EAC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10076D3DC();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100760B4C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = sub_100760B6C();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10076C43C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_10093FFA0 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_100953BB0, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_10008B8A4(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_1001AC4BC(v23, v36, v20, v27, v31, v32);
  sub_10000CD74(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10093FFB0 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_10000A61C(v97, qword_10099EA58);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_10093FFB8 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_10000A61C(v101, qword_10099EA70);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton());
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_10035D854(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  v53 = sub_100763E2C();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell();
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_10093FFA8 != -1)
  {
    swift_once();
  }

  v62 = sub_10000A5D4(&unk_10094CD50);
  sub_10000A61C(v62, qword_10099EA40);
  *&v109 = v60;
  sub_10075FDCC();

  v63 = v112;
  sub_100762C5C();
  sub_100762C6C();
  sub_100762C0C();
  sub_100762C4C();
  v64 = v106;
  sub_100762C8C();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_10000A5D4(&qword_100953D70));
  v67 = sub_10076C62C();
  v68 = *&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  sub_10076F95C();
  sub_10000CFBC(&v109, &unk_1009434C0);
  sub_10000CFBC(&v112, &unk_1009434C0);
  v102 = v69;
  sub_100770B9C();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView];
  sub_100016F40(0, &qword_100942F10);
  v77 = v76;
  v78 = sub_100770D6C();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = sub_100770D6C();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = sub_100770DBC();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  sub_10076F95C();
  sub_10000CFBC(&v109, &unk_1009434C0);
  sub_10000CFBC(&v112, &unk_1009434C0);
  sub_100770B9C();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  sub_10076F95C();
  sub_10000CFBC(&v109, &unk_1009434C0);
  sub_10000CFBC(&v112, &unk_1009434C0);
  sub_100770B9C();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_10035C4EC()
{
  v1 = sub_10076D1FC();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100953D78);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100763E2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell();
  v48.receiver = v0;
  v48.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v48, "layoutSubviews");
  v15 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_10035E448(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100953D78);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    sub_100763DCC();
    [v0 layoutMargins];
    sub_100763DCC();
    [v0 layoutMargins];
    sub_100763DDC();
    (*(v8 + 16))(v10, v13, v7);
    v46 = sub_10000A5D4(&qword_100953D70);
    v47 = &protocol witness table for UIView;
    v45 = v18;
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView];
    v43 = sub_100760B6C();
    v44 = &protocol witness table for UIView;
    v42 = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView];
    v40 = type metadata accessor for CappedSizeRoundedTitledButton();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v38 = &protocol witness table for UIView;
    v37 = v23;
    v36 = v22;
    sub_100763E4C();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    sub_100763E3C();
    v27 = [v0 contentView];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();

    v28 = v31;
    sub_100763DAC();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v49);
    sub_10076422C();
    if (Width == CGRectGetWidth(v50))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_10035CAD4()
{
  v1 = v0;
  v2 = sub_100762CAC();
  __chkstk_darwin(v2 - 8);
  if (qword_10093FFA8 != -1)
  {
    swift_once();
  }

  v3 = sub_10000A5D4(&unk_10094CD50);
  sub_10000A61C(v3, qword_10099EA40);
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (!v5 || ((v6 = v5, v7 = sub_10076C63C(), v6, swift_beginAccess(), v8 = *(v7 + 24), v9 = *(v7 + 32), , v26 == v8) ? (v10 = v27 == v9) : (v10 = 0), !v10))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v11 = swift_allocObject();
    *(v11 + 16) = 2;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 40) = _swiftEmptyArrayStorage;
    *(v11 + 24) = v26;
    *(v11 + 32) = v27;
    sub_100762C5C();
    sub_100762C6C();
    sub_100762C0C();
    sub_100762C4C();
    sub_100762C8C();
    v12 = objc_allocWithZone(sub_10000A5D4(&qword_100953D70));
    v13 = sub_10076C62C();
    v14 = *&v1[v4];
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      v17 = sub_100770EEC();

      v18 = *&v1[v4];
      if ((v17 & 1) == 0 && v18)
      {
        [*&v1[v4] removeFromSuperview];
        v18 = *&v1[v4];
      }
    }

    else
    {
      v18 = 0;
    }

    *&v1[v4] = v13;
    v19 = v13;

    v20 = *&v1[v4];
    if (v20)
    {
      if (v14)
      {
        v21 = v14;
        v22 = v20;
        v23 = sub_100770EEC();

        if (v23)
        {

          v20 = v22;
LABEL_22:

          return;
        }
      }

      else
      {
        v24 = v20;
      }

      v25 = [v1 contentView];
      [v25 addSubview:v20];

      if (v14)
      {
        sub_10076C65C();
      }

      sub_10076C66C();

      goto LABEL_22;
    }

    v20 = v14;
    goto LABEL_22;
  }
}

uint64_t sub_10035CE70(uint64_t a1, uint64_t a2)
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  isa = sub_10077038C().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_1005EBD8C(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_10093F808 != -1)
        {
          swift_once();
        }

        v13 = &qword_100949F40;
      }

      else
      {
        if (qword_10093F800 != -1)
        {
          swift_once();
        }

        v13 = &qword_100949F38;
      }

      return [*&v12[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_10035D210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell()
{
  result = qword_100953C08;
  if (!qword_100953C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035D374()
{
  sub_10035D49C(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_10035D49C(319, &qword_100953C20, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10035D49C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10035D4F0(uint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = sub_10077158C();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_10077149C();

    goto LABEL_7;
  }

  if (result < 0)
  {
    __break(1u);
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {

LABEL_7:
    v4 = sub_1007660BC();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035D5CC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10035D66C(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_10035D700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10035D4F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10035D728()
{
  sub_10075FD2C();
  v0 = sub_10075FB3C();
  sub_100016F40(0, &qword_100942F10);
  sub_100770DBC();
  sub_10075FB8C();
  return v0;
}

uint64_t sub_10035D790()
{
  result = sub_10075FCAC();
  if (*(v0 + 56))
  {
    sub_10075FD2C();
    sub_10035E400(&qword_100941820, &type metadata accessor for ArtworkView);

    sub_100760BFC();
  }

  return result;
}

id sub_10035D854(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_100767EAC();
  v26[3] = v12;
  v26[4] = sub_10035E400(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension);
  v13 = sub_10000DB7C(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_10095D9B0];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_10000A570(v26, &a4[qword_10095D9A8]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_10024E618(a3);
  v18 = sub_10076D3DC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  sub_10076311C();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_100016F40(0, &qword_100942F10);
  v21 = sub_100770DAC();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = sub_100770D6C();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_10000CD74(v26);
  return v20;
}

void sub_10035DB50()
{
  v1 = sub_100767EAC();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076D3DC();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100760B4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009622B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = sub_100760B6C();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = sub_10076C43C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_10093FFA0 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_100953BB0, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_10008B8A4(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_1001AC4BC(v11, v24, v8, v15, v19, v20);
  sub_10000CD74(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10093FFB0 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_10000A61C(v44, qword_10099EA58);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_10093FFB8 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_10000A61C(v48, qword_10099EA70);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton());
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_10035D854(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  v41 = sub_100763E2C();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  sub_10077156C();
  __break(1u);
}

id sub_10035E170()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = 0;
  if (qword_10093F800 != -1)
  {
    swift_once();
  }

  result = [*(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel) setTextColor:qword_100949F38];
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {

    v3(v4);

    return sub_1000167E0(v3);
  }

  return result;
}

uint64_t sub_10035E248(uint64_t a1, void *a2)
{
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  sub_10076BFCC();
  sub_10076BF7C();
  sub_10075FCCC();
  [a2 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10);
    sub_100770D5C();
  }

  sub_10075FB8C();
  if (*(v2 + 56))
  {
    sub_10075FD2C();
    sub_10035E400(&qword_100941820, &type metadata accessor for ArtworkView);

    sub_100760B8C();
  }
}

uint64_t sub_10035E400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035E448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100953D78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_1001B6654(a1, a9);
  v21 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v22 = a9 + v21[5];
  v23 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a2 + 32);
  sub_100012498(a3, a9 + v21[6]);
  v24 = a9 + v21[7];
  v25 = *(a4 + 16);
  *v24 = *a4;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a4 + 32);
  sub_100012498(a5, a9 + v21[10]);
  sub_100012498(a6, a9 + v21[8]);
  sub_100012498(a7, a9 + v21[9]);
  sub_100012498(a8, a9 + v21[11]);
  v26 = a9 + v21[12];
  v27 = *(a10 + 16);
  *v26 = *a10;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a10 + 32);
  sub_100012498(a11, a9 + v21[13]);
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

  return sub_100362124(a1, v2, a2);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_1007706FC();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v4 + 8))(v7, v3);
  }
}

double sub_10035EAE8@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_100016E2C(v1 + *(v3 + 56), &v9, &qword_10094BB30);
  if (v10)
  {
    sub_100012498(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_10000CF78(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_10000DB7C(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_10000CD74(v11);
    return result;
  }

  sub_10000CFBC(&v9, &qword_10094BB30);
  sub_100016E2C(v1 + *(v3 + 60), &v9, &unk_10094DA00);
  if (v10)
  {
    sub_100012498(&v9, v11);
    sub_10000CF78(v11, v12);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000A570(v11, a1);
      goto LABEL_3;
    }

    sub_10000CD74(v11);
  }

  else
  {
    sub_10000CFBC(&v9, &unk_10094DA00);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_10000A5D4(&unk_100945BD0);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_100012498(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_100012498(a6, a9 + v32[14]);
  sub_100012498(a7, a9 + v32[15]);
  sub_100012498(a8, a9 + v32[16]);
  sub_100012498(a16, a9 + v32[11]);
  sub_100012498(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_10000A5D4(&unk_100952280);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_100012498(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_100012498(a22, a9 + v32[20]);
  result = sub_100012498(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000A5D4(&unk_100952280);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000A5D4(&unk_100952280);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000A5D4(&unk_100945BD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_10000CD74(v1 + v3);

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v159 = a2;
  v161 = sub_10000A5D4(&unk_100945BD0);
  v156 = *(v161 - 8);
  __chkstk_darwin(v161);
  v155 = &v154 - v13;
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100102A30(a3, a4, a5, a6, *v6, v6[1]);
  v177 = v19;
  v174 = v20;
  v179 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  sub_10000CF78((v6 + v22[15]), *(v6 + v22[15] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v160 = v23;
  v26 = *(v15 + 8);
  v24 = v15 + 8;
  v25 = v26;
  v26(v17, v14);
  sub_10000CF78((v7 + v22[16]), *(v7 + v22[16] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v163 = v27;
  v180 = v14;
  v26(v17, v14);
  v28 = [a1 traitCollection];
  v29 = sub_1007706EC();

  if ((v29 & 1) == 0 || (sub_10035EAE8(&v183), v30 = v184, sub_10000CFBC(&v183, &unk_10094DA00), !v30))
  {
    sub_10000A5D4(&unk_100952280);
    v31 = v155;
    sub_10075FE9C();
    sub_10076D17C();
    sub_10075FE7C();
    v25(v17, v180);
    (*(v156 + 8))(v31, v161);
  }

  v32 = [a1 traitCollection];
  v33 = sub_1007706EC();

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
    v171 = COERCE_DOUBLE(sub_10000CF78(v35, v36));
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
    sub_10000CF78(v37, v37[3]);
    sub_1000FF02C();
    v38 = v180;
    sub_10076D40C();
    v178(v17, v38);
    v188.origin.x = a3;
    v188.origin.y = a4;
    v188.size.width = a5;
    v188.size.height = a6;
    CGRectGetWidth(v188);
    sub_10000CF78(v37, v37[3]);
    sub_1000FF02C();
    sub_10076D40C();
    v39 = v38;
    v25 = v178;
    v178(v17, v39);
    sub_10076D23C();
    v173 = v34;
    sub_100016E2C(v7 + *(v34 + 28), &v183, &unk_10094DA00);
    if (v184)
    {
      v171 = v185;
      sub_10000CF78(&v183, v184);
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
      sub_10000CF78(v40, v40[3]);
      sub_1000FF02C();
      v41 = v180;
      sub_10076D40C();
      v178(v17, v41);
      v191.origin.x = a3;
      v191.origin.y = a4;
      v191.size.width = a5;
      v191.size.height = a6;
      CGRectGetWidth(v191);
      sub_10000CF78(v40, v40[3]);
      sub_1000FF02C();
      sub_10076D40C();
      v42 = v41;
      v25 = v178;
      v178(v17, v42);
      sub_10076D23C();
      sub_10000CD74(&v183);
    }

    else
    {
      sub_10000CFBC(&v183, &unk_10094DA00);
    }

    v53 = v174;
    sub_100016E2C(v7 + v173[5], &v183, &unk_10094DA00);
    v18 = v175;
    if (v184)
    {
      sub_10000CF78(&v183, v184);
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
      if (qword_1009401A8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v161, qword_10099F070);
      sub_10076D17C();
      sub_10075FE7C();
      v25(v17, v180);
      v55 = [a1 traitCollection];
      [v55 displayScale];

      sub_10076D23C();
      sub_10000CD74(&v183);
      v18 = v175;
      v53 = v174;
    }

    else
    {
      sub_10000CFBC(&v183, &unk_10094DA00);
    }
  }

  else
  {
    v192.origin.x = a3;
    v192.origin.y = a4;
    v192.size.width = a5;
    v192.size.height = a6;
    Width = CGRectGetWidth(v192);
    sub_10000CF78((v7 + v22[17]), *(v7 + v22[17] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v45 = v44;
    v46 = v180;
    v25(v17, v180);
    v47 = (Width - v45) * 0.5;
    sub_10076D17C();
    sub_10075FE7C();
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
    sub_10000CF78((v7 + *(v52 + 24)), *(v7 + *(v52 + 24) + 24));
    sub_100102A30(a3, a4, a5, a6, 0.0, v51);
    sub_10076D23C();
    v173 = v52;
    sub_100016E2C(v7 + *(v52 + 20), &v183, &unk_10094DA00);
    if (v184)
    {
      sub_10000CF78(&v183, v184);
      sub_10076D23C();
      sub_10000CD74(&v183);
    }

    else
    {
      sub_10000CFBC(&v183, &unk_10094DA00);
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
  sub_10000CF78(v65, v65[3]);
  v170 = v60;
  v168 = v63;
  v171 = v59;
  v169 = v62;
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v7 + v64[19], &v183, &unk_10094DA00);
  if (v184)
  {
    sub_10000CF78(&v183, v184);
    sub_10000CF78(v65, v65[3]);
    v25 = v178;
    sub_10076D22C();
    sub_10076D23C();
    sub_10000CD74(&v183);
  }

  else
  {
    sub_10000CFBC(&v183, &unk_10094DA00);
  }

  v66 = [a1 traitCollection];
  v67 = sub_1007706FC();

  v68 = 0.0;
  if (v67)
  {
    sub_10076D17C();
    sub_10075FE7C();
    v68 = v69;
    v25(v17, v180);
  }

  v70 = (v7 + v173[10]);
  sub_10000CF78(v70, v70[3]);
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
  sub_10076D2AC();
  sub_10076D17C();
  sub_10075FE7C();
  v74 = v73;
  v25(v17, v180);
  v183 = v74;
  v75 = v174;
  sub_10076D42C();
  sub_10000CF78(v70, v70[3]);
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
  sub_10076D23C();
  v76 = [a1 traitCollection];
  v77 = sub_1007706EC();

  if (v77)
  {
    v78 = v175;
    v204.origin.x = v175;
    v204.origin.y = v71;
    v204.size.width = v75;
    v204.size.height = v72;
    MinX = CGRectGetMinX(v204);
    sub_10000CF78(v70, v70[3]);
    sub_10076D22C();
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
    sub_10000CF78(v88, v88[3]);
    sub_10076D22C();
    MinX = CGRectGetMinX(v207);
    sub_10000CF78(v70, v70[3]);
    sub_10076D22C();
    MaxY = CGRectGetMaxY(v208);
    sub_10000CF78(v88, v88[3]);
    sub_10076D22C();
    v82 = CGRectGetWidth(v209);
    sub_10000CF78(v88, v88[3]);
    sub_10076D22C();
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
  sub_10000CF78(v93, *(v93 + 3));
  sub_10076D2AC();
  v171 = v94;
  v170 = v95;
  v169 = v96;
  v97 = (v7 + v86[11]);
  sub_10000CF78(v97, *(v97 + 3));
  sub_10076D2AC();
  v157 = v98;
  v158 = v99;
  v154 = v100;
  v168 = v101;
  sub_10000CF78(v93, *(v93 + 3));
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
  sub_10076D17C();
  sub_10075FE7C();
  v104 = v103;
  v178(v17, v180);
  v183 = v104;
  v105 = v169;
  sub_10076D42C();
  v213.origin.x = v92;
  v213.origin.y = v102;
  v213.size.width = v91;
  v213.size.height = v90;
  CGRectGetWidth(v213);
  sub_10076D23C();
  sub_10000CF78(v97, *(v97 + 3));
  if (sub_10076D20C())
  {
    v106 = *(v97 + 3);
    v171 = v97[4];
    sub_10000CF78(v97, v106);
    v214.origin.x = v92;
    v107 = MaxY;
    v214.origin.y = MaxY;
    v214.size.width = v91;
    v214.size.height = v90;
    v170 = CGRectGetMinX(v214);
    sub_10000CF78(v93, *(v93 + 3));
    sub_10076D22C();
    CGRectGetMaxY(v215);
    sub_10076D17C();
    sub_10075FE7C();
    v109 = v108;
    v178(v17, v180);
    v183 = v109;
    v110 = v168;
    sub_10076D42C();
    v216.origin.x = v92;
    v216.origin.y = v107;
    v216.size.width = v91;
    v216.size.height = v90;
    CGRectGetWidth(v216);
    sub_10076D23C();
  }

  else
  {
    sub_10000CF78(v97, *(v97 + 3));
    sub_10076D23C();
    v97 = v93;
    v110 = v105;
  }

  v111 = v179;
  sub_10000CF78(v97, *(v97 + 3));
  sub_10076D22C();
  v171 = CGRectGetMaxY(v217) - v110;
  v112 = v173;
  v113 = (v7 + v173[13]);
  sub_10000CF78(v113, v113[3]);
  v114 = v174;
  sub_10076D2AC();
  v116 = v115;
  v118 = v117;
  v119 = v175;
  v218.origin.x = v175;
  v120 = v177;
  v218.origin.y = v177;
  v218.size.width = v114;
  v218.size.height = v111;
  v121 = floor(CGRectGetMidX(v218) + v116 * -0.5);
  sub_10000CF78((v7 + *(*&v176 + 36)), *(v7 + *(*&v176 + 36) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v123 = v122;
  v178(v17, v180);
  v124 = floor(v171 + v123);
  sub_10000CF78(v113, v113[3]);
  v169 = v121;
  v168 = v124;
  v171 = v116;
  v170 = v118;
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v7 + v112[17], &v181, &unk_10094DA00);
  if (v182)
  {
    sub_100012498(&v181, &v183);
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
    sub_10000CF78(&v183, v184);
    sub_10076D23C();
    sub_10000CD74(&v183);
  }

  else
  {
    sub_10000CFBC(&v181, &unk_10094DA00);
  }

  sub_100016E2C(v7 + v112[18], &v181, &unk_10094DA00);
  if (v182)
  {
    sub_100012498(&v181, &v183);
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
    sub_10000CF78(&v183, v184);
    sub_10076D23C();
    sub_10000CD74(&v183);
  }

  else
  {
    sub_10000CFBC(&v181, &unk_10094DA00);
  }

  v133 = v176;
  sub_10035EAE8(&v181);
  if (v182)
  {
    sub_100012498(&v181, &v183);
    sub_10000CF78(&v183, v184);
    sub_10076D2AC();
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
    sub_10000CF78((v7 + *(*&v133 + 44)), *(v7 + *(*&v133 + 44) + 24));
    v134 = v179;
    sub_10076D42C();
    sub_10000CF78(&v183, v184);
    v114 = v174;
    sub_10076D23C();
    sub_10000CD74(&v183);
  }

  else
  {
    sub_10000CFBC(&v181, &unk_10094DA00);
    v134 = v179;
  }

  sub_100016E2C(v7 + v112[16], &v181, &unk_10094DA00);
  v135 = v175;
  if (v182)
  {
    sub_100012498(&v181, &v183);
    v136 = [a1 traitCollection];
    v137 = sub_10077071C();

    if (v137 & 1) != 0 || (sub_10035EAE8(&v181), v138 = v182, sub_10000CFBC(&v181, &unk_10094DA00), v138) && (v139 = [a1 traitCollection], v140 = sub_1007706EC(), v139, (v140))
    {
      sub_10000CF78(&v183, v184);
    }

    else
    {
      sub_10000CF78(&v183, v184);
      sub_10076D2BC();
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
      sub_10000A5D4(&unk_100952280);
      v142 = v155;
      sub_10075FE9C();
      sub_10076D17C();
      sub_10075FE7C();
      v178(v17, v180);
      (*(v156 + 8))(v142, v161);
      v135 = v175;
      sub_10000CF78(&v183, v184);
      v114 = v174;
      sub_10076D23C();
      sub_10000CF78(&v183, v184);
    }

    sub_10076D25C();
    sub_10000CD74(&v183);
  }

  else
  {
    sub_10000CFBC(&v181, &unk_10094DA00);
  }

  sub_100016E2C(v7 + v112[12], &v181, &unk_10094DA00);
  if (v182)
  {
    sub_100012498(&v181, &v183);
    sub_10000CF78(&v183, v184);
    sub_10076D2BC();
    v143 = v114;
    v145 = v144;
    v171 = v144;
    v174 = v146;
    sub_10000CF78((v7 + v112[6]), *(v7 + v112[6] + 24));
    sub_10076D22C();
    v147 = CGRectGetMaxX(v229) - v145;
    v148 = (v7 + *(*&v133 + 56));
    sub_10000CF78(v148, v148[3]);
    sub_1000FF02C();
    sub_10076D40C();
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
    sub_10000CF78(v148, v148[3]);
    sub_1000FF02C();
    sub_10076D40C();
    v152(v17, v151);
    sub_10000CF78(&v183, v184);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(&v183);
  }

  else
  {
    sub_10000CFBC(&v181, &unk_10094DA00);
  }

  return sub_10076D1BC();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100945BD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000CF78((v0 + *(v10 + 52)), *(v0 + *(v10 + 52) + 24));
  sub_10076D2BC();
  v12 = v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000A5D4(&unk_100952280);
  sub_10075FE9C();
  sub_10076D17C();
  sub_10075FE7C();
  v15 = v14;
  v16 = v23;
  v17 = *(v24 + 8);
  v24 += 8;
  v17(v5, v23);
  (*(v7 + 8))(v9, v6);
  sub_10000CF78((v1 + *(v13 + 60)), *(v1 + *(v13 + 60) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v19 = v18;
  v17(v5, v16);
  sub_10000CF78((v1 + *(v13 + 64)), *(v1 + *(v13 + 64) + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v21 = v20;
  v17(v5, v16);
  return v12 + v15 + v19 + v21;
}

double sub_100362124(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10000A5D4(&unk_100945BD0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = sub_10077164C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007706EC();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000CF78((a2 + v15[15]), *(a2 + v15[15] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_10000CF78((a2 + v15[16]), *(a2 + v15[16] + 24));
    sub_1000FF02C();
    sub_10076D40C();
    v16(v12, v8);
    sub_10000CF78((a2 + v15[17]), *(a2 + v15[17] + 24));
    sub_1000FF02C();
    v17 = v49;
    sub_10076D40C();
    v16(v12, v8);
    sub_10076D17C();
    sub_10075FE7C();
    v16(v12, v8);
    sub_10000A5D4(&unk_100952280);
    sub_10075FE9C();
    sub_10076D17C();
    sub_10075FE7C();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  sub_100770ACC();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = sub_1007706FC();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000CF78((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  sub_10076D2AC();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_10000CF78(v27, v27[3]);
  sub_10076D2AC();
  sub_10000CF78(v27, v27[3]);
  if (sub_10076D20C())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    sub_10076D42C();
  }

  sub_10035EAE8(&v52);
  if (v53)
  {
    sub_100012498(&v52, v54);
    sub_10000CF78(v54, v55);
    sub_10076D2AC();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000CF78((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    sub_10076D42C();
    sub_10000CF78((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    sub_1000FF02C();
    sub_10076D40C();
    (*(v9 + 8))(v12, v8);
    sub_10000CD74(v54);
  }

  else
  {
    sub_10000CFBC(&v52, &unk_10094DA00);
  }

  v31 = v50;
  sub_10035EAE8(v54);
  v32 = v55;
  sub_10000CFBC(v54, &unk_10094DA00);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = sub_1007706FC();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = sub_10077071C(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_10076D17C();
      sub_10075FE7C();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = sub_1007706EC();

  if (v38)
  {
    sub_10035EAE8(v54);
    sub_10000CFBC(v54, &unk_10094DA00);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000A5D4(&unk_100952280);
  v40 = v49;
  sub_10075FE9C();
  sub_10076D17C();
  sub_10075FE7C();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10076D17C();
  sub_10075FE7C();
  v41(v12, v8);
  sub_10076D17C();
  sub_10075FE7C();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  sub_10076D42C();
  sub_10000CF78((a2 + v39[9]), *(a2 + v39[9] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v41(v12, v8);
  sub_10000CF78((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  sub_10076D2BC();
  sub_10000CF78((a2 + v39[15]), *(a2 + v39[15] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v41(v12, v8);
  sub_10000CF78((a2 + v39[16]), *(a2 + v39[16] + 24));
  sub_1000FF02C();
  sub_10076D40C();
  v41(v12, v8);
  return a3;
}