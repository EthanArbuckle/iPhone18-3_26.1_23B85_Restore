void sub_100553800()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000A5D4(&qword_10094A450);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v21[-v5];
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "prepareForReuse", v4);
  v7 = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  sub_1002767A0();

  sub_100279CAC();
  v8 = sub_10076C7EC();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_10003837C(v6, &v1[v9], &qword_10094A450);
  swift_endAccess();
  v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] = 0;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton] = 0;
  if (v10)
  {
    [v10 removeFromSuperview];
  }

  sub_100553A5C();
  v11 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
  if (v12)
  {
    v13 = v12;
    v14 = sub_10076C63C();

    swift_beginAccess();
    *(v14 + 32) = _swiftEmptyArrayStorage;

    v15 = *&v1[v11];
    if (v15)
    {
      v16 = v15;
      sub_10076C6CC();
    }
  }

  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
  if (v17)
  {
    v18 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
    swift_beginAccess();
    v19 = *&v17[v18];
    *&v17[v18] = _swiftEmptyArrayStorage;
    v20 = v17;
    sub_100720B00(v19);
  }
}

void sub_100553A5C()
{
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v0 + *v1) == 6)
  {
    if (*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) != 1)
    {
      return;
    }

    v2 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
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

    v17 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    v18 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView);
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
    v5 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
    v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
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

    v8 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
    v9 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
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

    v11 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
    v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
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

    v14 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    v15 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView);
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

  v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (v19)
  {

    [v19 setHidden:1];
  }
}

id sub_100553C80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10075FEEC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003DFB08();
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  v8 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v9 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v9 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10 = v0[*v9];
  v11 = sub_100342B64;
  v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v14 = sub_1007333BC;
  v52 = v4;
  v53 = v3;
  v51 = ObjectType;
  if (v10 != 6)
  {
    if (v10 == 4)
    {
      v11 = sub_100342B64;
      v12 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v14 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v13 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    else
    {
      v11 = sub_10073304C;
      v12 = sub_100733208;
      v13 = sub_1007331DC;
      v14 = sub_100733020;
    }
  }

  v15 = &v7[qword_10094D6E0];
  *v15 = sub_1000082CC;
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

  sub_1001EDE3C();
  sub_100550978();
  v16 = &v7[qword_10094D6A0];
  *v16 = 0x4000000000000000;
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *(v16 + 3) = 0x4018000000000000;
  *(v16 + 4) = 0;
  v16[40] = 1;
  [v7 setNeedsLayout];
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v18 = *&v17[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  v19 = v0[v8];
  v20 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  v18[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded] = v19;
  v21 = *&v18[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = v19;
  v22 = v18;
  [v21 setNeedsLayout];
  *(*&v22[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = v18[v20];
  sub_10056970C();

  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
  v24 = v1[v8];
  v25 = v23[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
  v23[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v24;
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
  sub_10027608C(v6, v29);
  v32 = [v17 layer];
  [v32 setMaskedCorners:sub_1007704FC()];

  (*(v31 + 8))(v6, v30);
  v33 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
  if (v33)
  {
    v34 = v1[v8];
    v35 = v33[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
    v33[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v34;
    if (v34 != v35)
    {
      [v33 setNeedsLayout];
    }
  }

  v36 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
  v37 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v37)
  {
    v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    if (!v1[v8])
    {
      v38 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v39 = v1[*v38];
    v40 = sub_100342B64;
    v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v43 = sub_1007333BC;
    if (v39 != 6)
    {
      if (v39 == 4)
      {
        v40 = sub_100342B64;
        v41 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v43 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v42 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      }

      else
      {
        v40 = sub_10073304C;
        v41 = sub_100733208;
        v42 = sub_1007331DC;
        v43 = sub_100733020;
      }
    }

    v44 = &v37[qword_10094D6E0];
    *v44 = sub_1000082CC;
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

    sub_1001EDE3C();

    v46 = *&v1[v36];
    if (v46)
    {
      v47 = v46;
      sub_100550978();
      v48 = &v47[qword_10094D6A0];
      *v48 = 0x4000000000000000;
      *(v48 + 1) = 0;
      *(v48 + 2) = 0;
      *(v48 + 3) = 0x4018000000000000;
      *(v48 + 4) = 0;
      v48[40] = 1;
      [v47 setNeedsLayout];
    }
  }

  sub_1005543AC();
  sub_10033B118();
  return [v1 setNeedsLayout];
}

void sub_1005543AC()
{
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isTransitioning) & 1) == 0)
  {
    v1 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v2 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    if (*(v0 + *v2) == 6)
    {
      v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded) ^ 1u;
    }

    else
    {
      v3 = 0;
    }

    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView) setHidden:v3];
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
    if (v4)
    {
      if (*(v0 + v1))
      {
        v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v5 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
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

    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView);
    if (v7)
    {
      if (*(v0 + v1))
      {
        v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v8) == 6)
      {
        v9 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
      }

      else
      {
        v9 = 1;
      }

      [v7 setHidden:v9 & 1];
    }

    v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v10)
    {
      if (*(v0 + v1))
      {
        v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      }

      if (*(v0 + *v11) == 6)
      {
        v12 = *(v0 + v1) | *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
      }

      else
      {
        v12 = 1;
      }

      [v10 setHidden:v12 & 1];
    }

    if (*(v0 + v1))
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v14 = *(v0 + *v13);
    if (v14 == 6)
    {
      v15 = *(v0 + v1) ^ 1u;
    }

    else
    {
      v15 = (v14 == 4) & *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
    }

    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer) setHidden:v15];
    v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
    if (v16)
    {
      if (*(v0 + v1))
      {
        v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      else
      {
        v17 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
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

    v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView);
    v20 = (sub_100550978() & 1) == 0;

    [v19 setHidden:v20];
  }
}

id sub_100554624(unsigned __int8 a1)
{
  v2 = v1;
  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  v5 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v2[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v6 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(v4 + qword_10094D6A8) = v2[*v6];
  sub_1001EDB98();
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
  if (v7)
  {
    if (v2[v5])
    {
      v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    else
    {
      v8 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    }

    v7[qword_10094D6A8] = v2[*v8];
    v9 = v7;
    sub_1001EDB98();
  }

  v10 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  if (v2[v5])
  {
    v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v10[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory] = v2[*v11];
  v12 = v10;
  sub_100275DD8();

  if (v2[v5])
  {
    v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v13 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  sub_100554780(v2[*v13], a1);

  return [v2 setNeedsLayout];
}

void sub_100554780(unsigned __int8 a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = a2;
  v5 = sub_100762CAC();
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

  if (v2[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 6)
  {
    sub_100762C0C();
    sub_100762C4C();
    sub_100762C8C();
    v12 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
    v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
    v52 = v6;
    if (v13)
    {
      [v13 setHidden:0];
    }

    else
    {
      (*(v6 + 16))(v8, v11, v5);
      v14 = objc_allocWithZone(type metadata accessor for RiverTodayCardBackgroundView());
      v15 = sub_100720100(v8);
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
      v18 = sub_10077070C();

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

    v23 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
    if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView])
    {
      v24 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
      if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView])
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
        *(v29 + 16) = xmmword_1007AAF70;
        *(v29 + 40) = vdupq_n_s64(0x4058C00000000000uLL);
        (*(v52 + 16))(v8, v11, v5);
        v30 = objc_allocWithZone(sub_10000A5D4(&qword_10095D2C8));

        v31 = sub_10076C62C();
        [v31 setClipsToBounds:0];
        v32 = *&v2[v24];
        *&v2[v24] = v31;
        v33 = v31;

        [v27 addSubview:v33];
      }
    }

    v34 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer;
    if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer])
    {
      type metadata accessor for TodayListCardLockupContainer();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v36 = v35;
      v37 = v2[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded];
      v38 = v35[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded];
      v35[OBJC_IVAR____TtC20ProductPageExtension28TodayListCardLockupContainer_isExpanded] = v37;
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

    v44 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
    if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView])
    {
      v53[0] = sub_1000082CC;
      v53[1] = 0;
      v53[2] = sub_1007333BC;
      v53[3] = 0;
      v53[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[5] = 0;
      v53[6] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[7] = 0;
      v53[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v53[9] = 0;
      v53[10] = sub_100342B64;
      v53[11] = 0;
      v54 = 0x4000000000000000uLL;
      *v55 = 0;
      *&v55[8] = 0x4018000000000000;
      *&v55[16] = 0;
      v55[24] = 1;
      v45 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
      v46 = sub_1001ED0D8(v53, &v54);
      sub_100550978();
      v47 = &v46[qword_10094D6A0];
      *(v47 + 25) = *&v55[9];
      v48 = *v55;
      *v47 = v54;
      *(v47 + 1) = v48;
      [v46 setNeedsLayout];
      v46[qword_10094D6A8] = v3;
      sub_1001EDB98();
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

    sub_100553A5C();
  }
}

void sub_100554EF8()
{
  v1 = v0;
  swift_beginAccess();
  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_10055F9A8(&qword_10095D2C0, type metadata accessor for TodayListCardLockupContainer);
  sub_10076A03C();
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    sub_10076A03C();
  }
}

void sub_100555028()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10076611C();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_1000167E0(v3);
  type metadata accessor for TodayListCardLockupContainer();
  sub_10055F9A8(&qword_10095D2C0, type metadata accessor for TodayListCardLockupContainer);
  sub_10076A02C();
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
  if (v4)
  {
    v5 = v4;
    sub_10076A02C();
  }
}

