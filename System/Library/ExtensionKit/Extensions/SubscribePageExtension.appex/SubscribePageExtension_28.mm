void sub_10031AF08(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  if (a3)
  {

    swift_dynamicCastClass();
  }

  else
  {
    v61 = v15;
    v62 = v14;
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v19 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_10006644C(v17, v4 + v19, &unk_100926C40);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_100016B4C(v4 + v19, v12, &unk_100926C40);
    v21 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_10006644C(v12, v20 + v21, &unk_100926C40);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_1005681B0(v25);
    *(v20 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory) = v25;
    sub_1007217A8();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_1005F3E54(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_1004FEB20(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:sub_1007535E4()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_1003165E4(v32);
      v33 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
      sub_100567C10(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_100016B4C(v4 + v36, v61, &unk_100926C40);
          v38 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_1004FE890(v40, 0, v37, v39);

          sub_10000C8CC(v37, &unk_100926C40);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_100016B4C(v4 + v43, v62, &unk_100926C40);
      v45 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_100720AF4(v47, 0, v44, v46);

      sub_10000C8CC(v44, &unk_100926C40);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*((swift_isaMask & *v4) + 0x278))();
      [v4 setNeedsLayout];
    }
  }
}

uint64_t sub_10031B600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v4 = sub_10074F344();
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074F164();
  __chkstk_darwin(v7 - 8);
  v80 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074F3A4();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_1009295C8);
  __chkstk_darwin(v11 - 8);
  v75 = &v59 - v12;
  v79 = sub_10074F284();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v77 = &v59 - v15;
  v74 = sub_100754724();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10074A174();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074DAE4();
  v68 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_10074F704();
  v85 = *(v24 - 8);
  v86 = v24;
  __chkstk_darwin(v24);
  v83 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v59 - v27;
  sub_10074FBB4();
  sub_10031E474(&qword_100926C60, &type metadata accessor for TodayCard);
  result = sub_1007468B4();
  v30 = v90;
  if (v90)
  {
    v89 = sub_10074FB64();
    sub_100745204();
    sub_10000C518(&qword_1009295D0);
    if (swift_dynamicCast())
    {
      v62 = v18;
      v65 = v6;
      v67 = a2;
      sub_100032CCC(v87, &v90);
      type metadata accessor for TodayCardGridTracker();
      sub_100752764();
      sub_100752D34();
      v66 = *&v87[0];
      v31 = sub_1001217C4();
      v32 = _swiftEmptyArrayStorage;
      *&v87[0] = _swiftEmptyArrayStorage;
      v84 = v30;
      v33 = sub_10074FA64();
      v64 = v9;
      LODWORD(v63) = v31;
      if (v33)
      {
        swift_getKeyPath();
        sub_100746914();

        swift_getKeyPath();
        sub_100746914();

        v34 = v89;
        sub_100039770(v31, v28, v89);
        sub_1006E88C4(v31);
        sub_10074F374();

        (*(v85 + 8))(v28, v86);
        sub_100753284();
        if (*((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();

        v32 = *&v87[0];
      }

      sub_10000C888(&v90, v91);
      swift_getKeyPath();
      sub_100746914();

      v35 = v89;
      v36 = sub_10074B8D4();

      if (v36)
      {
        sub_10000C888(&v90, v91);
        if (sub_10074B8C4())
        {
          swift_getKeyPath();
          v37 = v83;
          sub_100746914();

          swift_getKeyPath();
          sub_100746914();

          v60 = v89;
          v38 = sub_100753824();
          v39 = v63;
          v61 = v38;
          sub_100039770(v63, v37, v38);
          sub_1006E88C4(v39);
          v40 = v68;
          v41 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v39 != 6)
          {
            v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v39 != 4)
          {
            v41 = v42;
          }

          v43 = v62;
          (*(v68 + 104))(v20, *v41, v62);
          (*(v40 + 32))(v23, v20, v43);
          v44 = sub_1007532B4();

          (*(v40 + 8))(v23, v43);
          sub_10074DAC4();
          if (v45)
          {
            sub_10074F2A4();
          }

          v46 = v79;
          v47 = v78;
          v48 = v75;
          v49 = v69;
          sub_10074DAD4();
          sub_10074A144();
          sub_100753BA4();
          sub_100753B64();
          v50 = v73;
          v51 = v71;
          v52 = v74;
          (*(v73 + 104))(v71, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v74);
          sub_100753B84();
          (*(v50 + 8))(v51, v52);
          (*(v70 + 8))(v49, v72);
          sub_10074DAB4();
          v53 = *(v47 + 48);
          v54 = v53(v48, 1, v46);
          v63 = v44;
          if (v54 == 1)
          {
            v55 = v77;
            sub_10074F294();
            if (v53(v48, 1, v46) != 1)
            {
              sub_10000C8CC(v48, &qword_1009295C8);
            }
          }

          else
          {
            v55 = v77;
            (*(v47 + 32))(v77, v48, v46);
          }

          v56 = v81;
          sub_10074F174();
          v79 = v36;
          sub_10074F3C4();
          v57 = v61;
          [v61 displayScale];
          (*(v47 + 16))(v76, v55, v46);
          sub_10074F384();
          sub_10074F394();
          sub_100748014();
          swift_allocObject();
          sub_100747FF4();

          (*(v82 + 8))(v56, v64);
          (*(v47 + 8))(v55, v46);
          (*(v85 + 8))(v83, v86);
          sub_100753284();
          if (*((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_100753304();
          }

          sub_100753344();

          v32 = *&v87[0];
        }

        else
        {
        }
      }

      v58._rawValue = v32;
      sub_100744224(v58);

      return sub_10000C620(&v90);
    }

    else
    {

      v88 = 0;
      memset(v87, 0, sizeof(v87));
      return sub_10000C8CC(v87, &qword_1009295D8);
    }
  }

  return result;
}

id sub_10031C2B0()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_10074F704();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell();
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_100316BB4();
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_100920850 != -1)
    {
      swift_once();
    }

    sub_100230B00(v10, &xmmword_10097F3D0, 1);
    sub_100753804();
    sub_1007535D4();
    sub_100753804();
    sub_1007535D4();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = sub_100753804();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100016B4C(&v1[v15], v4, &unk_100926C40);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10000C8CC(v4, &unk_100926C40);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = sub_1007537C4(v41, v42).super.isa;

          sub_1000392FC(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1007535D4();
  [v18 setFrame:{sub_10010FD98(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v29)
  {
    v30 = v29;
    [v1 bounds];
    MinX = CGRectGetMinX(v44);
    [v18 frame];
    MaxY = CGRectGetMaxY(v45);
    [v18 frame];
    Width = CGRectGetWidth(v46);
    [v1 bounds];
    Height = CGRectGetHeight(v47);
    [v18 frame];
    [v30 setFrame:{MinX, MaxY, Width, Height - CGRectGetHeight(v48)}];
  }

  v35 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_10031C834()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryCardCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  sub_10072082C();
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v3)
  {
    [*(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) setImage:0];
  }

  return sub_100568064();
}

void sub_10031C970()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_1005681B0(v4);
  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_originalSizeCategory) = v4;
  sub_1007217A8();
}

uint64_t sub_10031CA28(void *a1)
{
  sub_10000C888(a1, a1[3]);
  v2 = sub_1007514C4();
  if (sub_100753944())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_10007271C(a1, a1[3]);
  return sub_1007514D4();
}

void (*sub_10031CAF8(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_10031CB6C;
}

void sub_10031CB6C(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_10020ED5C(Strong);

    Strong = v4;
  }

  else
  {
    sub_10020ED5C(Strong);
  }
}

void sub_10031CC14()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1006FF0CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton] = v7;
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

void sub_10031CD1C()
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

void sub_10031D000()
{
  sub_1005F48BC();
  v1 = [v0 contentView];
  sub_1006787A8();
  if (v2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_10031D11C()
{
  sub_10000C518(&unk_1009259C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100016C60(0, &qword_100922300);
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_1004A0110(v9);
  return v1;
}

void sub_10031D2E8()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_1000164A8(v2);
  v3 = (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getObjectType();
      sub_10074D394();
    }
  }
}

void sub_10031D440()
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
  v4 = (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_getObjectType();
      sub_10074D384();
    }
  }
}

void sub_10031D5B0()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_muteButton);
}

id sub_10031D630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell()
{
  result = qword_100932FA0;
  if (!qword_100932FA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10031D7C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10020ED5C(Strong);
}

uint64_t (*sub_10031D854(uint64_t **a1))()
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
  v2[4] = sub_10031CAF8(v2);
  return sub_1000181A8;
}

uint64_t sub_10031D8EC(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10031D95C(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_10031D9A8()
{
  swift_weakAssign();
}

uint64_t sub_10031DA68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10031DABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10031DB28(uint64_t *a1))()
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

uint64_t sub_10031DBC4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016C60(0, &qword_100922300);
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

void sub_10031DC6C(uint64_t a1)
{
  if (a1)
  {
    if ((*((swift_isaMask & *v1) + 0x330))())
    {
      v2 = [v1 backgroundView];
      if (v2)
      {
        v3 = v2;
        [v2 setBackgroundColor:0];
      }
    }
  }
}

uint64_t sub_10031DD68(uint64_t a1)
{
  result = sub_10031E474(&qword_100932FB8, type metadata accessor for StoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

id sub_10031DE50(void *a1)
{
  sub_100316BB4();

  return [a1 setNeedsLayout];
}

id sub_10031DE90()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005F6EC0();
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC22SubscribePageExtension18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_10020E198();
  if (v1[v7])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = type metadata accessor for TodayCardInfoLayerView();
  v21.receiver = v6;
  v21.super_class = v15;
  objc_msgSendSuper2(&v21, "_setContinuousCornerRadius:", v14);
  sub_10056880C();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10072118C(v5, v16);
  (*(v3 + 8))(v5, v2);
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v17)
  {
    v18 = v17;
    [v18 _setContinuousCornerRadius:v16];
    v19 = [v18 layer];
    [v19 setMaskedCorners:sub_1007535E4()];
  }

  sub_100316BB4();
  sub_1005F4144();
  sub_10012A1C4();
  return [v1 setNeedsLayout];
}

void sub_10031E18C()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_labelsView) + qword_1009441B8) = v5;
    sub_100679A78();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC22SubscribePageExtension18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_100721640();
}

uint64_t sub_10031E2CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10031E304()
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

