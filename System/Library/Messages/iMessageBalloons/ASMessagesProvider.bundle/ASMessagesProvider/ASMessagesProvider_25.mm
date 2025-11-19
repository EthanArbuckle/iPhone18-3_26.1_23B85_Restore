void sub_2D19B8()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = sub_7699D0();

    if (v6)
    {
      sub_2D3A08();
    }

    else
    {
      sub_2D44A0();
    }

    sub_2D4840();
  }
}

id sub_2D1AD8()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    sub_758210();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell()
{
  result = qword_94E588;
  if (!qword_94E588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2D1ED8(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView) = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *(v1 + v2);
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
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer);
    v7 = v5;
    [v6 insertSubview:v7 atIndex:0];
  }

LABEL_4:
}

void sub_2D1F94(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_2DE5C4(&qword_93F500, type metadata accessor for VideoView);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_BE70(0, &qword_93E550);
        v9 = v4;
        v10 = sub_76A1C0();

        if (v10)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v11 = v3;
    }

    v12 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v2;
    v13 = v2;
    sub_1F92A8(v12);

    if (v2)
    {
      *&v13[qword_940588 + 8] = &off_89A910;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_2D2148()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for VideoView();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = v2;
    return v4;
  }

  return result;
}

uint64_t (*sub_2D21CC(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents)) != 0)
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
  return sub_2D227C;
}

uint64_t sub_2D227C(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_2DE5C4(&qword_93F500, type metadata accessor for VideoView);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_BE70(0, &qword_93E550);
          v9 = v4;
          v10 = sub_76A1C0();

          if (v10)
          {
            [v5 removeFromSuperview];
          }
        }

        else
        {
        }
      }

      else
      {
        v18 = v3;
        v5 = 0;
      }

      v20 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v25;
      v21 = v5;
      sub_1F92A8(v20);

      if (v25)
      {
        *&v21[qword_940588 + 8] = &off_89A910;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_2DE5C4(&qword_93F500, type metadata accessor for VideoView);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_BE70(0, &qword_93E550);
        v16 = v11;
        v17 = sub_76A1C0();

        if (v17)
        {
          [v12 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = v3;
      v12 = 0;
    }

    v22 = *&v11[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v26;
    v23 = v12;
    sub_1F92A8(v22);

    if (v26)
    {
      *&v23[qword_940588 + 8] = &off_89A910;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_2D25D0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *&v2[*a2];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v2[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v2[v4] = a1;
  v7 = a1;

  if (a1)
  {
    [v2 addSubview:v7];
  }
}

void sub_2D2674()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber];
    sub_BE70(0, &qword_93E540);
    v10 = v1;
    v4 = sub_769FF0();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_93CB90 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_99CD70];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      sub_769240();
      v7 = sub_769210();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_93CB88 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_99CD68];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_2D28C8()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber];
    sub_BE70(0, &qword_93E540);
    v7 = v5;
    v8 = sub_769FF0();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_93D6C8 != -1)
      {
        swift_once();
      }

      v9 = sub_7666D0();
      v10 = sub_BE38(v9, qword_99EC50);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      sub_75BA40();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      sub_769240();
      v14 = sub_769210();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_93D6C0 != -1)
      {
        swift_once();
      }

      v17 = sub_7666D0();
      v18 = sub_BE38(v17, qword_99EC38);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      sub_75BA40();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_2D2C40(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_760AD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_93D6B8 != -1)
      {
        swift_once();
      }

      v15 = sub_7666D0();
      v16 = sub_BE38(v15, qword_99EC20);
      v17 = *(v15 - 8);
      v18 = *(v17 + 16);
      v53 = v16;
      v60 = v18;
      v61 = v17 + 16;
      (v18)(v14);
      v19 = *(v17 + 56);
      v62 = v17 + 56;
      v59 = v19;
      v19(v14, 0, 1, v15);
      if (qword_93CCE8 != -1)
      {
        swift_once();
      }

      v20 = sub_BD88(&unk_94B6E0);
      sub_BE38(v20, qword_99D1A8);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      sub_7592B0();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = sub_75BB20();
      v23 = objc_allocWithZone(v54);
      v24 = sub_75BB10();
      v25 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v26)
      {
        [v26 removeFromSuperview];
        v27 = *&v21[v25];
      }

      else
      {
        v27 = 0;
      }

      *&v21[v25] = v24;
      v31 = v24;

      v60(v14, v53, v15);
      v59(v14, 0, 1, v15);
      sub_75BA40();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_setSpeed_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = sub_769210();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_setSpeed_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_93D6C8 != -1)
        {
          swift_once();
        }

        v40 = qword_99EC50;
      }

      else
      {
        if (qword_93D6C0 != -1)
        {
          swift_once();
        }

        v40 = qword_99EC38;
      }

      v41 = sub_BE38(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_93CCF0 != -1)
      {
        swift_once();
      }

      sub_BE38(v57, qword_99D1C0);
      v63 = v21;
      v42 = v21;
      sub_7592B0();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = sub_75BB10();
      v45 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v46)
      {
        [v46 removeFromSuperview];
        v47 = *&v42[v45];
      }

      else
      {
        v47 = 0;
      }

      *&v42[v45] = v44;
      v48 = v44;

      sub_2D28C8();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = sub_769210();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[511]];
      }

      [*&v42[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_2D14F4();
    }

    else
    {
      v28 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
      if (v29)
      {
        [v29 removeFromSuperview];
        v30 = *&v2[v28];
      }

      else
      {
        v30 = 0;
      }

      *&v2[v28] = 0;

      [v2 setNeedsLayout];
      v37 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
      if (v38)
      {
        [v38 removeFromSuperview];
        v39 = *&v2[v37];
      }

      else
      {
        v39 = 0;
      }

      *&v2[v37] = 0;

      [v2 setNeedsLayout];
    }

    [v2 setNeedsLayout];
  }
}

id sub_2D33E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = &v4[*a3];
  *v6 = a1;
  *(v6 + 1) = a2;

  v7 = *&v4[*a4];
  if (v7)
  {
    if (*(v6 + 1))
    {
      v8 = v7;

      v9 = sub_769210();
    }

    else
    {
      v8 = v7;
      v9 = 0;
    }

    [v8 setText:v9];
  }

  return [v4 setNeedsLayout];
}

void sub_2D34AC(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
  {
    return;
  }

  v22 = v2;
  if ([v22 isHidden])
  {
    if ((*(v1 + v3) & 1) == 0)
    {

      return;
    }
  }

  else if (!*(v1 + v3))
  {
    v4 = 1.0;
    tx = 0.0;
    ty = 0.0;
    [v22 setHidden:{0, 0x3FF0000000000000, 0, 0, 0x3FF0000000000000}];
    goto LABEL_11;
  }

  v4 = 0.0;
  CGAffineTransformMakeTranslation(&aBlock, 0.0, 2.0);
  tx = aBlock.tx;
  ty = aBlock.ty;
  [v22 setHidden:{0, *&aBlock.a, *&aBlock.b, *&aBlock.c, *&aBlock.d}];
LABEL_11:
  [v22 setAlpha:v4];
  *&aBlock.a = v20;
  *&aBlock.c = v21;
  aBlock.tx = tx;
  aBlock.ty = ty;
  [v22 setTransform:&aBlock];
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_3AB6E4();
  }

  if (*(v1 + v3))
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v22;
  v12 = objc_allocWithZone(UIViewPropertyAnimator);
  *&aBlock.tx = sub_2DE6C0;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_23F0CC;
  *&aBlock.d = &unk_88C7A8;
  v13 = _Block_copy(&aBlock);
  v14 = v22;

  v15 = [v12 initWithDuration:v9 curve:v13 animations:0.2];
  _Block_release(v13);

  aBlock.a = 1.0;
  aBlock.b = 0.0;
  aBlock.c = 0.0;
  aBlock.d = 1.0;
  aBlock.tx = 0.0;
  aBlock.ty = 0.0;
  [v14 setTransform:&aBlock];

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = v14;
  *&aBlock.tx = sub_2DE708;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_19EE34;
  *&aBlock.d = &unk_88C7F8;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_2D3890(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_792920;
      v8 = xmmword_792930;
      v9 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v10, 0.0, 2.0);
      v8 = *&v10.a;
      v7 = *&v10.c;
      v9 = *&v10.tx;
    }

    *&v10.a = v8;
    *&v10.c = v7;
    *&v10.tx = v9;
    [a2 setTransform:&v10];
  }
}

void sub_2D396C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_2D3A08()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_BD88(&unk_93F5C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77B6C0;
    v7 = qword_93C8E8;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_94E510;
    *(v6 + 32) = qword_94E510;
    v10 = qword_93C8F0;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_94E518;
    *(v6 + 40) = qword_94E518;
    sub_BE70(0, &qword_945800);
    v13 = v12;
    isa = sub_769450().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_BD88(&unk_93F5C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77D9F0;
  if (qword_93C8F8 != -1)
  {
    swift_once();
  }

  v19 = qword_94E520;
  *(v18 + 32) = qword_94E520;
  sub_BE70(0, &qword_945800);
  v20 = v19;
  v21 = sub_769450().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &selRef_absoluteDimension_;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_77FA60;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &selRef_absoluteDimension_;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v29;

    sub_4AC204();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_4AC060(&off_87EE98);

      v38 = *(v1 + v25);
      if (v38)
      {
        v39 = v38;
        v40 = [v39 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v41 = *(v1 + v25);
        if (v41)
        {
          v42 = v41;
          v43 = [v42 layer];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v44 = *(v1 + v3);
  if (v44)
  {
    v45 = [v44 v28[1]];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[1]];
      objc_opt_self();
      v48 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v48 = 0;
    }

    [v45 setMask:v48];
  }

  v49 = [objc_allocWithZone(v23) init];
  v50 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_77FA60;
    v54 = objc_opt_self();
    v55 = v52;
    *(v53 + 32) = [v54 clearColor];
    v56 = [v54 blackColor];
    v57 = v23;
    v58 = v28;
    v59 = [v56 colorWithAlphaComponent:0.4];

    *(v53 + 40) = v59;
    v60 = [v54 blackColor];
    v61 = [v60 colorWithAlphaComponent:0.68];

    *(v53 + 48) = v61;
    v28 = v58;
    v23 = v57;
    v62 = [v54 blackColor];
    v63 = [v62 colorWithAlphaComponent:0.8];

    *(v53 + 56) = v63;
    *&v55[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v53;

    sub_4AC204();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_4AC060(&off_87EED8);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[1]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[1]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[1]];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[1]];
      objc_opt_self();
      v76 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v76 = 0;
    }

    [v73 setMask:v76];
  }

  v77 = [objc_allocWithZone(v23) init];
  v78 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_78D690;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v81;

    sub_4AC204();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_4AC060(&off_87EF18);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[1]];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[1]];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer) v28[1]];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[1]];
    objc_opt_self();
    v95 = swift_dynamicCastObjCClassUnconditional();
  }

  else
  {
    v95 = 0;
  }

  v98 = v95;
  [v92 setMask:?];
}

void sub_2D44A0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  sub_758E80();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_93C540;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_765080();
    v22 = sub_BE38(v21, qword_99B520);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    sub_758E60();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView);
        v30 = v28;
        [v29 _continuousCornerRadius];
        [v30 _setContinuousCornerRadius:?];

        v31 = *(v1 + v16);
        if (v31)
        {
          [v31 setAutoresizingMask:18];
        }
      }
    }
  }

  v32 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

void sub_2D4840()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer];
      v4 = v2;
      [v3 insertSubview:v15 aboveSubview:v4];
      v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v5)
      {
        v6 = v5;
        [v3 insertSubview:v6 aboveSubview:v4];
      }
    }

    else
    {
      v7 = v1;
      v8 = [v0 contentView];
      [v8 insertSubview:v7 atIndex:0];

      v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      if (v9)
      {
        [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v9 atIndex:0];
      }
    }

    v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
    if (v10)
    {
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer] insertSubview:v10 aboveSubview:v15];
    }

    v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView];
    v12 = v15;
    if (v11)
    {
      v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer];
      v14 = v11;
      [v13 insertSubview:v14 aboveSubview:v15];

      v12 = v15;
    }
  }
}

uint64_t sub_2D49F0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_76A920();
  v179 = *(v181 - 8);
  *&v7 = __chkstk_darwin(v181).n128_u64[0];
  v180 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190.receiver = v1;
  v190.super_class = ObjectType;
  objc_msgSendSuper2(&v190, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_setTextAlignment_;
  v11 = [v1 traitCollection];
  v12 = sub_769A00();

  sub_2DBD4C(v1, v1);
  sub_2DC2A4(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v14 = [v1 contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v16 + 0.0;
  v24 = v18 + 0.0;
  v178 = v20;
  v25 = v20 + 0.0;
  v26 = v13 + v22;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v28 = [v1 traitCollection];
    v29 = sub_7699E0();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView;
      v31 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
      if (v31)
      {
        v32 = qword_93CD00;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_BD88(&qword_940AD0);
        sub_BE38(v34, qword_99D1F0);
        v35 = v180;
        sub_766470();
        sub_759360();
        v37 = v36;
        v38 = *(v179 + 8);
        *&v183 = v179 + 8;
        y = *&v38;
        v38(v35, v181);
        [v33 _setCornerRadius:v37];

        v39 = *&v1[v30];
        if (v39)
        {
          v40 = [v39 contentView];
          v41 = [v40 layer];

          if (qword_93CD18 != -1)
          {
            swift_once();
          }

          [v41 setBorderColor:qword_99D238];

          v42 = *&v1[v30];
          if (v42)
          {
            v43 = [v42 contentView];
            v44 = [v43 layer];

            if (qword_93CD08 != -1)
            {
              swift_once();
            }

            v45 = sub_BD88(&qword_940AD0);
            sub_BE38(v45, qword_99D208);
            v46 = v180;
            sub_766470();
            sub_759360();
            v48 = v47;
            (*&y)(v46, v181);
            v49 = [v1 traitCollection];
            [v49 displayScale];
            v51 = v50;

            [v44 setBorderWidth:v48 / v51];
          }
        }
      }
    }

    v185 = sub_2D5840(v189, v23, v24, v25, v26);
    v186 = v52;
    v187 = v53;
    v188 = v54;
    v55 = v13 + v52;
    v10 = &selRef_setTextAlignment_;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
    if (v56)
    {
      v57 = [v56 contentView];
      v58 = [v57 layer];

      [v58 setBorderWidth:0.0];
    }

    if (v12)
    {
      v59 = sub_2D6508(v189, v23, v24, v25);
    }

    else
    {
      v59 = sub_2D6B74(v189, v23, v24, v25, v26);
    }

    v55 = v60;
    v185 = v59;
    v186 = v60;
    v187 = v61;
    v188 = v62;
  }

  v63 = v13;
  v191.origin.x = v23;
  v191.origin.y = v24;
  v191.size.width = v25;
  v191.size.height = v26;
  v64 = CGRectGetMaxY(v191) - v55;
  v192.origin.x = v23;
  v192.origin.y = v24;
  v192.size.width = v25;
  v192.size.height = v26;
  MinX = CGRectGetMinX(v192);
  v193.origin.y = v24;
  v66 = v23;
  v193.origin.x = v23;
  v193.size.width = v25;
  v193.size.height = v26;
  y = v193.origin.y;
  v67 = v55;
  Width = CGRectGetWidth(v193);
  sub_B170(v189, v189[3]);
  v176 = MinX;
  v177 = v64;
  v175 = Width;
  v69 = v67;
  sub_7672C0();
  (*(v4 + 8))(v6, v3);
  v70 = [v1 v10[23]];
  v71 = sub_7699E0();

  v72 = &unk_99C000;
  v183 = v63;
  if ((v71 & 1) != 0 && v1[v27] == 1)
  {
    if (v26 >= v178)
    {
      v73 = v25;
    }

    else
    {
      v73 = v26;
    }

    if (v73 <= 31.0)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v73 * 0.5;
    }

    sub_759160();
    v75 = CGRectGetMinY(v194) + -34.0;
    v76 = 30.0;
    if (v73 <= 60.0)
    {
      v76 = v74;
    }

    v77 = v75 - v76;
    v78 = v66;
    v195.origin.x = v66;
    v79 = y;
    v195.origin.y = y;
    v195.size.width = v25;
    v195.size.height = v26;
    MidY = CGRectGetMidY(v195);
    v81 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    if (v77 >= MidY)
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
        v91 = &v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        v92 = v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v91 = 0;
        v91[8] = 1;
        if ((v92 & 1) == 0)
        {
          goto LABEL_45;
        }
      }
    }

    else
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
        v83 = &v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride];
        v84 = v82[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_prominentPlayButtonCenterYOverride + 8];
        *v83 = v77;
        *(v83 + 8) = 0;
        if ((v84 & 1) != 0 || v77 != MidY)
        {
LABEL_45:
          [v82 setNeedsLayout];
        }
      }
    }
  }

  else
  {
    v85 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    v78 = v66;
    v79 = y;
    if (v85)
    {
      v86 = *(*(*(v85 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
      if (v86)
      {
        type metadata accessor for VideoView();
        v87 = swift_dynamicCastClass();
        if (v87)
        {
          v88 = v87 + qword_99A1B8;
          v89 = *(v87 + qword_99A1B8 + 16);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 1;
          if ((v89 & 1) == 0)
          {
            v90 = v86;
            sub_539CC();
          }
        }
      }
    }
  }

  v93 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v93 setFrame:{v78, v79, v25, v26}];
  v94 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v95 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v95)
  {
    v96 = v95;
    [v93 bounds];
    [v96 setFrame:?];
  }

  v97 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  v98 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
  if (v1[v27] == 1)
  {
    if (v98)
    {
      v99 = v98;
      [v1 bounds];
      v100 = CGRectGetMinX(v196);
      [v1 bounds];
      v101 = CGRectGetWidth(v197);
      [v1 bounds];
      [v99 setFrame:{v100, 0.0, v101, v63 + CGRectGetHeight(v198)}];

      v102 = *&v1[v97];
      if (v102)
      {
        v103 = v102;
        v104 = [v1 traitCollection];
        v105 = sub_7699E0();

        v106 = 418.0;
        if (v105)
        {
          v106 = 0.0;
        }

        *&v103[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset] = v106;
        v107 = *&v103[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView];
        v108 = *(v107 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount);
        *(v107 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount) = v106;
        if (v106 != v108)
        {
          sub_1F7F5C();
        }
      }
    }

    v109 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v109)
    {
      v110 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
      v111 = v109;
      if (v110)
      {
        [v110 bounds];
      }

      else
      {
        v112 = 0.0;
        v113 = 0.0;
        v114 = 0.0;
        v115 = 0.0;
      }

      [v111 setFrame:{v112, v113, v114, v115}];
    }

    v128 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v128)
    {
      v129 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
      v119 = v128;
      if (v129)
      {
        [v129 bounds];
      }

      else
      {
        v125 = 0.0;
        v127 = 0.0;
        v123 = 0.0;
        v126 = 0.0;
      }

      goto LABEL_71;
    }
  }

  else if (v98)
  {
    v116 = 0.0;
    if (*&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_93CBD0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_99CE20, qword_99CE38);
    v117 = v180;
    sub_33964();
    sub_766700();
    v116 = v118;
    (*(v179 + 8))(v117, v181);
    v98 = *&v1[v97];
    v72 = &unk_99C000;
    if (v98)
    {
LABEL_64:
      v119 = v98;
      [v1 bounds];
      v120 = CGRectGetMinX(v199);
      [v1 bounds];
      v121 = CGRectGetWidth(v200);
      v201.origin.x = v176;
      v201.origin.y = v177;
      v201.size.width = v175;
      v201.size.height = v69;
      MinY = CGRectGetMinY(v201);
      v123 = v121;
      v124 = MinY;
      v125 = v120;
      v126 = v124 - v116;
      v127 = 0.0;
LABEL_71:
      [v119 setFrame:{v125, v127, v123, v126}];
    }
  }

  v130 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupContentBackgroundView];
  v131 = [v1 contentView];
  [v131 bounds];
  v133 = v132;
  v135 = v134;
  v137 = v136;
  v139 = v138;

  v202.origin.x = v133;
  v202.origin.y = v135;
  v202.size.width = v137;
  v202.size.height = v139;
  v140 = CGRectGetMinX(v202);
  v141 = v72[234];
  v142 = *&v1[v141];
  v143 = 0.0;
  MaxY = 0.0;
  if (v142)
  {
    [v142 frame];
    MaxY = CGRectGetMaxY(v203);
  }

  v145 = [v1 contentView];
  [v145 bounds];
  v147 = v146;
  v149 = v148;
  v151 = v150;
  v153 = v152;

  v204.origin.x = v147;
  v204.origin.y = v149;
  v204.size.width = v151;
  v204.size.height = v153;
  v154 = CGRectGetWidth(v204);
  v155 = [v1 contentView];
  [v155 bounds];
  v157 = v156;
  v159 = v158;
  v161 = v160;
  v163 = v162;

  v205.origin.x = v157;
  v205.origin.y = v159;
  v205.size.width = v161;
  v205.size.height = v163;
  Height = CGRectGetHeight(v205);
  v165 = *&v1[v141];
  if (v165)
  {
    [v165 frame];
    v143 = CGRectGetMaxY(v206);
  }

  v166 = v183;
  [v130 setFrame:{v140, MaxY, v154, v183 + Height - v143}];
  v167 = *&v1[v94];
  if (v167)
  {
    v168 = v167;
    [v1 bounds];
    v169 = v166 + CGRectGetHeight(v207);
    v170 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
    v171 = type metadata accessor for OfferButton();
    v184.receiver = v170;
    v184.super_class = v171;
    objc_msgSendSuper2(&v184, "frame");
    v172 = CGRectGetMinY(v208) / v169;
    sub_BD88(&qword_9419F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77DC20;
    *(inited + 32) = v172;
    *(inited + 40) = 1.0 - v166 / v169;
    *(inited + 48) = 0x3FF0000000000000;
    sub_4AC060(inited);
  }

  return sub_10A2C(&v185, &qword_94E5C8);
}