void sub_100555168(unint64_t a1, unsigned int a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v151 = a4;
  v159 = a1;
  v145 = sub_10076637C();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v152 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076C7EC();
  v155 = *(v9 - 8);
  v156 = v9;
  __chkstk_darwin(v9);
  v153 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100766EBC();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v157 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v148 = &v130 - v13;
  v14 = sub_10000A5D4(&qword_10094A450);
  __chkstk_darwin(v14 - 8);
  v16 = &v130 - v15;
  v17 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v17 - 8);
  v19 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v130 - v21;
  v23 = sub_10076C38C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 16);
  v143 = a3;
  v25(v22, a3, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v26 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003837C(v22, &v4[v26], &unk_1009434A0);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v154 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v28 = *&v154[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  sub_100016E2C(&v4[v26], v19, &unk_1009434A0);
  v29 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  v30 = v28;
  sub_10003837C(v19, v28 + v29, &unk_1009434A0);
  swift_endAccess();

  v158 = a2;
  sub_1003DC6B0(a2);
  v31 = [v4 backgroundView];
  if (v31)
  {
    v32 = v31;
    v33 = sub_10076C70C();
    if (!v33)
    {
      sub_100016F40(0, &qword_100942F10);
      v33 = sub_100770D8C();
    }

    v34 = v33;
    [v32 setBackgroundColor:v33];
  }

  *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard] = v159;

  v35 = sub_10076C7FC();
  sub_10076472C();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {

    *(*&v154[v27] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
    sub_1005543AC();
    return;
  }

  v37 = v36;
  v141 = v35;
  sub_10076C80C();
  (*(v155 + 56))(v16, 0, 1, v156);
  v38 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle;
  swift_beginAccess();
  sub_10003837C(v16, &v5[v38], &qword_10094A450);
  swift_endAccess();
  v39 = sub_1007646DC();
  v40 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark;
  v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark] = v39 & 1;
  v140 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v41 = v5[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v169 = sub_10076C7FC();
  sub_100761BFC();
  sub_10000A5D4(&qword_100945700);
  v42 = swift_dynamicCast();
  v147 = v37;
  if (v42)
  {
    v146 = v40;
    sub_100012498(&v166, &aBlock);
    sub_10000CF78(&aBlock, v163);
    v43 = [v5 traitCollection];
    v44 = sub_1007684EC();

    if (v44)
    {
      sub_10000CF78(&aBlock, v163);
      v45 = sub_1007684CC();
      if (v45)
      {
        sub_10055C378(v44, v45, v158, v143, v151);

        if (qword_10093F708 != -1)
        {
          swift_once();
        }

        v46 = qword_10099CED0;
        v47 = *algn_10099CED8;
        v48 = sub_1007646DC();
        v49 = v148;
        sub_10076C77C();
        v50 = sub_100766E9C();
        (*(v149 + 8))(v49, v150);
        sub_10055BB38(v46, v47, v48 & 1, v50 & 1);

        sub_10000CD74(&aBlock);
        v40 = v146;
        goto LABEL_29;
      }
    }

    sub_10000CD74(&aBlock);
    v40 = v146;
  }

  else
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10000CFBC(&v166, &qword_1009456F8);
  }

  v169 = sub_10076C7FC();
  if (!swift_dynamicCast())
  {
    v168 = 0;
    v166 = 0u;
    v167 = 0u;
    sub_10000CFBC(&v166, &qword_1009456F8);
LABEL_28:
    *(*&v154[v27] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
    goto LABEL_29;
  }

  sub_100012498(&v166, &aBlock);
  sub_10000CF78(&aBlock, v163);
  v51 = [v5 traitCollection];
  v52 = sub_1007684FC();

  if (!v52)
  {
LABEL_27:
    sub_10000CD74(&aBlock);
    goto LABEL_28;
  }

  sub_10000CF78(&aBlock, v163);
  v53 = sub_1007684CC();
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

  sub_10055E0F8(v52, v53, v55, v143, v151);

  if (qword_10093F700 != -1)
  {
    swift_once();
  }

  v56 = qword_10099CEC0;
  v57 = *algn_10099CEC8;
  v58 = sub_1007646DC();
  v59 = v148;
  sub_10076C77C();
  v60 = sub_100766E9C();
  (*(v149 + 8))(v59, v150);
  sub_10055BB38(v56, v57, v58 & 1, v60 & 1);

  sub_10000CD74(&aBlock);
  v40 = v54;
LABEL_29:
  v61 = *&v5[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  if ((sub_100550978() & 1) != 0 && *(v40 + v5) == 1)
  {
    (*(v155 + 104))(v153, enum case for TodayCard.Style.dark(_:), v156);
  }

  else
  {
    sub_10076C80C();
  }

  v62 = sub_10076C82C();
  v64 = v63;
  v142 = sub_10076C81C();
  v146 = v65;
  v66 = sub_10076C6EC();
  v148 = v67;
  sub_10076C75C();
  v68 = sub_1007646FC();
  v154 = v69;
  sub_10076C77C();
  v70 = v158;
  v71 = sub_1007333BC;
  v133 = v68;
  v132 = v66;
  if (v158 == 6)
  {
    v134 = sub_1000082CC;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v137 = sub_100342B64;
  }

  else if (v158 == 4)
  {
    v137 = sub_100342B64;
    v136 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v71 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v134 = sub_1000082CC;
    v135 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v137 = sub_10073304C;
    v136 = sub_100733208;
    v135 = sub_1007331DC;
    v71 = sub_100733020;
    v134 = sub_1000082CC;
  }

  v138 = sub_100550978();
  v61[qword_10094D6D8] = 0;
  v72 = *&v61[qword_10094D6C0];
  *(v72 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v73 = *&v61[qword_10094D6B8];
  v139 = v64;
  sub_1001E44C4(v62, v64);
  v74 = sub_100766EAC();
  v75 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v76 = *&v73[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v70 != 4 || (v74 & 1) != 0)
  {
    v77 = [v76 text];
    if (v77)
    {
      v78 = v77;
      sub_10076FF9C();
    }

    v79 = sub_10077002C();
    v80 = v79 & 1;

    if (v80 == [*&v73[v75] isHidden] || (v73[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
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
        v164 = sub_100138CF0;
        v165 = v83;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_10009AEDC;
        v163 = &unk_1008998F8;
        v131 = _Block_copy(&aBlock);
        v84 = v73;

        v85 = swift_allocObject();
        *(v85 + 16) = v84;
        v164 = sub_100138CFC;
        v165 = v85;
        aBlock = _NSConcreteStackBlock;
        v161 = 1107296256;
        v162 = sub_1000513F0;
        v163 = &unk_100899948;
        v86 = _Block_copy(&aBlock);
        v87 = v84;

        v88 = v131;
        [v130 animateWithDuration:0 delay:v131 options:v86 animations:v82 completion:0.0];
        _Block_release(v86);
        _Block_release(v88);
      }

      [*&v73[v75] setHidden:v79 & 1];
      v73[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v73 setNeedsLayout];
    }
  }

  else if (([v76 isHidden] & 1) != 0 || (v73[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*&v73[v75] setHidden:1];
  }

  else
  {
    [*&v73[v75] setHidden:1];
    v73[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v73 setNeedsLayout];
  }

  v89 = &v61[qword_10094D6E0];
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

  sub_1001EDE3C();
  v90 = v154;
  if (v146)
  {
    if (v158 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v91 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v92 = *(v72 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v93 = objc_allocWithZone(NSAttributedString);
    v94 = v92;
    v95 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10055F9A8(&qword_100943320, type metadata accessor for Key);
    isa = sub_10076FE3C().super.isa;

    v97 = [v93 initWithString:v95 attributes:isa];

    [v94 setAttributedText:v97];
    [*(v72 + v91) setAdjustsFontSizeToFitWidth:0];
    [*(v72 + v91) setMinimumScaleFactor:0.0];
    [*(v72 + v91) setAttributedText:0];
    if (v148 && v61[qword_10094D6B0] == 4)
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

      sub_1001E45BC(v98, v99, v100, v101);
    }

    else
    {
      sub_1001E44C4(v142, v146);
      v90 = v154;
    }
  }

  v102 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v103 = *(v72 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
  v104 = [v103 text];
  if (v104)
  {
    v105 = v147;
    v106 = &off_100911000;
  }

  else
  {
    v104 = [*(v72 + v102) attributedText];
    v106 = &off_100911000;
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

  [v61 v106[194]];
  v109 = *&v61[qword_10094D6C8];
  [v109 setImage:0];
  [v109 setHidden:1];
  if (v108 != 4 && (sub_100766E8C() & 1) == 0 && v90)
  {
    v110 = v105;
    v111 = HIBYTE(v90) & 0xF;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v111 = v133 & 0xFFFFFFFFFFFFLL;
    }

    v112 = v111 == 0;
    v113 = *&v61[qword_10094D6D0];
    v114 = &v113[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v115 = *&v113[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    goto LABEL_76;
  }

  v113 = *&v61[qword_10094D6D0];
  v114 = &v113[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  v115 = *&v113[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v90)
  {
    v110 = v105;
    v112 = 1;
LABEL_76:
    v116 = v115;
    v90 = sub_10076FF6C();
    v105 = v110;
    goto LABEL_78;
  }

  v116 = v115;
  v112 = 1;
LABEL_78:
  [v116 setText:v90];

  if (v112 == [*v114 isHidden] || (v113[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
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
      v164 = sub_100138AA8;
      v165 = v120;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_10009AEDC;
      v163 = &unk_100899858;
      v121 = _Block_copy(&aBlock);
      v122 = v113;

      v123 = swift_allocObject();
      *(v123 + 16) = v122;
      v164 = sub_100138AC8;
      v165 = v123;
      aBlock = _NSConcreteStackBlock;
      v161 = 1107296256;
      v162 = sub_1000513F0;
      v163 = &unk_1008998A8;
      v124 = _Block_copy(&aBlock);
      v125 = v122;
      v105 = v147;

      [v117 animateWithDuration:0 delay:v121 options:v124 animations:v119 completion:0.0];
      _Block_release(v124);
      _Block_release(v121);
    }

    [*v114 setHidden:v112];
    v113[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v113 setNeedsLayout];
  }

  v126 = v153;
  sub_1001EE35C(v153, v138 & 1);
  [v61 setNeedsLayout];

  (*(v149 + 8))(v157, v150);
  (*(v144 + 8))(v152, v145);
  sub_100550978();
  v127 = &v61[qword_10094D6A0];
  *v127 = 0x4000000000000000;
  *(v127 + 1) = 0;
  *(v127 + 2) = 0;
  *(v127 + 3) = 0x4018000000000000;
  *(v127 + 4) = 0;
  v127[40] = 1;
  [v61 setNeedsLayout];
  (*(v155 + 8))(v126, v156);
  v128 = sub_10076471C();
  sub_100760C4C();
  sub_10076F64C();
  v129 = v151;
  sub_10076FC1C();
  sub_10027C09C(v128);

  if (v5[v140] == 6)
  {
    sub_1005568DC(v159, v105, v158, v143, v129);
  }

  sub_10055074C();
  sub_100553A5C();
  sub_1005543AC();
  sub_100550A3C();
  sub_100557E64();
  [v5 setNeedsLayout];
}

void sub_1005568DC(unint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v134 = a5;
  v148 = a3;
  v147 = a1;
  v138 = sub_100766EBC();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v149 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_10076637C();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v10 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076C7EC();
  v143 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView);
  v139 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v15 = *(*(v141 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia);
  v16 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
  v17 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView);
  v145 = a2;
  v146 = v5;
  v144 = v14;
  v142 = v10;
  if (v15)
  {
    if (v17)
    {
      v18 = v17;
      v19 = sub_10076C63C();

      swift_beginAccess();
      *(v19 + 32) = _swiftEmptyArrayStorage;
    }

    v20 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
      swift_beginAccess();
      v22 = *&v20[v21];
      *&v20[v21] = _swiftEmptyArrayStorage;
      v23 = v20;
      sub_100720B00(v22);
      goto LABEL_35;
    }

    goto LABEL_36;
  }

  if (v17)
  {
    v24 = v17;
    v25 = sub_10076C63C();

    v26 = sub_10076471C();
    swift_beginAccess();
    *(v25 + 32) = v26;

    v27 = *(v6 + v16);
    if (v27)
    {
      v28 = v27;
      v29 = sub_10076C63C();

      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      *(v29 + 16) = aBlock;
    }
  }

  v30 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView);
  if (!v30)
  {
    goto LABEL_36;
  }

  v23 = v30;
  v31 = sub_10076471C();
  v32 = v31;
  aBlock = _swiftEmptyArrayStorage;
  v33 = v31 & 0xFFFFFFFFFFFFFF8;
  if (v31 >> 62)
  {
LABEL_32:
    v34 = sub_10077158C();
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
        sub_10077149C();
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

      if (sub_10076BB9C())
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

    v36 = sub_10076BE1C();

    if (!v36)
    {
      goto LABEL_15;
    }

    sub_10077019C();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v133 = aBlock;
    v11 = v140;
  }

  while (v35 != v34);
LABEL_34:

  v37 = OBJC_IVAR____TtC20ProductPageExtension28RiverTodayCardBackgroundView_colors;
  swift_beginAccess();
  v38 = *&v23[v37];
  *&v23[v37] = v133;
  sub_100720B00(v38);
  v6 = v146;
  v14 = v144;
LABEL_35:

LABEL_36:
  v39 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (!v39)
  {
    goto LABEL_97;
  }

  v40 = *(*&v139[v141] + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) == 1;
  v140 = v11;
  if (v40)
  {
    if (*(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_isMediaDark))
    {
      goto LABEL_45;
    }

    goto LABEL_40;
  }

  if (*(v6 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v42 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v42 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (*(v6 + *v42) != 6)
  {
LABEL_40:
    v41 = v39;
    sub_10076C80C();
    goto LABEL_46;
  }

LABEL_45:
  (*(v143 + 104))(v14, enum case for TodayCard.Style.dark(_:), v11, v12);
  v43 = v39;
LABEL_46:
  v44 = sub_10076C82C();
  v46 = v45;
  v133 = sub_10076C81C();
  v139 = v47;
  v126 = sub_10076C6EC();
  v141 = v48;
  sub_10076C75C();
  v49 = sub_1007646FC();
  v147 = v50;
  sub_10076C77C();
  v51 = v148;
  v52 = sub_1007333BC;
  v127 = v49;
  if (v148 == 6)
  {
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v132 = sub_100342B64;
  }

  else if (v148 == 4)
  {
    v132 = sub_100342B64;
    v131 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v130 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v132 = sub_10073304C;
    v131 = sub_100733208;
    v130 = sub_1007331DC;
    v52 = sub_100733020;
  }

  v128 = sub_100550978();
  v39[qword_10094D6D8] = 0;
  v53 = *&v39[qword_10094D6C0];
  *(v53 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v54 = *&v39[qword_10094D6B8];
  v129 = v46;
  sub_1001E44C4(v44, v46);
  v55 = sub_100766EAC();
  v56 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v57 = *&v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
  if (v51 != 4 || (v55 & 1) != 0)
  {
    v58 = [v57 text];
    if (v58)
    {
      v59 = v58;
      sub_10076FF9C();
    }

    v60 = sub_10077002C();
    v61 = v60 & 1;

    if (v61 == [*&v54[v56] isHidden] || (v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
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
        v154 = sub_100138CF0;
        v155 = v64;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_10009AEDC;
        v153 = &unk_100899A88;
        v124 = _Block_copy(&aBlock);
        v65 = v54;

        v66 = swift_allocObject();
        *(v66 + 16) = v65;
        v154 = sub_100138CFC;
        v155 = v66;
        aBlock = _NSConcreteStackBlock;
        v151 = 1107296256;
        v152 = sub_1000513F0;
        v153 = &unk_100899AD8;
        v67 = _Block_copy(&aBlock);
        v68 = v65;

        v69 = v124;
        [v125 animateWithDuration:0 delay:v124 options:v67 animations:v63 completion:0.0];
        _Block_release(v67);
        _Block_release(v69);
      }

      [*&v54[v56] setHidden:v60 & 1];
      v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
LABEL_64:
      [v54 setNeedsLayout];
    }
  }

  else
  {
    if ([v57 isHidden] & 1) == 0 && (v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning])
    {
      [*&v54[v56] setHidden:1];
      v54[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      goto LABEL_64;
    }

    [*&v54[v56] setHidden:1];
  }

  v70 = &v39[qword_10094D6E0];
  *v70 = sub_1000082CC;
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

  sub_1001EDE3C();
  v11 = v147;
  if (v139)
  {
    if (v148 == 4)
    {
      sub_1001EFAF8();
    }

    else
    {
      sub_1001EFB1C();
    }

    v71 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
    v72 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
    v73 = objc_allocWithZone(NSAttributedString);
    v74 = v72;
    v75 = sub_10076FF6C();
    type metadata accessor for Key(0);
    sub_10055F9A8(&qword_100943320, type metadata accessor for Key);
    isa = sub_10076FE3C().super.isa;

    v77 = [v73 initWithString:v75 attributes:isa];

    [v74 setAttributedText:v77];
    [*(v53 + v71) setAdjustsFontSizeToFitWidth:0];
    [*(v53 + v71) setMinimumScaleFactor:0.0];
    [*(v53 + v71) setAttributedText:0];
    if (v141 && v39[qword_10094D6B0] == 4)
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

      sub_1001E45BC(v78, v79, v80, v81);
    }

    else
    {
      sub_1001E44C4(v133, v139);
      v11 = v147;
    }
  }

  v82 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
  v83 = *(v53 + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label);
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
  v87 = *&v39[qword_10094D6C8];
  [v87 setImage:0];
  [v87 setHidden:1];
  if (v86 == 4 || (sub_100766E8C() & 1) != 0 || !v11)
  {
    v90 = *&v39[qword_10094D6D0];
    v91 = &v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
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
    v90 = *&v39[qword_10094D6D0];
    v91 = &v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
    v92 = *&v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
LABEL_88:
    v93 = v92;
    v11 = sub_10076FF6C();
  }

  [v93 setText:v11];

  v94 = [*v91 isHidden];
  v95 = v144;
  if (v89 == v94 || (v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
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
      v154 = sub_100138CF0;
      v155 = v99;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v152 = sub_10009AEDC;
      v153 = &unk_1008999E8;
      v11 = _Block_copy(&aBlock);
      v100 = v90;

      v101 = swift_allocObject();
      *(v101 + 16) = v100;
      v154 = sub_100138CFC;
      v155 = v101;
      aBlock = _NSConcreteStackBlock;
      v151 = 1107296256;
      v6 = v146;
      v152 = sub_1000513F0;
      v153 = &unk_100899A38;
      v102 = _Block_copy(&aBlock);
      v103 = v100;
      v95 = v144;

      [v96 animateWithDuration:0 delay:v11 options:v102 animations:v98 completion:0.0];
      _Block_release(v102);
      _Block_release(v11);
    }

    [*v91 setHidden:v89];
    v90[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v90 setNeedsLayout];
  }

  v104 = v140;
  sub_1001EE35C(v95, v128 & 1);
  [v39 setNeedsLayout];

  (*(v137 + 8))(v149, v138);
  (*(v135 + 8))(v142, v136);
  sub_100550978();
  v105 = &v39[qword_10094D6A0];
  *v105 = 0x4000000000000000;
  *(v105 + 1) = 0;
  *(v105 + 2) = 0;
  *(v105 + 3) = 0x4018000000000000;
  *(v105 + 4) = 0;
  v105[40] = 1;
  [v39 setNeedsLayout];

  (*(v143 + 8))(v95, v104);
LABEL_97:
  if (*(v6 + OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded))
  {
    return;
  }

  v106 = sub_10076471C();
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

    v112 = sub_10077158C();
    if (sub_10077158C() < 0)
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

    if (sub_10077158C() < v110)
    {
      goto LABEL_143;
    }

LABEL_103:
    if ((v107 & 0xC000000000000001) != 0 && v110)
    {
      sub_10076BC0C();

      sub_10077147C(0);
      if (v110 != 1)
      {
        sub_10077147C(1);
        if (v110 != 2)
        {
          sub_10077147C(2);
          if (v110 != 3)
          {
            sub_10077147C(3);
            if (v110 != 4)
            {
              sub_10077147C(4);
              if (v110 != 5)
              {
                sub_10077147C(5);
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
      v111 = sub_10077159C();
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
        sub_10077169C();
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
            v120 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer);
            if (v120)
            {
              sub_100760C4C();
              sub_10076F64C();
              v121 = v120;
              sub_10076FC1C();
              sub_10027C09C(v117);
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

    sub_1002348D4(v111, v11, v39, v112);
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

void sub_100557E64()
{
  sub_1003DC268();
  v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView]) != 0)
  {
    v3 = v2;
    v4 = [v0 contentView];
    sub_1001EEC4C();
    if (v5)
    {
      v7 = sub_10076FF6C();
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
    sub_1001EEC4C();
    if (v6)
    {
      v7 = sub_10076FF6C();
    }

    else
    {
      v7 = 0;
    }

    [v4 setAccessibilityLabel:v7];
  }
}

void sub_100557FC0(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v17 = &v55 - v16;
  v18 = &qword_10095D000;
  v57 = a3;
  if ((a3 & 1) == 0)
  {
    v19 = swift_getObjectType();
    (*(a2 + 112))(v19, a2);
    v20 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    v56 = ObjectType;
    sub_10003837C(v17, &v4[v20], &unk_1009434A0);
    swift_endAccess();
    v21 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
    sub_100016E2C(&v4[v20], v14, &unk_1009434A0);
    v22 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    v23 = v21;
    v24 = v21 + v22;
    v18 = &qword_10095D000;
    sub_10003837C(v14, v24, &unk_1009434A0);
    swift_endAccess();

    v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] = (*(a2 + 160))(v19, a2);
    sub_10055C1D0();
    v25 = (*(a2 + 136))(v19, a2);
    sub_1003DC6B0(v25);
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = v26;
    *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard] = *(v26 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_todayCard);
    v56 = a1;

    v28 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView;
    v29 = v18[78];
    v55 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
    v30 = *&v55[v29];
    v31 = *(*&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + v29);
    v32 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100016E2C(&v4[v32], v11, &unk_1009434A0);
    v33 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v4[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
    {
      v33 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
    }

    v34 = v4[*v33];
    v35 = v30;
    v36 = v31;
    v37 = v57;
    sub_100276360(v36, v57 & 1, v11, v34);

    sub_10000CFBC(v11, &unk_1009434A0);
    if (v37)
    {
      sub_100558524(v27);
    }

    else
    {
      v38 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
      if (v38)
      {
        v39 = v38;
        sub_10076C66C();
      }

      swift_unknownObjectWeakAssign();
      v40 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
      sub_1001EFCF0(v40);

      v41 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer];
      sub_10027C14C(v41);

      [*&v27[v28] frame];
      v42 = v55;
      [v55 setFrame:?];
      [v42 setHidden:{objc_msgSend(*&v27[v28], "isHidden")}];
      v43 = *(*&v27[v28] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView);
      v44 = *&v43[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style];
      v45 = *&v43[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_style + 8];
      v46 = *&v43[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] == 2;

      sub_10055BB38(v44, v45, v46, [v43 isHidden] ^ 1);

      [v42 setNeedsLayout];
      v47 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
      if (v47)
      {
        v48 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
        if (v48)
        {
          v49 = v47;
          v50 = v48;
          sub_1001EFCF0(v49);
        }
      }

      v51 = *&v27[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
      if (v51)
      {
        v52 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer];
        if (v52)
        {
          v53 = v51;
          v54 = v52;
          sub_10027C14C(v53);
        }
      }

      sub_100557E64();
    }

    [v4 setNeedsLayout];
  }
}

char *sub_100558524(char *result)
{
  if ((*(*(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView) + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) & 1) == 0)
  {
    v2 = v1[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    if (v1[*v2] == 6)
    {
      v3 = result;
      v4 = [v1 contentView];
      v5 = [v3 contentView];
      v6 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView];
      v8 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverBackgroundView;
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
          v16 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
          v17 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView];
          v18 = v15;
          v19 = v17;
          [v19 removeFromSuperview];
          v20 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView;
          v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverContainerView];
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
          v33 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
          v34 = *&v64[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
          if (v34)
          {
            v35 = v31;
            v36 = v34;
            v37 = v32;
            [v36 removeFromSuperview];
            v38 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView;
            v39 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_riverView];
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
              v49 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
              v50 = *&v64[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
              if (v50)
              {
                v51 = v48;
                [v50 removeFromSuperview];
                v52 = OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView;
                v53 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
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

void sub_100558B1C(void (*a1)(void), int a2, char a3, void *a4, void *a5, void (*a6)(char *, char *, uint64_t))
{
  v175 = a6;
  v185 = a5;
  v183 = a4;
  LODWORD(v184) = a2;
  v8 = sub_10076D7FC();
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
  v24 = sub_100766EBC();
  v173 = *(v24 - 8);
  v174 = v24;
  __chkstk_darwin(v24);
  v179 = &v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076C38C();
  v176 = *(v26 - 8);
  __chkstk_darwin(v26);
  v169 = (&v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v28 - 8);
  v170 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v171 = &v158 - v31;
  v32 = sub_10000A5D4(&unk_10094FD50);
  __chkstk_darwin(v32 - 8);
  v34 = &v158 - v33;
  v35 = sub_100770BFC();
  __chkstk_darwin(v35);
  v38 = &v158 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v166 = v36;
    v167 = a1;
    v39 = sub_10076C7FC();
    v40 = sub_10076472C();
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
      v43 = sub_1007684EC();
      v161 = v42;
      v187[0] = v42;
      v159 = v40;
      v163 = sub_1007684FC();
      v164 = v43;
      v44 = (v43 | v163) != 0;
      if (v175)
      {
        v45 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v46 = sub_100770BDC();
        v47 = *(v46 - 8);
        (*(v47 + 104))(v34, v45, v46);
        (*(v47 + 56))(v34, 0, 1, v46);
        sub_100770BEC();
        sub_10000CFBC(v34, &unk_10094FD50);
        sub_100770BBC();
        v49 = v48;
        (*(v166 + 8))(v38, v35);
        v50 = v184;
        v51 = v183;
      }

      else
      {
        v51 = v183;
        sub_10076C25C();
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
          sub_10055BFB8(v51, v185, v49);
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
          sub_100016E2C(v64, v170, &unk_1009434A0);
          if ((v56[6])(v65, 1, v63) == 1)
          {
            sub_10000CFBC(v65, &unk_1009434A0);
            left = UIEdgeInsetsZero.left;
            right = UIEdgeInsetsZero.right;
            v66 = v185;
          }

          else
          {
            v67 = v169;
            (v56)[4](v169, v65, v63);
            sub_10076C31C();
            sub_10076C31C();
            v66 = v185;
            [v185 layoutDirection];
            sub_1007708DC();
            left = v68;
            right = v69;
            (v56[1])(v67, v63);
          }

          sub_10000CFBC(v171, &unk_1009434A0);
          if ((sub_1007706EC() & 1) == 0)
          {
            if (qword_100941220 != -1)
            {
              swift_once();
            }

            v70 = sub_10076D9AC();
            sub_10000A61C(v70, qword_1009A23E0);
            sub_10076DEDC();
            sub_10000A5D4(&unk_100942870);
            v71 = swift_allocObject();
            *(v71 + 16) = xmmword_1007841E0;
            *(v71 + 32) = v66;
            v72 = v66;
            v73 = sub_10076DEEC();
            sub_10076D3EC();

            v50 = v184;
          }
        }

        sub_10076C22C();
        v75 = v74;
        sub_10076C82C();
        v77 = v76;
        v78 = sub_10076C81C();
        v183 = v79;
        sub_10076C7FC();
        if (swift_dynamicCastClass())
        {
          v80 = sub_1007646FC();
          v82 = v81;
        }

        else
        {

          v80 = 0;
          v82 = 0;
        }

        v83 = sub_100342B64;
        v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
        v86 = sub_1007333BC;
        v159 = v80;
        v166 = v78;
        if (v50 != 6)
        {
          if (v50 == 4)
          {
            v83 = sub_100342B64;
            v84 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v86 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
            v85 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
          }

          else
          {
            v83 = sub_10073304C;
            v84 = sub_100733208;
            v85 = sub_1007331DC;
            v86 = sub_100733020;
          }
        }

        v199[0] = sub_1000082CC;
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
        v87 = sub_10076C77C();
        __chkstk_darwin(v87);
        *(&v158 - 2) = v199;
        v88 = v185;
        v89 = sub_10077073C();
        v90 = [v88 preferredContentSizeCategory];
        sub_1000082CC();

        sub_10076D7EC();
        if (qword_10093FA50 != -1)
        {
          swift_once();
        }

        v91 = qword_10094D648;
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
        sub_10076D7DC();

        v98 = *(v182 + 8);
        v99 = v168;
        v98(v97, v168);
        sub_10076D7AC();
        v98(v96, v99);
        v100 = sub_1000FC220(_swiftEmptyArrayStorage);
        if (qword_10093FA58 != -1)
        {
          swift_once();
        }

        v101 = qword_10094D650;
        v177 = type metadata accessor for TodayTransitioningLabelView();
        objc_allocWithZone(v177);
        v102 = sub_1001E2CBC(v100, v101);
        v103 = *&v102[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
        v104 = v178;
        v171 = v77;
        v105 = v103;
        if (v77)
        {
          v106 = sub_10076FF6C();
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
        sub_100770E8C();
        if (qword_10093FA60 != -1)
        {
          swift_once();
        }

        v109 = qword_10094D658;
        v110 = [v185 preferredContentSizeCategory];
        v167();

        __chkstk_darwin(v111);
        *(&v158 - 2) = v199;
        v112 = sub_10077073C();
        v113 = v160;
        sub_10076D7EC();
        v167 = v112;
        v114 = [v176 preferredFontDescriptorWithTextStyle:v109 compatibleWithTraitCollection:v112];
        v115 = objc_opt_self();
        v116 = [v115 fontWithDescriptor:v114 size:0.0];

        sub_10076D7DC();
        v98(v113, v108);
        sub_10076D7AC();
        v98(v104, v108);
        v117 = sub_1000FC220(_swiftEmptyArrayStorage);
        if (qword_10093FA68 != -1)
        {
          swift_once();
        }

        v118 = qword_10094D660;
        v119 = objc_allocWithZone(v177);
        v120 = sub_1001E2CBC(v117, v118);
        v121 = OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label;
        v122 = *&v120[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
        v123 = v183;
        if (v183)
        {
          v124 = v122;
          v123 = sub_10076FF6C();
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
        v128 = sub_100770E8C();
        __chkstk_darwin(v128);
        *(&v158 - 2) = v199;
        v129 = v185;
        v130 = sub_10077073C();
        v131 = v160;
        sub_10076D7EC();
        if (qword_10093FA78 != -1)
        {
          swift_once();
        }

        v132 = v75 - left;
        v133 = v176;
        v176 = v130;
        v134 = [v133 preferredFontDescriptorWithTextStyle:qword_10094D670 compatibleWithTraitCollection:v130];
        v135 = [v115 fontWithDescriptor:v134 size:0.0];

        sub_10076D7DC();
        v98(v131, v127);
        v136 = [v129 preferredContentSizeCategory];
        v169();

        sub_10076D7AC();
        v98(v126, v127);
        v137 = sub_1000FC220(_swiftEmptyArrayStorage);
        if (qword_10093FA80 != -1)
        {
          swift_once();
        }

        v138 = v132 - right;
        v139 = qword_10094D678;
        v140 = objc_allocWithZone(v177);
        v141 = sub_1001E2CBC(v137, v139);
        v142 = *&v141[OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_label];
        v143 = sub_100766E8C();
        v144 = 0;
        v145 = v166;
        if ((v143 & 1) == 0 && v184)
        {
          v144 = sub_10076FF6C();
        }

        [v142 setText:v144];

        v146 = v162;
        v147 = v168;
        v175(v178, v162, v168);
        sub_100770E8C();
        v148 = *&v120[v145];
        v192 = sub_1007626BC();
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
        sub_10020707C(v185, v186, v138, 1.79769313e308);
        sub_10000CF78(v186, v186[3]);
        sub_10076E0FC();

        v98(v146, v147);
        v98(v181, v147);
        v98(v180, v147);
        (*(v173 + 8))(v179, v174);
        sub_10055F634(v187);
        sub_10000CD74(v186);
      }

      v150 = sub_10076471C();
      if (v150 >> 62)
      {
        v151 = sub_10077158C();
      }

      else
      {
        v151 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      type metadata accessor for TodayListCardLockupContainer();
      sub_10027B748(v151, v57);
      if ((sub_1007706EC() & 1) == 0)
      {
        if (qword_100941220 != -1)
        {
          swift_once();
        }

        v152 = sub_10076D9AC();
        sub_10000A61C(v152, qword_1009A23E0);
        sub_10076DEDC();
        sub_10000A5D4(&unk_100942870);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_1007841E0;
        *(v153 + 32) = v57;
        v154 = v57;
        v155 = sub_10076DEEC();
        sub_10076D3EC();
      }

      v156 = [v57 preferredContentSizeCategory];
      sub_10077085C();

      sub_1007704EC();
      v157 = [v57 preferredContentSizeCategory];
      sub_10077085C();

      sub_1007704EC();
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

    sub_1005DE768(v52, v53, v54);
  }
}

void sub_10055A038()
{
  sub_1001ECBA4();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView);
  if (v1)
  {
    v2 = v1;
    sub_1001ECBA4();
  }
}

uint64_t sub_10055A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v80 = a3;
  v4 = sub_10076BF9C();
  __chkstk_darwin(v4 - 8);
  v6 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076BD9C();
  __chkstk_darwin(v7 - 8);
  v76 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076BFFC();
  v77 = *(v9 - 8);
  __chkstk_darwin(v9);
  v75 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v11 - 8);
  v71 = v58 - v12;
  v79 = sub_10076BEDC();
  v74 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v73 = v58 - v15;
  v16 = sub_10077164C();
  v68 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100766D4C();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v19 = v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076A75C();
  v64 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  v26 = sub_10076C38C();
  v69 = *(v26 - 8);
  v70 = v26;
  __chkstk_darwin(v26);
  v78 = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C84C();
  sub_10055F9A8(&qword_100947150, &type metadata accessor for TodayCard);
  result = sub_10076332C();
  if (v82)
  {
    v61 = v9;
    v62 = v6;
    v29 = sub_10076C7FC();

    sub_10076472C();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      v59 = v16;
      v63 = v29;
      v32 = sub_10076471C();
      v60 = a2;
      sub_10027CE2C(v32);

      type metadata accessor for TodayCardGridTracker();
      sub_10076F64C();
      sub_10076FC1C();
      v33 = v82;
      LODWORD(v80) = sub_1003B1704();
      v82 = v31;
      swift_getKeyPath();
      sub_10076338C();

      v34 = v81;
      v35 = sub_1007684DC();

      if (v35)
      {
        v58[2] = v33;
        if (sub_10076470C())
        {
          v58[1] = v35;
          swift_getKeyPath();
          sub_10076338C();

          swift_getKeyPath();
          sub_10076338C();

          v58[0] = v82;
          v36 = v80;
          sub_1005B1CD8(v80);
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
          v40 = sub_1007701CC();

          (*(v37 + 8))(v25, v20);
          sub_10076A73C();
          if (v41)
          {
            sub_10076BEFC();
          }

          v42 = v79;
          v43 = v73;
          v44 = v74;
          v45 = v71;
          sub_10076A74C();
          sub_100766D1C();
          sub_100770ACC();
          sub_100770A8C();
          v46 = v68;
          v47 = v66;
          v48 = v59;
          (*(v68 + 104))(v66, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v59);
          sub_100770AAC();
          (*(v46 + 8))(v47, v48);
          (*(v65 + 8))(v19, v67);
          sub_10076A72C();
          v49 = *(v44 + 48);
          v50 = v49(v45, 1, v42);
          v80 = v40;
          if (v50 == 1)
          {
            sub_10076BEEC();
            v51 = v49(v45, 1, v42);
            v52 = v42;
            if (v51 != 1)
            {
              sub_10000CFBC(v45, &qword_100952D60);
            }
          }

          else
          {
            (*(v44 + 32))(v43, v45, v42);
            v52 = v42;
          }

          v53 = v75;
          sub_10076BDAC();
          sub_10076C01C();
          v54 = v58[0];
          [v58[0] displayScale];
          (*(v44 + 16))(v72, v43, v52);
          sub_10076BFDC();
          sub_10076BFEC();
          sub_100764B3C();
          swift_allocObject();
          v55 = sub_100764B1C();

          (*(v77 + 8))(v53, v61);
          (*(v44 + 8))(v43, v79);
          (*(v69 + 8))(v78, v70);
          sub_10000A5D4(&unk_100942870);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1007841E0;
          *(v56 + 32) = v55;

          v57._rawValue = v56;
          sub_100760BAC(v57);
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

void sub_10055AB60(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  sub_100276A68(a1, a3);
}

void sub_10055ABDC()
{
  v0 = sub_10076688C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007668CC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_1009602F0];
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
      sub_1005EFAB8(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

char *sub_10055AF3C()
{
  v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if ((v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0 && v0[*v1] == 6 && (v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_trailingLockupContainer]) != 0)
  {
    sub_10000A5D4(&unk_100942870);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007841E0;
    v4 = v2;
    *(inited + 32) = [v0 contentView];
    v5 = [v4 subviews];
    sub_100016F40(0, &qword_1009441F0);
    v6 = sub_1007701BC();

    sub_1000F9270(v6);
    v7 = sub_10016E820(inited);
  }

  else
  {
    sub_10000A5D4(&unk_100942870);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_1007841E0;
    *(v8 + 32) = [v0 contentView];
    v9 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_lockupContainer] subviews];
    sub_100016F40(0, &qword_1009441F0);
    v10 = sub_1007701BC();

    sub_1000F9270(v10);
    v7 = sub_10016E820(v8);
  }

  return v7;
}

void sub_10055B1E4()
{

  sub_10000CFBC(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_cardStyle, &qword_10094A450);
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_muteButton);
}

uint64_t type metadata accessor for ListTodayCardCollectionViewCell()
{
  result = qword_10095D258;
  if (!qword_10095D258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055B424()
{
  sub_10055B4F0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10055B4F0()
{
  if (!qword_10095D268)
  {
    sub_10076C7EC();
    v0 = sub_1007711AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10095D268);
    }
  }
}

void sub_10055B548(void *a1)
{
  v3 = *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView) + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v4 = v3;
  sub_10056A2D0(Strong);
}

uint64_t (*sub_10055B5F0(uint64_t **a1))()
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
  v2[4] = sub_100551994(v2);
  return sub_100019A4C;
}

uint64_t sub_10055B664()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10055F9A8(&qword_10095D2B8, type metadata accessor for ListTodayCardCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10055B6D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10055F9A8(&qword_10095D2B8, type metadata accessor for ListTodayCardCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10055B764(uint64_t *a1))()
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
  sub_10055F9A8(&qword_10095D2B8, type metadata accessor for ListTodayCardCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

char *sub_10055B824()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  type metadata accessor for StoryCardMediaView();
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView;
  v4 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v1[v3] = sub_1000E4B54(&off_100882C28);
  v9.receiver = v1;
  v9.super_class = _s20ProductPageExtension10HeaderViewCMa_0();
  v5 = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  v7 = v5;
  [v7 addSubview:v6];
  [v7 addSubview:*&v7[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView]];
  [v7 setClipsToBounds:1];

  return v7;
}

void sub_10055BA04()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = _s20ProductPageExtension10HeaderViewCMa_0();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  [v1 bounds];
  [v2 setFrame:?];
  sub_10055BC68();
  v3 = [v1 traitCollection];
  v4 = sub_10077070C();

  v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView];
  v6 = 0.174532925;
  if (v4)
  {
    v6 = -0.174532925;
  }

  v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle);
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_rotationAngle) = v6;
  if (v6 != v7)
  {
    sub_1000E53E0();
  }
}

id sub_10055BB38(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView);

  sub_1000E5778(a1, a2);
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v11 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *&v9[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_blurUserInterfaceStyle] = v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView;
  v13 = *&v9[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_effectsView];

  sub_100016F40(0, &qword_1009492C0);
  isa = sub_1007701AC().super.isa;

  [v13 setBackgroundEffects:isa];

  [*&v9[v12] setOverrideUserInterfaceStyle:*&v9[v11]];

  return [v9 setHidden:(a4 & 1) == 0];
}

void sub_10055BC68()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  [v2 frame];
  v3 = CGRectGetHeight(v9) * 0.5 * 0.176326981;
  [v2 frame];
  v4 = ceil(v3 + CGRectGetHeight(v10));
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_gradientBlurView];
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
  *&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientStartY] = v3 / v4;
  sub_1000E53E0();
  *&v5[OBJC_IVAR____TtC20ProductPageExtension28TodayCardProtectionLayerView_gradientEndY] = (v3 + 145.0) / v4;
  sub_1000E53E0();
}

id sub_10055BDDC()
{
  v2.receiver = v0;
  v2.super_class = _s20ProductPageExtension10HeaderViewCMa_0();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10055BE88(uint64_t a1)
{
  result = sub_10055F9A8(&unk_100956340, type metadata accessor for ListTodayCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

double sub_10055BFB8(uint64_t a1, void *a2, double a3)
{
  v6 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_10076C38C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_1003DF334(v8, a2);
  sub_10000CFBC(v8, &unk_1009434A0);
  if ((sub_1007706EC() & 1) == 0)
  {
    if (qword_100941220 != -1)
    {
      swift_once();
    }

    v11 = sub_10076D9AC();
    sub_10000A61C(v11, qword_1009A23E0);
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1007841E0;
    *(v12 + 32) = a2;
    v13 = a2;
    v14 = sub_10076DEEC();
    sub_10076D3EC();
    a3 = v15;
  }

  return a3 + 20.0;
}

id sub_10055C1D0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_labelsView];
  v5 = v1[v2];
  *(v4 + qword_10094D6B0) = v5;
  if (v5 == 7)
  {
    v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = 7;
    v8 = &qword_10094D6B0;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory;
    *(*(v4 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v4 + qword_10094D6D0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_topLabelsView];
    if (!v9)
    {
      goto LABEL_9;
    }

    *(v9 + qword_10094D6B0) = v5;
    *(*(v9 + qword_10094D6B8) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    *(*(v9 + qword_10094D6C0) + OBJC_IVAR____TtC20ProductPageExtension27TodayTransitioningLabelView_originalSizeCategory) = v5;
    v6 = *(v9 + qword_10094D6D0);
    v7 = v5;
  }

  *(v6 + *v8) = v7;
LABEL_9:
  v10 = *(*&v1[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView] + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  v10[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = v5;
  v11 = v10;
  sub_100275F40();

  return [v1 setNeedsLayout];
}

uint64_t sub_10055C378(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v189 = a5;
  v222 = a4;
  v223 = a3;
  v225 = a2;
  v6 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v6 - 8);
  v182 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v184 = &v181 - v9;
  v10 = sub_10000A5D4(&unk_10094C030);
  __chkstk_darwin(v10 - 8);
  v187 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v186 = &v181 - v13;
  v227 = sub_10075DB7C();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v183 = &v181 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_10000A5D4(&unk_100964140);
  __chkstk_darwin(v216);
  v228 = &v181 - v15;
  v16 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v16 - 8);
  v185 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v188 = &v181 - v19;
  __chkstk_darwin(v20);
  v217 = &v181 - v21;
  __chkstk_darwin(v22);
  v224 = &v181 - v23;
  v24 = sub_10076BF9C();
  __chkstk_darwin(v24 - 8);
  v215 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076BD9C();
  __chkstk_darwin(v26 - 8);
  v211 = &v181 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_10076BFFC();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v181 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v29 - 8);
  v208 = &v181 - v30;
  v31 = sub_10076BEDC();
  v231 = *(v31 - 1);
  v232 = v31;
  __chkstk_darwin(v31);
  v209 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v210 = &v181 - v34;
  v207 = sub_10077164C();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v204 = &v181 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_100766D4C();
  v203 = *(v205 - 8);
  __chkstk_darwin(v205);
  v202 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_10076A75C();
  v200 = *(v201 - 8);
  __chkstk_darwin(v201);
  v198 = &v181 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v199 = &v181 - v39;
  v40 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v40 - 8);
  v197 = &v181 - v41;
  v194 = sub_10076121C();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v196 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_10076481C();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v236 = &v181 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000A5D4(&qword_100952D68);
  __chkstk_darwin(v44 - 8);
  v192 = &v181 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v190 = &v181 - v47;
  v48 = sub_1007611EC();
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
  sub_10076B7EC();
  sub_1007611BC();
  v229 = *(v49 + 16);
  v229(v62, v71, v48);
  sub_10055F9A8(&unk_1009603F0, &type metadata accessor for VideoControls);
  sub_10077125C();
  v72 = sub_10077127C();
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
    sub_10077128C();
    v233 = *(v49 + 8);
    v233(v68, v48);
    v75 = v190;
    (*(v49 + 32))(v190, v65, v48);
    v74 = 0;
  }

  v76 = *(v49 + 56);
  v76(v75, v74, 1, v48);
  sub_10000CFBC(v75, &qword_100952D68);
  v77 = v235;
  sub_10076B82C();
  sub_1007611BC();
  v229(v62, v77, v48);
  v78 = v191;
  sub_10077125C();
  v79 = sub_10077127C();
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
    sub_10077128C();
    v233(v57, v48);
    v83 = v192;
    (*(v49 + 32))(v192, v78, v48);
    v81 = 0;
    v82 = v232;
  }

  v76(v83, v81, 1, v48);
  sub_10000CFBC(v83, &qword_100952D68);
  (*(v193 + 104))(v196, enum case for VideoFillMode.scaleAspectFill(_:), v194);
  sub_10076B84C();
  sub_10076BEFC();
  v84 = v197;
  sub_10076D3AC();

  v85 = sub_10076D39C();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = v229;
  v229(v230, v234, v48);
  v86(v195, v77, v48);
  sub_10076B7FC();
  v87 = v237;
  sub_10076B7DC();
  sub_10076B83C();
  sub_1007647FC();
  sub_10076B84C();
  v88 = [v87 traitCollection];
  v89 = v223;
  sub_1005B1CD8(v223);
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
  v96 = sub_1007701CC();
  (*(v90 + 8))(v95, v94);
  sub_10076A73C();
  v221 = v48;
  if (v97)
  {
    sub_10076BEFC();
  }

  v98 = v208;
  v99 = v202;
  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v100 = v206;
  v101 = v204;
  v102 = v207;
  (*(v206 + 104))(v204, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v207);
  sub_100770AAC();
  (*(v100 + 8))(v101, v102);
  (*(v203 + 8))(v99, v205);
  sub_10076A72C();
  v103 = v231;
  v104 = *(v231 + 48);
  v105 = v104(v98, 1, v82);
  v229 = v96;
  v106 = v88;
  if (v105 == 1)
  {
    v107 = v210;
    sub_10076BEEC();
    v108 = v107;
    v109 = v82;
    if (v104(v98, 1, v82) != 1)
    {
      sub_10000CFBC(v98, &qword_100952D60);
    }
  }

  else
  {
    v108 = v210;
    (*(v103 + 32))(v210, v98, v82);
    v109 = v82;
  }

  v110 = v212;
  sub_10076BDAC();
  sub_10076C01C();
  [v106 displayScale];
  v111 = v231;
  (*(v231 + 16))(v209, v108, v109);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v230 = sub_100764B1C();

  (*(v213 + 8))(v110, v214);
  (*(v111 + 8))(v108, v232);
  v112 = *&v237[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v231 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v229 = v112;
  v113 = *(v112 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  v114 = v224;
  sub_10076B85C();
  v115 = v226;
  v116 = *(v226 + 56);
  v117 = 1;
  v118 = v227;
  v116(v114, 0, 1, v227);
  v232 = v113;
  v215 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v120 = Strong;
    v121 = v217;
    (*(v115 + 16))(v217, Strong + qword_1009A2520, v118);

    v117 = 0;
  }

  else
  {
    v121 = v217;
  }

  v116(v121, v117, 1, v118);
  v122 = *(v216 + 48);
  v123 = v228;
  sub_100016E2C(v114, v228, &unk_1009435D0);
  v124 = v123;
  sub_100016E2C(v121, v123 + v122, &unk_1009435D0);
  v125 = *(v115 + 48);
  if (v125(v124, 1, v118) == 1)
  {
    sub_10000CFBC(v121, &unk_1009435D0);
    v126 = v228;
    sub_10000CFBC(v114, &unk_1009435D0);
    v127 = v125(v126 + v122, 1, v118);
    v128 = v221;
    if (v127 == 1)
    {
      sub_10000CFBC(v126, &unk_1009435D0);
      v129 = v229;
      goto LABEL_42;
    }
  }

  else
  {
    v130 = v188;
    sub_100016E2C(v124, v188, &unk_1009435D0);
    if (v125(v124 + v122, 1, v118) != 1)
    {
      v138 = v226;
      v139 = v124 + v122;
      v140 = v183;
      (*(v226 + 32))(v183, v139, v118);
      sub_10055F9A8(&qword_100944C38, &type metadata accessor for URL);
      v141 = v124;
      v142 = sub_10076FF1C();
      v143 = *(v138 + 8);
      v143(v140, v118);
      sub_10000CFBC(v121, &unk_1009435D0);
      sub_10000CFBC(v224, &unk_1009435D0);
      v143(v188, v118);
      sub_10000CFBC(v141, &unk_1009435D0);
      v128 = v221;
      v129 = v229;
      if (v142)
      {
        goto LABEL_42;
      }

      goto LABEL_26;
    }

    sub_10000CFBC(v121, &unk_1009435D0);
    v126 = v228;
    sub_10000CFBC(v114, &unk_1009435D0);
    (*(v226 + 8))(v130, v118);
    v128 = v221;
  }

  sub_10000CFBC(v126, &unk_100964140);
  v129 = v229;
LABEL_26:
  v131 = v129;
  sub_100762F0C();
  v229 = sub_10076F64C();
  sub_10076FC1C();
  v132 = v239;
  sub_10076B7CC();
  v133 = v185;
  sub_10076B85C();
  v116(v133, 0, 1, v227);
  v134 = v186;
  sub_10076B81C();
  v135 = v187;
  sub_10076B80C();
  v136 = type metadata accessor for TodayCardVideoView();
  sub_10055F9A8(&qword_10094F540, type metadata accessor for TodayCardVideoView);
  v228 = v136;
  v137 = sub_100762EEC();
  sub_10000CFBC(v135, &unk_10094C030);
  sub_10000CFBC(v134, &unk_10094C030);
  sub_10000CFBC(v133, &unk_1009435D0);
  sub_10000CFBC(&v239, &qword_100943310);
  if (!v137)
  {
LABEL_31:

    v129 = v131;
    goto LABEL_42;
  }

  v227 = v132;
  if (*(v137 + qword_10099F2A0))
  {

    goto LABEL_31;
  }

  v144 = v232;
  *(v137 + qword_10099F298) = v232[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory];
  sub_10039DEFC();
  swift_unknownObjectWeakAssign();
  v145 = v215;
  v146 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v147 = v137;
  sub_10056A2D0(v146);

  v148 = *&v145[v144];
  sub_10076B84C();
  sub_10076BEFC();
  v150 = v149;
  v152 = v151;

  v153 = sub_10076C38C();
  v154 = *(v153 - 8);
  v155 = v184;
  (*(v154 + 16))(v184, v222, v153);
  (*(v154 + 56))(v155, 0, 1, v153);
  v156 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
  v157 = swift_unknownObjectWeakLoadStrong();
  v226 = v156;
  v238 = v147;
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(v157);

  v158 = &v148[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
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
  *&v148[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v225;

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
  sub_100016E2C(v184, v182, &unk_1009434A0);
  sub_1005697E4(v166);
  v167 = v223;
  v148[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory] = v223;
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

  sub_10000CFBC(v165, &unk_1009434A0);
  sub_100760C4C();
  sub_10076FC1C();
  sub_10055F9A8(&qword_10094F550, type metadata accessor for TodayCardVideoView);
  sub_100760B8C();
  v174 = v232;
  [*&v215[v232] setHidden:0];
  [*&v174[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] setHidden:1];

  v174[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = 1;
  v128 = v221;
LABEL_42:

  v175 = *&v129[v231];
  v175[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = v237[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v176 = v175;
  sub_100275F40();

  v177 = swift_unknownObjectWeakLoadStrong();
  if (v177)
  {
    *(v177 + qword_1009602C8 + 8) = &off_1008997A0;
    v178 = v177;
    swift_unknownObjectWeakAssign();
  }

  sub_10033B118();

  (*(v219 + 8))(v236, v220);
  v179 = v233;
  v233(v235, v128);
  return v179(v234, v128);
}

void sub_10055E0F8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v145 = a5;
  v153 = a4;
  v154 = a2;
  v138 = a1;
  LODWORD(v134) = a3;
  v8 = sub_10000A5D4(&qword_10094B040);
  __chkstk_darwin(v8 - 8);
  v121 = &v116 - v9;
  v151 = sub_10076C38C();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v119 = v10;
  v127 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10075DDBC();
  v129 = *(v148 - 8);
  __chkstk_darwin(v148);
  v126 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v11;
  __chkstk_darwin(v12);
  v128 = &v116 - v13;
  v122 = sub_10000A5D4(&unk_100952D70);
  __chkstk_darwin(v122);
  v123 = &v116 - v14;
  v15 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v15 - 8);
  v120 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v117 = &v116 - v18;
  __chkstk_darwin(v19);
  v124 = &v116 - v20;
  __chkstk_darwin(v21);
  v125 = &v116 - v22;
  v23 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v23 - 8);
  v144 = &v116 - v24;
  v25 = sub_10076BF9C();
  __chkstk_darwin(v25 - 8);
  v143 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10076BD9C();
  v147 = *(v130 - 8);
  __chkstk_darwin(v130);
  v146 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_10076BFFC();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v116 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10000A5D4(&qword_100952D60);
  __chkstk_darwin(v29 - 8);
  v133 = &v116 - v30;
  v139 = sub_10076BEDC();
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = &v116 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v136 = &v116 - v33;
  v132 = sub_10077164C();
  v34 = *(v132 - 8);
  __chkstk_darwin(v132);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100766D4C();
  v37 = *(v131 - 8);
  __chkstk_darwin(v131);
  v39 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076A75C();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v43 = &v116 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = __chkstk_darwin(v44).n128_u64[0];
  v47 = &v116 - v46;
  v152 = v6;
  v48 = [v6 traitCollection];
  v150 = a3;
  sub_1005B1CD8(a3);
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
  v51 = sub_1007701CC();
  (*(v41 + 8))(v47, v40);
  sub_10076A73C();
  if (v52)
  {
    sub_10076BEFC();
  }

  sub_10076A74C();
  sub_100766D1C();
  sub_100770ACC();
  sub_100770A8C();
  v53 = v132;
  (*(v34 + 104))(v36, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v132);
  sub_100770AAC();
  (*(v34 + 8))(v36, v53);
  (*(v37 + 8))(v39, v131);
  v54 = v133;
  sub_10076A72C();
  v55 = v137;
  v56 = *(v137 + 48);
  v57 = v139;
  v58 = v56(v54, 1, v139);
  v134 = v51;
  if (v58 == 1)
  {
    v59 = v136;
    sub_10076BEEC();
    if (v56(v54, 1, v57) != 1)
    {
      sub_10000CFBC(v54, &qword_100952D60);
    }
  }

  else
  {
    v59 = v136;
    (*(v55 + 32))(v136, v54, v57);
  }

  v60 = v140;
  sub_10076BDAC();
  sub_10076C01C();
  [v48 displayScale];
  v61 = v48;
  (*(v55 + 16))(v135, v59, v57);
  sub_10076BFDC();
  sub_10076BFEC();
  sub_100764B3C();
  swift_allocObject();
  v62 = sub_100764B1C();

  (*(v141 + 8))(v60, v142);
  (*(v55 + 8))(v59, v57);
  v143 = *&v152[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v142 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  v63 = *&v143[OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView];
  sub_100760C4C();
  sub_10076F64C();
  v64 = v63;
  sub_10076FC1C();
  v65 = v155;
  v141 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong);

  v145 = v64;
  v140 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  v67 = *&v64[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  sub_100764ADC();
  v69 = v68;
  v71 = v70;
  v72 = [*(v67 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView) image];
  v73 = v149;
  v74 = v144;
  v75 = v151;
  v136 = *(v149 + 16);
  (v136)(v144, v153, v151);
  (*(v73 + 56))(v74, 0, 1, v75);
  sub_1003955EC(v72, v69, v71, 0, v154, v74, v150);

  v76 = v74;
  v77 = v67;
  sub_10000CFBC(v76, &unk_1009434A0);
  v78 = *(v67 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded);
  v138 = v62;
  v139 = v65;
  v137 = v67;
  if (v78)
  {
    v79 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v80 = v125;
    sub_100016E2C(v67 + v79, v125, &qword_100943190);
    v81 = v124;
    sub_100764B2C();
    v82 = v147;
    v83 = v130;
    (*(v147 + 56))(v81, 0, 1, v130);
    v84 = *(v122 + 48);
    v85 = v123;
    sub_100016E2C(v80, v123, &qword_100943190);
    sub_100016E2C(v81, v85 + v84, &qword_100943190);
    v86 = v80;
    v87 = *(v82 + 48);
    if (v87(v85, 1, v83) == 1)
    {
      sub_10000CFBC(v81, &qword_100943190);
      sub_10000CFBC(v86, &qword_100943190);
      if (v87(v85 + v84, 1, v83) == 1)
      {
        sub_10000CFBC(v85, &qword_100943190);
        goto LABEL_20;
      }
    }

    else
    {
      v88 = v117;
      sub_100016E2C(v85, v117, &qword_100943190);
      if (v87(v85 + v84, 1, v83) != 1)
      {
        v112 = v146;
        v113 = v147;
        (*(v147 + 32))(v146, v85 + v84, v83);
        sub_10055F9A8(&qword_100943198, &type metadata accessor for Artwork.URLTemplate);
        v114 = sub_10076FF1C();
        v115 = *(v113 + 8);
        v115(v112, v83);
        sub_10000CFBC(v124, &qword_100943190);
        sub_10000CFBC(v125, &qword_100943190);
        v115(v88, v83);
        sub_10000CFBC(v85, &qword_100943190);
        v77 = v137;
        if (v114)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      sub_10000CFBC(v124, &qword_100943190);
      sub_10000CFBC(v125, &qword_100943190);
      (*(v147 + 8))(v88, v83);
    }

    sub_10000CFBC(v85, &unk_100952D70);
    v77 = v137;
  }

LABEL_18:
  if ((*(v77 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v89 = v128;
    sub_10075DDAC();
    v90 = v129;
    v91 = *(v129 + 16);
    v92 = v126;
    v93 = v148;
    v91(v126, v89, v148);
    sub_10055F9A8(&qword_10094F558, &type metadata accessor for UUID);
    sub_10077140C();
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

    sub_100760B7C();

    sub_10000CFBC(&v155, &qword_100943310);

    v103 = v120;
    sub_100764B2C();
    (*(v147 + 56))(v103, 0, 1, v130);
    v104 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    v105 = v137;
    swift_beginAccess();
    sub_10003837C(v103, v105 + v104, &qword_100943190);
    swift_endAccess();
    v106 = v121;
    v107 = v148;
    v101(v121, v128, v148);
    (*(v129 + 56))(v106, 0, 1, v107);
    v108 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_10003837C(v106, v105 + v108, &qword_10094B040);
    swift_endAccess();
  }

LABEL_20:
  v109 = v145;
  [*&v140[v145] setHidden:0];
  [*&v109[v141] setHidden:1];

  v109[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = 1;

  v110 = *&v143[v142];
  v110[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = v152[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory];
  v111 = v110;
  sub_100275F40();
}

_BYTE *sub_10055F53C()
{
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension31ListTodayCardCollectionViewCell_headerView];
  v2 = OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView;
  result = *(v1 + OBJC_IVAR____TtC20ProductPageExtensionP33_3DA3DA2AB58A3471A361CB62A7A7354210HeaderView_mediaView);
  if (result[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] != 1)
  {
    return v0;
  }

  if (v0[OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v4] != 6)
  {
    v5 = [v0 traitCollection];
    v6 = v0;
    v7 = sub_10077071C();

    result = v6;
    if ((v7 & 1) == 0)
    {
      return *(v1 + v2);
    }
  }

  return result;
}

uint64_t sub_10055F688()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10055F6C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10055F6D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10055F710()
{
  v1 = sub_10075DDBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

uint64_t sub_10055F9A8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10055F9F0(uint64_t a1, void *a2)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - v13;
  (*(v5 + 16))(&v16 - v13, a1, v4, v12);
  (*(v5 + 56))(v14, 0, 1, v4);
  sub_100016E2C(v14, v10, &unk_1009434A0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_10000CFBC(v10, &unk_1009434A0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_10076C31C();
    sub_10076C31C();
    [a2 layoutDirection];
    sub_1007708DC();
    (*(v5 + 8))(v7, v4);
  }

  sub_10000CFBC(v14, &unk_1009434A0);
  return 20.0;
}

uint64_t sub_10055FCFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10075E11C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10055FDBC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10075E11C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData()
{
  result = qword_10095D338;
  if (!qword_10095D338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10055FEAC()
{
  result = sub_10003F040();
  if (v1 <= 0x3F)
  {
    result = sub_10075E11C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *sub_10055FF30(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView;
  *&v4[v12] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC20ProductPageExtension29PlaceholderCollectionViewCell_placeholderView]];

  return v13;
}

uint64_t type metadata accessor for PlaceholderCollectionViewCell()
{
  result = qword_10095D398;
  if (!qword_10095D398)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100560310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v45 = a2;
  v47 = a1;
  v46 = sub_10076511C();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(ASReportAConcernConfiguration) init];
  v55._countAndFlagsBits = 0xD000000000000014;
  v55._object = 0x80000001007ED430;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  sub_1007622EC(v55, v64);
  v15 = sub_10076FF6C();

  [v14 setTitle:v15];

  v56._countAndFlagsBits = 0xD000000000000013;
  v56._object = 0x80000001007ED450;
  v65._countAndFlagsBits = 0;
  v65._object = 0xE000000000000000;
  sub_1007622EC(v56, v65);
  v16 = sub_10076FF6C();

  [v14 setBackTitle:v16];

  v57._object = 0x80000001007ED470;
  v57._countAndFlagsBits = 0xD000000000000015;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1007622EC(v57, v66);
  v17 = sub_10076FF6C();

  [v14 setCancelTitle:v17];

  v58._object = 0x80000001007ED490;
  v58._countAndFlagsBits = 0xD000000000000015;
  v67._countAndFlagsBits = 0;
  v67._object = 0xE000000000000000;
  sub_1007622EC(v58, v67);
  v18 = sub_10076FF6C();

  [v14 setSubmitTitle:v18];

  if (a5)
  {
    v59._countAndFlagsBits = 0xD00000000000002ALL;
    v59._object = 0x80000001007ED550;
    v68._countAndFlagsBits = 0;
    v68._object = 0xE000000000000000;
    sub_1007622EC(v59, v68);
    v19 = sub_10076FF6C();

    [v14 setSelectReasonTitle:v19];

    if (a3)
    {
      v20 = sub_10076FF6C();
    }

    else
    {
      v20 = 0;
    }

    v26 = v47;
    [v14 setReportConcernExplanation:v20];

    v63._countAndFlagsBits = 0xD000000000000025;
    v63._object = 0x80000001007ED580;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    sub_1007622EC(v63, v72);
    v27 = sub_10076FF6C();

    [v14 setPrivacyNote:v27];

    v28 = swift_allocObject();
    *(v28 + 16) = a4;
    *(v28 + 24) = a6;
    v53 = sub_100561E04;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1005615E0;
    v52 = &unk_100899BF0;
    v25 = _Block_copy(&aBlock);
  }

  else
  {

    v60._countAndFlagsBits = 0xD00000000000001BLL;
    v60._object = 0x80000001007ED4B0;
    v69._countAndFlagsBits = 0;
    v69._object = 0xE000000000000000;
    sub_1007622EC(v60, v69);
    v21 = sub_10076FF6C();

    [v14 setSelectReasonTitle:v21];

    v61._countAndFlagsBits = 0xD00000000000001ELL;
    v61._object = 0x80000001007ED4D0;
    v70._countAndFlagsBits = 0;
    v70._object = 0xE000000000000000;
    sub_1007622EC(v61, v70);
    v22 = sub_10076FF6C();

    [v14 setSelectReasonSubtitle:v22];

    v62._countAndFlagsBits = 0xD000000000000016;
    v62._object = 0x80000001007ED4F0;
    v71._countAndFlagsBits = 0;
    v71._object = 0xE000000000000000;
    sub_1007622EC(v62, v71);
    v23 = sub_10076FF6C();

    [v14 setPrivacyNote:v23];

    v24 = swift_allocObject();
    *(v24 + 16) = a4;
    *(v24 + 24) = a6;
    v53 = sub_100561D98;
    v54 = v24;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_1005615E0;
    v52 = &unk_100899BA0;
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
    sub_1007714EC();
    v30 = v48 + 16;
    v48 = *(v48 + 16);
    v31 = v26 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v32 = *(v30 + 56);
    v33 = v46;
    do
    {
      (v48)(v13, v31, v33);
      v34 = [objc_allocWithZone(ASReportAConcernReason) init];
      sub_1007650FC();
      v35 = sub_10076FF6C();

      [v34 setReasonID:v35];

      sub_10076510C();
      v36 = sub_10076FF6C();

      [v34 setName:v36];

      sub_1007650EC();
      v37 = sub_10076FF6C();

      [v34 setUppercaseName:v37];

      (*(v30 - 8))(v13, v33);
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      v31 += v32;
      --v29;
    }

    while (v29);

    v14 = v42;
  }

  else
  {
  }

  sub_100561DB8();
  isa = sub_1007701AC().super.isa;

  [v14 setReasons:isa];

  v39 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:v14];
  [v39 setModalPresentationStyle:2];

  return v39;
}

uint64_t sub_100560A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a7;
  *&v51 = a4;
  v52 = a2;
  v53 = a3;
  v9 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v9 - 8);
  v50 = &v49 - v10;
  v11 = sub_10076F4FC();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v54 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FFEC();
  __chkstk_darwin(v13 - 8);
  v14 = sub_10076810C();
  v58 = *(v14 - 8);
  v59 = v14;
  __chkstk_darwin(v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v17 = v16;
  sub_1007680FC();
  v57 = a6;
  v18 = sub_10076418C();
  v63 = v18;
  if (a5)
  {
    if (v18)
    {
      v19 = sub_10056150C(v62, 0x74726F706572, 0xE600000000000000);
      if (*v20)
      {
        sub_10000A5D4(&qword_10095D3B0);
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100783DD0;
        sub_10000A5D4(&unk_100954470);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100784500;
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

        v25 = sub_1000FD520(inited);
        swift_setDeallocating();
        sub_10000A5D4(&qword_100961DD0);
        swift_arrayDestroy();
        *(v21 + 32) = v25;
        v61 = sub_10000A5D4(&qword_10095D3B8);
        v60[0] = v21;
        sub_100098694(v60, 0x736E7265636E6F63, 0xE800000000000000);
      }

      (v19)(v62, 0);
    }
  }

  else if (v18)
  {
    v26 = sub_10056150C(v62, 0x74726F706572, 0xE600000000000000);
    if (*v27)
    {
      sub_10000A5D4(&qword_10095D3B0);
      v28 = swift_allocObject();
      v51 = xmmword_100783DD0;
      *(v28 + 16) = xmmword_100783DD0;
      sub_10000A5D4(&unk_100954470);
      v29 = swift_initStackObject();
      *(v29 + 16) = v51;
      *(v29 + 32) = 1684957547;
      v30 = v52;
      *(v29 + 40) = 0xE400000000000000;
      *(v29 + 48) = v30;
      *(v29 + 56) = v53;

      v31 = sub_1000FD520(v29);
      swift_setDeallocating();
      sub_10000CFBC(v29 + 32, &qword_100961DD0);
      *(v28 + 32) = v31;
      v61 = sub_10000A5D4(&qword_10095D3B8);
      v60[0] = v28;
      sub_100098694(v60, 0x736E7265636E6F63, 0xE800000000000000);
    }

    (v26)(v62, 0);
  }

  v32 = objc_opt_self();
  v62[0] = v63;
  sub_10000A5D4(&unk_10095D3C0);
  v33 = sub_10077119C();
  v62[0] = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v62];
  swift_unknownObjectRelease();
  v35 = v62[0];
  if (v34)
  {
    v36 = sub_10075DB9C();
    v38 = v37;

    sub_10076FFDC();
    sub_10076FFBC();
    if (v39)
    {
      v40 = v54;
      sub_10076F4DC();
      v44 = sub_10076415C();
      (*(v55 + 8))(v40, v56);

      v45 = sub_10000A5D4(&unk_1009428E0);
      v46 = v49;
      v47 = v50;
      sub_10076F5AC();
      v48 = *(v45 - 8);
      if ((*(v48 + 48))(v47, 1, v45) == 1)
      {
        (*(v58 + 8))(v17, v59);
        sub_100316100(v36, v38);

        sub_10000CFBC(v47, &unk_100943200);
      }

      else
      {
        sub_100264100(v44, 1, v46, v47);

        sub_100316100(v36, v38);

        (*(v58 + 8))(v17, v59);
        (*(v48 + 8))(v47, v45);
      }
    }

    sub_100316100(v36, v38);
  }

  else
  {
    v41 = v35;
    sub_10075DA4C();

    swift_willThrow();
  }

  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v42 = sub_10076FD4C();
  sub_10000A61C(v42, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100783DD0;
  sub_10076F27C();
  sub_10076FBEC();

  (*(v58 + 8))(v17, v59);
}

void (*sub_10056150C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
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
  v6[4] = sub_100561F3C(v6, a2, a3);
  return sub_100561594;
}

void sub_100561594(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1005615E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  sub_10076FF9C();
  if (a4)
  {
    sub_10076FF9C();
  }

  v7 = a2;
  v6();
}

uint64_t sub_10056169C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a4;
  v49 = a5;
  v50 = a2;
  v51 = a3;
  v9 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v9 - 8);
  v45 = &v39 - v10;
  v11 = sub_10076F4FC();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076608C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076810C();
  v46 = *(v17 - 8);
  v47 = v17;
  __chkstk_darwin(v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  sub_100562288(_swiftEmptyArrayStorage);
  sub_1000FD520(_swiftEmptyArrayStorage);
  v52 = v19;
  sub_1007680FC();
  v44 = a6;
  v20 = sub_10076417C();
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
    while (sub_10076604C() != 0x64657463656C6573 || v28 != 0xEE006E6F73616552)
    {
      v29 = sub_10077167C();

      if (v29)
      {
        goto LABEL_4;
      }

      if (v49)
      {
        if (sub_10076604C() == 0x74616E616C707865 && v30 == 0xEB000000006E6F69)
        {
          break;
        }

        v31 = sub_10077167C();

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
    sub_1007680EC();
    goto LABEL_5;
  }

LABEL_17:
  v32 = v41;
  sub_10076F4DC();
  v33 = sub_10076415C();
  v34 = v45;
  v35 = v33;
  (*(v42 + 8))(v32, v43);
  v36 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v34, 1, v36) == 1)
  {

    sub_10000CFBC(v34, &unk_100943200);
  }

  else
  {
    sub_100264100(v35, 1, a7, v34);

    (*(v37 + 8))(v34, v36);
  }

  return (*(v46 + 8))(v52, v47);
}

uint64_t sub_100561DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100561DB8()
{
  result = qword_10095D3A8;
  if (!qword_10095D3A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10095D3A8);
  }

  return result;
}

unint64_t sub_100561E0C(uint64_t a1, uint64_t a2)
{
  sub_10077175C();
  sub_10077008C();
  v4 = sub_1007717AC();

  return sub_100561E84(a1, a2, v4);
}

unint64_t sub_100561E84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10077167C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void (*sub_100561F3C(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
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
  v7[8] = sub_100562254(v7);
  v7[9] = sub_100562048(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_100561FE8;
}

void sub_100561FE8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_100562048(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
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
  v13 = sub_100561E0C(a2, a3);
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
      sub_10024D714();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100249340(v18, a4 & 1);
    v13 = sub_100561E0C(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1007716DC();
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
  return sub_1005621A0;
}

void sub_1005621A0(uint64_t **a1)
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
      sub_10024BAB8(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_1000B8AFC(*(v7 + 48) + 16 * v6);
    sub_1001E1F10(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_100562254(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10056227C;
}

unint64_t sub_100562288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000A5D4(&qword_100948BC8);
    v3 = sub_1007715DC();
    v4 = a1 + 32;

    while (1)
    {
      sub_100562398(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_100561E0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000CD64(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100562398(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100948BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100562414(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v3 = sub_10000A5D4(&unk_1009435D0);
  __chkstk_darwin(v3 - 8);
  v115 = v106 - v4;
  v5 = sub_10000A5D4(&qword_10095D440);
  __chkstk_darwin(v5 - 8);
  v7 = v106 - v6;
  v8 = sub_100760EFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v122 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = v106 - v12;
  __chkstk_darwin(v13);
  v116 = v106 - v14;
  __chkstk_darwin(v15);
  v117 = v106 - v16;
  __chkstk_darwin(v17);
  v119 = v106 - v18;
  v19 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v19 - 8);
  v113 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v106 - v22;
  __chkstk_darwin(v24);
  v26 = v106 - v25;
  __chkstk_darwin(v27);
  v29 = v106 - v28;
  __chkstk_darwin(v30);
  v120 = v106 - v31;
  v121 = OBJC_IVAR____TtC20ProductPageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = [Strong tabBar];

  v34 = [v33 items];
  if (!v34)
  {
    goto LABEL_12;
  }

  v109 = v7;
  sub_100016F40(0, &unk_100960200);
  v35 = sub_1007701BC();

  if ((sub_1007701EC() & 1) == 0)
  {

LABEL_12:
    sub_10000A5D4(&qword_100942C70);
    v45 = v122;
    sub_10076222C();
    v46 = sub_100760EEC();
    v48 = v47;
    (*(v9 + 8))(v45, v8);
    sub_100563D70();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    return sub_10076FC7C();
  }

  v36 = *(v9 + 56);
  v111 = v8;
  v36(v120, 1, 1, v8);
  v37 = swift_unknownObjectUnownedLoadStrong();
  v38 = [v37 selectedIndex];

  v112 = v9;
  v110 = v35;
  v107 = v35 >> 62;
  if (v35 >> 62)
  {
    v39 = sub_10077158C();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = [v40 selectedIndex];

  if (v38 < v39)
  {
    v42 = v112;
    if ((v110 & 0xC000000000000001) == 0)
    {
      v43 = v120;
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v41 < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v110 + 8 * v41 + 32);
LABEL_10:
        [v44 tag];

        sub_100760ECC();
        v41 = v111;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_61;
    }

    v44 = sub_10077149C();
    v43 = v120;
    goto LABEL_10;
  }

  sub_100760ECC();
  v29 = v26;
  v41 = v111;
  v42 = v112;
  v43 = v120;
LABEL_15:
  sub_10000CFBC(v43, &qword_10094B168);
  sub_100564124(v29, v43);
  sub_10017E160(v43, v23);
  v39 = *(v42 + 48);
  if (v39(v23, 1, v41) == 1)
  {

    sub_10000CFBC(v23, &qword_10094B168);
    sub_10000A5D4(&qword_100942C70);
    v51 = v122;
    sub_10076222C();
    v52 = sub_100760EEC();
    v54 = v53;
    (*(v42 + 8))(v51, v41);
    sub_100563D70();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    v56 = sub_10076FC7C();
    sub_10000CFBC(v43, &qword_10094B168);
    return v56;
  }

  v108 = v2;
  v57 = *(v42 + 32);
  v58 = v119;
  v106[1] = v42 + 32;
  v106[0] = v57;
  v57(v119, v23, v41);
  v59 = v116;
  sub_10076222C();
  v60 = (*(v42 + 88))(v59, v41);
  if (v60 == enum case for NavigationTab.infer(_:))
  {
    v61 = v122;
    v116 = *(v42 + 104);
    (v116)(v122, enum case for NavigationTab.search(_:), v41);
    v62 = sub_100760EBC();
    v63 = v41;
    v64 = *(v42 + 8);
    v64(v61, v41);
    if ((v62 & 1) == 0)
    {
      v61 = v122;
      (v116)(v122, enum case for NavigationTab.loading(_:), v41);
      v62 = sub_100760EBC();
      v64(v61, v41);
      if ((v62 & 1) == 0)
      {
        v70 = v114;
        (v116)(v114, enum case for NavigationTab.selected(_:), v41);
        v42 = v117;
        v67 = v118;
        v72 = v106[0];
LABEL_34:
        v72(v42, v70, v41);
        v66 = v112;
        goto LABEL_35;
      }
    }

    v42 = v117;
    if (v107)
    {
      v62 = v110;
      result = sub_10077158C();
      v65 = v62;
    }

    else
    {
      v65 = v110;
      result = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v111;
    v2 = v113;
    if (result)
    {
      if ((v65 & 0xC000000000000001) == 0)
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v68 = *(v65 + 32);
        goto LABEL_31;
      }

LABEL_62:
      v68 = sub_10077149C();
LABEL_31:
      v69 = v68;
      [v68 tag];
      sub_100760ECC();

      result = (v39)(v2, 1, v41);
      if (result == 1)
      {
LABEL_67:
        __break(1u);
        return result;
      }

      v70 = v114;
      v71 = v2;
      v72 = v106[0];
      (v106[0])(v114, v71, v41);
      v67 = v118;
      goto LABEL_34;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v60 == enum case for NavigationTab.selected(_:))
  {
    v66 = v112;
    v42 = v117;
    (*(v112 + 16))(v117, v58, v41);
  }

  else
  {
    v42 = v117;
    sub_10076222C();
    v66 = v112;
    (*(v112 + 8))(v59, v41);
  }

  v67 = v118;
LABEL_35:
  sub_100761FAC();
  sub_100761F8C();
  sub_100760EAC();
  sub_100761EFC();

  v73 = [objc_opt_self() standardUserDefaults];
  v63 = *(v66 + 16);
  v63(v122, v42, v41);
  v74 = v109;
  sub_10075F2CC();
  sub_10072EB44(v74);

  sub_10075F45C();
  sub_10076F63C();
  v75 = aBlock[0];
  if (aBlock[0])
  {
    sub_10075F43C();
  }

  sub_10000A5D4(&qword_100942C70);
  v116 = sub_10076FCEC();
  v76 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v76 presentedViewController];

  if (!v61)
  {
    goto LABEL_40;
  }

  if ([v61 isBeingDismissed])
  {

LABEL_40:
    v77 = sub_10076224C();
    v78 = sub_10076223C();
    sub_1005633BC(v42, v110, v77 & 1, v78, v67);

    v79 = v116;
    sub_10076FC4C();

    v80 = v111;
    v81 = *(v112 + 8);
    v81(v42, v111);
    v81(v119, v80);
    sub_10000CFBC(v120, &qword_10094B168);
    return v79;
  }

  sub_10076148C();
  sub_10076F64C();
  sub_10076FC1C();
  v64 = aBlock[0];
  type metadata accessor for ArticleContainerViewController();
  v62 = swift_dynamicCastClass();
  result = sub_10076223C();
  if (!(result >> 62))
  {
    v82 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_64:
  v105 = result;
  v82 = sub_10077158C();
  result = v105;
LABEL_43:
  v83 = v111;
  v84 = v115;
  if (!v82)
  {

    goto LABEL_51;
  }

  v114 = v62;
  if ((result & 0xC000000000000001) != 0)
  {
    v85 = v64;
    sub_10077149C();
    goto LABEL_47;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  v85 = v64;

LABEL_47:

  sub_10075F63C();
  if (swift_dynamicCastClass())
  {
    sub_10075F61C();

    v83 = v111;
    v64 = v85;
    v62 = v114;
    goto LABEL_52;
  }

  v83 = v111;
  v64 = v85;
  v62 = v114;
LABEL_51:
  v86 = sub_10075DB7C();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
LABEL_52:
  v87 = sub_1007690EC();
  if (v62 && (v87 & 1) != 0)
  {
    v88 = sub_10076224C();
    v89 = sub_10076223C();
    sub_1005633BC(v42, v110, v88 & 1, v89, v118);

    sub_10076FC4C();

    v90 = v42;
    v91 = v112;
  }

  else
  {
    v114 = swift_unknownObjectUnownedLoadStrong();
    v92 = v122;
    v63(v122, v42, v83);
    v91 = v112;
    v93 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v121 = v64;
    v94 = (v10 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    v98 = v83;
    v99 = v97;
    v100 = v108;
    *(v97 + 16) = v108;
    (v106[0])(v97 + v93, v92, v98);
    *(v99 + v94) = v110;
    *(v99 + v95) = v123;
    *(v99 + v96) = v118;
    *(v99 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
    aBlock[4] = sub_1005642AC;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100899C40;
    v101 = _Block_copy(aBlock);
    v102 = v100;
    v83 = v111;

    v90 = v117;

    v103 = v114;
    [v114 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);
  }

  sub_10000CFBC(v115, &unk_1009435D0);
  v104 = *(v91 + 8);
  v104(v90, v83);
  v104(v119, v83);
  sub_10000CFBC(v120, &qword_10094B168);
  return v116;
}

uint64_t sub_10056331C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10076224C();
  v9 = sub_10076223C();
  sub_1005633BC(a2, a3, v8 & 1, v9, a5);

  sub_10076FC4C();
}

uint64_t sub_1005633BC(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000A5D4(&qword_10095D410);
  __chkstk_darwin(v72);
  v13 = v53 - v12;
  v14 = sub_10000A5D4(&qword_10094B168);
  __chkstk_darwin(v14 - 8);
  v65 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = v53 - v17;
  __chkstk_darwin(v18);
  v66 = v53 - v19;
  v20 = sub_100760EFC();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for NavigationTab.loading(_:), v20, v22);
  v73 = a1;
  v25 = sub_100760EBC();
  v26 = *(v21 + 8);
  v61 = v24;
  v63 = v26;
  v64 = v21 + 8;
  v26(v24, v20);
  v53[1] = OBJC_IVAR____TtC20ProductPageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = Strong;
  v56 = a4;
  v57 = a5;
  v60 = v5;
  if (v25)
  {
    v29 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension29TabChangeActionImplementation_loadingNavigationController);
    [Strong setTransientViewController:v29 animated:0];

    sub_100016F40(0, &qword_1009453B0);
    v30.super.isa = sub_1007701AC().super.isa;
    [v29 setViewControllers:v30.super.isa];
    goto LABEL_3;
  }

  [Strong setTransientViewController:0 animated:0];

  v74 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v31 = sub_10077158C();
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  v33 = 0;
  v70 = v74 & 0xFFFFFFFFFFFFFF8;
  v71 = v74 & 0xC000000000000001;
  v68 = (v21 + 56);
  v69 = (v21 + 16);
  v34 = (v21 + 48);
  v58 = (v21 + 48);
  v59 = (v21 + 32);
  v67 = v31;
  while (v71)
  {
    v36 = sub_10077149C();
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_13:
    v75 = v36;
    [v36 tag];
    sub_100760ECC();
    v38 = v76;
    (*v69)(v76, v73, v20);
    (*v68)(v38, 0, 1, v20);
    v21 = *(v72 + 48);
    sub_10017E160(v32, v13);
    sub_10017E160(v38, &v13[v21]);
    v39 = *v34;
    if ((*v34)(v13, 1, v20) == 1)
    {
      sub_10000CFBC(v76, &qword_10094B168);
      sub_10000CFBC(v32, &qword_10094B168);
      v35 = v39(&v13[v21], 1, v20);
      v24 = v75;
      if (v35 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v40 = v65;
    sub_10017E160(v13, v65);
    if (v39(&v13[v21], 1, v20) == 1)
    {
      sub_10000CFBC(v76, &qword_10094B168);
      v21 = v66;
      sub_10000CFBC(v66, &qword_10094B168);
      v41 = v40;
      v32 = v21;
      v63(v41, v20);
      v24 = v75;
LABEL_8:
      sub_10000CFBC(v13, &qword_10095D410);
      goto LABEL_9;
    }

    v42 = v61;
    (*v59)(v61, &v13[v21], v20);
    sub_100564088(&unk_10095D420, &type metadata accessor for NavigationTab);
    v62 = sub_10076FF1C();
    v21 = v63;
    v63(v42, v20);
    sub_10000CFBC(v76, &qword_10094B168);
    v43 = v66;
    sub_10000CFBC(v66, &qword_10094B168);
    v44 = v40;
    v32 = v43;
    (v21)(v44, v20);
    v34 = v58;
    sub_10000CFBC(v13, &qword_10094B168);
    v24 = v75;
    if (v62)
    {
      goto LABEL_22;
    }

LABEL_9:

    ++v33;
    if (v37 == v67)
    {
      goto LABEL_27;
    }
  }

  if (v33 >= *(v70 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = *(v74 + 8 * v33 + 32);
  v37 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_10000CFBC(v13, &qword_10094B168);
LABEL_22:
  v45 = swift_unknownObjectUnownedLoadStrong();
  [v45 setSelectedIndex:v33];

  v30.super.isa = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for StoreTabBarController();
  if (swift_dynamicCastClass())
  {
    sub_10017BA08(v33);

    v30.super.isa = v24;
  }

  else
  {
  }

LABEL_3:

LABEL_27:
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 selectedViewController];

  if (v47)
  {
    if (v54)
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
      }
    }

    sub_10076F4DC();
    sub_10076167C();
    swift_allocObject();
    v49 = sub_10076165C();
    v50 = sub_100563DF4(v49, 1, v57, sub_10026426C);

    return v50;
  }

  else
  {
    sub_10000A5D4(&qword_100942C70);
    sub_100563D70();
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    return sub_10076FC7C();
  }
}

id sub_100563C5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabChangeActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100563D70()
{
  result = qword_10095D418;
  if (!qword_10095D418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D418);
  }

  return result;
}

uint64_t sub_100563DF4(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10000A5D4(&unk_1009428E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_10076F5AC();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CFBC(v10, &unk_100943200);
    sub_10000A5D4(&qword_100942C70);
    sub_1005640D0();
    swift_allocError();
    *v15 = 1;
    return sub_10076FC7C();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t sub_100564088(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005640D0()
{
  result = qword_10095D430;
  if (!qword_10095D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D430);
  }

  return result;
}

uint64_t sub_100564124(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_10094B168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100564194()
{
  v1 = sub_100760EFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1005642AC()
{
  v1 = *(sub_100760EFC() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10056331C(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_100564360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100564378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005643C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10056441C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100564434(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

id sub_100564464(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000A5D4(&unk_1009434B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  v4 = [a1 colorWithAlphaComponent:0.0];
  v5 = [v4 CGColor];

  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [a1 CGColor];
  *(v3 + 88) = v7;
  *(v3 + 64) = v8;
  isa = sub_1007701AC().super.isa;

  [v2 setColors:isa];

  sub_10000A5D4(&unk_100942870);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100785D70;
  sub_1001E2870();
  *(v10 + 32) = sub_100770ECC(0);
  *(v10 + 40) = sub_100770EBC(0.8);
  v11 = sub_1007701AC().super.isa;

  [v2 setLocations:v11];

  [v2 setStartPoint:{0.0, 0.5}];
  [v2 setEndPoint:{1.0, 0.5}];
  return v2;
}

id sub_100564640(void *a1, char a2)
{
  v4 = [objc_allocWithZone(CAGradientLayer) init];
  sub_10000A5D4(&unk_1009434B0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100784500;
  v6 = 0.0;
  v7 = [a1 colorWithAlphaComponent:0.0];
  v8 = [v7 CGColor];

  type metadata accessor for CGColor(0);
  v10 = v9;
  *(v5 + 56) = v9;
  *(v5 + 32) = v8;
  v11 = [a1 CGColor];
  *(v5 + 88) = v10;
  *(v5 + 64) = v11;
  isa = sub_1007701AC().super.isa;

  [v4 setColors:isa];

  sub_10000A5D4(&unk_100942870);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100785D70;
  sub_1001E2870();
  *(v13 + 32) = sub_100770ECC(0);
  *(v13 + 40) = sub_100770EBC(0.8);
  v14 = sub_1007701AC().super.isa;

  [v4 setLocations:v14];

  if (a2)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:{v15, 0.5}];
  [v4 setEndPoint:{v6, 0.5}];
  return v4;
}

char *sub_100564840(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView] = 0;
  sub_1000AE584(a1, &v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_layoutMetrics]);
  v3 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView] = v3;
  sub_10000A570(a1 + 80, v18);
  sub_10000A570(a1 + 40, &v19);
  sub_10000A570(a1 + 120, &v20);
  v4 = type metadata accessor for OnboardingTrayView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems] = _swiftEmptyArrayStorage;
  sub_1005652F4(v18, &v5[OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_layoutMetrics]);
  v17.receiver = v5;
  v17.super_class = v4;
  v6 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100565350(v18);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView] = v6;
  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView] = v10;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for OnboardingPageView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v11 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v12 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView;
  [*&v11[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView] setContentInsetAdjustmentBehavior:2];
  [*&v11[v12] setShowsVerticalScrollIndicator:0];
  [*&v11[v12] setShowsHorizontalScrollIndicator:0];
  [v11 addSubview:*&v11[v12]];
  v13 = OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView;
  [v11 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView]];
  v14 = [*&v11[v13] contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView]];

  sub_1000AE628(a1);
  return v11;
}

id sub_100564B28()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayView];
  v2 = [v1 isHidden];
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  v6 = 0.0;
  v7 = 0.0;
  if ((v2 & 1) == 0)
  {
    sub_10076422C();
    [v1 measurementsWithFitting:v0 in:{v8, v9}];
    v6 = v10;
    v7 = v11;
    sub_10076422C();
    v4 = floor(CGRectGetMidX(v38) + v6 * -0.5);
    sub_10076422C();
    MaxY = CGRectGetMaxY(v39);
    v5 = MaxY - v7;
    [*&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView] setFrame:{v4, MaxY - v7, v6, v7}];
    [v1 setFrame:{0.0, 0.0, v6, v7}];
  }

  [v0 bounds];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentScrollView];
  [v13 setFrame:?];
  v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_contentView];
  v15 = 0.0;
  v16 = 0.0;
  if (v14)
  {
    rect = v5;
    v17 = v14;
    sub_10076422C();
    MinX = CGRectGetMinX(v40);
    sub_10076422C();
    MinY = CGRectGetMinY(v41);
    sub_10076422C();
    Width = CGRectGetWidth(v42);
    v34 = v4;
    v35 = v6;
    if (v2)
    {
      sub_10076422C();
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
    sub_10076422C();
    sub_100770A4C();
    [v17 setFrame:?];
    if ((v2 & 1) != 0 || (v47.origin.x = v25, v47.origin.y = v26, v47.size.width = v15, v47.size.height = v16, v27 = CGRectGetMaxY(v47), v48.origin.x = v34, v48.size.width = v35, v48.origin.y = rect, v48.size.height = v7, CGRectGetMinY(v48) > v27))
    {
      [*&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView] setEffect:0];
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

      v30 = *&v0[OBJC_IVAR____TtC20ProductPageExtension18OnboardingPageView_trayBackgroundView];
      v31 = [objc_opt_self() effectWithStyle:4];
      [v30 setEffect:v31];
    }
  }

  [v13 setContentSize:{v15, v16, *&v33}];
  [v13 setContentInset:{0.0, 0.0, v3, 0.0}];
  return [v13 setContentOffset:{0.0, 0.0}];
}

id sub_100564F50(void *a1)
{
  v2 = v1;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for OnboardingPageView();
  objc_msgSendSuper2(&v15, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077071C();

  if (!a1 || ((sub_10077071C() ^ v5) & 1) != 0)
  {
    return [v2 setNeedsLayout];
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_10076FF9C();
  v12 = v11;
  if (v10 == sub_10076FF9C() && v12 == v13)
  {
  }

  else
  {
    v14 = sub_10077167C();

    if ((v14 & 1) == 0)
    {
      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_100565160()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnboardingPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100565234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_10056527C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100565424()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  v23.receiver = v0;
  v23.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v23, "viewDidLoad");
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    sub_100016F40(0, &qword_100942F10);
    v5 = sub_100770D2C();
    [v4 setBackgroundColor:v5];

    sub_100566734(&qword_10095D500, v6, type metadata accessor for PurchasesLoadingViewController);
    swift_unknownObjectRetain();
    sub_10076455C();
    sub_100760C9C();
    sub_10076DE3C();
    v7 = objc_allocWithZone(sub_10076DE6C());
    v8 = sub_10076DE5C();
    v9 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
    v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
    sub_10076857C();

    v11 = *&v1[v9];
    *&v1[v9] = v8;
    v12 = v8;

    v13 = [v1 view];
    if (v13)
    {
      v14 = v13;
      [v13 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v24 = v16;
      v25 = v18;
      v26 = v20;
      v27 = v22;
      v28 = 0;
      sub_10076856C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1005656FC()
{
  v43.receiver = v0;
  v43.super_class = type metadata accessor for PurchasesLoadingViewController();
  objc_msgSendSuper2(&v43, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_5:
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases];
  if (!v15)
  {
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v16 view];
  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = v17;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v18 setFrame:{v22, v24, v26, v28}];
LABEL_9:
  v29 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases];
  if (!v29)
  {
    return;
  }

  v30 = v29;
  v31 = [v30 view];
  if (!v31)
  {
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v0 view];
  if (!v33)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v34 = v33;
  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  [v32 setFrame:{v36, v38, v40, v42}];
}

id sub_100565970()
{
  v1 = v0;
  v2 = sub_10076F1BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v8 = *&v0[v6];
  *&v0[v6] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  [result bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v46 = v12;
  v47 = v14;
  v48 = v16;
  v49 = v18;
  v50 = 0;
  result = sub_10076856C();
  v19 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases;
  if (*&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases])
  {
    return result;
  }

  sub_10000A5D4(&qword_100958C48);
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_objectGraph];
  sub_10076F64C();
  sub_10076FC1C();
  type metadata accessor for ASDPurchaseHistoryContext(0);
  v44[0] = 1;
  sub_10076F19C();
  sub_10076F60C();
  v21 = *(v3 + 8);
  v21(v5, v2);
  LOBYTE(v44[0]) = 1;
  sub_10076F19C();
  v22 = sub_10076F60C();

  v21(v5, v2);
  v43[0] = v22;
  v43[1] = sub_10000DD38(v22);
  v43[2] = v23;
  sub_100016F40(0, &qword_100944EF0);

  sub_10076FC1C();
  sub_10000A570(v45, v44);
  sub_10000A5D4(&qword_100958D08);
  v24 = sub_10076593C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100784500;
  v29 = v28 + v27;
  v30 = *(v25 + 104);
  v30(v29, enum case for PurchasesContentMode.all(_:), v24);
  v30(v29 + v26, enum case for PurchasesContentMode.notOnDevice(_:), v24);
  sub_10076830C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v31 = sub_10076825C();
  v32 = sub_100566734(&qword_100958D10, 255, &type metadata accessor for PurchasesContentPresenter);

  v33 = sub_1006C7080(v20, v31, v32, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000001007ED800);
  v34 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
  sub_1004346FC(v31, v33);
  v35 = *&v1[v19];
  *&v1[v19] = v36;
  v37 = v36;

  v38 = v37;
  [v38 willMoveToParentViewController:v1];
  [v1 addChildViewController:v38];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v39 = result;
  result = [v38 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v40 = result;
  [v39 addSubview:result];

  [v38 didMoveToParentViewController:v1];
  v41 = [v38 title];

  [v1 setTitle:v41];
  v42 = [v38 collectionView];
  [v1 setContentScrollView:v42 forEdge:15];
  swift_unknownObjectRelease();

  return sub_10000CD74(v45);
}

id sub_100565F34()
{
  v1 = v0;
  v2 = sub_10076FBBC();
  __chkstk_darwin(v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v5 = *&v0[v3];
  *&v0[v3] = 0;

  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  [result bounds];

  result = sub_10076856C();
  v8 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases;
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases])
  {
    return result;
  }

  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_objectGraph];
  sub_10076F64C();

  sub_10076FC1C();
  sub_10076785C();
  swift_allocObject();
  v10 = sub_1007677CC();
  v11 = sub_100566734(&qword_10095D4F8, 255, &type metadata accessor for FamilyPurchasesPresenter);

  v12 = sub_1006C7080(v9, v10, v11, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000001007ED7E0);
  v13 = objc_allocWithZone(type metadata accessor for FamilyPurchasesViewController());
  v14 = sub_100032914(v10, v12);
  v15 = *&v1[v8];
  *&v1[v8] = v14;
  v16 = v14;

  v17 = v16;
  [v17 willMoveToParentViewController:v1];
  [v1 addChildViewController:v17];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_8;
  }

  v18 = result;
  result = [v17 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v19 = result;
  [v18 addSubview:result];

  [v17 didMoveToParentViewController:v1];
  v20 = [v17 title];

  [v1 setTitle:v20];
  v21 = [v17 collectionView];
  [v1 setContentScrollView:v21 forEdge:15];
}

void sub_1005662BC()
{
  v1 = v0;
  v2 = sub_10076DE4C();
  __chkstk_darwin(v2 - 8);
  sub_10076DE3C();
  v3 = objc_allocWithZone(sub_10076DE6C());
  v4 = sub_10076DE5C();
  v5 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v7 = *&v1[v5];
  *&v1[v5] = v4;
  v8 = v4;

  v9 = [v1 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];

    sub_10076856C();
  }

  else
  {
    __break(1u);
  }
}

id sub_100566414()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController];
  sub_10076857C();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10076856C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10056650C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PurchasesLoadingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100566648(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_loggedInUserPurchases] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_familyPurchases] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_objectGraph] = a2;
  sub_100760C4C();
  sub_10076F64C();

  sub_10076FC1C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_artworkLoader] = v6;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension30PurchasesLoadingViewController_presenter] = a1;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for PurchasesLoadingViewController();

  return objc_msgSendSuper2(&v5, "initWithNibName:bundle:", 0, 0);
}

uint64_t sub_100566734(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

id sub_1005667DC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_10095D508];
  *v9 = 0;
  v9[8] = 1;
  *&v4[qword_10095D510] = 0;
  *&v4[qword_10095D518] = 0;
  *&v4[qword_10095D520] = 0;
  v4[qword_10095D528] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

void sub_100566960()
{
  if ((v0[qword_10095D508 + 8] & 1) != 0 || *&v0[qword_10095D508] != 3)
  {
    return;
  }

  v1 = sub_100566B38();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_10077158C();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v5 = 0.0;
    goto LABEL_13;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_10077149C();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 frame];
    Width = CGRectGetWidth(v13);

    v5 = v5 + Width;
  }

  while (v3 != v4);
LABEL_13:

  [v0 frame];
  if (v5 >= CGRectGetWidth(v14))
  {
    return;
  }

  v9 = sub_100566B38();
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_23:
  v10 = sub_10077158C();
LABEL_16:

  if (v10 >= 2)
  {
    v11 = sub_100566B38();
    if (v11 >> 62)
    {
      v12 = sub_10077158C();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 frame];
      CGRectGetWidth(v15);
    }
  }
}

void *sub_100566B38()
{
  v1 = [v0 subviews];
  sub_1000ACA5C();
  v2 = sub_1007701BC();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t sub_100566CB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_100566D64();
  sub_100566F04();
  return sub_1005671F8();
}

void sub_100566D1C(void *a1)
{
  v1 = a1;
  sub_100566CB4();
}

unint64_t sub_100566D64()
{
  v17 = *&v0[qword_10095D510];
  result = sub_100566B38();
  v2 = result;
  if (result >> 62)
  {
    result = sub_10077158C();
    v3 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_10077149C();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v0 frame];
    [v6 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    if (v0[qword_10095D528] == 1)
    {
      [v0 frame];
      if (v17)
      {
        if (v13 < v10)
        {
          [v0 frame];
          v10 = v15;
        }
      }

      else if (v14 < v12)
      {
        [v0 frame];
        v12 = v16;
      }
    }

    [v6 setFrame:{0.0, 0.0, v10, v12}];
  }

LABEL_16:
}

uint64_t sub_100566F04()
{
  v1 = v0;
  v37 = *&v0[qword_10095D510];
  sub_100566960();
  v3 = v2;
  v4 = sub_100566B38();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v10 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v1 traitCollection];
      v14 = sub_10077070C();

      v8 = 0.0;
      if (v14)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v39);
        [v11 frame];
        v8 = MaxX - CGRectGetWidth(v40);
      }

      if (v7)
      {
        v16 = [v1 subviews];
        sub_1000ACA5C();
        v17 = sub_1007701BC();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_10077149C();
        }

        else
        {
          if (v7 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v18 = *(v17 + 8 * v7 + 24);
        }

        v19 = v18;

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        if (v37)
        {
          v41.origin.x = v21;
          v41.origin.y = v23;
          v41.size.width = v25;
          v41.size.height = v27;
          v8 = v3 + CGRectGetMaxY(v41);
          v9 = 0.0;
          goto LABEL_6;
        }

        v28 = [v1 traitCollection];
        v29 = sub_10077070C();

        v30 = v21;
        v31 = v23;
        v32 = v25;
        v33 = v27;
        if (v29)
        {
          MinX = CGRectGetMinX(*&v30);
          [v11 frame];
          v8 = MinX - (v3 + CGRectGetWidth(v42));
        }

        else
        {
          v8 = v3 + CGRectGetMaxX(*&v30);
        }
      }

      else
      {
        v9 = 0.0;
        if (v37)
        {
          goto LABEL_6;
        }
      }

      v9 = v8;
      v8 = 0.0;
LABEL_6:
      [v11 frame];
      [v11 setFrame:{v9, v8}];

      ++v7;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
}

unint64_t sub_1005671F8()
{
  v1 = v0;
  v2 = *&v0[qword_10095D510];
  result = sub_100566B38();
  v4 = result;
  if (result >> 62)
  {
    result = sub_10077158C();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_41:
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_initWithTabBarSystemItem_tag_;
    v31 = xmmword_100783DD0;
    while (1)
    {
      v10 = (v4 & 0xC000000000000001) != 0 ? sub_10077149C() : *(v4 + 8 * v6 + 32);
      v11 = v10;
      v12 = *&v1[qword_10095D518];
      if (v12 > 2)
      {
        break;
      }

      if (!v12)
      {
        [v1 bounds];
        if (v2)
        {
          CGRectGetWidth(*&v15);
        }

        else
        {
          CGRectGetHeight(*&v15);
        }

        [v11 v7[134]];
        [v11 setFrame:{v19, v31}];
        goto LABEL_7;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          sub_10000A5D4(&unk_1009434B0);
          v13 = swift_allocObject();
          *(v13 + 16) = v31;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 32) = 0xD00000000000002CLL;
          *(v13 + 40) = 0x80000001007ED910;
          sub_10077173C();
        }

        goto LABEL_7;
      }

      if (!v2)
      {
        [v10 v7[134]];
        [v11 setFrame:{v29, v31}];
        goto LABEL_7;
      }

      v25 = [v1 traitCollection];
      v26 = sub_10077070C();

      v9 = 0.0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      v7 = &selRef_initWithTabBarSystemItem_tag_;
      [v11 frame];
      [v11 setFrame:{v9, v32, v34}];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 3)
    {
      [v1 bounds];
      if (v2)
      {
        v24 = CGRectGetWidth(*&v20) * 0.5;
        [v11 center];
        [v11 setCenter:v24];
      }

      else
      {
        CGRectGetHeight(*&v20);
        [v11 center];
        [v11 setCenter:?];
      }

      goto LABEL_7;
    }

    if (v12 != 4)
    {
      if (v12 != 5 || v2 != 0)
      {
        goto LABEL_7;
      }

      [v1 bounds];
      CGRectGetHeight(v39);
      [v11 v7[134]];
      CGRectGetHeight(v40);
      [v11 lastBaselineFromBottom];
      goto LABEL_39;
    }

    if (!v2)
    {
      [v1 bounds];
      CGRectGetHeight(v41);
      [v11 v7[134]];
      CGRectGetHeight(v42);
LABEL_39:
      [v11 v7[134]];
      [v11 setFrame:{v30, v33, v35}];
      goto LABEL_7;
    }

    v27 = [v1 traitCollection];
    v28 = sub_10077070C();

    v9 = 0.0;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v1 bounds];
    Width = CGRectGetWidth(v37);
    [v11 frame];
    v9 = Width - CGRectGetWidth(v38);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_100567614(double a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_1000ACA5C();
  v8 = sub_1007701BC();

  if (v8 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {

    if (!i)
    {
      break;
    }

    v11 = *&v3[qword_10095D510];
    v12 = sub_100566B38();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_10077158C();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0.0;
    if (!v14)
    {
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_10077149C();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v16 = *(v13 + 32);
    }

    v17 = v16;
    [v16 sizeThatFits:{a1, a2}];
    v20 = v19;
    v21 = v18;
    if (v3[qword_10095D528] == 1)
    {
      if (v18 <= a2)
      {
        v22 = v18;
      }

      else
      {
        v22 = a2;
      }

      if (v20 <= a1)
      {
        v23 = v20;
      }

      else
      {
        v23 = a1;
      }

      if (v11)
      {
        v20 = v23;
      }

      else
      {
        v21 = v22;
      }
    }

    if (*&v3[qword_10095D518] == 5)
    {
      [v17 lastBaselineFromBottom];
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v28 = v27;

      v29 = v21 - v28;
      a3 = v26;
      a2 = v25;
      a1 = v24;
    }

    else
    {

      if (v20 < 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v20;
      }

      v29 = v21;
    }

    if (v29 < 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v29;
    }

    if (v11)
    {
      v31 = v21;
    }

    else
    {
      v31 = v20;
    }

    v32 = v31 + 0.0;
    if (v14 == 1)
    {
    }

    for (j = 5; ; ++j)
    {
      v36 = j - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v37 = sub_10077149C();
      }

      else
      {
        if (v36 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v37 = *(v13 + 8 * j);
      }

      v38 = v37;
      v39 = __OFADD__(v36, 1);
      v40 = j - 3;
      if (v39)
      {
        break;
      }

      [v37 sizeThatFits:{a1, a2}];
      v43 = v41;
      v44 = v42;
      if (v3[qword_10095D528] == 1)
      {
        if (v11)
        {
          if (v41 > a1)
          {
            v43 = a1;
          }
        }

        else if (v42 > a2)
        {
          v44 = a2;
        }
      }

      if (*&v3[qword_10095D518] == 5)
      {
        [v38 lastBaselineFromBottom];
        v51 = v32;
        v45 = v15;
        v46 = a1;
        v47 = a2;
        v48 = a3;
        v50 = v49;

        v34 = v44 - v50;
        a3 = v48;
        a2 = v47;
        a1 = v46;
        v15 = v45;
        v32 = v51;
      }

      else
      {

        if (v15 <= v43)
        {
          v15 = v43;
        }

        v34 = v44;
      }

      if (v30 <= v34)
      {
        v30 = v34;
      }

      if (v11)
      {
        v35 = v44;
      }

      else
      {
        v35 = v43;
      }

      if (v35 <= 0.0)
      {
        v32 = v32 + v35;
      }

      else
      {
        v32 = v32 + v35 + a3;
      }

      if (v40 == v14)
      {
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  return result;
}

double sub_1005679C4(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1005679B4(a2, a3);
  v7 = v6;

  return v7;
}

Class sub_100567A18(void *a1)
{
  v1 = a1;
  sub_100567A7C();

  sub_1000ACA5C();
  v2.super.isa = sub_1007701AC().super.isa;

  return v2.super.isa;
}

id sub_100567A80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100567AF4()
{
  v1 = v0 + qword_10095D508;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_10095D510) = 0;
  *(v0 + qword_10095D518) = 0;
  *(v0 + qword_10095D520) = 0;
  *(v0 + qword_10095D528) = 1;
  sub_10077156C();
  __break(1u);
}

unint64_t sub_100567BAC()
{
  result = qword_10094F058;
  if (!qword_10094F058)
  {
    sub_10076AD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F058);
  }

  return result;
}

void sub_100567C04(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v5 = sub_10077149C();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_100016F40(0, &qword_100948D90);
      v9 = v1;
      v10 = sub_1007701BC();

      v11 = v10;
      v1 = v9;
      sub_1000F99C4(v11);

      ++v3;
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

void sub_100567D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10076F2EC();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v39 = a6;
    v40 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v41 = a1;
    v13 = sub_10076AD3C();
    if (v13)
    {
      v14 = v13;
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      v15 = sub_10076FD4C();
      sub_10000A61C(v15, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F2DC();
      v48._countAndFlagsBits = 0xD00000000000004DLL;
      v48._object = 0x80000001007EDAC0;
      sub_10076F2CC(v48);
      v45 = sub_10000A5D4(&unk_10094BB60);
      aBlock = v14;

      sub_10076F29C();
      sub_1000258C0(&aBlock);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_10076F2CC(v49);
      sub_10076F2FC();
      sub_10076FBCC();

      v16 = [v41 sections];
      sub_100016F40(0, &qword_10095D5C0);
      v17 = sub_1007701BC();

      sub_100568D38(v17, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_1009412E8 != -1)
      {
        swift_once();
      }

      v18 = sub_10076FD4C();
      sub_10000A61C(v18, qword_1009A2600);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();

      v19 = [v41 sections];
      sub_100016F40(0, &qword_10095D5C0);
      v20 = sub_1007701BC();

      sub_100567C04(v20);
    }

    v21 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_10077149C();
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v24 setEnabled:1];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v27 = sub_10076147C();
    v28 = objc_allocWithZone(AMSNotificationSettingsTask);
    v29 = sub_10076FF6C();
    v30 = [v28 initWithIdentifier:v29 account:v40 bag:v27];

    swift_unknownObjectRelease();
    sub_100016F40(0, &qword_100948D90);

    isa = sub_1007701AC().super.isa;

    v32 = [v30 updateSettings:isa];

    if (v32)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v11;
      *(v33 + 24) = v39;
      v46 = sub_1005694EC;
      v47 = v33;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1005F04D8;
      v45 = &unk_100899EF8;
      v34 = _Block_copy(&aBlock);

      [v32 addFinishBlock:v34];

      _Block_release(v34);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_1005693AC();
      swift_allocError();
      *v35 = 1;
    }

    swift_errorRetain();
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v36 = sub_10076FD4C();
    sub_10000A61C(v36, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v50._countAndFlagsBits = 0xD000000000000030;
    v50._object = 0x80000001007EDA30;
    sub_10076F2CC(v50);
    swift_getErrorValue();
    v37 = sub_1007716EC();
    v45 = &type metadata for String;
    aBlock = v37;
    v43 = v38;
    sub_10076F29C();
    sub_1000258C0(&aBlock);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_10076F2CC(v51);
    sub_10076F2FC();
    sub_10076FBCC();

    sub_10076FCAC();
  }
}

uint64_t sub_1005685C8(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = [*a1 items];
  sub_100016F40(0, &qword_100948D90);
  v5 = sub_1007701BC();

  v23 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v17[5] = a2;
    v18 = i;
    v7 = 0;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_10076FF9C();
      a2 = v13;

      v22[0] = v12;
      v22[1] = a2;
      __chkstk_darwin(v14);
      v17[2] = v22;
      LOBYTE(v11) = sub_1001A3D8C(sub_100533F84, v17, v21);

      if (v11)
      {
        sub_1007714CC();
        a2 = v23[2];
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
      }

      else
      {
      }

      ++v7;
      if (v10 == v18)
      {
        v15 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  return sub_1000F99C4(v15);
}

uint64_t sub_1005687F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10076F50C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = sub_10076F2EC();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v21 = a4;
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v13 = sub_10076FD4C();
    sub_10000A61C(v13, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v24._countAndFlagsBits = 0xD000000000000037;
    v24._object = 0x80000001007EDB40;
    sub_10076F2CC(v24);
    swift_beginAccess();
    v14 = *(a3 + 16);
    v23 = sub_10000A5D4(&qword_100948D98);
    v22[0] = v14;

    sub_10076F29C();
    sub_1000258C0(v22);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10076F2CC(v25);
    sub_10076F2FC();
    sub_10076FBCC();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_10076FCBC();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_1005693AC();
      swift_allocError();
      *v16 = 2;
    }

    swift_errorRetain();
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v17 = sub_10076FD4C();
    sub_10000A61C(v17, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v26._object = 0x80000001007EDB10;
    v26._countAndFlagsBits = 0xD00000000000002DLL;
    sub_10076F2CC(v26);
    swift_beginAccess();
    v18 = *(a3 + 16);
    v23 = sub_10000A5D4(&qword_100948D98);
    v22[0] = v18;

    sub_10076F29C();
    sub_1000258C0(v22);
    v27._countAndFlagsBits = 0x3A726F727245202ELL;
    v27._object = 0xE900000000000020;
    sub_10076F2CC(v27);
    swift_getErrorValue();
    v19 = sub_1007716EC();
    v23 = &type metadata for String;
    v22[0] = v19;
    v22[1] = v20;
    sub_10076F29C();
    sub_1000258C0(v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_10076F2CC(v28);
    sub_10076F2FC();
    sub_10076FBCC();

    sub_10076FCAC();
  }
}

void sub_100568D38(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_10077149C();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1005685C8(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100568E38(uint64_t a1)
{
  v2 = sub_10076F2EC();
  __chkstk_darwin(v2 - 8);
  sub_10000A5D4(&qword_100942C70);
  v3 = sub_10076FCEC();
  sub_100016F40(0, &qword_100944EF0);
  sub_10076F64C();
  sub_10076FC1C();
  v4 = [aBlock[0] ams_activeiTunesAccount];

  if (v4)
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v5 = sub_10076FD4C();
    sub_10000A61C(v5, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v24._countAndFlagsBits = 0xD00000000000002DLL;
    v24._object = 0x80000001007ED9C0;
    sub_10076F2CC(v24);
    v21 = sub_100016F40(0, &qword_10095D5B8);
    aBlock[0] = v4;
    v6 = v4;
    sub_10076F29C();
    sub_1000258C0(aBlock);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10076F2CC(v25);
    sub_10076F2FC();
    sub_10076FBCC();

    sub_10076148C();
    sub_10076FC1C();
    v7 = aBlock[0];
    v8 = v6;
    v9 = sub_10076147C();
    v10 = objc_allocWithZone(AMSNotificationSettingsTask);
    v11 = sub_10076FF6C();
    v12 = [v10 initWithIdentifier:v11 account:v8 bag:v9];

    swift_unknownObjectRelease();
    v13 = [v12 fetchAllSettings];
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v8;
    v14[4] = v7;
    v14[5] = v3;
    v22 = sub_100569450;
    v23 = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001FA544;
    v21 = &unk_100899E80;
    v15 = _Block_copy(aBlock);
    v16 = v8;

    [v13 addFinishBlock:v15];
    _Block_release(v15);
  }

  else
  {
    if (qword_1009412E8 != -1)
    {
      swift_once();
    }

    v17 = sub_10076FD4C();
    sub_10000A61C(v17, qword_1009A2600);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBCC();

    sub_1005693AC();
    swift_allocError();
    *v18 = 0;
    sub_10076FCAC();
  }

  return v3;
}

unint64_t sub_1005693AC()
{
  result = qword_10095D5B0;
  if (!qword_10095D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D5B0);
  }

  return result;
}

uint64_t sub_100569400()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10056945C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100569474()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005694AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100569508()
{
  result = qword_10095D5C8;
  if (!qword_10095D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D5C8);
  }

  return result;
}

id sub_100569564(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded] = 0;
  v9 = &v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  v11 = sub_10076C38C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory] = 7;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for RevealingVideoView();
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a1, a2, a3, a4);
  [v12 setClipsToBounds:1];
  return v12;
}

id sub_10056970C()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    *(Strong + qword_10099F2A0) = v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded];
    sub_10039E1D8();
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    (*((swift_isaMask & *v4) + 0xA0))(v1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded]);
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1005697E4(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_100395BBC(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10003BDD4(v1 + v6, v5);
    (*((swift_isaMask & *v8) + 0x100))(v5);
  }

  return sub_10005AEAC(a1);
}

void sub_10056990C(void *a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v16 = Strong;
      v7 = swift_unknownObjectWeakLoadStrong();
      v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize);
      v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 8);
      v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 16);
      v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics);
      v12 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
      swift_beginAccess();
      sub_10003BDD4(v1 + v12, v5);
      v13 = *((swift_isaMask & *v16) + 0x150);
      v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory);
      v15 = v16;

      v13(v7, v8, v9, v10, v11, v5, v14);

      sub_10005AEAC(v5);
    }
  }
}

