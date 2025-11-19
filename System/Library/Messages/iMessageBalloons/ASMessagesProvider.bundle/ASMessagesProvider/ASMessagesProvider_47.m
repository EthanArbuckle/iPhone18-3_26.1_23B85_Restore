void sub_544DA4()
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
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = sub_76A770();

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

  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_5436B8(v13);
}

unint64_t sub_544FC0()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;
  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (result >> 62)
  {
    goto LABEL_74;
  }

  v3 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = result;

  result = sub_143F28(0, v3 & ~(v3 >> 63), 0);
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
        v3 = sub_76A860();
        result = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = sub_76A770();
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
      sub_545500(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = *(v4 + 2);
      v14 = *(v4 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_143F28((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      *(v4 + 2) = v15 + 1;
      v16 = &v4[2 * v15];
      *(v16 + 4) = v10;
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
      v1 = sub_76A860();
      v17 = v41;
    }

    else
    {
      v1 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
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
          result = sub_76A770();
          v20 = result;
        }

        else
        {
          if (v19 >= *(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = *(v4 + 2);
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_pagingProgress;
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
              v39 = sub_76A950();

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
          v35 = sub_76A950();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_5DA464();
          sub_5DA768();
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

id sub_545500@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
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
  v33 = a2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = sub_76A950();

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

    v34 = sub_76A950();

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
  v37 = sub_76A950();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_545984(void *a1)
{
  sub_543294(0);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v6 = v4, objc_msgSend(*(v5 + 32), "frame"), v6 == v7))
  {
    *(v1 + v3) = 0;

    sub_545AB8(0);
  }

  else
  {
    *(v1 + v3) = 1;

    sub_543FF8(1u);
  }
}

void sub_545AB8(char a1)
{
  v2 = v1;
  v4 = sub_760180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker);
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
    sub_544880(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = sub_76A950();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = sub_76A950();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount);
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
  sub_544AB0(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_190A64(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = sub_7653A0();
      v35 = v18;
      v36 = sub_21E944();
      v19 = sub_B1B4(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = sub_765C30();
      sub_BEB8(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        sub_760160();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_18F7B4(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = sub_7653A0();
    v35 = v25;
    v36 = sub_21E944();
    v26 = sub_B1B4(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = sub_765C30();
    sub_BEB8(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_545F10()
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

unint64_t sub_5460CC()
{
  result = qword_95A728;
  if (!qword_95A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A728);
  }

  return result;
}

uint64_t sub_546120(int a1, int a2, double a3, double a4)
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
    v13 = sub_76A950();

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

  v20 = sub_76A950();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

uint64_t sub_546340(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87F130;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_54638C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_5463DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_5463F4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_87F198;
  v6._object = a2;
  v4 = sub_76A8E0(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_546440()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_10F400(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_54655C()
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
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_54336C();
  }

  sub_544DA4();
  sub_544FC0();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_7653A0();
    v19 = v10;
    v11 = sub_21E944();
    v20 = v11;
    v12 = sub_B1B4(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = sub_765C30();
    sub_BEB8(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_B1B4(v18);
      v14(v16, v13, v10);
      v17 = sub_765C30();
      sub_BEB8(v18);
      if ((v17 & 1) == 0)
      {
        sub_191690(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_54670C()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
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
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_54336C();
    }

    sub_544DA4();

    sub_544FC0();
  }
}

unint64_t sub_5467F0()
{
  result = qword_95A738;
  if (!qword_95A738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A738);
  }

  return result;
}

uint64_t sub_546844()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_759950();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_940AD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_161DC(v11, qword_99E410);
  v12 = sub_BE38(v11, qword_99E410);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_BD88(&qword_93FBE0);
  sub_7592E0();
  sub_759310();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = sub_759930();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_93DA08 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v0, qword_99F610);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_BE70(0, &qword_93E540);
  v20 = sub_769FD0();
  sub_BE70(0, &qword_93E550);
  sub_769E50();
  v22 = v21;
  sub_34698(&v29, v12);
  sub_34698(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_34698(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_546CA0()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_759950();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_161DC(v8, qword_99E428);
  v9 = sub_BE38(v8, qword_99E428);
  v10 = sub_766970();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v28);
  sub_766960();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v25);
  sub_766960();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = sub_759930();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_93DA08 != -1)
  {
    swift_once();
  }

  v16 = sub_BE38(v0, qword_99F610);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_BE70(0, &qword_93E550);
  sub_769E50();
  v19 = v18;
  sub_34698(&v28, v9);
  sub_34698(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_34698(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_54702C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_766950();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_7672E0();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v69 = (&v54 - v10);
  __chkstk_darwin(v11);
  v68 = (&v54 - v12);
  __chkstk_darwin(v13);
  v67 = (&v54 - v14);
  v15 = sub_766BD0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = *(v3 + 120);
  v66 = v3;
  if (v24 == 1)
  {
    v58 = v21;
    sub_766BA0();
    sub_B170(v3, *(v3 + 24));
    sub_7665D0();
    sub_549D80(v3, v73);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v73, 0x108uLL);
    v26 = v58;
    sub_766BB0();

    sub_BEB8(v74);
    v27 = *(v16 + 8);
    v56 = v16 + 8;
    v57 = v27;
    v27(v26, v15);
    sub_134D8(v3 + 40, v74);
    v28 = *(v3 + 248);
    v29 = v67;
    v67[3] = &type metadata for CGFloat;
    v29[4] = &protocol witness table for CGFloat;
    *v29 = v28;
    v59 = v23;
    v30 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v32 = v71;
    v31(v29, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v32);
    v55 = v19;
    v31(v69, v33, v32);
    v60 = v16;
    v31(v70, v33, v32);
    v73[3] = sub_7672F0();
    v73[4] = &protocol witness table for Resize;
    sub_B1B4(v73);
    v34 = v66;
    sub_767300();
    v35 = v55;
    sub_766BB0();
    v36 = v57;
    v57(v35, v30);
    sub_BEB8(v73);
    v37 = v58;
    sub_766BA0();
    sub_549D80(v34, v73);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v73, 0x108uLL);
    sub_766BB0();

    v36(v37, v30);
    v73[3] = v30;
    v73[4] = &protocol witness table for HorizontalStack;
    v39 = sub_B1B4(v73);
    v40 = v59;
    (*(v60 + 16))(v39, v59, v30);
    v75 = v30;
    v76 = &protocol witness table for HorizontalStack;
    sub_B1B4(v74);
    sub_766BB0();
    v41 = v35;
    v42 = v66;
    v36(v41, v30);
    v36(v40, v30);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_766BA0();
    sub_B170(v3, *(v3 + 24));
    sub_7665D0();
    sub_549D80(v3, v73);
    v43 = swift_allocObject();
    memcpy((v43 + 16), v73, 0x108uLL);
    sub_766BB0();

    sub_BEB8(v74);
    v59 = *(v16 + 8);
    v60 = v16 + 8;
    v59(v19, v15);
    sub_134D8(v3 + 40, v74);
    v44 = *(v3 + 248);
    v45 = v67;
    v67[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    *v45 = v44;
    v58 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46 = v71;
    v31(v45, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v46);
    v31(v69, v33, v46);
    v31(v70, v33, v46);
    v73[3] = sub_7672F0();
    v73[4] = &protocol witness table for Resize;
    sub_B1B4(v73);
    v42 = v66;
    sub_767300();
    v47 = v58;
    v75 = v58;
    v76 = &protocol witness table for HorizontalStack;
    sub_B1B4(v74);
    sub_766BB0();
    v59(v23, v47);
  }

  sub_BEB8(v73);
  v48 = v62;
  sub_766930();
  sub_549D80(v42, v73);
  v49 = swift_allocObject();
  memcpy((v49 + 16), v73, 0x108uLL);
  v50 = v64;
  v72[3] = v64;
  v72[4] = &protocol witness table for VerticalStack;
  sub_B1B4(v72);
  sub_766940();

  (*(v63 + 8))(v48, v50);
  v51 = v67;
  *v67 = sub_E69A4;
  v51[1] = 0;
  v52 = v71;
  v31(v51, enum case for Resize.Rule.recalculated(_:), v71);
  v31(v68, v33, v52);
  v31(v69, v33, v52);
  v31(v70, v33, v52);
  sub_767300();
  return sub_BEB8(v74);
}

uint64_t sub_547968(uint64_t a1, uint64_t a2)
{
  sub_134D8(a2 + 128, v4);
  sub_7668B0();
  sub_134D8(a2 + 168, v4);
  return sub_7668C0();
}

double sub_5479BC()
{
  v1 = sub_7672F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v0, v0[3]);
  sub_7665D0();
  sub_B170(v18, v18[3]);
  sub_7673F0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_BEB8(v18);
  sub_B170(v0, v0[3]);
  v19.var0 = v6;
  v19.var1 = v8;
  v19.var2 = v10;
  v19.var3 = v12;
  if (sub_766A10(v19) > 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  sub_54702C(v13, v4);
  sub_7673F0();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_547BB0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = sub_7672F0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(v4, v4[3]);
  sub_7665D0();
  sub_B170(v24, v24[3]);
  sub_7673F0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_BEB8(v24);
  sub_B170(v4, v4[3]);
  v25.var0 = v14;
  v25.var1 = v16;
  v25.var2 = v18;
  v25.var3 = v20;
  if (sub_766A10(v25) > 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = 3;
  }

  if (sub_766BC0())
  {
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    CGRectGetWidth(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    CGRectGetHeight(v27);
  }

  sub_54702C(v21, v12);
  sub_7673E0();
  return (*(v10 + 8))(v12, v9);
}

id sub_547DF4()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_95A740 = result;
  return result;
}

char *sub_547F94(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_76A270();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_5498C4(a1, &v5[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_76A3A0();
  v28 = sub_76A3F0();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  sub_76A420();
  sub_76A410();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_362208(v18, v21);
    sub_76A420();
    sub_502E14(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    sub_76A280();
    sub_76A420();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView]];
  sub_549928(a1);
  return v27;
}

id sub_54838C()
{
  v1 = v0;
  v2 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_76A410();
  v8 = sub_76A3F0();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_362208(v7, v4);
    sub_76A420();
    sub_502E14(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    sub_76A390();
    sub_76A420();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

id sub_54858C@<X0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_54986C();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_BE70(0, &qword_950A70);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_BE70(0, &qword_949D90);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_134D8(v11, v7 + 144);
      sub_134D8(v11 + 40, v7 + 184);
      sub_134D8(v11 + 96, v7 + 224);
      v12 = v9;
      result = [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = v15;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = sub_766BD0();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_B1B4(a1);
  return sub_766BA0();
}

uint64_t sub_548744()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&qword_95A868);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_BD88(&unk_95A870);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_BD88(&unk_954ED0);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = sub_7666D0();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_BE70(0, &qword_93F900);
  v30 = v1 + OBJC_IVAR____TtC18ASMessagesProvider22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = sub_769E10();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_5498C4(v30, v72);
  sub_76A410();
  v33 = sub_76A3F0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_362208(v19, v73);
    sub_76A420();
    sub_502E14(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_5498C4(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_549AA8(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    sub_767BA0();
    v47 = sub_767B90();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    sub_76A340();
    sub_76A420();
  }

  sub_76A410();
  if (v35(v16, 1, v33))
  {
    sub_362208(v16, v73);
    sub_76A420();
    sub_502E14(v16);
  }

  else
  {
    v48 = v68;
    sub_5498C4(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_549AA8(v48, v50 + v49);
    v51 = v64;
    sub_7679A0();
    v52 = sub_767990();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_76A330();
    sub_76A420();
  }

  v53 = v69;
  sub_76A410();
  if (v35(v53, 1, v33))
  {
    sub_362208(v53, v73);
    sub_76A420();
    sub_502E14(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    sub_76A220();
    sub_76A420();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    sub_769240();
    v59 = sub_769210();

    [v57 setCompositingFilter:v59];
  }

  sub_76A410();
  if (v35(v38, 1, v33))
  {
    sub_362208(v38, v73);
    sub_76A420();

    sub_549928(v32);
    return sub_502E14(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = sub_76A230();
    sub_767760();
    v62(v74, 0);
    sub_76A420();

    return sub_549928(v32);
  }
}

uint64_t sub_548FB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_756F10();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_1EABC();
  v11 = a2;
  sub_756F20();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_489AC0();
  return sub_756F20();
}

id sub_5490BC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_549270(double a1, double a2)
{
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_54858C(v12);
      sub_B170(v12, v12[3]);
      [v2 layoutMargins];
      sub_769DA0();
      v9 = [v2 traitCollection];
      sub_7673F0();

      [v2 layoutMargins];
      sub_769DC0();
      v6 = v10;
      sub_BEB8(v12);
    }
  }

  return v6;
}

uint64_t sub_5494A4()
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
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

uint64_t sub_549590(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_7666D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_549650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_7666D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5496F4()
{
  sub_199524();
  if (v0 <= 0x3F)
  {
    sub_BE70(319, &qword_947630);
    if (v1 <= 0x3F)
    {
      sub_BE70(319, &qword_93E540);
      if (v2 <= 0x3F)
      {
        sub_549804();
        if (v3 <= 0x3F)
        {
          sub_7666D0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_549804()
{
  if (!qword_95A808)
  {
    sub_BE70(255, &qword_95A810);
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_95A808);
    }
  }
}

unint64_t sub_54986C()
{
  result = qword_95A860;
  if (!qword_95A860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A860);
  }

  return result;
}

uint64_t sub_5498C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_549928(uint64_t a1)
{
  v2 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_549984()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_BEB8(v0 + v3);
  sub_BEB8(v0 + v3 + 40);

  sub_BEB8(v0 + v3 + 96);
  v5 = v1[12];
  v6 = sub_7666D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_549AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_549B0C(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_5490BC(a1, v4, v5);
}

uint64_t sub_549B80()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_BEB8(v0 + v3);
  sub_BEB8(v0 + v3 + 40);

  sub_BEB8(v0 + v3 + 96);
  v5 = v1[12];
  v6 = sub_7666D0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_549CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_548FB4(a1, v6, v7, v8, a2);
}

uint64_t sub_549E04()
{
  sub_BEB8(v0 + 16);
  sub_BEB8(v0 + 56);
  sub_BEB8(v0 + 96);
  sub_BEB8(v0 + 144);
  sub_BEB8(v0 + 184);
  sub_BEB8(v0 + 224);

  return _swift_deallocObject(v0, 280, 7);
}

void sub_549E78(uint64_t a1, void *a2, uint64_t a3)
{
  v9._object = 0x80000000007D9F40;
  v10._countAndFlagsBits = 0xD000000000000050;
  v10._object = 0x80000000007D9F60;
  v9._countAndFlagsBits = 0xD000000000000017;
  sub_75B750(v9, v10);
  v5 = sub_769350();

  v6 = v5 < 19;
  v7 = sub_2E0248(v5 < 19);
  v8 = sub_2E0514(v6);
  [v7 size];
  [v8 size];

  sub_2E26CC(1, v6, 0, 2, a2, a3);
}

uint64_t sub_549FF0()
{
  result = sub_7572E0();
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

uint64_t sub_54A098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&qword_955640);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1ED18(a3, v25 - v10, &qword_955640);
  v12 = sub_769590();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10A2C(v11, &qword_955640);
  }

  else
  {
    sub_769580();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_769540();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_769300() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10A2C(a3, &qword_955640);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10A2C(a3, &qword_955640);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_54A398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_BD88(&qword_955640);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1ED18(a3, v25 - v10, &qword_955640);
  v12 = sub_769590();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10A2C(v11, &qword_955640);
  }

  else
  {
    sub_769580();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_769540();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_769300() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_BD88(&qword_95AA38);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_10A2C(a3, &qword_955640);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10A2C(a3, &qword_955640);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_BD88(&qword_95AA38);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id sub_54A6AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_BD88(&unk_95A9D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_7572E0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "prepareForReuse", v8);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask;
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask])
  {

    sub_7695C0();
  }

  *&v1[v11] = 0;

  sub_7572D0();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
  swift_beginAccess();
  (*(v7 + 40))(&v1[v12], v10, v6);
  swift_endAccess();
  sub_759190();
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v13 setHidden:1];
  v14 = &v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *(v14 + 1);
  if (v15)
  {
    v16 = *v14;
    v17 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v17 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {

      v18 = sub_769210();

      [v13 setText:v18];

      [v13 setHidden:0];
    }
  }

  [v1 setNeedsLayout];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v19 = &v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;

  sub_54B2D4();
  v20 = sub_7621E0();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_54F2A4(v5, &v1[v21]);
  swift_endAccess();
  return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] setImage:0];
}

uint64_t sub_54A9F4(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_95A9C0);
  sub_75C760();
  if (!v6)
  {
    return sub_10A2C(&v5, &qword_95A9C8);
  }

  sub_10914(&v5, v7);
  v3 = [sub_527DE4() traitCollection];
  swift_unknownObjectRelease();
  sub_54D184(v7, v3, a2);

  return sub_BEB8(v7);
}

uint64_t sub_54AB6C(uint64_t a1, int a2)
{
  v29 = a2;
  v30 = a1;
  v27[1] = *v2;
  v3 = sub_7572E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27[0] = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_95AA20);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v27 - v8;
  v10 = sub_BD88(&qword_944440);
  __chkstk_darwin(v10 - 8);
  v31 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v27 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v27 - v17;
  (*(v2 + qword_95A888))(v16);
  v19 = *(v4 + 16);
  v28 = v2;
  v19(v14, v2 + qword_95A880, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v20 = *(v7 + 56);
  sub_1ED18(v18, v9, &qword_944440);
  sub_1ED18(v14, &v9[v20], &qword_944440);
  v21 = *(v4 + 48);
  if (v21(v9, 1, v3) != 1)
  {
    sub_1ED18(v9, v31, &qword_944440);
    if (v21(&v9[v20], 1, v3) != 1)
    {
      v23 = v27[0];
      (*(v4 + 32))(v27[0], &v9[v20], v3);
      sub_550FA0(&qword_95AA30, &type metadata accessor for UUID);
      v24 = v31;
      v25 = sub_7691C0();
      v26 = *(v4 + 8);
      v26(v23, v3);
      sub_10A2C(v14, &qword_944440);
      sub_10A2C(v18, &qword_944440);
      v26(v24, v3);
      result = sub_10A2C(v9, &qword_944440);
      if ((v25 & 1) == 0)
      {
        return result;
      }

      return sub_75C680();
    }

    sub_10A2C(v14, &qword_944440);
    sub_10A2C(v18, &qword_944440);
    (*(v4 + 8))(v31, v3);
    return sub_10A2C(v9, &unk_95AA20);
  }

  sub_10A2C(v14, &qword_944440);
  sub_10A2C(v18, &qword_944440);
  if (v21(&v9[v20], 1, v3) != 1)
  {
    return sub_10A2C(v9, &unk_95AA20);
  }

  sub_10A2C(v9, &qword_944440);
  return sub_75C680();
}

uint64_t sub_54B054()
{
  swift_unknownObjectRelease();
  v1 = qword_95A880;
  v2 = sub_7572E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_54B0D0()
{
  sub_54B054();

  return swift_deallocClassInstance();
}

Swift::Int sub_54B13C()
{
  sub_76AA30();
  sub_76AA40(v0);
  return sub_76AA80();
}

void (*sub_54B18C(uint64_t *a1))(id *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_54AAC4();
  return sub_54B1D4;
}

void sub_54B1D4(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_54AB18();
  }

  else
  {
    sub_54AB18();
  }
}

Swift::Int sub_54B288()
{
  sub_76AA30();
  sub_54B01C();
  return sub_76AA80();
}

id sub_54B2D4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText + 8];
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText] & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel];

      sub_75E010();
      v5 = sub_769210();

      [v4 setText:v5];

      [v4 setHidden:0];
    }
  }

  return [v1 setNeedsLayout];
}

char *sub_54B3AC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_7593D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v16 = sub_75C840();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_75BB20();
  *&v4[v17] = sub_75BB00();
  v18 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v21 = sub_7621E0();
  (*(*(v21 - 8) + 56))(&v4[v20], 1, 1, v21);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask] = 0;
  sub_7572D0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient] = [objc_allocWithZone(sub_764460()) init];
  v22 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView] = v22;
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v24 = v22;
  sub_759200();

  (*(v12 + 8))(v14, v11);
  v25 = *&v5[v23];
  sub_7590D0();

  v26 = *&v5[v23];
  sub_7590C0();

  v27 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] = v27;
  [v27 _setCornerRadius:12.0];
  v28 = [objc_allocWithZone(sub_75E040()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v29 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel] = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  [*&v5[v29] setEditable:0];
  [*&v5[v29] setSelectable:0];
  [*&v5[v29] setUserInteractionEnabled:0];
  v33 = *&v5[v29];
  sub_75DFB0();

  v34 = [v30 redColor];
  v35 = sub_54BB04(v34);

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea] = v35;
  v36 = [v30 blackColor];
  v37 = sub_54BB04(v36);

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] = v37;
  v38 = *&v5[v29];
  sub_75DFF0();

  v60.receiver = v5;
  v60.super_class = ObjectType;
  v39 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v40 = [v30 clearColor];
  [v39 setBackgroundColor:v40];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v44 = [v39 contentView];
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v45 = [v39 contentView];
  [v45 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView]];

  v46 = [v39 contentView];
  [v46 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient]];

  v47 = [v39 contentView];
  [v47 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView]];

  v48 = [v39 contentView];
  [v48 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel]];

  v49 = [v39 contentView];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  [v49 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel]];

  v51 = [*&v39[v50] layer];
  [v51 setCompositingFilter:kCAFilterPlusL];

  v52 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v52)
  {
    v53 = v52;
    v54 = [v39 contentView];
    [v54 addSubview:v53];
  }

  v55 = *&v39[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
  if (v55)
  {
    v56 = v55;
    v57 = [v39 contentView];
    [v57 addSubview:v56];
  }

  sub_BD88(&qword_9477F0);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_77B6D0;
  *(v58 + 32) = sub_7676F0();
  *(v58 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();
  swift_unknownObjectRelease();

  return v39;
}

id sub_54BB04(void *a1)
{
  if ((byte_94AF68 & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = sub_76A950();

  if (v2)
  {
LABEL_5:
    v3 = [objc_allocWithZone(UIView) init];
    v4 = [v3 layer];
    v5 = [a1 CGColor];
    [v4 setBorderColor:v5];

    v6 = [v3 layer];
    [v6 setBorderWidth:1.0];

    return v3;
  }

  return 0;
}

void sub_54BC5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_7643E0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_7664F0();
  v73 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_95A9D0);
  __chkstk_darwin(v5 - 8);
  v7 = v70 - v6;
  v8 = sub_7621E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = v70 - v14;
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v13);
  v16 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1ED18(&v1[v16], v7, &unk_95A9D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10A2C(v7, &unk_95A9D0);
    return;
  }

  (*(v9 + 32))(v15, v7, v8);
  sub_54C5B8();

  sub_75D650();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [v1 traitCollection];
  sub_54CC3C(v25, v87, v18, v20, v22, v24);
  v26 = *v87;
  v27 = *&v87[1];
  v28 = *&v87[2];
  v29 = *&v87[3];
  v78 = v88;

  v30 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v31 = [v30 textContainer];
  v32 = [v31 exclusionPaths];

  v33 = sub_BE70(0, &qword_95AA08);
  sub_769460();

  v70[1] = v33;
  LOBYTE(v32) = sub_769490();

  if (v32)
  {
    v34 = [v30 textContainer];
    isa = sub_769450().super.isa;
    [v34 setExclusionPaths:isa];
  }

  if (v88)
  {
    v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
    if (!v36)
    {
      goto LABEL_13;
    }

    if (v78)
    {
      v37 = 0.0;
      v78 = 1;
      v38 = 0.0;
      v39 = 0.0;
      v40 = 0.0;
LABEL_11:
      [v36 setFrame:{v37, v38, v39, v40}];
      goto LABEL_13;
    }

LABEL_10:
    v78 = 0;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v29;
    goto LABEL_11;
  }

  sub_75D650();
  sub_769D20();
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v36 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugPreferredArtworkSafeArea];
  if (v36)
  {
    goto LABEL_10;
  }

  v78 = 0;