double sub_2D5840(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = sub_76A920();
  v149 = *(v8 - 8);
  v150 = v8;
  __chkstk_darwin(v8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  __chkstk_darwin(v11);
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v134 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v134 - v18;
  v20 = [v5 contentView];
  [v20 layoutMargins];

  v21 = [v6 contentView];
  [v21 layoutMargins];
  v23 = v22;

  v24 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_93CB28 != -1)
  {
    swift_once();
  }

  v145 = sub_BE38(v11, qword_99CC78);
  sub_2DE494(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  *(v19 + 4) = v29;
  *(v19 + 5) = v30;
  *(v19 + 1) = v23;
  *(v19 + 2) = v24;
  *(v19 + 3) = v27;
  *v19 = 0;
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v31;
  v33 = v11[15];
  sub_BEB8(&v19[v33]);
  sub_10914(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_BEB8(&v19[v34]);
  sub_10914(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = sub_7699E0();

  v37 = v19;
  if (v36)
  {
    sub_766470();
    sub_759360();
    (*(v149 + 8))(v10, v150);
  }

  sub_769DA0();
  sub_769DA0();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_75BB20();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = sub_766A10(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_2DE494(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    *(v15 + 4) = v49;
    *(v15 + 5) = v50;
    *(v15 + 1) = v23;
    *(v15 + 2) = v24;
    *(v15 + 3) = v27;
    *v15 = 0;
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v51;
    v53 = v11[15];
    sub_BEB8(&v15[v53]);
    sub_10914(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_BEB8(&v15[v54]);
    sub_10914(&v176, &v15[v54]);
    if (qword_93CC48 != -1)
    {
      swift_once();
    }

    v55 = sub_BD88(&qword_940AD0);
    v56 = sub_BE38(v55, qword_99CFC8);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_93CC38 != -1)
    {
      swift_once();
    }

    v58 = sub_BE38(v55, qword_99CF98);
    v57(&v15[v11[6]], v58, v55);
    if (qword_93CC60 != -1)
    {
      swift_once();
    }

    v59 = sub_BE38(v55, qword_99D010);
    v57(&v15[v11[8]], v59, v55);
    if (qword_93CC08 != -1)
    {
      swift_once();
    }

    v60 = sub_BD88(&qword_94E5D0);
    v61 = sub_BE38(v60, qword_99CF08);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_2DE564(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_BEB8(&v15[v62]);
    sub_10914(&v176, &v15[v62]);
    sub_2DE4FC(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_93CB60 != -1)
    {
      swift_once();
    }

    v63 = sub_BD88(&unk_94E7B0);
    sub_BE38(v63, qword_99CCF0);
    v175 = v6;
    v64 = v6;
    sub_7592B0();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_2DE494(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_BE70(0, &qword_93E550);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
  v68 = sub_BE70(0, &qword_93E550);
  v173 = v68;
  v174 = &protocol witness table for UIView;
  if (v67)
  {
    v69 = v66;
    v70 = v67;
  }

  else
  {
    v71 = objc_allocWithZone(UIView);
    v72 = v66;
    v70 = [v71 init];
  }

  *&v172 = v70;
  v151 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_BE70(0, &unk_944FA0);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView];
  v170 = sub_75A030();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  v167 = sub_759210();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  v142 = v77;
  if (v78)
  {
    v79 = v77;
    v80 = v78;
    v81 = v67;
    v82 = v151;
    v83 = v73;
    v84 = v74;
    v85 = v75;
    v86 = v76;
    [v80 transform];
    v176 = 0x3FF0000000000000uLL;
    v177 = 0;
    v178 = 0x3FF0000000000000;
    v179 = 0;
    v180 = 0;
    if (sub_769910())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    sub_769E80();
  }

  else
  {
    v156 = 0;
    v154 = 0u;
    v155 = 0u;
    v88 = v77;
    v89 = v67;
    v90 = v151;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v94 = v76;
  }

  v87 = v149;
LABEL_32:
  v95 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow];
  if (v95)
  {
    v149 = type metadata accessor for ChevronView();
    v141 = &protocol witness table for UIView;
  }

  else
  {
    v141 = 0;
    v149 = 0;
  }

  v96 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = sub_758E80();
    v140 = &protocol witness table for UIView;
  }

  else
  {
    v139 = 0;
    v140 = 0;
  }

  if (v97)
  {
    v99 = v68;
  }

  else
  {
    v99 = 0;
  }

  if (v97)
  {
    v100 = &protocol witness table for UIView;
  }

  else
  {
    v100 = 0;
  }

  v137 = v100;
  v138 = v99;
  if (v96)
  {
    v101 = v68;
  }

  else
  {
    v101 = 0;
  }

  if (v96)
  {
    v102 = &protocol witness table for UIView;
  }

  else
  {
    v102 = 0;
  }

  v135 = v102;
  v136 = v101;
  v103 = v142;
  v104 = &protocol witness table for UILabel;
  if (!v142)
  {
    v104 = 0;
  }

  v134 = v104;
  if (!v142)
  {
    v87 = 0;
  }

  v105 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v106 = v148;
  v148[3] = v105;
  v106[4] = sub_2DE5C4(&qword_943B20, type metadata accessor for ProductLockupInlineUberLayout);
  v107 = sub_B1B4(v106);
  sub_2DE4FC(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_10914(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_10914(&v169, v107 + v105[10]);
  sub_10914(&v166, v107 + v105[8]);
  sub_10914(&v163, v107 + v105[9]);
  sub_10914(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_10914(&v157, v107 + v105[13]);
  v114 = (v107 + v105[14]);
  *v114 = v103;
  v114[1] = 0;
  v114[2] = 0;
  v114[3] = v87;
  v114[4] = v134;
  v115 = v107 + v105[15];
  v116 = v155;
  *v115 = v154;
  *(v115 + 1) = v116;
  *(v115 + 4) = v156;
  v117 = (v107 + v105[16]);
  *v117 = v95;
  v117[1] = 0;
  v118 = v149;
  v117[2] = 0;
  v117[3] = v118;
  v117[4] = v141;
  v119 = (v107 + v105[17]);
  *v119 = v96;
  v119[1] = 0;
  v120 = v135;
  v121 = v136;
  v119[2] = 0;
  v119[3] = v121;
  v119[4] = v120;
  v122 = (v107 + v105[18]);
  *v122 = v97;
  v122[1] = 0;
  v123 = v137;
  v124 = v138;
  v122[2] = 0;
  v122[3] = v124;
  v122[4] = v123;
  v125 = (v107 + v105[19]);
  *v125 = v98;
  v125[1] = 0;
  v127 = v139;
  v126 = v140;
  v125[2] = 0;
  v125[3] = v127;
  v125[4] = v126;
  v128 = v98;
  v129 = v95;
  v130 = v96;
  v131 = v97;
  v132 = sub_2D8F08(v6, v107, a4);
  sub_2DE564(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_2D6508(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_93CB30 != -1)
  {
    swift_once();
  }

  v24 = sub_BE38(v8, qword_99CC90);
  __chkstk_darwin(v24);
  *&v25 = v86.n128_u64[0];
  *&v26 = v85.n128_u64[0];
  *(&v25 + 1) = v84.n128_u64[0];
  *(&v26 + 1) = v83.n128_u64[0];
  *(&v71 - 4) = v25;
  *(&v71 - 3) = v26;
  *(&v71 - 4) = v17;
  *(&v71 - 3) = v19;
  *(&v71 - 2) = v21;
  *(&v71 - 1) = v23;
  sub_2DE5C4(&qword_94E5D8, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_765470();
  v27 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v27)
  {
    v28 = v27;
    if (([v28 isHidden] & 1) == 0)
    {
      [v28 transform];
      v107 = 0x3FF0000000000000;
      v108 = 0;
      v109 = 0;
      v110 = 0x3FF0000000000000;
      v111 = 0;
      v112 = 0;
      if (sub_769910())
      {
        v105 = sub_BE70(0, &qword_93E550);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        sub_769E80();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = sub_75BB20();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_2DE494(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  v102 = sub_759210();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  v33 = sub_75BB20();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_134D8(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_BE70(0, &qword_93E550);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_BE70(0, &qword_93E550);
    v77 = &protocol witness table for UIView;
  }

  else
  {
    v76 = 0;
    v77 = 0;
  }

  if (v40)
  {
    v42 = v33;
  }

  else
  {
    v42 = 0;
  }

  if (v40)
  {
    v43 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
  }

  v74 = v43;
  v75 = v42;
  if (v39)
  {
    v44 = &protocol witness table for UILabel;
  }

  else
  {
    v44 = 0;
  }

  v72 = v40;
  v73 = v44;
  if (v39)
  {
    v45 = v33;
  }

  else
  {
    v45 = 0;
  }

  v71 = v45;
  v46 = v37 == 0;
  v47 = v37;
  if (v37)
  {
    v48 = &protocol witness table for UILabel;
  }

  else
  {
    v48 = 0;
  }

  v49 = v39;
  if (v46)
  {
    v50 = 0;
  }

  else
  {
    v50 = v33;
  }

  v51 = type metadata accessor for ProductLockupAccessibilityLayout(0);
  a1[3] = v51;
  a1[4] = sub_2DE5C4(&qword_941800, type metadata accessor for ProductLockupAccessibilityLayout);
  v52 = sub_B1B4(a1);
  sub_2DE4FC(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10914(&v101, v52);
  sub_10914(&v98, (v52 + 5));
  sub_10914(&v95, (v52 + 10));
  sub_10914(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_10914(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_10914(v88, (v52 + 35));
  v52[40] = v49;
  v52[41] = 0;
  v53 = v71;
  v54 = v72;
  v52[42] = 0;
  v52[43] = v53;
  v52[44] = v73;
  v52[45] = v54;
  v52[46] = 0;
  v52[47] = 0;
  v55 = v74;
  v52[48] = v75;
  v52[49] = v55;
  v56 = v80;
  v52[50] = v80;
  v52[51] = 0;
  v58 = v78;
  v57 = v79;
  v52[52] = 0;
  v52[53] = v58;
  v52[54] = v57;
  v52[55] = v41;
  v52[56] = 0;
  v52[57] = 0;
  v59 = v77;
  v52[58] = v76;
  v52[59] = v59;
  v60 = v41;
  v61 = v85.n128_u64[0];
  v62 = v84.n128_u64[0];
  v63 = v83.n128_u64[0];
  v64 = v82;
  v65 = v47;
  v66 = v81;
  v67 = v49;
  v68 = v54;
  v69 = v56;
  sub_2DD920(v5, v52, a4);
  sub_2DE564(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_BEB8(v104);
  return a4;
}

double sub_2D6B74(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_BD88(&unk_953FF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v108 - v10;
  v129 = type metadata accessor for ProductLockupLayout.Metrics(0);
  __chkstk_darwin(v129);
  v13 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v108 - v15;
  __chkstk_darwin(v17);
  v19 = &v108 - v18;
  *&v126 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v20 = *(v126 - 8);
  *&v21 = __chkstk_darwin(v126).n128_u64[0];
  v23 = (&v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_setTextAlignment_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[23]];
    sub_34A75C(v27, v19);

    sub_2DE494(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_2DE564(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = sub_75BB20();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = sub_769240();
      v123 = v32;
      v124 = v31;
    }

    else
    {
      v123 = 0;
      v124 = 0;
    }

    v41 = v126;
    goto LABEL_19;
  }

  v26 = v24;
  if ([v26 isHidden])
  {

    v25 = &selRef_setTextAlignment_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_93CB88 != -1)
  {
    swift_once();
  }

  v149 = qword_99CD68;
  v34 = v126;
  v35 = qword_99CD68;
  sub_BD88(&qword_93FBE0);
  sub_BE70(0, &qword_93F900);
  sub_7592F0();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_93CC88 != -1)
  {
    swift_once();
  }

  v37 = sub_766CA0();
  v38 = sub_BE38(v37, qword_99D088);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_B1B4(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (sub_769910())
  {
    v147 = sub_BE70(0, &qword_93E550);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    sub_769E80();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = sub_769240();
    v123 = v45;
    v124 = v44;
  }

  else
  {

    v123 = 0;
    v124 = 0;
  }

  v13 = v127;
LABEL_19:
  v126 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_2DE494(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_34A75C(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_2DE5C4(&qword_94E5E8, type metadata accessor for ProductLockupLayout.Metrics);
  sub_765470();

  sub_2DE564(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10A2C(v11, &unk_953FF0);
  v129 = v16;
  sub_2DE494(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  v144 = sub_759210();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  v61 = sub_75BB20();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_134D8(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_BE70(0, &qword_93E550);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_BE70(0, &qword_93E550);
    v114 = &protocol witness table for UIView;
  }

  else
  {
    v113 = 0;
    v114 = 0;
  }

  if (v68)
  {
    v70 = v61;
  }

  else
  {
    v70 = 0;
  }

  if (v68)
  {
    v71 = &protocol witness table for UILabel;
  }

  else
  {
    v71 = 0;
  }

  v111 = v71;
  v112 = v70;
  if (v67)
  {
    v72 = &protocol witness table for UILabel;
  }

  else
  {
    v72 = 0;
  }

  if (v67)
  {
    v73 = v61;
  }

  else
  {
    v73 = 0;
  }

  v109 = v73;
  v110 = v72;
  if (v65)
  {
    v74 = &protocol witness table for UILabel;
  }

  else
  {
    v74 = 0;
  }

  if (v65)
  {
    v75 = v61;
  }

  else
  {
    v75 = 0;
  }

  v76 = type metadata accessor for ProductLockupLayout(0);
  v77 = v125;
  v125[3] = v76;
  v77[4] = sub_2DE5C4(&unk_94E5F0, type metadata accessor for ProductLockupLayout);
  v78 = sub_B1B4(v77);
  sub_2DE4FC(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10914(&v143, v78 + v76[5]);
  sub_10914(&v140, v78 + v76[6]);
  sub_10914(&v137, v78 + v76[7]);
  sub_10914(&v134, v78 + v76[8]);
  v79 = (v78 + v76[9]);
  *v79 = v65;
  v79[1] = 0;
  v79[2] = 0;
  v79[3] = v75;
  v79[4] = v74;
  v80 = v78 + v76[10];
  *(v80 + 4) = 0;
  *v80 = 0u;
  *(v80 + 1) = 0u;
  sub_10914(&v131, v78 + v76[11]);
  sub_10914(v130, v78 + v76[12]);
  v81 = (v78 + v76[13]);
  *v81 = v67;
  v81[1] = 0;
  v83 = v109;
  v82 = v110;
  v81[2] = 0;
  v81[3] = v83;
  v81[4] = v82;
  v84 = (v78 + v76[14]);
  *v84 = v68;
  v84[1] = 0;
  v85 = v111;
  v86 = v112;
  v84[2] = 0;
  v84[3] = v86;
  v84[4] = v85;
  *(v78 + v76[15]) = v117;
  v87 = (v78 + v76[16]);
  v88 = v123;
  *v87 = v124;
  v87[1] = v88;
  v89 = (v78 + v76[17]);
  v90 = v118;
  *v89 = v118;
  v89[1] = 0;
  v92 = v115;
  v91 = v116;
  v89[2] = 0;
  v89[3] = v92;
  v89[4] = v91;
  v93 = (v78 + v76[18]);
  *v93 = v69;
  v93[1] = 0;
  v95 = v113;
  v94 = v114;
  v93[2] = 0;
  v93[3] = v95;
  v93[4] = v94;
  v96 = v69;
  v97 = v126;
  v98 = v122;
  v99 = v121;
  v100 = v120;
  v101 = v65;
  v102 = v119;
  v103 = v67;
  v104 = v68;
  v105 = v90;
  v106 = sub_2D9FD0(v6, v78, a4, a5);
  sub_2DE564(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_2DE564(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_BEB8(v146);
  return v106;
}

uint64_t sub_2D7648(double *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_BD88(&unk_953FF0);
  __chkstk_darwin(v20 - 8);
  v22 = &v29 - v21;
  v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[14] = a3;
  a1[15] = a4;
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a5;
  sub_BEB8((a1 + 4));
  sub_10914(&v30, (a1 + 4));
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a6;
  sub_BEB8((a1 + 9));
  sub_10914(&v30, (a1 + 9));
  *a1 = a7;
  a1[1] = a8;
  a1[2] = a9;
  a1[3] = a10;
  sub_1ED18(a2, v22, &unk_953FF0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10A2C(v22, &unk_953FF0);
  }

  sub_2DE4FC(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_2DC644(v26, a1 + *(v28 + 76));
}

uint64_t sub_2D7880(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  a1[14] = a2;
  a1[15] = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_BEB8((a1 + 4));
  sub_10914(&v16, (a1 + 4));
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_BEB8((a1 + 9));
  result = sub_10914(&v16, (a1 + 9));
  *a1 = a6;
  a1[1] = a7;
  a1[2] = a8;
  a1[3] = a9;
  return result;
}

void sub_2D7930()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_BE70(0, &qword_93E540);
    v3 = v2;
    v4 = sub_769FD0();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
  sub_BE70(0, &qword_93E540);
  v6 = sub_769FD0();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
  v8 = sub_769FF0();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView);
  v10 = sub_769FF0();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_769FE0();
    [v13 setTextColor:v14];
  }
}

void sub_2D7AA4(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = v7;
      v10 = a1;
      if (v7 == v9)
      {
        v11 = *&v1[v4];
        if (!v11)
        {
          goto LABEL_14;
        }

        goto LABEL_16;
      }

      [v8 setNeedsLayout];
      v11 = *&v1[v4];
      if (v11)
      {
LABEL_16:
        v18 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
        {
          type metadata accessor for VideoView();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_9405A0) = v18;
          }
        }

        return;
      }
    }

    else
    {
      v17 = a1;
    }

LABEL_14:

    return;
  }

  if (v5)
  {
    v12 = *(*(v5 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
      {
        type metadata accessor for VideoView();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_9405A0) = 0;
        }
      }
    }
  }
}

uint64_t sub_2D7E34()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) == 1)
  {
    swift_unknownObjectWeakInit();
    sub_2D7E8C();
    result = swift_unknownObjectWeakDestroy();
    *(v0 + v1) = 0;
  }

  return result;
}

void sub_2D7E8C()
{
  v0 = sub_768380();
  __chkstk_darwin(v0);
  v1 = sub_7683E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v19 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel;
    v11 = [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v11 && (v11, ([*&v9[v10] isHidden] & 1) != 0))
    {
      sub_BE70(0, &qword_940340);
      v21 = sub_769970();
      sub_7683D0();
      sub_768450();
      v20 = *(v2 + 8);
      v20(v4, v1);
      v12 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
      v13 = *&v9[v10];
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v12;
      aBlock[4] = sub_2DC6E8;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88C640;
      v19[1] = _Block_copy(aBlock);
      v22 = _swiftEmptyArrayStorage;
      sub_2DE5C4(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      v15 = v12;
      v16 = v13;
      v17 = v15;
      sub_BD88(&qword_940350);
      sub_4C874();
      sub_76A5A0();
      sub_768420();
      swift_allocObject();
      sub_768400();

      v18 = v21;
      sub_769940();

      v20(v7, v1);
    }

    else
    {
    }
  }
}

void sub_2D8214(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_2DC708;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_23F0CC;
  v15 = &unk_88C690;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_2DC78C;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_3D6D80;
  v15 = &unk_88C6E0;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_2D83D0(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [v5 setAlpha:a2];
      --v2;
    }

    while (v2);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setNeedsLayout];
  }
}

void sub_2D8468(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

    v12 = v11 == 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v12 = 0;
    v13 = *(a4 + 16);
    if (!v13)
    {
      return;
    }
  }

  v14 = (a4 + 32);
  do
  {
    v15 = *v14++;
    [v15 setHidden:v12];
    --v13;
  }

  while (v13);
}

void sub_2D8704()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    sub_75BED0();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_2D8888()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_2D88C4(uint64_t **a1))()
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
  v2[4] = sub_2D21CC(v2);
  return sub_21028;
}

uint64_t sub_2D8934()
{
  ObjectType = swift_getObjectType();
  v1 = sub_2DE5C4(&unk_94E5B0, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_2D89A8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_2DE5C4(&unk_94E5B0, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_2D8A34(uint64_t *a1))()
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
  sub_2DE5C4(&unk_94E5B0, type metadata accessor for ProductLockupCollectionViewCell);
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_2D8AF0(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
      sub_BE70(0, &qword_93E550);
      v9 = v8;
      v10 = sub_76A1C0();

      v5 = v7;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_2D8CA0(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_76A920();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 traitCollection];
  v11 = sub_7699E0();

  if (v11)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v6 + 8))(v9, v5);
  }

  sub_769DA0();
  sub_769DA0();
  sub_B170(a1, a1[3]);
  sub_B170(a1, a1[3]);
  sub_7665A0();
  return sub_766A10(v14) > 1;
}

uint64_t sub_2D8E78(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_7699E0() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_7699F0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 1;
  }
}

double sub_2D8F08(void *a1, uint64_t a2, double a3)
{
  v6 = sub_BD88(&qword_940AD0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_7699D0();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_B170((a2 + v15[15]), *(a2 + v15[15] + 24));
    sub_33964();
    sub_766700();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_B170((a2 + v15[16]), *(a2 + v15[16] + 24));
    sub_33964();
    sub_766700();
    v16(v12, v8);
    sub_B170((a2 + v15[17]), *(a2 + v15[17] + 24));
    sub_33964();
    v17 = v49;
    sub_766700();
    v16(v12, v8);
    sub_766470();
    sub_759360();
    v16(v12, v8);
    sub_BD88(&qword_94E5D0);
    sub_759380();
    sub_766470();
    sub_759360();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  sub_769DA0();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = sub_7699E0();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_B170((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  sub_7665A0();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_B170(v27, v27[3]);
  sub_7665A0();
  sub_B170(v27, v27[3]);
  if (sub_766500())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_766470();
    sub_759360();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    sub_766720();
  }

  sub_C64E0(&v52);
  if (v53)
  {
    sub_10914(&v52, v54);
    sub_B170(v54, v55);
    sub_7665A0();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_B170((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    sub_766720();
    sub_B170((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    sub_33964();
    sub_766700();
    (*(v9 + 8))(v12, v8);
    sub_BEB8(v54);
  }

  else
  {
    sub_10A2C(&v52, &unk_943B10);
  }

  v31 = v50;
  sub_C64E0(v54);
  v32 = v55;
  sub_10A2C(v54, &unk_943B10);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = sub_7699E0();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = sub_769A00(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_766470();
      sub_759360();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = sub_7699D0();

  if (v38)
  {
    sub_C64E0(v54);
    sub_10A2C(v54, &unk_943B10);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_BD88(&qword_94E5D0);
  v40 = v49;
  sub_759380();
  sub_766470();
  sub_759360();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_766470();
  sub_759360();
  v41(v12, v8);
  sub_766470();
  sub_759360();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  sub_766720();
  sub_B170((a2 + v39[9]), *(a2 + v39[9] + 24));
  sub_33964();
  sub_766700();
  v41(v12, v8);
  sub_B170((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  sub_7665B0();
  sub_B170((a2 + v39[15]), *(a2 + v39[15] + 24));
  sub_33964();
  sub_766700();
  v41(v12, v8);
  sub_B170((a2 + v39[16]), *(a2 + v39[16] + 24));
  sub_33964();
  sub_766700();
  v41(v12, v8);
  return a3;
}

double sub_2D9A48(uint64_t a1, void *a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170(a2 + 35, a2[38]);
  v8 = sub_766540();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_B170(a2 + 35, a2[38]);
    sub_7665A0();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    sub_766720();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_1ED18((a2 + 40), &v48, &qword_9417D0);
  if (v49)
  {
    sub_10914(&v48, v50);
    sub_B170(v50, v51);
    sub_7665A0();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_BD88(&qword_940AD0);
    sub_7592B0();
    v47 = v48;
    v20 = v18;
    sub_766720();
    v22 = v21;
    sub_BEB8(v50);
    v45 = v9;
  }

  else
  {
    sub_10A2C(&v48, &qword_9417D0);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_1ED18((a2 + 45), &v48, &qword_9417D0);
  if (v49)
  {
    sub_10914(&v48, v50);
    sub_B170(v50, v51);
    sub_7665A0();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    sub_33964();
    sub_766700();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    sub_766720();
    v31 = v30;
    sub_BEB8(v50);
    v32 = v9;
  }

  else
  {
    sub_10A2C(&v48, &qword_9417D0);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_B170(a2 + 25, a2[28]);
  sub_7665B0();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_B170(v35 + 9, *(v35 + 12));
  sub_33964();
  sub_766700();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_B170(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  sub_33964();
  sub_766700();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_2D9FD0(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_7699E0();

  sub_B170((a2 + 32), *(a2 + 56));
  sub_33964();
  sub_766700();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_B170((a2 + 72), *(a2 + 96));
  sub_33964();
  sub_766700();
  v15(v12, v8);
  v16 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19[0] = a1;
  sub_BD88(&qword_940AD0);
  sub_7592B0();
  sub_2DA2B4(a1, a2, v16 - *&v19[1], a4);
  sub_B170((a2 + *(v17 + 96)), *(a2 + *(v17 + 96) + 24));
  sub_33964();
  sub_766700();
  v15(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_2DA834(a1, a2, a3, a4);
  }

  return a3;
}

double sub_2DA2B4(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_7699E0();

  v44 = type metadata accessor for ProductLockupLayout(0);
  v15 = v44[10];
  sub_1ED18(a2 + v15, v45, &unk_943B10);
  if (v46)
  {
    sub_B170(v45, v46);
    sub_7665B0();
    v17 = v16;
    sub_BEB8(v45);
  }

  else
  {
    sub_10A2C(v45, &unk_943B10);
    v17 = 0.0;
  }

  v18 = sub_2DB76C(a1, a2);
  sub_1ED18(a2 + v15, v45, &unk_943B10);
  v19 = v46;
  sub_10A2C(v45, &unk_943B10);
  if (v19)
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v44[15]))
      {
        v21 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_B170((a2 + *(v21 + 92)), *(a2 + *(v21 + 92) + 24));
        sub_33964();
        sub_766700();
        v23 = v22;
        (*(v9 + 8))(v12, v8);
        v18 = v18 + v17 + v23;
      }

LABEL_9:
      if (*(a2 + v20[15]))
      {
        return v18;
      }
    }
  }

  else
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v43 = *(a2 + 120);
  v24 = (a2 + v20[11]);
  sub_B170(v24, v24[3]);
  sub_7665B0();
  v26 = v25;
  sub_1ED18(a2 + v15, v45, &unk_943B10);
  v27 = v46;
  sub_10A2C(v45, &unk_943B10);
  if (v27)
  {
    v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_B170((a2 + *(v28 + 80)), *(a2 + *(v28 + 80) + 24));
    sub_33964();
    sub_766700();
    (*(v9 + 8))(v12, v8);
  }

  v29 = a2;
  v30 = v8;
  v41 = v29;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v31 = v29 + *(v42 + 76);
  v32 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_B170((v31 + *(v32 + 28)), *(v31 + *(v32 + 28) + 24));
  sub_33964();
  sub_766700();
  v33 = *(v9 + 8);
  v33(v12, v30);
  sub_B170((v31 + *(v32 + 24)), *(v31 + *(v32 + 24) + 24));
  sub_33964();
  sub_766700();
  v33(v12, v30);
  v34 = v41;
  sub_B170((v41 + v44[12]), *(v41 + v44[12] + 24));
  sub_7665B0();
  v36 = v35;
  sub_B170(v24, v24[3]);
  if (sub_766540())
  {
    v26 = v36;
  }

  sub_B170((v34 + *(v42 + 72)), *(v34 + *(v42 + 72) + 24));
  sub_33964();
  sub_766700();
  v38 = v37;
  v33(v12, v30);
  if (v18 < v43 - v38 - v26)
  {
    v18 = v43 - v38 - v26;
  }

  return sub_2DA834(a1, v34, a3, a4) + v18;
}

double sub_2DA834(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_76A920();
  v41 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v42[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = sub_7699E0();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_B170((a2 + v14[11]), *(a2 + v14[11] + 24));
  sub_7665B0();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_B170((a2 + v17[18]), *(a2 + v17[18] + 24));
  sub_33964();
  v18 = v8;
  v19 = v41;
  sub_766700();
  v21 = v20;
  v22 = *(v19 + 8);
  v22(v11, v18);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v23 = a2 + v17[19];
    v24 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_B170((v23 + *(v24 + 28)), *(v23 + *(v24 + 28) + 24));
    sub_33964();
    sub_766700();
    v26 = v25;
    v22(v11, v18);
    sub_2DAC70(a1, a2, a3, a4, a3 - (v16 + v26));
    v28 = v27;
    v29 = sub_2DB4F0(a1, a2);
    if (v28 > v29)
    {
      v29 = v28;
    }
  }

  else
  {
    v30 = v14[10];
    sub_1ED18(a2 + v30, v42, &unk_943B10);
    if (v43)
    {
      sub_B170(v42, v43);
      sub_7665B0();
      v32 = v31;
      sub_BEB8(v42);
    }

    else
    {
      sub_10A2C(v42, &unk_943B10);
      v32 = 0.0;
    }

    sub_1ED18(a2 + v30, v42, &unk_943B10);
    v33 = v43;
    sub_10A2C(v42, &unk_943B10);
    if (v33)
    {
      sub_B170((a2 + v17[20]), *(a2 + v17[20] + 24));
      sub_33964();
      sub_766700();
      v35 = v34;
      v22(v11, v18);
    }

    else
    {
      v35 = 0.0;
    }

    v36 = a2 + v17[19];
    v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_B170((v36 + *(v37 + 28)), *(v36 + *(v37 + 28) + 24));
    sub_33964();
    sub_766700();
    v39 = v38;
    v22(v11, v18);
    sub_2DAC70(a1, a2, a3, a4, a3 - (v35 + v32 + v16 + v39));
  }

  return v21 + 0.0 + v29;
}

void sub_2DAC70(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = sub_762D10();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v71 - v12;
  v13 = sub_76A920();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_756CB0();
  v80 = *(v16 - 8);
  v81 = v16;
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_B170(v20, v20[3]);
  sub_7665B0();
  v21 = (a2 + v19[16]);
  v79 = v21[1];
  if (v79)
  {
    v74 = v14;
    v75 = v13;
    v76 = *v21;
    v22 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v84[0] = a1;
    sub_BD88(&unk_94E7B0);
    v71 = v22;
    sub_7592B0();
    v23 = v87;
    v72 = v19;
    v24 = v19[15];
    v73 = a2;
    v25 = *(a2 + v24);
    sub_B170(v20, v20[3]);
    if (sub_766540())
    {
    }

    else
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v79;

      v29 = [v27 mainScreen];
      [v29 bounds];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v88.origin.x = v31;
      v88.origin.y = v33;
      v88.size.width = v35;
      v88.size.height = v37;
      Width = CGRectGetWidth(v88);
      JUScreenClassGetPortraitWidth();
      v39 = v23;
      if (Width > v40 || (sub_756CA0(), v84[0] = v76, v84[1] = v28, sub_12EC40(), sub_76A4C0(), v42 = v41, v80[1](v18, v81), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = sub_7699E0(), v43, (v44)))
      {
        v45 = sub_2E8950();
        v46 = *(v45 + 16);
        v80 = (v82 + 8);
        LODWORD(v81) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v47 = v45 + 40;
        v82 = -v46;
        v48 = -1;
        while (v82 + v48 != -1)
        {
          if (++v48 >= *(v45 + 16))
          {
            __break(1u);
            return;
          }

          v49 = v47 + 16;
          v50 = a1;
          v51 = sub_7653B0();
          v85 = v51;
          v86 = sub_2DE5C4(&qword_93F9B0, &type metadata accessor for Feature);
          v52 = sub_B1B4(v84);
          (*(*(v51 - 8) + 104))(v52, v81, v51);
          v53 = v39;

          v54 = v39;
          sub_765C30();
          sub_BEB8(v84);
          a1 = v50;
          sub_762D00();
          sub_2DE5C4(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
          v55 = v83;
          sub_7665A0();
          v57 = v56;
          v58 = v55;
          v39 = v54;
          (*v80)(v10, v58);
          v47 = v49;
          if (v57 > a5)
          {

            goto LABEL_13;
          }
        }

        v64 = sub_7653B0();
        v85 = v64;
        v86 = sub_2DE5C4(&qword_93F9B0, &type metadata accessor for Feature);
        v65 = sub_B1B4(v84);
        (*(*(v64 - 8) + 104))(v65, v81, v64);
        v66 = v39;
        sub_765C30();
        sub_BEB8(v84);
        v67 = v77;
        sub_762D00();
        sub_2DE5C4(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
        v68 = v83;
        sub_7665A0();
        v70 = v69;

        (*v80)(v67, v68);
        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
        if (v70 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v59 = v75;
        v60 = v74;
        v61 = v73;
        v62 = v72;
LABEL_14:
        sub_B170((v61 + v62[12]), *(v61 + v62[12] + 24));
        sub_7665A0();
        sub_B170(v71, v71[3]);
        v63 = v78;
        sub_33964();
        sub_766700();
        (*(v60 + 8))(v63, v59);
      }
    }
  }
}

double sub_2DB4F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_1ED18(a2 + *(v7 + 52), &v22, &qword_9417D0);
  if (!v23)
  {
    sub_10A2C(&v22, &qword_9417D0);
    return 0.0;
  }

  sub_10914(&v22, v24);
  sub_1ED18(a2 + *(v7 + 56), &v20, &qword_9417D0);
  if (!v21)
  {
    sub_10A2C(&v20, &qword_9417D0);
    sub_BEB8(v24);
    return 0.0;
  }

  sub_10914(&v20, &v22);
  sub_B170(v24, v24[3]);
  sub_7665A0();
  v9 = v8;
  v11 = v10;
  sub_B170(&v22, v23);
  sub_7665A0();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_B170((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  sub_33964();
  sub_766700();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_BEB8(&v22);
  sub_BEB8(v24);
  return v17;
}

double sub_2DB76C(void *a1, uint64_t a2)
{
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = sub_7699E0();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_BD88(&qword_940AD0);
  sub_7592B0();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  sub_7592B0();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_1ED18(a2 + v16, v58, &unk_943B10);
  if (v59)
  {
    sub_B170(v58, v59);
    sub_7665B0();
    sub_BEB8(v58);
  }

  else
  {
    sub_10A2C(v58, &unk_943B10);
  }

  sub_1ED18(a2 + v16, v58, &unk_943B10);
  v17 = v59;
  sub_10A2C(v58, &unk_943B10);
  if (v17)
  {
    sub_B170((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    sub_33964();
    sub_766700();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_B170(v18, v18[3]);
  sub_7665A0();
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v26 = v25;
  if (v12 - v19 > 0.0)
  {
    v27 = v12 - v19;
  }

  else
  {
    v27 = 0.0;
  }

  sub_B170(v18, v18[3]);
  sub_7669E0();
  v29 = v23 - v26 + v27 + v28;
  sub_134D8(v18, v58);
  *&v55 = a1;
  sub_BD88(&unk_94B6E0);
  sub_7592B0();
  v30 = v15[9];
  sub_1ED18(a2 + v30, &v55, &qword_9417D0);
  sub_10A2C(&v55, &qword_9417D0);
  sub_B170(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  sub_766A10(v60);
  sub_BEB8(v58);
  v31 = (a2 + v15[8]);
  sub_B170(v31, v31[3]);
  sub_7669D0();
  v32 = (a2 + v15[7]);
  sub_B170(v32, v32[3]);
  sub_7669D0();
  sub_B170(v31, v31[3]);
  sub_7665A0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_B170(v32, v32[3]);
  sub_7665A0();
  v40 = v39;
  v41 = v14 - v36 + v34 - v38;
  v44 = v14 - v42 + v43 - v39;
  if (v41 > v44)
  {
    v45 = v41;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + v45;
  sub_1ED18(a2 + v30, &v55, &qword_9417D0);
  if (v56)
  {
    sub_10914(&v55, v58);
    v57 = a1;
    sub_7592B0();
    v47 = *&v55;
    sub_B170(v58, v59);
    sub_7665A0();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_BEB8(v58);
  }

  else
  {
    if (v41 >= v44)
    {
      v49 = v38;
    }

    else
    {
      v49 = v40;
    }

    sub_10A2C(&v55, &qword_9417D0);
  }

  return v46 + v49;
}

void sub_2DBD4C(void *a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_93CBA0 != -1)
    {
      swift_once();
    }

    v7 = sub_7666D0();
    v8 = sub_BE38(v7, qword_99CD90);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    sub_75BA40();
    v10 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_93CB70 != -1)
    {
      swift_once();
    }

    v11 = sub_BD88(&unk_94E7B0);
    sub_BE38(v11, qword_99CD20);
    v23 = a1;
    sub_7592B0();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_93CB98 != -1)
    {
      swift_once();
    }

    v13 = sub_BD88(&qword_94E610);
    sub_BE38(v13, qword_99CD78);
    v24 = a1;
    sub_7592B0();
    v14 = sub_7666D0();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    sub_75BA40();
    if (qword_93CBA8 != -1)
    {
      swift_once();
    }

    sub_BE38(v13, qword_99CDA8);
    v24 = a1;
    sub_7592B0();
    v15(v6, 0, 1, v14);
    sub_75BA40();
  }

  if (qword_93CBA8 != -1)
  {
    swift_once();
  }

  v16 = sub_BD88(&qword_94E610);
  sub_BE38(v16, qword_99CDA8);
  v24 = a1;
  sub_7592B0();
  v17 = sub_7666D0();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  sub_75BA40();
  if (qword_93CBC0 != -1)
  {
    swift_once();
  }

  sub_BE38(v16, qword_99CDF0);
  v24 = a1;
  sub_7592B0();
  v18(v6, 0, 1, v17);
  sub_75BA40();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_93CBB8;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_BE38(v16, qword_99CDD8);
    v23 = a1;
    sub_7592B0();
    v18(v6, 0, 1, v17);
    sub_75BA40();
  }
}

void sub_2DC2A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_93CCD0 != -1)
    {
      swift_once();
    }

    v5 = sub_BD88(&unk_94B6E0);
    v6 = qword_99D160;
  }

  else
  {
    if (qword_93CCC8 != -1)
    {
      swift_once();
    }

    v5 = sub_BD88(&unk_94B6E0);
    v6 = qword_99D148;
  }

  sub_BE38(v5, v6);
  sub_7592B0();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_93CCF8 != -1)
  {
    swift_once();
  }

  v8 = sub_BD88(&unk_94B6E0);
  sub_BE38(v8, qword_99D1D8);
  sub_7592B0();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel);
  if (qword_93CCD8 != -1)
  {
    swift_once();
  }

  sub_BE38(v8, qword_99D178);
  sub_7592B0();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
  sub_7592B0();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_93CCE0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_BE38(v8, qword_99D190);
    sub_7592B0();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_93CCC0;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_BE38(v8, qword_99D130);
    sub_7592B0();
    [v17 setNumberOfLines:a1];
  }
}

uint64_t sub_2DC644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DC6A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2DC6F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2DC708()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_2DC754()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_2DC7A0(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_7580D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_764CF0();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    sub_758220();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    sub_769240();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_7580C0();
  (*(v12 + 8))(v14, v11);
  if (v27)
  {
    if (v26)
    {

LABEL_16:
      v28 = v22;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_19:
  sub_BD88(&unk_94E620);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_77DC20;
  v30 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
  *(v29 + 32) = v30;
  *(v29 + 40) = v20;
  *(v29 + 48) = v22;
  v31 = v30;
  v32 = v31;
  if (a3)
  {
    v33 = a1 & 1;
    if (a1)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = 1.0;
    }

    [v31 setAlpha:v34];
    [v32 setHidden:a1 & 1];

    v35 = *(v29 + 40);
    [v35 setAlpha:v34];
    [v35 setHidden:v33];

    v36 = *(v29 + 48);
    [v36 setAlpha:v34];
    [v36 setHidden:v33];

    [v6 setNeedsLayout];
LABEL_31:

    (*(v12 + 8))(v55, v54);
    return;
  }

  v37 = 0.0;
  if (a1)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  [v31 setAlpha:v38];
  [v32 setHidden:0];

  v39 = *(v29 + 40);
  [v39 setAlpha:v38];
  [v39 setHidden:0];

  v40 = *(v29 + 48);
  [v40 setAlpha:v38];
  [v40 setHidden:0];

  v41 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    v52 = a1 & 1;
    if ((a1 & 1) == 0)
    {
      v37 = 1.0;
    }

    v44 = *&v53;
    *&v6[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_2DE750;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_23F0CC;
    v59 = &unk_88C848;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_2DE79C;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_3D6D80;
    v59 = &unk_88C898;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

void sub_2DCDEC(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    sub_75BB20();
    v23 = sub_75BB00();
    v24 = v23;
    v25 = *&a5[v14];
    *&a5[v14] = v23;
    if (v23)
    {
      v40 = v7;
      if (!v25)
      {
        v29 = v23;
        v30 = v24;
        if (v24)
        {
LABEL_22:
          v31 = v30;
          v32 = [a5 contentView];
          [v32 addSubview:v31];

          sub_2D2674();
          goto LABEL_23;
        }

LABEL_19:

LABEL_23:
        v7 = v25;
        goto LABEL_24;
      }

      v38 = v11;
      v26 = v23;
      v7 = v25;
      v37 = v26;
      v27 = sub_76A1C0();

      if (v27)
      {

        v11 = v38;
LABEL_24:

        v24 = *&a5[v14];
        LOBYTE(v7) = v40;
        goto LABEL_25;
      }

      v11 = v38;
    }

    else
    {
      if (!v25)
      {
LABEL_25:
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, sub_768C10(), sub_10A2C(v42, &unk_93FBD0), sub_10A2C(v43, &unk_93FBD0), sub_769E70(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = sub_769210();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (sub_7699E0() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = sub_7699F0();

            if (v28)
            {
              v22 = 2;
            }

            else
            {
              v22 = 0;
            }
          }

          [v20 setTextAlignment:v22];
        }

        goto LABEL_28;
      }

      v40 = v7;
      v7 = v25;
    }

    [v7 removeFromSuperview];
    v30 = *&a5[v14];
    if (v30)
    {
      goto LABEL_22;
    }

    goto LABEL_19;
  }

LABEL_29:
  v35 = a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_2D34AC(v35);
}

void sub_2DD190()
{
  v1 = v0;
  v2 = sub_75A010();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_766CA0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - v13;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_75C840();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v17 = [objc_allocWithZone(UIView) init];
  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView) = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel;
  sub_75BB20();
  *(v1 + v19) = sub_75BB00();
  v20 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel;
  *(v1 + v22) = sub_75BB00();
  v23 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel;
  *(v1 + v23) = sub_75BB00();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v44 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView;
  v24 = sub_765770();
  (*(*(v24 - 8) + 56))(v45, 1, 1, v24);
  *v7 = UIFontTextStyleFootnote;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v50 = v4;
  v51 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v49);
  (*(v5 + 16))(v25, v7, v4);
  v26 = UIFontTextStyleFootnote;
  sub_766CB0();
  (*(v5 + 8))(v7, v4);
  (*(v47 + 104))(v46, enum case for WordmarkView.Alignment.center(_:), v48);
  v50 = v8;
  v51 = &protocol witness table for StaticDimension;
  v27 = sub_B1B4(v49);
  (*(v9 + 16))(v27, v11, v8);
  v28 = objc_allocWithZone(sub_75A030());
  v29 = sub_75A000();
  (*(v9 + 8))(v11, v8);
  *(v1 + v44) = v29;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton;
  v31 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v30) = sub_1DD00C(0);
  v32 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v1 + v32) = sub_75BB00();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v33 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v1 + v33) = [objc_allocWithZone(UIView) init];
  v34 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurEffect;
  *(v1 + v34) = [objc_opt_self() effectWithStyle:7];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView) = 0;
  v35 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView;
  sub_759210();
  *(v1 + v36) = sub_759020();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v37 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_theme;
  v40 = enum case for ProductPageTheme.infer(_:);
  v41 = sub_75BED0();
  (*(*(v41 - 8) + 104))(v1 + v39, v40, v41);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  sub_75DC80();
  v42 = v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkObservation;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;
  v43 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler);
  *v43 = 0;
  v43[1] = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  sub_76A840();
  __break(1u);
}

double sub_2DD920(void *a1, void *a2, double a3)
{
  v6 = sub_76A920();
  v90 = *(v6 - 8);
  __chkstk_darwin(v6);
  v89 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64));
  v9 = *v8;
  v10 = a3 - v8[1] - v8[3];
  v85 = v8[2];
  v86 = v9;
  v11 = a3 - v9 - v85;
  v12 = [a1 traitCollection];
  v13 = sub_7699E0();

  sub_1ED18((a2 + 30), v100, &unk_943B10);
  if (v101)
  {
    sub_B170(v100, v101);
    sub_7665B0();
    v15 = v14;
    sub_BEB8(v100);
  }

  else
  {
    sub_10A2C(v100, &unk_943B10);
    v15 = 0.0;
  }

  sub_1ED18((a2 + 30), v100, &unk_943B10);
  v16 = v101;
  sub_10A2C(v100, &unk_943B10);
  v91 = a2;
  v87 = v6;
  if (v16)
  {
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_B170((v8 + *(v17 + 48)), *(v8 + *(v17 + 48) + 24));
    v18 = v89;
    sub_33964();
    sub_766700();
    v20 = v19;
    (*(v90 + 8))(v18, v6);
    if (v13)
    {
LABEL_6:
      v21 = v8;
      v22 = v10 - v15 - v20;
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0.0;
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v21 = v8;
  v22 = v10;
LABEL_9:
  v88 = v22;
  v23 = v91;
  sub_B170(v91 + 5, v91[8]);
  sub_7665A0();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v98 = a1;
  sub_BD88(&qword_940AD0);
  sub_7592B0();
  *&v98 = v100[0];
  v83 = v25;
  v81 = v27;
  sub_766720();
  v80 = v29;
  sub_B170(v23 + 5, v23[8]);
  sub_7669E0();
  v79 = v30;
  v31 = v23[13];
  v78[0] = (v23 + 10);
  sub_B170(v23 + 10, v31);
  sub_7665A0();
  v33 = v32;
  v35 = v34;
  v36 = *(v28 + 36);
  v37 = v28;
  *&v98 = a1;
  v38 = v21;
  v78[1] = v36;
  sub_7592B0();
  *&v98 = v100[0];
  sub_766720();
  v39 = v11;
  v41 = v33 - v35 + v40;
  v42 = (v23 + 15);
  sub_B170(v23 + 15, v23[18]);
  v84 = v39;
  sub_7665A0();
  v44 = v43;
  v46 = v45;
  v82 = v37;
  *&v98 = a1;
  sub_7592B0();
  *&v98 = v100[0];
  sub_766720();
  v48 = v44 - v46 + v47;
  if (v48 >= v41)
  {
    sub_134D8(v42, &v98);
    v42 = v78[0];
  }

  else
  {
    sub_134D8(v78[0], &v98);
  }

  sub_134D8(v42, &v96);
  v95[0] = a1;
  sub_7592B0();
  v49 = v100[0];
  v95[0] = a1;
  sub_7592B0();
  v50 = v100[0];
  if (v48 >= v41)
  {
    v51 = v100[0];
  }

  else
  {
    v51 = v49;
  }

  v95[3] = &type metadata for CGFloat;
  v95[4] = &protocol witness table for CGFloat;
  v95[0] = v51;
  if (v48 >= v41)
  {
    v50 = v49;
  }

  v93 = &type metadata for CGFloat;
  v94 = &protocol witness table for CGFloat;
  *&v92 = v50;
  sub_10914(&v98, v100);
  sub_134D8(v95, v102);
  sub_10914(&v96, &v103);
  sub_10914(&v92, &v104);
  sub_BEB8(v95);
  sub_B170(v100, v101);
  sub_7665A0();
  v53 = v52;
  v55 = v54;
  sub_B170(v102, v102[3]);
  sub_766720();
  v57 = v56;
  v58 = v91;
  sub_1ED18((v91 + 20), &v96, &qword_9417D0);
  v59 = v87;
  if (v97)
  {
    sub_10914(&v96, &v98);
    sub_B170(&v98, v99);
    sub_7665A0();
    v61 = v60;
    v63 = v62;
    v64 = v82;
    v95[0] = a1;
    sub_7592B0();
    v95[0] = v96;
    sub_766720();
    v66 = v61 - v63 + v65;
    sub_BEB8(&v98);
    v67 = v90;
  }

  else
  {
    sub_10A2C(&v96, &qword_9417D0);
    v66 = 0.0;
    v67 = v90;
    v64 = v82;
  }

  v68 = v66 + v53 - v55 + v57 + v83 - v81 + v80 + v79 + v21[15];
  sub_B170((v21 + *(v64 + 52)), *(v21 + *(v64 + 52) + 24));
  v69 = v89;
  sub_33964();
  sub_766700();
  v71 = v70;
  v72 = *(v67 + 8);
  v72(v69, v59);
  v73 = v68 + v71 + sub_2D9A48(a1, v58);
  sub_B170(v38 + 4, *(v38 + 7));
  sub_33964();
  sub_766700();
  v75 = v74;
  v72(v69, v59);
  v76 = v85 + v86 + v73 + v75;
  sub_10A2C(v100, &qword_94E5E0);
  return v76;
}

id sub_2DE18C()
{
  v1 = sub_768380();
  __chkstk_darwin(v1);
  v2 = sub_7683E0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_BE70(0, &qword_940340);
      v9 = sub_769970();
      sub_7683D0();
      v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_2DE7CC;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88C730;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_2DE5C4(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_BD88(&qword_940350);
      sub_4C874();
      sub_76A5A0();
      sub_768420();
      swift_allocObject();
      sub_768400();

      sub_769940();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_2DE494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DE4FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2DE564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2DE5C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2DE60C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2DE64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_94E618);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2DE6C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2DE710()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2DE75C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2DE83C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_766690();
  __chkstk_darwin(v3 - 8);
  v4 = sub_7620D0();
  sub_161DC(v4, a2);
  sub_BE38(v4, a2);
  sub_7666A0();
  return sub_7620C0();
}

uint64_t sub_2DE98C()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_BD88(&qword_94E700);
  sub_161DC(v7, qword_94E690);
  sub_BE38(v7, qword_94E690);
  if (qword_93C918 != -1)
  {
    swift_once();
  }

  v8 = sub_BE38(v0, qword_94E678);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_93C910 != -1)
  {
    swift_once();
  }

  v10 = sub_BE38(v0, qword_94E660);
  v9(v3, v10, v0);
  sub_BD88(&qword_93FBE0);
  return sub_7592D0();
}

char *sub_2DEB6C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  sub_75BB20();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel] = v12;
  sub_759210();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  sub_759070();

  sub_2DED10();
  return v15;
}

id sub_2DED10()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_769A00();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_75BA90();
    v10(v6, v9, v2);
    return sub_75BA90();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

id sub_2DF0B4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_7699D0();

  if ((v3 & 1) == 0)
  {
    return &dword_0 + 1;
  }

  result = [v1 window];
  if (result)
  {
    v5 = result;
    v6 = [v1 traitCollection];
    v7 = [v6 userInterfaceIdiom];

    if (v7 == &dword_0 + 1)
    {
      [v5 frame];
      Width = CGRectGetWidth(v10);
      [v1 bounds];
      v9 = CGRectGetWidth(v11);

      return (v9 < Width);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2DF1B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_7620F0();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7620D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_2DF0B4())
  {
    if (qword_93C908 != -1)
    {
      swift_once();
    }

    v17 = qword_94E648;
  }

  else
  {
    if (qword_93C900 != -1)
    {
      swift_once();
    }

    v17 = qword_94E630;
  }

  v18 = sub_BE38(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  sub_765470();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel];
  v46 = sub_75BB20();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView];
  v40 = sub_759210();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  sub_7620E0();
  sub_75D650();
  v29 = v34;
  sub_7620A0();
  (*(v37 + 8))(v29, v38);
  sub_2DF668();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_2DF608()
{
  swift_getObjectType();
  sub_75D650();
  CGRectGetWidth(v1);
  return sub_7620B0();
}

uint64_t sub_2DF668()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D650();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = 0.0;
  v16.size.height = 0.0;
  result = CGRectEqualToRect(v15, v16);
  if ((result & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artwork])
      {
        v8 = qword_93C920;

        if (v8 != -1)
        {
          swift_once();
        }

        v9 = sub_BD88(&qword_94E700);
        sub_BE38(v9, qword_94E690);
        v14 = v1;
        v10 = v1;
        sub_7592B0();

        sub_75D650();
        sub_766610();
        (*(v3 + 8))(v5, v2);
        sub_765320();
        if (*&v10[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkLoader])
        {
          v13 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView];
          v11 = v13;
          sub_759210();
          sub_2E00D8();

          v12 = v11;
          sub_76A6E0();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_75A040();

          sub_160090(&v14);
        }

        else
        {
        }
      }

      *(v1 + v7) = 0;
    }
  }

  return result;
}

double sub_2DF988(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v35 = sub_7620F0();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7620D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_2DF0B4())
  {
    if (qword_93C908 != -1)
    {
      swift_once();
    }

    v18 = qword_94E648;
  }

  else
  {
    if (qword_93C900 != -1)
    {
      swift_once();
    }

    v18 = qword_94E630;
  }

  v19 = sub_BE38(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = a2;
  *(&v32 - 1) = a3;
  sub_765470();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_headlineLabel);
  v43 = sub_75BB20();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView);
  v37 = sub_759210();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_7620E0();
  sub_762090();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_2DFDCC(void *a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView;
      v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider21ArcadeWelcomeItemView_artworkView);
      v5 = Strong;
      v6 = a1;
      v7 = v4;
      [v6 size];
      sub_7591E0();
      sub_769D70();
      sub_7591F0();

      v8 = *&v5[v3];
      v9 = v6;
      v10 = v8;
      v12.value.super.isa = a1;
      v12.is_nil = 0;
      sub_7591D0(v12, v11);
    }
  }
}