uint64_t sub_100569AF0(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for RevealingVideoView();
  v12.receiver = v1;
  v12.super_class = v6;
  objc_msgSendSuper2(&v12, "willMoveToWindow:", a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
    v9 = result;
    swift_beginAccess();
    sub_10003BDD4(v9 + v8, v5);
    v10 = v9;
    sub_10056A60C(v9, v5);

    sub_10005AEAC(v5);
    return swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_100569CD4()
{
  v1 = sub_10076A75C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_10076C38C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] || (v16 = &v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize], (v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 16] & 1) != 0))
  {

    return;
  }

  v46 = v2;
  v47 = Strong;
  v18 = *v16;
  v17 = v16[1];
  v19 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(&v0[v19], v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {

    sub_10005AEAC(v10);
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v20 = v0[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory];
  if (v20 == 7)
  {
    v21 = *(v12 + 8);

    v21(v14, v11);
LABEL_13:

    return;
  }

  [v0 bounds];
  v50.origin.x = 0.0;
  v50.origin.y = 0.0;
  v50.size.width = 0.0;
  v50.size.height = 0.0;
  if (CGRectEqualToRect(v49, v50))
  {
    (*(v12 + 8))(v14, v11);
    goto LABEL_13;
  }

  v45 = v0;
  sub_1005B1CD8(v20);
  v22 = v46;
  v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v20 != 6)
  {
    v24 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v20 != 4)
  {
    v23 = v24;
  }

  (*(v46 + 104))(v4, *v23, v1);
  (*(v22 + 32))(v7, v4, v1);
  v25 = sub_1007701CC();

  (*(v22 + 8))(v7, v1);
  v26 = v45;
  v27 = v45[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded];
  v28 = v47;
  [v26 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [v26 traitCollection];
  v38 = sub_1006C37A4(v37, v30, v32, v34, v36, v18, v17, v25, v27);
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v28 setFrame:{v38, v40, v42, v44}];

  (*(v12 + 8))(v14, v11);
}