LABEL_13:
  v45 = [v1 contentView];
  [v45 bounds];

  sub_764450();
  v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView];
  if ([v46 isHidden])
  {
    v46 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView];
  }

  v47 = v46;
  (*(v9 + 16))(v11, v15, v8);
  v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v85[3] = sub_75BB20();
  v85[4] = &protocol witness table for UILabel;
  v85[0] = v48;
  v83 = sub_75E040();
  v84 = sub_550FA0(&qword_95AA10, &type metadata accessor for DynamicTypeTextView);
  v82 = v30;
  v49 = sub_BE70(0, &qword_93E550);
  v81 = &protocol witness table for UIView;
  v80 = v49;
  v79 = v47;
  v50 = v48;
  v51 = v30;
  v71 = v47;
  v52 = v74;
  sub_7643D0();
  sub_75D650();
  v53 = v72;
  sub_7643A0();
  (*(v76 + 8))(v52, v77);
  (*(v73 + 8))(v53, v75);
  LOBYTE(v85[0]) = 2;
  if ((v78 & 1) != 0 || (sub_54D078(v85, v1) & 1) == 0)
  {
    v69 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea];
    if (v69)
    {
      [v69 setFrame:{0.0, 0.0, 0.0, 0.0}];

      goto LABEL_21;
    }

    (*(v9 + 8))(v15, v8);
  }

  else
  {
    v54 = [v51 font];
    if (v54)
    {
      v55 = v54;
      [v54 lineHeight];
      v57 = v56;

      v58 = v26 + 0.0;
      v59 = v27 + 0.0;
      v60 = v28 + 0.0;
      v61 = v29 + v57 * -0.5;
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_debugActualArtworkSafeArea] setFrame:{v58, v59, v60, v61}];
      v62 = [v51 textContainer];
      sub_BD88(&unk_93F5C0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_77D9F0;
      [v1 convertRect:v51 toCoordinateSpace:{v58, v59, v60, v61}];
      *(v63 + 32) = [objc_opt_self() bezierPathWithRect:{v64, v65, v66, v67}];
      v68 = sub_769450().super.isa;

      [v62 setExclusionPaths:v68];

LABEL_21:
      (*(v9 + 8))(v15, v8);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_54C5B8()
{
  v1 = v0;
  v2 = sub_765240();
  v32 = *(v2 - 8);
  v33 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7643C0();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v40 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766690();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_761270();
  v41 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_95A9D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_7621E0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1ED18(&v1[v20], v15, &unk_95A9D0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10A2C(v15, &unk_95A9D0);
    return 0;
  }

  (*(v17 + 32))(v19, v15, v16);
  if (!sub_762190())
  {
    (*(v17 + 8))(v19, v16);
    return 0;
  }

  sub_7621C0();
  v21 = v41;
  v22 = (*(v41 + 88))(v12, v10);
  if (v22 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v22 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    [v1 frame];
    sub_765260();
    v26 = v37;
    sub_7666A0();
    sub_766600();
    (*(v38 + 8))(v26, v39);
    sub_765140();
  }

  else
  {
    if (v22 != enum case for ChartOrCategoryBrickStyle.round(_:))
    {
      (*(v17 + 8))(v19, v16);

      (*(v21 + 8))(v12, v10);
      return 0;
    }

    v23 = v34;
    sub_762180();
    sub_7643B0();
    v25 = v24;
    (*(v35 + 8))(v23, v36);
    if (v25)
    {
      (*(v17 + 8))(v19, v16);

      return 0;
    }

    v30 = v31;
    sub_765250();
    sub_765210();
    (*(v32 + 8))(v30, v33);
  }

  v27 = sub_765330();
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView];
  sub_7652E0();
  sub_7591B0();
  [v28 setContentMode:sub_765140()];
  sub_75DEF0();
  sub_7591F0();
  if (!sub_7651A0())
  {
    sub_BE70(0, &qword_93E540);
    sub_76A030();
  }

  sub_759070();

  (*(v17 + 8))(v19, v16);
  return v27;
}

uint64_t sub_54CC3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  *&v41 = a1;
  v11 = sub_762630();
  __chkstk_darwin(v11 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = sub_762660();
  *&v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&qword_95AA18);
  __chkstk_darwin(v16 - 8);
  v18 = &v38 - v17;
  v19 = sub_762680();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7621B0();
  sub_B170(v42, v42[3]);
  sub_75E9C0();
  v23 = (*(v20 + 48))(v18, 1, v19);
  if (v23 == 1)
  {
    sub_10A2C(v18, &qword_95AA18);
    result = sub_BEB8(v42);
    v25 = 0uLL;
    v26 = 0uLL;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    sub_BEB8(v42);
    sub_762670();
    sub_762640();
    v27 = sub_550D84(v13, [v38 effectiveUserInterfaceLayoutDirection]);
    sub_762620();
    sub_762650();
    if (v27 != 3 && v27)
    {
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetMinX(v44);
    }

    else
    {
      v43.origin.x = a3;
      v43.origin.y = a4;
      v43.size.width = a5;
      v43.size.height = a6;
      CGRectGetMaxX(v43);
    }

    v28 = v40;
    v29 = v39;
    v30 = a3;
    v31 = a4;
    v32 = a5;
    v33 = a6;
    if (v27 > 1u)
    {
      CGRectGetMidY(*&v30);
    }

    else
    {
      CGRectGetMinY(*&v30);
    }

    sub_769CA0();
    v39 = v34;
    v40 = v35;
    v38 = v36;
    v41 = v37;
    (*(v29 + 8))(v15, v28);
    result = (*(v20 + 8))(v22, v19);
    *&v26 = v38;
    *&v25 = v39;
    *(&v25 + 1) = v40;
    *(&v26 + 1) = v41;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v23 == 1;
  return result;
}

id sub_54D078(_BYTE *a1, uint64_t a2)
{
  LODWORD(v2) = *a1;
  if (v2 != 2)
  {
    return (v2 & 1);
  }

  v4 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel);
  [v4 frame];
  Height = CGRectGetHeight(v9);
  result = [v4 font];
  if (result)
  {
    v2 = result;
    [result lineHeight];
    v8 = v7;

    LOBYTE(v2) = v8 * 1.5 < Height;
    swift_beginAccess();
    *a1 = v2;
    return (v2 & 1);
  }

  __break(1u);
  return result;
}

id sub_54D184(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v58 = a2;
  v6 = sub_BD88(&unk_95A9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v9 = sub_BD88(&qword_955640);
  __chkstk_darwin(v9 - 8);
  v56 = &v48 - v10;
  v11 = sub_7572E0();
  v55 = *(v11 - 8);
  v12 = *(v55 + 64);
  __chkstk_darwin(v11);
  v57 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  sub_B170(a1, a1[3]);
  if (sub_75E9D0())
  {

    v16 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    [v16 setHidden:0];
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:1];
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:0];
  }

  sub_B170(a1, a1[3]);
  if (sub_762A60())
  {
    sub_765390();
    v18 = sub_769490();

    if (v18)
    {
      sub_B170(a1, a1[3]);
      v19 = sub_762A50();
      if (v19)
      {
        v20 = v19;
        sub_757860();
        sub_768900();
        sub_768ED0();
        v53 = v20;
        v54 = *&v60[0];
        v21 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_backgroundGradient];
        [v21 setBackgroundColor:v20];
        [v21 setHidden:0];
        [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView] setHidden:0];
        [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_artworkView] setHidden:1];
        sub_7572D0();
        v22 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
        swift_beginAccess();
        v23 = v55;
        (*(v55 + 40))(&v4[v22], v15, v11);
        swift_endAccess();
        v24 = *(v23 + 16);
        v24(v57, &v4[v22], v11);
        v52 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask;
        if (*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask])
        {

          sub_7695C0();
        }

        v25 = sub_769590();
        (*(*(v25 - 8) + 56))(v56, 1, 1, v25);
        v51 = v15;
        v24(v15, v57, v11);
        sub_134D8(a1, v60);
        sub_769570();
        v49 = v4;

        v50 = v58;
        v48 = sub_769560();
        v26 = v55;
        v27 = (*(v55 + 80) + 40) & ~*(v55 + 80);
        v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
        v29 = (v28 + 47) & 0xFFFFFFFFFFFFFFF8;
        v30 = swift_allocObject();
        *(v30 + 2) = v48;
        *(v30 + 3) = &protocol witness table for MainActor;
        *(v30 + 4) = v49;
        (*(v26 + 32))(&v30[v27], v51, v11);
        sub_10914(v60, &v30[v28]);
        *&v30[v29] = v54;
        *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v50;
        v31 = sub_54A098(0, 0, v56, &unk_7A4850, v30);

        (*(v26 + 8))(v57, v11);
        *&v4[v52] = v31;
      }
    }
  }

  sub_134D8(a1, v60);
  sub_134D8(v60, v59);
  v32 = v58;
  sub_7621A0();
  sub_BEB8(v60);
  v33 = sub_7621E0();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  v34 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_54F2A4(v8, &v4[v34]);
  swift_endAccess();
  sub_54DF9C();
  sub_B170(a1, a1[3]);
  v35 = sub_75E9B0();
  v37 = v36;
  [*&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel] setHidden:1];
  v38 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText];
  *v38 = v35;
  v38[1] = v37;

  sub_54B2D4();
  sub_B170(a1, a1[3]);
  v39 = sub_75E9A0();
  v41 = v40;
  v42 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  [v42 setHidden:1];
  v43 = &v4[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText];
  *v43 = v39;
  v43[1] = v41;

  v44 = v43[1];
  if (v44)
  {
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = *v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {

      v46 = sub_769210();

      [v42 setText:v46];

      [v42 setHidden:0];
    }
  }

  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_54D920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  v9 = sub_7572E0();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  sub_769570();
  v8[16] = sub_769560();
  v11 = sub_769540();
  v8[17] = v11;
  v8[18] = v10;

  return _swift_task_switch(sub_54DA1C, v11, v10);
}