id sub_2DFEC4(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_769A00();

  if (!a1 || (sub_769A00() & 1) != (v5 & 1))
  {
    sub_2DED10();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_2E00D8()
{
  result = qword_9496B0;
  if (!qword_9496B0)
  {
    sub_759210();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9496B0);
  }

  return result;
}

uint64_t sub_2E0130()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_2E0188()
{
  result = [objc_opt_self() configurationWithPointSize:12.0];
  qword_94E718 = result;
  return result;
}

void sub_2E01D4(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = UIFontTextStyleTitle3;
  v5 = [v3 configurationWithTextStyle:v4];

  *a2 = v5;
}

id sub_2E0248(unsigned __int8 a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_93C930 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
      if (qword_93C928 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
    if (qword_93C938 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_56E958(0x654C6C657275614CLL, 0xEF656772614C7466, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelLeading(_:), v2, v4);
  if (qword_93C940 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_759930();
  (*(v3 + 8))(v6, v2);
  return v10;
}

id sub_2E0514(unsigned __int8 a1)
{
  v2 = sub_759950();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 1u)
  {
    if (a1)
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_93C930 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
      if (qword_93C928 == -1)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_14;
  }

  if (a1 == 2)
  {
    (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
    if (qword_93C938 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  if (a1 != 3)
  {
    v7 = sub_56E958(0xD000000000000010, 0x80000000007D9FC0, 0);
    v8 = [v7 imageWithRenderingMode:2];

    return v8;
  }

  (*(v3 + 104))(v6, enum case for SystemImage.laurelTrailing(_:), v2, v4);
  if (qword_93C940 != -1)
  {
LABEL_14:
    swift_once();
  }

LABEL_13:
  v10 = sub_759930();
  (*(v3 + 8))(v6, v2);
  return v10;
}

unint64_t sub_2E07E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2E352C(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_2E080C()
{
  v1 = *v0;
  sub_76AA30();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_76AA40(v2);
  return sub_76AA80();
}

void sub_2E085C()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  sub_76AA40(v1);
}

Swift::Int sub_2E0894()
{
  v1 = *v0;
  sub_76AA30();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  sub_76AA40(v2);
  return sub_76AA80();
}

void *sub_2E08E0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_2E0900(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t sub_2E0918@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    if (sub_757360())
    {
      if (qword_93D7F8 != -1)
      {
        swift_once();
      }

      v3 = sub_7666D0();
      v4 = v3;
      v5 = qword_99EFE0;
      goto LABEL_27;
    }

    if (sub_757310())
    {
      if (qword_93D800 != -1)
      {
        swift_once();
      }

      v3 = sub_7666D0();
      v4 = v3;
      v5 = qword_99EFF8;
      goto LABEL_27;
    }

    if (sub_757350())
    {
      if (qword_93D808 != -1)
      {
        swift_once();
      }

      v3 = sub_7666D0();
      v4 = v3;
      v5 = qword_99F010;
      goto LABEL_27;
    }
  }

  else if (a1 == 1)
  {
    if (sub_757360())
    {
      if (qword_93D7C8 != -1)
      {
        swift_once();
      }

      v3 = sub_7666D0();
      v4 = v3;
      v5 = qword_99EF50;
LABEL_27:
      v6 = sub_BE38(v3, v5);
      v13 = *(v4 - 8);
      (*(v13 + 16))(a2, v6, v4);
      v7 = *(v13 + 56);
      v8 = a2;
      v9 = 0;
      v10 = v4;
      goto LABEL_29;
    }

    if (sub_757310())
    {
      if (qword_93D7D0 != -1)
      {
        swift_once();
      }

      v3 = sub_7666D0();
      v4 = v3;
      v5 = qword_99EF68;
      goto LABEL_27;
    }

    if (sub_757350())
    {
      if (qword_93D7D8 != -1)
      {
        swift_once();
      }

      v3 = sub_7666D0();
      v4 = v3;
      v5 = qword_99EF80;
      goto LABEL_27;
    }
  }

  v11 = sub_7666D0();
  v7 = *(*(v11 - 8) + 56);
  v10 = v11;
  v8 = a2;
  v9 = 1;
LABEL_29:

  return v7(v8, v9, 1, v10);
}

char *sub_2E0BE8(unsigned __int8 a1, char a2, char a3, char a4, unsigned __int8 a5)
{
  v6 = v5;
  LODWORD(v87) = a5;
  ObjectType = swift_getObjectType();
  v12 = sub_7573C0();
  v82 = *(v12 - 8);
  v83 = v12;
  __chkstk_darwin(v12);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_7666D0();
  v86 = *(v79 - 8);
  __chkstk_darwin(v79);
  v78 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v77 - v16;
  v17 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v17 - 8);
  v80 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v85 = &v77 - v20;
  v21 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale] = 0;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel;
  sub_75BB20();
  *&v6[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView;
  *&v6[v23] = [objc_allocWithZone(UIImageView) init];
  v24 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView;
  *&v6[v24] = [objc_allocWithZone(UIImageView) init];
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size] = a1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_preferredLineCount] = a2 & 1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_shouldCapWidthByAvailableWidth] = a3;
  v6[v21] = a4;
  v6[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase] = a5;
  v25 = type metadata accessor for EditorsChoiceView();
  v90.receiver = v6;
  v90.super_class = v25;
  v26 = objc_msgSendSuper2(&v90, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [objc_opt_self() clearColor];
  [v30 setBackgroundColor:v31];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel;
  v33 = *&v30[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];
  v34 = [v30 tintColor];

  [v33 setTextColor:v34];
  [*&v30[v32] setLineBreakMode:4];
  v35 = *&v30[v32];
  if (v87)
  {
    v36 = v35;
    v37 = [v30 traitCollection];
    v38 = a1;
    v39 = a1;
    *&v87 = v36;
    v77 = v37;
    if (a1 <= 1u)
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38)
      {
        if (qword_93D7C0 != -1)
        {
          swift_once();
        }

        v43 = qword_99EF38;
      }

      else
      {
        if (qword_93D7B8 != -1)
        {
          swift_once();
        }

        v43 = qword_99EF20;
      }
    }

    else
    {
      v40 = v86;
      v41 = v84;
      v42 = v79;
      if (v38 == 2)
      {
        if (qword_93D7E0 != -1)
        {
          swift_once();
        }

        v43 = qword_99EF98;
      }

      else if (v38 == 3)
      {
        if (qword_93D810 != -1)
        {
          swift_once();
        }

        v43 = qword_99F028;
      }

      else
      {
        if (qword_93D818 != -1)
        {
          swift_once();
        }

        v43 = qword_99F040;
      }
    }

    v48 = sub_BE38(v42, v43);
    (*(v40 + 16))(v41, v48, v42);
    v49 = v81;
    sub_757390();
    v50 = v80;
    sub_2E0918(v39, v80);
    (*(v82 + 8))(v49, v83);
    if ((*(v40 + 48))(v50, 1, v42) == 1)
    {

      sub_11A38(v50);
      v51 = v85;
      (*(v40 + 32))(v85, v41, v42);
    }

    else
    {
      v52 = v78;
      v84 = *(v40 + 32);
      (v84)(v78, v50, v42);
      v53 = v77;
      v54.super.isa = v77;
      isa = sub_7666B0(v54).super.isa;
      [(objc_class *)isa pointSize];
      v57 = v56;
      v58.super.isa = v53;
      v59 = sub_7666B0(v58).super.isa;
      [(objc_class *)v59 pointSize];
      v61 = v60;

      v40 = v86;
      v62 = *(v40 + 8);
      if (v61 >= v57)
      {
        v62(v52, v42);
        v51 = v85;
        v63 = v85;
        v64 = v41;
      }

      else
      {
        v62(v41, v42);
        v51 = v85;
        v63 = v85;
        v64 = v52;
      }

      (v84)(v63, v64, v42);
    }

    v65 = v87;
    (*(v40 + 56))(v51, 0, 1, v42);
    sub_75BA40();
  }

  else
  {
    v44 = v35;
    sub_766B40();
    if (qword_93C750 != -1)
    {
      swift_once();
    }

    v45 = sub_760500();
    v46 = sub_BE38(v45, qword_99BB30);
    v89[3] = v45;
    v89[4] = sub_2E34E4(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle);
    v47 = sub_B1B4(v89);
    (*(*(v45 - 8) + 16))(v47, v46, v45);
    sub_75BA60();
  }

  [*&v30[v32] setAdjustsFontSizeToFitWidth:{1, v77}];
  v66 = *&v30[v32];
  v67 = v30;
  [v67 addSubview:v66];
  if (v67[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size] == 4)
  {

    [v67 setContentMode:3];
  }

  else
  {
    v68 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView;
    v69 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView];
    v70 = [v67 tintColor];
    [v69 setTintColor:v70];

    v71 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView;
    v72 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView];
    v73 = [v67 tintColor];

    [v72 setTintColor:v73];
    [*&v67[v68] setSemanticContentAttribute:3];
    [*&v67[v71] setSemanticContentAttribute:3];
    [v67 addSubview:*&v67[v71]];
    [v67 addSubview:*&v67[v68]];
  }

  sub_2E2120();
  sub_2E228C();
  sub_BD88(&qword_9477F0);
  v74 = swift_allocObject();
  v87 = xmmword_77B6D0;
  *(v74 + 16) = xmmword_77B6D0;
  *(v74 + 32) = sub_7677C0();
  *(v74 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_769F40();
  swift_unknownObjectRelease();

  v75 = swift_allocObject();
  *(v75 + 16) = v87;
  *(v75 + 32) = sub_767B80();
  *(v75 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v67;
}

void sub_2E17BC()
{
  ObjectType = swift_getObjectType();
  v53.receiver = v0;
  v53.super_class = type metadata accessor for EditorsChoiceView();
  objc_msgSendSuper2(&v53, "layoutSubviews");
  v2 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_preferredLineCount];
  v3 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size];
  v4 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale;
  v5 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale];
  v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase];
  sub_75D650();
  CGRectGetWidth(v55);
  v7 = sub_4E78BC(v2, v3, v5, v6, v0, ObjectType);
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];
  v10 = v9 & 1;
  [v8 setNumberOfLines:{(v10 + 1), v7}];
  v54._object = v0[v4];
  v54._countAndFlagsBits = v10;
  sub_2E353C(v54);
  v11 = sub_769210();

  [v8 setText:v11];

  v12 = [v0 traitCollection];
  if (v6 == 1)
  {
    v13 = v12;
    v14 = [v12 preferredContentSizeCategory];
    v15 = sub_769B20();

    if (v15)
    {
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView] setHidden:1];
      [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView] setHidden:1];
      sub_75D650();
      Width = CGRectGetWidth(v56);
      sub_75D650();
      [v8 sizeThatFits:{Width, CGRectGetHeight(v57)}];
      v18 = v17;
      v20 = v19;
      sub_75D650();
      v21 = CGRectGetMidX(v58) - v18 * 0.5;
      sub_75D650();
      [v8 setFrame:{v21, CGRectGetMidY(v59) - v20 * 0.5, Width, v20}];
      return;
    }
  }

  else
  {
  }

  v22 = v3;
  v23 = sub_2E0248(v3);
  v24 = sub_2E0514(v22);
  v25 = 12.0;
  if (v22 != 4)
  {
    [v0 bounds];
    Height = CGRectGetHeight(v60);
    [v23 size];
    if (v27 < Height)
    {
      Height = v27;
    }

    [v23 size];
    v29 = Height * v28;
    [v23 size];
    v31 = v29 / v30;
    [v0 bounds];
    MinX = CGRectGetMinX(v61);
    [v0 bounds];
    v33 = CGRectGetMidY(v62) - Height * 0.5;
    v34 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView];
    [v34 setHidden:0];
    [v34 setImage:v23];
    [v34 setFrame:{MinX, v33, v31, Height}];
    [v0 bounds];
    v35 = CGRectGetHeight(v63);
    [v24 size];
    if (v36 < v35)
    {
      v35 = v36;
    }

    [v24 size];
    v38 = v35 * v37;
    [v24 size];
    v40 = v38 / v39;
    [v0 bounds];
    v41 = CGRectGetMaxX(v64) - v40;
    [v0 bounds];
    v42 = CGRectGetMidY(v65) - v35 * 0.5;
    v43 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView];
    [v43 setHidden:0];
    [v43 setImage:v24];
    [v43 setFrame:{v41, v42, v40, v35}];
    v25 = dbl_792DE8[v22];
  }

  sub_75D650();
  v44 = CGRectGetWidth(v66);
  [v23 size];
  v46 = v25 + v25 + v45;
  [v24 size];
  v48 = v44 - (v46 + v47);
  sub_75D650();
  [v8 sizeThatFits:{v48, CGRectGetHeight(v67)}];
  v50 = v49;
  [v23 size];
  v52 = v25 + v51;
  sub_75D650();
  [v8 setFrame:{v52, CGRectGetMidY(v68) + v50 * -0.5, v48, v50}];
}