void sub_10056A1AC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [v0 bounds];
    x = v16.origin.x;
    y = v16.origin.y;
    width = v16.size.width;
    height = v16.size.height;
    MidX = CGRectGetMidX(v16);
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    [v0 convertPoint:v14 toCoordinateSpace:{MidX, CGRectGetMidY(v17)}];
    v9 = &v14[qword_1009A2510];
    v10 = *&v14[qword_1009A2510];
    v11 = *&v14[qword_1009A2510 + 8];
    v12 = v14[qword_1009A2510 + 16];
    *v9 = v7;
    v9[1] = v8;
    *(v9 + 16) = 0;
    if ((v12 & 1) != 0 || (v7 == v10 ? (v13 = v8 == v11) : (v13 = 0), !v13))
    {
      sub_1005ED780();
    }
  }
}

void sub_10056A2D0(void *a1)
{
  v2 = v1;
  v4 = sub_10076481C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_10056AF54(&qword_10094F540, type metadata accessor for TodayCardVideoView);
    v10 = v9;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_1000ACA5C();
      v13 = v2;
      v14 = sub_100770EEC();

      if (v14)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    [v10 removeFromSuperview];
    [v2 addSubview:v10];
LABEL_13:
    v10[qword_10099F2A0] = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded);
    sub_10039E1D8();
    v19 = qword_1009A2558;
    swift_beginAccess();
    (*(v5 + 16))(v7, &v10[v19], v4);
    v20 = v10;
    sub_1007647BC();
    sub_1005ECA84(v7);

    [v2 setNeedsLayout];
    return;
  }

  if (a1)
  {
    sub_10056AF54(&qword_10094F540, type metadata accessor for TodayCardVideoView);
    v15 = [a1 superview];
    if (v15)
    {
      v16 = v15;
      sub_1000ACA5C();
      v17 = v1;
      v18 = sub_100770EEC();

      if (v18)
      {

        [a1 removeFromSuperview];
      }
    }
  }
}