uint64_t sub_10031E474(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10031E4CC@<X0>(uint64_t *a1@<X8>)
{
  v19[0] = sub_10074E984();
  v2 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_10092E450);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v12 = *(v6 + 8);
  v12(v11, v5);
  if (v19[1] && (v13 = sub_100743A34(), result = , (v13 & 1) != 0))
  {
    a1[3] = &type metadata for CGFloat;
    a1[4] = &protocol witness table for CGFloat;
    *a1 = 0x4040000000000000;
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v12(v8, v5);
    v15 = v19[0];
    if (*(v2 + 88))(v4, v19[0]) == enum case for Shelf.ContentType.ribbonBar(_:) && (sub_100747B74())
    {
      if (qword_100921728 != -1)
      {
        swift_once();
      }

      v16 = sub_100750B04();
      v17 = sub_10000D0FC(v16, qword_1009820F8);
      a1[3] = v16;
      a1[4] = &protocol witness table for StaticDimension;
      v18 = sub_10000D134(a1);
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

uint64_t sub_10031E808@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v132 = a2;
  v121 = sub_100750304();
  v119 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = (&v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_10000C518(&qword_100923580);
  __chkstk_darwin(v126);
  v130 = &v116 - v4;
  v5 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v5 - 8);
  v127 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v131 = &v116 - v8;
  v9 = sub_10074E984();
  v128 = *(v9 - 8);
  v129 = v9;
  __chkstk_darwin(v9);
  v134 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_10093D6E0);
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
  v118 = sub_100754724();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v116 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000C518(&unk_10092E450);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v122 = &v116 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v116 - v31;
  __chkstk_darwin(v33);
  v35 = &v116 - v34;
  v135 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v36 = *(v28 + 8);
  v36(v35, v27);
  v133 = v36;
  if (v136)
  {
    v37 = sub_100743A34();

    if (v37)
    {
      sub_100747C04();
      swift_getKeyPath();
      sub_1007525B4();

      v133(v32, v27);
      v38 = v137;
      if (v137)
      {
      }

      v39 = v118;
      v40 = v117;
      v41 = v116;
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v42 = sub_100750B04();
      sub_10000D0FC(v42, qword_100982098);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();
      v44 = v43;
      swift_unknownObjectRelease();
      v45 = *(v40 + 8);
      v45(v41, v39);
      if (qword_100921710 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v42, qword_1009820B0);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();
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

  sub_100747BB4();
  sub_10000C8CC(v22, &unk_10093D6E0);
  sub_100028CD0(v19, v25);
  v51 = *(v28 + 48);
  if (v51(v25, 1, v27) == 1)
  {
    sub_10000C8CC(v25, &unk_10093D6E0);
    v52 = v130;
LABEL_19:
    v59 = v122;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v60 = v59;
    v61 = v133;
    v133(v60, v27);
    v63 = v123;
    v62 = v124;
    sub_100747BB4();
    sub_10000C8CC(v63, &unk_10093D6E0);
    v64 = v125;
    sub_100028CD0(v62, v125);
    if (v51(v64, 1, v27) == 1)
    {
      sub_10000C8CC(v64, &unk_10093D6E0);
      v65 = 1;
      v66 = v131;
    }

    else
    {
      swift_getKeyPath();
      v66 = v131;
      sub_1007525B4();

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
    sub_100028D40(v66, v69 + v71);
    if ((*(v67 + 48))(v69 + v71, 1, v70) == 1)
    {
      v72 = enum case for Shelf.ContentType.ribbonBar(_:);
      v73 = (*(v67 + 88))(v69, v70);
    }

    else
    {
      sub_100028D40(v69 + v71, v68);
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
        v79 = sub_100750B04();
        v80 = v132;
        v132[3] = v79;
        v80[4] = &protocol witness table for StaticDimension;
        sub_10000D134(v80);
        v138 = v78;
        v139 = &protocol witness table for FontSource;
        v81 = sub_10000D134(&v136);
        (*(v77 + 16))(v81, v76, v78);
        v82 = UIFontTextStyleBody;
        sub_100750B14();
        (*(v77 + 8))(v76, v78);
        sub_10000C8CC(v66, &unk_100933370);
        v83 = *(v67 + 8);
        v83(v134, v70);
        sub_10000C8CC(v69 + v71, &unk_100933370);
        return (v83)(v69, v70);
      }

      (*(v67 + 8))(v68, v70);
      v73 = v74(v69, v70);
    }

    if (v73 == v72)
    {
      if ((sub_100747B74() & 1) == 0)
      {
        v93 = sub_100747B94();
        [v93 userInterfaceIdiom];

        v94 = v120;
        *v120 = UIFontTextStyleBody;
        v95 = v119 + 104;
        v96 = v121;
        (*(v119 + 104))(v94, enum case for FontSource.textStyle(_:), v121);
        v97 = sub_100750B04();
        v98 = v132;
        v132[3] = v97;
        v98[4] = &protocol witness table for StaticDimension;
        v135 = sub_10000D134(v98);
        v99 = (v95 - 88);
        v100 = v67;
        v101 = (v95 - 96);
        v102 = (v100 + 8);
        v138 = v96;
        v139 = &protocol witness table for FontSource;
        v103 = sub_10000D134(&v136);
        (*v99)(v103, v94, v96);
        v104 = UIFontTextStyleBody;
        sub_100750B14();
        (*v101)(v94, v96);
        sub_10000C8CC(v131, &unk_100933370);
        (*v102)(v134, v70);
LABEL_44:
        v110 = v69 + v71;
        v111 = &unk_100933370;
        return sub_10000C8CC(v110, v111);
      }

      v84 = v120;
      *v120 = UIFontTextStyleBody;
      v85 = v119;
      v86 = v121;
      (*(v119 + 104))(v84, enum case for FontSource.textStyle(_:), v121);
      v87 = sub_100750B04();
      v88 = v132;
      v132[3] = v87;
      v88[4] = &protocol witness table for StaticDimension;
      sub_10000D134(v88);
      v138 = v86;
      v139 = &protocol witness table for FontSource;
      v89 = sub_10000D134(&v136);
      (*(v85 + 16))(v89, v84, v86);
      v90 = UIFontTextStyleBody;
      sub_100750B14();
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
          v105 = sub_100747B94();
          v106 = sub_1007537D4();

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
            if (qword_100921738 != -1)
            {
              swift_once();
            }

            v112 = sub_100750B04();
            v113 = sub_10000D0FC(v112, qword_100982128);
            v114 = v132;
            v132[3] = v112;
            v114[4] = &protocol witness table for StaticDimension;
            v115 = sub_10000D134(v114);
            (*(*(v112 - 8) + 16))(v115, v113, v112);
            sub_10000C8CC(v66, &unk_100933370);
            (*(v67 + 8))(v134, v70);
            v111 = &qword_100923580;
            v110 = v69;
            return sub_10000C8CC(v110, v111);
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
    sub_10000C8CC(v66, &unk_100933370);
    (*(v67 + 8))(v134, v70);
    goto LABEL_44;
  }

  swift_getKeyPath();
  sub_1007525B4();

  v53 = v136;
  v133(v25, v27);
  v52 = v130;
  if (!v53)
  {
    goto LABEL_19;
  }

  v54 = sub_100743A34();

  if ((v54 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  v55 = sub_100750B04();
  v56 = sub_10000D0FC(v55, qword_100982098);
  v57 = v132;
  v132[3] = v55;
  v57[4] = &protocol witness table for StaticDimension;
  v58 = sub_10000D134(v57);
  return (*(*(v55 - 8) + 16))(v58, v56, v55);
}

uint64_t sub_10031F808@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v53 = a2;
  v3 = sub_10074F704();
  v46 = *(v3 - 8);
  v47 = v3;
  __chkstk_darwin(v3);
  v45 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10000C518(&qword_100923580) - 8;
  __chkstk_darwin(v52);
  v51 = &v45 - v5;
  v6 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v6 - 8);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_10000C518(&unk_10092E450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_10074E984();
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v18 = *(v12 + 8);
  v18(v14, v11);
  v49 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v19 = v14;
  v20 = v17;
  v21 = v51;
  v18(v19, v11);
  v22 = v10;
  v23 = v15;
  v24 = v50;
  v25 = *(v52 + 56);
  (*(v50 + 16))(v21, v20, v23);
  sub_100028D40(v22, &v21[v25]);
  v26 = *(v24 + 88);
  v27 = v26(v21, v23);
  v28 = enum case for Shelf.ContentType.categoryBrick(_:);
  if (v27 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    sub_10000C8CC(&v21[v25], &unk_100933370);
    goto LABEL_3;
  }

  if ((*(v24 + 48))(&v21[v25], 1, v23) == 1)
  {
LABEL_14:
    if (v26(v21, v23) == enum case for Shelf.ContentType.action(_:))
    {
      v38 = v45;
      sub_100747B84();
      sub_10074F5B4();
      v40 = v39;
      (*(v46 + 8))(v38, v47);
      v41 = v53;
      *(v53 + 3) = &type metadata for CGFloat;
      *(v41 + 4) = &protocol witness table for CGFloat;
      *v41 = v40 * 0.5;
      sub_10000C8CC(v22, &unk_100933370);
      (*(v24 + 8))(v20, v23);
      v42 = &v21[v25];
      v43 = &unk_100933370;
    }

    else
    {
      v44 = v53;
      *(v53 + 3) = &type metadata for Double;
      *(v44 + 4) = &protocol witness table for Double;
      *v44 = 0.0;
      sub_10000C8CC(v22, &unk_100933370);
      (*(v24 + 8))(v20, v23);
      v43 = &qword_100923580;
      v42 = v21;
    }

    return sub_10000C8CC(v42, v43);
  }

  v35 = v48;
  sub_100028D40(&v21[v25], v48);
  if (v26(v35, v23) != v28)
  {
    (*(v24 + 8))(v35, v23);
    goto LABEL_14;
  }

  sub_10000C8CC(&v21[v25], &unk_100933370);
  (*(v24 + 8))(v21, v23);
LABEL_3:
  v29 = sub_10074F3F4();
  v54[3] = v29;
  v54[4] = sub_1001FC0C4();
  v30 = sub_10000D134(v54);
  (*(*(v29 - 8) + 104))(v30, enum case for Feature.shelf_header(_:), v29);
  LOBYTE(v29) = sub_10074FC74();
  sub_10000C620(v54);
  if ((v29 & 1) != 0 && (sub_100747B74() & 1) == 0)
  {
    v36 = v53;
    *(v53 + 3) = &type metadata for Double;
    *(v36 + 4) = &protocol witness table for Double;
    *v36 = 0.0;
  }

  else
  {
    if (qword_100921748 != -1)
    {
      swift_once();
    }

    v31 = sub_100750B04();
    v32 = sub_10000D0FC(v31, qword_100982158);
    v33 = v53;
    *(v53 + 3) = v31;
    v33[4] = &protocol witness table for StaticDimension;
    v34 = sub_10000D134(v33);
    (*(*(v31 - 8) + 16))(v34, v32, v31);
  }

  sub_10000C8CC(v22, &unk_100933370);
  return (*(v24 + 8))(v20, v23);
}

id sub_10031FF0C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  LODWORD(v5) = a2;
  v53 = a1;
  swift_getObjectType();
  v6 = sub_10000C518(&unk_100923600);
  __chkstk_darwin(v6 - 8);
  v54 = &v42 - v7;
  v8 = sub_100750E94();
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  __chkstk_darwin(v14);
  v16 = &v42 - v15;
  __chkstk_darwin(v17);
  v18 = sub_100750BD4();
  v49 = *(v18 - 8);
  v50 = v18;
  __chkstk_darwin(v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_titleLabel];
  sub_1007477B4();
  v22 = v21;
  v55[5] = *&v3[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  sub_100750434();
  v23 = [v3 traitCollection];
  if (qword_10091FDE8 != -1)
  {
    swift_once();
  }

  if (sub_100753804() & 1) != 0 || (sub_1007537D4())
  {

    sub_10000C620(v55);
LABEL_6:
    v24._countAndFlagsBits = 0x525F4F545F504154;
    v24._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v46 = v20;
  v47 = v5;
  v43 = "ion";
  v56._object = 0x8000000100765D00;
  v56._countAndFlagsBits = 0xD000000000000016;
  v58._countAndFlagsBits = 0;
  v58._object = 0xE000000000000000;
  v32 = sub_1007458B4(v56, v58);
  v44 = v33;
  v45 = v32;
  sub_100750E84();
  if (qword_100921138 != -1)
  {
    swift_once();
  }

  v34 = sub_100750534();
  sub_10000D0FC(v34, qword_1009810E0);
  sub_100750E54();
  v35 = *(v48 + 8);
  v35(v10, v8);
  sub_100750E74();
  v35(v13, v8);
  sub_100750E64();
  v35(v16, v8);
  sub_100750BB4();
  v5 = v46;
  sub_100750BF4();
  sub_100750BC4();
  v37 = v36;
  sub_10000C888(v55, v55[3]);
  sub_100751254();
  v39 = v38;
  sub_10000C888(&qword_10097C968, qword_10097C980);
  sub_100750574();
  v41 = v40;

  (*(v49 + 8))(v5, v50);
  sub_10000C620(v55);
  LOBYTE(v5) = v47;
  if (v22 < v39 + v37 + v41)
  {
    goto LABEL_6;
  }

  v24._object = (v43 | 0x8000000000000000);
  v24._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  sub_1007458B4(v24, v57);
  v25 = v54;
  v26 = sub_100753064();

  [v52 setText:v26];

  v27 = sub_10074FA44();
  if (v27)
  {
    v55[0] = v27;
    sub_100742FE4();
    sub_100752764();
    sub_1003207C8();
    sub_100752684();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = sub_10000C518(&qword_1009235F8);
  (*(*(v29 - 8) + 56))(v25, v28, 1, v29);
  v30 = OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_100320758(v25, &v4[v30]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC22SubscribePageExtension20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

double sub_100320524(void *a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_1009202D8 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_1009292A0;
  v18.value._rawValue = 0;
  isa = sub_1007537C4(v18, v7).super.isa;
  sub_100321184();
  v10 = sub_100753A64();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = sub_100743AE4();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

uint64_t sub_100320758(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923600);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003207C8()
{
  result = qword_100932FC8;
  if (!qword_100932FC8)
  {
    sub_100742FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100932FC8);
  }

  return result;
}

double sub_100320820(void *a1, double a2)
{
  v4 = sub_100750E94();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v61 - v9;
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v70 = &v61 - v14;
  v15 = sub_100750BD4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v73 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v64 = &v61 - v19;
  v20 = sub_100750F34();
  swift_allocObject();
  v72 = sub_100750EF4();
  v74[0] = v72;
  v66 = v20;
  sub_100750434();
  v67 = a1;
  v21 = [a1 traitCollection];
  if (qword_10091FDE8 != -1)
  {
    swift_once();
  }

  v22 = sub_100753804();
  v23 = &qword_100921000;
  v65 = v7;
  v68 = v15;
  v71 = v16;
  if (v22 & 1) != 0 || (v23 = &qword_100921000, (sub_1007537D4()))
  {

    sub_10000C620(v75);
LABEL_6:
    v24 = v5;
    v25._countAndFlagsBits = 0x525F4F545F504154;
    v25._object = 0xEB00000000455441;
    goto LABEL_7;
  }

  v63 = "ion";
  v80._object = 0x8000000100765D00;
  v80._countAndFlagsBits = 0xD000000000000016;
  v84._countAndFlagsBits = 0;
  v84._object = 0xE000000000000000;
  sub_1007458B4(v80, v84);
  sub_100750E84();
  if (qword_100921138 != -1)
  {
    swift_once();
  }

  v37 = sub_100750534();
  sub_10000D0FC(v37, qword_1009810E0);
  v38 = v69;
  sub_100750E54();
  v39 = *(v5 + 8);
  v39(v65, v4);
  sub_100750E74();
  v39(v38, v4);
  sub_100750E64();
  v39(v12, v4);
  v7 = v65;
  sub_100750BB4();
  v40 = v64;
  sub_100750BF4();
  sub_100750BC4();
  v42 = v41;
  sub_10000C888(v75, v76);
  sub_100751254();
  v44 = v43;
  sub_10000C888(&qword_10097C968, qword_10097C980);
  sub_100750574();
  v46 = v45;

  (*(v71 + 8))(v40, v68);
  sub_10000C620(v75);
  v23 = &qword_100921000;
  if (v44 + v42 + v46 > a2)
  {
    goto LABEL_6;
  }

  v24 = v5;
  v25._object = (v63 | 0x8000000000000000);
  v25._countAndFlagsBits = 0xD000000000000016;
LABEL_7:
  v82._countAndFlagsBits = 0;
  v82._object = 0xE000000000000000;
  v79._countAndFlagsBits = sub_1007458B4(v25, v82);
  v26 = v12;
  v83._countAndFlagsBits = 0;
  v83._object = 0xE000000000000000;
  sub_1007458B4(v79, v83);

  sub_100750E84();
  if (v23[39] != -1)
  {
    swift_once();
  }

  v27 = sub_100750534();
  sub_10000D0FC(v27, qword_1009810E0);
  v28 = v69;
  sub_100750E54();
  v29 = v7;
  v30 = *(v24 + 8);
  v30(v29, v4);
  v31 = 1;
  sub_100750E74();
  v30(v28, v4);
  sub_100750E64();
  v62 = v26;
  v63 = v4;
  v30(v26, v4);
  sub_100750BB4();
  v32 = v73;
  sub_100750BF4();
  sub_10002C478(&qword_10097C968, v75);
  v33 = v68;
  v77[3] = v68;
  v77[4] = &protocol witness table for LabelPlaceholder;
  v34 = sub_10000D134(v77);
  v35 = v71;
  (*(v71 + 16))(v34, v32, v33);
  v74[0] = v72;
  sub_100750434();
  v36 = [v67 traitCollection];
  if ((sub_100753804() & 1) == 0)
  {
    if (sub_1007537D4())
    {
      v31 = 1;
      v35 = v71;
    }

    else
    {
      v81._object = 0x8000000100765D00;
      v81._countAndFlagsBits = 0xD000000000000016;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      sub_1007458B4(v81, v85);
      v47 = v65;
      sub_100750E84();
      v48 = v69;
      sub_100750E54();
      v49 = v63;
      v30(v47, v63);
      v50 = v62;
      sub_100750E74();
      v30(v48, v49);
      sub_100750E64();
      v30(v50, v49);
      sub_100750BB4();
      v51 = v64;
      sub_100750BF4();
      sub_100750BC4();
      v53 = v52;
      sub_10000C888(v78, v78[3]);
      sub_100751254();
      v55 = v54;
      sub_10000C888(v75, v76);
      sub_100750574();
      v57 = v56;
      v35 = v71;
      (*(v71 + 8))(v51, v33);
      v31 = v55 + v53 + v57 > a2;
    }
  }

  sub_1003EBCE8(v31, v74);
  sub_10000C888(v74, v74[3]);
  sub_100751254();
  v59 = v58;

  (*(v35 + 8))(v73, v33);
  sub_10000C620(v74);
  sub_10002C528(v75);
  return v59;
}

unint64_t sub_100321184()
{
  result = qword_1009448C0;
  if (!qword_1009448C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009448C0);
  }

  return result;
}

id sub_1003211D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_100749A94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  sub_10074ECB4();
  sub_100745BD4();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView];
  sub_100749A44();
  sub_100321B68(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v43 = a4;
  v17 = sub_100754324();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((sub_10074EC84() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_100016C60(0, &qword_100923500);
    v18 = sub_100753DD4();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_100321BB0(v19);
  v21 = type metadata accessor for Accessory();
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_100644C38(v10, v41);
  sub_10000C8CC(v10, &qword_10093FDB0);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1 || (sub_100749A54(), v26 = sub_100754324(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = sub_10074ECC4();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_1006459BC();
  [v36 setHidden:v35];

LABEL_18:
  sub_100749A54();
  v37 = sub_100754324();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

void sub_1003216C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton());

    sub_100644FDC([v6 init]);
    v7 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10074F774();
      sub_10074ECB4();
      v11 = v10;

      if (v11)
      {
        v12 = sub_100753064();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v15 = *&v3[v7];
      if (v15)
      {
        v16 = swift_allocObject();
        *(v16 + 16) = a2;
        *(v16 + 24) = a1;
        v17 = &v15[qword_100934DD0];
        v18 = *&v15[qword_100934DD0];
        *v17 = sub_100321ED0;
        v17[1] = v16;

        v19 = v15;

        sub_1000164A8(v18);
      }
    }

    v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }
}

uint64_t sub_1003218C8(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000C8CC(v4, &unk_100923960);
  }

  v8 = sub_10074F774();
  sub_1003C0E00(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

void sub_100321A5C(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

uint64_t sub_100321B68(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100321BB0(void *a1)
{
  if ((sub_10074EC84() & 4) != 0)
  {
    return 1;
  }

  if ((sub_10074EC84() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 1;
}

double sub_100321C2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();
  v5 = [a4 traitCollection];
  v6 = [v5 horizontalSizeClass];

  if (v6 == 1)
  {
    [a4 pageMarginInsets];
  }

  sub_10074ECD4();

  sub_10000C518(&qword_1009253C0);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v17, *(&v18 + 1));
    v7 = sub_10074CA24();
    sub_10000C620(&v17);
  }

  else
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    sub_10000C8CC(&v17, &qword_1009253C8);
    v7 = 0;
  }

  v8 = sub_10074ECB4();
  v10 = v9;
  v11 = sub_10074ECC4();
  if (v11)
  {
  }

  v12 = sub_100321BB0(a4);
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v13 = sub_100743CB4();
  v14 = sub_10000D0FC(v13, qword_100982A80);
  v15 = sub_100647CF4(v14, a4, v8, v10, v11 != 0, v12, v7 & 1);

  return v15;
}

uint64_t sub_100321E90()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100321ED8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v5 = sub_100743CB4();
  v6 = sub_10000D0FC(v5, qword_100982A80);
  v7 = sub_1006485E8(v6, a3);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 absoluteDimension:v7];
  v12 = [v10 absoluteDimension:v9];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = v9 * a1;
  v17 = [v10 absoluteDimension:v7];
  v18 = [v10 absoluteDimension:v16];
  v19 = [v13 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = objc_opt_self();
  sub_10000C518(&unk_1009231A0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5CF0;
  *(v21 + 32) = v15;
  sub_100016C60(0, &qword_100923478);
  v22 = v15;
  isa = sub_100753294().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v19 subitems:isa];

  [v24 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_opt_self() fixedSpacing:0.0];
  [v24 setInterItemSpacing:v25];

  return v24;
}

double sub_100322210()
{
  v0 = sub_10000C518(&qword_100933020);
  v54 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = v37 - v1;
  v3 = sub_10074F704();
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v46 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074DC24();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v45 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074DC44();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v50 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100750BD4();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v55 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100750E94();
  v10 = *(v44 - 8);
  __chkstk_darwin(v44);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v37 - v14;
  sub_100743EB4();
  sub_100322994(&qword_100933028, &type metadata accessor for LinkableText);
  sub_1007468B4();
  v16 = v56[0];
  if (!v56[0])
  {
    return 0.0;
  }

  v41 = v2;
  v42 = v0;
  sub_100038D38();
  if (qword_1009213D8 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  sub_10000D0FC(v17, qword_1009818C0);
  swift_getKeyPath();
  sub_100746914();

  v18 = v56[0];
  v19 = sub_100753C14();

  v37[1] = v16;
  sub_100743E94();
  v40 = v19;
  v20 = sub_100743074();

  sub_100750E84();
  sub_100750E54();
  v21 = v44;
  v38 = *(v10 + 8);
  v38(v12, v44);
  v22 = *(v10 + 16);
  v39 = v15;
  v22(v12, v15, v21);
  v37[0] = v20;
  sub_100750BB4();
  v23 = v55;
  sub_100750C14();
  if (qword_100920A60 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v5, qword_10097FCE0);
  (*(v43 + 16))(v45, v24, v5);
  v25 = v51;
  v56[3] = v51;
  v56[4] = &protocol witness table for LabelPlaceholder;
  v26 = sub_10000D134(v56);
  v27 = v49;
  (*(v49 + 16))(v26, v23, v25);
  v28 = v50;
  sub_10074DC34();
  swift_getKeyPath();
  v29 = v46;
  sub_100746914();

  sub_10074F674();
  (*(v47 + 8))(v29, v48);
  swift_getKeyPath();
  sub_100746914();

  v30 = v56[0];
  sub_100322994(&qword_100933030, &type metadata accessor for LinkableTextCollectionViewCellLayout);
  v31 = v41;
  v32 = v53;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v33 = v42;
  sub_100751254();
  v35 = v34;

  (*(v54 + 8))(v31, v33);
  (*(v52 + 8))(v28, v32);
  (*(v27 + 8))(v55, v25);
  v38(v39, v21);
  return v35;
}

uint64_t sub_100322994(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100322A28()
{
  v101 = sub_10000C518(&qword_100927FD0);
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v75 - v0;
  v94 = sub_100748604();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v95 = &v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100748624();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_100750E94();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v87 = &v75 - v5;
  v84 = sub_100744654();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_100750954();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v75 - v9;
  __chkstk_darwin(v10);
  v79 = &v75 - v11;
  v92 = sub_100750BD4();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = &v75 - v14;
  v15 = sub_100741084();
  v108 = *(v15 - 8);
  v109 = v15;
  __chkstk_darwin(v15);
  v107 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074F704();
  v105 = *(v17 - 1);
  v106 = v17;
  __chkstk_darwin(v17);
  v104 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10074EAB4();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v75 - v22;
  v24 = sub_100747C14();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&qword_100925340);
  __chkstk_darwin(v28 - 8);
  v111 = sub_10000C518(&qword_10092A048);
  v85 = *(v111 - 8);
  __chkstk_darwin(v111);
  v30 = &v75 - v29;
  sub_100744694();
  sub_100323A2C(&qword_10092A050, &type metadata accessor for ReviewSummary);
  sub_1007468B4();
  v31 = aBlock[0];
  if (!aBlock[0])
  {
    return 0.0;
  }

  sub_100746964();
  sub_100752EB4();
  sub_100746884();
  sub_100747BD4();
  (*(v25 + 8))(v27, v24);
  sub_10074EA54();
  sub_100323A2C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v32 = v103;
  v33 = sub_100754324();
  v34 = *(v102 + 8);
  v34(v20, v32);
  v34(v23, v32);
  swift_getKeyPath();
  sub_1001696DC();
  sub_100752E94();

  LODWORD(v103) = LOBYTE(aBlock[0]);
  swift_getKeyPath();
  v35 = v104;
  sub_100746914();

  sub_10074F674();
  (*(v105 + 8))(v35, v106);
  swift_getKeyPath();
  sub_100746914();

  v36 = v117;
  v37 = v107;
  sub_100744644();
  v76 = v30;
  if ((v33 ^ 1))
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_1007537E4();
  }

  v40 = sub_1002AE534(v37, v38 & 1, v36);
  (*(v108 + 8))(v37, v109);
  v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v40];
  v42 = [v40 length];
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = v36;
  *(v43 + 32) = v41;
  *(v43 + 40) = 1;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_100047814;
  *(v44 + 24) = v43;
  v115 = sub_1000B18A8;
  v116 = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  v114 = &unk_100871498;
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
  sub_100750944();
  v48 = v78;
  sub_1007508F4();
  v49 = *(v80 + 8);
  v50 = v81;
  v49(v47, v81);
  sub_100750904();
  v49(v48, v50);
  sub_100750BB4();
  v107 = v46;
  sub_100750C04();
  v51 = sub_100744684();
  v53 = v52;
  v54 = sub_100744634();
  v55 = v82;
  v108 = v31;
  sub_100744664();
  v56 = sub_1002AF1FC(v51, v53, v54, v55);

  (*(v83 + 8))(v55, v84);
  v106 = v56;
  v43 = v86;
  sub_100750E84();
  if (qword_100921190 != -1)
  {
LABEL_13:
    swift_once();
  }

  v57 = sub_100750534();
  sub_10000D0FC(v57, qword_1009811E8);
  sub_100750E54();
  (*(v88 + 8))(v43, v89);
  sub_100750BB4();
  v58 = v90;
  sub_100750C14();
  if (qword_1009207C8 != -1)
  {
    swift_once();
  }

  v59 = v94;
  v60 = sub_10000D0FC(v94, qword_10097EDD8);
  (*(v93 + 16))(v95, v60, v59);
  v61 = v92;
  v114 = v92;
  v115 = &protocol witness table for LabelPlaceholder;
  v62 = sub_10000D134(aBlock);
  v63 = v91;
  v64 = *(v91 + 16);
  v65 = v110;
  v64(v62, v110, v61);
  v112[3] = v61;
  v112[4] = &protocol witness table for LabelPlaceholder;
  v66 = sub_10000D134(v112);
  v64(v66, v58, v61);
  v67 = v96;
  sub_100748614();
  sub_100323A2C(&qword_100927FF0, &type metadata accessor for ReviewSummaryLayout);
  v68 = v99;
  v69 = v98;
  sub_100750594();
  swift_getOpaqueTypeConformance2();
  v70 = v109;
  v71 = v101;
  sub_100751254();
  v39 = v72;

  (*(v100 + 8))(v68, v71);
  (*(v97 + 8))(v67, v69);
  v73 = *(v63 + 8);
  v73(v58, v61);
  v73(v65, v61);
  (*(v85 + 8))(v76, v111);
  return v39;
}

uint64_t sub_1003239BC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100323A14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100323A2C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100323A74()
{
  v0 = sub_1007504F4();
  __chkstk_darwin(v0 - 8);
  v23[2] = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100747674();
  sub_100039C50(v6, qword_10097FA38);
  v23[1] = sub_10000D0FC(v6, qword_10097FA38);
  if (qword_100920FC0 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100980C78);
  v9 = *(v7 - 8);
  v26 = *(v9 + 16);
  v25 = v9 + 16;
  v26(v5, v8, v7);
  v10 = v3[13];
  v24 = enum case for FontSource.useCase(_:);
  v27 = v10;
  v10(v5);
  v11 = sub_100750B04();
  v40[3] = v11;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v40);
  v38 = v2;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v37);
  v13 = v3[2];
  v13(v12, v5, v2);
  sub_100750B14();
  v14 = v3[1];
  v14(v5, v2);
  if (qword_100920FC8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v7, qword_100980C90);
  v26(v5, v15, v7);
  v27(v5, v24, v2);
  v38 = v11;
  v39 = &protocol witness table for StaticDimension;
  sub_10000D134(v37);
  v35 = v2;
  v36 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v34);
  v13(v16, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  if (qword_100920FD0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000D0FC(v7, qword_100980CA8);
  v26(v5, v17, v7);
  v18 = v27;
  v27(v5, v24, v2);
  v35 = v11;
  v36 = &protocol witness table for StaticDimension;
  sub_10000D134(v34);
  v32 = v2;
  v33 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v31);
  v13(v19, v5, v2);
  sub_100750B14();
  v14(v5, v2);
  *v5 = UIFontTextStyleBody;
  v18(v5, enum case for FontSource.textStyle(_:), v2);
  v32 = v11;
  v33 = &protocol witness table for StaticDimension;
  sub_10000D134(v31);
  v29 = v2;
  v30 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v28);
  v13(v20, v5, v2);
  v21 = UIFontTextStyleBody;
  sub_100750B14();
  v14(v5, v2);
  sub_100750504();
  v30 = &protocol witness table for Double;
  v29 = &type metadata for Double;
  v28[0] = 0;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;
  return sub_100747644();
}

uint64_t sub_100324010()
{
  v0 = sub_100751344();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100751374();
  sub_100039C50(v4, qword_10097FA50);
  sub_10000D0FC(v4, qword_10097FA50);
  (*(v1 + 104))(v3, enum case for Separator.Position.top(_:), v0);
  v7[3] = sub_1007507D4();
  v7[4] = &protocol witness table for ZeroDimension;
  sub_10000D134(v7);
  sub_1007507C4();
  return sub_100751354();
}

uint64_t sub_100324148()
{
  v0 = sub_100747064();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039C50(v4, qword_10097FA68);
  sub_10000D0FC(v0, qword_10097FA68);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_10097E3A8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10074F4B4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1003242AC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746F44();
  sub_100746F84();
  if (qword_100920F88 != -1)
  {
    swift_once();
  }

  v4 = sub_100750534();
  v5 = sub_10000D0FC(v4, qword_100980BE8);
  v6 = *(v4 - 8);
  v7 = *(v6 + 16);
  v8 = v6 + 16;
  v7(v3, v5, v4);
  v9 = enum case for FontSource.useCase(_:);
  v10 = v1 + 13;
  v47 = v1[13];
  v47(v3, enum case for FontSource.useCase(_:), v0);
  v43 = sub_100750B04();
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v50);
  v12 = v1[2];
  v49 = v1 + 2;
  v42 = v12;
  v12(v11, v3, v0);
  sub_100750B14();
  v14 = v1[1];
  v13 = v1 + 1;
  v44 = v14;
  v14(v3, v0);
  sub_100746F64();
  if (qword_100920F90 != -1)
  {
    swift_once();
  }

  v40 = sub_10000D0FC(v4, qword_100980C00);
  v7(v3, v40, v4);
  HIDWORD(v39) = v9;
  v15 = v47;
  v47(v3, v9, v0);
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v45 = v10;
  v46 = v8;
  v48 = v7;
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v50);
  v42(v16, v3, v0);
  sub_100750B14();
  v41 = v13;
  v44(v3, v0);
  sub_100747034();
  v17 = v40;
  v18 = v4;
  v48(v3, v40, v4);
  v19 = HIDWORD(v39);
  v15(v3, HIDWORD(v39), v0);
  v20 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v21 = sub_10000D134(v50);
  v22 = v42;
  v42(v21, v3, v0);
  sub_100750B14();
  v23 = v44;
  v44(v3, v0);
  sub_100747004();
  v48(v3, v17, v18);
  v24 = v19;
  v25 = v19;
  v26 = v47;
  v47(v3, v24, v0);
  v54 = v20;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v50);
  v22(v27, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  sub_100746FF4();
  v28 = v40;
  v40 = v18;
  v48(v3, v28, v18);
  v26(v3, v25, v0);
  v29 = v43;
  v54 = v43;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v50);
  v31 = v42;
  v42(v30, v3, v0);
  sub_100750B14();
  v23(v3, v0);
  sub_100747054();
  if (qword_100920F98 != -1)
  {
    swift_once();
  }

  v32 = v40;
  v33 = sub_10000D0FC(v40, qword_100980C18);
  v48(v3, v33, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v50);
  v31(v34, v3, v0);
  sub_100750B14();
  v35 = v44;
  v44(v3, v0);
  sub_100746FB4();
  if (qword_100920FA0 != -1)
  {
    swift_once();
  }

  v36 = sub_10000D0FC(v32, qword_100980C30);
  v48(v3, v36, v32);
  v47(v3, v25, v0);
  v54 = v29;
  v55 = &protocol witness table for StaticDimension;
  sub_10000D134(v53);
  v51 = v0;
  v52 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v50);
  v31(v37, v3, v0);
  sub_100750B14();
  v35(v3, v0);
  sub_100746FC4();
  return sub_100746FA4();
}

void sub_100324A1C(void *a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase] = a1;
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

char *sub_100324AE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v121 = sub_100747064();
  v120 = *(v121 - 8);
  __chkstk_darwin(v121);
  v117 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v119 = &v113 - v12;
  v116 = sub_100743584();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074AB44();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v131 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v113 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase] = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *&v5[v22] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v23 = 0;
  *(v23 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer] = 0;
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = 1;
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
  v26 = sub_10000C518(&unk_100933080);
  (*(*(v26 - 8) + 56))(&v5[v25], 1, 1, v26);
  v27 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView] = v27;
  v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView] = v28;
  sub_1007433C4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView] = sub_1007431C4();
  if (qword_100920FC0 != -1)
  {
    swift_once();
  }

  v29 = sub_100750534();
  v30 = sub_10000D0FC(v29, qword_100980C78);
  v31 = *(v29 - 8);
  v32 = v31 + 16;
  v33 = *(v31 + 16);
  v33(v19, v30, v29);
  v36 = *(v31 + 56);
  v34 = v31 + 56;
  v35 = v36;
  v36(v19, 0, 1, v29);
  v37 = *(v15 + 104);
  v129 = enum case for DirectionalTextAlignment.none(_:);
  v127 = v15 + 104;
  v128 = v37;
  v37(v131);
  v38 = sub_100745C84();
  v126 = v14;
  v39 = v38;
  v40 = objc_allocWithZone(v38);
  v132 = v19;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel] = sub_100745C74();
  if (qword_100920FC8 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v29, qword_100980C90);
  v42 = v132;
  v33(v132, v41, v29);
  v35(v42, 0, 1, v29);
  v128(v131, v129, v126);
  v43 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel] = sub_100745C74();
  if (qword_100920FD0 != -1)
  {
    swift_once();
  }

  v44 = sub_10000D0FC(v29, qword_100980CA8);
  v45 = v132;
  v123 = v33;
  v124 = v32;
  v33(v132, v44, v29);
  v118 = v29;
  v125 = v34;
  v122 = v35;
  v35(v45, 0, 1, v29);
  v128(v131, v129, v126);
  v46 = objc_allocWithZone(v39);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel] = sub_100745C74();
  v47 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView] = sub_10016AB14(1);
  type metadata accessor for CrossLinkLockupView();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v133.receiver = v5;
  v133.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v133, "initWithFrame:", a1, a2, a3, a4);
  v49 = [v48 contentView];
  [v49 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v50 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel;
  [*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel) _setTextColorFollowsTintColor:1];
  v51 = *(v48 + v50);
  sub_100745C34();

  v52 = [v48 contentView];
  [v52 addSubview:*(v48 + v50)];

  v53 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel;
  v54 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel);
  sub_100745C34();

  v55 = [v48 contentView];
  [v55 addSubview:*(v48 + v53)];

  v56 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel;
  v57 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel);
  sub_100016C60(0, &qword_100923500);
  v58 = v57;
  v59 = sub_100753DF4();
  [v58 setTextColor:v59];

  v60 = *(v48 + v56);
  sub_100745C34();

  v61 = [v48 contentView];
  [v61 addSubview:*(v48 + v56)];

  v62 = [v48 contentView];
  v63 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [v62 addSubview:*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView)];

  v64 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView;
  [*(v48 + v63) addSubview:*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView)];
  [*(v48 + v64) setAccessibilityIgnoresInvertColors:1];
  v131 = v64;
  v65 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView;
  [*(v48 + v64) addSubview:*(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView)];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView;
  v67 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView);
  v68 = v115;
  v69 = v114;
  v70 = v116;
  (*(v115 + 104))(v114, enum case for CornerStyle.arc(_:), v116);
  v71 = v67;
  sub_10016A650(v69, 12, 20.0);

  (*(v68 + 8))(v69, v70);
  v72 = *(v48 + v65);
  v73 = sub_100746E54();

  if (v73)
  {
    [*(v48 + v65) insertSubview:*(v48 + v66) belowSubview:v73];
  }

  else
  {
    [*(v48 + v65) addSubview:*(v48 + v66)];
  }

  sub_100325B38();
  v74 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView;
  v75 = qword_100920970;
  v76 = *(v48 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView);
  if (v75 != -1)
  {
    swift_once();
  }

  v77 = v121;
  v78 = sub_10000D0FC(v121, qword_10097FA68);
  v79 = v120;
  v80 = *(v120 + 16);
  v81 = v119;
  v80(v119, v78, v77);
  v82 = *&v76[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView];
  v83 = v117;
  v80(v117, v81, v77);
  v84 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v79 + 24))(&v82[v84], v83, v77);
  swift_endAccess();
  [v82 setNeedsLayout];
  v85 = *(v79 + 8);
  v85(v83, v77);
  [v76 setNeedsLayout];

  v85(v81, v77);
  [*(v48 + v74) setLayoutMargins:{0.0, 14.0, 3.0, 14.0}];
  [*(v48 + v74) setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v86 = qword_100920F90;
  v87 = *(*(*(v48 + v74) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_titleLabel);
  v88 = v74;
  if (v86 != -1)
  {
    swift_once();
  }

  v89 = v118;
  v90 = sub_10000D0FC(v118, qword_100980C00);
  v91 = v132;
  v92 = v123;
  v123(v132, v90, v89);
  v93 = v122;
  v122(v91, 0, 1, v89);
  sub_100745BA4();

  v94 = qword_100920F98;
  v95 = *(*(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel);
  if (v94 != -1)
  {
    swift_once();
  }

  v96 = sub_10000D0FC(v89, qword_100980C18);
  v92(v91, v96, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  v97 = qword_100920FA0;
  v98 = *(*(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel);
  if (v97 != -1)
  {
    swift_once();
  }

  v99 = sub_10000D0FC(v89, qword_100980C30);
  v92(v91, v99, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  v100 = qword_100920F50;
  v101 = *(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel);
  if (v100 != -1)
  {
    swift_once();
  }

  v102 = sub_10000D0FC(v89, qword_100980B40);
  v92(v91, v102, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  v103 = qword_100920F58;
  v104 = *(*(v48 + v88) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkSubtitleLabel);
  if (v103 != -1)
  {
    swift_once();
  }

  v105 = sub_10000D0FC(v89, qword_100980B58);
  v92(v91, v105, v89);
  v93(v91, 0, 1, v89);
  sub_100745BA4();

  swift_unknownObjectWeakAssign();
  v106 = *&v131[v48];
  v107 = *(v48 + v88);
  v108 = v48;
  [v106 addSubview:v107];
  v109 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  [*&v108[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] setDelegate:v108];
  v110 = *&v108[v109];
  [v110 addTarget:v108 action:"handleTapWithGestureRecognizer:"];

  [*(v48 + v88) addGestureRecognizer:*&v108[v109]];
  [*(v48 + v88) setUserInteractionEnabled:1];
  sub_10000C518(&unk_1009249D0);
  v111 = swift_allocObject();
  *(v111 + 16) = xmmword_1007A5A00;
  *(v111 + 32) = sub_100751554();
  *(v111 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v108;
}

void sub_100325B38()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = sub_100753964();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0x3FE0000000000000;
    v5 = 0.5;
  }

  else
  {
    v6 = [v0 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    LOBYTE(v6) = sub_100753944();
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
    v4 = (v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientStartY);
    if (v6)
    {
      *v4 = 0.45;
      v5 = 0.45;
    }

    else
    {
      *v4 = 0.4;
      v5 = 0.4;
    }
  }

  v8 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v9 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v11 = v10;

  v12 = *v4;
  v13 = [*(v3 + v8) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v14 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v11, v12}];

  v15 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY;
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = v5;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v17 = [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_blurGradientMaskView) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() startPoint];
  v19 = v18;

  v20 = *(v3 + v15);
  v21 = [*(v3 + v16) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v19, v20}];
}

id sub_100325EBC()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer] removeTarget:v0 action:0];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v2)
  {
    [v2 removeTarget:v0 action:0];
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for EditorialCardCollectionViewCell()
{
  result = qword_100933070;
  if (!qword_100933070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1003260F8(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v15 = a1;
    v16 = sub_100754664();
    a1 = v15;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = a1;
    v4 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView;
    v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
    if (!v5)
    {
      v8 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v9 = *&v2[v4];
      if (v9)
      {
        [v9 removeFromSuperview];
        v10 = *&v2[v4];
      }

      else
      {
        v10 = 0;
      }

      *&v2[v4] = v8;
      v11 = v8;

      if (v11)
      {
        v12 = v11[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
        v11[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 2;
        sub_1000C95D0(v12);
        v13 = [v2 contentView];
        [v13 addSubview:v11];
      }

      [v2 setNeedsLayout];

      v14 = *&v2[v4];
      if (!v14)
      {
        goto LABEL_13;
      }

      *(v14 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_1008714F0;
      swift_unknownObjectWeakAssign();
      v5 = *&v2[v4];
      if (!v5)
      {
        goto LABEL_13;
      }
    }

    [v5 setHidden:0];
    v6 = *&v2[v4];
    if (v6)
    {
      v7 = v6;
      sub_1000C94C4(v3);
    }

    else
    {
LABEL_13:
    }

    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:1];
    sub_100326380([objc_allocWithZone(UILongPressGestureRecognizer) init]);
    goto LABEL_22;
  }

  v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v17)
  {
    [v17 setHidden:1];
  }

  [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel] setHidden:0];
  v18 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v19 = *&v2[v18];
  }

  else
  {
    v19 = 0;
  }

  *&v2[v18] = 0;

LABEL_22:

  return [v2 setNeedsLayout];
}

void sub_100326380(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer])
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView] removeGestureRecognizer:?];
    v4 = *&v1[v3];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v3] = a1;
  v5 = a1;

  if (a1)
  {
    v6 = v5;
    [v6 addTarget:v1 action:"stateChangedFor:"];
    [v6 setMinimumPressDuration:0.1];
    [v6 setDelegate:v1];

    v7 = [v1 contentView];
    [v7 addGestureRecognizer:v6];
  }
}