uint64_t sub_54DA1C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[8];
  v6 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_imageView];
  (*(v2 + 16))(v1, v0[9], v3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BD88(&qword_95A9E0);
  v8 = swift_allocObject();
  v0[19] = v8;
  *(v8 + 16) = v6;
  (*(v2 + 32))(v8 + qword_95A880, v1, v3);
  v9 = (v8 + qword_95A888);
  *v9 = sub_54F854;
  v9[1] = v7;
  v0[7] = v5;
  v10 = v4[3];
  v11 = v4[4];
  v12 = sub_B170(v4, v10);
  v0[5] = v10;
  v0[6] = *(v11 + 8);
  v13 = sub_B1B4(v0 + 2);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  v14 = v6;
  v15 = [v5 contentView];
  [v15 frame];
  v17 = v16;
  v19 = v18;

  v20 = sub_54F85C();

  v21 = swift_task_alloc();
  v0[20] = v21;
  v22 = type metadata accessor for ChartOrCategoryBrickCollectionViewCell();
  v23 = sub_550FA0(&qword_95A9F0, type metadata accessor for ChartOrCategoryBrickCollectionViewCell);
  *v21 = v0;
  v21[1] = sub_54DCAC;
  v24 = v0[11];
  v25 = v0[12];
  v26 = v0[9];
  v27.n128_u64[0] = v17;
  v28.n128_u64[0] = v19;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(v0 + 2, v24, v26, v8, v20, v25, v22, v23, v27, v28);
}

uint64_t sub_54DCAC()
{
  v1 = *v0;

  sub_BEB8(v1 + 16);
  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_54DDF4, v3, v2);
}

uint64_t sub_54DDF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_54DE68@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_currentConfigurationID;
    v4 = Strong;
    swift_beginAccess();
    v5 = sub_7572E0();
    v6 = *(v5 - 8);
    (*(v6 + 16))(a1, &v4[v3], v5);

    return (*(v6 + 56))(a1, 0, 1, v5);
  }

  else
  {
    v8 = sub_7572E0();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_54DF9C()
{
  v1 = v0;
  v68 = sub_761270();
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v71 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v72 = &v58 - v4;
  v5 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v5 - 8);
  v67 = &v58 - v6;
  v69 = sub_762170();
  v77 = *(v69 - 8);
  __chkstk_darwin(v69);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762120();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_95A9D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_7621E0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  swift_beginAccess();
  sub_1ED18(&v1[v19], v14, &unk_95A9D0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_10A2C(v14, &unk_95A9D0);
  }

  v63 = v16;
  v21 = *(v16 + 32);
  v64 = v15;
  v21(v18, v14, v15);
  v22 = [v1 traitCollection];
  v23 = sub_769A20();

  v74 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleLabel];
  v24 = v74;
  v25 = sub_BE70(0, &qword_93E540);
  v26 = sub_769FD0();
  v27 = [v26 resolvedColorWithTraitCollection:v23];

  [v24 setTextColor:v27];
  v65 = v1;
  v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel];
  v73 = v28;
  v58 = v25;
  v29 = sub_769FE0();
  v62 = v23;
  v30 = [v29 resolvedColorWithTraitCollection:v23];

  [v28 setTextColor:v30];
  v66 = v18;
  sub_7621D0();
  sub_762110();
  v31 = v76;
  v32 = v75 + 8;
  v33 = *(v75 + 8);
  v33(v11, v76);
  sub_762160();
  v35 = v77 + 8;
  v34 = *(v77 + 8);
  v36 = v69;
  v34(v8);
  sub_75E000();
  sub_7621D0();
  sub_762100();
  v33(v11, v31);
  v75 = v32;
  v37 = sub_762160();
  v38 = v36;
  v61 = v34;
  (v34)(v8, v36);
  v77 = v35;
  [v73 setNumberOfLines:v37];
  sub_7621D0();
  sub_762110();
  v33(v11, v31);
  v39 = v67;
  sub_762150();
  (v34)(v8, v36);
  v40 = sub_7666D0();
  v41 = *(v40 - 8);
  v59 = *(v41 + 56);
  v60 = v41 + 56;
  v59(v39, 0, 1, v40);
  sub_75DFD0();
  sub_7621D0();
  sub_762100();
  v42 = v76;
  v33(v11, v76);
  sub_762150();
  v43 = v61;
  (v61)(v8, v38);
  v59(v39, 0, 1, v40);
  sub_75BA40();
  v44 = v66;
  sub_7621D0();
  sub_762110();
  v33(v11, v42);
  sub_762140();
  v43(v8, v38);
  sub_75E020();
  sub_7621D0();
  sub_762100();
  v33(v11, v76);
  sub_762140();
  v45 = v8;
  v47 = v72;
  v46 = v73;
  v48 = v38;
  v49 = v68;
  v43(v45, v48);
  v50 = v70;
  sub_75BAB0();
  v51 = v44;
  sub_7621C0();
  v52 = v71;
  (*(v50 + 104))(v71, enum case for ChartOrCategoryBrickStyle.round(_:), v49);
  sub_550FA0(&unk_95A9F8, &type metadata accessor for ChartOrCategoryBrickStyle);
  sub_769430();
  sub_769430();
  if (v80 == v78 && v81 == v79)
  {
    v53 = *(v50 + 8);
    v53(v52, v49);
    v53(v47, v49);

LABEL_7:
    v56 = sub_769FF0();
    [v74 setTextColor:v56];

    v57 = sub_769FE0();
    [v46 setTextColor:v57];

    goto LABEL_8;
  }

  v54 = sub_76A950();
  v55 = *(v50 + 8);
  v55(v52, v49);
  v55(v47, v49);

  if (v54)
  {
    goto LABEL_7;
  }

LABEL_8:
  [v65 setNeedsLayout];

  return (*(v63 + 8))(v51, v64);
}

uint64_t type metadata accessor for ChartOrCategoryBrickCollectionViewCell()
{
  result = qword_95A998;
  if (!qword_95A998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_54EB30()
{
  sub_54EC98(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_54EC98(319, &unk_95A9B0, &type metadata accessor for ChartOrCategoryBrickContext);
    if (v1 <= 0x3F)
    {
      sub_7572E0();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_54EC98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_54ECF0()
{
  result = sub_54C5B8();
  if (result)
  {
    sub_759210();
    sub_550FA0(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }

  return result;
}

uint64_t sub_54EDB0(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v4.value.super.isa = 0;
  v4.is_nil = 0;
  sub_7591D0(v4, a3);
  sub_759210();
  sub_550FA0(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_54EE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_54EF28;
  v16.n128_f64[0] = a6;
  v17.n128_f64[0] = a7;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:size:with:traitCollection:)(a1, a2, a3, a4, a5, v16, v17);
}

uint64_t sub_54EF28(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_54F024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v21 = swift_task_alloc();
  *(v10 + 16) = v21;
  *v21 = v10;
  v21[1] = sub_254BD8;
  v22.n128_f64[0] = a9;
  v23.n128_f64[0] = a10;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:checking:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23);
}

uint64_t sub_54F12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_14FCC;
  v20.n128_f64[0] = a8;
  v21.n128_f64[0] = a9;

  return ThreeDimensionalArtworkViewDisplaying.renderThreeDimensionalImage(for:with:size:into:traitCollection:)(a1, a2, a3, a4, a5, a6, a7, v20, v21);
}

uint64_t sub_54F2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_95A9D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_54F314()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_BEB8(v0 + v5);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_54F41C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_7572E0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_14FCC;

  return sub_54D920(a1, v9, v10, v11, v1 + v6, v1 + v7, v12, v13);
}

uint64_t sub_54F574(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_54F66C;

  return v6(a1);
}

uint64_t sub_54F66C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_54F764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254BD8;

  return sub_54F574(a1, v4);
}

uint64_t sub_54F81C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_54F85C()
{
  result = qword_95A9E8;
  if (!qword_95A9E8)
  {
    sub_133D8(&qword_95A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95A9E8);
  }

  return result;
}

uint64_t sub_54F8C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_54F9B4;

  return v5(v2 + 32);
}

uint64_t sub_54F9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

double sub_54FAC8()
{
  v0 = sub_766D70();
  v81 = *(v0 - 8);
  v82 = v0;
  __chkstk_darwin(v0);
  v80 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_7666D0();
  v88 = *(v84 - 8);
  __chkstk_darwin(v84);
  v79 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_762170();
  v94 = *(v89 - 8);
  __chkstk_darwin(v89);
  v4 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_762120();
  v86 = *(v5 - 8);
  v87 = v5;
  __chkstk_darwin(v5);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_767030();
  v95 = *(v101 - 8);
  __chkstk_darwin(v101);
  v78 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v85 = &v69 - v10;
  __chkstk_darwin(v11);
  v100 = &v69 - v12;
  __chkstk_darwin(v13);
  v91 = &v69 - v14;
  v15 = sub_7643E0();
  v93 = *(v15 - 8);
  __chkstk_darwin(v15);
  v92 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_761270();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_7656C0();
  v98 = *(v21 - 8);
  v99 = v21;
  __chkstk_darwin(v21);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_7621E0();
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v90 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v69 - v27;
  sub_BD88(&qword_95A9C0);
  sub_75C760();
  if (!*(&v111 + 1))
  {
    sub_10A2C(&v110, &qword_95A9C8);
    return 0.0;
  }

  v77 = v15;
  sub_10914(&v110, v113);
  swift_getKeyPath();
  sub_75C7B0();

  sub_134D8(v113, &v110);
  sub_134D8(&v110, &v107);
  sub_7621A0();
  sub_BEB8(&v110);
  swift_getKeyPath();
  sub_75C7B0();

  v83 = v110;
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  sub_7621C0();
  v29 = (*(v18 + 88))(v20, v17);
  if (v29 == enum case for ChartOrCategoryBrickStyle.tile(_:) || v29 == enum case for ChartOrCategoryBrickStyle.pill(_:))
  {
    v63 = v96;
    v62 = v97;
    (*(v96 + 16))(v90, v28, v97);
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v109 = 0;
    v108 = 0u;
    v107 = 0u;
    v64 = sub_7670D0();
    swift_allocObject();
    v65 = sub_7670B0();
    v106[3] = v64;
    v106[4] = &protocol witness table for LayoutViewPlaceholder;
    v106[0] = v65;
    memset(v105, 0, 32);
    v105[32] = 1;
    v66 = v92;
    sub_7643D0();
    sub_764390();
    v59 = v67;
    swift_unknownObjectRelease();
    (*(v93 + 8))(v66, v77);
    (*(v98 + 8))(v23, v99);
    (*(v63 + 8))(v28, v62);
    goto LABEL_8;
  }

  if (v29 != enum case for ChartOrCategoryBrickStyle.round(_:))
  {
    swift_unknownObjectRelease();
    (*(v98 + 8))(v23, v99);
    (*(v96 + 8))(v28, v97);
    sub_BEB8(v113);
    (*(v18 + 8))(v20, v17);
    return 0.0;
  }

  v30 = v85;
  sub_767020();
  sub_7621D0();
  sub_762110();
  v31 = v87;
  v32 = v86 + 8;
  v73 = *(v86 + 8);
  v73(v7, v87);
  v33 = v32;
  v34 = v79;
  sub_762150();
  v72 = *(v94 + 8);
  v94 += 8;
  v74 = v28;
  v72(v4, v89);
  sub_766FF0();
  v35 = *(v88 + 8);
  v88 += 8;
  v70 = v35;
  v35(v34, v84);
  v36 = v95 + 8;
  v76 = *(v95 + 8);
  v71 = v23;
  v76(v30, v101);
  v75 = v36;
  sub_7621D0();
  sub_762110();
  v37 = v31;
  v38 = v73;
  v86 = v33;
  v73(v7, v37);
  sub_762160();
  v39 = v89;
  v40 = v72;
  v72(v4, v89);
  v41 = v100;
  sub_767010();
  v76(v41, v101);
  v42 = v78;
  sub_767020();
  sub_7621D0();
  sub_762100();
  v38(v7, v87);
  sub_762150();
  v40(v4, v39);
  v43 = v85;
  sub_766FF0();
  v70(v34, v84);
  v44 = v42;
  v45 = v101;
  v46 = v76;
  v76(v44, v101);
  v47 = v74;
  sub_7621D0();
  sub_762100();
  v73(v7, v87);
  sub_762160();
  v72(v4, v89);
  sub_767010();
  v48 = v43;
  v46(v43, v45);
  v49 = v47;
  sub_7621B0();
  sub_B170(&v110, *(&v111 + 1));
  sub_75E9B0();
  v94 = *(v95 + 16);
  v95 += 16;
  (v94)(v48, v91, v45);
  sub_766D50();
  v50 = v80;
  sub_766D90();
  sub_BEB8(&v110);
  sub_766D40();
  v51 = v82;
  v52 = *(v81 + 8);
  v52(v50, v82);
  sub_7621B0();
  sub_B170(&v107, *(&v108 + 1));
  sub_75E9A0();
  (v94)(v48, v100, v101);
  sub_766D50();
  sub_766D90();
  sub_BEB8(&v107);
  sub_766D40();
  v52(v50, v51);
  v54 = v96;
  v53 = v97;
  (*(v96 + 16))(v90, v49, v97);
  sub_134D8(&v107, v106);
  sub_134D8(&v110, v105);
  v55 = sub_7670D0();
  swift_allocObject();
  v56 = sub_7670B0();
  v103 = v55;
  v104 = &protocol witness table for LayoutViewPlaceholder;
  v102 = v56;
  v114 = 0u;
  v115 = 0u;
  v116 = 1;
  v57 = v92;
  sub_7643D0();
  sub_764390();
  v59 = v58;
  swift_unknownObjectRelease();
  (*(v93 + 8))(v57, v77);
  sub_BEB8(&v107);
  sub_BEB8(&v110);
  v60 = v101;
  v61 = v76;
  v76(v100, v101);
  v61(v91, v60);
  (*(v98 + 8))(v71, v99);
  (*(v54 + 8))(v49, v53);
LABEL_8:
  sub_BEB8(v113);
  return v59;
}

uint64_t sub_550818(uint64_t a1, uint64_t a2)
{
  v3 = sub_765240();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v19 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7621E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_95A9C0);
  sub_75C760();
  if (!v22)
  {
    return sub_10A2C(&v21, &qword_95A9C8);
  }

  v17 = a2;
  v18 = v7;
  sub_10914(&v21, v23);
  swift_getKeyPath();
  sub_75C7B0();

  sub_134D8(v23, &v21);
  sub_134D8(&v21, v20);
  sub_7621A0();
  sub_BEB8(&v21);
  v14 = _swiftEmptyArrayStorage;
  *&v21 = _swiftEmptyArrayStorage;
  sub_54FAC8();
  if (sub_762190())
  {
    sub_765260();
    sub_7666A0();
    sub_766610();
    sub_765250();
    sub_765210();
    (*(v4 + 8))(v6, v3);
    sub_765330();
    sub_769440();
    if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v21 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    (*(v19 + 8))(v9, v18);
    v14 = v21;
  }

  sub_75DF50();
  if (sub_769490())
  {
    v15._rawValue = v14;
    sub_75A070(v15);

    (*(v11 + 8))(v13, v10);
    return sub_BEB8(v23);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    sub_BEB8(v23);
  }
}

void sub_550C24()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_itemLayoutContext;
  v3 = sub_75C840();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeLabel;
  sub_75BB20();
  *(v1 + v4) = sub_75BB00();
  v5 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_badgeText);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_titleText);
  *v6 = 0;
  v6[1] = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_brickContext;
  v8 = sub_7621E0();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider38ChartOrCategoryBrickCollectionViewCell_renderingTask) = 0;
  sub_7572D0();
  sub_76A840();
  __break(1u);
}

uint64_t sub_550D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_762630();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topTrailing(_:))
  {
    v10 = a2 == 1;
LABEL_5:
    (*(v5 + 8))(a1, v4);
    return v10;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.topLeading(_:))
  {
    v10 = a2 != 1;
    goto LABEL_5;
  }

  if (v9 == enum case for ChartOrCategoryBrickSafeArea.Location.RelativeLocation.midLeading(_:))
  {
    (*(v5 + 8))(a1, v4);
    if (a2 == 1)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_76A730(29);
  v13._object = 0x80000000007E7630;
  v13._countAndFlagsBits = 0xD00000000000001BLL;
  sub_769370(v13);
  sub_76A7F0();
  result = sub_76A840();
  __break(1u);
  return result;
}

uint64_t sub_550FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_550FE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_551020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_254BD8;

  return sub_54F8C0(a1, v4);
}

uint64_t sub_5510D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_14FCC;

  return sub_54F8C0(a1, v4);
}