void sub_2E1CC0(double a1, double a2, double a3, double a4)
{
  if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size) != 4)
  {
    v31.receiver = v4;
    v31.super_class = type metadata accessor for EditorsChoiceView();
    objc_msgSendSuper2(&v31, "drawRect:", a1, a2, a3, a4);
    return;
  }

  v5 = UIGraphicsGetCurrentContext();
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = [v4 tintColor];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [v8 CGColor];

    CGContextSetFillColorWithColor(v7, v10);
  }

  v11 = sub_2E0248(4u);
  [v4 bounds];
  Height = CGRectGetHeight(v33);
  [v11 size];
  if (v13 < Height)
  {
    Height = v13;
  }

  [v11 size];
  v15 = Height * v14;
  [v11 size];
  v17 = v15 / v16;
  [v4 bounds];
  MinX = CGRectGetMinX(v34);
  [v4 bounds];
  [v11 drawInRect:{MinX, CGRectGetMidY(v35) - Height * 0.5, v17, Height}];
  v30 = sub_2E0514(4u);
  [v4 bounds];
  v19 = CGRectGetHeight(v36);
  [v30 size];
  if (v20 < v19)
  {
    v19 = v20;
  }

  [v30 size];
  v22 = v19 * v21;
  [v30 size];
  v24 = v22 / v23;
  [v4 bounds];
  v25 = CGRectGetMaxX(v37) - v24;
  [v4 bounds];
  [v30 drawInRect:{v25, CGRectGetMidY(v38) - v19 * 0.5, v24, v19}];
}