uint64_t sub_1003264A4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v77 = sub_1007479B4();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v75 = &v73 - v5;
  v81 = sub_100747064();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v73 - v9;
  v78 = sub_100750354();
  v10 = *(v78 - 8);
  __chkstk_darwin(v78);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100747674();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_100747694();
  v82 = *(v83 - 8);
  *&v17 = __chkstk_darwin(v83).n128_u64[0];
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100.receiver = v1;
  v100.super_class = ObjectType;
  v84 = ObjectType;
  objc_msgSendSuper2(&v100, "layoutSubviews", v17);
  v19 = [v1 contentView];
  v20 = sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  v79 = v7;
  if (v21)
  {
    v22 = v21;
    if (![v22 isHidden])
    {
      goto LABEL_5;
    }
  }

  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_captionLabel];
LABEL_5:
  v23 = qword_100920960;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v13, qword_10097FA38);
  (*(v14 + 16))(v16, v25, v13);
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v98 = v20;
  v99 = &protocol witness table for UIView;
  v96 = &protocol witness table for UIView;
  v97 = v26;
  v95 = v20;
  v85 = v24;
  v94 = v24;
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_titleLabel];
  v92 = sub_100745C84();
  v93 = &protocol witness table for UILabel;
  v91 = v27;
  v28 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  v90 = &protocol witness table for UILabel;
  v89 = v92;
  v88 = v28;
  v29 = v26;
  v30 = v27;
  v31 = v28;
  sub_100747684();
  sub_100747634();
  (*(v10 + 8))(v12, v78);
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView];
  v33 = [v32 superview];
  if (v33)
  {
    v34 = v33;
    v35 = sub_100753FC4();

    v36 = v80;
    v37 = v79;
    if (v35)
    {
      [v29 bounds];
      [v32 setBounds:{0.0, 0.0}];
      [v29 bounds];
      v39 = v38 * 0.5;
      [v29 bounds];
      [v32 setCenter:{v39, v40 * 0.5}];
    }
  }

  else
  {

    v36 = v80;
    v37 = v79;
  }

  [v29 bounds];
  v42 = v41;
  v44 = v43;
  sub_100743324();
  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
  v46 = v86;
  sub_1001F5A40(v86);
  [v45 layoutMargins];
  v48 = v47;
  v50 = v49;
  v51 = [v45 traitCollection];
  v52 = v81;
  (*(v36 + 16))(v37, v46, v81);
  v53 = sub_100746FD4();
  v55 = v85;
  if ((v56 & 1) == 0 && ((v53 | v54) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF58;
    }

    v58 = v77;
    v59 = sub_10000D0FC(v77, v57);
    v60 = v76;
    v61 = v74;
    (*(v76 + 16))(v74, v59, v58);
    v62 = v75;
    (*(v60 + 32))(v75, v61, v58);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v60 + 8))(v62, v58);
    v46 = v86;
    v55 = v85;
  }

  sub_100746F14();
  v64 = v63;
  v66 = v65;

  v67 = *(v36 + 8);
  v67(v37, v52);
  v68 = v50 + v48 + v66;
  v67(v46, v52);
  v101.origin.x = 0.0;
  v101.origin.y = 0.0;
  v101.size.width = v42;
  v101.size.height = v44;
  MinX = CGRectGetMinX(v101);
  v102.origin.x = 0.0;
  v102.origin.y = 0.0;
  v102.size.width = v42;
  v102.size.height = v44;
  [v45 setFrame:{MinX, CGRectGetMaxY(v102) - v68, v64, v68}];
  [v45 setNeedsLayout];
  v70 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  v103.origin.x = 0.0;
  v103.origin.y = 0.0;
  v103.size.width = v42;
  v103.size.height = v44;
  Width = CGRectGetWidth(v103);
  v104.origin.x = 0.0;
  v104.origin.y = 0.0;
  v104.size.width = v42;
  v104.size.height = v44;
  [v70 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v104)}];
  sub_100328DC0(&qword_100933098, type metadata accessor for EditorialCardCollectionViewCell);
  sub_10074AAF4();

  return (*(v82 + 8))(v87, v83);
}

void sub_100326E70(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v7 = &v54 - v6;
  v8 = sub_10000C518(&qword_100933090);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10000C518(&unk_100933080);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
  if (!v16)
  {
    return;
  }

  v56 = v13;
  sub_100016C60(0, &qword_1009327F0);
  v57 = v16;
  if ((sub_100753FC4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = ObjectType;
  v55 = v12;
  v17 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView);
  v18 = [v17 superview];
  v19 = [v1 contentView];
  v20 = v19;
  if (v18)
  {
    if (!v19)
    {

      goto LABEL_16;
    }

    sub_100016C60(0, &qword_100922300);
    v21 = sub_100753FC4();

    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v19)
  {

    goto LABEL_16;
  }

  v22 = [a1 state];
  if (v22 > 3)
  {
    if ((v22 - 4) >= 2)
    {
      goto LABEL_16;
    }

    v56 = [v17 superview];
    v26 = [v2 contentView];
    if (v56)
    {
      if (!v26)
      {
LABEL_33:

        v25 = v56;
        goto LABEL_17;
      }

      v55 = v26;
      sub_100016C60(0, &qword_100922300);
      v27 = sub_100753FC4();

      if ((v27 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
      goto LABEL_39;
    }

    v37 = objc_opt_self();
    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = 0x3FF0000000000000;
    v62 = sub_100328D30;
    v63 = v38;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1000CF7B0;
    v61 = &unk_100871538;
    v39 = _Block_copy(&aBlock);
    v40 = v2;

    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v40;
    v62 = sub_100328D54;
    v63 = v41;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v42 = &unk_100871588;
LABEL_41:
    v60 = sub_100144DD8;
    v61 = v42;
    v50 = _Block_copy(&aBlock);
    v51 = v40;

    [v37 _animateUsingDefaultDampedSpringWithDelay:135 initialSpringVelocity:v39 options:v50 animations:0.0 completion:1.0];
    _Block_release(v50);
    _Block_release(v39);

    return;
  }

  if (v22 != 1)
  {
    if (v22 == 2)
    {
      [a1 locationInView:v17];
      v34 = v32;
      v35 = v33;
      v36 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation);
      if (v36[2])
      {

        *v36 = v34;
        v36[1] = v35;
        *(v36 + 16) = 0;
        return;
      }

      v43 = sqrt((v33 - v36[1]) * (v33 - v36[1]) + (v32 - *v36) * (v32 - *v36));
      [v57 allowableMovement];
      if (v44 < v43)
      {
        [a1 setEnabled:0];
      }
    }

    else if (v22 == 3)
    {
      v23 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
      swift_beginAccess();
      sub_1001E899C(v2 + v23, v10);
      v24 = v55;
      if ((*(v55 + 6))(v10, 1, v56) == 1)
      {

        sub_10000C8CC(v10, &qword_100933090);
      }

      else
      {
        v24[4](v15, v10, v56);
        sub_1007455C4();
        v61 = v54;
        aBlock = v2;
        v45 = v2;
        sub_10074EC54();

        sub_1007455B4();
        v46 = sub_10000C518(&unk_100923210);
        sub_1007526C4();

        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v7, 1, v46) == 1)
        {
          (v24[1])(v15, v56);

          sub_10000C8CC(v7, &unk_100923960);
        }

        else
        {
          v52 = v56;
          sub_1007455C4();
          v53 = sub_1007455B4();
          sub_1003C0E00(aBlock, 1, v53, v7);

          (v24[1])(v15, v52);

          (*(v47 + 8))(v7, v46);
        }
      }

      return;
    }

    goto LABEL_16;
  }

  [a1 locationInView:v17];
  v28 = v2 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v28 = v29;
  *(v28 + 1) = v30;
  v28[16] = 0;
  v56 = [v17 superview];
  v26 = [v2 contentView];
  if (!v56)
  {
    if (!v26)
    {
LABEL_40:
      v37 = objc_opt_self();
      v48 = swift_allocObject();
      *(v48 + 16) = v2;
      *(v48 + 24) = 0x3FEEB851EB851EB8;
      v62 = sub_100328F8C;
      v63 = v48;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v60 = sub_1000CF7B0;
      v61 = &unk_1008715D8;
      v39 = _Block_copy(&aBlock);
      v40 = v2;

      v49 = swift_allocObject();
      *(v49 + 16) = 1;
      *(v49 + 24) = v40;
      v62 = sub_100328F9C;
      v63 = v49;
      aBlock = _NSConcreteStackBlock;
      v59 = 1107296256;
      v42 = &unk_100871628;
      goto LABEL_41;
    }

LABEL_39:
    v55 = v26;

    v25 = v55;
    goto LABEL_17;
  }

  if (!v26)
  {
    goto LABEL_33;
  }

  v55 = v26;
  sub_100016C60(0, &qword_100922300);
  v31 = sub_100753FC4();

  if (v31)
  {
    goto LABEL_40;
  }

LABEL_16:
  v25 = v57;
LABEL_17:
}

id sub_100327824(uint64_t a1, CGFloat a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView);
  CGAffineTransformMakeScale(&v4, a2, a2);
  return [v2 setTransform:&v4];
}

id sub_100327884()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
  *v2 = 0;
  *(v2 + 1) = 0;
  sub_1000164A8(v3);
  sub_1003260F8(_swiftEmptyArrayStorage);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  sub_100743384(v14, v4);
  v5 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  sub_100743384(v15, v6);

  v7 = &v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v8)
  {
    [v8 setEnabled:1];
  }

  v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView];
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardView];
  [v9 addSubview:v10];
  v12[0] = 0x3FF0000000000000;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = 0x3FF0000000000000;
  v12[4] = 0;
  v12[5] = 0;
  [v10 setTransform:v12];
  [v10 setAlpha:1.0];
  return [v10 setHidden:0];
}