void (*sub_10056A5B8(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100276DCC;
}

void sub_10056A60C(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  if (a1)
  {
    v9 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics];
    if (v9)
    {
      v10 = &a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
      if ((a1[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize + 16] & 1) == 0)
      {
        v11 = v3[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory];
        if (v11 != 7)
        {
          v45 = a2;
          v46 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory;
          v47 = v11;
          v12 = *v10;
          v44 = *(v10 + 1);
          v50 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
          Strong = swift_unknownObjectWeakLoadStrong();
          v14 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
          v15 = swift_unknownObjectWeakLoadStrong();
          v51 = v14;
          v48 = Strong;
          swift_unknownObjectWeakAssign();
          v49 = a1;

          sub_10056A2D0(v15);

          v16 = &v3[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize];
          v17 = v12;
          *v16 = v12;
          v18 = v44;
          *(v16 + 1) = v44;
          v16[16] = 0;
          v19 = swift_unknownObjectWeakLoadStrong();
          if (v19)
          {
            v20 = v19;
            (*((swift_isaMask & *v19) + 0xE8))(v17, v18, 0);
          }

          *&v3[OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics] = v9;

          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            v23 = *((swift_isaMask & *v21) + 0xD0);
            swift_bridgeObjectRetain_n();
            v23(v9);
          }

          else
          {
          }

          v24 = v45;
          sub_10003BDD4(v45, v8);
          sub_1005697E4(v8);
          v25 = v47;
          v3[v46] = v47;
          v26 = swift_unknownObjectWeakLoadStrong();
          if (v26)
          {
            v27 = v26;
            (*((swift_isaMask & *v26) + 0x118))(v25);
          }

          v28 = swift_unknownObjectWeakLoadStrong();
          if (v28)
          {
            v29 = v28;
            v30 = swift_unknownObjectWeakLoadStrong();
            (*((swift_isaMask & *v29) + 0x150))(v30, *v16, *(v16 + 1), v16[16], v9, v24, v25);
          }

          [v3 setNeedsLayout];

          v31 = swift_unknownObjectWeakLoadStrong();
          if (v31)
          {
            v32 = v31;
            v33 = swift_unknownObjectWeakLoadStrong();
            if (v33)
            {
              v34 = v33;
              v35 = [v33 isHidden];
            }

            else
            {
              v35 = 0;
            }

            [v32 setHidden:v35];
          }

          v36 = swift_unknownObjectWeakLoadStrong();
          if (v36)
          {
            v37 = v36;
            v38 = swift_unknownObjectWeakLoadStrong();
            v39 = v38;
            if (v38)
            {
              v37[qword_10099F298] = *(v38 + qword_10099F298);
              sub_10039DEFC();
              v40 = qword_10099F2A0;
              v41 = v39[qword_10099F2A0];
            }

            else
            {
              v37[qword_10099F298] = 7;
              sub_10039DEFC();
              v41 = 0;
              v40 = qword_10099F2A0;
            }

            v37[v40] = v41;
            sub_10039E1D8();
          }

          v42 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          v43 = v49;
          sub_10056A2D0(v42);
        }
      }
    }
  }
}