uint64_t sub_55124C()
{
  v0 = sub_766690();
  __chkstk_darwin(v0 - 8);
  v26[3] = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v26[2] = v26 - v3;
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757E60();
  sub_161DC(v8, qword_99E450);
  v26[1] = sub_BE38(v8, qword_99E450);
  v68[8] = &type metadata for Double;
  v68[9] = &protocol witness table for Double;
  v68[5] = 0x4024000000000000;
  if (qword_93D408 != -1)
  {
    swift_once();
  }

  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_95AA40);
  v11 = *(v9 - 8);
  v12 = *(v11 + 16);
  v30 = v11 + 16;
  v31 = v12;
  v12(v7, v10, v9);
  v13 = v5[13];
  v29 = enum case for FontSource.useCase(_:);
  v28 = v13;
  v13(v7);
  v14 = sub_766CA0();
  v68[3] = v14;
  v68[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v68);
  v66 = v4;
  v67 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v65);
  v27 = v5[2];
  v27(v15, v7, v4);
  sub_766CB0();
  v16 = v5[1];
  v16(v7, v4);
  if (qword_93D410 != -1)
  {
    swift_once();
  }

  v17 = sub_BE38(v9, qword_95AA58);
  v31(v7, v17, v9);
  v28(v7, v29, v4);
  v66 = v14;
  v67 = &protocol witness table for StaticDimension;
  sub_B1B4(v65);
  v63 = v4;
  v64 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v62);
  v27(v18, v7, v4);
  sub_766CB0();
  v16(v7, v4);
  if (qword_93D418 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v9, qword_95AA70);
  v31(v7, v19, v9);
  v28(v7, v29, v4);
  v63 = v14;
  v64 = &protocol witness table for StaticDimension;
  sub_B1B4(v62);
  v60 = v4;
  v61 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v59);
  v27(v20, v7, v4);
  sub_766CB0();
  v16(v7, v4);
  if (qword_93D420 != -1)
  {
    swift_once();
  }

  v21 = sub_BE38(v9, qword_95AA88);
  v31(v7, v21, v9);
  v28(v7, v29, v4);
  v60 = v14;
  v61 = &protocol witness table for StaticDimension;
  sub_B1B4(v59);
  v57 = v4;
  v58 = &protocol witness table for FontSource;
  v22 = sub_B1B4(v56);
  v27(v22, v7, v4);
  sub_766CB0();
  v16(v7, v4);
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v23 = sub_BE38(v14, qword_99FDE8);
  v57 = v14;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_B1B4(v56);
  (*(*(v14 - 8) + 16))(v24, v23, v14);
  v55 = &protocol witness table for Double;
  v54 = &type metadata for Double;
  v52 = &protocol witness table for Double;
  v53 = 0x4034000000000000;
  v51 = &type metadata for Double;
  v50 = 0x4057400000000000;
  sub_7666A0();
  sub_7666A0();
  v48 = &type metadata for Double;
  v49 = &protocol witness table for Double;
  v46 = &protocol witness table for Double;
  v47 = 0x3FAC9107B0E4883ELL;
  v45 = &type metadata for Double;
  v43 = &protocol witness table for Double;
  v44 = 0x3FAC9107B0E4883ELL;
  v42 = &type metadata for Double;
  v40 = &protocol witness table for Double;
  v41 = 0x3FAC0E070381C0E0;
  v39 = &type metadata for Double;
  v37 = &protocol witness table for Double;
  v38 = 0x3FA6CB65B2D96CB6;
  v36 = &type metadata for Double;
  v34 = &protocol witness table for Double;
  v35 = 0x4034000000000000;
  v33 = &type metadata for Double;
  v32 = 0x4034000000000000;
  return sub_757E40();
}

uint64_t sub_551944()
{
  v0 = sub_BD88(&unk_93F8F0);
  sub_161DC(v0, qword_95AAA0);
  sub_BE38(v0, qword_95AAA0);
  sub_BD88(&qword_93FBE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_7592C0();
}

char *sub_5519E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_757CA0();
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_metrics;
  if (qword_93D428 != -1)
  {
    swift_once();
  }

  v21 = sub_757E60();
  v22 = sub_BE38(v21, qword_99E450);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor;
  v68 = sub_BE70(0, &qword_93E540);
  *&v5[v23] = sub_76A070();
  if (qword_93D408 != -1)
  {
    swift_once();
  }

  v24 = sub_7666D0();
  v25 = sub_BE38(v24, qword_95AA40);
  v26 = *(v24 - 8);
  v73 = *(v26 + 16);
  v73(v19, v25, v24);
  v72 = *(v26 + 56);
  v72(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v71 = enum case for DirectionalTextAlignment.none(_:);
  v70 = v27;
  v27(v16);
  v28 = sub_75BB20();
  v69 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel] = sub_75BB10();
  if (qword_93D410 != -1)
  {
    swift_once();
  }

  v31 = sub_BE38(v24, qword_95AA58);
  v73(v19, v31, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D418 != -1)
  {
    swift_once();
  }

  v33 = sub_BE38(v24, qword_95AA70);
  v73(v19, v33, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel] = sub_75BB10();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_offerButton] = sub_1DD00C(0);
  sub_757C20();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView] = sub_243D30(v12, 1);
  if (qword_93D420 != -1)
  {
    swift_once();
  }

  v38 = sub_BE38(v24, qword_95AA88);
  v73(v19, v38, v24);
  v72(v19, 0, 1, v24);
  v70(v16, v71, v69);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription] = sub_75BB10();
  v40 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v75.receiver = v5;
  v75.super_class = v40;
  v41 = objc_msgSendSuper2(&v75, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = [v45 contentView];
  v47 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel;
  [v46 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel]];

  v48 = [v45 contentView];
  [v48 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel]];

  v49 = [v45 contentView];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel;
  [v49 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel]];

  v51 = [v45 contentView];
  [v51 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_offerButton]];

  v52 = [v45 contentView];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body;
  [v52 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body]];

  v54 = [v45 contentView];
  [v54 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView]];

  v55 = [v45 contentView];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription;
  [v55 addSubview:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription]];

  v57 = [*&v45[v53] layer];
  [v57 setCornerRadius:20.0];

  v58 = *&v45[v47];
  v59 = [v45 tintColor];
  [v58 setTextColor:v59];

  v60 = *&v45[v50];
  v61 = sub_769FF0();
  [v60 setTextColor:v61];

  [*&v45[v53] setBackgroundColor:*&v45[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_bodyBackgroundColor]];
  v62 = qword_93D430;
  v63 = *&v45[v56];
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = sub_BD88(&unk_93F8F0);
  sub_BE38(v64, qword_95AAA0);
  v74 = v45;
  sub_7592B0();

  sub_76A150();
  v65 = *&v45[v56];
  v66 = sub_769FF0();
  [v65 setTextColor:v66];

  return v45;
}

uint64_t sub_5524C8()
{
  v1 = v0;
  v2 = sub_7664F0();
  v43 = *(v2 - 8);
  v44 = v2;
  __chkstk_darwin(v2);
  v42 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_757E60();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_757E80();
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v39 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  v66.receiver = v0;
  v66.super_class = v10;
  objc_msgSendSuper2(&v66, "layoutSubviews");
  v11 = [v0 contentView];
  v38 = sub_BE70(0, &qword_93E550);
  sub_75D650();

  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_metrics], v4);
  v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_offerButton];
  sub_75D650();
  v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize];
  if (v12[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v14 = OBJC_IVAR____TtC18ASMessagesProvider11OfferButton__configuration;
    swift_beginAccess();
    sub_134D8(&v12[v14], v63);
    sub_B170(v63, v64);
    sub_760DE0();
    v16 = v15;
    v18 = v17;
    sub_BEB8(v63);
    *v13 = v16;
    *(v13 + 1) = v18;
    v13[16] = 0;
  }

  sub_757E50();
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppPurchaseLabel];
  v20 = sub_75BB20();
  v64 = v20;
  v65 = &protocol witness table for UILabel;
  v63[0] = v19;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_titleLabel];
  v61 = v20;
  v62 = &protocol witness table for UILabel;
  v60 = v21;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_subtitleLabel];
  v58 = v20;
  v59 = &protocol witness table for UILabel;
  v57 = v22;
  v23 = type metadata accessor for OfferButton();
  v37[1] = v7;
  v55 = v23;
  v56 = &protocol witness table for UIView;
  v54 = v12;
  v37[0] = v12;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_iconView];
  v52 = type metadata accessor for InAppPurchaseView();
  v53 = &protocol witness table for UIView;
  v50 = &protocol witness table for UILabel;
  v51 = v24;
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_inAppDescription];
  v49 = v20;
  v47 = &protocol witness table for UIView;
  v48 = v25;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider43InAppPurchaseSearchResultCollectionViewCell_body];
  v46 = v38;
  v45 = v26;
  v27 = v19;
  v28 = v21;
  v29 = v22;
  v30 = v37[0];
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v39;
  sub_757E70();
  v35 = v42;
  sub_757E20();
  (*(v43 + 8))(v35, v44);
  return (*(v40 + 8))(v34, v41);
}

id sub_55296C(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_93D430 != -1)
    {
      swift_once();
    }

    v6 = sub_BD88(&unk_93F8F0);
    sub_BE38(v6, qword_95AAA0);
    v7 = v1;
    sub_7592B0();

    return sub_76A150();
  }

  return result;
}