void sub_100327A2C(void *a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  sub_100325B38();
  if (a1)
  {
    v3 = [a1 userInterfaceStyle];
  }

  else
  {
    v3 = 0;
  }

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (!a1 || v3 != v5)
  {
    sub_100327AE4();
  }
}

void sub_100327AE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView);
  v2 = [v1 traitCollection];
  [v2 userInterfaceStyle];

  sub_100753094();
  v3 = sub_100753064();

  v4 = [*&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_crossLinkTitleLabel] layer];
  [v4 setCompositingFilter:v3];

  v5 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView;
  v6 = [*(*&v1[OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel) layer];
  [v6 setCompositingFilter:v3];

  v7 = [*(*(*&v1[v5] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_subtitleLabel) layer];
  [v7 setCompositingFilter:v3];

  v8 = [*(*&v1[v5] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerLabel) layer];
  [v8 setCompositingFilter:v3];
}

BOOL sub_100327D44(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10000C518(&qword_100933090);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v37 - v8;
  v10 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer];
  if (v10)
  {
    sub_100016C60(0, &unk_10092C570);
    v11 = a1;
    v12 = v10;
    v13 = sub_100753FC4();

    if (v13)
    {
      v14 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
      [a2 locationInView:v14];
      v16 = v15;
      v18 = v17;
      [v14 bounds];
      v38.x = v16;
      v38.y = v18;
      if (CGRectContainsPoint(v41, v38))
      {
        return 0;
      }

      [a2 locationInView:v3];
      v20 = v19;
      v22 = v21;
      v23 = [v3 hitTest:0 withEvent:?];
      [v3 bounds];
      v39.x = v20;
      v39.y = v22;
      if (CGRectContainsPoint(v42, v39))
      {
        if (!v23 || (objc_opt_self(), v24 = swift_dynamicCastObjCClass(), v23, !v24))
        {
          v25 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
          swift_beginAccess();
          sub_1001E899C(&v3[v25], v9);
          v26 = sub_10000C518(&unk_100933080);
          v27 = (*(*(v26 - 8) + 48))(v9, 1, v26) != 1;
          sub_10000C8CC(v9, &qword_100933090);
          return v27;
        }

        return 0;
      }

LABEL_12:

      return 0;
    }
  }

  [a2 locationInView:{v3, v7}];
  v30 = v29;
  v32 = v31;
  v23 = [v3 hitTest:0 withEvent:?];
  [v3 bounds];
  v40.x = v30;
  v40.y = v32;
  if (!CGRectContainsPoint(v43, v40))
  {
    goto LABEL_12;
  }

  if (v23)
  {
    sub_100016C60(0, &qword_100922300);
    v33 = v23;
    v34 = v3;
    v35 = sub_100753FC4();

    if (v35)
    {

      return 0;
    }

    objc_opt_self();
    v36 = swift_dynamicCastObjCClass();

    if (v36)
    {
      return 0;
    }
  }

  return *&v3[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction] != 0;
}

void sub_1003281D4()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_1001E5A54();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003282E0()
{
  sub_100743204();
  sub_1007433C4();
  sub_100328DC0(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
  sub_100743204();

  v4 = *(v1 + v2);
  sub_100744274();
}

void sub_1003283FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1000C8E14();
  }
}

double sub_1003284C4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView;
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_cardContainerView) bounds];
  v4 = v3 * 0.5;
  [*(v1 + v2) bounds];
  return v4;
}

uint64_t sub_100328528(uint64_t a1, uint64_t a2)
{
  v4 = sub_100747064();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007504F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10074F284();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v52 - v18;
  sub_10000C824(a1, v61);
  sub_10000C518(&unk_100923100);
  sub_1007443D4();
  result = swift_dynamicCast();
  if (result)
  {
    v52[1] = v8;
    v53 = v14;
    v21 = v60;
    v22 = sub_1007443A4();
    v54 = v21;
    v55 = a2;
    if (v22)
    {
      sub_10074F294();
      sub_10074F244();
      sub_100328DC0(&qword_1009290A0, &type metadata accessor for Artwork.Crop);
      v23 = sub_100753014();
      v24 = *(v53 + 8);
      v24(v16, v13);
      if (v23)
      {
        v52[0] = 5;
      }

      else
      {
        v52[0] = sub_10074F254();
      }

      v24(v19, v13);
      v25 = v59;
      v26 = [v59 contentView];
      sub_100016C60(0, &qword_100922300);
      sub_1007477B4();
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      if (qword_100920960 != -1)
      {
        swift_once();
      }

      v35 = sub_100747674();
      sub_10000D0FC(v35, qword_10097FA38);
      sub_100747664();
      v62.origin.x = v28;
      v62.origin.y = v30;
      v62.size.width = v32;
      v62.size.height = v34;
      CGRectGetWidth(v62);
      v63.origin.x = v28;
      v63.origin.y = v30;
      v63.size.width = v32;
      v63.size.height = v34;
      CGRectGetWidth(v63);
      sub_1007504C4();
      (*(v10 + 8))(v12, v9);
      v36 = v52[0];
      sub_10074F374();
      v37 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_artworkView];
      sub_10074F324();
      sub_100743364();
      [v37 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      [v37 setContentMode:v36];
      sub_1007433C4();
      sub_100328DC0(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();
    }

    if (sub_100744394())
    {
      v38 = sub_10074EF64();

      if (v38)
      {
        v39 = *&v59[OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupView];
        v40 = *(v39 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
        v41 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
        swift_beginAccess();
        v42 = v57;
        v43 = v40 + v41;
        v44 = v56;
        v45 = v58;
        (*(v57 + 16))(v56, v43, v58);
        sub_100746F34();
        (*(v42 + 8))(v44, v45);
        sub_10074F294();
        sub_10074F254();
        v59 = *(v53 + 8);
        (v59)(v16, v13);
        sub_10074F374();
        v46 = OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView;
        v47 = *(v39 + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
        sub_10074F324();
        sub_100743364();
        [v47 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500);
          sub_100753E34();
        }

        sub_100743224();

        v48 = *(v39 + v46);
        sub_10074F294();
        v49 = sub_10074F254();
        (v59)(v16, v13);
        [v48 setContentMode:v49];

        v50 = *(v39 + v46);
        sub_1007433C4();
        sub_100328DC0(&qword_100925570, &type metadata accessor for ArtworkView);
        v51 = v50;
        sub_100744204();
      }
    }
  }

  return result;
}

uint64_t sub_100328CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100328D3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100328D58()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100328D90()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    v1 = *(*(v0 + 24) + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer);
    if (v1)
    {
      [v1 setEnabled:1];
    }
  }
}

uint64_t sub_100328DC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100328E08()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_avatarShowcase) = 0;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_tapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_longPressGestureRecognizer) = 0;
  v5 = v0 + OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_initialLongPressLocation;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31EditorialCardCollectionViewCell_clickAction;
  v7 = sub_10000C518(&unk_100933080);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_100754644();
  __break(1u);
}

uint64_t sub_100328FA0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v57 = a7;
  v58 = a8;
  v55 = a6;
  v52 = a5;
  v50 = a2;
  v48[1] = a1;
  v10 = sub_10000C518(&qword_100927E40);
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
  v23 = sub_10074FF64();
  __chkstk_darwin(v23 - 8);
  v54 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10074FF24();
  v26 = __chkstk_darwin(v25);
  v53 = v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v26);
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10032A6EC(a4, v22);
  sub_10032A6EC(a3, v19);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v32 = (v12 + v30 + v31) & ~v30;
  v33 = (v12 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_10032A8EC(v22, v35 + v31);
  sub_10032A8EC(v19, v35 + v32);
  *(v35 + v33) = v29;
  v36 = v50;
  *(v35 + v34) = v50;
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = v49;
  sub_10032A6EC(v52, v49);
  v39 = (v30 + 32) & ~v30;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  *(v40 + 24) = v36;
  sub_10032A8EC(v38, v40 + v39);
  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v51;
  sub_10032A6EC(v55, v51);
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v36;
  sub_10032A8EC(v42, v43 + v39);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v56;
  sub_10032A6EC(v57, v56);
  v46 = swift_allocObject();
  *(v46 + 16) = v44;
  *(v46 + 24) = v36;
  sub_10032A8EC(v45, v46 + v39);
  swift_retain_n();
  sub_10074FF54();
  return sub_10074FEE4();
}

uint64_t sub_10032949C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_10000C518(&unk_100933300);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = v29 - v4;
  v5 = sub_10000C518(&qword_100927E40);
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
  v20 = sub_10074FF24();
  v32 = *(v20 - 8);
  v33 = v20;
  __chkstk_darwin(v20);
  v22 = v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074BC74();
  sub_10032BA24(&qword_1009330D8, &type metadata accessor for GameCenterActivityFeedCard);
  result = sub_1007468B4();
  if (v36[0])
  {
    sub_10074BC64();
    sub_10074BC24();
    v30 = v16;
    sub_10074BC54();
    sub_10074BC44();
    sub_10074BC34();
    v24 = sub_10074BC14();
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
    v29[-4] = sub_10032B79C;
    v29[-3] = v26;
    v29[-2] = v27;
    v29[-1] = v2;
    sub_10000C518(&unk_100933310);
    v31 = v2;
    sub_10032B7BC();
    v28 = v34;
    sub_100751DF4();
    sub_100751E54();
    v36[3] = v3;
    v36[4] = sub_10002DDC8(&qword_1009330F8, &unk_100933300);
    sub_10000D134(v36);
    sub_100751DE4();
    (*(v35 + 8))(v28, v3);
    sub_1007538E4();

    sub_10000C8CC(v7, &qword_100927E40);
    sub_10000C8CC(v10, &qword_100927E40);
    sub_10000C8CC(v13, &qword_100927E40);
    sub_10000C8CC(v30, &qword_100927E40);
    sub_10000C8CC(v19, &qword_100927E40);
    return (*(v32 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_100329938(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v27 = a2;
  v28 = a7;
  v11 = sub_100752614();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100927E40);
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

  sub_10032A6EC(v21, &v26 - v19);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    sub_10032A6EC(v20, v17);
    v24 = *(v12 + 48);
    if (v24(v17, 1, v11) == 1)
    {
      sub_1007525F4();
      if (v24(v17, 1, v11) != 1)
      {
        sub_10000C8CC(v17, &qword_100927E40);
      }
    }

    else
    {
      (*(v12 + 32))(v14, v17, v11);
    }

    sub_10032AD6C(a1, v27, v28, v14);

    (*(v12 + 8))(v14, v11);
  }

  return sub_10000C8CC(v20, &qword_100927E40);
}

void *sub_100329B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29[1] = a1;
  v30 = a8;
  v10 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v10 - 8);
  v12 = v29 - v11;
  v13 = sub_10000C518(&qword_100927E40);
  __chkstk_darwin(v13 - 8);
  v15 = v29 - v14;
  v16 = sub_100752614();
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

    sub_10032A6EC(a9, v15);
    v24 = *(v17 + 48);
    if (v24(v15, 1, v16) == 1)
    {
      sub_1007525F4();
      if (v24(v15, 1, v16) != 1)
      {
        sub_10000C8CC(v15, &qword_100927E40);
      }
    }

    else
    {
      (*(v17 + 32))(v22, v15, v16);
    }

    (*(v17 + 16))(v19, v22, v16);
    sub_10074C734();
    swift_allocObject();

    v25 = sub_10074C704();
    v26 = sub_10000C518(&unk_100923210);
    v27 = v30;
    sub_1007526C4();
    v28 = *(v26 - 8);
    if ((*(v28 + 48))(v12, 1, v26) == 1)
    {
      (*(v17 + 8))(v22, v16);

      return sub_10000C8CC(v12, &unk_100923960);
    }

    else
    {
      sub_1003C15C4(v25, 1, v27, v12);

      (*(v17 + 8))(v22, v16);
      return (*(v28 + 8))(v12, v26);
    }
  }

  return result;
}

void *sub_100329F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28[1] = a4;
  v29 = a7;
  v9 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = sub_10000C518(&qword_100927E40);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v15 = sub_100752614();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v28 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    sub_10032A6EC(a8, v14);
    v23 = *(v16 + 48);
    if (v23(v14, 1, v15) == 1)
    {
      sub_1007525F4();
      if (v23(v14, 1, v15) != 1)
      {
        sub_10000C8CC(v14, &qword_100927E40);
      }
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
    }

    (*(v16 + 16))(v18, v21, v15);
    sub_10074C6C4();
    swift_allocObject();

    v24 = sub_10074C6A4();
    v25 = sub_10000C518(&unk_100923210);
    v26 = v29;
    sub_1007526C4();
    v27 = *(v25 - 8);
    if ((*(v27 + 48))(v11, 1, v25) == 1)
    {
      (*(v16 + 8))(v21, v15);

      return sub_10000C8CC(v11, &unk_100923960);
    }

    else
    {
      sub_1003C15F8(v24, 1, v26, v11);

      (*(v16 + 8))(v21, v15);
      return (*(v27 + 8))(v11, v25);
    }
  }

  return result;
}

uint64_t sub_10032A2FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10000C518(&qword_100927E40);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_100752614();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_10032A6EC(a6, v12);
    v19 = *(v14 + 48);
    if (v19(v12, 1, v13) == 1)
    {
      sub_1007525F4();
      if (v19(v12, 1, v13) != 1)
      {
        sub_10000C8CC(v12, &qword_100927E40);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
    }

    sub_10032AF9C(a1, a2, a5, v16);

    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t type metadata accessor for GameCenterActivityFeedCollectionViewCell()
{
  result = qword_1009330C8;
  if (!qword_1009330C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_10032A640(void *a1, double a2)
{
  v3 = [a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  sub_10074FED4();
  return a2;
}

uint64_t sub_10032A6B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032A6EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032A75C()
{
  v1 = *(sub_10000C518(&qword_100927E40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v4 + v2 + v3) & ~v2;
  v6 = sub_100752614();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return _swift_deallocObject(v0, ((((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10032A8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10032A95C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(sub_10000C518(&qword_100927E40) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = (v10 + v8 + v9) & ~v8;
  v12 = (v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v3 + v12);
  v14 = *(v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_100329938(a1, a2, a3, v3 + v9, v3 + v11, v13, v14);
}

void *sub_10032AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_10000C518(&qword_100927E40) - 8);
  v12 = *(v5 + 16);
  v13 = *(v5 + 24);
  v14 = v5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));

  return sub_100329F48(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10032ABAC()
{
  v1 = *(sub_10000C518(&qword_100927E40) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_100752614();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10032ACD4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *(sub_10000C518(&qword_100927E40) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_10032A2FC(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_10032AD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_100752614();
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  sub_10074CC34();
  swift_allocObject();

  v13 = sub_10074CC14();
  v14 = sub_10000C518(&unk_100923210);
  sub_1007526C4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {

    return sub_10000C8CC(v8, &unk_100923960);
  }

  else
  {
    sub_1003C1590(v13, 1, a3, v8);

    return (*(v15 + 8))(v8, v14);
  }
}

uint64_t sub_10032AF9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v52 = a3;
  v54._countAndFlagsBits = a1;
  v54._object = a2;
  v4 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v4 - 8);
  v53 = &v39 - v5;
  v50 = sub_100742CF4();
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v51 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007493D4();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10074A304();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100752614();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092C1F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_10074F4D4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v19 - 8);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v39 - v23;
  v25 = sub_100741264();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v55 = &v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = 0;
  *(&v58 + 1) = 0xE000000000000000;
  sub_100754534(29);

  *&v58 = 0xD00000000000001BLL;
  *(&v58 + 1) = 0x80000001007663C0;
  sub_1007531B4(v54);
  sub_100741254();

  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    v28 = &unk_100923970;
    v29 = v24;
    return sub_10000C8CC(v29, v28);
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
  v32 = sub_100743FE4();
  (*(*(v32 - 8) + 56))(v14, 1, 1, v32);
  v56 = 0u;
  v57 = 0u;
  (*(v40 + 16))(v11, v49, v41);
  (*(v43 + 104))(v42, enum case for FlowPresentationContext.infer(_:), v44);
  (*(v45 + 104))(v48, enum case for FlowAnimationBehavior.infer(_:), v46);
  (*(v47 + 104))(v51, enum case for FlowOrigin.inapp(_:), v50);
  sub_100752B44();
  sub_100742CD4();
  swift_allocObject();
  v33 = sub_100742C84();
  v34 = sub_10000C518(&unk_100923210);
  v35 = v52;
  v36 = v53;
  sub_1007526C4();
  v37 = *(v34 - 8);
  if ((*(v37 + 48))(v36, 1, v34) == 1)
  {
    (*(v26 + 8))(v55, v25);

    v28 = &unk_100923960;
    v29 = v36;
    return sub_10000C8CC(v29, v28);
  }

  sub_1003C1424(v33, 1, v35, v36);

  (*(v26 + 8))(v55, v25);
  return (*(v37 + 8))(v36, v34);
}

unint64_t sub_10032B7BC()
{
  result = qword_1009330E0;
  if (!qword_1009330E0)
  {
    sub_10000C724(&unk_100933310);
    sub_10032B874();
    sub_10002DDC8(&qword_100924AD8, &unk_100933360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009330E0);
  }

  return result;
}

unint64_t sub_10032B874()
{
  result = qword_100933320;
  if (!qword_100933320)
  {
    sub_10000C724(&qword_1009330E8);
    sub_10000C724(&unk_100933330);
    sub_10000C724(&qword_1009330F0);
    sub_100752764();
    sub_10074FEF4();
    sub_10032BA24(&unk_100933340, &type metadata accessor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10002DDC8(&qword_10092AE10, &unk_100933350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100933320);
  }

  return result;
}

uint64_t sub_10032BA24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10032BA74()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097FAF8);
  sub_10000D0FC(v0, qword_10097FAF8);
  return sub_100750504();
}

uint64_t sub_10032BAC8()
{
  v0 = sub_10000C518(&qword_100933148);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = sub_100750304();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007504F4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100743424();
  sub_100039C50(v10, qword_10097FB10);
  v19[2] = sub_10000D0FC(v10, qword_10097FB10);
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v6, qword_10097FAF8);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_100921480 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v19[0] = sub_10000D0FC(v12, qword_100981AB8);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = sub_100750B04();
  v22[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_10000D134(v21);
  (*(v3 + 16))(v16, v5, v2);
  sub_100750B14();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return sub_100743414();
}

uint64_t sub_10032BE6C()
{
  v0 = sub_10000C518(&qword_100933148);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = sub_1007504F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100743424();
  sub_100039C50(v7, qword_10097FB28);
  sub_10000D0FC(v7, qword_10097FB28);
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v3, qword_10097FAF8);
  (*(v4 + 16))(v6, v8, v3);
  v9 = sub_100750304();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return sub_100743414();
}

char *sub_10032C054(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v5[v11], 1, 1, v12);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v13 = &v5[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText];
  sub_1007433C4();
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView] = sub_1007431E4();
  v19.receiver = v5;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v16 = [v14 contentView];
  [v16 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView]];

  sub_10000C518(&unk_1009249D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A5A00;
  *(v17 + 32) = sub_100751554();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v14;
}

id sub_10032C34C()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_100928A40);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &stru_1008F2000;
      if (v13)
      {
      }

      else
      {
        v17 = qword_100921480;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = sub_100750534();
        v19 = sub_10000D0FC(v18, qword_100981AB8);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(sub_100745C84());
        v22 = sub_100745C74();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &stru_1008F2000;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = sub_100753064();

        [v28 setText:v29];

        return [v1 v14[51].attr];
      }

LABEL_20:

      return [v1 v14[51].attr];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_10032C700()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v34 = *(v3 - 8);
  v35 = v3;
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100743424();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v33 = sub_100743444();
  v13 = *(v33 - 8);
  *&v14 = __chkstk_darwin(v33).n128_u64[0];
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42.receiver = v1;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, "layoutSubviews", v14);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = v18;
  if ([v19 isHidden])
  {

LABEL_4:
    if (qword_100920988 != -1)
    {
      swift_once();
    }

    v20 = sub_10000D0FC(v6, qword_10097FB28);
    (*(v7 + 16))(v9, v20, v6);
    v21 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView];
    v40 = sub_1007433C4();
    v41 = &protocol witness table for UIView;
    v39 = v21;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = v21;
    sub_100743434();
    goto LABEL_13;
  }

  if (qword_100920980 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v6, qword_10097FB10);
  (*(v7 + 16))(v12, v23, v6);
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView];
  v40 = sub_1007433C4();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = *&v1[v17];
  if (v25)
  {
    v26 = sub_100745C84();
    v27 = &protocol witness table for UILabel;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(&v36 + 1) = 0;
    *&v37 = 0;
  }

  *&v36 = v25;
  *(&v37 + 1) = v26;
  v38 = v27;
  v28 = v24;
  v29 = v25;
  sub_100743434();

LABEL_13:
  v30 = [v1 contentView];
  sub_100009D34();
  sub_1007477B4();

  sub_100743404();
  (*(v34 + 8))(v5, v35);
  return (*(v13 + 8))(v16, v33);
}

uint64_t type metadata accessor for BrickCollectionViewCell()
{
  result = qword_100933130;
  if (!qword_100933130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10032CCA8()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10032CD68()
{
  v1 = v0;
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v2 = sub_1007504F4();
  sub_10000D0FC(v2, qword_10097FAF8);
  v3 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();

  sub_1007504C4();
  v4 = [v1 contentView];
  sub_1007477B4();
  v6 = v5;

  return v6;
}

uint64_t sub_10032CE60()
{
  sub_100743204();
  sub_1007433C4();
  sub_10032CF50(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_10032CEF8(uint64_t a1)
{
  result = sub_10032CF50(&qword_100933140, type metadata accessor for BrickCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10032CF50(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_10032CF98()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
LABEL_12:
    sub_10018875C(_swiftEmptyArrayStorage);
  }

  result = sub_10001E46C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      [v5 contentOffset];
      v8 = v7;
      [v6 adjustedContentInset];
      v10 = v9;

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_10001E46C((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *&_swiftEmptyArrayStorage[v12 + 4] = v8 + v10;
    }

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_10032D12C()
{

  sub_1000164A8(*(v0 + 24));

  return swift_deallocClassInstance();
}

char *sub_10032D190()
{
  result = sub_10032CF98();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = v2;

    v3(v5, v4);

    return sub_1000164A8(v3);
  }

  return result;
}

uint64_t sub_10032D204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074C7E4();
  *a1 = result;
  return result;
}

uint64_t sub_10032D230(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v9 = v8;
  v58 = a2;
  ObjectType = swift_getObjectType();
  v17 = sub_10000C518(&qword_10092E2A8);
  v59 = *(v17 - 8);
  v60 = v17;
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = &v58 - v19;
  v21 = [v8 contentView];
  [v21 setLayoutMargins:{a5, a6, a7, a8}];

  *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_objectGraph] = a3;

  v22 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_iconHeadingView];
  sub_10074C804();
  v23 = *(v22 + OBJC_IVAR____TtC22SubscribePageExtension16ImageHeadingView_headingLabel);
  v24 = sub_100753064();

  [v23 setText:v24];

  v25 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_titleHeadingView];
  sub_10074C7F4();
  v26 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_headingLabel);
  v27 = sub_100753064();

  [v26 setText:v27];

  v28 = sub_10074C7C4();
  if (v28)
  {
    v29 = v28;
    sub_10074ECB4();
    if (v30)
    {
      v31 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton);
      v32 = sub_100753064();

      [v31 setTitle:v32 forState:0];

      v33 = swift_allocObject();
      *(v33 + 16) = a3;
      *(v33 + 24) = v29;
      v34 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      v35 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
      *v34 = sub_10032E350;
      v34[1] = v33;

      v36 = v35;
      goto LABEL_6;
    }
  }

  [*(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButton) setTitle:0 forState:{0, v58}];
  v37 = (v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  v36 = *(v25 + OBJC_IVAR____TtC22SubscribePageExtension17SearchHeadingView_detailButtonHandler);
  *v37 = 0;
  v37[1] = 0;
LABEL_6:
  sub_1000164A8(v36);
  swift_getObjectType();
  v38 = sub_10032E1E4(a4);
  v40 = v39;
  v41 = v38;
  result = sub_1004240E4(v38, v39);
  if (!*&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_impressionsCoordinator])
  {
    __break(1u);
    goto LABEL_12;
  }

  v43 = sub_10074C7E4();
  sub_1001582F4(v43);

  sub_10074E234();

  v44 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!v44)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v45 = swift_allocObject();
  swift_weakInit();
  v46 = swift_allocObject();
  v47 = v58;
  v46[2] = v45;
  v46[3] = v47;
  v46[4] = ObjectType;
  v48 = objc_allocWithZone(sub_10000C518(&unk_10092E2B0));

  v49 = v44;
  v50 = sub_100751884();
  v51 = OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource;
  v52 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource];
  *&v9[OBJC_IVAR____TtC22SubscribePageExtension34SearchLockupListCollectionViewCell_lockupDataSource] = v50;
  v53 = v50;

  v54 = swift_allocObject();
  *(v54 + 16) = v41;
  *(v54 + 24) = v40;
  sub_100751894();

  sub_10000C518(&unk_1009231A0);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_1007A5CF0;
  *(v55 + 32) = a1;
  swift_getKeyPath();
  sub_10032E358(&qword_10092E2C0, &type metadata accessor for LockupCollectionSearchResult);
  sub_10032E358(&unk_10092E2C8, &type metadata accessor for Lockup);

  sub_1007505D4();

  v56 = *&v9[v51];
  if (v56)
  {
    v57 = v56;
    sub_1007518C4();
  }

  [v9 setNeedsLayout];
  return (*(v59 + 8))(v20, v60);
}