id sub_10056AA58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingVideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingVideoView()
{
  result = qword_10095D618;
  if (!qword_10095D618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10056AB60()
{
  sub_100276FE0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10056AC40(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong);
}

uint64_t (*sub_10056ACB0(uint64_t **a1))()
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
  v2[4] = sub_10056A5B8(v2);
  return sub_10001D41C;
}

uint64_t sub_10056AD20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10056AD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10056ADE0(uint64_t *a1))()
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
  return sub_100019A4C;
}

uint64_t sub_10056AF54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10056AF9C()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = 0;
  v1 = v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_artworkLayoutWithMetrics) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_pageGrid;
  v3 = sub_10076C38C();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10056B108(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = sub_10076F50C();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10000A5D4(&unk_100958FE0);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_10000A5D4(&unk_1009428E0);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076FD4C();
  v54 = sub_10000A61C(v12, qword_1009A2600);
  v13 = sub_10000A5D4(&unk_100942A60);
  v14 = *(*(sub_10076F33C() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_1007844F0;
  sub_10076F27C();
  v38 = sub_10075F71C();
  v56 = v38;
  v55[0] = a2;

  sub_10076F32C();
  sub_1000258C0(v55);
  sub_10076F27C();
  v15 = sub_10076FBBC();
  v56 = v15;
  v16 = sub_10000DB7C(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  sub_10076F32C();
  sub_1000258C0(v55);
  v51 = a2;
  sub_10076F27C();
  v56 = sub_100016F40(0, &qword_10095D668);
  v55[0] = v52;
  v17 = v52;
  sub_10076F32C();
  sub_1000258C0(v55);
  sub_10076FBDC();

  if ([v17 responseStatusCode] - 200 > 0x63)
  {
    *(swift_allocObject() + 16) = xmmword_100788B20;
    sub_10076F27C();
    v56 = v38;
    v55[0] = v51;

    sub_10076F32C();
    sub_1000258C0(v55);
    sub_10076F27C();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    sub_10076F32C();
    sub_1000258C0(v55);
    sub_10076FBEC();

    v30 = sub_10075F6DC();
    if (v30)
    {
      v31 = v30;
      sub_10076F64C();
      v32 = v44;
      v33 = v47;
      sub_10076FC1C();
      v56 = sub_10076B90C();
      v57 = sub_10056C2DC(&qword_10095D660, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_10076F6CC();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_10000CD74(v55);
    }

    sub_10056C330();
    swift_allocError();
    sub_10076FCAC();
  }

  else
  {
    v18 = sub_10075F6EC();
    if (v18)
    {
      v19 = v18;
      sub_10076F64C();
      v20 = v44;
      v21 = v47;
      sub_10076FC1C();
      v56 = sub_10076B90C();
      v57 = sub_10056C2DC(&qword_10095D660, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_10076F6CC();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_10000CD74(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    sub_10076FCBC();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_10056B8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_10000A5D4(&unk_100958FE0);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_10000A5D4(&unk_1009428E0);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v11 = sub_10076FD4C();
  v27 = sub_10000A61C(v11, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F27C();
  v31 = sub_10075F71C();
  v30[0] = a2;

  sub_10076F32C();
  sub_1000258C0(v30);
  sub_10076F27C();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_10000DB7C(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_10076F32C();
  sub_1000258C0(v30);
  sub_10076FBEC();

  v15 = sub_10075F6DC();
  if (v15)
  {
    v16 = v15;
    sub_10076F64C();
    sub_10076FC1C();
    v31 = sub_10076B90C();
    v32 = sub_10056C2DC(&qword_10095D660, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    sub_10076F6CC();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_10000CD74(v30);
  }

  return sub_10076FCAC();
}

uint64_t sub_10056BD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076FBBC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v31 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v26 - v8;
  sub_10000A5D4(&qword_100942C70);
  v32 = sub_10076FCEC();
  sub_100016F40(0, &unk_10095D650);
  sub_10076F64C();
  sub_10076FC1C();
  v10 = v33[0];
  v29 = v4;
  v30 = v9;
  sub_10076FC1C();
  sub_100016F40(0, &qword_100942C80);
  sub_10076FC1C();
  v11 = v33[0];
  sub_10076148C();
  sub_10076FC1C();
  v12 = v33[0];
  sub_10000A5D4(&qword_1009576F0);
  sub_10076FC1C();
  v13 = v33[0];
  if (sub_10075F6FC())
  {
    swift_unknownObjectRetain();
  }

  v26[2] = v13;
  v27 = v11;
  v14 = v30;
  v28 = v12;
  v26[1] = sub_10075F70C();
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
  v23 = sub_100016F40(0, &qword_1009471F0);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v24 = sub_10077068C();
  v33[3] = v23;
  v33[4] = &protocol witness table for OS_dispatch_queue;
  v33[0] = v24;
  sub_10076FC6C();
  swift_unknownObjectRelease();

  (*(v5 + 8))(v14, v16);
  sub_10000CD74(v33);
  return v21;
}

uint64_t sub_10056C0EC()
{
  v1 = sub_10076FBBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10056C1DC(id *a1)
{
  v3 = *(sub_10076FBBC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  return sub_10056B108(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_10056C288()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10056C2DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10056C330()
{
  result = qword_10095D670;
  if (!qword_10095D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D670);
  }

  return result;
}

unint64_t sub_10056C398()
{
  result = qword_10095D678;
  if (!qword_10095D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095D678);
  }

  return result;
}

void sub_10056C530(void *a1)
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
      v14 = &v2[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_originRect];
      if (v2[OBJC_IVAR____TtC20ProductPageExtension31TodayTransitionPresentAnimation_originRect + 32])
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
      *(v21 + 16) = sub_1004FD078;
      *(v21 + 24) = v20;
      v43 = sub_1000349FC;
      v44 = v21;
      aBlock = _NSConcreteStackBlock;
      v40 = 1107296256;
      v41 = sub_1001C5148;
      v42 = &unk_10089A1A0;
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

        LOBYTE(v25) = sub_1007706EC();
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

        LOBYTE(v28) = sub_1007706EC();
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
        v43 = sub_10056CFF4;
        v44 = v31;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_10009AEDC;
        v42 = &unk_10089A1F0;
        v32 = _Block_copy(&aBlock);
        v33 = v23;
        v34 = v2;

        v35 = swift_allocObject();
        *(v35 + 16) = a1;
        *(v35 + 24) = v34;
        v43 = sub_10056D104;
        v44 = v35;
        aBlock = _NSConcreteStackBlock;
        v40 = 1107296256;
        v41 = sub_1000513F0;
        v42 = &unk_10089A240;
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

void sub_10056CA7C(void *a1)
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

      LOBYTE(v16) = sub_1007706EC();
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

      LOBYTE(v19) = sub_1007706EC();
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
      v35 = sub_10056CF04;
      v36 = v23;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_10009AEDC;
      v34 = &unk_10089A0D8;
      v24 = _Block_copy(&aBlock);
      v25 = v2;
      v26 = v7;

      v27 = swift_allocObject();
      *(v27 + 16) = a1;
      *(v27 + 24) = v25;
      v35 = sub_10056CF68;
      v36 = v27;
      aBlock = _NSConcreteStackBlock;
      v32 = 1107296256;
      v33 = sub_1000513F0;
      v34 = &unk_10089A128;
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