void sub_2E1FB4()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];
  v2 = [v0 tintColor];
  [v1 setTextColor:v2];

  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView];
  v4 = [v0 tintColor];
  [v3 setTintColor:v4];

  v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView];
  v6 = [v0 tintColor];
  [v5 setTintColor:v6];

  if (v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_size] == 4)
  {

    [v0 setNeedsDisplay];
  }
}

void sub_2E2120()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase] == 1)
  {
    v1 = [v0 layer];
    [v1 setAllowsGroupBlending:0];

    v2 = [v0 traitCollection];
    [v2 userInterfaceStyle];

    sub_769240();
    v3 = sub_769210();

    v4 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView] layer];
    [v4 setCompositingFilter:v3];

    v5 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView] layer];
    [v5 setCompositingFilter:v3];
  }
}

id sub_2E228C()
{
  v1 = v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useCase];
  v2 = [v0 traitCollection];
  if (v1 == 1)
  {
    v3 = v2;
    v4 = [v2 preferredContentSizeCategory];
    v5 = sub_769B20();

    if (v5)
    {
      v6 = 4;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v6 = 1;
LABEL_6:
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel];

  return [v7 setTextAlignment:v6];
}

id sub_2E23A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorsChoiceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for RatingView.StarSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RatingView.StarSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2E25C8()
{
  result = qword_94E790;
  if (!qword_94E790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E790);
  }

  return result;
}

unint64_t sub_2E2620()
{
  result = qword_94E798;
  if (!qword_94E798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E798);
  }

  return result;
}

unint64_t sub_2E2678()
{
  result = qword_94E7A0;
  if (!qword_94E7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E7A0);
  }

  return result;
}

double sub_2E26CC(char a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6)
{
  LODWORD(v108) = a3;
  v112 = a2;
  v113 = a6;
  v116 = a4;
  v8 = a4;
  v9 = sub_7573C0();
  v110 = *(v9 - 8);
  v111 = v9;
  __chkstk_darwin(v9);
  v109 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v106 = v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v104 - v14;
  v16 = sub_7666D0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v114 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = v104 - v20;
  __chkstk_darwin(v21);
  v115 = v104 - v22;
  __chkstk_darwin(v23);
  v25 = v104 - v24;
  __chkstk_darwin(v26);
  v28 = v104 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v105 = v104 - v31;
  v117 = a5;
  v32 = [a5 traitCollection];
  if (v8 != 1)
  {

    goto LABEL_5;
  }

  v33 = v32;
  v34 = [v32 preferredContentSizeCategory];
  v35 = sub_769B20();

  if ((v35 & 1) == 0)
  {
LABEL_5:
    v37 = v112;
    v38 = sub_2E0248(v112);
    v39 = sub_2E0514(v37);
    [v38 size];
    [v39 size];

    v36 = v114;
    goto LABEL_6;
  }

  v36 = v114;
  v37 = v112;
LABEL_6:
  if (a1)
  {
    goto LABEL_44;
  }

  v40._countAndFlagsBits = 0xD00000000000001ALL;
  v40._object = 0x80000000007CF720;
  if (v108)
  {
    v41 = sub_762F40(v40);
  }

  else
  {
    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v41 = sub_75B750(v40, v121);
  }

  v43 = v41;
  v44 = v42;
  v45 = [v117 traitCollection];
  v104[2] = v44;
  v104[1] = v43;
  if (v37 <= 1u)
  {
    if (v37)
    {
      if (qword_93D7C0 != -1)
      {
        swift_once();
      }

      v46 = qword_99EF38;
    }

    else
    {
      if (qword_93D7B8 != -1)
      {
        swift_once();
      }

      v46 = qword_99EF20;
    }
  }

  else if (v37 == 2)
  {
    if (v116)
    {
      if (qword_93D7E0 != -1)
      {
        swift_once();
      }

      v46 = qword_99EF98;
    }

    else
    {
      if (qword_93D7E8 != -1)
      {
        swift_once();
      }

      v46 = qword_99EFB0;
    }
  }

  else if (v37 == 3)
  {
    if (qword_93D810 != -1)
    {
      swift_once();
    }

    v46 = qword_99F028;
  }

  else
  {
    if (qword_93D818 != -1)
    {
      swift_once();
    }

    v46 = qword_99F040;
  }

  v47 = sub_BE38(v16, v46);
  (*(v17 + 16))(v28, v47, v16);
  v48 = v109;
  sub_757390();
  sub_2E0918(v37, v15);
  (*(v110 + 8))(v48, v111);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {

    sub_11A38(v15);
    v49 = v105;
    (*(v17 + 32))(v105, v28, v16);
    v36 = v114;
  }

  else
  {
    v50 = *(v17 + 32);
    v50(v25, v15, v16);
    v51.super.isa = v45;
    isa = sub_7666B0(v51).super.isa;
    [(objc_class *)isa pointSize];
    v54 = v53;
    v55.super.isa = v45;
    v56 = sub_7666B0(v55).super.isa;
    [(objc_class *)v56 pointSize];
    v58 = v57;

    v59 = *(v17 + 8);
    if (v58 >= v54)
    {
      v59(v25, v16);
      v49 = v105;
      v60 = v105;
      v61 = v28;
    }

    else
    {
      v59(v28, v16);
      v49 = v105;
      v60 = v105;
      v61 = v25;
    }

    v50(v60, v61, v16);
    v36 = v114;
    v37 = v112;
  }

  v62 = v116;
  v63 = [v117 traitCollection];
  if (v62 == 1)
  {
    v64 = v63;
    v65 = [v63 preferredContentSizeCategory];
    sub_769B20();
  }

  else
  {
  }

  v66 = sub_7653B0();
  v119 = v66;
  v120 = sub_2E34E4(&qword_93F9B0, &type metadata accessor for Feature);
  v67 = sub_B1B4(v118);
  (*(*(v66 - 8) + 104))(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
  sub_765C30();
  sub_BEB8(v118);
  sub_762CB0();
  v69 = v68;

  (*(v17 + 8))(v49, v16);
  v70 = sub_765BF0();
  if (v116)
  {
    if ((v70 & 1) == 0)
    {
LABEL_44:
      v71._object = 0x80000000007D9F40;
      if (v108)
      {
        v71._countAndFlagsBits = 0xD000000000000017;
        v72 = sub_762F40(v71);
      }

      else
      {
        v122._countAndFlagsBits = 0xD000000000000050;
        v122._object = 0x80000000007D9F60;
        v71._countAndFlagsBits = 0xD000000000000017;
        v72 = sub_75B750(v71, v122);
      }

      v74 = v72;
      v75 = v73;
      v77 = v106;
      v76 = v107;
      v78 = [v117 traitCollection];
      v112 = v75;
      v108 = v74;
      if (v37 <= 1u)
      {
        if (v37)
        {
          if (qword_93D7C0 != -1)
          {
            swift_once();
          }

          v79 = qword_99EF38;
        }

        else
        {
          if (qword_93D7B8 != -1)
          {
            swift_once();
          }

          v79 = qword_99EF20;
        }
      }

      else if (v37 == 2)
      {
        if (v116)
        {
          if (qword_93D7E0 != -1)
          {
            swift_once();
          }

          v79 = qword_99EF98;
        }

        else
        {
          if (qword_93D7E8 != -1)
          {
            swift_once();
          }

          v79 = qword_99EFB0;
        }
      }

      else if (v37 == 3)
      {
        if (qword_93D810 != -1)
        {
          swift_once();
        }

        v79 = qword_99F028;
      }

      else
      {
        if (qword_93D818 != -1)
        {
          swift_once();
        }

        v79 = qword_99F040;
      }

      v80 = sub_BE38(v16, v79);
      (*(v17 + 16))(v76, v80, v16);
      v81 = v109;
      sub_757390();
      sub_2E0918(v37, v77);
      (*(v110 + 8))(v81, v111);
      if ((*(v17 + 48))(v77, 1, v16) == 1)
      {

        sub_11A38(v77);
        (*(v17 + 32))(v115, v76, v16);
      }

      else
      {
        v82 = v76;
        v83 = *(v17 + 32);
        v83(v36, v77, v16);
        v84.super.isa = v78;
        v85 = sub_7666B0(v84).super.isa;
        [(objc_class *)v85 pointSize];
        v87 = v86;
        v88.super.isa = v78;
        v89 = sub_7666B0(v88).super.isa;
        [(objc_class *)v89 pointSize];
        v91 = v90;

        v92 = *(v17 + 8);
        if (v91 >= v87)
        {
          v92(v36, v16);
          v93 = v115;
          v94 = v82;
        }

        else
        {
          v92(v82, v16);
          v93 = v115;
          v94 = v36;
        }

        v83(v93, v94, v16);
      }

      v95 = v116;
      v96 = [v117 traitCollection];
      if (v95 == 1)
      {
        v97 = v96;
        v98 = [v96 preferredContentSizeCategory];
        sub_769B20();
      }

      else
      {
      }

      v99 = sub_7653B0();
      v119 = v99;
      v120 = sub_2E34E4(&qword_93F9B0, &type metadata accessor for Feature);
      v100 = sub_B1B4(v118);
      (*(*(v99 - 8) + 104))(v100, enum case for Feature.measurement_with_labelplaceholder(_:), v99);
      sub_765C30();
      sub_BEB8(v118);
      v101 = v115;
      sub_762CB0();
      v69 = v102;

      (*(v17 + 8))(v101, v16);
    }
  }

  return v69;
}

uint64_t sub_2E34E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2E352C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t sub_2E353C(Swift::String a1)
{
  if (a1._countAndFlagsBits)
  {
    if (a1._object)
    {
      a1._object = 0x80000000007D9F40;
      a1._countAndFlagsBits = 0xD000000000000017;
      return sub_762F40(a1);
    }

    a1._object = 0x80000000007D9F40;
    v2._countAndFlagsBits = 0xD000000000000050;
    v2._object = 0x80000000007D9F60;
    a1._countAndFlagsBits = 0xD000000000000017;
  }

  else
  {
    a1._countAndFlagsBits = 0xD00000000000001ALL;
    if (a1._object)
    {
      a1._object = 0x80000000007CF720;
      return sub_762F40(a1);
    }

    a1._object = 0x80000000007CF720;
    v2._countAndFlagsBits = 0;
    v2._object = 0xE000000000000000;
  }

  return sub_75B750(a1, v2);
}

void sub_2E35B8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_useAdsLocale) = 0;
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_titleLabel;
  sub_75BB20();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_leftLaurelView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17EditorsChoiceView_rightLaurelView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  sub_76A840();
  __break(1u);
}