uint64_t sub_10032D7CC(uint64_t a1, uint64_t a2)
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

void *sub_10032D910(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v58 = a3;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v9 - 8);
  v61 = v53 - v10;
  v11 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v11 - 8);
  v13 = v53 - v12;
  v14 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v14 - 8);
  v60 = v53 - v15;
  v16 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v16 - 8);
  v59 = v53 - v17;
  v18 = sub_100742E24();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v53 - v23;
  v25 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v25 - 8);
  v27 = v53 - v26;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v55 = v13;
  v57 = v27;
  type metadata accessor for SmallSearchLockupCollectionViewCell();
  sub_1007539D4();
  v28 = sub_100753064();

  isa = sub_100741704().super.isa;
  v54 = a1;
  v30 = [a1 dequeueReusableCellWithReuseIdentifier:v28 forIndexPath:isa];

  v56 = swift_dynamicCastClass();
  if (v56)
  {
    v53[1] = v8;
    sub_10000C518(&qword_100937CD0);
    sub_100752564();
    v58 = v64;
    if (sub_10074EF04())
    {
      sub_100749F04();
      v31 = *(v19 + 104);
      v31(v21, enum case for OfferStyle.infer(_:), v18);
      v32 = sub_100742E14();
      v33 = *(v19 + 8);
      v33(v21, v18);
      v33(v24, v18);
      if (v32 & 1) != 0 && (v34 = [v54 traitCollection], v35 = sub_1007537E4(), v34, (v35))
      {
        v36 = v57;
        v31(v57, enum case for OfferStyle.white(_:), v18);
        v37 = v36;
        (*(v19 + 56))(v36, 0, 1, v18);
      }

      else
      {
        v37 = v57;
        (*(v19 + 56))(v57, 1, 1, v18);
      }
    }

    else
    {
      v37 = v57;
      (*(v19 + 56))(v57, 1, 1, v18);
    }

    v38 = v56;
    v39 = *(v56 + OBJC_IVAR____TtC22SubscribePageExtension35SmallSearchLockupCollectionViewCell_lockupView);
    v40 = sub_10000C518(&unk_10092EEA0);
    v41 = v59;
    (*(*(v40 - 8) + 56))(v59, 1, 1, v40);
    v42 = sub_100745E94();
    v43 = v60;
    (*(*(v42 - 8) + 56))(v60, 1, 1, v42);
    v44 = sub_10000C518(&unk_100925560);
    v45 = v55;
    (*(*(v44 - 8) + 56))(v55, 1, 1, v44);
    v46 = sub_10074F8B4();
    v47 = v61;
    (*(*(v46 - 8) + 56))(v61, 1, 1, v46);
    sub_100656038(v58, v39, v41, Strong, 0, 0, v37, v43, v47, v45);
    sub_10000C8CC(v47, &unk_100925520);
    v39[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v39 setNeedsLayout];
    sub_10000C8CC(v45, &unk_100925990);
    sub_10000C8CC(v43, &unk_1009259A0);
    sub_10000C8CC(v41, &unk_100925540);
    v48 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v49 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView];
    sub_100743344();
    sub_1007433C4();
    sub_10032E358(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744274();
    if (sub_10074EF24())
    {
      if (qword_100920548 != -1)
      {
        swift_once();
      }

      v50 = sub_100747064();
      sub_10000D0FC(v50, qword_10097E3A8);
      sub_100746F34();
      [v49 contentMode];
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v49 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_10000D198();
        sub_100753E34();
      }

      sub_100743224();
      v51 = *&v39[v48];
      sub_100744204();

      v38 = v56;
      v37 = v57;
    }

    [v38 setNeedsLayout];

    sub_10000C8CC(v37, &unk_100925530);
  }

  else
  {

    return 0;
  }

  return v38;
}

BOOL sub_10032E1E4(void *a1)
{
  v1 = a1;
  v2 = [a1 traitCollection];
  sub_100753804();

  v3 = [v1 traitCollection];
  LOBYTE(v1) = sub_1007537D4();

  return (v1 & 1) == 0;
}

uint64_t sub_10032E274()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10032E2D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074C7E4();
  *a1 = result;
  return result;
}

uint64_t sub_10032E304(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10032E358(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_10032E3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

double sub_10032E454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v33 = a6;
  v31 = a4;
  v32 = a5;
  v29 = a3;
  v30 = a2;
  v26 = a1;
  v28 = sub_10000C518(&qword_100925340);
  v14 = *(v28 - 8);
  __chkstk_darwin(v28);
  v16 = &v26 - v15;
  swift_getAssociatedTypeWitness();
  v27 = sub_100752EA4();
  v17 = *(v27 - 8);
  __chkstk_darwin(v27);
  v19 = &v26 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v23 = &v26 - v22;
  sub_10000C824(v26, v34);
  sub_10000C518(&qword_1009242A0);
  swift_dynamicCast();
  (*(v14 + 16))(v16, v29, v28);
  sub_100752EB4();
  v24 = (*(a8 + 48))(v23, v30, v19, v31, v32, v33, a7, a8, a9, a10);
  (*(v17 + 8))(v19, v27);
  (*(v21 + 8))(v23, AssociatedTypeWitness);
  return v24;
}

uint64_t sub_10032E740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_10032E7DC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v20[0] = a6;
  v10 = sub_10000C518(&unk_100925370);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  v14 = sub_10000C518(&unk_1009400F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v20 - v16;
  sub_10000C824(a1, v21);
  sub_10000C518(&qword_1009242A0);
  sub_100745324();
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v20[2];
    (*(v11 + 16))(v13, a2, v10);
    sub_100752DF4();
    sub_100752994();
    sub_1003C388C(v19, a4, a3, v20[0]);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_10032E9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v71 = a4;
  v67 = a3;
  v9 = sub_10000C518(&qword_10093FDB0);
  __chkstk_darwin(v9 - 8);
  v66 = &v60 - v10;
  v11 = sub_100749A94();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100925370);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - v17;
  v19 = sub_10000C518(&unk_1009400F0);
  v68 = *(v19 - 8);
  v69 = v19;
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  sub_10000C824(a1, v73);
  sub_10000C518(&qword_1009242A0);
  sub_10074ECD4();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v63 = a6;
  v23 = v72;
  (*(v16 + 16))(v18, a2, v15);
  sub_100752DF4();
  v64 = v21;
  sub_100752994();
  v24 = v65;
  v25 = *&v65[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_textLabel];
  sub_10074ECB4();
  sub_100745BD4();

  v26 = v24;
  v27 = *&v24[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_separatorView];
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  v28 = sub_100754324();
  v29 = *(v12 + 8);
  v30 = v14;
  v31 = v14;
  v62 = v12 + 8;
  v32 = v29;
  v29(v31, v11);
  [v27 setHidden:v28 & 1];
  v70 = v23;
  v33 = sub_10074EC84();
  v34 = v11;
  v61 = v25;
  if ((v33 & 2) != 0)
  {
    [v25 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v25 _setTextColorFollowsTintColor:0];
    sub_100016C60(0, &qword_100923500);
    v35 = sub_100753DD4();
    [v25 setTextColor:v35];
  }

  v36 = v63;
  swift_getObjectType();
  v37 = sub_100321BB0(v36);
  v38 = type metadata accessor for Accessory();
  v39 = v26;
  if (v37)
  {
    v40 = v66;
    swift_storeEnumTagMultiPayload();
    v41 = 0;
    v42 = v32;
  }

  else
  {
    v41 = 1;
    v42 = v32;
    v40 = v66;
  }

  (*(*(v38 - 8) + 56))(v40, v41, 1, v38);
  sub_100644C38(v40, v67);
  sub_10000C8CC(v40, &qword_10093FDB0);
  v43 = [v36 traitCollection];
  v44 = [v43 horizontalSizeClass];

  if (v44 == 1 || (sub_100749A54(), v45 = sub_100754324(), v42(v30, v34), (v45 & 1) != 0))
  {
    v46 = [v39 contentView];
    [v36 pageMarginInsets];
  }

  else
  {
    v46 = [v39 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v51 = v64;
  v52 = v61;
  [v46 setLayoutMargins:{top, left, bottom, right}];

  v53 = sub_10074ECC4();
  if (v53)
  {

    v54 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v54 && ([v54 isHidden] & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_18:
    v56 = v53 == 0;
    v57 = sub_1006459BC();
    [v57 setHidden:v56];

    goto LABEL_19;
  }

  v55 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v55 && ![v55 isHidden])
  {
    goto LABEL_18;
  }

LABEL_19:
  sub_100749A54();
  v58 = sub_100754324();
  v42(v30, v34);
  v39[OBJC_IVAR____TtC22SubscribePageExtension24ActionCollectionViewCell_isVertical] = (v58 & 1) == 0;
  if (v58)
  {
    v59 = 1;
  }

  else
  {
    v59 = 3;
  }

  [v52 setNumberOfLines:v59];
  [v39 setNeedsLayout];
  [v39 setNeedsLayout];

  return (*(v68 + 8))(v51, v69);
}

uint64_t sub_10032F0AC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v76 = a6;
  v79 = a4;
  v88 = a3;
  v75 = a2;
  v7 = sub_10000C518(&unk_100925520);
  __chkstk_darwin(v7 - 8);
  v86 = &v73 - v8;
  v9 = sub_10000C518(&unk_100925990);
  __chkstk_darwin(v9 - 8);
  v87 = &v73 - v10;
  v11 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v11 - 8);
  v85 = &v73 - v12;
  v13 = sub_10000C518(&unk_100925530);
  __chkstk_darwin(v13 - 8);
  v84 = &v73 - v14;
  v15 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v15 - 8);
  v83 = &v73 - v16;
  v17 = sub_10000C518(&qword_100933250);
  __chkstk_darwin(v17 - 8);
  v77 = &v73 - v18;
  v91 = sub_100749A94();
  v78 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100750304();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = (&v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_100751344();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v74 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_100751374();
  v82 = *(v92 - 8);
  __chkstk_darwin(v92);
  v93 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10000C518(&unk_100925370);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v73 - v30;
  v81 = sub_10000C518(&unk_1009400F0);
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v33 = &v73 - v32;
  sub_10000C824(a1, v95);
  sub_10000C518(&qword_1009242A0);
  sub_10074EFD4();
  result = swift_dynamicCast();
  if (result)
  {
    v73 = v94[0];
    (*(v29 + 16))(v31, v75, v28);
    sub_100752DF4();
    v75 = v33;
    sub_100752994();
    v35 = [v76 traitCollection];
    (*(v25 + 104))(v74, enum case for Separator.Position.bottom(_:), v24);
    *v23 = UIFontTextStyleBody;
    (*(v21 + 104))(v23, enum case for FontSource.textStyle(_:), v20);
    v96 = sub_100750B04();
    v97 = &protocol witness table for StaticDimension;
    sub_10000D134(v95);
    v94[3] = v20;
    v94[4] = &protocol witness table for FontSource;
    v36 = sub_10000D134(v94);
    (*(v21 + 16))(v36, v23, v20);
    v37 = UIFontTextStyleBody;
    sub_100750B14();
    (*(v21 + 8))(v23, v20);
    v38 = v93;
    sub_100751354();
    v39 = v90;
    sub_100749A44();
    sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
    v40 = v91;
    v41 = sub_100754324();
    v42 = *(v78 + 8);
    v42(v39, v40);
    v76 = v35;
    if (v41)
    {
      v43 = v82;
      v44 = v77;
      (*(v82 + 56))(v77, 1, 1, v92);
      v45 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_100349358(v44, &v46[v45], &qword_100933250);
      swift_endAccess();
      sub_100228B80();
      sub_10000C8CC(v44, &qword_100933250);
      v47 = v90;
      sub_100749A54();
      v48 = v91;
      LOBYTE(v45) = sub_100754324();
      v42(v47, v48);
      v49 = [v46 contentView];
      v50 = v49;
      if (v45)
      {
        [v49 layoutMargins];
        [v50 setLayoutMargins:?];
      }

      else
      {
        sub_100751304();
        sub_10000C888(v95, v96);
        sub_100750574();
        [v50 layoutMargins];
        [v50 setLayoutMargins:?];

        sub_10000C620(v95);
      }
    }

    else
    {
      v51 = v38;
      v43 = v82;
      v52 = v77;
      v53 = v92;
      (*(v82 + 16))(v77, v51, v92);
      (*(v43 + 56))(v52, 0, 1, v53);
      v54 = OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separator;
      v46 = v89;
      swift_beginAccess();
      sub_100349358(v52, &v46[v54], &qword_100933250);
      swift_endAccess();
      sub_100228B80();
      sub_10000C8CC(v52, &qword_100933250);
      v55 = [v46 contentView];
      [v55 layoutMargins];
      [v55 setLayoutMargins:?];

      v56 = v90;
      sub_100749A24();
      v57 = v91;
      v58 = sub_100754324();
      v42(v56, v57);
      v59 = v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
      v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v58 & 1;
      if ((v58 & 1) != v59)
      {
        v60 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_separatorView];
        if (v60)
        {
          v61 = 1.0;
          if (v58)
          {
            v61 = 0.0;
          }

          [v60 setAlpha:v61];
        }
      }
    }

    v62 = *&v46[OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView];
    v63 = sub_10000C518(&unk_10092EEA0);
    v64 = v83;
    (*(*(v63 - 8) + 56))(v83, 1, 1, v63);
    v65 = sub_100742E24();
    v66 = v84;
    (*(*(v65 - 8) + 56))(v84, 1, 1, v65);
    v67 = sub_100745E94();
    v68 = v85;
    (*(*(v67 - 8) + 56))(v85, 1, 1, v67);
    v69 = sub_10000C518(&unk_100925560);
    v70 = v87;
    (*(*(v69 - 8) + 56))(v87, 1, 1, v69);
    v71 = sub_10074F8B4();
    v72 = v86;
    (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
    sub_100656038(v73, v62, v64, v88, 0, 0, v66, v68, v72, v70);
    sub_10000C8CC(v72, &unk_100925520);
    v62[OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1001CE71C();
    [v62 setNeedsLayout];
    sub_10000C8CC(v70, &unk_100925990);
    sub_10000C8CC(v68, &unk_1009259A0);
    sub_10000C8CC(v66, &unk_100925530);
    sub_10000C8CC(v64, &unk_100925540);
    [v46 setNeedsLayout];

    (*(v43 + 8))(v93, v92);
    return (*(v80 + 8))(v75, v81);
  }

  return result;
}

uint64_t sub_10032FE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000C518(&unk_100925370);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000C518(&unk_1009400F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000C824(a1, v28);
  sub_10000C518(&qword_1009242A0);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_100752DF4();
    sub_100752994();
    v26(v21, v19, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_100330074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v25 = a6;
  v10 = sub_10000C518(&unk_100925370);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = sub_10000C518(&unk_1009400F0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - v16;
  sub_10000C824(a1, v26);
  sub_10000C518(&qword_1009242A0);
  sub_100743FA4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v11 + 16))(v13, a2, v10);
    sub_100752DF4();
    sub_100752994();
    v19 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

    sub_100111078(v19);

    v20 = v25;
    v21 = [v25 snapshotPageTraitEnvironment];
    *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = v21;
    swift_unknownObjectRelease();
    v22 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout);
    [v20 pageMarginInsets];
    [v22 setSectionInset:?];

    sub_100110F6C(v23);

    return (*(v15 + 8))(v17, v14);
  }

  return result;
}

uint64_t sub_100330308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22 = a5;
  v23 = a6;
  v20 = a3;
  v21 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&unk_100925370);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = sub_10000C518(&unk_1009400F0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - v15;
  sub_10000C824(a1, v25);
  sub_10000C518(&qword_1009242A0);
  sub_1007445B4();
  result = swift_dynamicCast();
  if (result)
  {
    v26 = v24;
    (*(v10 + 16))(v12, a2, v9);
    sub_100752DF4();
    sub_100752994();
    v18 = sub_1003495BC(&qword_100933288, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v18 + 56))(&v26, v16, v20, v21, v22, v23, ObjectType, v18);
    (*(v14 + 8))(v16, v13);
  }

  return result;
}

uint64_t sub_10033056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v46 = a2;
  v47 = a6;
  v49 = a3;
  ObjectType = swift_getObjectType();
  v9 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v44 - v16);
  v18 = sub_10000C518(&qword_100929360);
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v48 = &v44 - v19;
  v20 = sub_10000C518(&unk_100925370);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v44 - v22;
  v24 = sub_10000C518(&unk_1009400F0);
  v50 = *(v24 - 8);
  v51 = v24;
  __chkstk_darwin(v24);
  v26 = &v44 - v25;
  sub_10000C824(a1, v57);
  sub_10000C518(&qword_1009242A0);
  sub_1007447D4();
  result = swift_dynamicCast();
  if (result)
  {
    (*(v21 + 16))(v23, v46, v20);
    sub_100752DF4();
    sub_100752994();
    v28 = [v47 snapshotPageTraitEnvironment];
    *&v7[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v7 setNeedsLayout];
    swift_unknownObjectRelease();
    sub_1007447C4();
    v29 = sub_1007453B4();

    v45 = v26;
    if (v29)
    {
      if (qword_100921BB8 != -1)
      {
        swift_once();
      }

      v30 = sub_10000D0FC(v12, qword_100982C08);
      sub_100121090(v30, v17);
      v31 = *v17;
      v32 = v29;

      *v17 = v29;
      sub_100121090(v17, v14);
      sub_10000C518(&unk_100923AE0);
      v33 = v48;
      sub_1007434A4();

      sub_10024144C(v17);
    }

    else
    {
      if (qword_100921BB8 != -1)
      {
        swift_once();
      }

      v34 = sub_10000D0FC(v12, qword_100982C08);
      sub_100121090(v34, v17);
      sub_10000C518(&unk_100923AE0);
      v33 = v48;
      sub_1007434A4();
    }

    v35 = v53;
    v36 = sub_1007447C4();
    v37 = v52;
    (*(v52 + 16))(v11, v33, v35);
    (*(v37 + 56))(v11, 0, 1, v35);
    sub_10013C000(v36, v11, v49);

    sub_10000C8CC(v11, &qword_100935130);
    v38 = sub_1007447B4();
    if (!v38)
    {
      v38 = [objc_opt_self() clearColor];
    }

    v39 = v38;
    v40 = ObjectType;
    v56.receiver = v7;
    v56.super_class = ObjectType;
    objc_msgSendSuper2(&v56, "setBackgroundColor:", v38);
    v41 = *&v7[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
    v55.receiver = v7;
    v55.super_class = v40;
    v42 = v41;
    v43 = objc_msgSendSuper2(&v55, "backgroundColor");
    sub_100743224();

    [v7 setNeedsLayout];

    (*(v37 + 8))(v33, v35);
    return (*(v50 + 8))(v45, v51);
  }

  return result;
}