id sub_552B0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultCollectionViewCell()
{
  result = qword_95AAF0;
  if (!qword_95AAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_552C84(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_7596A0();
  v10 = sub_759690();
  v11 = sub_3325FC(v9, v10, a7, 0.0, 0.0, a1);

  return v11;
}

uint64_t sub_552DAC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_552DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v8 - 8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_766690();
  v11 = *(v74 - 8);
  __chkstk_darwin(v74);
  v85 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v83 = &v68 - v14;
  v15 = sub_759690();
  v86 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_platform] = v15;

  v16 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_flowLayout];
  ObjectType = swift_getObjectType();
  [a5 pageMarginInsets];
  [v16 setSectionInset:?];
  v17 = [a5 snapshotPageTraitEnvironment];
  v82 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_pageTraits] = v17;
  swift_unknownObjectRelease();
  v18 = sub_7596A0();
  v19 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork];
  v71 = OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_artwork] = v18;

  v21 = sub_117204(v20, v19);

  v22 = _TtC18ASMessagesProvider22MultipleScrollObserver;
  v23 = &unk_90D000;
  if ((v21 & 1) == 0)
  {
    [*&v5[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_collectionView] reloadData];
  }

  v24 = sub_7596A0();
  v25 = v24;
  if (v24 >> 62)
  {
    goto LABEL_58;
  }

  v26 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
  v27 = v74;
  v28 = v83;
  if (v26)
  {
    v78 = v26;
    v29 = 0;
    v79 = sub_7596B0();
    v80 = v25 & 0xC000000000000001;
    v73 = v25 & 0xFFFFFFFFFFFFFF8;
    v75 = v25;
    v72 = v25 + 32;
    v76 = (v11 + 2);
    v77 = (v11 + 1);
    v11 = _swiftEmptyArrayStorage;
    v69 = a5;
    v68 = v10;
    v70 = v6;
    while (1)
    {
      if (v80)
      {
        v23 = sub_76A770();
        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v29 >= *(v73 + 16))
        {
          goto LABEL_57;
        }

        v23 = *(v72 + 8 * v29);

        v30 = __OFADD__(v29++, 1);
        if (v30)
        {
          goto LABEL_56;
        }
      }

      sub_765260();
      sub_7666A0();
      v25 = *&v6[v86];
      v84 = v23;
      if (v25)
      {

        v31 = sub_75A310();

        if (v31)
        {
          v32 = *&v6[v71];
          v6 = (v32 & 0xFFFFFFFFFFFFFF8);
          if (v32 >> 62)
          {
            v22 = sub_76A860();
          }

          else
          {
            v22 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
          }

          v10 = (v32 & 0xC000000000000001);

          v33 = 0;
          while (1)
          {
            v23 = v22 != v33;
            if (v22 == v33)
            {
LABEL_28:

              v6 = v70;
              a5 = v69;
              v10 = v68;
              v27 = v74;
              v28 = v83;
              goto LABEL_29;
            }

            if (v10)
            {
              v25 = sub_76A770();
              if (__OFADD__(v33, 1))
              {
                goto LABEL_54;
              }
            }

            else
            {
              if (v33 >= *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_55;
              }

              v25 = *(v32 + 8 * v33 + 32);

              if (__OFADD__(v33, 1))
              {
LABEL_54:
                __break(1u);
LABEL_55:
                __break(1u);
LABEL_56:
                __break(1u);
LABEL_57:
                __break(1u);
LABEL_58:
                v26 = sub_76A860();
                goto LABEL_5;
              }
            }

            a5 = sub_7650D0();

            v33 = (v33 + 1);
            if (a5)
            {
              goto LABEL_28;
            }
          }
        }
      }

      LOBYTE(v23) = 0;
LABEL_29:

      sub_6C14C(v34, v10);

      v35 = v10[8];
      v36 = v10[10];
      sub_161D14(v10);
      result = *&v6[v82];
      if (!result)
      {
        break;
      }

      [result pageContainerSize];
      [v6 bounds];
      v39 = v38;
      if (v23)
      {
        if (sub_7665E0())
        {
          (*v76)(v85, v28, v27);
        }

        else
        {
          sub_766620();
        }

        v40 = 1;
      }

      else
      {
        (*v76)(v85, v28, v27);
        v40 = sub_7665E0();
      }

      v41 = [a5 traitCollection];
      v42 = sub_7699B0();

      if (v42)
      {
        [a5 pageMarginInsets];
        v44 = v43;
        [a5 pageMarginInsets];
        v46 = v44 + v45;
        PageTraitEnvironment.pageColumnMargin.getter();
        v48 = v39 - (v46 + v47 + v47);
        v49 = v47 * 0.0;
        v50 = v48 * 0.333333333;
      }

      else
      {
        if (v40)
        {
          v51 = 2.0;
        }

        else
        {
          v51 = 1.0;
        }

        if (v40)
        {
          v52 = 3.0;
        }

        else
        {
          v52 = 1.0;
        }

        [a5 pageMarginInsets];
        v54 = v53;
        [a5 pageMarginInsets];
        v56 = v54 + v55;
        PageTraitEnvironment.pageColumnMargin.getter();
        v58 = v39 - (v56 + (v52 + -1.0) * v57);
        v49 = (v51 + -1.0) * v57;
        v50 = v51 / v52 * v58;
      }

      v59 = v49 + v50;
      v60 = [a5 traitCollection];
      sub_7699B0();

      v61 = v85;
      sub_766660();
      v62 = v59 - (v35 + v36);
      sub_766660();
      v64 = v63;
      v22 = v77;
      isa = v77->isa;
      (v77->isa)(v61, v27);
      v28 = v83;
      (isa)(v83, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_7B0D8(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v66 = *(v11 + 3);
      v25 = v23 + 1;
      if (v23 >= v66 >> 1)
      {
        v11 = sub_7B0D8((v66 > 1), v23 + 1, 1, v11);
      }

      *(v11 + 2) = v25;
      v67 = &v11[3 * v23];
      *(v67 + 4) = v84;
      v67[5] = v62;
      *(v67 + 6) = v64;
      if (v29 == v78)
      {

        v23 = 9490432;
        v22 = _TtC18ASMessagesProvider22MultipleScrollObserver;
        goto LABEL_53;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
LABEL_53:
    *&v6[OBJC_IVAR____TtC18ASMessagesProvider33ScreenshotShelfCollectionViewCell_sizedArtwork] = v11;

    return [*&v6[v22[92].vtable] *(v23 + 3848)];
  }

  return result;
}

uint64_t sub_5535AC(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = sub_7687C0();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_BD88(&unk_955F90);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_BD88(&unk_93F630);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v12 = sub_768FF0();
  v54 = sub_BE38(v12, qword_9A0430);
  v13 = sub_BD88(&qword_93FD00);
  v14 = *(*(sub_7685F0() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_780120;
  sub_768540();
  v38 = sub_758C00();
  v56 = v38;
  v55[0] = a2;

  sub_7685E0();
  sub_BDD0(v55);
  sub_768540();
  v15 = sub_768E70();
  v56 = v15;
  v16 = sub_B1B4(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  sub_7685E0();
  sub_BDD0(v55);
  v51 = a2;
  sub_768540();
  v56 = sub_BE70(0, &qword_95AB78);
  v55[0] = v52;
  v17 = v52;
  sub_7685E0();
  sub_BDD0(v55);
  sub_768E90();

  if ([v17 responseStatusCode] - 200 > &stru_20.nsects + 3)
  {
    *(swift_allocObject() + 16) = xmmword_782440;
    sub_768540();
    v56 = v38;
    v55[0] = v51;

    sub_7685E0();
    sub_BDD0(v55);
    sub_768540();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    sub_7685E0();
    sub_BDD0(v55);
    sub_768EA0();

    v30 = sub_758BC0();
    if (v30)
    {
      v31 = v30;
      sub_768900();
      v32 = v44;
      v33 = v47;
      sub_768ED0();
      v56 = sub_764C80();
      v57 = sub_554780(&qword_95AB70, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_768980();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_BEB8(v55);
    }

    sub_5547D4();
    swift_allocError();
    sub_768F50();
  }

  else
  {
    v18 = sub_758BD0();
    if (v18)
    {
      v19 = v18;
      sub_768900();
      v20 = v44;
      v21 = v47;
      sub_768ED0();
      v56 = sub_764C80();
      v57 = sub_554780(&qword_95AB70, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_768980();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_BEB8(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    sub_768F60();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_553D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_BD88(&unk_955F90);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_BD88(&unk_93F630);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v11 = sub_768FF0();
  v27 = sub_BE38(v11, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_782440;
  sub_768540();
  v31 = sub_758C00();
  v30[0] = a2;

  sub_7685E0();
  sub_BDD0(v30);
  sub_768540();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_B1B4(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_7685E0();
  sub_BDD0(v30);
  sub_768EA0();

  v15 = sub_758BC0();
  if (v15)
  {
    v16 = v15;
    sub_768900();
    sub_768ED0();
    v31 = sub_764C80();
    v32 = sub_554780(&qword_95AB70, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    sub_768980();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_BEB8(v30);
  }

  return sub_768F50();
}

uint64_t sub_5541BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_768E70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_BD88(&qword_94DDC0);
  v32 = sub_768F90();
  sub_BE70(0, &unk_95AB60);
  sub_768900();
  sub_768ED0();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  sub_768ED0();
  sub_BE70(0, &qword_94DDD0);
  sub_768ED0();
  v11 = v33[0];
  sub_75A920();
  sub_768ED0();
  v12 = v33[0];
  sub_BD88(&qword_955220);
  sub_768ED0();
  v13 = v33[0];
  if (sub_758BE0())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = sub_758BF0();
  swift_unknownObjectRelease();
  v15 = v31;
  v16 = v29;
  (*(v5 + 16))(v31, v14, v29);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26[0] = v10;
  v19 = (v18 + 15) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  (*(v5 + 32))(v20 + v17, v15, v16);
  *(v20 + v18) = a2;
  v21 = v32;
  *(v20 + v19) = v32;
  v22 = swift_allocObject();
  v22[2] = a1;
  v22[3] = a2;
  v22[4] = v21;
  v23 = sub_BE70(0, &qword_940340);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = sub_769970();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  sub_768F10();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_BEB8(v33);
  return v21;
}

uint64_t sub_554590()
{
  v1 = sub_768E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_554680(id *a1)
{
  v3 = *(sub_768E70() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_5535AC(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_55472C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_554780(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_5547D4()
{
  result = qword_95AB80;
  if (!qword_95AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB80);
  }

  return result;
}

unint64_t sub_55483C()
{
  result = qword_95AB88;
  if (!qword_95AB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB88);
  }

  return result;
}

unint64_t sub_5548B4()
{
  result = qword_94FBA0;
  if (!qword_94FBA0)
  {
    sub_762730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94FBA0);
  }

  return result;
}

uint64_t sub_55490C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    sub_758BB0();
    v8 = a1;
    sub_762720();
    sub_758B50();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a2;
    v9[4] = a4;
    v10 = sub_BE70(0, &qword_940340);
    swift_retain_n();

    v14[3] = v10;
    v14[4] = &protocol witness table for OS_dispatch_queue;
    v14[0] = sub_769970();
    sub_768F10();

    return sub_BEB8(v14);
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

    sub_555A18();
    swift_allocError();
    *v13 = 0;
    sub_768F50();
  }
}

void sub_554BE0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = [objc_allocWithZone(GKGameInternal) init];
  sub_762720();
  v8 = sub_769210();

  [v7 setBundleIdentifier:v8];

  v9 = [objc_allocWithZone(GKGame) initWithInternalRepresentation:v7];
  v10 = objc_opt_self();
  sub_BD88(&qword_941A88);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_77B6D0;
  *(v11 + 32) = sub_762710();
  *(v11 + 40) = v12;
  isa = sub_769450().super.isa;

  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = v6;
  v14[4] = a4;
  v18[4] = sub_555AC8;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_555704;
  v18[3] = &unk_896E18;
  v15 = _Block_copy(v18);
  v16 = v9;

  v17 = v6;

  [v10 loadLeaderboardsWithIDs:isa setIdentifier:0 game:v16 completionHandler:v15];
  _Block_release(v15);
}

uint64_t sub_554DEC(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v59 = a5;
  v57 = a4;
  v62 = a1;
  v63 = a3;
  v58 = sub_758B40();
  v61 = *(v58 - 8);
  __chkstk_darwin(v58);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75F340();
  v60 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760280();
  v56 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7687B0();
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v17 - 8);
  v19 = &v50 - v18;
  v20 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v20 - 8);
  v22 = &v50 - v21;
  v23 = sub_765490();
  __chkstk_darwin(v23);
  v26 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v27 = sub_768FF0();
    sub_BE38(v27, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v28 = v64;
    v29 = v65;
    *(&v70 + 1) = v65;
    v30 = sub_B1B4(&v69);
    (*(*(v29 - 8) + 16))(v30, v28, v29);
    sub_7685E0();
    sub_BDD0(&v69);
    sub_768EA0();

    sub_768F50();
  }

  v53 = v11;
  v54 = v16;
  v55 = v8;
  v33 = v60;
  v32 = v61;
  v34 = v62;
  if (v62)
  {
    if (v62 >> 62)
    {
      v51 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      v52 = v13;
      v47 = v25;
      result = sub_76A860();
      v25 = v47;
      v13 = v52;
      v26 = v51;
      if (result)
      {
LABEL_8:
        v52 = v13;
        v62 = v19;
        if ((v34 & 0xC000000000000001) != 0)
        {
          v35 = v25;
          v36 = v26;
          v37 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }

          v35 = v25;
          v36 = v26;
          v37 = *(v34 + 32);
        }

        v38 = v37;
        v39 = v57;
        v71 = 0;
        v69 = 0u;
        v70 = 0u;
        v40 = *(v35 + 104);
        v51 = v36;
        v40(v36, enum case for FlowPage.gameCenterLeaderboards(_:), v23);
        v41 = sub_7570A0();
        (*(*(v41 - 8) + 56))(v22, 1, 1, v41);
        v42 = sub_759E30();
        (*(*(v42 - 8) + 56))(v62, 1, 1, v42);
        v68 = &type metadata for GameCenterLeaderboardsPage;
        v66 = v38;
        v67 = v39;
        v43 = v38;
        v44 = v39;
        v45 = v43;
        v57 = v44;
        sub_768790();
        (*(v56 + 104))(v52, enum case for FlowPresentationContext.infer(_:), v53);
        (*(v33 + 104))(v10, enum case for FlowAnimationBehavior.infer(_:), v55);
        (*(v32 + 104))(v7, enum case for FlowOrigin.inapp(_:), v58);
        sub_768CE0();
        sub_758B20();
        swift_allocObject();
        v46 = sub_758AD0();
        sub_72D7A8(v46, 1, v59);
        sub_768F00();
      }
    }

    else
    {
      result = *(&dword_10 + (v62 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_8;
      }
    }
  }

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v48 = sub_768FF0();
  sub_BE38(v48, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768540();
  sub_768EA0();

  sub_555A18();
  swift_allocError();
  *v49 = 1;
  sub_768F50();
}

uint64_t sub_555704(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_BE70(0, &qword_943F48);
    v4 = sub_769460();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_5557A8()
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

uint64_t sub_555900(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_BD88(&qword_94DDC0);
  v4 = sub_768F90();
  sub_758BB0();
  v7[3] = sub_BE70(0, &qword_940340);
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

unint64_t sub_555A18()
{
  result = qword_95AB90;
  if (!qword_95AB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB90);
  }

  return result;
}

uint64_t sub_555A80()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_555AD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_555B00()
{
  result = qword_95AB98;
  if (!qword_95AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95AB98);
  }

  return result;
}

void sub_555BB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v84 = sub_75BC10();
  v81 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_7580D0();
  v110 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v96 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v79 - v10;
  v99 = sub_BD88(&qword_946518);
  v108 = *(v99 - 8);
  __chkstk_darwin(v99);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v79 - v14;
  __chkstk_darwin(v15);
  v109 = (&v79 - v16);
  __chkstk_darwin(v17);
  v19 = &v79 - v18;
  __chkstk_darwin(v20);
  v22 = &v79 - v21;
  v23 = *a1;
  sub_BD88(&unk_944300);
  sub_768900();
  sub_768ED0();
  v24 = aBlock;
  v101 = v113;
  sub_758140();
  sub_768ED0();
  v79 = aBlock;
  v25 = _swiftEmptySetSingleton;
  v119 = _swiftEmptySetSingleton;
  v111 = sub_10F514(_swiftEmptyArrayStorage);
  v118 = _swiftEmptySetSingleton;
  v26 = *(v23 + 16);
  v100 = v6;
  v87 = v7;
  v102 = v24;
  if (v26)
  {
    v107 = v19;
    v27 = v99;
    v93 = &v22[*(v99 + 48)];
    ObjectType = swift_getObjectType();
    v28 = v23 + ((*(v108 + 80) + 32) & ~*(v108 + 80));
    v91 = *(v108 + 72);
    v103 = v106 + 8;
    v95 = v12;
    v90 = v12 + 8;
    v108 = v7 + 32;
    v29 = (v7 + 8);
    v89 = (v110 + 11);
    v88 = enum case for LegacyAppState.paused(_:);
    v86 = (v110 + 1);
    v85 = (v110 + 12);
    v30 = _swiftEmptyArrayStorage;
    v31 = v27;
    v32 = v106;
    v33 = v22;
    v94 = v22;
    do
    {
      v105 = v28;
      v106 = v26;
      sub_558884(v28, v33);
      v35 = *v93;
      v36 = *(v93 + 1);
      v37 = v107;
      v38 = &v107[*(v31 + 48)];
      v104 = *v108;
      (v104)(v107, v33, v6);
      *v38 = v35;
      *(v38 + 1) = v36;
      v39 = v109;
      sub_558884(v37, v109);
      v40 = (v39 + *(v31 + 48));
      v41 = *v40;
      v42 = v40[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_7B5CC(0, *(v30 + 2) + 1, 1, v30);
      }

      v44 = *(v30 + 2);
      v43 = *(v30 + 3);
      if (v44 >= v43 >> 1)
      {
        v30 = sub_7B5CC((v43 > 1), v44 + 1, 1, v30);
      }

      *(v30 + 2) = v44 + 1;
      v110 = v30;
      v45 = &v30[16 * v44];
      *(v45 + 4) = v41;
      *(v45 + 5) = v42;
      v46 = *v29;
      v6 = v100;
      (*v29)(v109, v100);
      v47 = v107;
      sub_558884(v107, v32);

      v48 = v96;
      sub_1A068C(v96, v32);
      v46(v48, v6);
      sub_558884(v47, v32);
      v49 = &v32[*(v31 + 48)];
      v50 = *v49;
      v51 = v49[1];
      v52 = v95;
      sub_558884(v47, v95);

      (v104)(v48, v52, v6);
      v53 = v111;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v53;
      sub_45A2F8(v48, v50, v51, isUniquelyReferenced_nonNull_native);

      v111 = aBlock;
      v46(v32, v6);
      sub_758330();
      swift_getObjectType();
      v55 = v97;
      sub_758220();
      swift_unknownObjectRelease();
      v56 = v98;
      v57 = (*v89)(v55, v98);
      if (v57 == v88)
      {
        (*v85)(v55, v56);
        v34 = sub_758040();
        (*(*(v34 - 8) + 8))(v55, v34);
        sub_558884(v47, v32);

        sub_1A068C(v48, v32);
        v46(v48, v6);
        sub_10A2C(v47, &qword_946518);
      }

      else
      {
        sub_10A2C(v47, &qword_946518);
        (*v86)(v55, v56);
      }

      v33 = v94;
      v28 = v105 + v91;
      v26 = v106 - 1;
      v30 = v110;
      v31 = v99;
    }

    while (v106 != &dword_0 + 1);
    v25 = v119;
  }

  else
  {
    v110 = _swiftEmptyArrayStorage;
  }

  v58 = v25 + 7;
  v59 = 1 << *(v25 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v25[7];
  v62 = (v59 + 63) >> 6;
  v108 = v87 + 16;
  LODWORD(v107) = enum case for InstallationType.update(_:);
  v105 = v87 + 8;
  v106 = (v81 + 104);
  v104 = (v81 + 8);
  v109 = v25;

  v63 = 0;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  while (v61)
  {
    v67 = v63;
    v68 = v87;
    v69 = v109;
LABEL_22:
    v70 = __clz(__rbit64(v61));
    v61 &= v61 - 1;
    v71 = v100;
    (*(v68 + 16))(v64, *(v69 + 48) + *(v68 + 72) * (v70 | (v67 << 6)), v100);
    swift_getObjectType();
    (*v106)(v65, v107, v66);
    sub_758310();
    (*(v87 + 8))(v64, v71);
    (*v104)(v65, v66);
  }

  v68 = v87;
  v69 = v109;
  while (1)
  {
    v67 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v67 >= v62)
    {

      isa = sub_769450().super.isa;

      v73 = v118;
      v74 = swift_allocObject();
      v74[2] = v111;
      v74[3] = v69;
      v75 = v101;
      v74[4] = v102;
      v74[5] = v75;
      v76 = v80;
      v74[6] = v73;
      v74[7] = v76;
      v116 = sub_55894C;
      v117 = v74;
      aBlock = _NSConcreteStackBlock;
      v113 = 1107296256;
      v114 = sub_556E7C;
      v115 = &unk_896F40;
      v77 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      v78 = v79;
      [v79 updateAllWithOrder:isa completionBlock:v77];
      swift_unknownObjectRelease();

      _Block_release(v77);
      return;
    }

    v61 = v58[v67];
    ++v63;
    if (v61)
    {
      v63 = v67;
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_556674(char a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v106 = a6;
  v107 = a7;
  ObjectType = a4;
  v13 = sub_7687C0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_764CF0();
  v110 = *(v108 - 8);
  __chkstk_darwin(v108);
  v18 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v102 = v89 - v22;
  __chkstk_darwin(v23);
  v103 = v89 - v24;
  __chkstk_darwin(v25);
  v99 = v89 - v26;
  v101 = v27;
  __chkstk_darwin(v28);
  v98 = v89 - v29;
  v112 = _swiftEmptySetSingleton;
  v92 = v14;
  v93 = v13;
  v91 = v16;
  v95 = a8;
  v96 = v18;
  v94 = a5;
  if ((a1 & 1) == 0)
  {
    v112 = a5;

LABEL_22:
    v90 = a9;
    v56 = v55[7];
    v98 = (v55 + 7);
    v57 = 1 << *(v55 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & v56;
    v97 = (v57 + 63) >> 6;
    v109 = v110 + 16;
    v99 = (v110 + 32);
    v105 = v110 + 8;
    v102 = v55;

    v60 = 0;
    v61 = v103;
    while (v59)
    {
      v62 = v60;
      v63 = v102;
LABEL_31:
      v64 = __clz(__rbit64(v59));
      v59 &= v59 - 1;
      v65 = v110;
      v66 = *(v110 + 16);
      v67 = v100;
      v68 = v108;
      v66(v100, *(v63 + 48) + *(v110 + 72) * (v64 | (v62 << 6)), v108);
      v69 = v106;
      ObjectType = swift_getObjectType();
      v66(v61, v67, v68);
      v70 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v71 = swift_allocObject();
      v72 = v107;
      *(v71 + 16) = v69;
      *(v71 + 24) = v72;
      (*(v65 + 32))(v71 + v70, v61, v68);
      swift_unknownObjectRetain();
      sub_758340();

      (*(v65 + 8))(v67, v68);
    }

    v63 = v102;
    while (1)
    {
      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v62 >= v97)
      {
        break;
      }

      v59 = *&v98[8 * v62];
      ++v60;
      if (v59)
      {
        v60 = v62;
        goto LABEL_31;
      }
    }

    v73 = v94;
    if (*(v63 + 16) <= v94[2] >> 3)
    {
      v111 = v94;

      sub_557470(v63);

      v74 = v111;
    }

    else
    {

      v74 = sub_55768C(v63, v73);
    }

    v75 = v96;
    if (*(v95 + 16) <= v74[2] >> 3)
    {
      v111 = v74;
      sub_557470(v95);
      v76 = v111;
    }

    else
    {
      v76 = sub_55768C(v95, v74);
    }

    v77 = 0;
    v78 = 1 << *(v76 + 32);
    v79 = -1;
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    v80 = v79 & v76[7];
    v81 = (v78 + 63) >> 6;
    while (v80)
    {
      v82 = v77;
LABEL_47:
      v83 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v84 = v110;
      v85 = v108;
      (*(v110 + 16))(v75, v76[6] + *(v110 + 72) * (v83 | (v82 << 6)), v108);
      swift_getObjectType();
      sub_758360();
      (*(v84 + 8))(v75, v85);
    }

    while (1)
    {
      v82 = v77 + 1;
      if (__OFADD__(v77, 1))
      {
        break;
      }

      if (v82 >= v81)
      {

        v87 = v92;
        v86 = v93;
        v88 = v91;
        (*(v92 + 104))(v91, enum case for ActionOutcome.performed(_:), v93);
        sub_768F60();
        (*(v87 + 8))(v88, v86);
        return;
      }

      v80 = v76[v82 + 7];
      ++v77;
      if (v80)
      {
        v77 = v82;
        goto LABEL_47;
      }
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v105 = a2;
  if (!(a2 >> 62))
  {
    v109 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v109)
    {
      goto LABEL_4;
    }

LABEL_21:
    v55 = _swiftEmptySetSingleton;
    goto LABEL_22;
  }

  v109 = sub_76A860();
  if (!v109)
  {
    goto LABEL_21;
  }

LABEL_4:
  if (v109 >= 1)
  {
    v30 = 0;
    v31 = v105;
    v32 = v105 & 0xC000000000000001;
    v97 = v110 + 16;
    v90 = v110 + 32;
    v89[1] = v110 + 8;
    v33 = &selRef_absoluteDimension_;
    v34 = ObjectType;
    v89[0] = v105 & 0xC000000000000001;
    v35 = v110;
    while (1)
    {
      v36 = v32 ? sub_76A770() : *(v31 + 8 * v30 + 32);
      v37 = v36;
      if ([v36 status] == &dword_0 + 1)
      {
        break;
      }

LABEL_7:
      if (v109 == ++v30)
      {
        v55 = v112;
        goto LABEL_22;
      }
    }

    v38 = [v37 v33[131]];
    v39 = sub_769240();
    v41 = v40;

    if (*(v34 + 16))
    {
      v42 = sub_3DF2F8(v39, v41);
      v44 = v43;

      if (v44)
      {
        v45 = *(v34 + 56) + *(v35 + 72) * v42;
        v46 = *(v35 + 16);
        v47 = v99;
        v48 = v108;
        v46(v99, v45, v108);
        v49 = v98;
        (*(v35 + 32))(v98, v47, v48);
        v50 = v102;
        v46(v102, v49, v48);
        v51 = v103;
        sub_1A068C(v103, v50);

        v52 = *(v35 + 8);
        v52(v51, v48);
        v53 = v49;
        v32 = v89[0];
        v54 = v48;
        v33 = &selRef_absoluteDimension_;
        v52(v53, v54);
        v34 = ObjectType;
LABEL_17:
        v31 = v105;
        goto LABEL_7;
      }
    }

    else
    {
    }

    goto LABEL_17;
  }

LABEL_52:
  __break(1u);
}

void sub_556E7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  sub_BE70(0, &qword_95ABA8);
  v7 = sub_769460();

  v8 = a4;
  v6(a2, v7, a4);
}

id sub_556F34(unint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = sub_BD88(&qword_941C20);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - v4;
  v42 = sub_764CF0();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75A660();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v41 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v35 = v10;
    v37 = v9;
    v38 = v6;
    v40 = v8;
    v13 = 0;
    v8 = (a1 & 0xC000000000000001);
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v14 = sub_76A770();
      }

      else
      {
        if (v13 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v16 = [v14 updateState];
      if (v16 > 4 || ((1 << v16) & 0x19) == 0)
      {
      }

      else
      {
        v6 = &v45;
        sub_76A7A0();
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
      }

      ++v13;
      if (v9 == i)
      {
        v18 = v45;
        v8 = v40;
        v9 = v37;
        v6 = v38;
        v10 = v35;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_21:
  v19 = v41;
  (*(v10 + 104))(v41, enum case for UpdatesSorter.Ordering.pendingUpdates(_:), v9);
  v20 = sub_75A650();
  (*(v10 + 8))(v19, v9);
  if (!(v20 >> 62))
  {
    v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    v35 = v18;
    if (v21)
    {
      goto LABEL_23;
    }

LABEL_39:
    v22 = _swiftEmptyArrayStorage;
LABEL_40:

    v33 = sub_1416A0(v22);

    v45 = v33;
    sub_768F60();
  }

LABEL_38:
  v21 = sub_76A860();
  v35 = v18;
  if (!v21)
  {
    goto LABEL_39;
  }

LABEL_23:
  v18 = 0;
  v40 = v20 & 0xFFFFFFFFFFFFFF8;
  v41 = (v20 & 0xC000000000000001);
  v38 = v6 + 4;
  v22 = _swiftEmptyArrayStorage;
  v39 = v5;
  v37 = v20;
  while (1)
  {
    if (v41)
    {
      v23 = sub_76A770();
    }

    else
    {
      if (v18 >= *(v40 + 16))
      {
        goto LABEL_37;
      }

      v23 = *(v20 + 8 * v18 + 32);
    }

    v6 = v23;
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v23 storeItemIdentifier];
    sub_764CE0();
    result = [v6 bundleIdentifier];
    if (!result)
    {
      break;
    }

    v26 = result;
    v27 = sub_769240();
    v29 = v28;

    v30 = &v5[*(v44 + 48)];
    (*v38)(v5, v8, v42);
    *v30 = v27;
    v30[1] = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_7C3C4(0, *(v22 + 2) + 1, 1, v22);
    }

    v32 = *(v22 + 2);
    v31 = *(v22 + 3);
    if (v32 >= v31 >> 1)
    {
      v22 = sub_7C3C4(v31 > 1, v32 + 1, 1, v22);
    }

    v5 = v39;

    *(v22 + 2) = v32 + 1;
    sub_558B24(v5, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v32);
    v18 = (v18 + 1);
    v20 = v37;
    if (v24 == v21)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
  return result;
}

void sub_557470(uint64_t a1)
{
  v3 = sub_BD88(&unk_940200);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    v17[0] = v7 + 8;
    v17[1] = v7 + 16;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      (*(v7 + 16))(v9, *(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v6);
      sub_26FF30(v9, v5);
      (*(v7 + 8))(v9, v6);
      sub_10A2C(v5, &unk_940200);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_55768C(uint64_t a1, void *a2)
{
  v5 = sub_BD88(&unk_940200);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v65 - v9);
  v11 = sub_764CF0();
  __chkstk_darwin(v11);
  v85 = (&v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v15 = (&v65 - v14);
  __chkstk_darwin(v16);
  v80 = (&v65 - v18);
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v66 = v10;
  v68 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = a2 + 7;
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_57;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_10A2C(v30, &unk_940200);
      goto LABEL_52;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_558AD4(&qword_948180, &type metadata accessor for AdamId);
    v32 = sub_769150();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v15, a2[6] + v84 * v24, v11);
    v35 = sub_558AD4(&qword_945868, &type metadata accessor for AdamId);
    v36 = sub_7691C0();
    v87 = *v88;
    v87(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v66 = &v65;
    __chkstk_darwin(v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = a2[2];
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_10A2C(v24, &unk_940200);
        a2 = sub_3AFF1C(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_769150();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v15, v52[6] + v54 * v84, v11);
        v55 = sub_7691C0();
        v87(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v15, v52[6] + v54 * v84, v11);
            v57 = sub_7691C0();
            v87(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v60 = v23;

    v80 = a2;
    v61 = v60;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v62 = v80;

      a2 = v62;
      continue;
    }

    break;
  }

  v63 = swift_slowAlloc();
  memcpy(v63, v82, v61);
  sub_5580F0(v63, v65, v80, v24, &v89);
  a2 = v64;

LABEL_52:
  sub_1A01E0();
  return a2;
}

void sub_5580F0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = sub_BD88(&unk_940200);
  __chkstk_darwin(v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_764CF0();
  __chkstk_darwin(v12);
  v57 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12, v15);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_10A2C(v11, &unk_940200);
          v45 = v61;

          sub_3AFF1C(v49, v47, v48, v45);
          return;
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_558AD4(&qword_948180, &type metadata accessor for AdamId);
        v35 = sub_769150();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        v22(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_558AD4(&qword_945868, &type metadata accessor for AdamId);
        v43 = sub_7691C0();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      v22(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v48 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_5585C4()
{
  sub_BD88(&qword_95ABB0);
  v0 = sub_768F90();
  v1 = sub_75B730();
  if (v1)
  {
    v5[0] = v1;
    sub_768F60();
  }

  else
  {
    sub_758140();
    sub_768900();
    sub_768ED0();
    v2 = v5[0];
    v5[4] = sub_558B1C;
    v5[5] = v0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_449B00;
    v5[3] = &unk_896F90;
    v3 = _Block_copy(v5);

    [v2 getUpdatesWithCompletionBlock:v3];
    _Block_release(v3);
  }

  return v0;
}

uint64_t sub_55870C(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0);
  v3 = sub_768F90();
  sub_5585C4();
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  v5 = sub_BE70(0, &qword_940340);
  swift_retain_n();

  v7[3] = v5;
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = sub_769970();
  sub_768F10();

  sub_BEB8(v7);
  return v3;
}

uint64_t sub_558838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_558884(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_946518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5588F4()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_55897C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_558994()
{
  v1 = sub_764CF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_558A58()
{
  sub_764CF0();
  swift_getObjectType();
  return sub_758360();
}

uint64_t sub_558AD4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_558B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_941C20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_558B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = v3;
  v23 = a3;
  v7 = sub_75C930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v11 - 8);
  v13 = &v21[-v12];
  v22 = sub_55BE04(a1);
  v14 = sub_760770();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = sub_55C32C(a1, v13);
  sub_10A2C(v13, &unk_94DF00);
  v17 = *(v8 + 16);
  v17(v10, v4, v7);
  v18 = (*(v8 + 88))(v10, v7);
  if (v18 != enum case for LockupMediaLayout.DisplayType.oneUp(_:))
  {
    if (v18 == enum case for LockupMediaLayout.DisplayType.twoUp(_:) || v18 == enum case for LockupMediaLayout.DisplayType.threeUp(_:))
    {
      if (v16)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

    else if (((v18 == enum case for LockupMediaLayout.DisplayType.fourUp(_:)) & v16) != 0)
    {
      goto LABEL_11;
    }

    v17(v23, v4, v7);
    return (*(v8 + 8))(v10, v7);
  }

  if (v16)
  {
LABEL_11:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  if (v22)
  {
LABEL_9:
    (*(v8 + 8))(v10, v7);
    v19 = &enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    return (*(v8 + 104))(v23, *v19, v7);
  }

  (*(v8 + 104))(v23, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v7);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_558ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = sub_766690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_75C930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v12 = sub_BD88(&unk_948720);
  __chkstk_darwin(v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v20 - v17;
  v22[3] = &type metadata for CGFloat;
  v22[4] = &protocol witness table for CGFloat;
  v22[0] = 0x4021000000000000;
  (*(v4 + 16))(v20 - v17, a1, v3, v16);
  (*(v4 + 56))(v18, 0, 1, v3);
  (*(v6 + 104))(v11, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_134D8(v22, v21);
  (*(v6 + 16))(v8, v11, v5);
  if (_swiftEmptyArrayStorage >> 62 && sub_76A860())
  {
    sub_76A770();
    sub_765260();
    sub_7666A0();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_7666A0();
  }

  sub_1ED18(v18, v14, &unk_948720);
  sub_75C970();
  (*(v6 + 8))(v11, v5);
  sub_10A2C(v18, &unk_948720);
  return sub_BEB8(v22);
}

uint64_t sub_559214()
{
  v0 = sub_BD88(&unk_948720);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_766690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = sub_75C930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C9A0();
  sub_161DC(v9, qword_95ABB8);
  sub_BE38(v9, qword_95ABB8);
  v11[4] = &type metadata for CGFloat;
  v11[5] = &protocol witness table for CGFloat;
  v11[1] = 0x4021000000000000;
  (*(v6 + 104))(v8, enum case for LockupMediaLayout.DisplayType.none(_:), v5);
  sub_7666A0();
  (*(v4 + 56))(v2, 1, 1, v3);
  return sub_75C970();
}

id sub_559448()
{
  v1 = sub_BD88(&qword_94F6F0);
  __chkstk_darwin(v1);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView();
  sub_7667C0();
  sub_55B714();
  sub_767480();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView] = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  if (qword_93D438 != -1)
  {
    swift_once();
  }

  v3 = sub_75C9A0();
  v4 = sub_BE38(v3, qword_95ABB8);
  (*(*(v3 - 8) + 16))(&v0[v2], v4, v3);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_93C258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  v7 = sub_BE38(v6, qword_99A2F0);
  sub_163C10(v7, &v0[v5]);
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform] = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_760770();
  (*(*(v10 - 8) + 104))(&v0[v8], v9, v10);
  v13.receiver = v0;
  v13.super_class = type metadata accessor for LockupMediaView();
  v11 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v11;
}

void (*sub_559700(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_559754;
}

void sub_559754(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_55CCB0(&qword_93F500, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_2630C();
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_55A7A8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_55CCB0(&qword_93F500, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_2630C();
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_55A7A8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

void *sub_5599F0()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView);
  if (v4)
  {
    v5 = v4;
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  v6 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (v7 >> 62)
  {
    sub_2630C();

    v8 = sub_76A850();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_76A960();
    sub_2630C();
    v8 = v7;
  }

  sub_10A0A0(v8);
  return _swiftEmptyArrayStorage;
}

uint64_t sub_559BA0()
{
  v1 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v19 = v0;
  v6 = *(v0 + v4);
  if (v6 >> 62)
  {
    result = sub_76A860();
    v7 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return result;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;

    swift_beginAccess();
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_76A770();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      sub_163C10(v19 + v8, v3);
      v12 = &v11[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_163BAC(v3, v12);
      swift_endAccess();
      v13 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
      v14 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_75CD10();

      v15 = *&v11[v13];
      v16 = *(v12 + 48);
      v17 = v15;
      v18 = v16;
      sub_75CD00();

      [v11 setNeedsLayout];
      sub_161D14(v3);
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t sub_559DA4()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v7 = *(v1 + v5);
  if (v7 >> 62)
  {
    result = sub_76A860();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
    v21 = v7 & 0xC000000000000001;
    v22 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform;

    swift_beginAccess();
    v10 = 0;
    do
    {
      if (v21)
      {
        v11 = sub_76A770();
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      *&v11[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform] = *(v1 + v22);
      swift_retain_n();

      sub_4FD578();

      sub_163C10(v1 + v9, v4);
      v13 = &v12[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      sub_163BAC(v4, v13);
      swift_endAccess();
      v14 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
      v15 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_75CD10();

      v16 = *&v12[v14];
      v17 = *(v13 + 48);
      v18 = v16;
      v19 = v17;
      sub_75CD00();

      [v12 setNeedsLayout];
      sub_161D14(v4);
    }

    while (v8 != v10);
  }

  return result;
}

uint64_t sub_559FF0()
{
  v16 = sub_7664F0();
  v1 = *(v16 - 8);
  __chkstk_darwin(v16);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75C9A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75C9D0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LockupMediaView();
  v17.receiver = v0;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v13 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v0[v13], v4);
  v14 = sub_5599F0();
  sub_1418B8(v14);

  sub_75C9B0();
  [v0 bounds];
  sub_75C940();
  (*(v1 + 8))(v3, v16);
  return (*(v9 + 8))(v11, v8);
}

double sub_55A2B0()
{
  v1 = v0;
  v2 = sub_75C9D0();
  v3 = *(v2 - 8);
  v47 = v2;
  v48 = v3;
  __chkstk_darwin(v2);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_760770();
  v5 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75C930();
  v44 = *(v7 - 8);
  v45 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v36 - v11;
  v12 = sub_75C9A0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v36 - v17;
  v38 = &v36 - v17;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  swift_beginAccess();
  v20 = *(v13 + 16);
  v20(v18, v1 + v19, v12);
  v37 = v12;
  v20(v15, v1 + v19, v12);
  sub_75C950();
  v21 = *(v13 + 8);
  v41 = v13 + 8;
  v42 = v21;
  v21(v15, v12);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  v36 = v1;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v40;
  v25 = v43;
  (*(v5 + 16))(v40, v23, v43);

  sub_558B9C(v26, v24, v39);

  (*(v5 + 8))(v24, v25);
  (*(v44 + 8))(v9, v45);
  v27 = v38;
  sub_75C960();
  v28 = v37;
  v20(v15, v27, v37);
  v29 = sub_5599F0();
  sub_1418B8(v29);

  v30 = v46;
  sub_75C9B0();
  sub_55CCB0(&qword_95AC48, &type metadata accessor for LockupMediaLayout);
  v31 = v30;
  v32 = v47;
  sub_7665A0();
  v34 = v33;
  (*(v48 + 8))(v31, v32);
  v42(v27, v28);
  return v34;
}

uint64_t sub_55A7A8()
{
  v1 = v0;
  v2 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75C930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_75C9A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView])
  {

    return sub_55AE40();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    v15 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v15], v9);
    sub_75C950();
    (*(v10 + 8))(v12, v9);
    v16 = sub_75C920();
    result = (*(v6 + 8))(v8, v5);
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_32;
    }

    v17 = (v16 - 1) & ~((v16 - 1) >> 63);
  }

  else
  {
    v18 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
    swift_beginAccess();
    (*(v10 + 16))(v12, &v1[v18], v9);
    sub_75C950();
    (*(v10 + 8))(v12, v9);
    v17 = sub_75C920();
    (*(v6 + 8))(v8, v5);
  }

  v19 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  swift_beginAccess();
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v21 = *&v1[v19];
        if (v21 >> 62)
        {
          result = sub_76A860();
          if (result == v17)
          {
            return result;
          }
        }

        else
        {
          result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
          if (result == v17)
          {
            return result;
          }
        }

        v22 = *&v1[v19];
        if (!(v22 >> 62))
        {
          break;
        }

        if (sub_76A860() >= v17)
        {
          goto LABEL_21;
        }

LABEL_15:
        swift_beginAccess();
        sub_BD88(&qword_94F708);
        sub_767450();
        swift_endAccess();
        v23 = v37;
        *&v37[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_platform] = *&v1[v36];
        swift_retain_n();

        sub_4FD578();

        sub_163C10(&v1[v20], v4);
        v24 = &v23[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_displayConfiguration];
        swift_beginAccess();
        sub_163BAC(v4, v24);
        swift_endAccess();
        v25 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
        v26 = *&v23[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
        sub_75CD10();

        v27 = *&v23[v25];
        v28 = *(v24 + 48);
        v29 = v27;
        v30 = v28;
        sub_75CD00();

        [v23 setNeedsLayout];
        sub_161D14(v4);
        swift_beginAccess();
        v31 = v23;
        sub_769440();
        if (*(&dword_10 + (*&v1[v19] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v1[v19] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        swift_endAccess();
        [v1 addSubview:v31];
      }

      if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)) < v17)
      {
        goto LABEL_15;
      }

LABEL_21:
      swift_beginAccess();
      v32 = *&v1[v19];
      if (!(v32 >> 62))
      {
        break;
      }

      if (sub_76A860())
      {
        goto LABEL_23;
      }

LABEL_10:
      swift_endAccess();
    }

    if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_10;
    }

LABEL_23:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v1[v19] = v32;
    if (v32 >> 62 || (result & 1) == 0)
    {
      result = sub_45EDF0(v32);
      v32 = result;
    }

    v33 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
    if (!v33)
    {
      break;
    }

    v34 = v33 - 1;
    v35 = *(&stru_20.cmd + 8 * v34 + (v32 & 0xFFFFFFFFFFFFFF8));
    *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) = v34;
    *&v1[v19] = v32;
    swift_endAccess();
    v37 = v35;
    swift_beginAccess();
    sub_BD88(&qword_94F708);
    sub_767470();
    swift_endAccess();
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id sub_55AE00@<X0>(void *a1@<X8>)
{
  type metadata accessor for BorderedScreenshotView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_55AE40()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = sub_76A860();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v10 = v2;

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_BD88(&qword_94F708);
      sub_767470();
      swift_endAccess();
      v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      sub_759190();
    }

    while (v5 != v6);

    v2 = v10;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_55AFC4()
{
  v1 = v0;
  v2 = sub_760770();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55AE40();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + qword_9405B8);
    if (v8)
    {
      aBlock[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      aBlock[5] = 0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_509F0;
      aBlock[3] = &unk_896FB8;
      v9 = _Block_copy(aBlock);
      v10 = v8;
      [v10 exitFullScreenAnimated:0 completionHandler:v9];
      _Block_release(v9);
    }

    v11 = *&v7[qword_9405B0];
    if (v11)
    {
      v12 = v11;
      sub_7599D0();

      v7 = v12;
    }
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_55CCB0(&qword_93F500, type metadata accessor for VideoView);
    v15 = [v14 superview];
    if (!v15)
    {
LABEL_12:

      goto LABEL_13;
    }

    v16 = v15;
    sub_2630C();
    v17 = v1;
    v18 = sub_76A1C0();

    if (v18)
    {
      v19 = swift_unknownObjectWeakLoadStrong();
      if (v19)
      {
        v14 = v19;
        [v19 removeFromSuperview];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    [v1 addSubview:v20];
  }

  sub_55A7A8();
  [v1 setNeedsLayout];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView];
  if (v23)
  {
    [v23 removeFromSuperview];
    v24 = *&v1[v22];
  }

  else
  {
    v24 = 0;
  }

  *&v1[v22] = 0;

  [v1 setNeedsLayout];
  (*(v3 + 104))(v5, enum case for ScreenshotsDisplayStyle.standard(_:), v2);
  v25 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v3 + 24))(&v1[v25], v5, v2);
  swift_endAccess();
  [v1 setNeedsLayout];
  return (*(v3 + 8))(v5, v2);
}

id sub_55B36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupMediaView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupMediaView()
{
  result = qword_95AC08;
  if (!qword_95AC08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_55B540()
{
  sub_55B6A4();
  if (v0 <= 0x3F)
  {
    sub_75C9A0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ScreenshotDisplayConfiguration();
      if (v2 <= 0x3F)
      {
        sub_760770();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_55B6A4()
{
  if (!qword_94F6E8)
  {
    sub_133D8(&qword_94F6F0);
    sub_55B714();
    v0 = sub_767490();
    if (!v1)
    {
      atomic_store(v0, &qword_94F6E8);
    }
  }
}

unint64_t sub_55B714()
{
  result = qword_94F6F8;
  if (!qword_94F6F8)
  {
    sub_133D8(&qword_94F6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94F6F8);
  }

  return result;
}

void sub_55B788(void *a1)
{
  sub_55CB74();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [v1 addSubview:Strong];
  }

  sub_55A7A8();
  [v1 setNeedsLayout];
}

uint64_t (*sub_55B818(uint64_t **a1))()
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
  v2[4] = sub_559700(v2);
  return sub_21028;
}

uint64_t sub_55B888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_55B8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_55B948(uint64_t *a1))()
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
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

void *sub_55BABC(unint64_t a1, uint64_t a2, int64_t a3, uint64_t a4)
{
  if (!a2)
  {
    goto LABEL_10;
  }

  v8 = sub_765750();
  if (v8 >> 62)
  {
    v23 = v8;
    v24 = sub_76A860();
    v8 = v23;
    if (v24)
    {
      goto LABEL_4;
    }
  }

  else if (*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_4:
    if ((v8 & 0xC000000000000001) != 0)
    {
      sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    sub_764BC0();

    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v4 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      sub_7694C0();
    }

    sub_769500();

LABEL_10:
    if (!a1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (a1)
  {
LABEL_11:
    v9 = sub_7596A0();
    sub_10A1E8(v9);
  }

LABEL_12:
  v10 = _swiftEmptyArrayStorage;
  if (a4)
  {
    return v10;
  }

  a1 = _swiftEmptyArrayStorage >> 62;
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_76A860() <= a3)
    {
      return v10;
    }
  }

  else if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) <= a3)
  {
    return v10;
  }

  if (a3 < 0)
  {
    goto LABEL_49;
  }

  if (a1)
  {
    if (_swiftEmptyArrayStorage < 0)
    {
      a4 = _swiftEmptyArrayStorage;
    }

    else
    {
      a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_76A860() < 0)
    {
      goto LABEL_51;
    }

    v11 = sub_76A860();
  }

  else
  {
    v11 = *(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
  }

  if (v11 < a3)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if ((_swiftEmptyArrayStorage & 0xC000000000000001) == 0 || !a3)
  {

    if (!a1)
    {
      goto LABEL_29;
    }

LABEL_32:

    a4 = sub_76A870();
    a1 = v15;
    a3 = v16;
    if (v16)
    {
      goto LABEL_34;
    }

LABEL_33:
    sub_4A5FC4(a4, v14, a1, a3);
    v18 = v17;

LABEL_40:
    swift_unknownObjectRelease();
    return v18;
  }

  sub_765390();

  v12 = 0;
  do
  {
    v13 = v12 + 1;
    sub_76A750(v12);
    v12 = v13;
  }

  while (a3 != v13);
  if (a1)
  {
    goto LABEL_32;
  }

LABEL_29:
  a4 = _swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8;
  v14 = (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 32;
  a3 = (2 * a3) | 1;
  if ((a3 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_34:
  v4 = v14;
  sub_76A970();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(a3 >> 1, a1))
  {
    goto LABEL_52;
  }

  if (v20 != (a3 >> 1) - a1)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v14 = v4;
    goto LABEL_33;
  }

  v21 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v10 = v21;
  if (!v21)
  {
    v18 = _swiftEmptyArrayStorage;
    goto LABEL_40;
  }

  return v10;
}

uint64_t sub_55BE04(uint64_t a1)
{
  v2 = sub_758720();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_95AC30);
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_BD88(&qword_95AC38);
  __chkstk_darwin(v7 - 8);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = ASKDeviceTypeGetCurrent();
  v16 = sub_769240();
  v18 = v17;
  if (v16 == sub_769240() && v18 == v19)
  {

LABEL_9:
    v22 = 0;
    return v22 & 1;
  }

  v21 = sub_76A950();

  v22 = 0;
  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      sub_75A300();
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 0, 1, v2);
    }

    else
    {
      v23 = v36;
      v24 = *(v36 + 56);
      v24(v14, 1, 1, v2);
    }

    (*(v23 + 104))(v11, enum case for AppPlatform.watch(_:), v2);
    v24(v11, 0, 1, v2);
    v26 = *(v4 + 48);
    sub_1ED18(v14, v6, &qword_95AC38);
    sub_1ED18(v11, &v6[v26], &qword_95AC38);
    v27 = *(v23 + 48);
    if (v27(v6, 1, v2) == 1)
    {
      sub_10A2C(v11, &qword_95AC38);
      sub_10A2C(v14, &qword_95AC38);
      if (v27(&v6[v26], 1, v2) == 1)
      {
        sub_10A2C(v6, &qword_95AC38);
        goto LABEL_9;
      }
    }

    else
    {
      v28 = v35;
      sub_1ED18(v6, v35, &qword_95AC38);
      if (v27(&v6[v26], 1, v2) != 1)
      {
        v29 = v34;
        (*(v23 + 32))(v34, &v6[v26], v2);
        sub_55CCB0(&qword_95AC40, &type metadata accessor for AppPlatform);
        v30 = v28;
        v31 = sub_7691C0();
        v32 = *(v23 + 8);
        v32(v29, v2);
        sub_10A2C(v11, &qword_95AC38);
        sub_10A2C(v14, &qword_95AC38);
        v32(v30, v2);
        sub_10A2C(v6, &qword_95AC38);
        v22 = v31 ^ 1;
        return v22 & 1;
      }

      sub_10A2C(v11, &qword_95AC38);
      sub_10A2C(v14, &qword_95AC38);
      (*(v23 + 8))(v28, v2);
    }

    sub_10A2C(v6, &qword_95AC30);
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t sub_55C32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_760770();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&qword_95AC28);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  if ((sub_55BE04(a1) & 1) == 0)
  {
    v19 = 0;
    return v19 & 1;
  }

  (*(v5 + 104))(v16, enum case for ScreenshotsDisplayStyle.fourScreenshots(_:), v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v17 = *(v8 + 48);
  sub_1ED18(a2, v10, &unk_94DF00);
  sub_1ED18(v16, &v10[v17], &unk_94DF00);
  v18 = *(v5 + 48);
  if (v18(v10, 1, v4) != 1)
  {
    sub_1ED18(v10, v13, &unk_94DF00);
    if (v18(&v10[v17], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v17], v4);
      sub_55CCB0(&qword_954EE8, &type metadata accessor for ScreenshotsDisplayStyle);
      v19 = sub_7691C0();
      v20 = *(v5 + 8);
      v20(v7, v4);
      sub_10A2C(v16, &unk_94DF00);
      v20(v13, v4);
      sub_10A2C(v10, &unk_94DF00);
      return v19 & 1;
    }

    sub_10A2C(v16, &unk_94DF00);
    (*(v5 + 8))(v13, v4);
    goto LABEL_8;
  }

  sub_10A2C(v16, &unk_94DF00);
  if (v18(&v10[v17], 1, v4) != 1)
  {
LABEL_8:
    sub_10A2C(v10, &qword_95AC28);
    v19 = 0;
    return v19 & 1;
  }

  sub_10A2C(v10, &unk_94DF00);
  v19 = 1;
  return v19 & 1;
}

void sub_55C724(objc_class *a1, uint64_t a2)
{
  v4 = sub_5599F0();
  if (v4 >> 62)
  {
    v16 = v4;
    v17 = sub_76A860();
    v4 = v16;
    if (v17 > a2)
    {
LABEL_3:
      v5 = (v4 + 8 * a2);
      v6 = v4 & 0xC000000000000001;
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) > a2)
        {
          v7 = v5[4];
          goto LABEL_7;
        }

        __break(1u);
        return;
      }

      v7 = sub_76A770();
LABEL_7:
      v18 = v7;
      type metadata accessor for VideoView();
      v8 = swift_dynamicCastClass();
      if (v8)
      {
        v9 = v8;

        v10 = qword_940590;
        v11 = [*(v9 + qword_940590) layer];
        [v11 removeAllAnimations];

        [*(v9 + v10) setImage:a1];
      }

      else
      {

        if (v6)
        {
          v12 = sub_76A770();
        }

        else
        {
          v12 = v5[4];
        }

        v18 = v12;

        type metadata accessor for BorderedScreenshotView();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          goto LABEL_15;
        }

        v10 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
        v9 = v13;
        v14 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
        v20.value.super.isa = a1;
        v20.is_nil = 0;
        sub_7591D0(v20, v15);
      }

      [*(v9 + v10) setNeedsDisplay];
LABEL_15:

      return;
    }
  }

  else if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    goto LABEL_3;
  }
}

void sub_55C924()
{
  v1 = sub_BD88(&qword_94F6F0);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_imageViews) = _swiftEmptyArrayStorage;
  type metadata accessor for BorderedScreenshotView();
  sub_7667C0();
  sub_55B714();
  sub_767480();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_creativeArtworkView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_metrics;
  if (qword_93D438 != -1)
  {
    swift_once();
  }

  v3 = sub_75C9A0();
  v4 = sub_BE38(v3, qword_95ABB8);
  (*(*(v3 - 8) + 16))(v0 + v2, v4, v3);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayConfiguration;
  if (qword_93C258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for ScreenshotDisplayConfiguration();
  v7 = sub_BE38(v6, qword_99A2F0);
  sub_163C10(v7, v0 + v5);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_platform) = 0;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider15LockupMediaView_screenshotsDisplayStyle;
  v9 = enum case for ScreenshotsDisplayStyle.standard(_:);
  v10 = sub_760770();
  (*(*(v10 - 8) + 104))(v0 + v8, v9, v10);
  sub_76A840();
  __break(1u);
}

void sub_55CB74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_55CCB0(&qword_93F500, type metadata accessor for VideoView);
    v2 = [v7 superview];
    if (v2)
    {
      v3 = v2;
      sub_2630C();
      v4 = v0;
      v5 = sub_76A1C0();

      if ((v5 & 1) == 0)
      {
        return;
      }

      v6 = swift_unknownObjectWeakLoadStrong();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }
  }
}

uint64_t sub_55CC98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_55CCB0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_55CCF8()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView] removeFromSuperview];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView] removeFromSuperview];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView] removeFromSuperview];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView] removeFromSuperview];
  v6 = objc_opt_self();
  v7 = [v6 clearColor];
  [v2 setBackgroundColor:v7];

  v8 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors;
  v9 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors];
  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10 <= 2)
    {
      goto LABEL_3;
    }