void sub_2E368C(uint64_t a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = sub_769B20();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_2E0248(a1);
  v19 = sub_2E0514(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_4E78BC(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

void sub_2E380C(uint64_t a1, char a2, int a3, id a4, char a5, int a6, uint64_t a7)
{
  v13 = a6;
  v14 = [a4 traitCollection];
  if (v13 == 1)
  {
    v15 = v14;
    v16 = [v14 preferredContentSizeCategory];
    v17 = sub_769B20();

    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v18 = sub_2E0248(a1);
  v19 = sub_2E0514(a1);
  [v18 size];
  [v19 size];

LABEL_6:
  sub_2E26CC(a2 & 1, a1, a5 & 1, a6, a4, a7);
}

__n128 ProductLockupLayout.init(metrics:iconView:titleLabel:developerLabel:taglineLabel:tertiaryTitleLabel:shareButton:offerButton:offerSubtitleLabel:expandedOfferTitleLabel:expandedOfferSubtitleLabel:hasExpandedOffer:offerSubtitleText:bannerView:secondaryBannerView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_2EA218(a1, a9, type metadata accessor for ProductLockupLayout.Metrics);
  v23 = type metadata accessor for ProductLockupLayout(0);
  sub_10914(a2, a9 + v23[5]);
  sub_10914(a3, a9 + v23[6]);
  sub_10914(a4, a9 + v23[7]);
  sub_10914(a5, a9 + v23[8]);
  v24 = a9 + v23[9];
  v25 = *(a6 + 16);
  *v24 = *a6;
  *(v24 + 16) = v25;
  *(v24 + 32) = *(a6 + 32);
  v26 = a9 + v23[10];
  v27 = *(a7 + 16);
  *v26 = *a7;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(a7 + 32);
  sub_10914(a8, a9 + v23[11]);
  sub_10914(a10, a9 + v23[12]);
  v28 = a9 + v23[13];
  v29 = *(a11 + 16);
  *v28 = *a11;
  *(v28 + 16) = v29;
  *(v28 + 32) = *(a11 + 32);
  v30 = a9 + v23[14];
  v31 = *(a12 + 16);
  *v30 = *a12;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a12 + 32);
  *(a9 + v23[15]) = a13;
  v32 = (a9 + v23[16]);
  *v32 = a14;
  v32[1] = a15;
  v33 = a9 + v23[17];
  *(v33 + 32) = *(a16 + 32);
  v34 = *(a16 + 16);
  *v33 = *a16;
  *(v33 + 16) = v34;
  v35 = a9 + v23[18];
  *(v35 + 32) = *(a17 + 32);
  result = *(a17 + 16);
  *v35 = *a17;
  *(v35 + 16) = result;
  return result;
}

double ProductLockupLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  return sub_2E9F00(a1, v3, ObjectType, a2, a3);
}

uint64_t ProductLockupLayout.offerSubtitleText.getter()
{
  v1 = *(v0 + *(type metadata accessor for ProductLockupLayout(0) + 64));

  return v1;
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_BD88(&unk_94E7B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.font.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 20);
  v4 = sub_BD88(&unk_94E7B0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.maxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 24);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.OfferSubtitleMetrics.leadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0) + 28);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.init(layoutMargins:bannerViewHeight:secondaryBannerViewHeight:iconSize:iconHorizontalMargin:titleSpace:titleFont:titleMaxNumberOfLines:subtitleSpace:subtitleFont:subtitleMaxNumberOfLines:tertiaryTitleSpace:tertiaryTitleFont:tertiaryTitleMaxNumberOfLines:offerTopSpace:offerSubtitleMetrics:shareButtonLeadingMargin:expandedOfferSubtitleSpace:expandedOfferHorizontalMargin:compactExpandedOfferShareButtonTopSpace:bottomSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 *a20, uint64_t a21, __int128 *a22, __int128 *a23, uint64_t a24, __int128 *a25, __int128 *a26)
{
  *a9 = a10;
  a9[1] = a11;
  a9[2] = a12;
  a9[3] = a13;
  sub_10914(a1, (a9 + 4));
  sub_10914(a2, (a9 + 9));
  a9[14] = a14;
  a9[15] = a15;
  v33 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = v33[8];
  v35 = sub_BD88(&qword_940AD0);
  v44 = *(*(v35 - 8) + 32);
  v44(a9 + v34, a3, v35);
  v44(a9 + v33[9], a4, v35);
  v36 = v33[10];
  v37 = sub_BD88(&unk_94E7B0);
  v43 = *(*(v37 - 8) + 32);
  v43(a9 + v36, a5, v37);
  v38 = v33[11];
  v39 = sub_BD88(&unk_94B6E0);
  v40 = *(*(v39 - 8) + 32);
  v40(a9 + v38, a6, v39);
  v44(a9 + v33[12], a7, v35);
  v43(a9 + v33[13], a8, v37);
  v40(a9 + v33[14], a16, v39);
  v44(a9 + v33[15], a17, v35);
  v43(a9 + v33[16], a18, v37);
  v40(a9 + v33[17], a19, v39);
  sub_10914(a20, a9 + v33[18]);
  sub_2EA218(a21, a9 + v33[19], type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_10914(a22, a9 + v33[20]);
  sub_10914(a23, a9 + v33[21]);
  v44(a9 + v33[22], a24, v35);
  sub_10914(a25, a9 + v33[23]);
  v41 = a9 + v33[24];

  return sub_10914(a26, v41);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.iconHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 32);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 36);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.titleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 40);
  v4 = sub_BD88(&unk_94E7B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.titleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 44);
  v4 = sub_BD88(&unk_94B6E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 48);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 52);
  v4 = sub_BD88(&unk_94E7B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_BD88(&unk_94B6E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.subtitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 56);
  v4 = sub_BD88(&unk_94B6E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 60);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleFont.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 64);
  v4 = sub_BD88(&unk_94E7B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_BD88(&unk_94B6E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.tertiaryTitleMaxNumberOfLines.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 68);
  v4 = sub_BD88(&unk_94B6E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.offerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 72);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.offerSubtitleMetrics.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76);

  return sub_2DC644(a1, v3);
}

uint64_t ProductLockupLayout.Metrics.shareButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 80);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 84);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupLayout.Metrics.expandedOfferHorizontalMargin.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 88);
  v4 = sub_BD88(&qword_940AD0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupLayout.Metrics.compactExpandedOfferShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 92);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupLayout.Metrics(0) + 96);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t ProductLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v260 = a6;
  v261 = a3;
  v242 = a2;
  v13 = sub_76A920();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v224 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_B170((*&v6 + 32), *(*&v6 + 56));
  sub_33964();
  sub_766700();
  v18 = v17;
  v21 = *(v14 + 8);
  v19 = v14 + 8;
  v20 = v21;
  v21(v16, v13);
  sub_B170((*&v7 + 72), *(*&v7 + 96));
  sub_33964();
  sub_766700();
  v23 = v22;
  v259 = v13;
  v21(v16, v13);
  v24 = **&v6;
  v25 = *(*&v6 + 8);
  v231 = v18;
  v232 = v23;
  v26 = sub_705B8(a3, a4, a5, a6, v18 + v24, v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = *(*&v6 + 112);
  v33 = *(*&v6 + 120);
  *&v35 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout(0));
  sub_B170((*&v7 + v35[5]), *(*&v7 + v35[5] + 24));
  v257 = a4;
  v256 = a5;
  sub_769D20();
  sub_766530();
  v278.origin.x = v26;
  v278.origin.y = v28;
  v278.size.width = v34;
  v243 = v33;
  v278.size.height = v33;
  MaxX = CGRectGetMaxX(v278);
  v36 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v272 = a1;
  v37 = sub_BD88(&qword_940AD0);
  sub_7592B0();
  v38 = v275;
  v279.origin.x = v26;
  v279.origin.y = v28;
  v279.size.width = v30;
  v279.size.height = v32;
  MinY = CGRectGetMinY(v279);
  v280.origin.x = v26;
  v280.origin.y = v28;
  v280.size.width = v30;
  v280.size.height = v32;
  Width = CGRectGetWidth(v280);
  *&v272 = a1;
  *&v240 = v37;
  sub_7592B0();
  v244 = v34;
  v40 = v34 + v275;
  v266 = v26;
  v281.origin.x = v26;
  v267 = v28;
  v281.origin.y = v28;
  v281.size.width = v30;
  v281.size.height = v32;
  Height = CGRectGetHeight(v281);
  v250 = v35[10];
  sub_1ED18(*&v6 + v250, &v275, &unk_943B10);
  v263 = v30;
  if (v276)
  {
    sub_B170(&v275, v276);
    sub_7665B0();
    v252 = v41;
    v228 = v42;
    sub_BEB8(&v275);
  }

  else
  {
    sub_10A2C(&v275, &unk_943B10);
    v252 = 0.0;
    v228 = 0.0;
  }

  v43 = v32;
  v44 = MaxX + v38;
  v45 = Width - v40;
  sub_1ED18(*&v6 + v250, &v275, &unk_943B10);
  v46 = v276;
  sub_10A2C(&v275, &unk_943B10);
  v47 = 0.0;
  if (v46)
  {
    sub_B170((*&v6 + *(v36 + 80)), *(*&v6 + *(v36 + 80) + 24));
    sub_33964();
    sub_766700();
    v47 = v48;
    v20(v16, v259);
  }

  v248 = v36;
  v49 = (*&v6 + v35[11]);
  v50 = v49[3];
  v241 = v49;
  sub_B170(v49, v50);
  v282.origin.x = v44;
  v282.origin.y = MinY;
  v282.size.width = v45;
  v282.size.height = Height;
  CGRectGetWidth(v282);
  v265 = v45;
  v51 = v266;
  v283.origin.x = v266;
  v52 = v267;
  v283.origin.y = v267;
  v283.size.width = v263;
  v255 = v47;
  v53 = v263;
  v283.size.height = v43;
  CGRectGetHeight(v283);
  sub_7665B0();
  v55 = v54;
  v251 = v56;
  v284.origin.x = v51;
  v284.origin.y = v52;
  v284.size.width = v53;
  v284.size.height = v43;
  v262 = v43;
  CGRectGetWidth(v284);
  v57 = *&v6 + *(v36 + 76);
  v58 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v59 = (v57 + *(v58 + 28));
  v60 = v59[3];
  v226 = v59;
  sub_B170(v59, v60);
  MaxX = v7;
  v61 = v35;
  v62 = a1;
  v63 = v20;
  sub_33964();
  sub_766700();
  v64 = v259;
  v63(v16, v259);
  v245 = v55;
  v65 = v44;
  v66 = v252;
  v67 = (v57 + *(v58 + 24));
  v68 = v67[3];
  v224 = v67;
  sub_B170(v67, v68);
  sub_33964();
  sub_766700();
  v246 = v16;
  v247 = v19;
  v253 = v63;
  v63(v16, v64);
  v69 = v62;
  v70 = (*&MaxX + v61[12]);
  v71 = v70[3];
  v227 = v70;
  sub_B170(v70, v71);
  v285.origin.x = v51;
  v72 = v52;
  v285.origin.y = v52;
  v73 = v263;
  v285.size.width = v263;
  v285.size.height = v43;
  CGRectGetHeight(v285);
  sub_7665A0();
  v239 = v74;
  v75 = [v62 traitCollection];
  LOBYTE(v71) = sub_7699D0();

  v286.origin.x = v65;
  v76 = v65;
  v258 = v65;
  v77 = MinY;
  v286.origin.y = MinY;
  v286.size.width = v265;
  v78 = Height;
  v286.size.height = Height;
  v79 = CGRectGetWidth(v286);
  if (v71)
  {
    v80 = v79;
  }

  else
  {
    v80 = v79 - v66 - v255;
  }

  v238 = v80;
  v81 = (*&MaxX + v61[6]);
  sub_B170(v81, v81[3]);
  v287.origin.x = v51;
  v287.origin.y = v72;
  v287.size.width = v73;
  v82 = v262;
  v287.size.height = v262;
  CGRectGetHeight(v287);
  sub_7665A0();
  v255 = v83;
  v236 = v84;
  v86 = v85;
  v249 = v85;
  v254 = v87;
  v88 = v248;
  *&v272 = v69;
  sub_7592B0();
  v89 = v51;
  v90 = v275;
  v288.origin.x = v76;
  v288.origin.y = v77;
  v288.size.width = v265;
  v288.size.height = v78;
  MinX = CGRectGetMinX(v288);
  v289.origin.x = v89;
  v91 = v267;
  v289.origin.y = v267;
  v289.size.width = v73;
  v289.size.height = v82;
  v92 = CGRectGetMinY(v289);
  if (v90 - v86 > 0.0)
  {
    v93 = v90 - v86;
  }

  else
  {
    v93 = 0.0;
  }

  sub_B170(v81, v81[3]);
  sub_7669E0();
  if (v255 >= v238)
  {
    v95 = v238;
  }

  else
  {
    v95 = v255;
  }

  v96 = v92 + v93 + v94;
  v290.origin.x = MinX;
  v290.origin.y = v96;
  v290.size.width = v95;
  v97 = v236;
  v290.size.height = v236;
  v237 = CGRectGetMaxY(v290) - v254;
  sub_B170(v81, v81[3]);
  v98 = v91;
  sub_769D20();
  sub_766530();
  v225 = v81;
  sub_134D8(v81, &v275);
  *&v272 = v69;
  sub_BD88(&unk_94B6E0);
  sub_7592B0();
  *&v238 = v61[9];
  sub_1ED18(*&MaxX + *&v238, &v272, &qword_9417D0);
  sub_10A2C(&v272, &qword_9417D0);
  sub_B170(&v275, v276);
  v291.var0 = v255;
  v291.var1 = v97;
  v291.var2 = v249;
  v291.var3 = v254;
  sub_766A10(v291);
  sub_BEB8(&v275);
  v99 = (*&MaxX + v61[7]);
  sub_B170(v99, v99[3]);
  sub_7669D0();
  v249 = *&v61;
  v100 = v61[8];
  v101 = *&MaxX;
  v102 = (*&MaxX + v100);
  sub_B170((*&MaxX + v100), *(*&MaxX + v100 + 24));
  sub_7669D0();
  *&v272 = v69;
  sub_7592B0();
  v103 = v275;
  sub_B170(v99, v99[3]);
  v104 = v258;
  v292.origin.x = v258;
  v105 = MinY;
  v292.origin.y = MinY;
  v106 = v265;
  v292.size.width = v265;
  v107 = Height;
  v292.size.height = Height;
  CGRectGetWidth(v292);
  v293.origin.x = v266;
  v293.origin.y = v98;
  v108 = v263;
  v293.size.width = v263;
  v293.size.height = v262;
  CGRectGetHeight(v293);
  sub_7665A0();
  v110 = v109;
  v236 = v111;
  v113 = v112;
  v230 = v114;
  v294.origin.x = v104;
  v294.origin.y = v105;
  v294.size.width = v106;
  v294.size.height = v107;
  MinX = CGRectGetMinX(v294);
  v295.origin.x = v104;
  v295.origin.y = v105;
  v295.size.width = v106;
  v295.size.height = v107;
  v115 = CGRectGetWidth(v295);
  if (v110 < v115)
  {
    v115 = v110;
  }

  v255 = v115;
  v116 = v237 + v103;
  v254 = v237 + v103 - v113;
  sub_B170(v102, v102[3]);
  v296.origin.x = v104;
  v296.origin.y = v105;
  v296.size.width = v106;
  v296.size.height = v107;
  CGRectGetWidth(v296);
  v297.origin.x = v266;
  v297.origin.y = v267;
  v297.size.width = v108;
  v297.size.height = v262;
  CGRectGetHeight(v297);
  sub_7665A0();
  v118 = v117;
  v237 = v119;
  v121 = v120;
  v229 = v122;
  v298.origin.x = v104;
  v298.origin.y = v105;
  v298.size.width = v106;
  v298.size.height = v107;
  v234 = CGRectGetMinX(v298);
  v299.origin.x = v104;
  v299.origin.y = v105;
  v299.size.width = v106;
  v299.size.height = v107;
  v123 = CGRectGetWidth(v299);
  if (v118 >= v123)
  {
    v118 = v123;
  }

  v124 = v116 - v121;
  sub_B170(v99, v99[3]);
  v125 = MinX;
  v126 = v236;
  sub_769D20();
  sub_766530();
  sub_B170(v102, v102[3]);
  v127 = v234;
  v233 = v124;
  v128 = v237;
  sub_769D20();
  sub_766530();
  v300.origin.x = v127;
  v129 = v127;
  v300.origin.y = v124;
  v300.size.width = v118;
  v300.size.height = v128;
  v130 = v128;
  MaxY = CGRectGetMaxY(v300);
  v132 = v125;
  v301.origin.x = v125;
  v133 = v254;
  v301.origin.y = v254;
  v134 = v255;
  v301.size.width = v255;
  v301.size.height = v126;
  v135 = CGRectGetMaxY(v301) < MaxY;
  v136 = v129;
  if (v135)
  {
    v137 = v129;
  }

  else
  {
    v137 = v132;
  }

  v138 = v233;
  if (v135)
  {
    v139 = v233;
  }

  else
  {
    v139 = v133;
  }

  v140 = v118;
  if (!v135)
  {
    v118 = v134;
  }

  v141 = v130;
  if (!v135)
  {
    v130 = v126;
  }

  v237 = CGRectGetMaxY(*&v136);
  v302.origin.x = v132;
  v302.origin.y = v133;
  v302.size.width = v134;
  v302.size.height = v126;
  v142 = CGRectGetMaxY(v302);
  v303.origin.x = v137;
  v303.origin.y = v139;
  v303.size.width = v118;
  v303.size.height = v130;
  v143 = CGRectGetMaxY(v303);
  sub_1ED18(v101 + *&v238, &v272, &qword_9417D0);
  if (v273)
  {
    v144 = v230;
    if (v142 < v237)
    {
      v144 = v229;
    }

    v255 = v143 - v144;
    sub_10914(&v272, &v275);
    *&v270 = v69;
    sub_7592B0();
    v254 = *&v272;
    sub_B170(&v275, v276);
    v145 = v258;
    v304.origin.x = v258;
    v146 = MinY;
    v304.origin.y = MinY;
    v147 = v265;
    v304.size.width = v265;
    v148 = Height;
    v304.size.height = Height;
    CGRectGetWidth(v304);
    v305.origin.x = v266;
    v305.origin.y = v267;
    v305.size.width = v263;
    v305.size.height = v262;
    CGRectGetHeight(v305);
    sub_7665A0();
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v306.origin.x = v145;
    v306.origin.y = v146;
    v306.size.width = v147;
    v306.size.height = v148;
    v155 = CGRectGetMinX(v306);
    v307.origin.x = v145;
    v307.origin.y = v146;
    v307.size.width = v147;
    v307.size.height = v148;
    v156 = CGRectGetWidth(v307);
    if (v150 >= v156)
    {
      v150 = v156;
    }

    v157 = v255 + v254 - v154;
    sub_B170(&v275, v276);
    sub_769D20();
    sub_766530();
    v308.origin.x = v155;
    v308.origin.y = v157;
    v308.size.width = v150;
    v308.size.height = v152;
    v158 = CGRectGetMaxY(v308);
    v309.origin.x = v155;
    v309.origin.y = v157;
    v309.size.width = v150;
    v309.size.height = v152;
    CGRectGetMaxY(v309);
    sub_BEB8(&v275);
    v159 = v88;
  }

  else
  {
    sub_10A2C(&v272, &qword_9417D0);
    v159 = v88;
    v158 = v143;
  }

  v160 = v241;
  sub_B170(v241, v241[3]);
  v161 = sub_766540();
  v310.origin.x = v266;
  v310.origin.y = v267;
  v310.size.width = v244;
  v310.size.height = v243;
  v162 = CGRectGetMaxY(v310);
  v163 = v239;
  if ((v161 & 1) == 0)
  {
    v163 = v251;
  }

  v164 = v162 - v163;
  sub_B170((v101 + *(v159 + 72)), *(v101 + *(v159 + 72) + 24));
  v165 = v246;
  sub_33964();
  sub_766700();
  v167 = v166;
  v253(v165, v259);
  v240 = v158;
  v168 = v158 + v167;
  v311.origin.x = v258;
  v169 = MinY;
  v311.origin.y = MinY;
  v311.size.width = v265;
  v311.size.height = Height;
  v170 = CGRectGetMinX(v311);
  if (v164 <= v168)
  {
    v164 = v168;
  }

  sub_B170(v160, v160[3]);
  v171 = v261;
  v172 = v260;
  v254 = v170;
  v255 = v164;
  v173 = v245;
  sub_769D20();
  sub_766530();
  v174 = *&v249;
  if (*(v101 + *(*&v249 + 60)) == 1)
  {
    v175 = *(*&v249 + 52);
    sub_1ED18(v101 + v175, &v272, &qword_9417D0);
    if (v273)
    {
      sub_10914(&v272, &v275);
      sub_1ED18(v101 + v174[14], &v270, &qword_9417D0);
      v176 = v172;
      v177 = v257;
      if (v271)
      {
        v178 = v159;
        sub_10914(&v270, &v272);
        v179 = [v69 traitCollection];
        v180 = sub_7699D0();

        v181 = v276;
        v182 = v277;
        v183 = sub_B170(&v275, v276);
        v184 = v273;
        v185 = v274;
        v186 = sub_B170(&v272, v273);
        v187 = *(v182 + 8);
        v188 = *(v185 + 8);
        if (v180)
        {
          sub_2E8EAC(v266, v267, v244, v243, v252, v228, v254, v255, v183, v186, v69, v101, v181, v184, v187, v188, v173, v251, v240, v266, v267, v263, v262);
        }

        else
        {
          sub_2EBDD4(v252, v228, v254, v255, v173, v251, v266, v267, v183, v186, v69, v101, v181, v184, v187, v188, *&v263, *&v262, v258, v169, v265, Height);
        }

        sub_BEB8(&v272);
        sub_BEB8(&v275);
        v174 = *&v249;
        v159 = v178;
        goto LABEL_67;
      }

      sub_10A2C(&v270, &qword_9417D0);
      sub_BEB8(&v275);
    }

    else
    {
      sub_10A2C(&v272, &qword_9417D0);
      v176 = v172;
      v177 = v257;
    }

    sub_1ED18(v101 + v175, &v275, &qword_9417D0);
    v201 = v256;
    if (v276)
    {
      sub_B170(&v275, v276);
      sub_766530();
      sub_BEB8(&v275);
    }

    else
    {
      sub_10A2C(&v275, &qword_9417D0);
    }

    sub_1ED18(v101 + v174[14], &v275, &qword_9417D0);
    if (v276)
    {
      sub_B170(&v275, v276);
LABEL_81:
      sub_766530();
      sub_BEB8(&v275);
      goto LABEL_84;
    }

    v204 = &qword_9417D0;
    v205 = &v275;
  }

  else
  {
    sub_1ED18(v101 + *(*&v249 + 52), &v275, &qword_9417D0);
    if (v276)
    {
      sub_B170(&v275, v276);
      sub_766530();
      sub_BEB8(&v275);
    }

    else
    {
      sub_10A2C(&v275, &qword_9417D0);
    }

    v189 = *&v263;
    v176 = v172;
    v177 = v257;
    sub_1ED18(v101 + v174[14], &v275, &qword_9417D0);
    if (v276)
    {
      sub_B170(&v275, v276);
      sub_766530();
      sub_BEB8(&v275);
    }

    else
    {
      sub_10A2C(&v275, &qword_9417D0);
    }

    v190 = Height;
    v191 = [v69 traitCollection];
    v192 = sub_7699D0();

    if (v192)
    {
      sub_2E76C4(v69, v254, v255, v173, v251, v252, v228, v266, v267, v193, v194, v195, v196, v197, v198, v199, v189, *&v262, v258, v169, v265, v190);
LABEL_67:
      v201 = v256;
      goto LABEL_84;
    }

    v200 = v227;
    sub_B170(v227, v227[3]);
    if (sub_766540())
    {
      sub_B170(v200, v200[3]);
      sub_766530();
      v159 = v248;
      v201 = v256;
    }

    else
    {
      sub_1ED18(v101 + v250, &v275, &unk_943B10);
      v202 = v276;
      sub_10A2C(&v275, &unk_943B10);
      if (v202)
      {
        sub_B170((v101 + *(v248 + 80)), *(v101 + *(v248 + 80) + 24));
        sub_33964();
        sub_766700();
        v244 = v203;
        v253(v165, v259);
      }

      else
      {
        v244 = 0.0;
      }

      v206 = v265;
      v207 = v254;
      sub_1ED18(v101 + v250, &v275, &unk_943B10);
      if (v276)
      {
        sub_B170(&v275, v276);
        sub_7665B0();
        sub_BEB8(&v275);
      }

      else
      {
        sub_10A2C(&v275, &unk_943B10);
      }

      v312.origin.x = v258;
      v312.origin.y = v169;
      v312.size.width = v206;
      v312.size.height = v190;
      CGRectGetWidth(v312);
      v313.origin.x = v207;
      v208 = v255;
      v313.origin.y = v255;
      v313.size.width = v173;
      v209 = v251;
      v313.size.height = v251;
      CGRectGetWidth(v313);
      sub_B170(v226, v226[3]);
      sub_33964();
      sub_766700();
      v210 = v165;
      v211 = v259;
      v212 = v165;
      v213 = v253;
      v253(v210, v259);
      v214 = v254;
      v215 = v173;
      sub_B170(v224, v224[3]);
      sub_33964();
      sub_766700();
      v213(v212, v211);
      sub_B170(v227, v227[3]);
      sub_7665A0();
      v217 = v216;
      v314.origin.x = v214;
      v314.origin.y = v208;
      v314.size.width = v215;
      v314.size.height = v209;
      CGRectGetMidY(v314);
      sub_B170(v160, v160[3]);
      if ((sub_766540() & 1) != 0 || (v315.origin.x = v214, v315.origin.y = v208, v315.size.width = v215, v315.size.height = v209, CGRectGetHeight(v315) < v217))
      {
        v316.origin.x = v214;
        v316.origin.y = v208;
        v316.size.width = v215;
        v316.size.height = v209;
        CGRectGetMinY(v316);
      }

      v201 = v256;
      sub_B170(v160, v160[3]);
      v218 = sub_766540();
      v165 = v246;
      v159 = v248;
      v219 = v214;
      v220 = v255;
      v221 = v245;
      v222 = v209;
      if (v218)
      {
        CGRectGetMinX(*&v219);
      }

      else
      {
        CGRectGetMaxX(*&v219);
        sub_B170(v226, v226[3]);
        sub_33964();
        sub_766700();
        v253(v165, v259);
      }

      v177 = v257;
      sub_B170(v227, v227[3]);
      sub_769D20();
      sub_766530();
      v171 = v261;
      v169 = MinY;
      v190 = Height;
    }

    sub_1ED18(v101 + v250, &v272, &unk_943B10);
    v174 = *&v249;
    if (v273)
    {
      sub_10914(&v272, &v275);
      sub_B170(v225, v225[3]);
      sub_766520();
      CGRectGetMidY(v317);
      v318.size.height = v190;
      v318.origin.x = v258;
      v318.origin.y = v169;
      v318.size.width = v265;
      CGRectGetMaxX(v318);
      sub_B170(&v275, v276);
      sub_769D20();
      goto LABEL_81;
    }

    v204 = &unk_943B10;
    v205 = &v272;
  }

  sub_10A2C(v205, v204);