uint64_t sub_100330B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v54 = a6;
  v65 = a3;
  v53 = a2;
  v7 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v7 - 8);
  v62 = &v51 - v8;
  v60 = sub_10074C3E4();
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10000C518(&unk_100925560);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v51 - v10;
  v11 = sub_10000C518(&unk_1009259B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = sub_10074D734();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_10000C518(&unk_100925370);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v51 - v23;
  v25 = sub_10000C518(&unk_1009400F0);
  v63 = *(v25 - 8);
  v64 = v25;
  __chkstk_darwin(v25);
  v27 = &v51 - v26;
  sub_10000C824(a1, v67);
  sub_10000C518(&qword_1009242A0);
  sub_100744C54();
  result = swift_dynamicCast();
  if (result)
  {
    v51 = v13;
    v29 = v66;
    (*(v22 + 16))(v24, v53, v21);
    sub_100752DF4();
    sub_100752994();
    v30 = v55;
    v31 = [v55 contentView];
    [v54 pageMarginInsets];
    [v31 setLayoutMargins:?];

    v54 = v29;
    v32 = sub_100744BF4();
    v33 = v30;
    v52 = v27;
    if (v32)
    {
      if (v32 >> 62)
      {
        v37 = v32;
        v38 = sub_100754664();
        v32 = v37;
        if (v38)
        {
          goto LABEL_5;
        }
      }

      else if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v34 = v32;
        sub_1007442C4();
        sub_100752764();
        sub_100752D34();
        v35 = v67[0];
        v36 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v36 setHidden:0];
        *&v36[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_impressionableArtworks] = v34;

        *&v36[OBJC_IVAR____TtC22SubscribePageExtension12IconGridView_artworkLoader] = v35;

        sub_10071A850(v34, v35);

LABEL_9:
        v55 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
        v39 = sub_100744C34();
        v40 = sub_100744C14();
        v41 = sub_100744C04();
        (*(v15 + 104))(v17, enum case for OfferButtonPresenterViewAlignment.center(_:), v14);
        (*(v15 + 56))(v51, 1, 1, v14);
        sub_1003495BC(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment);
        sub_10074A9C4();
        v42 = sub_10000C518(&unk_10092EEA0);
        (*(*(v42 - 8) + 56))(v20, 0, 1, v42);
        v43 = v56;
        v44 = v60;
        (*(v56 + 104))(v57, enum case for OfferButtonSubtitlePosition.above(_:), v60);
        (*(v43 + 56))(v62, 1, 1, v44);
        sub_1003495BC(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
        v45 = v58;
        sub_10074A9C4();
        sub_10015DE40(v39, v40, v41, v20, v45, v65, 0, 0);

        (*(v59 + 8))(v45, v61);
        sub_10000C8CC(v20, &unk_100925540);
        sub_10074B294();
        sub_100752764();
        sub_100752D34();
        v46 = v67[0];
        sub_100744C24();
        sub_100744C44();
        v47 = sub_10074B1F4();
        swift_allocObject();
        v48 = v46;
        v49 = sub_10074B1D4();
        sub_1003495BC(&unk_1009332C8, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        sub_10074B1E4();
        v67[3] = v47;
        v67[0] = v49;
        v50 = OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_10006644C(v67, &v33[v50], &unk_100923520);
        swift_endAccess();
        [v33 setNeedsLayout];

        return (*(v63 + 8))(v52, v64);
      }
    }

    [*&v30[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_10033152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_10000C518(&unk_100925370);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v39 - v14;
  v16 = sub_10000C518(&unk_1009400F0);
  v40 = *(v16 - 8);
  v41 = v16;
  __chkstk_darwin(v16);
  v18 = v39 - v17;
  sub_10000C824(a1, v43);
  sub_10000C518(&qword_1009242A0);
  sub_100741D54();
  result = swift_dynamicCast();
  if (result)
  {
    v20 = v42;
    (*(v13 + 16))(v15, a2, v12);
    sub_100752DF4();
    sub_100752994();
    v21 = v39[1];
    sub_1006FF748(v20, a3, a4, a5, a6);
    sub_100741D44();
    v22 = sub_10074EF34();
    v24 = v23;

    if (v24)
    {
      v44._countAndFlagsBits = 0x465F4E4F5F444441;
      v44._object = 0xEE005050415F524FLL;
      v45._object = 0x8000000100777750;
      v45._countAndFlagsBits = 0xD000000000000031;
      sub_1007458B4(v44, v45);
      sub_10000C518(&unk_100927770);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1007A5A00;
      *(v25 + 56) = &type metadata for String;
      *(v25 + 64) = sub_1000DD048();
      *(v25 + 32) = v22;
      *(v25 + 40) = v24;

      sub_1007530B4();

      v26 = objc_allocWithZone(NSMutableAttributedString);
      v27 = sub_100753064();
      v28 = [v26 initWithString:v27];

      v29 = objc_allocWithZone(NSString);
      v30 = sub_100753064();

      v31 = [v29 initWithString:v30];

      v32 = sub_100753064();

      v33 = [v31 rangeOfString:v32 options:4];
      v35 = v34;

      v36 = [v21 tintColor];
      v43[0] = v36;
      sub_10000C518(&unk_100935100);
      v37 = sub_100754274();

      [v28 addAttribute:NSForegroundColorAttributeName value:v37 range:{v33, v35}];
      swift_unknownObjectRelease();
      v38 = *(*&v21[OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_subtitleLabel);
      if (!v38)
      {

        return (*(v40 + 8))(v18, v41);
      }

      [v38 setAttributedText:v28];
    }

    return (*(v40 + 8))(v18, v41);
  }

  return result;
}

uint64_t sub_1003319CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v26 = a8;
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v12 = sub_10000C518(&unk_100925370);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - v14;
  v16 = sub_10000C518(&unk_1009400F0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v22 - v18;
  sub_10000C824(a1, v28);
  sub_10000C518(&qword_1009242A0);
  a7(0);
  result = swift_dynamicCast();
  if (result)
  {
    v21 = v27;
    (*(v13 + 16))(v15, a2, v12);
    sub_100752DF4();
    sub_100752994();
    v26(v21, a3, v23, v24, v25);

    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

uint64_t sub_100331BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v35 = a4;
  v36 = a5;
  v33 = a2;
  v34 = a3;
  v38 = a1;
  v10 = sub_10000C518(&unk_100925370);
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v28[1] = swift_getAssociatedTypeWitness();
  v13 = sub_100752984();
  v29 = *(v13 - 8);
  v30 = v13;
  __chkstk_darwin(v13);
  v15 = v28 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = sub_100754284();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v28 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v22);
  v24 = v28 - v23;
  sub_10000C824(v38, v39);
  sub_10000C518(&qword_1009242A0);
  v25 = swift_dynamicCast();
  v26 = *(v21 + 56);
  if (v25)
  {
    v26(v20, 0, 1, AssociatedTypeWitness);
    (*(v21 + 32))(v24, v20, AssociatedTypeWitness);
    (*(v31 + 16))(v12, v33, v32);
    sub_100752994();
    (*(a8 + 56))(v24, v15, v34, v35, v36, v37, a7, a8);
    (*(v29 + 8))(v15, v30);
    return (*(v21 + 8))(v24, AssociatedTypeWitness);
  }

  else
  {
    v26(v20, 1, 1, AssociatedTypeWitness);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_100331FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100332020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v23 = a2;
  v20 = a1;
  v22 = sub_10000C518(&unk_100925370);
  v7 = *(v22 - 8);
  __chkstk_darwin(v22);
  v9 = &v19 - v8;
  swift_getAssociatedTypeWitness();
  v21 = sub_100752984();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v19 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v19 - v15;
  sub_10000C824(v20, v25);
  sub_10000C518(&qword_1009242A0);
  swift_dynamicCast();
  (*(v7 + 16))(v9, v23, v22);
  sub_100752994();
  v17 = (*(a5 + 64))(v16, v12, v24, a4, a5);
  (*(v10 + 8))(v12, v21);
  (*(v14 + 8))(v16, AssociatedTypeWitness);
  return v17;
}

uint64_t sub_1003322F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000C518(&unk_1009400F0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100752DF4();
  sub_100752994();
  (*(v8 + 8))(v11, v7);
  return 0;
}

double sub_100332480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003325D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_10033264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_10033279C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100332818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003328CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100332968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003329E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100332B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100332BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100332C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100332D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100332D7C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100925340);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000C518(&qword_10092FA68);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100920978 != -1)
  {
    swift_once();
  }

  v15 = sub_1007504F4();
  sub_10000D0FC(v15, qword_10097FAF8);
  sub_1007504C4();
  (*(v11 + 8))(v14, v10);
  return a1;
}

double sub_100332FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_10033306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100333108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003331FC(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_10000C518(&qword_100925340);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24[-v14];
  v16 = sub_10000C518(&qword_10092FA68);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v24[-v18];
  sub_10000C824(a1, v24);
  sub_10000C518(&qword_1009242A0);
  sub_100742954();
  swift_dynamicCast();
  (*(v13 + 16))(v15, a4, v12);
  sub_100752DF4();
  sub_100752EB4();
  v20 = v25;
  ObjectType = swift_getObjectType();
  v22 = sub_100198620(a2, v20, a7, v7, ObjectType);
  (*(v17 + 8))(v19, v16);

  return v22;
}

double sub_10033346C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100925340);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v8 = sub_10000C518(&qword_10092FA68);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  sub_100752DF4();
  sub_100752EB4();
  sub_10074FEA4();
  sub_10074FE74();
  v14 = v13;
  (*(v9 + 8))(v12, v8);
  return v14;
}

double sub_100333684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100333738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003337D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100333850(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000C518(&qword_100925340);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = sub_10000C518(&qword_10092FA68);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v20 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_100752DF4();
  sub_100752EB4();
  sub_1004E226C(a7);
  (*(v15 + 8))(v18, v14);
  return a1;
}

double sub_100333A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10000C518(&qword_100925340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v13 = sub_10000C518(&qword_10092FA68);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v21 - v16;
  (*(v10 + 16))(v12, a3, v9, v15);
  sub_100752DF4();
  sub_100752EB4();
  sub_10027D010(a2, a6);
  v19 = v18;
  (*(v14 + 8))(v17, v13);
  return v19;
}

double sub_100333C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100333CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100333D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100333E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100333EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100333F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100334028(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = sub_10000C518(&unk_100933230);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13[-v10];
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100752994();
  sub_100168504();
  sub_100752954();
  (*(v8 + 8))(v11, v7);
  return 3;
}

void sub_100334248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100925340);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  v8 = sub_10000C518(&qword_10092FA68);
  v9 = __chkstk_darwin(v8 - 8);
  (*(v5 + 16))(v7, a3, v4, v9);
  sub_100752DF4();
  sub_100752EB4();
  sub_100754644();
  __break(1u);
}

double sub_1003343B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&qword_100925340);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_10000C518(&qword_10092FA68);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - v11;
  (*(v5 + 16))(v7, a3, v4, v10);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100920960 != -1)
  {
    swift_once();
  }

  v13 = sub_100747674();
  sub_10000D0FC(v13, qword_10097FA38);
  sub_100747694();
  sub_1003495BC(&qword_100933258, &type metadata accessor for FlowcaseItemLayout);
  sub_100750D34();
  if (qword_100920968 != -1)
  {
    swift_once();
  }

  v14 = sub_100751374();
  sub_10000D0FC(v14, qword_10097FA50);
  sub_100753BD4();
  v16 = v15;
  (*(v9 + 8))(v12, v8);
  return v16;
}

double sub_1003346C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100334778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100334814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100334890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100334944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_1003349E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100334A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  v31 = a6;
  v29 = a4;
  v30 = a5;
  v27 = a3;
  v28 = a2;
  v11 = sub_10000C518(&qword_100925340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = sub_10000C518(&qword_100933270);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = sub_100742BB4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C824(a1, v32);
  sub_10000C518(&qword_1009242A0);
  swift_dynamicCast();
  (*(v12 + 16))(v14, v27, v11);
  sub_100752EB4();
  v23 = sub_1003495BC(&qword_100933278, type metadata accessor for AnnotationCollectionViewCell);
  v24 = (*(v23 + 48))(v22, v28, v18, v29, v30, v31, a7, a8);
  (*(v16 + 8))(v18, v15);
  (*(v20 + 8))(v22, v19);
  return v24;
}

double sub_100334D6C(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10000C518(&qword_100925340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-v9];
  v11 = sub_10000C518(&qword_10092FA68);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  sub_10000C824(a1, v17);
  sub_10000C518(&qword_1009242A0);
  sub_100745324();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a4, v7);
  sub_100752DF4();
  sub_100752EB4();
  v15 = sub_1003C5678(a2);
  (*(v12 + 8))(v14, v11);

  return v15;
}

double sub_100334FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003350AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003351C4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v13 = sub_10000C518(&qword_100925340);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  v17 = sub_10000C518(&qword_10092FA68);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v23[-v19];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0);
  sub_100743FA4();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a5, v13);
  sub_100752DF4();
  sub_100752EB4();
  v21 = sub_1001130AC(v24, 0, 0, a8, 0.0, 0.0, a2, a3, a2);
  (*(v18 + 8))(v20, v17);

  return v21;
}

double sub_1003354B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100335568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_1003356B4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29[0] = a11;
  v17 = sub_10000C518(&qword_100925340);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v29 - v19;
  v21 = sub_10000C518(&qword_10092FA68);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v29 - v23;
  sub_10000C824(a1, v30);
  sub_10000C518(&qword_1009242A0);
  sub_1007428B4();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a5, v17);
  sub_100752DF4();
  sub_100752EB4();
  v25 = v31;
  ObjectType = swift_getObjectType();
  v27 = (v29[0])(v25, a8, a6, v29[1], ObjectType, a2, a3);
  (*(v22 + 8))(v24, v21);

  return v27;
}

double sub_10033593C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10000C518(&qword_100925340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  v15 = sub_10000C518(&qword_10092FA68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v20[-v17];
  sub_10000C824(a1, v20);
  sub_10000C518(&qword_1009242A0);
  sub_100742924();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  sub_100752DF4();
  sub_100752EB4();
  sub_1004ABD20(v21, a7);
  (*(v16 + 8))(v18, v15);

  return a2;
}

double sub_100335B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100335C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100335D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_100335E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100335EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100335F2C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = sub_10000C518(&qword_100925340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23[-v13];
  v15 = sub_10000C518(&qword_10092FA68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v23[-v17];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0);
  sub_100742954();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a4, v11);
  sub_100752DF4();
  sub_100752EB4();
  v19 = v24;
  ObjectType = swift_getObjectType();
  v21 = sub_1005867E4(a2, v19, a7, ObjectType);
  (*(v16 + 8))(v18, v15);

  return v21;
}

double sub_1003361EC(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100925340);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - v8;
  v10 = sub_10000C518(&qword_10092FA68);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - v13;
  (*(v7 + 16))(v9, a4, v6, v12);
  sub_100752DF4();
  sub_100752EB4();
  if (qword_100921A40 != -1)
  {
    swift_once();
  }

  swift_getObjectType();
  type metadata accessor for VideoCardView();
  v15 = sub_1005FA0C8(a1);
  (*(v11 + 8))(v14, v10);
  return v15;
}

double sub_100336448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003364FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100336598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100336634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10032E454(a1, a2, a3, a4, a5, a6, a7, WitnessTable, a8, a9);
}

uint64_t sub_1003366E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100331BEC(a1, a2, a3, a4, a5, a6, a7, WitnessTable);
}

uint64_t sub_100336784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_100332020(a1, a2, a3, a4, WitnessTable);
}

double sub_100336800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = sub_10000C518(&qword_100925340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-v11];
  v13 = sub_10000C518(&qword_10092FA68);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19[-v15];
  sub_10000C824(a1, v19);
  sub_10000C518(&qword_1009242A0);
  sub_10074F474();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a3, v9);
  sub_100752DF4();
  sub_100752EB4();
  v17 = sub_10044B250(v20, a6, 1);
  (*(v14 + 8))(v16, v13);

  return v17;
}

double sub_100336A2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_10000C518(&qword_100925340);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = sub_10000C518(&qword_10092FA68);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v22 - v17;
  (*(v11 + 16))(v13, a4, v10, v16);
  sub_100752DF4();
  sub_100752EB4();
  v19 = [a7 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v20 = sub_10032A640(v19, a1);
  swift_unknownObjectRelease();
  (*(v15 + 8))(v18, v14);
  return v20;
}

uint64_t sub_100336C38(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100925370);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - v5;
  v7 = sub_10000C518(&unk_1009400F0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v4 + 16))(v6, a2, v3, v9);
  sub_100752DF4();
  sub_100752994();
  (*(v8 + 8))(v11, v7);
  return 3;
}