LABEL_17:
    if (v10 != 3)
    {
      if (v10 != 4)
      {
        goto LABEL_42;
      }

      v6 = type metadata accessor for GradientView();
      v22 = [objc_allocWithZone(v6) init];
      v23 = *&v2[v3];
      *&v2[v3] = v22;
      v24 = v22;

      v5 = sub_BD88(&unk_93F5C0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_77B6C0;
      v1 = *&v2[v8];
      if ((v1 & 0xC000000000000001) != 0)
      {

        v69 = sub_76A770();

        v26 = v69;
        v1 = *&v2[v8];
      }

      else
      {
        if (!*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v26 = *(v1 + 32);
      }

      *(v25 + 32) = v26;
      if ((v1 & 0xC000000000000001) != 0)
      {

        v71 = sub_76A770();

        v27 = v71;
      }

      else
      {
        if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        v27 = *(v1 + 40);
      }

      *(v25 + 40) = v27;
      *&v24[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v25;

      sub_4AC204();

      v28 = *&v2[v3];
      v1 = &selRef_absoluteDimension_;
      v29 = [v28 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

      v30 = *&v2[v3];
      v31 = [v30 layer];
      objc_opt_self();
      [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_77B6C0;
      v32 = *&v2[v8];
      if ((v32 & 0xC000000000000001) != 0)
      {
        goto LABEL_56;
      }

      if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= 3uLL)
      {
        v33 = *(v32 + 48);
LABEL_28:
        *(v5 + 32) = v33;
        if ((v32 & 0xC000000000000001) != 0)
        {
LABEL_61:

          v74 = sub_76A770();

          v34 = v74;
          goto LABEL_31;
        }

        if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)) >= 4uLL)
        {
          v34 = *(v32 + 56);
LABEL_31:
          *(v5 + 40) = v34;
          v35 = [objc_allocWithZone(v6) init];
          *&v35[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v5;

          sub_4AC204();
          sub_4AC060(&off_87DBF0);
          v36 = v35;
          v37 = [v36 *(v1 + 8)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

          v38 = [v36 *(v1 + 8)];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

          v39 = [v36 *(v1 + 8)];
          [v39 setMask:0];

          v40 = *&v2[v4];
          *&v2[v4] = v36;

          sub_55DA38();
          [v2 addSubview:*&v2[v3]];
          [v2 addSubview:{*&v2[v4], v75}];
          goto LABEL_42;
        }

LABEL_64:
        __break(1u);
        return;
      }

      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v77 = type metadata accessor for GradientView();
    v41 = [objc_allocWithZone(v77) init];
    v42 = *&v2[v3];
    *&v2[v3] = v41;
    v43 = v41;

    sub_BD88(&unk_93F5C0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_77B6C0;
    v44 = *&v2[v8];
    if ((v44 & 0xC000000000000001) != 0)
    {

      v75 = sub_76A770();

      v45 = v75;
      v44 = *&v2[v8];
    }

    else
    {
      if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) < 2uLL)
      {
LABEL_55:
        __break(1u);
LABEL_56:

        v73 = sub_76A770();

        v33 = v73;
        v32 = *&v2[v8];
        goto LABEL_28;
      }

      v45 = *(v44 + 40);
    }

    *(v1 + 32) = v45;
    if ((v44 & 0xC000000000000001) != 0)
    {

      v72 = sub_76A770();

      v46 = v72;
    }

    else
    {
      if (*(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)) < 3uLL)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v46 = *(v44 + 48);
    }

    *(v1 + 40) = v46;
    *&v43[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v1;

    sub_4AC204();

    v47 = *&v2[v3];
    v48 = [v47 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

    v49 = *&v2[v3];
    v50 = [v49 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 0.0}];

    v51 = [objc_allocWithZone(v77) init];
    v52 = *&v2[v4];
    *&v2[v4] = v51;
    v53 = v51;

    v54 = *&v2[v8];
    if ((v54 & 0xC000000000000001) != 0)
    {

      v56 = sub_76A770();

      v57 = &selRef_absoluteDimension_;
      v55 = &selRef_setSpeed_;
    }

    else
    {
      v55 = &selRef_setSpeed_;
      if (!*(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_63;
      }

      v56 = *(v54 + 32);
      v57 = &selRef_absoluteDimension_;
    }

    [v53 v55[457]];

    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_77B6C0;
    *(v58 + 32) = [v6 clearColor];
    v59 = [v6 blackColor];
    v60 = [v59 colorWithAlphaComponent:0.2];

    *(v58 + 40) = v60;
    v61 = [objc_allocWithZone(v77) init];
    *&v61[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v58;

    sub_4AC204();
    sub_4AC060(&off_87DBC0);
    v62 = v61;
    v63 = [v62 v57[1]];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 1.0}];

    v64 = [v62 v57[1]];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

    v65 = [v62 v57[1]];
    [v65 setMask:0];

    v66 = *&v2[v5];
    *&v2[v5] = v62;

    v67 = *&v2[v4];
    [v67 addSubview:v62];

    sub_55DA38();
    [v2 addSubview:*&v2[v3]];
    [v2 addSubview:{*&v2[v4], v76}];
    goto LABEL_42;
  }

  v10 = sub_76A860();
  if (v10 > 2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v10 == 1)
  {
    v20 = *&v2[v8];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = sub_76A770();
    }

    else
    {
      if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v21 = *(v20 + 32);
    }

    [v2 setBackgroundColor:v21];

    goto LABEL_42;
  }

  if (v10 == 2)
  {
    v11 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
    v12 = *&v2[v3];
    *&v2[v3] = v11;
    v13 = v11;

    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77B6C0;
    v5 = *&v2[v8];
    if ((v5 & 0xC000000000000001) != 0)
    {

      v68 = sub_76A770();

      v14 = v68;
      v5 = *&v2[v8];
      goto LABEL_8;
    }

    if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v14 = *(v5 + 40);
LABEL_8:
      *(v6 + 32) = v14;
      if ((v5 & 0xC000000000000001) != 0)
      {

        v70 = sub_76A770();

        v15 = v70;
        goto LABEL_11;
      }

      if (*(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
      {
        v15 = *(v5 + 32);
LABEL_11:
        *(v6 + 40) = v15;
        *&v13[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v6;

        sub_4AC204();

        v16 = *&v2[v3];
        v17 = [v16 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

        v18 = *&v2[v3];
        v19 = [v18 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{1.0, 1.0}];

        [v2 addSubview:{*&v2[v3], v75}];
        goto LABEL_42;
      }

      __break(1u);
      goto LABEL_59;
    }

    __break(1u);
    goto LABEL_53;
  }

LABEL_42:
  [v2 setNeedsLayout];

  [v2 setNeedsDisplay];
}

uint64_t sub_55D954(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors) = a1;

  v5 = sub_11724C(v4, v3);

  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + v2);
    if (v7 >> 62)
    {
      result = sub_76A860();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
      if (!result)
      {
        return result;
      }
    }

    v8 = *(&stru_B8.reloff + (swift_isaMask & *v1));

    return v8();
  }

  return result;
}