LABEL_84:
  sub_1ED18(v101 + v174[17], &v272, &unk_943B10);
  if (v273)
  {
    sub_10914(&v272, &v275);
    sub_B170(&v275, v276);
    v319.origin.x = v171;
    v319.origin.y = v177;
    v319.size.width = v201;
    v319.size.height = v176;
    CGRectGetMinX(v319);
    v320.origin.x = v171;
    v320.origin.y = v177;
    v320.size.width = v201;
    v320.size.height = v176;
    CGRectGetMinY(v320);
    v321.origin.x = v171;
    v321.origin.y = v177;
    v321.size.width = v201;
    v321.size.height = v176;
    CGRectGetWidth(v321);
    sub_766530();
    sub_BEB8(&v275);
  }

  else
  {
    sub_10A2C(&v272, &unk_943B10);
  }

  sub_1ED18(v101 + v174[18], &v272, &unk_943B10);
  if (v273)
  {
    sub_10914(&v272, &v275);
    sub_B170(&v275, v276);
    v322.origin.x = v171;
    v322.origin.y = v177;
    v322.size.width = v201;
    v322.size.height = v176;
    CGRectGetMinX(v322);
    v323.origin.x = v171;
    v323.origin.y = v177;
    v323.size.width = v201;
    v323.size.height = v176;
    CGRectGetMaxY(v323);
    sub_B170((v101 + *(v159 + 96)), *(v101 + *(v159 + 96) + 24));
    sub_33964();
    sub_766700();
    v253(v165, v259);
    v324.origin.x = v171;
    v324.origin.y = v177;
    v324.size.width = v201;
    v324.size.height = v176;
    CGRectGetWidth(v324);
    sub_766530();
    sub_BEB8(&v275);
  }

  else
  {
    sub_10A2C(&v272, &unk_943B10);
  }

  return sub_7664B0();
}

uint64_t sub_2E76C4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CGFloat a19, double a20, CGFloat a21, CGFloat a22)
{
  v23 = v22;
  v169 = a9;
  v168 = a8;
  v164 = a7;
  v174 = a2;
  v29 = a21;
  v30 = a22;
  v173 = a20;
  v31 = a19;
  v179 = sub_762D10();
  v32 = *(v179 - 8);
  __chkstk_darwin(v179);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v178 = &v145 - v36;
  v176 = sub_756CB0();
  v151 = *(v176 - 1);
  __chkstk_darwin(v176);
  v150 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_76A920();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = &v145 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for ProductLockupLayout(0);
  v171 = *(v177 + 40);
  sub_1ED18(v22 + v171, v182, &unk_943B10);
  v42 = v183;
  sub_10A2C(v182, &unk_943B10);
  v147 = v34;
  v175 = v32;
  if (v42)
  {
    v43 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_B170((v22 + *(v43 + 80)), *(v22 + *(v43 + 80) + 24));
    sub_33964();
    sub_766700();
    v153 = v44;
    (*(v39 + 8))(v41, v38);
  }

  else
  {
    v153 = 0.0;
  }

  v166 = a18;
  v165 = a17;
  v185.origin.x = a19;
  v45 = v173;
  v185.origin.y = v173;
  v185.size.width = a21;
  v185.size.height = a22;
  Width = CGRectGetWidth(v185);
  v186.origin.x = v174;
  v186.origin.y = a3;
  v167 = a4;
  v186.size.width = a4;
  v172 = a5;
  v186.size.height = a5;
  v46 = CGRectGetWidth(v186);
  v148 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v47 = (v22 + *(v148 + 76));
  v48 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  v49 = (v47 + *(v48 + 28));
  v50 = v49[3];
  v154 = v49;
  sub_B170(v49, v50);
  sub_33964();
  sub_766700();
  v52 = v51;
  v53 = *(v39 + 8);
  v159 = v41;
  v160 = v39 + 8;
  v158 = v53;
  v53(v41, v38);
  v54 = v177;
  v55 = (v22 + *(v177 + 64));
  v56 = *(v55 + 1);
  v163 = *v55;
  v149 = v48;
  v182[0] = a1;
  sub_BD88(&unk_94E7B0);
  v157 = v47;
  v57 = v56;
  sub_7592B0();
  v58 = v180;
  v59 = *(v22 + *(v54 + 60));
  v60 = (v22 + *(v54 + 44));
  v61 = v60[3];
  v170 = v60;
  sub_B170(v60, v61);
  v62 = sub_766540();
  v187.origin.x = a19;
  v187.origin.y = v45;
  v187.size.width = a21;
  v187.size.height = a22;
  CGRectGetWidth(v187);
  if (v57 == 0.0)
  {

    v65 = v172;
    v66 = v177;
    goto LABEL_21;
  }

  v63 = a6;
  v155 = a22;
  v156 = a21;
  v161 = a19;
  v162 = a3;
  v146 = v38;
  if (v62)
  {

    v64 = 0;
    v65 = v172;
LABEL_19:
    v80 = v177;
LABEL_20:
    v110 = (v23 + *(v80 + 48));
    v66 = v80;
    sub_B170(v110, v110[3]);
    if ((sub_766540() & 1) == 0)
    {
      v145 = v63;
      if (v64)
      {
        v112 = v174;
        sub_B170(v110, v110[3]);
        sub_7665A0();
        v114 = v113;
        sub_B170(v157, v157[3]);
        v179 = v114;
        sub_766720();
        v189.origin.x = v112;
        v189.origin.y = a3;
        v115 = v167;
        v189.size.width = v167;
        v189.size.height = v65;
        CGRectGetMinX(v189);
        v190.origin.x = v112;
        v190.origin.y = a3;
        v190.size.width = v115;
        v190.size.height = v65;
        CGRectGetWidth(v190);
        sub_B170(v170, v170[3]);
        v116 = sub_766540();
        v117 = v112;
        v118 = a3;
        v119 = v115;
        v120 = v65;
        if (v116)
        {
          CGRectGetMinY(*&v117);
        }

        else
        {
          CGRectGetMaxY(*&v117);
        }

        v29 = v156;
        v111 = v171;
      }

      else
      {
        v121 = v171;
        sub_1ED18(v23 + v171, v182, &unk_943B10);
        v122 = v183;
        sub_10A2C(v182, &unk_943B10);
        if (v122)
        {
          sub_B170((v23 + *(v148 + 80)), *(v23 + *(v148 + 80) + 24));
          v123 = v159;
          sub_33964();
          sub_766700();
          v179 = v124;
          v158(v123, v146);
        }

        else
        {
          v179 = 0;
        }

        sub_1ED18(v23 + v121, v182, &unk_943B10);
        if (v183)
        {
          sub_B170(v182, v183);
          sub_7665B0();
          v178 = v125;
          sub_BEB8(v182);
        }

        else
        {
          sub_10A2C(v182, &unk_943B10);
          v178 = 0;
        }

        v191.origin.x = v161;
        v191.origin.y = v173;
        v191.size.width = v29;
        v191.size.height = v30;
        CGRectGetWidth(v191);
        v126 = v174;
        v192.origin.x = v174;
        v192.origin.y = a3;
        v127 = v167;
        v192.size.width = v167;
        v128 = v172;
        v192.size.height = v172;
        CGRectGetWidth(v192);
        sub_B170(v154, v154[3]);
        v129 = v159;
        sub_33964();
        sub_766700();
        v130 = a3;
        v131 = v146;
        v132 = v158;
        v158(v129, v146);
        v133 = v128;
        sub_B170((v157 + *(v149 + 24)), *(v157 + *(v149 + 24) + 24));
        sub_33964();
        sub_766700();
        v134 = v129;
        v135 = v131;
        v132(v134, v131);
        sub_B170(v110, v110[3]);
        sub_7665A0();
        v137 = v136;
        v193.origin.x = v126;
        v193.origin.y = v130;
        v193.size.width = v127;
        v193.size.height = v133;
        CGRectGetMidY(v193);
        sub_B170(v170, v170[3]);
        if ((sub_766540() & 1) != 0 || (v194.origin.x = v126, v194.origin.y = v130, v194.size.width = v127, v194.size.height = v133, CGRectGetHeight(v194) < v137))
        {
          v138 = v126;
          v195.origin.x = v126;
          v195.origin.y = v130;
          v195.size.width = v127;
          v195.size.height = v133;
          CGRectGetMinY(v195);
        }

        else
        {
          v138 = v126;
        }

        sub_B170(v170, v170[3]);
        v139 = sub_766540();
        v111 = v171;
        v140 = v138;
        v141 = v162;
        v142 = v127;
        v143 = v172;
        if (v139)
        {
          CGRectGetMinX(*&v140);
        }

        else
        {
          CGRectGetMaxX(*&v140);
          sub_B170(v154, v154[3]);
          v144 = v159;
          sub_33964();
          sub_766700();
          v158(v144, v135);
        }

        v29 = v156;
      }

      sub_B170(v110, v110[3]);
      sub_769D20();
      sub_766530();
      v30 = v155;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_44;
    }

LABEL_21:
    sub_B170((v23 + *(v66 + 48)), *(v23 + *(v66 + 48) + 24));
    sub_766530();
    v111 = v171;
LABEL_44:
    sub_1ED18(v23 + v111, &v180, &unk_943B10);
    if (!v181)
    {
      return sub_10A2C(&v180, &unk_943B10);
    }

    sub_10914(&v180, v182);
    sub_B170(v170, v170[3]);
    if (sub_766540())
    {
      v196.origin.x = v174;
      v196.origin.y = a3;
      v196.size.width = v167;
      v196.size.height = v65;
      CGRectGetMinY(v196);
    }

    else
    {
      v197.origin.x = v174;
      v197.origin.y = a3;
      v197.size.width = v167;
      v197.size.height = v65;
      CGRectGetMidY(v197);
    }

    v198.origin.x = v31;
    v198.origin.y = v173;
    v198.size.width = v29;
    v198.size.height = v30;
    CGRectGetMaxX(v198);
    sub_B170(v182, v183);
    sub_769D20();
    sub_766530();
    return sub_BEB8(v182);
  }

  v67 = v46;
  v68 = v63;
  v69 = objc_opt_self();

  v70 = [v69 mainScreen];
  [v70 bounds];
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;

  v188.origin.x = v72;
  v188.origin.y = v74;
  v188.size.width = v76;
  v188.size.height = v78;
  v79 = CGRectGetWidth(v188);
  JUScreenClassGetPortraitWidth();
  v80 = v177;
  if (v79 <= v81)
  {
    v82 = v150;
    sub_756CA0();
    v182[0] = v163;
    *&v182[1] = v57;
    sub_12EC40();
    sub_76A4C0();
    v84 = v83;
    (*(v151 + 8))(v82, v176);
    if ((v84 & 1) == 0)
    {

      v64 = 1;
      v63 = v68;
      v30 = v155;
      v29 = v156;
      v31 = v161;
      v65 = v172;
      a3 = v162;
      goto LABEL_20;
    }
  }

  v63 = v68;
  v29 = v156;
  a3 = v162;
  if (v59)
  {
    v85 = [a1 traitCollection];
    v86 = sub_7699E0();

    if ((v86 & 1) == 0)
    {

      v64 = 1;
      v30 = v155;
      v31 = v161;
      v65 = v172;
      goto LABEL_20;
    }
  }

  v176 = v58;
  v151 = v23;
  v87 = Width - (v153 + v67 + v52 + v68);
  v153 = v57;
  result = sub_2E8950();
  v89 = result;
  v90 = *(result + 16);
  v91 = (v175 + 8);
  LODWORD(v175) = enum case for Feature.measurement_with_labelplaceholder(_:);
  v92 = result + 40;
  v93 = -v90;
  v94 = -1;
  v31 = v161;
  v65 = v172;
  while (1)
  {
    if (v93 + v94 == -1)
    {

      v103 = sub_7653B0();
      v183 = v103;
      v184 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature);
      v104 = sub_B1B4(v182);
      (*(*(v103 - 8) + 104))(v104, v175, v103);
      v105 = v176;
      sub_765C30();
      sub_BEB8(v182);
      v106 = v147;
      sub_762D00();
      sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
      v107 = v179;
      sub_7665A0();
      v109 = v108;

      (*v91)(v106, v107);
      v64 = v87 < v109;
      goto LABEL_18;
    }

    if (++v94 >= *(v89 + 16))
    {
      break;
    }

    v95 = v92 + 16;
    v96 = sub_7653B0();
    v183 = v96;
    v184 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature);
    v97 = sub_B1B4(v182);
    (*(*(v96 - 8) + 104))(v97, v175, v96);

    v98 = v176;
    sub_765C30();
    sub_BEB8(v182);
    v99 = v178;
    sub_762D00();
    sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
    v100 = v179;
    sub_7665A0();
    v102 = v101;
    result = (*v91)(v99, v100);
    v92 = v95;
    if (v87 < v102)
    {

      v64 = 1;
LABEL_18:
      v30 = v155;
      v23 = v151;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2E8950()
{
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = (v0 + 16);

  sub_BD88(&unk_94EA60);
  sub_12EC40();
  sub_2ED768();
  sub_76A4E0();

  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ProductLockupLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(void *a1)
{
  v2 = v1;
  v4 = sub_76A920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProductLockupLayout(0);
  sub_B170((v1 + v8[11]), *(v1 + v8[11] + 24));
  sub_7665B0();
  v10 = rint(v9);
  v29 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_B170((v2 + *(v29 + 96)), *(v2 + *(v29 + 96) + 24));
  sub_33964();
  sub_766700();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v7, v4);
  sub_B170((v2 + 72), *(v2 + 96));
  sub_33964();
  sub_766700();
  v15 = v14;
  v13(v7, v4);
  swift_getObjectType();
  v16 = [a1 traitCollection];
  v17 = sub_7699E0();

  if ((v17 & 1) == 0 && *(v2 + v8[15]) == 1)
  {
    v18 = sub_2EB578(a1, v2);
    v19 = (v2 + v8[12]);
    sub_B170(v19, v19[3]);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(v19, v19[3]);
      sub_7665A0();
      v21 = v20;
      v23 = v22;
      sub_B170((v2 + *(v29 + 76)), *(v2 + *(v29 + 76) + 24));
      sub_33964();
      sub_766700();
      v25 = v24;
      v13(v7, v4);
      v26 = v25 - v23;
      if (v25 - v23 <= 0.0)
      {
        v26 = 0.0;
      }

      v10 = v10 + v21 + v26;
    }

    if (v10 <= v18)
    {
      v10 = v18;
    }
  }

  return v12 + v15 + v10;
}