double sub_100336DC4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000C518(&qword_100925340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23[-v11];
  v13 = sub_10000C518(&qword_10092FA68);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23[-v15];
  sub_10000C824(a1, v23);
  sub_10000C518(&qword_1009242A0);
  sub_100749984();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_100752DF4();
  sub_100752EB4();
  v17 = sub_100749964();
  if (v18)
  {
    v19 = sub_100749974();
    if (v19 >> 62)
    {
      v20 = sub_100754664();
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v20 = v17;
  }

  v21 = [a5 traitCollection];
  sub_100677794(v20, v21);

  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_100337040(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000C518(&qword_100925340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22[-v9];
  v11 = sub_10000C518(&qword_10092FA68);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22[-v13];
  sub_10000C824(a1, v22);
  sub_10000C518(&qword_1009242A0);
  sub_100746DB4();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_100752DF4();
  sub_100752EB4();
  v15 = sub_100746D84();
  v17 = v16;
  v18 = sub_100746DA4();
  v19 = sub_100746D94();
  swift_getObjectType();
  v20 = sub_1001BF6CC(v15, v17, v18, v19, a4);

  (*(v12 + 8))(v14, v11);

  return v20;
}

double sub_1003372B4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_10000C518(&qword_100925340);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - v12;
  v14 = sub_10000C518(&qword_10092FA68);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  sub_10000C824(a1, v24);
  sub_10000C518(&qword_1009242A0);
  sub_100744424();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_100752DF4();
  sub_100752EB4();
  v18 = v24[5];
  sub_10000C518(&qword_100924B88);
  sub_100752764();
  sub_100752D34();
  v23[1] = v18;
  sub_100742DE4();

  v19 = v24[0];
  if ((~v24[0] & 0xF000000000000007) != 0)
  {
    v20 = v24[1];
  }

  else
  {

    v20 = 0;
    v19 = v18;
  }

  v21 = sub_1001910D0(v19, v20, a6, a3);
  sub_100079128(v19, v20);
  (*(v15 + 8))(v17, v14);

  return v21;
}

double sub_10033755C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_100754724();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1007504F4();
  v81 = *(v83 - 8);
  __chkstk_darwin(v83);
  v93 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v89 = &v81 - v13;
  v14 = sub_10000C518(&qword_100925340);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v81 - v16;
  v18 = sub_10000C518(&qword_10092FA68);
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v20 = &v81 - v19;
  sub_10000C824(a1, &v106);
  sub_10000C518(&qword_1009242A0);
  sub_10074E934();
  swift_dynamicCast();
  (*(v15 + 16))(v17, a2, v14);
  sub_100752DF4();
  v90 = v20;
  sub_100752EB4();
  v21 = v105;
  [a5 pageMarginInsets];
  v110._object = 0x800000010076DF60;
  v110._countAndFlagsBits = 0xD000000000000010;
  v111._countAndFlagsBits = 0;
  v111._object = 0xE000000000000000;
  v22 = sub_1007458B4(v110, v111);
  v24 = sub_10017093C(v22, v23);
  if (v24 > 2)
  {
    if (v24 - 3 < 2)
    {
      if (qword_100920390 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10097DE88;
      goto LABEL_21;
    }

    if (v24 == 5)
    {
      if (qword_100920398 != -1)
      {
        swift_once();
      }

      v25 = &xmmword_10097DEE0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v24)
  {
LABEL_15:
    if (qword_100920378 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10097DD80;
    goto LABEL_21;
  }

  if (v24 == 1)
  {
    if (qword_100920380 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10097DDD8;
  }

  else
  {
    if (qword_100920388 != -1)
    {
      swift_once();
    }

    v25 = &xmmword_10097DE30;
  }

LABEL_21:
  v26 = v25[4];
  *&v108[16] = v25[3];
  *&v108[32] = v26;
  v109 = *(v25 + 10);
  v27 = v25[2];
  v107 = v25[1];
  *v108 = v27;
  v106 = *v25;
  v28 = *&v108[40];
  v29 = v109;
  v97 = *&v108[24];
  v98 = *&v108[8];
  v30 = *(&v107 + 1);
  v31 = v27;
  v33 = *(&v106 + 1);
  v32 = v107;
  v34 = v106;
  sub_100170CF0(&v106, v102);
  v102[0] = __PAIR128__(v33, v34);
  v102[1] = __PAIR128__(v30, v32);
  *&v103[0] = v31;
  *(v103 + 8) = v98;
  *(&v103[1] + 8) = v97;
  *(&v103[2] + 1) = v28;
  v104 = v29;
  v109 = v29;
  v106 = __PAIR128__(v33, v34);
  v107 = __PAIR128__(v30, v32);
  *v108 = v103[0];
  *&v108[16] = v103[1];
  *&v108[32] = v103[2];
  [a5 pageMarginInsets];
  v35 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v96 = sub_100170988(&v106);

  *&v97 = v21;
  sub_10074E904();
  v37 = v36;
  v38 = sub_100016C60(0, &qword_100923AB0);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v94 = sub_100750534();
  v39 = sub_10000D0FC(v94, qword_10097DF38);
  *&v98 = a5;
  v40 = [a5 traitCollection];
  v88 = v39;
  v41 = sub_100753C14();

  sub_10000C518(&unk_100929CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v43 = qword_100920138;
  v44 = NSParagraphStyleAttributeName;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = [qword_10097D250 paragraphStyleWithBaseWritingDirection:-1];
  v46 = sub_100016C60(0, &qword_10092A248);
  *(inited + 40) = v45;
  *(inited + 64) = v46;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v38;
  *(inited + 80) = v41;
  v47 = NSFontAttributeName;
  v87 = v41;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510);
  swift_arrayDestroy();
  v48 = objc_allocWithZone(NSMutableAttributedString);
  v49 = sub_100753064();
  type metadata accessor for Key(0);
  sub_1003495BC(&qword_1009276F0, type metadata accessor for Key);
  v50.super.isa = sub_100752F34().super.isa;
  v86 = v37;
  isa = v50.super.isa;

  v52 = [v48 initWithString:v49 attributes:isa];

  v95 = v52;
  if (v96)
  {
    v53 = v96;
    sub_100413A18(_swiftEmptyArrayStorage);
    v54 = objc_allocWithZone(NSAttributedString);
    v55 = sub_100753064();
    v56 = sub_100752F34().super.isa;

    v57 = [v54 initWithString:v55 attributes:v56];

    v58 = v95;
    [v58 appendAttributedString:v57];
    v59 = [objc_allocWithZone(NSTextAttachment) init];
    [v59 setImage:v53];
    [(UIImage *)v53 size];
    [v59 setBounds:{0.0, -v28, v60, v61}];
    v62 = [objc_opt_self() attributedStringWithAttachment:v59];
    [v58 appendAttributedString:v62];

    sub_100170D28(v102);
  }

  else
  {

    sub_100170D28(v102);
  }

  v63 = v94;
  v64 = *(v94 - 8);
  v65 = v89;
  (*(v64 + 16))(v89, v88, v94);
  (*(v64 + 56))(v65, 0, 1, v63);
  v66 = sub_10074F3F4();
  v100 = v66;
  v67 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
  v101 = v67;
  v68 = sub_10000D134(v99);
  v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v70 = *(*(v66 - 8) + 104);
  v70(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_10074FC74();
  sub_10000C620(v99);
  sub_10074CCA4();
  sub_10000C8CC(v65, &unk_100928A40);
  if (qword_1009203C8 != -1)
  {
    swift_once();
  }

  v71 = sub_100750B04();
  sub_10000D0FC(v71, qword_10097DF68);
  sub_100750584();
  if (qword_1009203D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v71, qword_10097DF80);
  sub_100750554();
  v89 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v89 setMaximumNumberOfLines:0];
  sub_10074E914();
  if (v72)
  {
    if (qword_1009203C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v94, qword_10097DF50);
    v100 = v66;
    v101 = v67;
    v73 = sub_10000D134(v99);
    v70(v73, v69, v66);
    sub_10074FC74();
    sub_10000C620(v99);
    v74 = v98;
    sub_10074CCB4();

    if (qword_1009203D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v71, qword_10097DF98);
    sub_100750584();
    v75 = v74;
    v76 = v93;
    v77 = &stru_1008F2000;
    if (qword_1009203E0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v71, qword_10097DFB0);
    sub_100750554();
  }

  else
  {
    v75 = v98;
    v76 = v93;
    v77 = &stru_1008F2000;
  }

  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    if ((sub_10074E8F4() & 1) == 0)
    {
      [v75 v77[109].name];
      [v75 v77[109].name];
    }

    sub_1007504C4();
    v78 = v95;
    if (qword_1009203E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v71, qword_10097DFC8);
    v79 = v82;
    sub_1007502D4();
    sub_100750564();

    (*(v84 + 8))(v79, v85);
    (*(v81 + 8))(v76, v83);
    (*(v91 + 8))(v90, v92);
  }

  else
  {

    (*(v91 + 8))(v90, v92);
  }

  return a3;
}

double sub_100338520(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000C518(&qword_100925340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - v9;
  v28 = sub_10000C518(&qword_10092FA68);
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v27 - v12;
  sub_10000C824(a1, &v30);
  sub_10000C518(&qword_1009242A0);
  sub_10074ECD4();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_100752DF4();
  sub_100752EB4();
  v14 = v33;
  swift_getObjectType();
  v15 = [a4 traitCollection];
  v16 = [v15 horizontalSizeClass];

  if (v16 == 1)
  {
    [a4 pageMarginInsets];
  }

  v29 = v14;

  sub_10000C518(&qword_1009253C0);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v30, *(&v31 + 1));
    v17 = sub_10074CA24();
    sub_10000C620(&v30);
  }

  else
  {
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    sub_10000C8CC(&v30, &qword_1009253C8);
    v17 = 0;
  }

  v18 = sub_10074ECB4();
  v20 = v19;
  v21 = sub_10074ECC4();
  if (v21)
  {
  }

  v22 = sub_100321BB0(a4);
  if (qword_100921B28 != -1)
  {
    swift_once();
  }

  v23 = sub_100743CB4();
  v24 = sub_10000D0FC(v23, qword_100982A80);
  v25 = sub_100647CF4(v24, a4, v18, v20, v21 != 0, v22, v17 & 1);

  (*(v11 + 8))(v13, v28);

  return v25;
}

double sub_100338920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_10000C518(&qword_100925340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-v11];
  v13 = sub_10000C518(&qword_10092FA68);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24[-v15];
  sub_10000C824(a1, v24);
  sub_10000C518(&qword_1009242A0);
  sub_1007428B4();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_100752DF4();
  sub_100752EB4();
  v17 = v25;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = v19;
  v21 = type metadata accessor for AppEventView();
  v22 = sub_100194FE8(v20, v17, a5, a3, v21, ObjectType);
  (*(v14 + 8))(v16, v13);

  return v22;
}

double sub_100338B68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v40 = sub_100744D64();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100744D84();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074CD14();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925340);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - v15;
  v39 = sub_10000C518(&qword_10092FA68);
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v18 = &v36 - v17;
  sub_10000C824(a1, v51);
  sub_10000C518(&qword_1009242A0);
  sub_10074F524();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_100752DF4();
  v36 = v18;
  sub_100752EB4();
  sub_10074F514();
  v19 = sub_10074F504();
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v20 = sub_100750534();
  sub_10000D0FC(v20, qword_100980CD8);
  v45 = a4;
  v21 = [a4 traitCollection];
  v22 = sub_100753C14();

  v23 = sub_10074F3F4();
  v51[3] = v23;
  v51[4] = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
  v24 = sub_10000D134(v51);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v25 = v22;
  sub_10074FC74();
  sub_10000C620(v51);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v10 + 8))(v12, v9);
  if ((v19 & 2) != 0)
  {
    if (qword_100920318 != -1)
    {
      swift_once();
    }

    [qword_10097DC60 size];
    v26 = sub_100750F34();
    swift_allocObject();
    v27 = sub_100750F14();
    *(&v49 + 1) = v26;
    v50 = &protocol witness table for LayoutViewPlaceholder;
    *&v48 = v27;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
  }

  v28 = v45;
  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_10000D0FC(v40, qword_10097DC48);
  (*(v38 + 16))(v41, v30, v29);
  sub_10000C824(v51, v47);
  sub_1000CD5F0(&v48, v46);
  v31 = v42;
  sub_100744D74();
  [v28 pageMarginInsets];
  sub_100753BA4();
  sub_1003495BC(&qword_1009296E8, &type metadata accessor for FootnoteLayout);
  v32 = v44;
  sub_100750404();
  sub_100753BC4();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_10000C620(v51);
  (*(v37 + 8))(v36, v39);
  sub_10000C8CC(&v48, &unk_100928A00);

  return v34;
}

uint64_t sub_100339308(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = sub_10000C518(&qword_100925340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v35 - v13;
  v15 = sub_10000C518(&unk_100933240);
  v38 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v35 - v16;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0);
  sub_10074F984();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752EB4();
  v18 = aBlock[6];
  sub_100168504();
  v39 = v15;
  v37 = v17;
  sub_100752E84();
  if (LOBYTE(aBlock[0]) == 2)
  {
    v36 = sub_10074F8D4();
  }

  else
  {
    v36 = LOBYTE(aBlock[0]);
  }

  v19 = sub_10074F914();
  v35[1] = swift_getObjectType();
  v20 = [a6 traitCollection];
  v35[0] = v18;
  v21 = v20;
  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v19];
  v23 = [v19 length];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  *(v24 + 32) = v22;
  *(v24 + 40) = 1;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1002B1424;
  *(v25 + 24) = v24;
  aBlock[4] = sub_1002B1408;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100047044;
  aBlock[3] = &unk_100871998;
  v26 = _Block_copy(aBlock);
  v27 = v21;
  v28 = v22;

  [v19 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v30 = v28;
    [a6 pageMarginInsets];
    sub_1002D8C5C(v28, v36 & 1, a6, v31, v32, v33, v34, a3, a4);

    sub_100353C14(v35[0], a6);
    (*(v38 + 8))(v37, v39);
  }

  return result;
}

double sub_100339770(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v7 - 8);
  v47 = v46 - v8;
  v9 = sub_1007504F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925340);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v46 - v15;
  v17 = sub_10000C518(&qword_10092FA68);
  v49 = *(v17 - 8);
  v50 = v17;
  __chkstk_darwin(v17);
  v19 = v46 - v18;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0);
  sub_100743644();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_100752DF4();
  v48 = v19;
  sub_100752EB4();
  if ((sub_1007435E4() & 1) == 0)
  {
    [a4 pageMarginInsets];
  }

  if (sub_100743634())
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    (*(v10 + 8))(v12, v9);
    sub_1007435E4();
  }

  v20 = sub_100743604();
  v21 = [v20 length];

  if (v21 >= 1)
  {
    sub_100743614();
    if (v22)
    {
      if (qword_1009213F8 != -1)
      {
        swift_once();
      }

      v23 = sub_100750534();
      sub_10000D0FC(v23, qword_100981920);
      v24 = sub_10074F3F4();
      v52 = v24;
      v53 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
      v25 = sub_10000D134(aBlock);
      (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
      sub_10074FC74();
      sub_10000C620(aBlock);
      sub_10074CCB4();
    }

    v26 = sub_100743604();
    v46[1] = a4;
    v27 = [a4 traitCollection];
    v28 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v26];
    v29 = [v26 length];
    v30 = swift_allocObject();
    *(v30 + 16) = 0;
    *(v30 + 24) = v27;
    *(v30 + 32) = v28;
    *(v30 + 40) = 1;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1002B1424;
    *(v31 + 24) = v30;
    v53 = sub_1002B1408;
    v54 = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v52 = &unk_100871A38;
    v32 = _Block_copy(aBlock);
    v33 = v27;
    v34 = v28;

    [v26 enumerateAttributesInRange:0 options:v29 usingBlock:{0x100000, v32}];

    _Block_release(v32);
    LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

    if (v33)
    {
      __break(1u);
    }

    else
    {
      v35 = qword_1009213F0;
      v26 = v34;
      if (v35 == -1)
      {
LABEL_12:
        v36 = sub_100750534();
        v37 = sub_10000D0FC(v36, qword_100981908);
        v38 = *(v36 - 8);
        v39 = v47;
        (*(v38 + 16))(v47, v37, v36);
        (*(v38 + 56))(v39, 0, 1, v36);
        v40 = sub_10074F3F4();
        v52 = v40;
        v53 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
        v41 = sub_10000D134(aBlock);
        (*(*(v40 - 8) + 104))(v41, enum case for Feature.measurement_with_labelplaceholder(_:), v40);
        sub_10074FC74();
        sub_10000C620(aBlock);
        sub_10074CCA4();

        sub_10000C8CC(v39, &unk_100928A40);
        if (qword_100921F08 != -1)
        {
          swift_once();
        }

        v42 = sub_100750B04();
        sub_10000D0FC(v42, qword_1009833D8);
        sub_100750584();
        if (qword_100921F10 != -1)
        {
          swift_once();
        }

        sub_10000D0FC(v42, qword_1009833F0);
        sub_100750554();

        goto LABEL_17;
      }
    }

    swift_once();
    goto LABEL_12;
  }

LABEL_17:
  sub_100753B94();
  v44 = v43;
  (*(v49 + 8))(v48, v50);

  return v44;
}

double sub_10033A0E0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v112 = a5;
  ObjectType = a2;
  v7 = sub_100746D54();
  v93 = *(v7 - 8);
  v94 = v7;
  __chkstk_darwin(v7);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074CD14();
  v100 = *(v9 - 8);
  v101 = v9;
  __chkstk_darwin(v9);
  v99 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750534();
  v107 = *(v11 - 8);
  v108 = v11;
  __chkstk_darwin(v11);
  v106 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100745FF4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v109 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v19 = sub_100746D34();
  v103 = *(v19 - 8);
  v104 = v19;
  __chkstk_darwin(v19);
  v87 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v82 - v22;
  v24 = sub_10000C518(&qword_100925340);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v82 - v26;
  v28 = sub_10000C518(&qword_10092FA68);
  v90 = *(v28 - 8);
  v91 = v28;
  __chkstk_darwin(v28);
  v30 = &v82 - v29;
  sub_10000C824(a1, v119);
  sub_10000C518(&qword_1009242A0);
  sub_100743804();
  swift_dynamicCast();
  (*(v25 + 16))(v27, ObjectType, v24);
  v31 = v112;
  sub_100752DF4();
  v89 = v30;
  sub_100752EB4();
  v32 = v119[5];
  v33 = sub_1007437F4();
  sub_1007437C4();
  ObjectType = swift_getObjectType();
  sub_10029F770(v33, v18, v31, v23);

  v34 = *(v14 + 8);
  v88 = v18;
  v34(v18, v13);
  v35 = sub_100750F34();
  swift_allocObject();
  v36 = sub_100750F14();
  swift_allocObject();
  v85 = sub_100750F14();
  swift_allocObject();
  v84 = sub_100750F14();
  v102 = v23;
  sub_100746D14();
  v111 = v35;
  v37 = v109;
  swift_allocObject();
  v38 = sub_100750F14();
  sub_1007437C4();
  v39 = (*(v14 + 88))(v37, v13);
  v86 = v36;
  v83 = v38;
  if (v39 != enum case for PrivacyTypeStyle.productPage(_:))
  {
    if (v39 == enum case for PrivacyTypeStyle.intermediateDetailPage(_:) || v39 == enum case for PrivacyTypeStyle.detailPage(_:))
    {
      v46 = v106;
      if (qword_100921260 != -1)
      {
        swift_once();
      }

      v47 = v108;
      v48 = sub_10000D0FC(v108, qword_100981458);
      (*(v107 + 16))(v46, v48, v47);
      v45 = 4;
      goto LABEL_13;
    }

    v42 = v106;
    if (qword_100921258 != -1)
    {
      swift_once();
    }

    v43 = v108;
    v44 = sub_10000D0FC(v108, qword_100981440);
    (*(v107 + 16))(v42, v44, v43);
    v34(v37, v13);
    goto LABEL_9;
  }

  if (qword_100921258 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v40 = v108;
    v41 = sub_10000D0FC(v108, qword_100981440);
    (*(v107 + 16))(v106, v41, v40);
LABEL_9:
    v45 = 1;
LABEL_13:
    v109 = v45;
    sub_100016C60(0, &qword_100923AB0);
    v49 = v112;
    v50 = [v112 traitCollection];
    v51 = sub_100753C14();

    sub_1007437D4();
    v52 = sub_10074F3F4();
    v119[3] = v52;
    v98 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
    v119[4] = v98;
    v53 = sub_10000D134(v119);
    v105 = v32;
    v54 = *(v52 - 8);
    v55 = *(v54 + 104);
    v97 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v95 = v54 + 104;
    v96 = v55;
    v55(v53);
    v56 = v51;
    sub_10074FC74();
    sub_10000C620(v119);
    v57 = v99;
    v82 = v56;
    sub_10074CD04();
    sub_10074CCE4();
    v58 = v101;
    v32 = v100[1];
    v32(v57, v101);
    if (qword_100921268 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v108, qword_100981470);
    v59 = [v49 traitCollection];
    v60 = sub_100753C14();

    sub_1007437E4();
    v118[3] = v52;
    v118[4] = v98;
    v61 = sub_10000D134(v118);
    v96(v61, v97, v52);
    v62 = v60;
    sub_10074FC74();
    sub_10000C620(v118);
    sub_10074CD04();
    sub_10074CCE4();
    v32(v57, v58);
    v63 = sub_1007437A4();
    v64 = v63;
    if (v63 >> 62)
    {
      v74 = v63;
      v75 = sub_100754664();
      v64 = v74;
      v65 = v75;
      v100 = v62;
      if (!v75)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v65 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v100 = v62;
      if (!v65)
      {
        goto LABEL_29;
      }
    }

    v66 = v64;
    v109 = type metadata accessor for PrivacyCategoryView();
    if (v65 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_31:
    swift_once();
  }

  v67 = 0;
  v68 = v66;
  v69 = _swiftEmptyArrayStorage;
  do
  {
    if ((v66 & 0xC000000000000001) != 0)
    {
      v70 = sub_100754574();
    }

    else
    {
      v70 = *(v68 + 8 * v67 + 32);
    }

    v71 = sub_1002EA814(v70, v112);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_100254E80(0, v69[2] + 1, 1, v69);
    }

    v73 = v69[2];
    v72 = v69[3];
    if (v73 >= v72 >> 1)
    {
      v69 = sub_100254E80((v72 > 1), v73 + 1, 1, v69);
    }

    ++v67;

    v116 = v111;
    v117 = &protocol witness table for LayoutViewPlaceholder;
    *&v115 = v71;
    v69[2] = v73 + 1;
    sub_100012160(&v115, &v69[5 * v73 + 4]);
    v68 = v66;
  }

  while (v65 != v67);
LABEL_29:

  v76 = [v112 traitCollection];
  sub_100751364();

  v77 = v111;
  swift_allocObject();
  v78 = sub_100750F14();
  (*(v103 + 16))(v87, v102, v104);
  v116 = v77;
  v117 = &protocol witness table for LayoutViewPlaceholder;
  *&v115 = v86;
  v114[23] = v77;
  v114[24] = &protocol witness table for LayoutViewPlaceholder;
  v114[19] = &protocol witness table for LayoutViewPlaceholder;
  v114[20] = v85;
  v114[18] = v77;
  v114[14] = &protocol witness table for LayoutViewPlaceholder;
  v114[15] = v84;
  v114[13] = v77;
  v114[9] = &protocol witness table for LayoutViewPlaceholder;
  v114[10] = v78;
  ObjectType = v78;
  v114[8] = v77;
  v114[5] = v83;
  sub_10000C824(v119, v114);
  sub_10000C824(v118, &v113);

  sub_1007437C4();
  v79 = v92;
  sub_100746D44();
  sub_1003495BC(&unk_1009400D0, &type metadata accessor for PrivacyTypeLayout);
  v80 = v94;
  sub_100750404();

  (*(v93 + 8))(v79, v80);
  sub_10000C620(v118);
  sub_10000C620(v119);
  (*(v107 + 8))(v106, v108);
  (*(v103 + 8))(v102, v104);
  (*(v90 + 8))(v89, v91);

  return a3;
}

double sub_10033AE8C(double a1, uint64_t a2, char *a3, uint64_t a4, void *a5)
{
  v48 = a5;
  v40 = a4;
  v41 = a3;
  v37 = sub_100754724();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100750304();
  v7 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_100751344();
  v10 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100751374();
  v46 = *(v12 - 8);
  v47 = v12;
  __chkstk_darwin(v12);
  v43 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749A94();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_100925340);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v45 = sub_10000C518(&qword_10092FA68);
  v42 = *(v45 - 8);
  v22 = __chkstk_darwin(v45);
  v24 = &v35 - v23;
  (*(v19 + 16))(v21, v41, v18, v22);
  sub_100752DF4();
  v41 = v24;
  sub_100752EB4();
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v18) = sub_100754324();
  v25 = v17;
  v26 = v38;
  (*(v15 + 8))(v25, v14);
  (*(v10 + 104))(v26, enum case for Separator.Position.bottom(_:), v39);
  *v9 = UIFontTextStyleBody;
  v27 = v44;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v44);
  v51 = sub_100750B04();
  v52 = &protocol witness table for StaticDimension;
  sub_10000D134(v50);
  v49[3] = v27;
  v49[4] = &protocol witness table for FontSource;
  v28 = sub_10000D134(v49);
  (*(v7 + 16))(v28, v9, v27);
  v29 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v7 + 8))(v9, v27);
  if (v18)
  {
    v30 = v43;
    sub_100751354();
    sub_100751304();
    (*(v46 + 8))(v30, v47);
    sub_10000C888(v50, v51);
    v31 = v35;
    sub_100536120();
    v32 = v48;
    sub_100750564();
    (*(v36 + 8))(v31, v37);
    sub_10000C620(v50);
  }

  else
  {
    v33 = v43;
    sub_100751354();
    v32 = v48;
    sub_100751334();
    (*(v46 + 8))(v33, v47);
  }

  swift_getObjectType();
  sub_100229A94(v32);
  (*(v42 + 8))(v41, v45);
  return a1;
}