void sub_55DA38()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors);
  if (v2 >> 62)
  {
    if (sub_76A860() < 3)
    {
      return;
    }
  }

  else if (*(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)) < 3)
  {
    return;
  }

  sub_BD88(&unk_93F5C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_77B6C0;
  v4 = objc_opt_self();
  *(v3 + 32) = [v4 clearColor];
  *(v3 + 40) = [v4 whiteColor];
  v5 = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v3;

  sub_4AC204();
  sub_4AC060(&off_87DB90);
  v6 = v5;
  v7 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.0, 0.0}];

  v8 = [v6 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.0, 1.0}];

  v9 = [v6 layer];
  [v9 setMask:0];

  v10 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView;
  v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView) = v6;

  v12 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView) layer];
  v13 = [*(v1 + v10) layer];
  [v12 setMask:v13];
}

id sub_55DCE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors] = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView;
  v10 = type metadata accessor for GradientView();
  *&v4[v9] = [objc_allocWithZone(v10) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView;
  *&v4[v11] = [objc_allocWithZone(v10) init];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView;
  *&v4[v12] = [objc_allocWithZone(v10) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView;
  *&v4[v13] = [objc_allocWithZone(v10) init];
  v20.receiver = v4;
  v20.super_class = type metadata accessor for MultiCornerGradientView();
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  v16 = [objc_opt_self() mainScreen];
  [v16 scale];
  v18 = v17;

  [v15 setRasterizationScale:v18];
  return v14;
}

void sub_55DEAC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for MultiCornerGradientView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView];
  [v0 bounds];
  [v4 setFrame:?];
}