uint64_t sub_2E8DC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    v10 = result;
    swift_beginAccess();
    v11 = *(a8 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_7B5CC(0, *(v11 + 2) + 1, 1, v11);
      *(a8 + 16) = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_7B5CC((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = a2;
    *(a8 + 16) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_2E8EAC(CGFloat a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, double a18, double a19, CGFloat a20, CGFloat a21, CGFloat a22, CGFloat a23)
{
  v159 = a16;
  v154 = a15;
  v171 = *&a11;
  v169 = a8;
  v151 = a6;
  v168 = a4;
  v165 = a3;
  v163 = a2;
  v152 = a1;
  v29 = a22;
  v166 = a18;
  v30 = a17;
  *&v31 = COERCE_DOUBLE(sub_76A920());
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a14 - 8);
  __chkstk_darwin(v36);
  v38 = &v142 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v39);
  v156 = v42;
  v43 = *(v42 + 16);
  v155 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = a13;
  v43(v40);
  v158 = v35;
  v44 = *(v35 + 16);
  v157 = v38;
  v161 = a14;
  v44(v38, a10, a14);
  v45 = type metadata accessor for ProductLockupLayout(0);
  v46 = v45[10];
  sub_1ED18(a12 + v46, &v173, &unk_943B10);
  v162 = a20;
  v164 = a7;
  if (v174)
  {
    sub_10914(&v173, &v175);
    v47 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_B170((a12 + *(v47 + 92)), *(a12 + *(v47 + 92) + 24));
    sub_33964();
    v48 = v171;
    sub_766700();
    v153 = a17;
    v50 = v49;
    (*(v32 + 8))(v34, v31);
    v177.origin.x = v152;
    v177.origin.y = v163;
    v177.size.width = v165;
    v177.size.height = v168;
    MaxY = CGRectGetMaxY(v177);
    v52 = v151;
    v53 = MaxY - v151;
    if (v53 > v50 + a19)
    {
      v54 = v53;
    }

    else
    {
      v54 = v50 + a19;
    }

    v178.origin.x = a20;
    v178.origin.y = a21;
    v178.size.width = a22;
    v178.size.height = a23;
    v55 = CGRectGetMaxX(v178) - a5;
    sub_B170(&v175, v176);
    sub_769D20();
    sub_766530();
    v179.origin.x = v55;
    v179.origin.y = v54;
    a7 = v164;
    v30 = v153;
    v179.size.width = a5;
    v179.size.height = v52;
    v29 = a22;
    v168 = CGRectGetMaxY(v179);
    sub_BEB8(&v175);
    v56 = v162;
  }

  else
  {
    sub_10A2C(&v173, &unk_943B10);
    v180.origin.x = v152;
    v180.origin.y = v163;
    v180.size.width = v165;
    v180.size.height = v168;
    v57 = CGRectGetMaxY(v180);
    if (v57 <= a19)
    {
      v57 = a19;
    }

    v168 = v57;
    v56 = a20;
    v48 = v171;
  }

  v170 = a21;
  v167 = v29;
  v181.origin.x = v56;
  v181.origin.y = a21;
  v181.size.width = v29;
  v181.size.height = a23;
  MaxX = CGRectGetMaxX(v181);
  v182.origin.x = a7;
  v59 = v169;
  v182.origin.y = v169;
  v182.size.width = v30;
  v60 = v166;
  v182.size.height = v166;
  v171 = MaxX - CGRectGetWidth(v182);
  v163 = COERCE_DOUBLE(type metadata accessor for ProductLockupLayout.Metrics(0));
  sub_B170((a12 + *(*&v163 + 72)), *(a12 + *(*&v163 + 72) + 24));
  sub_33964();
  sub_766700();
  v62 = v61;
  v63 = *(v32 + 8);
  v150 = v34;
  v152 = *&v31;
  *&v151 = v32 + 8;
  v149 = v63;
  v63(v34, v31);
  v64 = v168 + v62;
  v183.origin.x = a7;
  v183.origin.y = v59;
  v183.size.width = v30;
  v183.size.height = v60;
  Width = CGRectGetWidth(v183);
  v184.origin.x = a7;
  v184.origin.y = v59;
  v66 = v30;
  v184.size.width = v30;
  v184.size.height = v60;
  Height = CGRectGetHeight(v184);
  v68 = (a12 + v45[11]);
  v69 = v48;
  sub_B170(v68, v68[3]);
  v172 = a23;
  v168 = Height;
  sub_769D20();
  sub_766530();
  sub_B170(v68, v68[3]);
  v70 = sub_766540();
  sub_B170(v68, v68[3]);
  if ((sub_766540() & 1) == 0)
  {
    v164 = v171;
    v169 = v64;
    v66 = Width;
    v166 = v168;
  }

  v71 = (a12 + v45[12]);
  sub_B170(v71, v71[3]);
  v72 = sub_766540();
  v165 = v64;
  if (v72)
  {
    sub_B170(v71, v71[3]);
    sub_766530();
    v73 = *&v163;
    v74 = v167;
    v75 = v172;
    v76 = v170;
    v77 = v56;
  }

  else
  {
    v73 = *&v163;
    v148 = Width;
    if (v70)
    {
      v78 = v56;
      sub_1ED18(a12 + v46, &v175, &unk_943B10);
      v79 = v176;
      sub_10A2C(&v175, &unk_943B10);
      v153 = v66;
      v80 = v164;
      if (v79)
      {
        sub_B170((a12 + v73[20]), *(a12 + v73[20] + 24));
        v81 = v150;
        sub_33964();
        sub_766700();
        v147 = v82;
        v149(v81, *&v152);
      }

      else
      {
        v147 = 0.0;
      }

      v94 = v169;
      sub_1ED18(a12 + v46, &v175, &unk_943B10);
      if (v176)
      {
        sub_B170(&v175, v176);
        v95 = v167;
        v96 = v172;
        sub_7665B0();
        v145 = v97;
        sub_BEB8(&v175);
      }

      else
      {
        sub_10A2C(&v175, &unk_943B10);
        v145 = 0;
        v96 = v172;
        v95 = v167;
      }

      v187.origin.x = v78;
      v187.origin.y = v170;
      v187.size.width = v95;
      v187.size.height = v96;
      CGRectGetWidth(v187);
      v188.origin.x = v80;
      v188.origin.y = v94;
      v169 = v94;
      v98 = v153;
      v188.size.width = v153;
      v99 = v166;
      v188.size.height = v166;
      CGRectGetWidth(v188);
      v100 = v73[19];
      v146 = a12;
      v101 = a12 + v100;
      v144 = a12 + v100;
      v102 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
      v103 = (v101 + *(v102 + 28));
      v104 = v103[3];
      v143 = v103;
      sub_B170(v103, v104);
      v105 = v150;
      sub_33964();
      sub_766700();
      v106 = v80;
      v107 = v152;
      v108 = v149;
      v149(v105, *&v152);
      sub_B170((v144 + *(v102 + 24)), *(v144 + *(v102 + 24) + 24));
      sub_33964();
      sub_766700();
      v108(v105, *&v107);
      v109 = v98;
      sub_B170(v71, v71[3]);
      v75 = v96;
      v110 = v169;
      sub_7665A0();
      v112 = v111;
      v189.origin.x = v106;
      v189.origin.y = v110;
      v189.size.width = v109;
      v189.size.height = v99;
      CGRectGetMidY(v189);
      sub_B170(v68, v68[3]);
      v113 = sub_766540();
      v147 = v112;
      if ((v113 & 1) != 0 || (v190.origin.x = v106, v190.origin.y = v110, v190.size.width = v109, v190.size.height = v99, CGRectGetHeight(v190) < v112))
      {
        v191.size.width = v109;
        v114 = v106;
        v191.origin.x = v106;
        v191.origin.y = v110;
        v191.size.height = v99;
        CGRectGetMinY(v191);
      }

      else
      {
        v114 = v106;
      }

      sub_B170(v68, v68[3]);
      v115 = sub_766540();
      v73 = *&v163;
      a12 = v146;
      v116 = v114;
      v117 = v110;
      v118 = v153;
      v119 = v166;
      if (v115)
      {
        CGRectGetMinX(*&v116);
      }

      else
      {
        CGRectGetMaxX(*&v116);
        sub_B170(v143, v143[3]);
        v120 = v150;
        sub_33964();
        sub_766700();
        v149(v120, *&v152);
      }

      v76 = v170;
      v77 = v162;
    }

    else
    {
      v83 = v164;
      v84 = v66;
      sub_B170(v71, v71[3]);
      sub_7665A0();
      v86 = v85;
      sub_B170((a12 + v73[19]), *(a12 + v73[19] + 24));
      v147 = v86;
      sub_766720();
      v185.origin.x = v83;
      v87 = v169;
      v185.origin.y = v169;
      v185.size.width = v84;
      v88 = v166;
      v185.size.height = v166;
      CGRectGetMinX(v185);
      v186.origin.x = v83;
      v186.origin.y = v87;
      v186.size.width = v84;
      v186.size.height = v88;
      CGRectGetWidth(v186);
      sub_B170(v68, v68[3]);
      v89 = sub_766540();
      v90 = v83;
      v91 = v87;
      v92 = v84;
      v93 = v88;
      if (v89)
      {
        CGRectGetMinY(*&v90);
      }

      else
      {
        CGRectGetMaxY(*&v90);
      }

      v76 = v170;
      v77 = v162;
      v75 = v172;
    }

    sub_B170(v71, v71[3]);
    v74 = v167;
    sub_769D20();
    sub_766530();
    Width = v148;
  }

  v192.origin.x = v77;
  v192.origin.y = v76;
  v192.size.width = v74;
  v192.size.height = v75;
  v121 = CGRectGetWidth(v192);
  v193.origin.x = v171;
  v193.origin.y = v165;
  v193.size.width = Width;
  v193.size.height = v168;
  v122 = v74;
  v123 = v121 - CGRectGetWidth(v193);
  *&v173 = v69;
  sub_BD88(&qword_940AD0);
  sub_7592B0();
  if (v123 - v175 > 0.0)
  {
    v124 = v123 - v175;
  }

  else
  {
    v124 = 0.0;
  }

  v194.origin.x = v77;
  v194.origin.y = v76;
  v194.size.width = v74;
  v125 = v172;
  v194.size.height = v172;
  CGRectGetHeight(v194);
  v126 = v155;
  v127 = v160;
  sub_7665A0();
  v128 = Width;
  v130 = v129;
  v132 = v131;
  v169 = v133;
  v195.origin.x = v77;
  v195.origin.y = v76;
  v195.size.width = v122;
  v195.size.height = v125;
  MinX = CGRectGetMinX(v195);
  v196.origin.x = v171;
  v196.origin.y = v165;
  v196.size.width = v128;
  v196.size.height = v168;
  MinY = CGRectGetMinY(v196);
  if (v124 < v130)
  {
    v130 = v124;
  }

  v197.origin.x = MinX;
  v197.origin.y = MinY;
  v197.size.width = v130;
  v197.size.height = v132;
  v171 = CGRectGetMaxY(v197) - v169;
  sub_769D20();
  sub_766530();
  v198.origin.x = v77;
  v136 = v170;
  v198.origin.y = v170;
  v198.size.width = v122;
  v137 = v172;
  v198.size.height = v172;
  CGRectGetHeight(v198);
  v138 = v157;
  v139 = v161;
  sub_7665A0();
  v168 = v140;
  v199.origin.x = v77;
  v199.origin.y = v136;
  v199.size.width = v122;
  v199.size.height = v137;
  v169 = CGRectGetMinX(v199);
  sub_B170((a12 + v73[21]), *(a12 + v73[21] + 24));
  sub_766720();
  sub_769D20();
  sub_766530();
  (*(v156 + 8))(v126, v127);
  return (*(v158 + 8))(v138, v139);
}

double sub_2E9F00(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 traitCollection];
  v21 = sub_7699E0();

  sub_B170((a2 + 32), *(a2 + 56));
  sub_33964();
  sub_766700();
  v16 = *(v11 + 8);
  v16(v14, v10);
  sub_B170((a2 + 72), *(a2 + 96));
  sub_33964();
  sub_766700();
  v16(v14, v10);
  v17 = a4 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v18 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v22 = a1;
  sub_BD88(&qword_940AD0);
  sub_7592B0();
  v20 = a3;
  sub_2EA2E8(a1, a2, a3, v17 - v23, a5);
  sub_B170((a2 + *(v18 + 96)), *(a2 + *(v18 + 96) + 24));
  sub_33964();
  sub_766700();
  v16(v14, v10);
  if (v21 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_2EA88C(a1, a2, v20, a4, a5);
  }

  return a4;
}

uint64_t sub_2EA218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2EA280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_2EA2E8(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_76A920();
  v48 = *(v10 - 8);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_7699E0();

  v49 = type metadata accessor for ProductLockupLayout(0);
  v16 = v49[10];
  sub_1ED18(a2 + v16, v50, &unk_943B10);
  if (v51)
  {
    sub_B170(v50, v51);
    sub_7665B0();
    v18 = v17;
    sub_BEB8(v50);
  }

  else
  {
    sub_10A2C(v50, &unk_943B10);
    v18 = 0.0;
  }

  v19 = sub_2EB7F4(a1, a2);
  sub_1ED18(a2 + v16, v50, &unk_943B10);
  v20 = v51;
  sub_10A2C(v50, &unk_943B10);
  if (v20)
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      if (*(a2 + v49[15]))
      {
        v22 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_B170((a2 + *(v22 + 92)), *(a2 + *(v22 + 92) + 24));
        sub_33964();
        sub_766700();
        v24 = v23;
        (*(v48 + 8))(v13, v10);
        v19 = v19 + v18 + v24;
      }

LABEL_9:
      if (*(a2 + v21[15]))
      {
        return v19;
      }
    }
  }

  else
  {
    v21 = v49;
    if ((v15 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v46 = *(a2 + 120);
  v25 = (a2 + v21[11]);
  v26 = v25[3];
  v45 = v25;
  sub_B170(v25, v26);
  sub_7665B0();
  v28 = v27;
  sub_1ED18(a2 + v16, v50, &unk_943B10);
  v29 = v51;
  sub_10A2C(v50, &unk_943B10);
  v47 = a3;
  if (v29)
  {
    v30 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_B170((a2 + *(v30 + 80)), *(a2 + *(v30 + 80) + 24));
    sub_33964();
    sub_766700();
    v31 = a1;
    v32 = v48;
    (*(v48 + 8))(v13, v10);
    v33 = v10;
  }

  else
  {
    v33 = v10;
    v31 = a1;
    v32 = v48;
  }

  v44 = a2;
  v48 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v34 = a2 + *(v48 + 76);
  v35 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_B170((v34 + *(v35 + 28)), *(v34 + *(v35 + 28) + 24));
  sub_33964();
  sub_766700();
  v36 = *(v32 + 8);
  v36(v13, v33);
  v37 = v36;
  sub_B170((v34 + *(v35 + 24)), *(v34 + *(v35 + 24) + 24));
  sub_33964();
  sub_766700();
  v36(v13, v33);
  v38 = v44;
  sub_B170((v44 + v49[12]), *(v44 + v49[12] + 24));
  sub_7665B0();
  v40 = v39;
  sub_B170(v45, v45[3]);
  if (sub_766540())
  {
    v28 = v40;
  }

  sub_B170((v38 + *(v48 + 72)), *(v38 + *(v48 + 72) + 24));
  sub_33964();
  sub_766700();
  v42 = v41;
  v37(v13, v33);
  if (v19 < v46 - v42 - v28)
  {
    v19 = v46 - v42 - v28;
  }

  return sub_2EA88C(v31, v38, v47, a4, a5) + v19;
}

double sub_2EA88C(void *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v44 = a3;
  v9 = sub_76A920();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_7699E0();

  v16 = type metadata accessor for ProductLockupLayout(0);
  sub_B170((a2 + v16[11]), *(a2 + v16[11] + 24));
  sub_7665B0();
  v18 = v17;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_B170((a2 + *(v42 + 72)), *(a2 + *(v42 + 72) + 24));
  sub_33964();
  sub_766700();
  v20 = v19;
  v21 = *(v10 + 8);
  v43 = v9;
  v21(v13, v9);
  if ((v15 & 1) != 0 || *(a2 + v16[15]) == 1)
  {
    v22 = a2 + *(v42 + 76);
    v23 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_B170((v22 + *(v23 + 28)), *(v22 + *(v23 + 28) + 24));
    sub_33964();
    sub_766700();
    v25 = v24;
    v21(v13, v43);
    sub_2EACF4(a1, a2, a4, a5, a4 - (v18 + v25));
    v27 = v26;
    v28 = sub_2EB578(a1, a2);
    if (v27 > v28)
    {
      v28 = v27;
    }
  }

  else
  {
    v29 = v16[10];
    sub_1ED18(a2 + v29, v45, &unk_943B10);
    if (v46)
    {
      sub_B170(v45, v46);
      sub_7665B0();
      v31 = v30;
      sub_BEB8(v45);
    }

    else
    {
      sub_10A2C(v45, &unk_943B10);
      v31 = 0.0;
    }

    v32 = v42;
    sub_1ED18(a2 + v29, v45, &unk_943B10);
    v33 = v46;
    sub_10A2C(v45, &unk_943B10);
    if (v33)
    {
      sub_B170((a2 + *(v32 + 80)), *(a2 + *(v32 + 80) + 24));
      sub_33964();
      sub_766700();
      v35 = v34;
      v36 = v43;
      v21(v13, v43);
    }

    else
    {
      v35 = 0.0;
      v36 = v43;
    }

    v37 = a2 + *(v32 + 76);
    v38 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_B170((v37 + *(v38 + 28)), *(v37 + *(v38 + 28) + 24));
    sub_33964();
    sub_766700();
    v40 = v39;
    v21(v13, v36);
    sub_2EACF4(a1, a2, a4, a5, a4 - (v35 + v31 + v18 + v40));
  }

  return v20 + 0.0 + v28;
}

void sub_2EACF4(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v78 = sub_762D10();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_76A920();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v73 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_756CB0();
  v75 = *(v77 - 1);
  __chkstk_darwin(v77);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ProductLockupLayout(0);
  v18 = (a2 + v17[11]);
  sub_B170(v18, v18[3]);
  sub_7665B0();
  v19 = (a2 + v17[16]);
  v74 = v19[1];
  if (v74)
  {
    v69 = v13;
    v70 = v12;
    v71 = *v19;
    v20 = (a2 + *(type metadata accessor for ProductLockupLayout.Metrics(0) + 76));
    type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    v79[0] = a1;
    sub_BD88(&unk_94E7B0);
    v66 = v20;
    sub_7592B0();
    v21 = v82;
    v67 = v17;
    v22 = v17[15];
    v68 = a2;
    v23 = *(a2 + v22);
    sub_B170(v18, v18[3]);
    if (sub_766540())
    {
    }

    else
    {
      v24 = objc_opt_self();
      v25 = v74;

      v26 = [v24 mainScreen];
      [v26 bounds];
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v83.origin.x = v28;
      v83.origin.y = v30;
      v83.size.width = v32;
      v83.size.height = v34;
      Width = CGRectGetWidth(v83);
      JUScreenClassGetPortraitWidth();
      if (Width > v36 || (sub_756CA0(), v79[0] = v71, v79[1] = v25, sub_12EC40(), sub_76A4C0(), v38 = v37, (*(v75 + 8))(v16, v77), (v38)) && (!v23 || (v39 = [a1 traitCollection], v40 = sub_7699E0(), v39, (v40)))
      {
        v77 = v21;
        v41 = sub_2E8950();
        v42 = *(v41 + 16);
        v43 = (v76 + 8);
        LODWORD(v75) = enum case for Feature.measurement_with_labelplaceholder(_:);
        v44 = v41 + 40;
        v76 = -v42;
        v45 = -1;
        while (v76 + v45 != -1)
        {
          if (++v45 >= *(v41 + 16))
          {
            __break(1u);
            return;
          }

          v46 = v44 + 16;
          v47 = a1;
          v48 = sub_7653B0();
          v80 = v48;
          v81 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature);
          v49 = sub_B1B4(v79);
          (*(*(v48 - 8) + 104))(v49, v75, v48);

          v50 = v77;
          sub_765C30();
          sub_BEB8(v79);
          a1 = v47;
          sub_762D00();
          sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
          v51 = v78;
          sub_7665A0();
          v53 = v52;
          (*v43)(v11, v51);
          v44 = v46;
          if (v53 > a5)
          {

            v21 = v77;
            goto LABEL_13;
          }
        }

        v59 = sub_7653B0();
        v80 = v59;
        v81 = sub_2ECB6C(&qword_93F9B0, &type metadata accessor for Feature);
        v60 = sub_B1B4(v79);
        (*(*(v59 - 8) + 104))(v60, v75, v59);
        v61 = v77;
        sub_765C30();
        sub_BEB8(v79);
        v62 = v72;
        sub_762D00();
        sub_2ECB6C(&unk_94E600, &type metadata accessor for LabelPlaceholderCompatibility);
        v63 = v78;
        sub_7665A0();
        v65 = v64;

        (*v43)(v62, v63);
        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
        if (v65 > a5)
        {
          goto LABEL_14;
        }
      }

      else
      {
LABEL_13:

        v54 = v70;
        v55 = v69;
        v56 = v68;
        v57 = v67;
LABEL_14:
        sub_B170((v56 + v57[12]), *(v56 + v57[12] + 24));
        sub_7665A0();
        sub_B170(v66, v66[3]);
        v58 = v73;
        sub_33964();
        sub_766700();
        (*(v55 + 8))(v58, v54);
      }
    }
  }
}