double sub_10033B5FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v30 = a2;
  v32 = a3;
  v5 = sub_100754724();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100749A94();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100751374();
  v33 = *(v11 - 8);
  v34 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&qword_100925340);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v31 = sub_10000C518(&qword_10092FA68);
  v18 = *(v31 - 8);
  v19 = __chkstk_darwin(v31);
  v21 = &v27 - v20;
  (*(v15 + 16))(v17, v30, v14, v19);
  sub_100752DF4();
  sub_100752EB4();
  swift_getObjectType();
  sub_10024CF88(a4, v13);
  sub_100749A44();
  sub_1003495BC(&unk_100929800, &type metadata accessor for ComponentLayoutOptions);
  LOBYTE(v17) = sub_100754324();
  (*(v8 + 8))(v10, v7);
  v22 = sub_10024E818(a4);
  if (v17)
  {
    v23 = v22;
    sub_100751304();
    sub_10000C888(v35, v35[3]);
    v24 = v27;
    sub_100536120();
    sub_100750564();
    (*(v28 + 8))(v24, v29);
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
    sub_10000C620(v35);
  }

  else
  {
    sub_100753BD4();
    v23 = v25;
    (*(v33 + 8))(v13, v34);
    (*(v18 + 8))(v21, v31);
  }

  return v23;
}

double sub_10033BAB0(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, void *a6)
{
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v62 = &v59 - v11;
  v61 = sub_100754724();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v66 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007504F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100925340);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_10000C518(&qword_10092FA68);
  v64 = *(v21 - 8);
  v65 = v21;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  sub_10000C824(a1, aBlock);
  sub_10000C518(&qword_1009242A0);
  sub_100744484();
  swift_dynamicCast();
  (*(v18 + 16))(v20, a2, v17);
  sub_100752DF4();
  v63 = v23;
  sub_100752EB4();
  if ((sub_1007435E4() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  v24 = a6;
  v25 = sub_100744474();
  v26 = v66;
  if (v25)
  {
    sub_10074F2A4();
    sub_100750504();
    sub_1007504C4();
    v28 = v27;
    v29 = *(v14 + 8);
    v29(v16, v13);
    sub_1007435E4();
    if ((sub_1007435E4() & 1) != 0 || v28 <= a4)
    {
    }

    else
    {
      sub_10074F2A4();
      sub_100750504();
      sub_1007504B4();
      v29(v16, v13);
    }
  }

  v30 = sub_100743604();
  v31 = [v30 length];

  if (v31 >= 1)
  {
    sub_100743614();
    if (v32)
    {
      if (qword_1009213F8 != -1)
      {
        swift_once();
      }

      v33 = sub_100750534();
      sub_10000D0FC(v33, qword_100981920);
      v34 = sub_10074F3F4();
      v68 = v34;
      v69 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
      v35 = sub_10000D134(aBlock);
      (*(*(v34 - 8) + 104))(v35, enum case for Feature.measurement_with_labelplaceholder(_:), v34);
      sub_10074FC74();
      sub_10000C620(aBlock);
      sub_10074CCB4();

      if (qword_100921F08 != -1)
      {
        swift_once();
      }

      v36 = sub_100750B04();
      sub_10000D0FC(v36, qword_1009833D8);
      sub_1007502D4();
      sub_100750564();
      v37 = *(v60 + 8);
      v38 = v61;
      v37(v26, v61);
      if (qword_100921F18 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v36, qword_100983408);
      sub_1007502D4();
      sub_100750564();
      v37(v26, v38);
      if (qword_100921F10 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v36, qword_1009833F0);
      sub_1007502D4();
      sub_100750564();
      v37(v26, v38);
    }

    v39 = sub_100743604();
    v40 = [v24 traitCollection];
    v41 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v39];
    v42 = [v39 length];
    v43 = swift_allocObject();
    *(v43 + 16) = 0;
    *(v43 + 24) = v40;
    *(v43 + 32) = v41;
    *(v43 + 40) = 1;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_1002B1424;
    *(v44 + 24) = v43;
    v69 = sub_1002B1408;
    v70 = v44;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v68 = &unk_100871920;
    v45 = _Block_copy(aBlock);
    v46 = v40;
    v47 = v41;

    [v39 enumerateAttributesInRange:0 options:v42 usingBlock:{0x100000, v45}];

    _Block_release(v45);
    LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

    if (v41)
    {
      __break(1u);
    }

    else
    {
      v48 = qword_1009213F0;
      v39 = v47;
      if (v48 == -1)
      {
LABEL_21:
        v49 = sub_100750534();
        v50 = sub_10000D0FC(v49, qword_100981908);
        v51 = *(v49 - 8);
        v52 = v62;
        (*(v51 + 16))(v62, v50, v49);
        (*(v51 + 56))(v52, 0, 1, v49);
        v53 = sub_10074F3F4();
        v68 = v53;
        v69 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
        v54 = sub_10000D134(aBlock);
        (*(*(v53 - 8) + 104))(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v53);
        sub_10074FC74();
        sub_10000C620(aBlock);
        sub_10074CCA4();

        sub_10000C8CC(v52, &unk_100928A40);
        if (qword_100921F08 != -1)
        {
          swift_once();
        }

        v55 = sub_100750B04();
        sub_10000D0FC(v55, qword_1009833D8);
        sub_100750584();
        if (qword_100921F10 != -1)
        {
          swift_once();
        }

        sub_10000D0FC(v55, qword_1009833F0);
        sub_100750554();

        goto LABEL_26;
      }
    }

    swift_once();
    goto LABEL_21;
  }

LABEL_26:
  sub_100753B94();
  v57 = v56;
  (*(v64 + 8))(v63, v65);

  return v57;
}

double sub_10033C6A0(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v8 = sub_100748494();
  v41 = *(v8 - 8);
  v42 = v8;
  __chkstk_darwin(v8);
  v43 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007484B4();
  v44 = *(v10 - 8);
  v45 = v10;
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10074CD14();
  v13 = *(v39 - 8);
  __chkstk_darwin(v39);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100925340);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v39 - v18;
  v40 = sub_10000C518(&qword_10092FA68);
  v20 = *(v40 - 8);
  __chkstk_darwin(v40);
  v22 = &v39 - v21;
  sub_10000C824(a1, v48);
  sub_10000C518(&qword_1009242A0);
  sub_1007445B4();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  sub_100752DF4();
  sub_100752EB4();
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  sub_10000D0FC(v23, qword_100981410);
  v24 = [v46 traitCollection];
  v25 = sub_100753C14();

  sub_1007445A4();
  sub_100743E94();

  v26 = sub_100743074();

  v27 = sub_10074F3F4();
  v49 = v27;
  v50 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
  v28 = sub_10000D134(v48);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  v29 = v26;
  v30 = v25;
  sub_10074FC74();
  sub_10000C620(v48);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v13 + 8))(v15, v39);
  if (qword_100920350 != -1)
  {
    swift_once();
  }

  v31 = v42;
  v32 = sub_10000D0FC(v42, qword_10097DD00);
  (*(v41 + 16))(v43, v32, v31);
  v33 = v49;
  v34 = v50;
  v35 = sub_10000C888(v48, v49);
  v47[3] = v33;
  v47[4] = *(v34 + 8);
  v36 = sub_10000D134(v47);
  (*(*(v33 - 8) + 16))(v36, v35, v33);
  sub_1007484A4();
  sub_1003495BC(&unk_100923AC0, &type metadata accessor for PrivacyFooterLayout);
  v37 = v45;
  sub_100750404();

  (*(v44 + 8))(v12, v37);
  (*(v20 + 8))(v22, v40);
  sub_10000C620(v48);

  return a3;
}

unint64_t sub_10033CD20(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v66 = a5;
  v69 = a3;
  v70 = sub_10074CD14();
  v53 = *(v70 - 8);
  __chkstk_darwin(v70);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1007484E4();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100748504();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100750534();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100925340);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v52 - v17;
  v61 = sub_10000C518(&qword_10092FA68);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v20 = &v52 - v19;
  sub_10000C824(a1, v78);
  sub_10000C518(&qword_1009242A0);
  sub_1007445F4();
  swift_dynamicCast();
  (*(v16 + 16))(v18, a2, v15);
  sub_100752DF4();
  v57 = v20;
  sub_100752EB4();
  v21 = v81;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921240 != -1)
  {
    swift_once();
  }

  v22 = sub_10000D0FC(v11, qword_1009813F8);
  v23 = [v66 traitCollection];
  v71 = sub_100753C14();

  (*(v12 + 16))(v14, v22, v11);
  v55 = type metadata accessor for DynamicTypeLinkedLabel();
  v24 = objc_allocWithZone(v55);
  v25 = sub_10004DA8C(v14, 0, 0);
  sub_1007445E4();
  v26 = sub_100743EA4();
  v27 = sub_1001D3738(v26, sub_100349614);

  v28 = sub_100743E94();
  v54 = v25;
  sub_10004DF04(v28, 0, v27);

  result = sub_1007445D4();
  v30 = result;
  if (result >> 62)
  {
    v51 = result;
    result = sub_100754664();
    v30 = v51;
    v31 = result;
  }

  else
  {
    v31 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v21;
  if (v31)
  {
    if (v31 < 1)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v68 = v30 & 0xC000000000000001;
    v67 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v33 = (v53 + 8);
    v34 = _swiftEmptyArrayStorage;
    v69 = v30;
    do
    {
      if (v68)
      {
        sub_100754574();
      }

      else
      {
      }

      sub_10074CFD4();
      sub_100743E94();

      v35 = v71;
      v36 = sub_100743074();

      v37 = sub_10074F3F4();
      v79 = v37;
      v80 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
      v38 = sub_10000D134(v78);
      (*(*(v37 - 8) + 104))(v38, v67, v37);
      v39 = v36;
      v40 = v35;
      sub_10074FC74();
      sub_10000C620(v78);
      sub_10074CCD4();
      sub_10074CCE4();
      (*v33)(v8, v70);
      sub_10000C824(v78, &v75);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100254FA8(0, v34[2] + 1, 1, v34);
      }

      v42 = v34[2];
      v41 = v34[3];
      if (v42 >= v41 >> 1)
      {
        v34 = sub_100254FA8((v41 > 1), v42 + 1, 1, v34);
      }

      ++v32;

      sub_10000C620(v78);
      v34[2] = v42 + 1;
      sub_100012160(&v75, &v34[5 * v42 + 4]);
    }

    while (v31 != v32);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
  }

  v43 = [v66 traitCollection];
  sub_100751364();

  v44 = sub_100750F34();
  swift_allocObject();
  v45 = sub_100750F14();
  if (qword_100920B80 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = sub_10000D0FC(v60, qword_100980170);
  (*(v58 + 16))(v62, v47, v46);
  sub_1007445C4();
  v79 = v55;
  v80 = &protocol witness table for UIView;
  v78[0] = v54;
  v48 = v54;
  sub_100157548(v34);

  v76 = v44;
  v77 = &protocol witness table for LayoutViewPlaceholder;
  v74 = &protocol witness table for LayoutViewPlaceholder;
  *&v75 = v45;
  v73 = v44;
  v72 = v45;
  swift_retain_n();
  v49 = v63;
  sub_1007484F4();
  sub_1003495BC(&unk_1009332B0, &type metadata accessor for PrivacyHeaderLayout);
  v50 = v65;
  sub_100750404();

  (*(v64 + 8))(v49, v50);
  (*(v59 + 8))(v57, v61);
}

double sub_10033D778(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1007486F4();
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100748714();
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100925340);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - v14;
  v28 = sub_10000C518(&qword_10092FA68);
  v16 = *(v28 - 8);
  v17 = __chkstk_darwin(v28);
  v19 = &v27 - v18;
  (*(v13 + 16))(v15, a2, v12, v17);
  sub_100752DF4();
  sub_100752EB4();
  sub_10011F99C(a4, v8);
  swift_getObjectType();
  sub_100120D24();
  v20 = sub_100750F34();
  swift_allocObject();
  v21 = sub_100750F14();
  v34 = v20;
  v35 = &protocol witness table for LayoutViewPlaceholder;
  v33 = v21;
  swift_allocObject();
  v22 = sub_100750F14();
  v31 = v20;
  v32 = &protocol witness table for LayoutViewPlaceholder;
  v30 = v22;
  sub_100748704();
  sub_1003495BC(&qword_10092EDE0, &type metadata accessor for SmallBreakoutLayout);
  v23 = v29;
  sub_100750404();
  v25 = v24;
  (*(v9 + 8))(v11, v23);
  (*(v16 + 8))(v19, v28);
  return v25;
}

double sub_10033DB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v27 = a5;
  v26 = a3;
  v28 = sub_100743184();
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100925340);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = sub_10000C518(&qword_10092FA68);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  sub_10000C824(a1, &v29);
  sub_10000C518(&qword_1009242A0);
  sub_100744C54();
  swift_dynamicCast();
  (*(v11 + 16))(v13, a2, v10);
  sub_100752DF4();
  sub_100752EB4();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v18 = v29;
  sub_10074B274();
  if (sub_100743154())
  {
    v19 = sub_100744C24();
  }

  else
  {
    v19 = sub_100744C44();
  }

  v21 = v19;
  v22 = v20;
  v23 = v27;
  swift_getObjectType();
  v24 = sub_100205448(v21, v22, v23);

  (*(v7 + 8))(v9, v28);
  (*(v15 + 8))(v17, v14);

  return v24;
}

double sub_10033DE44(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v54 = sub_100748B54();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100748B74();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v57 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10074CD14();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_100925340);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v49 - v15;
  v55 = sub_10000C518(&qword_10092FA68);
  v53 = *(v55 - 8);
  __chkstk_darwin(v55);
  v18 = v49 - v17;
  sub_10000C824(a1, &v69);
  sub_10000C518(&qword_1009242A0);
  sub_100744D14();
  swift_dynamicCast();
  (*(v14 + 16))(v16, a2, v13);
  sub_100752DF4();
  v51 = v18;
  sub_100752EB4();
  v19 = v72;
  [a5 pageMarginInsets];
  sub_100753BA4();
  v20 = [a5 traitCollection];
  LOBYTE(v13) = sub_1007537D4();

  v21 = 4;
  if ((v13 & 1) == 0)
  {
    v21 = 1;
  }

  v60 = v21;
  v50 = v19;
  sub_100744D04();
  v49[1] = v22;
  v23 = sub_100016C60(0, &qword_100923AB0);
  if (qword_100920928 != -1)
  {
    swift_once();
  }

  v24 = sub_100750534();
  sub_10000D0FC(v24, qword_10097F928);
  v25 = [a5 traitCollection];
  sub_100753C14();

  v26 = sub_10074F3F4();
  v61 = a5;
  v27 = v26;
  v70 = v26;
  v28 = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
  v71 = v28;
  v29 = sub_10000D134(&v69);
  v30 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v31 = *(v27 - 8);
  v49[0] = v23;
  v32 = *(v31 + 104);
  v32(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_10074FC74();
  sub_10000C620(&v69);
  sub_10074CD04();
  sub_10074CCE4();
  v33 = *(v63 + 8);
  v63 += 8;
  v33(v12, v62);
  v50 = sub_100744CF4();
  if (qword_100920930 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v24, qword_10097F940);
  v34 = [v61 traitCollection];
  sub_100753C14();

  v67 = v27;
  v68 = v28;
  v35 = sub_10000D134(v66);
  v32(v35, v30, v27);
  sub_10074FC74();
  sub_10000C620(v66);
  sub_10074CD04();
  sub_10074CCE4();
  v33(v12, v62);
  if (qword_100920920 != -1)
  {
    swift_once();
  }

  v36 = v54;
  v37 = sub_10000D0FC(v54, qword_10097F910);
  (*(v52 + 16))(v56, v37, v36);
  v38 = v70;
  v39 = v71;
  v40 = sub_10000C888(&v69, v70);
  v65[3] = v38;
  v65[4] = *(v39 + 8);
  v41 = sub_10000D134(v65);
  (*(*(v38 - 8) + 16))(v41, v40, v38);
  v42 = v67;
  v43 = v68;
  v44 = sub_10000C888(v66, v67);
  v64[3] = v42;
  v64[4] = *(v43 + 8);
  v45 = sub_10000D134(v64);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  v46 = v57;
  sub_100748B64();
  sub_1003495BC(&unk_100933210, &type metadata accessor for EditorialQuoteLayout);
  v47 = v59;
  sub_100750404();
  (*(v58 + 8))(v46, v47);
  (*(v53 + 8))(v51, v55);
  sub_10000C620(v66);
  sub_10000C620(&v69);

  return a3;
}

double sub_10033E740(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v24 = a5;
  v25 = sub_100744E04();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_100925340);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_10000C518(&qword_10092FA68);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_10000C824(a1, v26);
  sub_10000C518(&qword_1009242A0);
  sub_100744E34();
  swift_dynamicCast();
  (*(v12 + 16))(v14, a2, v11);
  sub_100752DF4();
  sub_100752EB4();
  if (sub_100744DC4())
  {
    v19 = v24;
  }

  else
  {
    v19 = v24;
    [v24 pageMarginInsets];
    a3 = a3 - v20 - v21;
  }

  sub_100744E24();
  v22 = [v19 traitCollection];
  sub_100744DE4();

  (*(v8 + 8))(v10, v25);
  (*(v16 + 8))(v18, v15);

  return a3;
}

double sub_10033EA3C(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_10000C518(&qword_100925340);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - v11;
  v13 = sub_10000C518(&qword_10092FA68);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v19 - v15;
  sub_10000C824(a1, v19);
  sub_10000C518(&qword_1009242A0);
  sub_100745764();
  swift_dynamicCast();
  (*(v10 + 16))(v12, a2, v9);
  sub_100752DF4();
  sub_100752EB4();
  v17 = v19[5];
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v19[0] = sub_1002EA814(v17, a5);
  sub_100750F34();
  sub_100750404();
  (*(v14 + 8))(v16, v13);

  return a3;
}

double sub_10033ECA4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_10000C518(&qword_100925340);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-v9];
  v11 = sub_10000C518(&qword_10092FA68);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-v13];
  sub_10000C824(a1, v20);
  sub_10000C518(&qword_1009242A0);
  sub_100742954();
  swift_dynamicCast();
  (*(v8 + 16))(v10, a2, v7);
  sub_100752DF4();
  sub_100752EB4();
  v15 = v21;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v18 = sub_1005867E4(v17, v15, a4, ObjectType);
  (*(v12 + 8))(v14, v11);

  return v18;
}

double sub_10033EED0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = sub_10074D544();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10074D574();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A534();
  __chkstk_darwin(v10 - 8);
  v45 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10074A554();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10074CD14();
  v13 = *(v38 - 8);
  __chkstk_darwin(v38);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100925340);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v41 = sub_10000C518(&qword_10092FA68);
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v21 = &v36 - v20;
  sub_10000C824(a1, v59);
  sub_10000C518(&qword_1009242A0);
  sub_100746A24();
  swift_dynamicCast();
  (*(v17 + 16))(v19, a2, v16);
  sub_100752DF4();
  v39 = v21;
  sub_100752EB4();
  v51 = a4;
  v22 = [a4 traitCollection];
  v23 = sub_100750F34();
  swift_allocObject();
  v24 = sub_100750F14();
  sub_100746A14();
  sub_100016C60(0, &qword_100923AB0);
  if (qword_1009214B0 != -1)
  {
    swift_once();
  }

  v25 = sub_100750534();
  sub_10000D0FC(v25, qword_100981B48);
  sub_100753C14();
  v26 = sub_10074F3F4();
  v37 = v22;
  v27 = v26;
  v59[3] = v26;
  v59[4] = sub_1003495BC(&qword_10092AC70, &type metadata accessor for Feature);
  v28 = sub_10000D134(v59);
  (*(*(v27 - 8) + 104))(v28, enum case for Feature.measurement_with_labelplaceholder(_:), v27);
  sub_10074FC74();
  sub_10000C620(v59);
  sub_10074CD04();
  sub_10074CCE4();
  (*(v13 + 8))(v15, v38);
  sub_1007469D4();
  v29 = v44;
  sub_10074D554();
  (*(v42 + 8))(v9, v43);
  sub_1006B1AD0(v29, v51, v45);
  (*(v46 + 8))(v29, v48);
  swift_allocObject();
  v30 = sub_100750F14();
  v57 = v23;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v30;
  sub_10000C824(v59, v55);
  v53 = v23;
  v54 = &protocol witness table for LayoutViewPlaceholder;
  v52 = v24;

  v31 = v47;
  sub_10074A544();
  sub_1003495BC(&unk_1009332D8, &type metadata accessor for LargeHeroBreakoutLayout);
  v32 = v50;
  sub_100750404();
  v34 = v33;

  (*(v49 + 8))(v31, v32);
  sub_10000C620(v59);
  (*(v40 + 8))(v39, v41);

  return v34;
}