id sub_55E000()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiCornerGradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_55E0D4()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_colors) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientView;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_secondaryGradientMaskView;
  *(v0 + v4) = [objc_allocWithZone(v2) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider23MultiCornerGradientView_bottomRightOverlayView;
  *(v0 + v5) = [objc_allocWithZone(v2) init];
  sub_76A840();
  __break(1u);
}

uint64_t sub_55E1C8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_55E228(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75C830();
  v9 = sub_7575D0();
  (*(v6 + 8))(v8, v5);
  if (!v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = v10;
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);
        v14 = a1;
        v15 = v13(ObjectType, v11);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v17 = Strong;
          v18 = [Strong view];

          if (!v18)
          {
            __break(1u);
            return;
          }

          v19 = [v18 safeAreaLayoutGuide];

          [v19 layoutFrame];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;

          v39.origin.x = v21;
          v39.origin.y = v23;
          v39.size.width = v25;
          v39.size.height = v27;
          MinY = CGRectGetMinY(v39);
        }

        else
        {
          MinY = 0.0;
        }

        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = v29;
          v31 = *&v29[qword_99A4C0];
          if (v31)
          {
            v32 = v15 - MinY;

            if (v32 == *(v31 + 32))
            {

              return;
            }

            *(v31 + 32) = v32;
            [a3 _systemContentInset];
            v34 = v33;
            [a3 contentOffset];
            v36 = v35;
            [a3 contentInset];
            (*(v31 + 16))(v34 + v36 + v37 > *(v31 + 32));
          }

          else
          {
          }
        }
      }
    }
  }
}

char *sub_55E4F0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_55E6B8(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_55E738;
}

void sub_55E738(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_568754(&qword_93F500, 255, type metadata accessor for VideoView);
      v7 = v24;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_BE70(0, &qword_93E550);
        v10 = v4;
        v11 = sub_76A1C0();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_55A7A8();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_568754(&qword_93F500, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_BE70(0, &qword_93E550);
      v16 = v4;
      v17 = sub_76A1C0();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_55A7A8();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_55EA08()
{
  v1 = v0;
  v2 = sub_760840();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760D90();
  v138 = *(v6 - 8);
  v139 = v6;
  __chkstk_darwin(v6);
  v128 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_762D10();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v131 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_75D850();
  v142 = *(v10 - 8);
  v143 = v10;
  __chkstk_darwin(v10);
  v130 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v141 = &v102 - v13;
  v146 = sub_760820();
  v140 = *(v146 - 8);
  __chkstk_darwin(v146);
  v136 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v147 = &v102 - v16;
  v17 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v17 - 8);
  v127 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v144 = &v102 - v20;
  v21 = sub_BD88(&unk_93F5A0);
  v145 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v102 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v185.receiver = v0;
  v185.super_class = v24;
  objc_msgSendSuper2(&v185, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_lockupView];
  sub_75D650();
  sub_12EE70();
  sub_75D650();
  sub_75D650();
  sub_769D20();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v122 = v5;
    v123 = v3;
    v124 = v2;
    sub_763F60();
    v27 = [v0 traitCollection];
    v28 = sub_7671D0();
    v119 = sub_BD88(&unk_93F5C0);
    v29 = swift_allocObject();
    v135 = xmmword_77D9F0;
    *(v29 + 16) = xmmword_77D9F0;
    *(v29 + 32) = v27;
    v30 = v27;
    v129 = v28;
    v31 = sub_7671E0();
    v117 = sub_24128();
    sub_7666E0();

    v33 = v145 + 8;
    v32 = *(v145 + 8);
    v121 = v21;
    v118 = v32;
    v32(v23, v21);
    sub_75D650();
    CGRectGetMinX(v186);
    [v25 frame];
    MaxY = CGRectGetMaxY(v187);
    v35 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title + 8];
    v110 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel];
    v109 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_769240();
      v111 = v40;
      v112 = v39;
    }

    else
    {
      v111 = 0;
      v112 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_769240();
      v113 = v44;
      v114 = v43;
    }

    else
    {
      v113 = 0;
      v114 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v137 = *(v45 + v46);

    v47 = v144;
    _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
    (*(v138 + 56))(v47, 0, 1, v139);
    v48 = *(*&v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels);
    v103 = v25[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_shouldEvenlyDistribute];
    v134 = v48;

    sub_75D650();
    v49 = [v1 traitCollection];
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v50 = v146;
    v51 = sub_BE38(v146, qword_99B150);
    v115 = *(v140 + 16);
    v116 = v140 + 16;
    v115(v147, v51, v50);
    v52 = sub_769A00();
    v125 = v1;
    v145 = v33;
    v120 = v23;
    if (v52)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v53 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v53 = qword_946938;
    }

    v54 = v143;
    v55 = sub_BE38(v143, v53);
    v56 = v142;
    v57 = v130;
    (*(v142 + 16))(v130, v55, v54);
    (*(v56 + 32))(v141, v57, v54);
    v58 = [v49 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v108 = sub_7670D0();
    swift_allocObject();
    v130 = sub_7670B0();
    v59 = objc_opt_self();
    v106 = v59;
    v60 = [v59 preferredFontForTextStyle:UIFontTextStyleBody];
    v61 = sub_7653B0();
    v184[3] = v61;
    v62 = sub_568754(&qword_93F9B0, 255, &type metadata accessor for Feature);
    v184[4] = v62;
    v105 = v62;
    v63 = sub_B1B4(v184);
    v64 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v65 = *(v61 - 8);
    v66 = *(v65 + 104);
    v107 = v65 + 104;
    v104 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v66(v63, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
    sub_765C30();
    v126 = v49;
    sub_BEB8(v184);
    v67 = v131;
    sub_762D00();
    sub_762CE0();
    v68 = v133;
    v132 = *(*&v132 + 8);
    (*&v132)(v67, v133);
    v69 = [v59 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v183[3] = v61;
    v183[4] = v62;
    v70 = sub_B1B4(v183);
    v66(v70, v64, v61);
    sub_765C30();
    sub_BEB8(v183);
    sub_762D00();
    sub_762CE0();
    v71 = v132;
    (*&v132)(v67, v68);
    v72 = [v106 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v182[3] = v61;
    v182[4] = v105;
    v73 = sub_B1B4(v182);
    v66(v73, v104, v61);
    sub_765C30();
    sub_BEB8(v182);
    sub_762D00();
    sub_762CE0();
    (*&v71)(v67, v68);
    v74 = v137;
    LODWORD(v133) = sub_246DC(0, v137) & (v74 != 0);
    if (v133 == 1)
    {
      v75 = v108;
      v132 = MaxY;
      v76 = objc_allocWithZone(v129);
      v77 = v126;
      v78 = sub_7671C0();
      v79 = v127;
      sub_1ED18(v144, v127, &unk_94AE30);
      v81 = v138;
      v80 = v139;
      v82 = *(v138 + 48);
      if (v82(v79, 1, v139) == 1)
      {
        v83 = v128;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v82(v79, 1, v80) != 1)
        {
          sub_10A2C(v79, &unk_94AE30);
        }
      }

      else
      {
        v83 = v128;
        (*(v81 + 32))(v128, v79, v80);
      }

      v86 = v78;
      sub_2185C(v137, v83, v86);

      (*(v81 + 8))(v83, v80);
      v84 = v75;
      swift_allocObject();
      v85 = sub_7670A0();
    }

    else
    {
      v84 = v108;
      swift_allocObject();
      v85 = sub_7670B0();
    }

    v139 = v85;

    v87 = v134;
    if ((sub_246DC(v134, 0) & (v87 != 0)) == 1)
    {
      v88 = v126;
      sub_F7FC(v87, v103);
      swift_allocObject();
      v89 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v89 = sub_7670B0();
      v88 = v126;
    }

    v115(v136, v147, v146);
    v181 = &protocol witness table for LayoutViewPlaceholder;
    v180 = v84;
    v179 = v130;
    v178 = 0;
    *&v176[40] = 0u;
    v177 = 0u;
    sub_134D8(v184, v176);
    sub_134D8(v183, &v175);
    v174 = 0;
    v172 = 0u;
    v173 = 0u;
    v171 = 0;
    v169 = 0u;
    v170 = 0u;

    v90 = sub_7670C0();
    v168 = &protocol witness table for LayoutViewPlaceholder;
    v167 = v84;
    v166 = v90;
    v165 = 0;
    v163 = 0u;
    v164 = 0u;
    v162 = 0;
    v160 = 0u;
    v161 = 0u;
    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    v156 = 0;
    v155 = 0u;
    *&v154[40] = 0u;
    sub_134D8(v182, v154);
    v152 = v84;
    v153 = &protocol witness table for LayoutViewPlaceholder;
    v150 = &protocol witness table for LayoutViewPlaceholder;
    v151 = v139;
    v149 = v84;
    v148 = v89;
    v91 = v122;
    sub_760830();
    v92 = swift_allocObject();
    *(v92 + 16) = v135;
    *(v92 + 32) = v88;
    v93 = v88;
    v94 = sub_7671E0();
    sub_568754(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
    v95 = v124;
    sub_7665A0();

    (*(v123 + 8))(v91, v95);
    sub_BEB8(v182);
    sub_BEB8(v183);
    sub_BEB8(v184);
    (*(v142 + 8))(v141, v143);
    (*(v140 + 8))(v147, v146);
    v96 = v120;
    sub_763F60();
    v97 = swift_allocObject();
    *(v97 + 16) = v135;
    *(v97 + 32) = v93;
    v98 = v93;
    v99 = sub_7671E0();
    v100 = v121;
    sub_7666E0();

    v118(v96, v100);
    sub_10A2C(v144, &unk_94AE30);
    v101 = *&v125[OBJC_IVAR____TtC18ASMessagesProvider26AppSearchResultContentView_screenshots];
    [v125 bounds];
    sub_769D20();
    return [v101 setFrame:?];
  }

  return result;
}