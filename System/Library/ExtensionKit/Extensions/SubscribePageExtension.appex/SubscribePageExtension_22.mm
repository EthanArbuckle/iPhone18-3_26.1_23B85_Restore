void sub_1002684CC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000C888((Strong + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((sub_100744E84() & 1) == 0)
    {
      v2 = v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_100269DF4(v2);
    }
  }
}

void sub_100268568()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView];
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v5 = [v0 traitCollection];
    v6 = sub_1007537D4();

    if (v6)
    {
      sub_10026A350();
    }

    else
    {
      sub_10026ADE8();
    }

    sub_100266A7C();
  }
}

id sub_100268688()
{
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v2 = v0;
    sub_1007423C4();

    swift_unknownObjectRelease();
  }

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ProductLockupCollectionViewCell()
{
  result = qword_10092F728;
  if (!qword_10092F728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100268A88(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView);
  if (v3)
  {
    v4 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v14 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView);
    if (a1)
    {
      sub_100274DD0(&qword_1009230E0, type metadata accessor for VideoView);
      v5 = v2;
      v6 = v14;
      v7 = [v5 superview];
      if (v7)
      {
        v8 = v7;
        sub_100016C60(0, &qword_100922300);
        v9 = v4;
        v10 = sub_100753FC4();

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

    v12 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v2;
    v13 = v2;
    sub_10057A514(v12);

    if (v2)
    {
      *&v13[qword_10093CB48 + 8] = &off_10087EBB0;
      swift_unknownObjectWeakAssign();
    }

    a1 = v14;
  }
}

uint64_t sub_100268C3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView);
  if (!v1)
  {
    return 0;
  }

  v2 = *(*(*(v1 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
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

uint64_t (*sub_100268CC0(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4 && (v5 = *(*(*(v4 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents)) != 0)
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
  return sub_100268D70;
}

uint64_t sub_100268D70(id *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[1]);
  if (a2)
  {
    if (v3)
    {
      v4 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v25 = *a1;
      if (v2)
      {
        sub_100274DD0(&qword_1009230E0, type metadata accessor for VideoView);
        v5 = v25;
        v6 = v3;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_100016C60(0, &qword_100922300);
          v9 = v4;
          v10 = sub_100753FC4();

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

      v20 = *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
      *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v25;
      v21 = v5;
      sub_10057A514(v20);

      if (v25)
      {
        *&v21[qword_10093CB48 + 8] = &off_10087EBB0;
        swift_unknownObjectWeakAssign();
      }
    }
  }

  else if (v3)
  {
    v11 = *(*&v3[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v26 = *a1;
    if (v2)
    {
      sub_100274DD0(&qword_1009230E0, type metadata accessor for VideoView);
      v12 = v26;
      v13 = v3;
      v14 = [v12 superview];
      if (v14)
      {
        v15 = v14;
        sub_100016C60(0, &qword_100922300);
        v16 = v11;
        v17 = sub_100753FC4();

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

    v22 = *&v11[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v11[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v26;
    v23 = v12;
    sub_10057A514(v22);

    if (v26)
    {
      *&v23[qword_10093CB48 + 8] = &off_10087EBB0;
      swift_unknownObjectWeakAssign();
    }
  }

  return _objc_release_x2();
}

void sub_1002690AC()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v1)
  {
    v2 = v0;
    v3 = v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100016C60(0, &qword_100923500);
    v10 = v1;
    v4 = sub_100753DF4();
    [v10 setTextColor:v4];

    if (v3 == 1)
    {
      if (qword_10091FE90 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_10097CBA0];
      v5 = [v2 contentView];
      v6 = [v5 traitCollection];

      [v6 userInterfaceStyle];
      sub_100753094();
      v7 = sub_100753064();

      v8 = [v10 layer];
      v9 = v7;
      [v8 setCompositingFilter:v9];
    }

    else
    {
      if (qword_10091FE88 != -1)
      {
        swift_once();
      }

      [v10 setFont:qword_10097CB98];
      v9 = [v10 layer];
      [v9 setCompositingFilter:0];
    }
  }
}

void sub_100269300()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  if (v5)
  {
    v6 = v0[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber];
    sub_100016C60(0, &qword_100923500);
    v7 = v5;
    v8 = sub_100753DF4();
    [v7 setTextColor:v8];

    if (v6 == 1)
    {
      if (qword_1009210A8 != -1)
      {
        swift_once();
      }

      v9 = sub_100750534();
      v10 = sub_10000D0FC(v9, qword_100980F30);
      v11 = *(v9 - 8);
      (*(v11 + 16))(v4, v10, v9);
      (*(v11 + 56))(v4, 0, 1, v9);
      sub_100745BA4();
      [v7 setTextAlignment:1];
      v12 = [v1 contentView];
      v13 = [v12 traitCollection];

      [v13 userInterfaceStyle];
      sub_100753094();
      v14 = sub_100753064();

      v15 = [v7 layer];
      v16 = v14;
      [v15 setCompositingFilter:v16];
    }

    else
    {
      if (qword_1009210A0 != -1)
      {
        swift_once();
      }

      v17 = sub_100750534();
      v18 = sub_10000D0FC(v17, qword_100980F18);
      v19 = *(v17 - 8);
      (*(v19 + 16))(v4, v18, v17);
      (*(v19 + 56))(v4, 0, 1, v17);
      sub_100745BA4();
      v16 = [v7 layer];
      [v16 setCompositingFilter:0];
    }
  }
}

void sub_100269678(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_10074AB44();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v53 - v13;
  if (v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer] != v3)
  {
    if (v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer])
    {
      if (qword_100921098 != -1)
      {
        swift_once();
      }

      v15 = sub_100750534();
      v16 = sub_10000D0FC(v15, qword_100980F00);
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
      if (qword_10091FFE8 != -1)
      {
        swift_once();
      }

      v20 = sub_10000C518(&unk_10092BC10);
      sub_10000D0FC(v20, qword_10097CFD8);
      v63 = v2;
      v21 = v2;
      v57 = v20;
      sub_100743464();

      v22 = *(v5 + 104);
      v56 = enum case for DirectionalTextAlignment.none(_:);
      v58 = v5 + 104;
      v55 = v22;
      v22(v7);
      v54 = sub_100745C84();
      v23 = objc_allocWithZone(v54);
      v24 = sub_100745C74();
      v25 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v26 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
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
      sub_100745BA4();
      v32 = [v21 contentView];
      [v32 addSubview:v31];

      [v21 setNeedsLayout];
      v33 = *&v21[v25];
      v34 = &selRef_initWithTitle_style_target_action_;
      if (v33)
      {
        if (*&v21[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText + 8])
        {
          v35 = v33;

          v36 = sub_100753064();
        }

        else
        {
          v35 = v33;
          v36 = 0;
        }

        v34 = &selRef_initWithTitle_style_target_action_;
        [v35 setText:v36];
      }

      if (v21[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
      {
        if (qword_1009210A8 != -1)
        {
          swift_once();
        }

        v40 = qword_100980F30;
      }

      else
      {
        if (qword_1009210A0 != -1)
        {
          swift_once();
        }

        v40 = qword_100980F18;
      }

      v41 = sub_10000D0FC(v15, v40);
      v60(v10, v41, v15);
      v59(v10, 0, 1, v15);
      if (qword_10091FFF0 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v57, qword_10097CFF0);
      v63 = v21;
      v42 = v21;
      sub_100743464();

      v55(v7, v56, v4);
      v43 = objc_allocWithZone(v54);
      v44 = sub_100745C74();
      v45 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v46 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
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

      sub_100269300();
      v49 = [v42 contentView];
      [v49 addSubview:v48];

      [v42 setNeedsLayout];
      v50 = *&v42[v45];
      if (v50)
      {
        if (*&v42[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText + 8])
        {
          v51 = v50;

          v52 = sub_100753064();
        }

        else
        {
          v51 = v50;
          v52 = 0;
        }

        [v51 v34[105]];
      }

      [*&v42[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel] setHidden:1];
      sub_1002680A4();
    }

    else
    {
      v28 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel;
      v29 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
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
      v37 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel;
      v38 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
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

void sub_100269DF4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) == (a1 & 1))
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
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow);
  if (v7)
  {
    v7[OBJC_IVAR____TtC22SubscribePageExtension11ChevronView_shouldAnimate] = (*(v1 + v3) & 1) == 0;
    v8 = v7;
    sub_10061EAB0();
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
  *&aBlock.tx = sub_100274C50;
  *&aBlock.ty = v11;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1000CF7B0;
  *&aBlock.d = &unk_10086E5B8;
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
  *&aBlock.tx = sub_100274C98;
  *&aBlock.ty = v17;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_1001A5B50;
  *&aBlock.d = &unk_10086E608;
  v18 = _Block_copy(&aBlock);
  v19 = v14;

  [v15 addCompletion:v18];
  _Block_release(v18);
  [v15 startAnimation];
}

void sub_10026A1D8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible;
    v6 = 0.0;
    if (*(Strong + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible))
    {
      v6 = 1.0;
    }

    [a2 setAlpha:v6];
    if (v4[v5])
    {
      v7 = xmmword_1007B5850;
      v8 = xmmword_1007B5860;
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

void sub_10026A2B4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) & 1) == 0)
    {
      [a3 setHidden:1];
      [a3 setText:0];
      [v5 setNeedsLayout];
    }
  }
}

void sub_10026A350()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UIVisualEffectView) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView;
  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView) = v2;

  v5 = *(v0 + v3);
  if (v5)
  {
    sub_10000C518(&unk_1009231A0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007A7210;
    v7 = qword_1009206B0;
    v8 = v5;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_10092F6B0;
    *(v6 + 32) = qword_10092F6B0;
    v10 = qword_1009206B8;
    v11 = v9;
    if (v10 != -1)
    {
      swift_once();
    }

    v12 = qword_10092F6B8;
    *(v6 + 40) = qword_10092F6B8;
    sub_100016C60(0, &qword_10092BE10);
    v13 = v12;
    isa = sub_100753294().super.isa;

    [v8 setBackgroundEffects:isa];
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView) = 0;

  v16 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView) = 0;

  v17 = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10000C518(&unk_1009231A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007A5CF0;
  if (qword_1009206C0 != -1)
  {
    swift_once();
  }

  v19 = qword_10092F6C0;
  *(v18 + 32) = qword_10092F6C0;
  sub_100016C60(0, &qword_10092BE10);
  v20 = v19;
  v21 = sub_100753294().super.isa;

  [v17 setBackgroundEffects:v21];

  v22 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  v96 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = v17;
  v97 = v17;

  v23 = type metadata accessor for GradientView();
  v24 = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView;
  v26 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = v24;

  v27 = *(v1 + v25);
  v28 = &stru_1008F2000;
  if (v27)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1007A57A0;
    v30 = objc_opt_self();
    v31 = v27;
    *(v29 + 32) = [v30 clearColor];
    v32 = [v30 blackColor];
    v33 = [v32 colorWithAlphaComponent:0.5];

    *(v29 + 40) = v33;
    v34 = [v30 blackColor];
    v35 = [v34 colorWithAlphaComponent:0.85];

    *(v29 + 48) = v35;
    v28 = &stru_1008F2000;
    *(v29 + 56) = [v30 blackColor];
    *&v31[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v29;

    sub_100037ED0();

    v36 = *(v1 + v25);
    if (v36)
    {
      v37 = v36;
      sub_100037D2C(&off_1008628B0);

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
    v45 = [v44 v28[67].name];
    v46 = *(v1 + v25);
    if (v46)
    {
      v47 = [v46 v28[67].name];
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
  v50 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView;
  v51 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = v49;

  v52 = *(v1 + v50);
  if (v52)
  {
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1007A57A0;
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
    *&v55[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v53;

    sub_100037ED0();

    v64 = *(v1 + v50);
    if (v64)
    {
      v65 = v64;
      sub_100037D2C(&off_1008628F0);

      v66 = *(v1 + v50);
      if (v66)
      {
        v67 = v66;
        v68 = [v67 v28[67].name];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v69 = *(v1 + v50);
        if (v69)
        {
          v70 = v69;
          v71 = [v70 v28[67].name];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v72 = *(v1 + v96);
  if (v72)
  {
    v73 = [v72 v28[67].name];
    v74 = *(v1 + v50);
    if (v74)
    {
      v75 = [v74 v28[67].name];
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
  v78 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v79 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = v77;

  v80 = *(v1 + v78);
  if (v80)
  {
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1007AC000;
    v82 = objc_opt_self();
    v83 = v80;
    *(v81 + 32) = [v82 blackColor];
    *(v81 + 40) = [v82 blackColor];
    *(v81 + 48) = [v82 blackColor];
    *&v83[OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors] = v81;

    sub_100037ED0();

    v84 = *(v1 + v78);
    if (v84)
    {
      v85 = v84;
      sub_100037D2C(&off_100862930);

      v86 = *(v1 + v78);
      if (v86)
      {
        v87 = v86;
        v88 = [v87 v28[67].name];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

        v89 = *(v1 + v78);
        if (v89)
        {
          v90 = v89;
          v91 = [v90 v28[67].name];
          objc_opt_self();
          [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];
        }
      }
    }
  }

  v92 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer) v28[67].name];
  v93 = *(v1 + v78);
  if (v93)
  {
    v94 = [v93 v28[67].name];
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

void sub_10026ADE8()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurEffect)];
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView) = v5;

  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;

  v8 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView;
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView) = v8;

  v11 = *(v1 + v9);
  if (v11)
  {
    v12 = objc_allocWithZone(UIColor);
    v13 = v11;
    v14 = [v12 initWithWhite:1.0 alpha:0.1];
    [v13 setBackgroundColor:v14];
  }

  sub_100743034();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView;
  v17 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView) = v15;

  v18 = *(v1 + v16);
  if (v18)
  {
    v19 = qword_100920488;
    v20 = v18;
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = sub_10074F0C4();
    v22 = sub_10000D0FC(v21, qword_10097E158);
    v23 = *(v21 - 8);
    (*(v23 + 16))(v4, v22, v21);
    (*(v23 + 56))(v4, 0, 1, v21);
    sub_100743014();

    v24 = *(v1 + v16);
    if (v24)
    {
      v25 = [v24 layer];
      v26 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView) layer];
      v27 = [v26 maskedCorners];

      [v25 setMaskedCorners:v27];
      v28 = *(v1 + v16);
      if (v28)
      {
        v29 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView);
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

  v32 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;

  v33 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;

  v34 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;

  v35 = [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer) layer];
  [v35 setMask:0];
}

uint64_t sub_10026B188()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_100754724();
  v179 = *(v181 - 8);
  *&v7 = __chkstk_darwin(v181).n128_u64[0];
  v180 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190.receiver = v1;
  v190.super_class = ObjectType;
  objc_msgSendSuper2(&v190, "layoutSubviews", v7);
  if ([*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel] isHidden])
  {
    v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel];
    if ([v9 isHidden])
    {
      [v9 setHidden:0];
    }
  }

  v10 = &selRef_initWithTitle_style_target_action_;
  v11 = [v1 traitCollection];
  v12 = sub_100753804();

  sub_1002725B8(v1, v1);
  sub_100272B10(v1, v1);
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
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
  v27 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] == 1)
  {
    v28 = [v1 traitCollection];
    v29 = sub_1007537E4();

    if (v29)
    {
      v30 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView;
      v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
      if (v31)
      {
        v32 = qword_100920000;
        v33 = v31;
        if (v32 != -1)
        {
          swift_once();
        }

        v34 = sub_10000C518(&unk_1009249B0);
        sub_10000D0FC(v34, qword_10097D020);
        v35 = v180;
        sub_1007502D4();
        sub_100743514();
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

          if (qword_100920018 != -1)
          {
            swift_once();
          }

          [v41 setBorderColor:qword_10097D068];

          v42 = *&v1[v30];
          if (v42)
          {
            v43 = [v42 contentView];
            v44 = [v43 layer];

            if (qword_100920008 != -1)
            {
              swift_once();
            }

            v45 = sub_10000C518(&unk_1009249B0);
            sub_10000D0FC(v45, qword_10097D038);
            v46 = v180;
            sub_1007502D4();
            sub_100743514();
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

    v185 = sub_10026BFD8(v189, v23, v24, v25, v26);
    v186 = v52;
    v187 = v53;
    v188 = v54;
    v55 = v13 + v52;
    v10 = &selRef_initWithTitle_style_target_action_;
  }

  else
  {
    v56 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
    if (v56)
    {
      v57 = [v56 contentView];
      v58 = [v57 layer];

      [v58 setBorderWidth:0.0];
    }

    if (v12)
    {
      v59 = sub_10026CCA0(v189, v23, v24, v25);
    }

    else
    {
      v59 = sub_10026D30C(v189, v23, v24, v25, v26);
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
  sub_10000C888(v189, v189[3]);
  v176 = MinX;
  v177 = v64;
  v175 = Width;
  v69 = v67;
  sub_100751124();
  (*(v4 + 8))(v6, v3);
  v70 = [v1 v10[129]];
  v71 = sub_1007537E4();

  v72 = &OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler;
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

    sub_100743314();
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
    v81 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
    if (v77 >= MidY)
    {
      v63 = v183;
      if (v81)
      {
        v82 = *(*(v81 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
        v91 = &v82[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
        v92 = v82[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride + 8];
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
        v82 = *(*(v81 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
        v83 = &v82[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
        MidY = *&v82[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride];
        v84 = v82[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_prominentPlayButtonCenterYOverride + 8];
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
    v85 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
    v78 = v66;
    v79 = y;
    if (v85)
    {
      v86 = *(*(*(v85 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      if (v86)
      {
        type metadata accessor for VideoView();
        v87 = swift_dynamicCastClass();
        if (v87)
        {
          v88 = v87 + qword_100982240;
          v89 = *(v87 + qword_100982240 + 16);
          *v88 = 0;
          *(v88 + 8) = 0;
          *(v88 + 16) = 1;
          if ((v89 & 1) == 0)
          {
            v90 = v86;
            sub_10051A1A4();
          }
        }
      }
    }
  }

  v93 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer];
  [v93 setFrame:{v78, v79, v25, v26}];
  v94 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView;
  v95 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
  if (v95)
  {
    v96 = v95;
    [v93 bounds];
    [v96 setFrame:?];
  }

  v97 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView;
  v98 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
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
        v105 = sub_1007537E4();

        v106 = 418.0;
        if (v105)
        {
          v106 = 0.0;
        }

        *&v103[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_reflectionOutset] = v106;
        v107 = *&v103[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView];
        v108 = *(v107 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount);
        *(v107 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount) = v106;
        if (v106 != v108)
        {
          sub_1005791C8();
        }
      }
    }

    v109 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView];
    if (v109)
    {
      v110 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
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

    v128 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView];
    if (v128)
    {
      v129 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
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
    if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight] != 0.0)
    {
      goto LABEL_64;
    }

    if (qword_10091FED0 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10097CC50, qword_10097CC68);
    v117 = v180;
    sub_100536120();
    sub_100750564();
    v116 = v118;
    (*(v179 + 8))(v117, v181);
    v98 = *&v1[v97];
    v72 = &OBJC_IVAR____TtC22SubscribePageExtension23CarouselItemTextOverlay_selectionHandler;
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

  v130 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView];
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
  v141 = v72[319];
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
    v170 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton];
    v171 = type metadata accessor for OfferButton();
    v184.receiver = v170;
    v184.super_class = v171;
    objc_msgSendSuper2(&v184, "frame");
    v172 = CGRectGetMinY(v208) / v169;
    sub_10000C518(&unk_10092F780);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5620;
    *(inited + 32) = v172;
    *(inited + 40) = 1.0 - v166 / v169;
    *(inited + 48) = 0x3FF0000000000000;
    sub_100037D2C(inited);
  }

  return sub_10000C8CC(&v185, &qword_10092F778);
}

double sub_10026BFD8(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v153 = a5;
  v148 = a1;
  v8 = sub_100754724();
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

  v24 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance] + *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance];
  v25 = [v6 contentView];
  [v25 layoutMargins];
  v27 = v26;

  v28 = &v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize];
  v29 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize];
  v30 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize + 8];
  v147 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight;
  v31 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  v146 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight;
  v32 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  if (qword_10091FE28 != -1)
  {
    swift_once();
  }

  v145 = sub_10000D0FC(v11, qword_10097CAA8);
  sub_100274CA0(v145, v19, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
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
  sub_10000C620(&v19[v33]);
  sub_100012160(&v176, &v19[v33]);
  v178 = &type metadata for CGFloat;
  v179 = &protocol witness table for CGFloat;
  *&v176 = v32;
  v34 = v11[16];
  sub_10000C620(&v19[v34]);
  sub_100012160(&v176, &v19[v34]);
  *&v176 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel];
  v151 = v176;
  v35 = [v6 traitCollection];
  v36 = sub_1007537E4();

  v37 = v19;
  if (v36)
  {
    sub_1007502D4();
    sub_100743514();
    (*(v149 + 8))(v10, v150);
  }

  sub_100753BA4();
  sub_100753BA4();
  v38 = v151;
  [v151 measurementsWithFitting:v6 in:?];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = sub_100745C84();
  v181.var0 = v40;
  v181.var1 = v42;
  v181.var2 = v44;
  v181.var3 = v46;
  v48 = sub_100750874(v181);

  v150 = v37;
  if (v48 >= 2)
  {
    v49 = *v28;
    v50 = *(v28 + 1);
    v51 = *&v6[v147];
    v52 = *&v6[v146];
    sub_100274CA0(v145, v15, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
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
    sub_10000C620(&v15[v53]);
    sub_100012160(&v176, &v15[v53]);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = v52;
    v54 = v11[16];
    sub_10000C620(&v15[v54]);
    sub_100012160(&v176, &v15[v54]);
    if (qword_10091FF48 != -1)
    {
      swift_once();
    }

    v55 = sub_10000C518(&unk_1009249B0);
    v56 = sub_10000D0FC(v55, qword_10097CDF8);
    v57 = *(*(v55 - 8) + 24);
    v57(&v15[v11[7]], v56, v55);
    if (qword_10091FF38 != -1)
    {
      swift_once();
    }

    v58 = sub_10000D0FC(v55, qword_10097CDC8);
    v57(&v15[v11[6]], v58, v55);
    if (qword_10091FF60 != -1)
    {
      swift_once();
    }

    v59 = sub_10000D0FC(v55, qword_10097CE40);
    v57(&v15[v11[8]], v59, v55);
    if (qword_10091FF08 != -1)
    {
      swift_once();
    }

    v60 = sub_10000C518(&unk_100923C30);
    v61 = sub_10000D0FC(v60, qword_10097CD38);
    (*(*(v60 - 8) + 24))(&v15[v11[13]], v61, v60);
    v178 = &type metadata for CGFloat;
    v179 = &protocol witness table for CGFloat;
    *&v176 = 0x401C000000000000;
    v37 = v150;
    sub_100274D70(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    v62 = v11[9];
    sub_10000C620(&v15[v62]);
    sub_100012160(&v176, &v15[v62]);
    sub_100274D08(v15, v37, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
    if (qword_10091FE60 != -1)
    {
      swift_once();
    }

    v63 = sub_10000C518(&unk_100923C20);
    sub_10000D0FC(v63, qword_10097CB20);
    v175 = v6;
    v64 = v6;
    sub_100743464();

    v65 = v176;
    v38 = v151;
    [v151 setFont:v176];
  }

  sub_100274CA0(v37, v152, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v66 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView];
  if (v66)
  {
    v146 = sub_100016C60(0, &qword_100922300);
    v145 = &protocol witness table for UIView;
  }

  else
  {
    v145 = 0;
    v146 = 0;
  }

  v67 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView];
  v68 = sub_100016C60(0, &qword_100922300);
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
  v151 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
  v147 = v66;
  if (v151)
  {
    v144 = sub_100016C60(0, &qword_100927120);
    v143 = &protocol witness table for UIView;
  }

  else
  {
    v143 = 0;
    v144 = 0;
  }

  v73 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView];
  v170 = sub_1007441E4();
  v171 = &protocol witness table for UIView;
  *&v169 = v73;
  v74 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView];
  v167 = sub_1007433C4();
  v168 = &protocol witness table for UIView;
  *&v166 = v74;
  v164 = v47;
  v165 = &protocol witness table for UILabel;
  v162 = &protocol witness table for UILabel;
  *&v163 = v38;
  v75 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v149 = v47;
  v161 = v47;
  *&v160 = v75;
  v76 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton];
  v158 = type metadata accessor for OfferButton();
  v159 = &protocol witness table for UIView;
  *&v157 = v76;
  v77 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v78 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
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
    if (sub_100753714())
    {
      *(&v155 + 1) = v68;
      v156 = &protocol witness table for UIView;
      *&v154 = v80;
      v87 = v149;
      goto LABEL_32;
    }

    sub_100753C84();
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
  v95 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow];
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

  v96 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView];
  v97 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  v98 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView];
  if (v98)
  {
    v139 = sub_100743034();
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
  v106[4] = sub_100274DD0(&qword_10092D490, type metadata accessor for ProductLockupInlineUberLayout);
  v107 = sub_10000D134(v106);
  sub_100274D08(v152, v107, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  v108 = (v107 + v105[5]);
  v109 = v146;
  *v108 = v147;
  v108[1] = 0;
  v108[2] = 0;
  v108[3] = v109;
  v108[4] = v145;
  sub_100012160(&v172, v107 + v105[6]);
  v110 = (v107 + v105[7]);
  *v110 = v151;
  v110[1] = 0;
  v111 = v143;
  v112 = v144;
  v110[2] = 0;
  v110[3] = v112;
  v110[4] = v111;
  sub_100012160(&v169, v107 + v105[10]);
  sub_100012160(&v166, v107 + v105[8]);
  sub_100012160(&v163, v107 + v105[9]);
  sub_100012160(&v160, v107 + v105[11]);
  v113 = v107 + v105[12];
  *(v113 + 4) = 0;
  *v113 = 0u;
  *(v113 + 1) = 0u;
  sub_100012160(&v157, v107 + v105[13]);
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
  v132 = sub_10026F774(v6, v107, a4);
  sub_100274D70(v150, type metadata accessor for ProductLockupInlineUberLayout.Metrics);
  return v132;
}

double sub_10026CCA0(uint64_t *a1, double a2, double a3, double a4)
{
  v5 = v4;
  v8 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v71 - v13;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize];
  v86 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize + 8];
  v84 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  v85 = v12;
  v12.n128_u64[0] = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v83 = v12;
  v15 = [v5 contentView];
  [v15 layoutMargins];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  if (qword_10091FE30 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v8, qword_10097CAC0);
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
  sub_100274DD0(&qword_10092BC38, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10074F4B4();
  v27 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
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
      if (sub_100753714())
      {
        v105 = sub_100016C60(0, &qword_100922300);
        v106 = &protocol witness table for UIView;

        v104[0] = v28;
      }

      else
      {
        sub_100753C84();
      }

      goto LABEL_7;
    }
  }

  v29 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v105 = sub_100745C84();
  v106 = &protocol witness table for UIView;
  v104[0] = v29;
  v30 = v29;
LABEL_7:
  v86.n128_u64[0] = v10;
  sub_100274CA0(v14, v10, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  v31 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView];
  v102 = sub_1007433C4();
  v103 = &protocol witness table for UIView;
  v85.n128_u64[0] = v31;
  *&v101 = v31;
  v32 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel];
  v33 = sub_100745C84();
  v99 = v33;
  v100 = &protocol witness table for UILabel;
  v84.n128_u64[0] = v32;
  v97 = &protocol witness table for UILabel;
  *&v98 = v32;
  v34 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel];
  v35 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v96 = v33;
  v82 = v35;
  v83.n128_u64[0] = v34;
  v94 = &protocol witness table for UILabel;
  *&v95 = v34;
  v93 = v33;
  *&v92 = v35;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v37 = *&v5[v36];
  v38 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton];
  v90 = type metadata accessor for OfferButton();
  v91 = &protocol witness table for UIView;
  v81 = v38;
  *&v89 = v38;
  sub_10000C824(v104, v88);
  v39 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v40 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v80 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView];
  if (v80)
  {
    v78 = sub_100016C60(0, &qword_100922300);
    v79 = &protocol witness table for UIView;
  }

  else
  {
    v78 = 0;
    v79 = 0;
  }

  v41 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  v87 = v14;
  if (v41)
  {
    v76 = sub_100016C60(0, &qword_100922300);
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
  a1[4] = sub_100274DD0(&unk_10092F790, type metadata accessor for ProductLockupAccessibilityLayout);
  v52 = sub_10000D134(a1);
  sub_100274D08(v86.n128_i64[0], v52 + *(v51 + 64), type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_100012160(&v101, v52);
  sub_100012160(&v98, (v52 + 5));
  sub_100012160(&v95, (v52 + 10));
  sub_100012160(&v92, (v52 + 15));
  v52[20] = v47;
  v52[21] = 0;
  v52[22] = 0;
  v52[23] = v50;
  v52[24] = v48;
  sub_100012160(&v89, (v52 + 25));
  *(v52 + 15) = 0u;
  *(v52 + 16) = 0u;
  v52[34] = 0;
  sub_100012160(v88, (v52 + 35));
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
  sub_100273640(v5, v52, a4);
  sub_100274D70(v87, type metadata accessor for ProductLockupAccessibilityLayout.Metrics);
  sub_10000C620(v104);
  return a4;
}

double sub_10026D30C(uint64_t *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = a1;
  v9 = sub_10000C518(&qword_10092BC40);
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
  v24 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  v25 = &selRef_initWithTitle_style_target_action_;
  v127 = v13;
  v128 = v23;
  if (!v24)
  {
LABEL_4:
    v27 = [v6 v25[129]];
    sub_10003FEA4(v27, v19);

    sub_100274CA0(&v19[*(v129 + 19)], v23, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
    sub_100274D70(v19, type metadata accessor for ProductLockupLayout.Metrics);
    v28 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
    v147 = sub_100745C84();
    v148 = &protocol witness table for UIView;
    v146[0] = v28;
    v29 = [v28 text];
    if (v29)
    {
      v30 = v29;
      v31 = sub_100753094();
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

    v25 = &selRef_initWithTitle_style_target_action_;
    goto LABEL_4;
  }

  v124 = v20;
  v23[3] = &type metadata for Double;
  v23[4] = &protocol witness table for Double;
  *v23 = 0;
  v33 = v23;
  if (qword_10091FE88 != -1)
  {
    swift_once();
  }

  v149 = qword_10097CB98;
  v34 = v126;
  v35 = qword_10097CB98;
  sub_10000C518(&unk_100923AE0);
  sub_100016C60(0, &qword_100923AB0);
  sub_1007434A4();
  v36 = (v23 + *(v34 + 24));
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x7FF0000000000000;
  if (qword_10091FF88 != -1)
  {
    swift_once();
  }

  v37 = sub_100750B04();
  v38 = sub_10000D0FC(v37, qword_10097CEB8);
  v39 = (v33 + *(v34 + 28));
  v39[3] = v37;
  v39[4] = &protocol witness table for StaticDimension;
  v40 = sub_10000D134(v39);
  (*(*(v37 - 8) + 16))(v40, v38, v37);
  [v26 transform];
  v149 = 0x3FF0000000000000;
  v150 = 0;
  v151 = 0;
  v152 = 0x3FF0000000000000;
  v153 = 0;
  v154 = 0;
  if (sub_100753714())
  {
    v147 = sub_100016C60(0, &qword_100922300);
    v148 = &protocol witness table for UIView;
    v146[0] = v26;
  }

  else
  {
    sub_100753C84();
  }

  v20 = v124;
  v42 = [v26 text];
  v23 = v128;
  v41 = v126;
  if (v42)
  {
    v43 = v42;
    v44 = sub_100753094();
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
  v126 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize];
  *&v46 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight];
  *(&v46 + 1) = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight];
  v122 = v46;
  v47 = [v6 contentView];
  [v47 layoutMargins];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_100274CA0(v23, v11, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  (*(v20 + 56))(v11, 0, 1, v41);
  v56 = [v6 traitCollection];
  v57 = sub_10003FEA4(v56, v19);
  __chkstk_darwin(v57);
  v58 = v122;
  *(&v108 - 5) = v126;
  *(&v108 - 4) = v58;
  *(&v108 - 6) = v49;
  *(&v108 - 5) = v51;
  *(&v108 - 4) = v53;
  *(&v108 - 3) = v55;
  *(&v108 - 2) = v11;
  sub_100274DD0(&qword_10092BC48, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10074F4B4();

  sub_100274D70(v19, type metadata accessor for ProductLockupLayout.Metrics);
  sub_10000C8CC(v11, &qword_10092BC40);
  v129 = v16;
  sub_100274CA0(v16, v13, type metadata accessor for ProductLockupLayout.Metrics);
  v59 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView];
  v144 = sub_1007433C4();
  v145 = &protocol witness table for UIView;
  *&v126 = v59;
  *&v143 = v59;
  v60 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel];
  v61 = sub_100745C84();
  v141 = v61;
  v142 = &protocol witness table for UILabel;
  v139 = &protocol witness table for UILabel;
  *&v140 = v60;
  v62 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel];
  v63 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel];
  v138 = v61;
  v121 = v62;
  *&v122 = v60;
  v136 = &protocol witness table for UILabel;
  *&v137 = v62;
  v135 = v61;
  v120 = v63;
  *&v134 = v63;
  v64 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v65 = *&v6[v64];
  v66 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton];
  v132 = type metadata accessor for OfferButton();
  v133 = &protocol witness table for UIView;
  v119 = v66;
  *&v131 = v66;
  sub_10000C824(v146, v130);
  v67 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
  v68 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
  v117 = v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
  v118 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView];
  if (v118)
  {
    v115 = sub_100016C60(0, &qword_100922300);
    v116 = &protocol witness table for UIView;
  }

  else
  {
    v115 = 0;
    v116 = 0;
  }

  v69 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerView];
  if (v69)
  {
    v113 = sub_100016C60(0, &qword_100922300);
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
  v77[4] = sub_100274DD0(&unk_10092F7B0, type metadata accessor for ProductLockupLayout);
  v78 = sub_10000D134(v77);
  sub_100274D08(v127, v78, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100012160(&v143, v78 + v76[5]);
  sub_100012160(&v140, v78 + v76[6]);
  sub_100012160(&v137, v78 + v76[7]);
  sub_100012160(&v134, v78 + v76[8]);
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
  sub_100012160(&v131, v78 + v76[11]);
  sub_100012160(v130, v78 + v76[12]);
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
  v106 = sub_10027083C(v6, v78, a4, a5);
  sub_100274D70(v129, type metadata accessor for ProductLockupLayout.Metrics);
  sub_100274D70(v128, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  sub_10000C620(v146);
  return v106;
}

uint64_t sub_10026DDE0(double *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v20 = sub_10000C518(&qword_10092BC40);
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
  sub_10000C620((a1 + 4));
  sub_100012160(&v30, (a1 + 4));
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  *&v30 = a6;
  sub_10000C620((a1 + 9));
  sub_100012160(&v30, (a1 + 9));
  *a1 = a7;
  a1[1] = a8;
  a1[2] = a9;
  a1[3] = a10;
  sub_100016B4C(a2, v22, &qword_10092BC40);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_10000C8CC(v22, &qword_10092BC40);
  }

  sub_100274D08(v22, v26, type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics);
  v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
  return sub_1001DAC58(v26, a1 + *(v28 + 76));
}

uint64_t sub_10026E018(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  a1[14] = a2;
  a1[15] = a3;
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a4;
  sub_10000C620((a1 + 4));
  sub_100012160(&v16, (a1 + 4));
  v17 = &type metadata for CGFloat;
  v18 = &protocol witness table for CGFloat;
  *&v16 = a5;
  sub_10000C620((a1 + 9));
  result = sub_100012160(&v16, (a1 + 9));
  *a1 = a6;
  a1[1] = a7;
  a1[2] = a8;
  a1[3] = a9;
  return result;
}

void sub_10026E0C8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
  if (v2)
  {
    sub_100016C60(0, &qword_100923500);
    v3 = v2;
    v4 = sub_100753DD4();
    [v3 setTextColor:v4];
  }

  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel);
  sub_100016C60(0, &qword_100923500);
  v6 = sub_100753DD4();
  [v5 setTextColor:v6];

  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
  v8 = sub_100753DF4();
  [v7 setTextColor:v8];

  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView);
  v10 = sub_100753DF4();
  [v9 setTintColor:v10];

  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = sub_100753DE4();
    [v13 setTextColor:v14];
  }
}

void sub_10026E23C(void *a1)
{
  v21.receiver = v1;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView;
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView];
  if (v3)
  {
    if (v5)
    {
      v6 = v3;
      v7 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
      v8 = *(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v9 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
      *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v7;
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
        v18 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
        *(v11 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_isRubberbanding) = v18;
        v19 = *(v11 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
        *(v19 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding) = v18;
        if (*(*(v19 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
        {
          type metadata accessor for VideoView();
          v20 = swift_dynamicCastClass();
          if (v20)
          {
            *(v20 + qword_10093CB60) = v18;
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
    v12 = *(*(v5 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v13 = *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
    *&v12[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = 0;
    if (v13 != 0.0)
    {
      [v12 setNeedsLayout];
    }

    v14 = *&v1[v4];
    if (v14)
    {
      *(v14 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_isRubberbanding) = 0;
      v15 = *(v14 + OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView);
      *(v15 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding) = 0;
      if (*(*(v15 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents))
      {
        type metadata accessor for VideoView();
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          *(v16 + qword_10093CB60) = 0;
        }
      }
    }
  }
}

void sub_10026E5CC()
{
  v0 = sub_1007521E4();
  __chkstk_darwin(v0);
  v1 = sub_100752244();
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
    v10 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel;
    v11 = [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel) text];
    if (v11 && (v11, ([*&v9[v10] isHidden] & 1) != 0))
    {
      sub_100016C60(0, &qword_100926D00);
      v21 = sub_100753774();
      sub_100752234();
      sub_1007522B4();
      v20 = *(v2 + 8);
      v20(v4, v1);
      v12 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel];
      v13 = *&v9[v10];
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v12;
      aBlock[4] = sub_10026F62C;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_10086E400;
      v19[1] = _Block_copy(aBlock);
      v22 = _swiftEmptyArrayStorage;
      sub_100274DD0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      v15 = v12;
      v16 = v13;
      v17 = v15;
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      sub_1007543A4();
      sub_100752284();
      swift_allocObject();
      sub_100752264();

      v18 = v21;
      sub_100753744();

      v20(v7, v1);
    }

    else
    {
    }
  }
}

void sub_10026E954(void *a1, void *a2)
{
  [a1 setAlpha:0.0];
  [a1 setHidden:0];
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;
  v16 = sub_10026F64C;
  v17 = v5;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000CF7B0;
  v15 = &unk_10086E450;
  v6 = _Block_copy(&v12);
  v7 = a2;
  v8 = a1;

  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v16 = sub_10026F6D0;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100144DD8;
  v15 = &unk_10086E4A0;
  v10 = _Block_copy(&v12);
  v11 = v7;

  [v4 animateWithDuration:v6 animations:v10 completion:1.0];
  _Block_release(v10);
  _Block_release(v6);
}

void sub_10026EB10(uint64_t a1, double a2)
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

void sub_10026EBA8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *&Strong[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      __break(1u);
      return;
    }

    *&Strong[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v9;
  }

  if ((a3 & 1) != 0 && (swift_beginAccess(), (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v11 = *&v10[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];

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

void sub_10026EE44()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_100746034();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void *sub_10026EFC8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView);
  v2 = v1;
  return v1;
}

uint64_t (*sub_10026F004(uint64_t **a1))()
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
  v2[4] = sub_100268CC0(v2);
  return sub_1000181A8;
}

double sub_10026F074()
{
  [v0 bounds];

  return CGRectGetMaxY(*&v1);
}

uint64_t sub_10026F0A8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100274DD0(&qword_10092F770, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10026F11C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100274DD0(&qword_10092F770, type metadata accessor for ProductLockupCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10026F1A8(uint64_t *a1))()
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
  sub_100274DD0(&qword_10092F770, type metadata accessor for ProductLockupCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10026F264(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView);
  if (v2 && a1)
  {
    v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14UberHeaderView_contentView];
    v5 = v2;
    v6 = [a1 superview];
    if (v6)
    {
      v7 = v6;
      v8 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      sub_100016C60(0, &qword_100922300);
      v9 = v8;
      v10 = sub_100753FC4();

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

BOOL sub_10026F414(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 traitCollection];
  v11 = sub_1007537E4();

  if (v11)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    (*(v6 + 8))(v9, v5);
  }

  sub_100753BA4();
  sub_100753BA4();
  sub_10000C888(a1, a1[3]);
  sub_10000C888(a1, a1[3]);
  sub_100750404();
  return sub_100750874(v14) > 1;
}

uint64_t sub_10026F5EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10026F634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10026F64C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha:0.0];

  return [v1 setAlpha:1.0];
}

uint64_t sub_10026F698()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10026F6E4(void *a1, char a2, uint64_t a3)
{
  v5 = [a1 traitCollection];
  if ((a2 & 1) == 0 || (sub_1007537E4() & 1) != 0 || [*(a3 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton) isHidden])
  {
    v6 = sub_1007537F4();

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

double sub_10026F774(void *a1, uint64_t a2, double a3)
{
  v6 = sub_10000C518(&unk_1009249B0);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin(v6);
  v49 = v45 - v7;
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007537D4();

  v48 = v9;
  if ((v14 & 1) == 0)
  {
    v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000C888((a2 + v15[15]), *(a2 + v15[15] + 24));
    sub_100536120();
    sub_100750564();
    v16 = *(v9 + 8);
    v16(v12, v8);
    sub_10000C888((a2 + v15[16]), *(a2 + v15[16] + 24));
    sub_100536120();
    sub_100750564();
    v16(v12, v8);
    sub_10000C888((a2 + v15[17]), *(a2 + v15[17] + 24));
    sub_100536120();
    v17 = v49;
    sub_100750564();
    v16(v12, v8);
    sub_1007502D4();
    sub_100743514();
    v16(v12, v8);
    sub_10000C518(&unk_100923C30);
    sub_100743534();
    sub_1007502D4();
    sub_100743514();
    v16(v12, v8);
    v9 = v48;
    (*(v50 + 8))(v17, v51);
  }

  sub_100753BA4();
  v19 = v18;
  v20 = [a1 traitCollection];
  v21 = sub_1007537E4();

  if (v21)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    (*(v9 + 8))(v12, v8);
  }

  v47 = v19;
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000C888((a2 + *(v22 + 36)), *(a2 + *(v22 + 36) + 24));
  sub_100750404();
  v45[2] = v23;
  v45[4] = v24;
  v45[1] = v25;
  v45[3] = v26;
  v46 = v22;
  v27 = (a2 + *(v22 + 44));
  sub_10000C888(v27, v27[3]);
  sub_100750404();
  sub_10000C888(v27, v27[3]);
  if (sub_100750364())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_1007502D4();
    sub_100743514();
    v29 = v28;
    (*(v9 + 8))(v12, v8);
    v54[0] = v29;
    sub_100750584();
  }

  sub_1001EBAAC(&v52);
  if (v53)
  {
    sub_100012160(&v52, v54);
    sub_10000C888(v54, v55);
    sub_100750404();
    v30 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000C888((a2 + *(v30 + 44)), *(a2 + *(v30 + 44) + 24));
    sub_100750584();
    sub_10000C888((a2 + *(v30 + 48)), *(a2 + *(v30 + 48) + 24));
    sub_100536120();
    sub_100750564();
    (*(v9 + 8))(v12, v8);
    sub_10000C620(v54);
  }

  else
  {
    sub_10000C8CC(&v52, &unk_100928A00);
  }

  v31 = v50;
  sub_1001EBAAC(v54);
  v32 = v55;
  sub_10000C8CC(v54, &unk_100928A00);
  if (!v32)
  {
    v33 = [a1 traitCollection];
    v34 = sub_1007537E4();

    if (v34 & 1) != 0 || (v35 = [a1 traitCollection], v36 = sub_100753804(), v35, (v36))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_1007502D4();
      sub_100743514();
      (*(v9 + 8))(v12, v8);
    }
  }

  v37 = [a1 traitCollection];
  v38 = sub_1007537D4();

  if (v38)
  {
    sub_1001EBAAC(v54);
    sub_10000C8CC(v54, &unk_100928A00);
  }

  v39 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000C518(&unk_100923C30);
  v40 = v49;
  sub_100743534();
  sub_1007502D4();
  sub_100743514();
  v41 = *(v48 + 8);
  v41(v12, v8);
  (*(v31 + 8))(v40, v51);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_1007502D4();
  sub_100743514();
  v41(v12, v8);
  sub_1007502D4();
  sub_100743514();
  v43 = v42;
  v41(v12, v8);
  v54[0] = v43;
  sub_100750584();
  sub_10000C888((a2 + v39[9]), *(a2 + v39[9] + 24));
  sub_100536120();
  sub_100750564();
  v41(v12, v8);
  sub_10000C888((a2 + *(v46 + 52)), *(a2 + *(v46 + 52) + 24));
  sub_100750414();
  sub_10000C888((a2 + v39[15]), *(a2 + v39[15] + 24));
  sub_100536120();
  sub_100750564();
  v41(v12, v8);
  sub_10000C888((a2 + v39[16]), *(a2 + v39[16] + 24));
  sub_100536120();
  sub_100750564();
  v41(v12, v8);
  return a3;
}

double sub_1002702B4(uint64_t a1, void *a2)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 35, a2[38]);
  v8 = sub_1007503A4();
  v9 = 0.0;
  v10 = 0.0;
  if ((v8 & 1) == 0)
  {
    sub_10000C888(a2 + 35, a2[38]);
    sub_100750404();
    v12 = v11;
    v9 = v13;
    v14 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888(&v14[*(v15 + 56)], *&v14[*(v15 + 56) + 24]);
    sub_100750584();
    v10 = v12 - v9 + v16;
  }

  v46 = v10;
  sub_100016B4C((a2 + 40), &v48, &qword_10092BC30);
  if (v49)
  {
    sub_100012160(&v48, v50);
    sub_10000C888(v50, v51);
    sub_100750404();
    v18 = v17;
    v9 = v19;
    type metadata accessor for ProductLockupAccessibilityLayout(0);
    type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    v47 = a1;
    sub_10000C518(&unk_1009249B0);
    sub_100743464();
    v47 = v48;
    v20 = v18;
    sub_100750584();
    v22 = v21;
    sub_10000C620(v50);
    v45 = v9;
  }

  else
  {
    sub_10000C8CC(&v48, &qword_10092BC30);
    v20 = JUMeasurementsZero[1];
    v45 = JUMeasurementsZero[3];
    v22 = 0.0;
  }

  sub_100016B4C((a2 + 45), &v48, &qword_10092BC30);
  if (v49)
  {
    sub_100012160(&v48, v50);
    sub_10000C888(v50, v51);
    sub_100750404();
    v24 = v23;
    v44 = v22;
    v9 = v25;
    v26 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
    v27 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888(&v26[*(v27 + 64)], *&v26[*(v27 + 64) + 24]);
    sub_100536120();
    sub_100750564();
    v29 = v28;
    (*(v5 + 8))(v7, v4);
    *&v48 = v29;
    v22 = v44;
    sub_100750584();
    v31 = v30;
    sub_10000C620(v50);
    v32 = v9;
  }

  else
  {
    sub_10000C8CC(&v48, &qword_10092BC30);
    v24 = JUMeasurementsZero[1];
    v32 = JUMeasurementsZero[3];
    v31 = 0.0;
  }

  sub_10000C888(a2 + 25, a2[28]);
  sub_100750414();
  v34 = v24 - v32 + v31 + v20 - v45 + v22 + v46 + v33;
  v35 = a2 + *(type metadata accessor for ProductLockupAccessibilityLayout(0) + 64);
  sub_10000C888(v35 + 9, *(v35 + 12));
  sub_100536120();
  sub_100750564();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v34 + v37;
  v40 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10000C888(&v35[*(v40 + 68)], *&v35[*(v40 + 68) + 24]);
  sub_100536120();
  sub_100750564();
  v42 = v41;
  v38(v7, v4);
  return v9 + v39 + v42;
}

double sub_10027083C(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007537E4();

  sub_10000C888((a2 + 32), *(a2 + 56));
  sub_100536120();
  sub_100750564();
  v15 = *(v9 + 8);
  v15(v12, v8);
  sub_10000C888((a2 + 72), *(a2 + 96));
  sub_100536120();
  sub_100750564();
  v15(v12, v8);
  v16 = a3 - *(a2 + 8) - *(a2 + 24) - *(a2 + 112);
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v19[0] = a1;
  sub_10000C518(&unk_1009249B0);
  sub_100743464();
  sub_100270B20(a1, a2, v16 - *&v19[1], a4);
  sub_10000C888((a2 + *(v17 + 96)), *(a2 + *(v17 + 96) + 24));
  sub_100536120();
  sub_100750564();
  v15(v12, v8);
  if (v14 & 1) == 0 && (*(a2 + *(type metadata accessor for ProductLockupLayout(0) + 60)))
  {
    sub_1002710A0(a1, a2, a3, a4);
  }

  return a3;
}

double sub_100270B20(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_1007537E4();

  v44 = type metadata accessor for ProductLockupLayout(0);
  v15 = v44[10];
  sub_100016B4C(a2 + v15, v45, &unk_100928A00);
  if (v46)
  {
    sub_10000C888(v45, v46);
    sub_100750414();
    v17 = v16;
    sub_10000C620(v45);
  }

  else
  {
    sub_10000C8CC(v45, &unk_100928A00);
    v17 = 0.0;
  }

  v18 = sub_100271FD8(a1, a2);
  sub_100016B4C(a2 + v15, v45, &unk_100928A00);
  v19 = v46;
  sub_10000C8CC(v45, &unk_100928A00);
  if (v19)
  {
    v20 = v44;
    if ((v14 & 1) == 0)
    {
      if (*(a2 + v44[15]))
      {
        v21 = type metadata accessor for ProductLockupLayout.Metrics(0);
        sub_10000C888((a2 + *(v21 + 92)), *(a2 + *(v21 + 92) + 24));
        sub_100536120();
        sub_100750564();
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
  sub_10000C888(v24, v24[3]);
  sub_100750414();
  v26 = v25;
  sub_100016B4C(a2 + v15, v45, &unk_100928A00);
  v27 = v46;
  sub_10000C8CC(v45, &unk_100928A00);
  if (v27)
  {
    v28 = type metadata accessor for ProductLockupLayout.Metrics(0);
    sub_10000C888((a2 + *(v28 + 80)), *(a2 + *(v28 + 80) + 24));
    sub_100536120();
    sub_100750564();
    (*(v9 + 8))(v12, v8);
  }

  v29 = a2;
  v30 = v8;
  v41 = v29;
  v42 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v31 = v29 + *(v42 + 76);
  v32 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  sub_10000C888((v31 + *(v32 + 28)), *(v31 + *(v32 + 28) + 24));
  sub_100536120();
  sub_100750564();
  v33 = *(v9 + 8);
  v33(v12, v30);
  sub_10000C888((v31 + *(v32 + 24)), *(v31 + *(v32 + 24) + 24));
  sub_100536120();
  sub_100750564();
  v33(v12, v30);
  v34 = v41;
  sub_10000C888((v41 + v44[12]), *(v41 + v44[12] + 24));
  sub_100750414();
  v36 = v35;
  sub_10000C888(v24, v24[3]);
  if (sub_1007503A4())
  {
    v26 = v36;
  }

  sub_10000C888((v34 + *(v42 + 72)), *(v34 + *(v42 + 72) + 24));
  sub_100536120();
  sub_100750564();
  v38 = v37;
  v33(v12, v30);
  if (v18 < v43 - v38 - v26)
  {
    v18 = v43 - v38 - v26;
  }

  return sub_1002710A0(a1, v34, a3, a4) + v18;
}

double sub_1002710A0(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_100754724();
  v41 = *(v8 - 8);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v42[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = sub_1007537E4();

  v14 = type metadata accessor for ProductLockupLayout(0);
  sub_10000C888((a2 + v14[11]), *(a2 + v14[11] + 24));
  sub_100750414();
  v16 = v15;
  v17 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000C888((a2 + v17[18]), *(a2 + v17[18] + 24));
  sub_100536120();
  v18 = v8;
  v19 = v41;
  sub_100750564();
  v21 = v20;
  v22 = *(v19 + 8);
  v22(v11, v18);
  if ((v13 & 1) != 0 || *(a2 + v14[15]) == 1)
  {
    v23 = a2 + v17[19];
    v24 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000C888((v23 + *(v24 + 28)), *(v23 + *(v24 + 28) + 24));
    sub_100536120();
    sub_100750564();
    v26 = v25;
    v22(v11, v18);
    sub_1002714DC(a1, a2, a3, a4, a3 - (v16 + v26));
    v28 = v27;
    v29 = sub_100271D5C(a1, a2);
    if (v28 > v29)
    {
      v29 = v28;
    }
  }

  else
  {
    v30 = v14[10];
    sub_100016B4C(a2 + v30, v42, &unk_100928A00);
    if (v43)
    {
      sub_10000C888(v42, v43);
      sub_100750414();
      v32 = v31;
      sub_10000C620(v42);
    }

    else
    {
      sub_10000C8CC(v42, &unk_100928A00);
      v32 = 0.0;
    }

    sub_100016B4C(a2 + v30, v42, &unk_100928A00);
    v33 = v43;
    sub_10000C8CC(v42, &unk_100928A00);
    if (v33)
    {
      sub_10000C888((a2 + v17[20]), *(a2 + v17[20] + 24));
      sub_100536120();
      sub_100750564();
      v35 = v34;
      v22(v11, v18);
    }

    else
    {
      v35 = 0.0;
    }

    v36 = a2 + v17[19];
    v37 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
    sub_10000C888((v36 + *(v37 + 28)), *(v36 + *(v37 + 28) + 24));
    sub_100536120();
    sub_100750564();
    v39 = v38;
    v22(v11, v18);
    sub_1002714DC(a1, a2, a3, a4, a3 - (v35 + v32 + v16 + v39));
  }

  return v21 + 0.0 + v29;
}

void sub_1002714DC(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = sub_10074CD14();
  v82 = *(v8 - 8);
  v83 = v8;
  __chkstk_darwin(v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v77 = &v71 - v12;
  v13 = sub_100754724();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v78 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100740E74();
  v80 = *(v16 - 8);
  v81 = v16;
  __chkstk_darwin(v16);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ProductLockupLayout(0);
  v20 = (a2 + v19[11]);
  sub_10000C888(v20, v20[3]);
  sub_100750414();
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
    sub_10000C518(&unk_100923C20);
    v71 = v22;
    sub_100743464();
    v23 = v87;
    v72 = v19;
    v24 = v19[15];
    v73 = a2;
    v25 = *(a2 + v24);
    sub_10000C888(v20, v20[3]);
    if (sub_1007503A4())
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
      if (Width > v40 || (sub_100740E64(), v84[0] = v76, v84[1] = v28, sub_1000D5C0C(), sub_1007542C4(), v42 = v41, v80[1](v18, v81), (v42)) && (!v26 || (v43 = [a1 traitCollection], v44 = sub_1007537E4(), v43, (v44)))
      {
        v45 = sub_1001DE490();
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
          v51 = sub_10074F3F4();
          v85 = v51;
          v86 = sub_100274DD0(&qword_10092AC70, &type metadata accessor for Feature);
          v52 = sub_10000D134(v84);
          (*(*(v51 - 8) + 104))(v52, v81, v51);
          v53 = v39;

          v54 = v39;
          sub_10074FC74();
          sub_10000C620(v84);
          a1 = v50;
          sub_10074CD04();
          sub_100274DD0(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
          v55 = v83;
          sub_100750404();
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

        v64 = sub_10074F3F4();
        v85 = v64;
        v86 = sub_100274DD0(&qword_10092AC70, &type metadata accessor for Feature);
        v65 = sub_10000D134(v84);
        (*(*(v64 - 8) + 104))(v65, v81, v64);
        v66 = v39;
        sub_10074FC74();
        sub_10000C620(v84);
        v67 = v77;
        sub_10074CD04();
        sub_100274DD0(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
        v68 = v83;
        sub_100750404();
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
        sub_10000C888((v61 + v62[12]), *(v61 + v62[12] + 24));
        sub_100750404();
        sub_10000C888(v71, v71[3]);
        v63 = v78;
        sub_100536120();
        sub_100750564();
        (*(v60 + 8))(v63, v59);
      }
    }
  }
}

double sub_100271D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProductLockupLayout(0);
  sub_100016B4C(a2 + *(v7 + 52), &v22, &qword_10092BC30);
  if (!v23)
  {
    sub_10000C8CC(&v22, &qword_10092BC30);
    return 0.0;
  }

  sub_100012160(&v22, v24);
  sub_100016B4C(a2 + *(v7 + 56), &v20, &qword_10092BC30);
  if (!v21)
  {
    sub_10000C8CC(&v20, &qword_10092BC30);
    sub_10000C620(v24);
    return 0.0;
  }

  sub_100012160(&v20, &v22);
  sub_10000C888(v24, v24[3]);
  sub_100750404();
  v9 = v8;
  v11 = v10;
  sub_10000C888(&v22, v23);
  sub_100750404();
  v13 = v12;
  v14 = type metadata accessor for ProductLockupLayout.Metrics(0);
  sub_10000C888((a2 + *(v14 + 84)), *(a2 + *(v14 + 84) + 24));
  sub_100536120();
  sub_100750564();
  v16 = v15;
  (*(v4 + 8))(v6, v3);
  v17 = v13 + v9 - v11 + v16;
  sub_10000C620(&v22);
  sub_10000C620(v24);
  return v17;
}

double sub_100271FD8(void *a1, uint64_t a2)
{
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v54 = sub_1007537E4();

  v10 = type metadata accessor for ProductLockupLayout.Metrics(0);
  *&v55 = a1;
  v11 = sub_10000C518(&unk_1009249B0);
  sub_100743464();
  v12 = *v58;
  v13 = v10;
  *&v55 = a1;
  v53 = v11;
  sub_100743464();
  v14 = *v58;
  v15 = type metadata accessor for ProductLockupLayout(0);
  v16 = v15[10];
  sub_100016B4C(a2 + v16, v58, &unk_100928A00);
  if (v59)
  {
    sub_10000C888(v58, v59);
    sub_100750414();
    sub_10000C620(v58);
  }

  else
  {
    sub_10000C8CC(v58, &unk_100928A00);
  }

  sub_100016B4C(a2 + v16, v58, &unk_100928A00);
  v17 = v59;
  sub_10000C8CC(v58, &unk_100928A00);
  if (v17)
  {
    sub_10000C888((a2 + *(v13 + 80)), *(a2 + *(v13 + 80) + 24));
    sub_100536120();
    sub_100750564();
    (*(v5 + 8))(v8, v4);
  }

  v18 = (a2 + v15[6]);
  sub_10000C888(v18, v18[3]);
  sub_100750404();
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

  sub_10000C888(v18, v18[3]);
  sub_100750844();
  v29 = v23 - v26 + v27 + v28;
  sub_10000C824(v18, v58);
  *&v55 = a1;
  sub_10000C518(&unk_10092BC10);
  sub_100743464();
  v30 = v15[9];
  sub_100016B4C(a2 + v30, &v55, &qword_10092BC30);
  sub_10000C8CC(&v55, &qword_10092BC30);
  sub_10000C888(v58, v59);
  v60.var0 = v21;
  v60.var1 = v23;
  v60.var2 = v24;
  v60.var3 = v26;
  sub_100750874(v60);
  sub_10000C620(v58);
  v31 = (a2 + v15[8]);
  sub_10000C888(v31, v31[3]);
  sub_100750834();
  v32 = (a2 + v15[7]);
  sub_10000C888(v32, v32[3]);
  sub_100750834();
  sub_10000C888(v31, v31[3]);
  sub_100750404();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_10000C888(v32, v32[3]);
  sub_100750404();
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
  sub_100016B4C(a2 + v30, &v55, &qword_10092BC30);
  if (v56)
  {
    sub_100012160(&v55, v58);
    v57 = a1;
    sub_100743464();
    v47 = *&v55;
    sub_10000C888(v58, v59);
    sub_100750404();
    v49 = v48;
    v46 = v46 + v47 - v50 + v51 - v48;
    sub_10000C620(v58);
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

    sub_10000C8CC(&v55, &qword_10092BC30);
  }

  return v46 + v49;
}

void sub_1002725B8(void *a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  if (*(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_10091FEA0 != -1)
    {
      swift_once();
    }

    v7 = sub_100750534();
    v8 = sub_10000D0FC(v7, qword_10097CBC0);
    v9 = *(v7 - 8);
    (*(v9 + 16))(v6, v8, v7);
    (*(v9 + 56))(v6, 0, 1, v7);
    sub_100745BA4();
    v10 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_10091FE70 != -1)
    {
      swift_once();
    }

    v11 = sub_10000C518(&unk_100923C20);
    sub_10000D0FC(v11, qword_10097CB50);
    v23 = a1;
    sub_100743464();
    v12 = v24;
    [v10 setFont:v24];
  }

  else
  {
    if (qword_10091FE98 != -1)
    {
      swift_once();
    }

    v13 = sub_10000C518(&qword_100923C40);
    sub_10000D0FC(v13, qword_10097CBA8);
    v24 = a1;
    sub_100743464();
    v14 = sub_100750534();
    v15 = *(*(v14 - 8) + 56);
    v15(v6, 0, 1, v14);
    sub_100745BA4();
    if (qword_10091FEA8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v13, qword_10097CBD8);
    v24 = a1;
    sub_100743464();
    v15(v6, 0, 1, v14);
    sub_100745BA4();
  }

  if (qword_10091FEA8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v16, qword_10097CBD8);
  v24 = a1;
  sub_100743464();
  v17 = sub_100750534();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 0, 1, v17);
  sub_100745BA4();
  if (qword_10091FEC0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v16, qword_10097CC20);
  v24 = a1;
  sub_100743464();
  v18(v6, 0, 1, v17);
  sub_100745BA4();
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v20 = *(a2 + v19);
  if (v20)
  {
    v21 = qword_10091FEB8;
    v22 = v20;
    if (v21 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v16, qword_10097CC08);
    v23 = a1;
    sub_100743464();
    v18(v6, 0, 1, v17);
    sub_100745BA4();
  }
}

void sub_100272B10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel);
  if (*(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber) == 1)
  {
    if (qword_10091FFD0 != -1)
    {
      swift_once();
    }

    v5 = sub_10000C518(&unk_10092BC10);
    v6 = qword_10097CF90;
  }

  else
  {
    if (qword_10091FFC8 != -1)
    {
      swift_once();
    }

    v5 = sub_10000C518(&unk_10092BC10);
    v6 = qword_10097CF78;
  }

  sub_10000D0FC(v5, v6);
  sub_100743464();
  [v4 setNumberOfLines:v18];
  v7 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel);
  if (qword_10091FFF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000C518(&unk_10092BC10);
  sub_10000D0FC(v8, qword_10097D008);
  sub_100743464();
  [v7 setNumberOfLines:v18];
  v9 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel);
  if (qword_10091FFD8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v8, qword_10097CFA8);
  sub_100743464();
  [v9 setNumberOfLines:v18];
  v10 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
  sub_100743464();
  [v10 setNumberOfLines:v18];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel;
  swift_beginAccess();
  v12 = *(a2 + v11);
  if (v12)
  {
    v13 = qword_10091FFE0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v8, qword_10097CFC0);
    sub_100743464();
    [v14 setNumberOfLines:a1];
  }

  v15 = *(a2 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel);
  if (v15)
  {
    v16 = qword_10091FFC0;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v8, qword_10097CF60);
    sub_100743464();
    [v17 setNumberOfLines:a1];
  }
}

void sub_100272EB0()
{
  v1 = v0;
  v2 = sub_1007441C4();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100750B04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - v13;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bottomSafeAreaDistance) = 0;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v17 = [objc_allocWithZone(UIView) init];
  v18 = [objc_opt_self() systemBackgroundColor];
  [v17 setBackgroundColor:v18];

  *(v1 + v16) = v17;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_uberView) = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_titleLabel;
  sub_100745C84();
  *(v1 + v19) = sub_100745C64();
  v20 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel;
  *(v1 + v22) = sub_100745C64();
  v23 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel;
  *(v1 + v23) = sub_100745C64();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_tertiaryTitleLabel) = 0;
  v44 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_wordmarkView;
  v24 = sub_10074F7B4();
  (*(*(v24 - 8) + 56))(v45, 1, 1, v24);
  *v7 = UIFontTextStyleFootnote;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v50 = v4;
  v51 = &protocol witness table for FontSource;
  v25 = sub_10000D134(v49);
  (*(v5 + 16))(v25, v7, v4);
  v26 = UIFontTextStyleFootnote;
  sub_100750B14();
  (*(v5 + 8))(v7, v4);
  (*(v47 + 104))(v46, enum case for WordmarkView.Alignment.center(_:), v48);
  v50 = v8;
  v51 = &protocol witness table for StaticDimension;
  v27 = sub_10000D134(v49);
  (*(v9 + 16))(v27, v11, v8);
  v28 = objc_allocWithZone(sub_1007441E4());
  v29 = sub_1007441B4();
  (*(v9 + 8))(v11, v8);
  *(v1 + v44) = v29;
  v30 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton;
  v31 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v30) = sub_100154454(0);
  v32 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *(v1 + v32) = sub_100745C64();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_disclosureArrow) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_bannerViewHeight) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_secondaryBannerViewHeight) = 0;
  v33 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainer;
  *(v1 + v33) = [objc_allocWithZone(UIView) init];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurEffect;
  *(v1 + v34) = [objc_opt_self() effectWithStyle:7];
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayEffectView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_blurGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_backgroundContentContainerMaskView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_keylineView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_shadowView) = 0;
  v35 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconSize);
  *v35 = 0;
  v35[1] = 0;
  v36 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView;
  sub_1007433C4();
  *(v1 + v36) = sub_1007431D4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer) = 0;
  v37 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleText);
  *v37 = 0;
  v37[1] = 0;
  v38 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleText);
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_theme;
  v40 = enum case for ProductPageTheme.infer(_:);
  v41 = sub_100746034();
  (*(*(v41 - 8) + 104))(v1 + v39, v40, v41);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferTitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible) = 0;
  sub_100747DE4();
  v42 = v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_networkObservation;
  *v42 = 0u;
  *(v42 + 16) = 0u;
  *(v42 + 32) = 0;
  v43 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerTapHandler);
  *v43 = 0;
  v43[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount) = 0;
  sub_100754644();
  __break(1u);
}

double sub_100273640(void *a1, void *a2, double a3)
{
  v6 = sub_100754724();
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
  v13 = sub_1007537E4();

  sub_100016B4C((a2 + 30), v100, &unk_100928A00);
  if (v101)
  {
    sub_10000C888(v100, v101);
    sub_100750414();
    v15 = v14;
    sub_10000C620(v100);
  }

  else
  {
    sub_10000C8CC(v100, &unk_100928A00);
    v15 = 0.0;
  }

  sub_100016B4C((a2 + 30), v100, &unk_100928A00);
  v16 = v101;
  sub_10000C8CC(v100, &unk_100928A00);
  v91 = a2;
  v87 = v6;
  if (v16)
  {
    v17 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
    sub_10000C888((v8 + *(v17 + 48)), *(v8 + *(v17 + 48) + 24));
    v18 = v89;
    sub_100536120();
    sub_100750564();
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
  sub_10000C888(v91 + 5, v91[8]);
  sub_100750404();
  v25 = v24;
  v27 = v26;
  v28 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  *&v98 = a1;
  sub_10000C518(&unk_1009249B0);
  sub_100743464();
  *&v98 = v100[0];
  v83 = v25;
  v81 = v27;
  sub_100750584();
  v80 = v29;
  sub_10000C888(v23 + 5, v23[8]);
  sub_100750844();
  v79 = v30;
  v31 = v23[13];
  v78[0] = (v23 + 10);
  sub_10000C888(v23 + 10, v31);
  sub_100750404();
  v33 = v32;
  v35 = v34;
  v36 = *(v28 + 36);
  v37 = v28;
  *&v98 = a1;
  v38 = v21;
  v78[1] = v36;
  sub_100743464();
  *&v98 = v100[0];
  sub_100750584();
  v39 = v11;
  v41 = v33 - v35 + v40;
  v42 = (v23 + 15);
  sub_10000C888(v23 + 15, v23[18]);
  v84 = v39;
  sub_100750404();
  v44 = v43;
  v46 = v45;
  v82 = v37;
  *&v98 = a1;
  sub_100743464();
  *&v98 = v100[0];
  sub_100750584();
  v48 = v44 - v46 + v47;
  if (v48 >= v41)
  {
    sub_10000C824(v42, &v98);
    v42 = v78[0];
  }

  else
  {
    sub_10000C824(v78[0], &v98);
  }

  sub_10000C824(v42, &v96);
  v95[0] = a1;
  sub_100743464();
  v49 = v100[0];
  v95[0] = a1;
  sub_100743464();
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
  sub_100012160(&v98, v100);
  sub_10000C824(v95, v102);
  sub_100012160(&v96, &v103);
  sub_100012160(&v92, &v104);
  sub_10000C620(v95);
  sub_10000C888(v100, v101);
  sub_100750404();
  v53 = v52;
  v55 = v54;
  sub_10000C888(v102, v102[3]);
  sub_100750584();
  v57 = v56;
  v58 = v91;
  sub_100016B4C((v91 + 20), &v96, &qword_10092BC30);
  v59 = v87;
  if (v97)
  {
    sub_100012160(&v96, &v98);
    sub_10000C888(&v98, v99);
    sub_100750404();
    v61 = v60;
    v63 = v62;
    v64 = v82;
    v95[0] = a1;
    sub_100743464();
    v95[0] = v96;
    sub_100750584();
    v66 = v61 - v63 + v65;
    sub_10000C620(&v98);
    v67 = v90;
  }

  else
  {
    sub_10000C8CC(&v96, &qword_10092BC30);
    v66 = 0.0;
    v67 = v90;
    v64 = v82;
  }

  v68 = v66 + v53 - v55 + v57 + v83 - v81 + v80 + v79 + v21[15];
  sub_10000C888((v21 + *(v64 + 52)), *(v21 + *(v64 + 52) + 24));
  v69 = v89;
  sub_100536120();
  sub_100750564();
  v71 = v70;
  v72 = *(v67 + 8);
  v72(v69, v59);
  v73 = v68 + v71 + sub_1002702B4(a1, v58);
  sub_10000C888(v38 + 4, *(v38 + 7));
  sub_100536120();
  sub_100750564();
  v75 = v74;
  v72(v69, v59);
  v76 = v85 + v86 + v73 + v75;
  sub_10000C8CC(v100, &unk_10092F7A0);
  return v76;
}

id sub_100273EAC()
{
  v1 = sub_1007521E4();
  __chkstk_darwin(v1);
  v2 = sub_100752244();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_developerLabel);
  result = [v7 isHidden];
  if (result)
  {
    if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber) & 1) == 0)
    {
      sub_100016C60(0, &qword_100926D00);
      v9 = sub_100753774();
      sub_100752234();
      v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_taglineLabel);
      v11 = swift_allocObject();
      *(v11 + 16) = v7;
      *(v11 + 24) = v10;
      aBlock[4] = sub_100274EB0;
      aBlock[5] = v11;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_10086E658;
      _Block_copy(aBlock);
      v14[1] = _swiftEmptyArrayStorage;
      sub_100274DD0(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      v12 = v7;
      v13 = v10;
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      sub_1007543A4();
      sub_100752284();
      swift_allocObject();
      sub_100752264();

      sub_100753744();

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

void sub_100274188(char a1, void *a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v53 = a2;
  v11 = sub_100742284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v17 = &v51[-v16];
  v18 = sub_10074ED34();
  v19 = (*(*(v18 - 8) + 48))(a5, 1, v18);
  v54 = v11;
  v55 = v17;
  if (v19 == 1 || !*&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_appStateMachine])
  {
    (*(v12 + 104))(v17, enum case for LegacyAppState.unknown(_:), v11);
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = v54;
    v17 = v55;
    sub_1007423D4();
    swift_unknownObjectRelease();
  }

  v20 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerButton];
  [*&v20[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_imageView] setContentMode:1];
  if (a4)
  {
    v21 = v20;
  }

  else
  {
    v20 = 0;
  }

  v22 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
  if (v22 && v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
  {
    goto LABEL_16;
  }

  (*(v12 + 16))(v14, v17, v11);
  v22 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_offerSubtitleLabel];
  v23 = [v22 text];
  if (v23)
  {
    v24 = v23;
    sub_100753094();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = sub_100742274();
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
  sub_10000C518(&qword_10092D9D0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007A5620;
  v30 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_iconView];
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

  v41 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount];
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
    *&v6[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = v43;
    v53 = objc_opt_self();
    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = swift_allocObject();
    *(v46 + 16) = v37;
    *(v46 + 24) = v29;
    *(v46 + 32) = v45;
    v60 = sub_10027484C;
    v61 = v46;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_1000CF7B0;
    v59 = &unk_10086E518;
    v47 = _Block_copy(&aBlock);

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v52;
    *(v49 + 32) = v29;
    v60 = sub_100274898;
    v61 = v49;
    aBlock = _NSConcreteStackBlock;
    v57 = 1107296256;
    v58 = sub_100144DD8;
    v59 = &unk_10086E568;
    v50 = _Block_copy(&aBlock);

    [v53 animateWithDuration:4 delay:v47 options:v50 animations:v44 completion:0.0];
    _Block_release(v50);
    _Block_release(v47);
    goto LABEL_31;
  }

  __break(1u);
}

uint64_t sub_1002747D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10027480C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100274858()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1002748A8(uint64_t a1, uint64_t a2, int a3, void *a4, char *a5)
{
  LODWORD(v7) = a3;
  v10 = sub_100752AC4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v41 = a4;
    v14 = OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel;
    v15 = *&a5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_downloadProgressLabel];
    if (v15)
    {
      goto LABEL_3;
    }

    v39 = a1;
    sub_100745C84();
    v23 = sub_100745C64();
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

          sub_1002690AC();
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
      v27 = sub_100753FC4();

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
        if (!v24 || (memset(v43, 0, sizeof(v43)), memset(v42, 0, sizeof(v42)), v33 = v24, sub_100752A74(), sub_10000C8CC(v42, &unk_100923520), sub_10000C8CC(v43, &unk_100923520), sub_100753C74(), v33, (*(v11 + 8))(v13, v10), (v34 = *&a5[v14]) == 0) || ([v34 setHidden:v7 & 1], (v15 = *&a5[v14]) == 0))
        {
LABEL_28:
          [a5 setNeedsLayout];
          goto LABEL_29;
        }

LABEL_3:
        v16 = v15;
        v17 = sub_100753064();
        [v16 setText:v17];

        v18 = *&a5[v14];
        if (v18)
        {
          v19 = a5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasExpandedOffer];
          v20 = v18;
          v21 = [v41 traitCollection];
          if ((a5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_hasInlineUber] & 1) != 0 || (v19 & 1) != 0 && (sub_1007537E4() & 1) == 0)
          {

            v22 = 1;
          }

          else
          {
            v28 = sub_1007537F4();

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
  v35 = a5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible];
  a5[OBJC_IVAR____TtC22SubscribePageExtension31ProductLockupCollectionViewCell_isDownloadProgressVisible] = v7 & 1;
  sub_100269DF4(v35);
}

uint64_t sub_100274C58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100274CA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100274D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100274D70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100274DD0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100274E20(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092F7C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100274ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v28 = a2;
  v29 = sub_1007457B4();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15(v11, v8);
  v16 = v27;
  sub_1002751D0(v30);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  (*(v16 + 8))(v7, v28, a3, v16, v18, v20, v22, v24);
  return (*(v5 + 8))(v7, v29);
}

uint64_t sub_100275178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB44();
  *a1 = result;
  return result;
}

uint64_t sub_1002751A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB44();
  *a1 = result;
  return result;
}

void sub_1002751D0(uint64_t a1)
{
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (sub_100743A34() & 1) != 0)
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v6 = sub_100750B04();
    sub_10000D0FC(v6, qword_100982098);
    sub_100747BA4();
    sub_1007502D4();
    sub_100750564();
    swift_unknownObjectRelease();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100275364()
{
  v0 = sub_10000C518(&qword_10092F7E0);
  __chkstk_darwin(v0);
  v1 = sub_10000C518(&unk_10092B050);
  sub_100039C50(v1, qword_10092F7C8);
  sub_10000D0FC(v1, qword_10092F7C8);
  sub_1002754A8();
  sub_100750624();
  sub_1002754F4();
  return sub_1007512E4();
}

void sub_100275444(void *a1@<X8>)
{
  v2 = objc_allocWithZone(LPLinkView);
  sub_100741204(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4];

  *a1 = v6;
}

unint64_t sub_1002754A8()
{
  result = qword_10092F7E8;
  if (!qword_10092F7E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092F7E8);
  }

  return result;
}

unint64_t sub_1002754F4()
{
  result = qword_10092F7F0;
  if (!qword_10092F7F0)
  {
    sub_10000C724(&qword_10092F7E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092F7F0);
  }

  return result;
}

UIColor sub_10027556C()
{
  sub_100016C60(0, &qword_100923500);
  v0 = [objc_opt_self() whiteColor];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v2.super.isa = v0;
  result.super.isa = sub_100753EC4(v2, v1).super.isa;
  qword_10092F800 = result.super.isa;
  return result;
}

char *sub_10027562C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v6 - 8);
  v60 = &v51[-v7];
  v8 = sub_10074F314();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v54 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100741C54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_smallCornerRadius] = 0x4010000000000000;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkContainingView;
  *&v3[v14] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
  v16 = sub_1007433C4();
  *&v3[v15] = sub_1007431F4();
  (*(v11 + 104))(&v3[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme], enum case for InAppPurchaseTheme.infer(_:), v10);
  v57 = a2;
  v3[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_iconType] = a2;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_metrics;
  v18 = sub_100741E54();
  v58 = *(v18 - 8);
  v59 = v18;
  (*(v58 + 16))(&v3[v17], a1);
  v61 = a1;
  sub_100741E34();
  v20 = v19;
  v21 = type metadata accessor for PlusView();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_plusColor] = 0;
  *&v22[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_lineThickness] = v20;
  v63.receiver = v22;
  v63.super_class = v21;
  v23 = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 clearColor];
  [v25 setBackgroundColor:v26];

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_plusView] = v25;
  v27 = [objc_allocWithZone(v16) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView] = v27;
  if (v52 == 2)
  {
    v28 = [objc_allocWithZone(type metadata accessor for InAppBlendedBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v28 setClipsToBounds:1];
  }

  else
  {
    v28 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  }

  *&v3[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_backgroundView] = v28;
  v62.receiver = v3;
  v62.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v34 = v61;
  if (sub_100741DF4())
  {
    v35 = 8.0;
  }

  else
  {
    v35 = 4.0;
  }

  ObjectType = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_backgroundView;
  [*&v33[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_backgroundView] _setCornerRadius:v35];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkContainingView;
  [*&v33[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkContainingView] _setCornerRadius:v35];
  [*&v33[v36] setClipsToBounds:1];
  v37 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v33[v37], v10);
  sub_100275D50(v13);
  (*(v11 + 8))(v13, v10);
  v38 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
  v39 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView];
  (*(v55 + 104))(v54, enum case for Artwork.Style.iap(_:), v56);
  v40 = v39;
  sub_100743364();

  v41 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView;
  [*&v33[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView] setHidden:v57 != 1];
  v42 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_plusView;
  v43 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_plusView];
  [v43 setHidden:(sub_100741E24() & 1) == 0];

  v44 = qword_100920468;
  v45 = *&v33[v41];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10074F0C4();
  v47 = sub_10000D0FC(v46, qword_10097E0F8);
  v48 = *(v46 - 8);
  v49 = v60;
  (*(v48 + 16))(v60, v47, v46);
  (*(v48 + 56))(v49, 0, 1, v46);
  sub_100743374();

  [v33 addSubview:*(ObjectType + v33)];
  [v33 addSubview:*&v33[v36]];
  [*&v33[v36] addSubview:*&v33[v38]];
  [v33 insertSubview:*&v33[v42] aboveSubview:*&v33[v36]];
  [v33 addSubview:*&v33[v41]];

  (*(v58 + 8))(v34, v59);
  return v33;
}

void sub_100275D50(uint64_t a1)
{
  v3 = sub_100741C54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for InAppPurchaseTheme.infer(_:) || v7 == enum case for InAppPurchaseTheme.light(_:) || v7 == enum case for InAppPurchaseTheme.dark(_:))
  {
    if (qword_1009206D0 != -1)
    {
      swift_once();
    }

    v10 = qword_10092F7F8;
    goto LABEL_16;
  }

  if (v7 == enum case for InAppPurchaseTheme.spotlight(_:))
  {
    if (qword_1009206D8 != -1)
    {
      swift_once();
    }

    v10 = qword_10092F800;
LABEL_16:
    v11 = v10;
    goto LABEL_20;
  }

  if (qword_1009206D0 != -1)
  {
    swift_once();
  }

  v12 = *(v4 + 8);
  v11 = qword_10092F7F8;
  v12(v6, v3);
LABEL_20:
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_iconType] != 2)
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_backgroundView] setBackgroundColor:v11];
  }

  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_plusView];
  if (qword_1009206E0 != -1)
  {
    swift_once();
  }

  v14 = qword_10092F808;
  v15 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_plusColor];
  *&v13[OBJC_IVAR____TtC22SubscribePageExtension8PlusView_plusColor] = qword_10092F808;
  v16 = v14;

  [v13 setNeedsDisplay];
  [v1 setNeedsDisplay];
}

uint64_t sub_10027603C()
{
  ObjectType = swift_getObjectType();
  v57 = ObjectType;
  v2 = sub_100743584();
  v51 = *(v2 - 8);
  v52 = v2;
  __chkstk_darwin(v2);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F314();
  v48 = *(v4 - 8);
  v49 = v4;
  __chkstk_darwin(v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v45 = &v44 - v7;
  __chkstk_darwin(v8);
  v47 = &v44 - v9;
  v10 = sub_100750354();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v54 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100741E54();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v15;
  v16 = sub_100741E74();
  v58 = *(v16 - 8);
  v59 = v16;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = (&v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78.receiver = v0;
  v78.super_class = ObjectType;
  objc_msgSendSuper2(&v78, "layoutSubviews", v17);
  (*(v13 + 16))(v15, &v0[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_metrics], v12);
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView];
  v21 = sub_1007433C4();
  v76 = v21;
  v77 = &protocol witness table for UIView;
  v75 = v20;
  v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkContainingView];
  v73 = sub_100016C60(0, &qword_100922300);
  v74 = &protocol witness table for UIView;
  v71 = &protocol witness table for UIView;
  v72 = v22;
  v23 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_backgroundView];
  v70 = v73;
  v69 = v23;
  v24 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_plusView];
  v67 = type metadata accessor for PlusView();
  v68 = &protocol witness table for UIView;
  v65 = &protocol witness table for UIView;
  v66 = v24;
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_tileIconArtworkView];
  v64 = v21;
  v63 = v25;
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v24;
  v30 = v25;
  sub_100741E64();
  sub_1007477B4();
  v31 = v54;
  v53 = v0;
  v57 = v19;
  sub_100741DA4();
  (v55)[1](v31, v56);
  if (([v30 isHidden] & 1) == 0)
  {
    sub_100743314();
    v32 = v45;
    sub_100743354();
    v55 = v27;
    v56 = v29;
    v34 = v48;
    v33 = v49;
    v35 = v46;
    (*(v48 + 104))(v46, enum case for Artwork.Style.roundedRect(_:), v49);
    v36 = v28;
    v37 = v47;
    sub_10074F2D4();
    v38 = *(v34 + 8);
    v38(v35, v33);
    v38(v32, v33);
    sub_10074F2E4();
    v38(v37, v33);
    v40 = v50;
    v39 = v51;
    v41 = v52;
    (*(v51 + 104))(v50, enum case for CornerStyle.arc(_:), v52);
    sub_1007433B4();
    v42 = v40;
    v29 = v56;
    (*(v39 + 8))(v42, v41);
    sub_100276610(v30, v36);
    sub_100276610(v30, v55);
  }

  [v29 setNeedsDisplay];
  return (*(v58 + 8))(v57, v59);
}

void sub_100276610(void *a1, id a2)
{
  [a2 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 bezierPathWithRect:{v6, v8, v10, v12}];
  [a1 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [a2 frame];
  v57.origin.x = v23;
  v57.origin.y = v24;
  v57.size.width = v25;
  v57.size.height = v26;
  v53.origin.x = v16;
  v53.origin.y = v18;
  v53.size.width = v20;
  v53.size.height = v22;
  v54 = CGRectIntersection(v53, v57);
  x = v54.origin.x;
  y = v54.origin.y;
  width = v54.size.width;
  height = v54.size.height;
  sub_100741E44();
  v32 = -v31;
  sub_100741E44();
  v34 = -v33;
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectInset(v55, v32, v34);
  [v2 convertRect:a2 toCoordinateSpace:{v56.origin.x, v56.origin.y, v56.size.width, v56.size.height}];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_100746E94();
  v44 = v43;
  sub_100746E94();
  v46 = [v13 bezierPathWithRoundedRect:2 byRoundingCorners:v36 cornerRadii:{v38, v40, v42, v44, v45}];
  v47 = [v46 bezierPathByReversingPath];

  [v14 appendPath:v47];
  v48 = [objc_allocWithZone(CAShapeLayer) init];
  v49 = [v14 CGPath];
  [v48 setPath:v49];

  v50 = [a2 layer];
  [v50 setMasksToBounds:1];

  v51 = [a2 layer];
  [v51 setMask:v48];
}

void sub_100276968(char *a1)
{
  v2 = v1;
  v4 = sub_100741C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v16[-v9];
  sub_100743334();
  sub_100743344();
  sub_100743334();
  sub_100743344();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  v12 = *(v5 + 16);
  v12(v10, &a1[v11], v4);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
  swift_beginAccess();
  (*(v5 + 24))(&v2[v13], v10, v4);
  swift_endAccess();
  v12(v7, &v2[v13], v4);
  sub_100275D50(v7);
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v10, v4);
  v15 = [a1 backgroundColor];
  [v2 setBackgroundColor:v15];
}

uint64_t type metadata accessor for InAppPurchaseView()
{
  result = qword_10092F868;
  if (!qword_10092F868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100276D04()
{
  result = sub_100741C54();
  if (v1 <= 0x3F)
  {
    result = sub_100741E54();
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

char *sub_100276DFC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v10 - 8);
  v48 = &v45 - v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_topLayer;
  *&v4[v12] = [objc_allocWithZone(CALayer) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_bottomLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_blurView;
  *&v4[v14] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_shadowView] = 0;
  v49.receiver = v4;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_topLayer;
  v17 = *&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_topLayer];
  v18 = objc_opt_self();
  v19 = v15;
  v20 = v17;
  v21 = [v18 whiteColor];
  v22 = [v21 colorWithAlphaComponent:0.5];

  v23 = [v22 CGColor];
  [v20 setBackgroundColor:v23];

  v46 = v16;
  v47 = v15;
  [*&v15[v16] setCompositingFilter:kCAFilterScreenBlendMode];
  v24 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_bottomLayer;
  v25 = *&v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_bottomLayer];
  v26 = [v18 whiteColor];
  v27 = [v26 colorWithAlphaComponent:0.8];

  v28 = [v27 CGColor];
  [v25 setBackgroundColor:v28];

  [*&v19[v24] setCompositingFilter:kCAFilterOverlayBlendMode];
  v29 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_blurView;
  v30 = *&v19[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_blurView];
  sub_10000C518(&unk_1009231A0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1007A7210;
  v32 = objc_opt_self();
  v33 = v30;
  result = [v32 effectWithBlurRadius:50.0];
  if (result)
  {
    *(v31 + 32) = result;
    *(v31 + 40) = [objc_opt_self() colorEffectSaturate:1.4];
    sub_100016C60(0, &qword_10092BE10);
    isa = sub_100753294().super.isa;

    [v33 setBackgroundEffects:isa];

    v36 = v19;
    v37 = [v36 layer];
    [v37 addSublayer:*&v19[v24]];

    v38 = [v36 layer];
    [v38 addSublayer:*&v47[v46]];

    [v36 addSubview:*&v19[v29]];
    v39 = [objc_allocWithZone(sub_100743034()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    if (qword_100920518 != -1)
    {
      swift_once();
    }

    v40 = sub_10074F0C4();
    v41 = sub_10000D0FC(v40, qword_10097E308);
    v42 = *(v40 - 8);
    v43 = v48;
    (*(v42 + 16))(v48, v41, v40);
    (*(v42 + 56))(v43, 0, 1, v40);
    sub_100743014();
    [v36 insertSubview:v39 belowSubview:*&v19[v29]];
    v44 = *&v36[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_shadowView];
    *&v36[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_shadowView] = v39;

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100277388()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_topLayer];
  [v0 bounds];
  [v1 setFrame:?];

  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_bottomLayer];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_blurView];
  [v0 bounds];
  [v3 setFrame:?];

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_shadowView];
  if (v4)
  {
    v5 = v4;
    [v0 bounds];
    [v5 setFrame:?];
  }
}

unint64_t sub_100277588()
{
  result = qword_10092F8C0;
  if (!qword_10092F8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092F8C0);
  }

  return result;
}

void sub_1002775DC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_smallCornerRadius) = 0x4010000000000000;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkContainingView;
  *(v1 + v2) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView;
  sub_1007433C4();
  *(v1 + v3) = sub_1007431F4();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
  v5 = enum case for InAppPurchaseTheme.infer(_:);
  v6 = sub_100741C54();
  (*(*(v6 - 8) + 104))(v1 + v4, v5, v6);
  sub_100754644();
  __break(1u);
}

void sub_1002776F4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_topLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_bottomLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_blurView;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtensionP33_859961E758EAD625F14F631BC1D770E826InAppBlendedBackgroundView_shadowView) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1002777C4()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A6A4();
  sub_100039C50(v4, qword_10097EB20);
  v30 = sub_10000D0FC(v4, qword_10097EB20);
  if (qword_100920720 != -1)
  {
    swift_once();
  }

  v5 = qword_10092F930;
  [v5 size];

  v6 = qword_10092F930;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_1009210B8 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100980F60);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = sub_100750B04();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_10000D134(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  sub_100750B14();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_10000D134(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v46);
  v35(v16, v3, v0);
  sub_100750B14();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v42);
  v21 = v35;
  v35(v20, v3, v0);
  sub_100750B14();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_10000D134(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_10000D134(v39);
  v21(v23, v3, v0);
  sub_100750B14();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return sub_10074A664();
}

uint64_t sub_100277D48()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074A6A4();
  sub_100039C50(v4, qword_10097EB38);
  v24[2] = sub_10000D0FC(v4, qword_10097EB38);
  if (qword_100920720 != -1)
  {
    swift_once();
  }

  v5 = qword_10092F930;
  [v5 size];

  v6 = qword_10092F930;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_1009210B0 != -1)
  {
    swift_once();
  }

  v7 = sub_100750534();
  v8 = sub_10000D0FC(v7, qword_100980F48);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = sub_100750B04();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  sub_100750B14();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_1009210B8 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v7, qword_100980F60);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_10000D134(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v39);
  v30(v16, v3, v0);
  sub_100750B14();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v35);
  v30(v20, v3, v0);
  sub_100750B14();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_10000D134(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v32);
  v30(v22, v3, v0);
  sub_100750B14();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return sub_10074A664();
}

uint64_t sub_1002782FC()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&qword_100923C40);
  sub_100039C50(v7, qword_10092F8D0);
  sub_10000D0FC(v7, qword_10092F8D0);
  if (qword_1009210B8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100980F60);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009210B0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100980F48);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_1002784DC()
{
  v0 = sub_10074A6A4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&unk_10092F9C8);
  sub_100039C50(v7, qword_10097EB50);
  sub_10000D0FC(v7, qword_10097EB50);
  if (qword_1009206E8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_10097EB20);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_1009206F0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_10097EB38);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0);
  return sub_100743484();
}

uint64_t sub_1002786C8()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10092F900);
  sub_10000D0FC(v0, qword_10092F900);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743564();
}

uint64_t sub_100278764@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_1007537F4();

  result = sub_10074A654();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1002787E0()
{
  v0 = sub_100743B04();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_100743AE4();
  result = (*(v1 + 8))(v4, v0);
  qword_10092F930 = v5;
  return result;
}

char *sub_1002788D8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000C518(&qword_10092F9B0);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  v12 = sub_1007469A4();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  sub_100750624();
  sub_10002DDC8(&qword_10092F9B8, &qword_10092F9B0);
  sub_1007512E4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded] = 0;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
  v16 = sub_10000C518(&unk_100933080);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  if (qword_100920720 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIImageView) initWithImage:qword_10092F930];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView] = v17;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel] = v19;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel] = v20;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  sub_100016C60(0, &qword_100923500);
  v23 = sub_100753E04();
  [v22 setBackgroundColor:v23];

  v24 = [v21 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView;
  v26 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView];
  v27 = sub_100753DF4();
  [v26 setTintColor:v27];

  v28 = [v21 contentView];
  [v28 addSubview:*&v21[v25]];

  v29 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel;
  v30 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];
  sub_100745C34();

  [*&v21[v29] setNumberOfLines:1];
  v31 = *&v21[v29];
  v32 = sub_100753DF4();
  [v31 setTextColor:v32];

  v33 = *&v21[v29];
  v34 = sub_100753E04();
  [v33 setBackgroundColor:v34];

  v35 = [v21 contentView];
  [v35 addSubview:*&v21[v29]];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel;
  v37 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel];
  sub_100745C34();

  [*&v21[v36] setNumberOfLines:1];
  v38 = *&v21[v36];
  v39 = sub_100753DD4();
  [v38 setTextColor:v39];

  v40 = *&v21[v36];
  v41 = sub_100753E04();
  [v40 setBackgroundColor:v41];

  v42 = [v21 contentView];
  [v42 addSubview:*&v21[v36]];

  sub_100278E68();
  return v21;
}

void sub_100278E68()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];
  if (qword_100920708 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v2, qword_10092F8E8);
  v3 = v0;
  sub_100743464();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel];
  if (qword_100920710 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v2, qword_10092F900);
  v5 = v3;
  sub_100743464();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_100920718;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v2, qword_10092F918);
    v10 = v5;
    v9 = v5;
    sub_100743464();

    [v8 setTextAlignment:{v11, v10}];
  }
}

uint64_t sub_100279094()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10000C518(&qword_100933090);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "prepareForReuse", v3);
  v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleText];
  *v6 = 0;
  *(v6 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v0 setNeedsLayout];
  v7 = &v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v7 = 0;
  *(v7 + 1) = 0;

  sub_10027A9AC();
  [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v10 = *&v0[v8];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v8] = _swiftEmptyArrayStorage;

    v15 = sub_10000C518(&unk_100933080);
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_10027C710(v5, &v0[v16]);
    swift_endAccess();
    sub_10027AB34();
    return sub_10000C8CC(v5, &qword_100933090);
  }

  result = sub_100754664();
  v11 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_100754574();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [v13 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_100279380()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = sub_100751344();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100751374();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100750354();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_10074A6C4();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10074A6A4();
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = sub_100750534();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v15);
  v18 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  if (qword_1009206F8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v19, qword_10092F8D0);
  v85 = v1;
  v20 = v1;
  sub_100743464();

  v21 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];
  v22 = *(v14 + 16);
  v22(v12, v17, v13);
  v61 = v14;
  v23 = *(v14 + 56);
  v23(v12, 0, 1, v13);
  v54 = v21;
  sub_100745BA4();
  v24 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel];
  v22(v12, v17, v13);
  v23(v12, 0, 1, v13);
  sub_100745BA4();
  v53 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel;
  v25 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel];
  if (v25)
  {
    v22(v12, v17, v13);
    v23(v12, 0, 1, v13);
    v26 = v25;
    sub_100745BA4();
  }

  v59 = v13;
  v60 = v17;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded;
  [v24 setHidden:v20[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded]];
  v28 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView];
  if (v20[v27])
  {
    LOBYTE(v29) = 1;
  }

  else
  {
    v29 = !sub_100279E58();
  }

  v30 = v66;
  v31 = v55;
  [v28 setHidden:v29];
  if (qword_100920700 != -1)
  {
    swift_once();
  }

  v32 = sub_10000C518(&unk_10092F9C8);
  sub_10000D0FC(v32, qword_10097EB50);
  v85 = v20;
  v33 = v72;
  sub_100743464();
  sub_10074A674();
  v34 = [v20 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100753B64();
  sub_10074A684();
  (*(v73 + 16))(v31, v33, v30);
  v35 = sub_100745C84();
  v86 = v35;
  v87 = &protocol witness table for UILabel;
  v36 = v54;
  v84 = &protocol witness table for UILabel;
  v85 = v54;
  v83 = v35;
  v82 = v24;
  swift_beginAccess();
  v37 = v36;
  v38 = v24;

  sub_100158064(v39);

  v40 = *&v20[v53];
  if (v40)
  {
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v79 = 0;
    v78 = 0;
  }

  v77 = v40;
  v80 = v35;
  v81 = v41;
  v42 = sub_100016C60(0, &qword_10092BFC0);
  v76 = &protocol witness table for UIView;
  v75 = v42;
  v74 = v28;
  v43 = v28;
  v44 = v40;
  v45 = v65;
  sub_10074A6B4();
  v46 = v56;
  sub_10074A644();
  (*(v57 + 8))(v46, v58);
  (*(v62 + 104))(v64, enum case for Separator.Position.bottom(_:), v63);
  v86 = sub_1007507D4();
  v87 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v85);
  sub_1007507C4();
  v47 = v69;
  sub_100751354();
  v48 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v49 = *&v20[v48];
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    sub_100751324();
    [v50 setFrame:?];

    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    (*(v61 + 8))(v60, v59);
    return swift_endAccess();
  }
}

BOOL sub_100279E58()
{
  ObjectType = swift_getObjectType();
  v3 = sub_100750534();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074A6A4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_100933080);
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v71 = v10;
  v72 = v8;
  v74 = v4;
  v75 = v14;
  v73 = v12;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems;
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems];
  if (v21 >> 62)
  {
    v69 = v16;
    v61 = v17;
    v62 = v19;
    v63 = sub_100754664();
    v19 = v62;
    v17 = v61;
    v22 = v63;
    v16 = v69;
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v3;
  if (v22 != 1)
  {
    return 1;
  }

  v24 = v11;
  v25 = *&v0[v20];
  if (v25 >> 62)
  {
    v69 = v16;
    v64 = v17;
    v65 = v19;
    v66 = sub_100754664();
    v19 = v65;
    v17 = v64;
    v67 = v66;
    v16 = v69;
    v26 = v6;
    if (!v67)
    {
      return 1;
    }
  }

  else
  {
    v26 = v6;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }
  }

  v69 = v16;
  v70 = v0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v19;
    v28 = v17;

    sub_100754574();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v27 = v19;
    v28 = v17;
  }

  v29 = sub_100744BB4();
  if (v29 >> 62)
  {
    v30 = sub_100754664();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v70;

  if (v30)
  {

    return 1;
  }

  v33 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v28 + 48))(&v31[v33], 1, v69))
  {
    v49 = &v31[v33];
    v50 = v69;
    (*(v28 + 16))(v27, v49, v69);
    sub_1007455C4();
    (*(v28 + 8))(v27, v50);
    sub_10074ECB4();
    v31 = v70;
    v52 = v51;

    if (v52)
    {

      return 1;
    }
  }

  v34 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleLabel];
  sub_1007477B4();
  [v34 sizeThatFits:{v35, v36}];
  v1 = v37;
  v2 = v38;
  if (qword_100920700 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v39 = sub_10000C518(&unk_10092F9C8);
  sub_10000D0FC(v39, qword_10097EB50);
  v77[0] = v70;
  v40 = v70;
  sub_100743464();

  if (sub_10074A654())
  {
    sub_1007477B4();
    Width = CGRectGetWidth(v80);
    sub_1007477B4();
    Height = CGRectGetHeight(v81) - v2;
  }

  else
  {
    sub_10074A694();
    sub_10000C888(v77, v78);
    v43 = v71;
    sub_100536120();
    sub_100750564();
    v45 = v44;
    (*(v72 + 8))(v43, v7);
    sub_10000C620(v77);
    sub_1007477B4();
    Width = CGRectGetWidth(v82) - (v1 + v45);
    sub_1007477B4();
    Height = CGRectGetHeight(v83);
  }

  v46 = *&v40[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel];
  v47 = [v46 text];
  if (v47)
  {
    v48 = v47;
    ObjectType = sub_100753094();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_1009206F8 != -1)
  {
    swift_once();
  }

  v53 = sub_10000C518(&qword_100923C40);
  sub_10000D0FC(v53, qword_10092F8D0);
  v77[0] = v40;
  v54 = v40;
  sub_100743464();

  [v46 numberOfLines];
  v55 = sub_10074F3F4();
  v78 = v55;
  v79 = sub_10027C564(&qword_10092AC70, &type metadata accessor for Feature);
  v56 = sub_10000D134(v77);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_10074FC74();
  sub_10000C620(v77);
  sub_10074CCB4();
  v58 = v57;

  (*(v74 + 8))(v26, v23);
  [v46 sizeThatFits:{Width, Height}];
  v60 = v59;

  (*(v73 + 8))(v75, v24);
  return floor(v60 - v58) > 0.0;
}

void sub_10027A700()
{
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = sub_100754664();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10000C518(&qword_10092F9E8);
      sub_1007512B4();
      swift_endAccess();
      sub_100588D1C(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      sub_100753284();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      ++v4;
      sub_100753344();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_10027A960@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_10027A9AC()
{
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel];
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems];
    if (v4 >> 62)
    {
      result = sub_100754664();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = v0;

          sub_100754574();
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v6 = v0;
        }

        sub_100744B54();
        v8 = v7;

        if (v8)
        {
          v2 = sub_100753064();
        }

        else
        {
          v2 = 0;
        }

        v0 = v6;
        goto LABEL_14;
      }
    }

    v2 = 0;
LABEL_14:
    [v3 setText:v2];
    goto LABEL_15;
  }

  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_summaryLabel];

  v2 = sub_100753064();

  [v1 setText:v2];
LABEL_15:

  return [v0 setNeedsLayout];
}

void sub_10027AB34()
{
  v1 = sub_10000C518(&unk_100933080);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, sub_1007455C4(), (*(v2 + 8))(v4, v1), sub_10074ECB4(), v11 = v10, , v11))
  {
    sub_100745C84();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_100745BD4();

    sub_100016C60(0, &qword_100923500);
    v13 = v12;
    v14 = sub_100753EF4();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = sub_100753E04();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_10027AEA4(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = sub_1007537F4();

  if (!a1 || (sub_1007537F4() & 1) != (v4 & 1))
  {
    sub_100278E68();
  }
}

char *sub_10027B010()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = sub_100754574();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_10000C518(&unk_10092F9F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007A5620;
      *(inited + 32) = sub_100744B64();
      *(inited + 40) = v8;
      *(inited + 48) = sub_100744B54();
      *(inited + 56) = v9;
      *(inited + 64) = sub_100744BA4();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = sub_100744BB4();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = sub_100754664();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_100754574();
          }

          else
          {
          }

          v14 = sub_100744B74();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_100255D50((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = sub_100744B84();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_100255D50((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_1002554F8(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_1002554F8((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[16 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_10000C518(&unk_100928A70);
      sub_10002DDC8(&qword_10092FA00, &unk_100928A70);
      v38 = sub_100752FF4();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1002554F8(0, *(v50 + 2) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_1002554F8((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[16 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = sub_100754664();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell()
{
  result = qword_10092F990;
  if (!qword_10092F990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027B6F8()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_10027B840();
    if (v1 <= 0x3F)
    {
      sub_1001E5A54();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10027B840()
{
  if (!qword_10092F9A8)
  {
    sub_10000C724(&qword_10092F9B0);
    sub_10002DDC8(&qword_10092F9B8, &qword_10092F9B0);
    v0 = sub_1007512F4();
    if (!v1)
    {
      atomic_store(v0, &qword_10092F9A8);
    }
  }
}

void *sub_10027B8E4(char *a1, int a2, void *a3)
{
  v76 = a2;
  v5 = sub_10074A6C4();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10074A6A4();
  v86 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v68 - v9;
  v83 = sub_10074CD14();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_1009206F8 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_10000C518(&qword_100923C40);
    sub_10000D0FC(v16, qword_10092F8D0);
    v106[0] = a3;
    sub_100743464();
    v79 = a3;
    v17 = [a3 traitCollection];
    v18 = sub_100753C14();

    (*(v13 + 8))(v15, v12);
    sub_100742B94();
    v19 = sub_10074F3F4();
    v106[3] = v19;
    v82 = sub_10027C564(&qword_10092AC70, &type metadata accessor for Feature);
    v106[4] = v82;
    v20 = sub_10000D134(v106);
    v88 = a1;
    v21 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v22 = *(v19 - 8);
    v23 = *(v22 + 104);
    v24 = v22 + 104;
    v23(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
    v91 = v18;
    sub_10074FC74();
    sub_10000C620(v106);
    sub_10074CD04();
    sub_10074CCE4();
    v25 = v87 + 8;
    v26 = *(v87 + 8);
    v27 = v83;
    v26(v11, v83);
    sub_100742BA4();
    v90 = v28;
    v105[3] = v19;
    v105[4] = v82;
    v29 = sub_10000D134(v105);
    v73 = v21;
    v30 = v21;
    v31 = v19;
    v71 = v24;
    v72 = v23;
    v23(v29, v30, v19);
    v32 = v91;
    v15 = sub_10074FC74();
    sub_10000C620(v105);
    sub_10074CD04();
    sub_10074CCE4();
    v70 = v26;
    v26(v11, v27);
    v33 = sub_100742B84();
    v34 = v33;
    v13 = v33 >> 62;
    v35 = v33 >> 62 ? sub_100754664() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v25;
    v74 = v31;
    v75 = v11;
    if (!v35)
    {
      break;
    }

    *&v99 = _swiftEmptyArrayStorage;
    result = sub_10001E208(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v99;
    v69 = v32;
    v90 = v35;
    v89 = v34 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      v37 = sub_100754664();
    }

    else
    {
      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v34;
    v91 = (v34 & 0xC000000000000001);
    v41 = _s8ItemViewCMa();
    a1 = 0;
    v11 = (v37 & ~(v37 >> 63));
    while (v11 != a1)
    {
      if (v91)
      {
        v42 = sub_100754574();
      }

      else
      {
        if (a1 >= *(v89 + 16))
        {
          goto LABEL_30;
        }

        v42 = *(v12 + 8 * a1 + 32);
      }

      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v42;
      v44 = sub_100750F34();
      swift_allocObject();

      v45 = sub_100750EF4();
      *(&v103 + 1) = v44;
      v104 = &protocol witness table for LayoutViewPlaceholder;

      *&v102 = v45;
      *&v99 = a3;
      v47 = a3[2];
      v46 = a3[3];
      if (v47 >= v46 >> 1)
      {
        sub_10001E208((v46 > 1), v47 + 1, 1);
      }

      ++a1;
      v48 = *(&v103 + 1);
      v13 = v104;
      v49 = sub_10007271C(&v102, *(&v103 + 1));
      v50 = __chkstk_darwin(v49);
      v15 = &v68 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v15, v50);
      sub_10027C48C(v47, v15, &v99, v48, v13);
      sub_10000C620(&v102);
      a3 = v99;
      if (v90 == a1)
      {

        v39 = v80;
        v38 = v81;
        v40 = v79;
        v32 = v69;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v39 = v80;
  v38 = v81;
  v40 = v79;
LABEL_20:
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  if (sub_100742B64())
  {
    sub_10074ECB4();
    v54 = v53;

    if (v54)
    {
      v55 = v74;
      *(&v100 + 1) = v74;
      v101 = v82;
      v56 = sub_10000D134(&v99);
      v72(v56, v73, v55);
      v57 = v32;
      sub_10074FC74();
      sub_10000C620(&v99);
      v58 = v75;
      sub_10074CD04();
      sub_10074CCE4();
      v70(v58, v83);
      sub_10000C8CC(&v102, &qword_10092BC30);
      v102 = v99;
      v103 = v100;
      v104 = v101;
    }
  }

  if (qword_100920700 != -1)
  {
    swift_once();
  }

  v59 = sub_10000C518(&unk_10092F9C8);
  sub_10000D0FC(v59, qword_10097EB50);
  *&v99 = v40;
  v60 = v85;
  sub_100743464();
  sub_10074A674();
  v61 = [v40 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  sub_100753B64();
  sub_10074A684();
  v62 = v78;
  (*(v86 + 16))(v84, v60, v78);
  sub_10000C824(v106, &v99);
  sub_10000C824(v105, &v98);
  sub_100016B4C(&v102, &v92, &qword_10092BC30);
  v63 = *(&v93 + 1);
  if (*(&v93 + 1))
  {
    v64 = v94;
    v65 = sub_10000C888(&v92, *(&v93 + 1));
    *(&v96 + 1) = v63;
    v97 = *(v64 + 8);
    v66 = sub_10000D134(&v95);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_10000C620(&v92);
  }

  else
  {
    sub_10000C8CC(&v92, &qword_10092BC30);
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v67 = v77;
  sub_10074A6B4();
  sub_10027C564(&unk_10092F9D8, &type metadata accessor for ProductAnnotationLayout);
  sub_100750404();

  (*(v39 + 8))(v67, v38);
  (*(v86 + 8))(v85, v62);
  sub_10000C8CC(&v102, &qword_10092BC30);
  sub_10000C620(v105);
  return sub_10000C620(v106);
}

uint64_t sub_10027C48C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_10000D134(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100012160(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_10027C524()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10027C564(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10027C5AC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailViews;
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

  result = sub_100754664();
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
        v7 = sub_100754574();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_10000C518(&qword_10092F9E8);
      sub_1007512D4();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10027C710(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100933090);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10027C780()
{
  v1 = sub_10000C518(&qword_10092F9B0);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = sub_1007469A4();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  sub_100750624();
  sub_10002DDC8(&qword_10092F9B8, &qword_10092F9B0);
  sub_1007512E4();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
  v7 = sub_10000C518(&unk_100933080);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  sub_100754644();
  __break(1u);
}

uint64_t sub_10027C9AC()
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
  v11 = OBJC_IVAR____TtC22SubscribePageExtension28AnnotationCollectionViewCell_linkAction;
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

void sub_10027CCE0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView);
  sub_1007433C4();
  sub_10027DE04(&qword_100925570, &type metadata accessor for ArtworkView);
  v2 = v1;
  sub_100744274();

  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView);
  if (v3)
  {
    v4 = v3;
    sub_100744274();
  }

  v5 = *(*(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView();
    if (swift_dynamicCastClass())
    {
      sub_10027DE04(&unk_100923110, type metadata accessor for VideoView);
      v6 = v5;
      sub_100744274();
    }
  }
}

uint64_t sub_10027CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10027D010(*(a1 + 16), a5);
  v6 = [objc_opt_self() absoluteDimension:v5];
  v7 = sub_100749A04();

  return v7;
}

uint64_t sub_10027CF28(uint64_t a1)
{
  result = sub_10027DE04(&qword_10092FA08, type metadata accessor for PosterLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

void sub_10027D010(uint64_t a1, void *a2)
{
  v4 = sub_1007504F4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007479D4();
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_1007504C4();
  (*(v5 + 8))(v7, v4);
  [a2 pageContainerSize];
  v9 = v8;
  [a2 pageMarginInsets];
  v11 = v9 - v10;
  [a2 pageMarginInsets];
  v13 = v11 - v12;
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = v14;
  PageTraitEnvironment.pageColumnMargin.getter();
  if (v13 < (v15 + v16) * a1)
  {
    PageTraitEnvironment.pageColumnWidth.getter();
  }
}

id sub_10027D194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v102 = a3;
  v6 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v6 - 8);
  v101 = &v83 - v7;
  v99 = sub_10074C3E4();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10000C518(&unk_100925560);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v9;
  v10 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v10 - 8);
  v94 = &v83 - v11;
  v12 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v12 - 8);
  v91 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = &v83 - v15;
  v16 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v16 - 8);
  v89 = &v83 - v17;
  v18 = sub_100744864();
  __chkstk_darwin(v18 - 8);
  v88 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v21 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v83 - v22;
  v24 = sub_100744894();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100747D94();
  v92 = *(v28 - 8);
  v93 = v28;
  *&v29 = __chkstk_darwin(v28).n128_u64[0];
  v31 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = [v4 contentView];
  if (sub_100743F14())
  {
    v33 = 2;
  }

  else
  {
    v33 = 1;
  }

  [v32 setOverrideUserInterfaceStyle:v33];

  v34 = sub_100743EF4();
  if (v34)
  {
    v35 = v34;
    v87 = a1;
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = 0;

    v36 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer];
    v86 = OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer;
    v37 = *(v36 + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
    v84 = v31;
    v38 = v36;
    v39 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    *(v37 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
    sub_10057A514(v39);

    sub_1005791C8();
    v85 = v4;
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = v35;

    (*(v25 + 104))(v27, enum case for VideoFillMode.scaleAspectFill(_:), v24);
    sub_10074EC14();
    sub_10074F2A4();
    sub_100750504();

    v40 = sub_1007504F4();
    (*(*(v40 - 8) + 56))(v23, 0, 1, v40);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    v41 = v84;
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    v42 = v103;
    sub_10074EB94();
    v43 = v89;
    sub_10074EC24();
    v44 = sub_100741264();
    (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
    v45 = v90;
    sub_10074EBE4();
    v46 = v91;
    sub_10074EBD4();
    type metadata accessor for VideoView();
    sub_10027DE04(&qword_1009230E0, type metadata accessor for VideoView);
    v88 = v42;
    v47 = sub_1007464A4();
    sub_10000C8CC(v46, &unk_1009281C0);
    sub_10000C8CC(v45, &unk_1009281C0);
    sub_10000C8CC(v43, &unk_100923970);
    sub_10000C8CC(&v103, &unk_1009276E0);
    v48 = *(v38 + v86);
    if (v47)
    {
      v49 = v47;
      v50 = [v49 superview];
      if (v50)
      {
        v51 = v50;
        sub_100016C60(0, &qword_100922300);
        v52 = v48;
        v53 = sub_100753FC4();

        if (v53)
        {
          [v49 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v59 = *&v48[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents];
    *&v48[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents] = v47;
    v60 = v47;
    sub_10057A514(v59);

    (*(v92 + 8))(v41, v93);
    v4 = v85;
  }

  else
  {
    v54 = sub_100743F04();
    if (v54)
    {
      *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = v54;

      *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = 0;

      v55 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView];
      v56 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v57 = *(v56 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      *(v56 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = v55;
      v58 = v55;
      sub_10057A514(v57);

      sub_1005791C8();
    }

    else
    {
      v69 = *(*&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
      v70 = *(v69 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
      *(v69 + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) = 0;
      sub_10057A514(v70);

      sub_1005791C8();
      *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork] = 0;

      *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video] = 0;
    }
  }

  v61 = sub_10074EF34();
  v62 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitle];
  *v62 = v61;
  v62[1] = v63;

  sub_10043ED80();
  v64 = sub_100743EE4();
  if (v64)
  {
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork] = v64;

    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:1];
  }

  else
  {
    v65 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
    if (v65)
    {
      [v65 setHidden:1];
    }

    v66 = v62[1];
    if (v66)
    {
      if ((v66 & 0x2000000000000000) != 0)
      {
        v67 = HIBYTE(v66) & 0xF;
      }

      else
      {
        v67 = *v62 & 0xFFFFFFFFFFFFLL;
      }

      v68 = v67 == 0;
    }

    else
    {
      v68 = 1;
    }

    [*&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_fallbackTitleView] setHidden:v68];
  }

  v71 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_offerButton];
  v72 = sub_10074EF04();
  v73 = sub_10074EDF4();
  v74 = sub_10000C518(&unk_10092EEA0);
  v75 = v94;
  (*(*(v74 - 8) + 56))(v94, 1, 1, v74);
  v76 = v95;
  v77 = v99;
  (*(v95 + 104))(v96, enum case for OfferButtonSubtitlePosition.below(_:), v99);
  (*(v76 + 56))(v101, 1, 1, v77);
  sub_10027DE04(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
  v78 = v97;
  sub_10074A9C4();
  sub_10015DE40(v72, v73, 0, v75, v78, v102, 0, 0);

  (*(v98 + 8))(v78, v100);
  sub_10000C8CC(v75, &unk_100925540);
  [v71 setOverrideUserInterfaceStyle:1];
  v79 = sub_100743ED4();
  v80 = &v4[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_footerText];
  *v80 = v79;
  v80[1] = v81;

  return sub_10043EF04();
}

uint64_t sub_10027DE04(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10027DE4C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10074F284();
  v51 = *(v4 - 8);
  v52 = v4;
  __chkstk_darwin(v4);
  v50 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747A14();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin(v6);
  v46 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F314();
  __chkstk_darwin(v8 - 8);
  v53 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v10 - 8);
  v12 = v44 - v11;
  v13 = sub_100747D94();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007504F4();
  v45 = *(v17 - 8);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = [v2 contentView];
  [v21 bounds];

  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_video])
  {
    v22 = *(*(*&v2[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_mediaViewContainer] + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v22)
    {
      v44[3] = type metadata accessor for VideoView();
      v23 = swift_dynamicCastClass();
      if (v23)
      {
        v44[0] = v20;
        v44[2] = a1;
        v24 = qword_100982288;
        v25 = v17;
        v26 = v23;
        swift_beginAccess();
        v27 = *(v14 + 16);
        v44[1] = v26;
        v28 = v26 + v24;
        v29 = v25;
        v27(v16, v28, v13);

        v30 = v22;
        sub_100747CE4();
        (*(v14 + 8))(v16, v13);
        v31 = v45;
        if ((*(v45 + 48))(v12, 1, v25) != 1)
        {
          v43 = v44[0];
          (*(v31 + 32))(v44[0], v12, v29);
          sub_100750464();
          sub_10074EC14();
          sub_10074F374();

          sub_10027DE04(&unk_100923110, type metadata accessor for VideoView);
          sub_100744204();

          (*(v31 + 8))(v43, v29);
          v32 = &selRef_initWithTitle_style_target_action_;
          goto LABEL_10;
        }

        sub_10000C8CC(v12, &unk_1009281D0);
      }
    }
  }

  v32 = &selRef_initWithTitle_style_target_action_;
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artwork])
  {

    sub_10074F374();
    v33 = OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView;
    v34 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_artworkView];
    sub_10074F324();
    sub_100743364();
    [v34 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();

    v35 = *&v2[v33];
    sub_1007433C4();
    sub_10027DE04(&qword_100925570, &type metadata accessor for ArtworkView);
    v36 = v35;
    sub_100744204();
  }

LABEL_10:
  if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeadingArtwork])
  {

    [v2 bounds];
    v37 = v46;
    sub_10043EBD4();
    [v2 bounds];
    sub_1007479F4();
    (*(v47 + 8))(v37, v48);
    v38 = sub_10043EC80();
    v39 = v50;
    sub_10074F294();
    sub_10074F254();
    (*(v51 + 8))(v39, v52);
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v38 v32[63]];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    v40 = [objc_opt_self() clearColor];
    sub_100743224();
    sub_1007433C4();
    sub_10027DE04(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
    v41 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30PosterLockupCollectionViewCell_epicHeaderView];
    if (v41)
    {
      v42 = v41;
      [v42 setHidden:0];
    }
  }
}

unint64_t sub_10027E6D8()
{
  result = qword_10092FA60;
  if (!qword_10092FA60)
  {
    type metadata accessor for TitledButtonStackCollectionViewCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FA60);
  }

  return result;
}

double sub_10027E734()
{
  v0 = sub_10000C518(&qword_10092FA68);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v35 = &v27 - v1;
  v2 = sub_10074F704();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749A94();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&qword_100925340);
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_10000C518(&unk_10092E450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  sub_100746944();
  sub_1007525C4();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v12 + 8))(v14, v11);

  sub_100746964();
  v19 = v27;
  sub_1007468A4();
  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v31 + 8))(v4, v32);
  v20 = sub_10007DC04();
  sub_10000C824(v40, v38);
  sub_10000C518(&qword_1009242A0);
  sub_1007471C4();
  swift_dynamicCast();
  v21 = v29;
  v22 = v30;
  (*(v29 + 16))(v28, v10, v30);
  sub_100752DF4();
  v23 = v35;
  sub_100752EB4();
  sub_1000B6394(v39, v20);
  v25 = v24;
  swift_unknownObjectRelease();
  (*(v36 + 8))(v23, v37);
  (*(v33 + 8))(v19, v34);
  (*(v21 + 8))(v10, v22);
  sub_10000C620(v40);

  return v25;
}

char *sub_10027ECE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100741494();
  v117 = *(v11 - 8);
  v118 = v11;
  __chkstk_darwin(v11);
  v116 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&qword_10092FAB8);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - v14;
  v16 = sub_10074FEB4();
  __chkstk_darwin(v16 - 8);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v18 = sub_1007469A4();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *&v4[v19] = [objc_allocWithZone(UIImageView) init];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge;
  *&v4[v20] = [objc_allocWithZone(UILabel) init];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title;
  *&v4[v21] = [objc_allocWithZone(UILabel) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  *&v4[v22] = [objc_allocWithZone(UILabel) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  v24 = sub_10074FD34();
  sub_10074FCE4();
  v25 = enum case for AchievementsTheme.vibrant(_:);
  v26 = sub_10074FD44();
  v27 = *(v26 - 8);
  (*(v27 + 104))(v15, v25, v26);
  (*(v27 + 56))(v15, 0, 1, v26);
  v28 = objc_allocWithZone(v24);
  *&v5[v23] = sub_10074FD14();
  v29 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *&v5[v29] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v30 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *&v5[v30] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button;
  sub_1007466C4();
  *&v5[v31] = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  *&v5[v32] = [objc_allocWithZone(UIVisualEffectView) init];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_1007433C4();
  *&v5[v33] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v35 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  v115 = sub_100016C60(0, &qword_10092BE10);
  v36 = sub_1007532A4();

  *&v5[v34] = v36;
  v121.receiver = v5;
  v121.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v121, "initWithFrame:", a1, a2, a3, a4);
  v38 = [v37 contentView];
  [v38 setOverrideUserInterfaceStyle:2];

  v39 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v40 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v41 = objc_opt_self();
  v42 = v40;
  v43 = [v41 configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  [v42 setPreferredSymbolConfiguration:v43];

  v44 = *&v37[v39];
  v45 = objc_opt_self();
  v46 = v44;
  v47 = [v45 secondaryLabelColor];
  [v46 setTintColor:v47];

  v48 = [*&v37[v39] layer];
  v49 = kCAFilterPlusL;
  [v48 setCompositingFilter:kCAFilterPlusL];

  v50 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge;
  v51 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge];
  v52 = [v45 secondaryLabelColor];
  [v51 setTextColor:v52];

  v53 = [*&v37[v50] layer];
  v113 = v49;
  [v53 setCompositingFilter:v49];

  [*&v37[v50] setAdjustsFontForContentSizeCategory:1];
  v114 = v50;
  v54 = qword_100921550;
  v55 = *&v37[v50];
  if (v54 != -1)
  {
    swift_once();
  }

  v56 = sub_100750534();
  sub_10000D0FC(v56, qword_100981D28);
  v57 = v37;
  v58.super.isa = [v57 traitCollection];
  isa = v58.super.isa;
  v60 = sub_100750514(v58).super.isa;

  v61 = objc_opt_self();
  v62 = [v61 fontWithDescriptor:v60 size:0.0];

  [v55 setFont:v62];
  v63 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title;
  v64 = qword_100921558;
  v65 = *&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title];
  if (v64 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v56, qword_100981D40);
  v66.super.isa = [v57 traitCollection];
  v67 = v66.super.isa;
  v68 = sub_100750514(v66).super.isa;

  v69 = [v61 fontWithDescriptor:v68 size:0.0];
  [v65 setFont:v69];

  v70 = *&v57[v63];
  v71 = [v45 labelColor];
  [v70 setTextColor:v71];

  [*&v57[v63] setAdjustsFontForContentSizeCategory:1];
  v112 = v63;
  v72 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  v73 = qword_100921560;
  v74 = *&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  if (v73 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v56, qword_100981D58);
  v75 = [v57 traitCollection];

  v76.super.isa = v75;
  v77 = sub_100750514(v76).super.isa;

  v78 = [v61 fontWithDescriptor:v77 size:0.0];
  [v74 setFont:v78];

  [*&v57[v72] setNumberOfLines:2];
  [*&v57[v72] setAdjustsFontForContentSizeCategory:1];
  v79 = *&v57[v72];
  v80 = [v45 secondaryLabelColor];
  [v79 setTextColor:v80];

  v81 = [*&v57[v72] layer];
  v82 = v113;
  [v81 setCompositingFilter:v113];

  v83 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_separator;
  v84 = *&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_separator];
  v85 = objc_allocWithZone(UIColor);
  v86 = v84;
  v87 = [v85 initWithWhite:1.0 alpha:0.12];
  [v86 setBackgroundColor:v87];

  v88 = [*&v57[v83] layer];
  [v88 setCompositingFilter:v82];

  v89 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  [*&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setContentMode:2];
  [*&v57[v89] setClipsToBounds:1];
  v90 = [v57 contentView];
  [v90 addSubview:*&v57[v89]];

  v91 = [v57 contentView];
  v92 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  [v91 addSubview:*&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_visualEffect]];

  v93 = [v57 contentView];
  [v93 addSubview:*&v37[v114]];

  v94 = [v57 contentView];
  [v94 addSubview:*&v57[v112]];

  v95 = [v57 contentView];
  [v95 addSubview:*&v57[v72]];

  v96 = [v57 contentView];
  v97 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  [v96 addSubview:*&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent]];

  v98 = [v57 contentView];
  [v98 addSubview:*&v57[v83]];

  v99 = [v57 contentView];
  [v99 addSubview:*&v57[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_lockup]];

  v100 = *&v57[v92];

  v101 = sub_100753294().super.isa;

  [v100 setBackgroundEffects:v101];

  v119 = 0;
  v120 = 0xE000000000000000;
  sub_100754534(27);

  v119 = 0xD000000000000019;
  v120 = 0x8000000100773E80;
  v102 = v116;
  sub_100741484();
  v103 = sub_100741464();
  v105 = v104;
  (*(v117 + 8))(v102, v118);
  v122._countAndFlagsBits = v103;
  v122._object = v105;
  sub_1007531B4(v122);

  v106 = *&v57[v92];
  v107 = sub_100753064();
  [v106 _setGroupName:v107];

  v108 = *&v57[v97];
  sub_10074FD04();

  v109 = *&v57[v97];
  sub_10074FCF4();

  return v57;
}

uint64_t sub_10027FA18()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074C784();
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v47 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074C764();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v41 - v13;
  v74.receiver = v1;
  v74.super_class = ObjectType;
  objc_msgSendSuper2(&v74, "layoutSubviews", v12);
  v15 = swift_unknownObjectRetain();
  sub_10027FF90(v15, v14);
  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  v18 = [v17 image];
  if (v18)
  {

    v19 = v17;
    [*&v1[v16] sizeToFit];
    v17 = [v1 contentView];
    [v17 insertSubview:*&v1[v16] belowSubview:*&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge]];
  }

  else
  {
    [v17 removeFromSuperview];
    v19 = 0;
  }

  (*(v8 + 16))(v10, v14, v7);
  v48 = v7;
  v45 = v14;
  v46 = v8;
  v41 = v10;
  if (v19)
  {
    v20 = sub_100016C60(0, &qword_10092BFC0);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v70 = 0;
    v71 = 0;
  }

  v69 = v19;
  v72 = v20;
  v73 = v21;
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge];
  v67 = sub_100016C60(0, &qword_1009236D0);
  v68 = &protocol witness table for UILabel;
  v66 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title];
  v64 = v67;
  v65 = &protocol witness table for UILabel;
  v62 = &protocol witness table for UILabel;
  v63 = v23;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  v61 = v67;
  v60 = v24;
  v25 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  v58 = sub_10074FD34();
  v59 = &protocol witness table for UIView;
  v57 = v25;
  v26 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_separator];
  v55 = type metadata accessor for SeparatorView();
  v56 = &protocol witness table for UIView;
  v54 = v26;
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_lockup];
  v52 = type metadata accessor for SmallLockupView();
  v53 = &protocol witness table for UIView;
  v51 = v27;
  v28 = v19;
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v35 = v47;
  sub_10074C774();
  v36 = [v1 contentView];
  [v36 bounds];

  v37 = v42;
  sub_10074C744();
  (*(v43 + 8))(v37, v44);
  [v1 frame];
  CGRectGetWidth(v75);
  [v1 frame];
  CGRectGetHeight(v76);
  sub_100743324();
  v38 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_visualEffect];
  [v1 frame];
  Width = CGRectGetWidth(v77);
  [v1 frame];
  [v38 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v78)}];

  (*(v49 + 8))(v35, v50);
  return (*(v46 + 8))(v45, v48);
}

uint64_t sub_10027FF90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    [a1 pageMarginInsets];
    v8 = [a1 traitCollection];
    v9 = [v8 horizontalSizeClass];

    if (v9 != 1)
    {
      v10 = [a1 traitCollection];
      [v10 userInterfaceIdiom];
    }
  }

  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v11 = sub_100750B04();
  v12 = sub_10000D0FC(v11, qword_1009820C8);
  v82[3] = v11;
  v82[4] = &protocol witness table for StaticDimension;
  v13 = sub_10000D134(v82);
  v14 = *(v11 - 8);
  v43 = *(v14 + 16);
  v44 = v12;
  v42 = v14 + 16;
  v43(v13, v12, v11);
  if (qword_100921550 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v54 = sub_10000D0FC(v15, qword_100981D28);
  v16 = *(v15 - 8);
  v51 = *(v16 + 16);
  v47 = v16 + 16;
  v51(v7, v54, v15);
  v50 = enum case for FontSource.useCase(_:);
  v46 = v4[13];
  v46(v7);
  v81[3] = v11;
  v81[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v81);
  v79 = v3;
  v80 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v78);
  v18 = v4[2];
  v18(v17, v7, v3);
  sub_100750B14();
  v19 = v4[1];
  v19(v7, v3);
  v41 = v15;
  v51(v7, v54, v15);
  v52 = v4 + 13;
  v20 = v46;
  (v46)(v7, v50, v3);
  v21 = v20;
  v40 = v11;
  v79 = v11;
  v80 = &protocol witness table for StaticDimension;
  sub_10000D134(v78);
  v76 = v3;
  v77 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v75);
  v53 = v18;
  v54 = (v4 + 2);
  v18(v22, v7, v3);
  v23 = v19;
  sub_100750B14();
  v49 = v4 + 1;
  v19(v7, v3);
  if (qword_100921558 != -1)
  {
    swift_once();
  }

  v24 = v41;
  v25 = sub_10000D0FC(v41, qword_100981D40);
  v51(v7, v25, v24);
  (v21)(v7, v50, v3);
  v26 = v40;
  v76 = v40;
  v77 = &protocol witness table for StaticDimension;
  sub_10000D134(v75);
  v73 = v3;
  v74 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v72);
  v53(v27, v7, v3);
  sub_100750B14();
  v23(v7, v3);
  v48 = v23;
  if (qword_100921560 != -1)
  {
    swift_once();
  }

  v28 = sub_10000D0FC(v24, qword_100981D58);
  v51(v7, v28, v24);
  (v21)(v7, v50, v3);
  v73 = v26;
  v74 = &protocol witness table for StaticDimension;
  sub_10000D134(v72);
  v70 = v3;
  v71 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v69);
  v53(v29, v7, v3);
  sub_100750B14();
  v48(v7, v3);
  v70 = v26;
  v71 = &protocol witness table for StaticDimension;
  v30 = sub_10000D134(v69);
  v32 = v43;
  v31 = v44;
  v43(v30, v44, v26);
  v68[3] = v26;
  v68[4] = &protocol witness table for StaticDimension;
  v33 = sub_10000D134(v68);
  v32(v33, v31, v26);
  *v7 = UIFontTextStyleFootnote;
  LODWORD(v51) = enum case for FontSource.textStyle(_:);
  v21(v7);
  v67[3] = v26;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v67);
  v65 = v3;
  v66 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v64);
  v35 = v53;
  v53(v34, v7, v3);
  v36 = UIFontTextStyleFootnote;
  sub_100750B14();
  v37 = v48;
  v48(v7, v3);
  *v7 = v36;
  (v46)(v7, v51, v3);
  v65 = v26;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v62 = v3;
  v63 = &protocol witness table for FontSource;
  v38 = sub_10000D134(v61);
  v35(v38, v7, v3);
  sub_100750B14();
  v37(v7, v3);
  v62 = &type metadata for Double;
  v63 = &protocol witness table for Double;
  v60 = &protocol witness table for Double;
  v61[0] = 0x4077700000000000;
  v59 = &type metadata for Double;
  v57 = &protocol witness table for Double;
  v58 = 0x4034000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4077C00000000000;
  return sub_10074C754();
}

uint64_t sub_1002807D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v15.receiver = v4;
  v15.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v15, "focusItemsInRect:", a1, a2, a3, a4);
  sub_10000C518(&qword_10092FAB0);
  v11 = sub_1007532A4();

  v16 = v11;
  v12 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button];
  sub_100753284();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  v13 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_100753284();
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return v16;
}

uint64_t type metadata accessor for GameCenterReengagementCollectionViewCell()
{
  result = qword_10092FA98;
  if (!qword_10092FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100280B44()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100280C0C()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092FAB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_10074FEB4();
  __chkstk_darwin(v5 - 8);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_itemLayoutContext;
  v7 = sub_1007469A4();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_pageTraits) = 0;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph;
  *(v1 + v8) = [objc_allocWithZone(UIImageView) init];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_badge;
  *(v1 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_title;
  *(v1 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_subtitle;
  *(v1 + v11) = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_heroContent;
  v13 = sub_10074FD34();
  sub_10074FCE4();
  v14 = enum case for AchievementsTheme.vibrant(_:);
  v15 = sub_10074FD44();
  v16 = *(v15 - 8);
  (*(v16 + 104))(v4, v14, v15);
  (*(v16 + 56))(v4, 0, 1, v15);
  v17 = objc_allocWithZone(v13);
  *(v1 + v12) = sub_10074FD14();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_separator;
  type metadata accessor for SeparatorView();
  *(v1 + v18) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_lockup;
  type metadata accessor for SmallLockupView();
  *(v1 + v19) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_button;
  sub_1007466C4();
  *(v1 + v20) = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_visualEffect;
  *(v1 + v21) = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_backgroundImage;
  sub_1007433C4();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension40GameCenterReengagementCollectionViewCell_customBackgroundBlur;
  v24 = [objc_opt_self() _gkGameLayerBackgroundVisualEffect];
  sub_100016C60(0, &qword_10092BE10);
  v25 = sub_1007532A4();

  *(v1 + v23) = v25;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100280FC4()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_10097EC10);
  sub_10000D0FC(v0, qword_10097EC10);
  return sub_100750504();
}

uint64_t sub_100281018()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753E74();
  qword_10097EC28 = result;
  return result;
}

uint64_t sub_10028105C()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753E34();
  qword_10097EC30 = result;
  return result;
}

uint64_t sub_100281124()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097EC80);
  sub_10000D0FC(v4, qword_10097EC80);
  if (qword_100920740 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_10097EC38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002812F8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097EC98);
  sub_10000D0FC(v4, qword_10097EC98);
  if (qword_100920748 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_10097EC50);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002814CC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10097ECB0);
  sub_10000D0FC(v4, qword_10097ECB0);
  if (qword_100920750 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_10097EC68);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_1002816A0(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_100753064();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel];
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

id sub_100281784()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon;
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  if (v7)
  {
    v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  }

  else
  {
    (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
    sub_100016C60(0, &qword_100923AB0);
    if (qword_100920740 != -1)
    {
      swift_once();
    }

    v9 = sub_100750534();
    sub_10000D0FC(v9, qword_10097EC38);
    v10 = [v0 traitCollection];
    v11 = v0;
    v12 = sub_100753C14();

    v13 = [objc_opt_self() configurationWithFont:v12];
    v14 = sub_100743AE4();

    (*(v2 + 8))(v5, v1);
    v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

    v16 = *&v11[v6];
    *&v11[v6] = v15;
    v8 = v15;

    v7 = 0;
  }

  v17 = v7;
  return v8;
}

void (*sub_1002819AC(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100281A00;
}

void sub_100281A00(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300);
        v10 = v4;
        v11 = sub_100753FC4();

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

    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016C60(0, &qword_100922300);
      v16 = v4;
      v17 = sub_100753FC4();

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
    [v20 addSubview:v19];
  }

  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

char *sub_100281CBC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v14 - 8);
  v16 = v46 - v15;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView] = 0;
  if (qword_100920740 != -1)
  {
    swift_once();
  }

  v17 = sub_100750534();
  v18 = sub_10000D0FC(v17, qword_10097EC38);
  v19 = *(v17 - 8);
  v48 = *(v19 + 16);
  v48(v16, v18, v17);
  v47 = *(v19 + 56);
  v47(v16, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v21 = *(v11 + 104);
  v46[1] = v11 + 104;
  v21(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = sub_100745C84();
  v23 = objc_allocWithZone(v22);
  v46[0] = v10;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialTypeLabel] = sub_100745C74();
  if (qword_100920748 != -1)
  {
    swift_once();
  }

  v24 = sub_10000D0FC(v17, qword_10097EC50);
  v48(v16, v24, v17);
  v47(v16, 0, 1, v17);
  v21(v13, v20, v46[0]);
  v25 = objc_allocWithZone(v22);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_titleLabel] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel] = sub_100745C64();
  v26 = type metadata accessor for EditorialSearchResultContentView();
  v49.receiver = v5;
  v49.super_class = v26;
  v27 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel;
  v33 = qword_100920750;
  v34 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel];
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_10000D0FC(v17, qword_10097EC68);
  v48(v16, v35, v17);
  v47(v16, 0, 1, v17);
  sub_100745BA4();

  [*&v31[v32] setLineBreakMode:4];
  v36 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialTypeLabel;
  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialTypeLabel]];
  v37 = sub_100281784();
  [v31 addSubview:v37];

  [v31 addSubview:*&v31[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_titleLabel]];
  [v31 addSubview:*&v31[v32]];
  v38 = *&v31[v36];
  v39 = [v31 tintColor];
  [v38 setTextColor:v39];

  v40 = *&v31[v32];
  sub_100016C60(0, &qword_100923500);
  v41 = v40;
  v42 = sub_100753DF4();
  [v41 setTextColor:v42];

  v43 = *&v31[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon];
  v44 = [v31 tintColor];

  [v43 setTintColor:v44];
  return v31;
}

void sub_100282318()
{
  v1 = v0;
  v152 = sub_100754724();
  v144 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v139 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3 = COERCE_DOUBLE(sub_100750B04());
  v146 = *(v3 - 8);
  __chkstk_darwin(v3);
  v153 = &v139 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_1009233B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v141 = (&v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v155 = &v139 - v9;
  __chkstk_darwin(v10);
  v12 = (&v139 - v11);
  __chkstk_darwin(v13);
  v150 = (&v139 - v14);
  __chkstk_darwin(v15);
  v17 = &v139 - v16;
  v18 = type metadata accessor for EditorialSearchResultContentView();
  v163.receiver = v0;
  v163.super_class = v18;
  v157 = v18;
  objc_msgSendSuper2(&v163, "layoutSubviews");
  sub_10000C518(&qword_1009233B0);
  v19 = *(v6 + 72);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  v147 = v20;
  v148 = v21;
  v22 = v21 + v20;
  v23 = *(v5 + 48);
  v142 = v1;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialTypeLabel];
  *(v21 + v20) = v24;
  v25 = qword_100920758;
  v149 = v24;
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v3, qword_10097EC80);
  v159 = *(v146 + 16);
  (*&v159)(v22 + v23, v26, v3);
  *&v160 = *(v5 + 48);
  v27 = *&v142[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_titleLabel];
  *(v22 + v19) = v27;
  v28 = v5;
  v29 = qword_100920760;
  v30 = v27;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_10000D0FC(v3, qword_10097EC98);
  (*&v159)(v22 + v19 + *&v160, v31, v3);
  v154 = v19;
  v32 = (v22 + 2 * v19);
  v156 = v28;
  v33 = *(v28 + 48);
  v34 = *&v142[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel];
  *v32 = v34;
  v35 = qword_100920768;
  v36 = v34;
  if (v35 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v3, qword_10097ECB0);
  v160 = *&v3;
  (*&v159)(&v32[v33], v37, v3);
  *&v159 = v146 + 8;
  v38 = _swiftEmptyArrayStorage;
  v39 = 3;
  v145 = v22;
  v40 = v22;
  v41 = v154;
  do
  {
    sub_100287B64(v40, v17);
    sub_100287B64(v17, v12);
    v42 = *v12;
    v43 = *(v156 + 48);
    v44 = [*v12 isHidden];

    v158 = **&v159;
    (*&v158)(v12 + v43, *&v160);
    if (v44)
    {
      sub_10000C8CC(v17, &qword_1009233B8);
    }

    else
    {
      sub_100287BD4(v17, v155);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v162[0] = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001E634(0, v38[2] + 1, 1);
        v38 = v162[0];
      }

      v47 = v38[2];
      v46 = v38[3];
      if (v47 >= v46 >> 1)
      {
        sub_10001E634(v46 > 1, v47 + 1, 1);
        v38 = v162[0];
      }

      v38[2] = v47 + 1;
      sub_100287BD4(v155, v147 + v38 + v47 * v41);
    }

    v40 += v41;
    --v39;
  }

  while (v39);
  swift_setDeallocating();
  v48 = v156;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v49 = v38[2];
  v50 = v142;
  if (v49)
  {
    v155 = *(v48 + 48);
    v51 = sub_100016C60(0, &qword_1009327F0);
    v143 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView____lazy_storage___editorialIcon;
    v52 = v147 + v38;
    v147 = (v146 + 32);
    v148 = v51;
    v145 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v146 = *&v144 + 8;
    v53 = 0.0;
    v139 = v52;
    v140 = v49;
    v54 = *&v160;
    v55 = v153;
    do
    {
      v57 = v150;
      sub_100287B64(v52, v150);
      v58 = *v57;
      (*v147)(v55, v57 + v155, v54);
      v59 = v58;
      sub_1007477B4();
      [v59 sizeThatFits:{v60, v61}];
      v63 = v62;
      v65 = v64;
      sub_1007477B4();
      if (v63 >= v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = v63;
      }

      v68 = [v50 traitCollection];
      v69 = v151;
      sub_1007502D4();
      sub_100750AD4();
      v71 = v70;

      (*v146)(v69, v152);
      sub_1007477B4();
      v72 = v53 + CGRectGetMinY(v165);
      [v59 firstBaselineFromTop];
      v74 = v72 + v71 - v73;
      if ((sub_100753FC4() & 1) != 0 && v50[v145] == 1)
      {
        v75 = sub_100281784();
        [v75 bounds];
        v77 = v76;
        v144 = v67;
        v79 = v78;

        sub_1007477B4();
        MinX = CGRectGetMinX(v166);
        v81 = *&v50[v143];
        sub_1007477B4();
        sub_100753B24();
        [v81 setFrame:?];

        v167.origin.x = MinX;
        v167.origin.y = v65 * 0.5 + v74 - v79 * 0.5;
        v167.size.width = v77;
        v167.size.height = v79;
        CGRectGetMaxX(v167);
      }

      else
      {
        sub_1007477B4();
        CGRectGetMinX(v164);
      }

      v56 = v154;
      sub_1007477B4();
      sub_100753B24();
      [v59 setFrame:?];

      v55 = v153;
      v54 = *&v160;
      (*&v158)(v153, *&v160);
      v53 = v53 + v71;
      v52 += v56;
      --v49;
    }

    while (v49);
    if (v140 > v38[2])
    {
      __break(1u);
      return;
    }

    v82 = v141;
    sub_100287B64(v139 + (v140 - 1) * v56, v141);

    v83 = *v82;
    v84 = *(v156 + 48);
    [*v82 frame];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v168.origin.x = v86;
    v168.origin.y = v88;
    v168.size.width = v90;
    v168.size.height = v92;
    MaxY = CGRectGetMaxY(v168);
    (*&v158)(v82 + v84, v54);
  }

  else
  {

    MaxY = 0.0;
    v54 = *&v160;
  }

  sub_1007477B4();
  v94 = MaxY + CGRectGetMinY(v169);
  if (qword_100921708 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v54, qword_100982098);
  v95 = [v50 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v96 = swift_allocObject();
  *(v96 + 16) = xmmword_1007A5CF0;
  *(v96 + 32) = v95;
  v97 = v95;
  v98 = sub_100751044();
  sub_100750544();
  v100 = v99;

  v101 = v94 + v100;
  sub_1007477B4();
  v102 = CGRectGetMinX(v170);
  sub_1007477B4();
  v103 = CGRectGetMaxY(v171) - v101;
  if (qword_100920728 != -1)
  {
    swift_once();
  }

  v104 = sub_1007504F4();
  sub_10000D0FC(v104, qword_10097EC10);
  sub_1007504B4();
  v106 = v105;
  sub_1007477B4();
  Width = CGRectGetWidth(v172);
  sub_1007504C4();
  if (Width < v106)
  {
    v106 = Width;
    v103 = v108;
  }

  v109 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v109)
  {
    v110 = v109;
    sub_1007477B4();
    sub_100753B24();
    sub_100743324();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v112 = Strong;
    sub_1007477B4();
    sub_100753B24();
    [v112 setFrame:?];
  }

  v113 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v113)
  {
    v114 = v113;
    sub_1007477B4();
    sub_100753B24();
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = type metadata accessor for ArtworkGrid();
    v161.receiver = v114;
    v161.super_class = v123;
    objc_msgSendSuper2(&v161, "setFrame:", v116, v118, v120, v122);
    sub_100602594();
    [v114 setNeedsLayout];
  }

  v124 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconArtworkView];
  if (v124)
  {
    v125 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_iconBackingView];
    if (v125)
    {
      v126 = v124;
      v127 = v125;
      [v127 setFrame:{v102, v101, v106, v103}];
      [v127 bounds];
      v129 = v128;
      v131 = v130;
      v133 = v132;
      v135 = v134;
      sub_100743394();
      v159 = v102;
      v160 = v101;
      v173.origin.x = v129;
      v173.origin.y = v131;
      v173.size.width = v133;
      v173.size.height = v135;
      CGRectGetMidX(v173);
      v158 = v106;
      v174.origin.x = v129;
      v174.origin.y = v131;
      v174.size.width = v133;
      v174.size.height = v135;
      CGRectGetMidY(v174);
      sub_1007477B4();
      v106 = v158;
      v102 = v159;
      v101 = v160;
      sub_100753B24();
      sub_100743324();

      v50 = v142;
    }
  }

  v136 = *&v50[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v136)
  {
    v137 = v136;
    sub_1000CBC6C(v162);
    sub_1000CD7E4(v50, v162, v106, v103);
    sub_1000CD59C(v162);
    v175.origin.x = v102;
    v175.origin.y = v101;
    v175.size.width = v106;
    v175.size.height = v103;
    CGRectGetMinX(v175);
    v176.size.width = v106;
    v176.origin.x = v102;
    v176.origin.y = v101;
    v176.size.height = v103;
    CGRectGetMinY(v176);
    v138 = v137;
    sub_1007477B4();
    sub_100753B24();
    [v138 setFrame:?];
  }
}

id sub_100283148()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *&v1[v2];
  }

  else
  {
    v4 = 0;
  }

  *&v1[v2] = 0;

  [v1 setNeedsLayout];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v7 = [v6 superview];
    if (!v7)
    {
LABEL_9:

      goto LABEL_10;
    }

    v8 = v7;
    sub_100016C60(0, &qword_100922300);
    v9 = v1;
    v10 = sub_100753FC4();

    if (v10)
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v6 = v11;
        [v11 removeFromSuperview];
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  swift_unknownObjectWeakAssign();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v1 addSubview:v12];
  }

  [v1 setNeedsLayout];
  sub_100287578(0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_artworkGrid];
  if (v15)
  {
    [v15 removeFromSuperview];
    v16 = *&v1[v14];
  }

  else
  {
    v16 = 0;
  }

  *&v1[v14] = 0;

  [v1 setNeedsLayout];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v1[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v1[v17] = 0;

  return [v1 setNeedsLayout];
}

void sub_100283358(id a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for EditorialSearchResultContentView();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  if (a1)
  {
    a1 = [a1 preferredContentSizeCategory];
  }

  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_11:
    v11 = sub_100281784();
    sub_100016C60(0, &qword_100923AB0);
    if (qword_100920740 != -1)
    {
      swift_once();
    }

    v12 = sub_100750534();
    sub_10000D0FC(v12, qword_10097EC38);
    v13 = [v1 traitCollection];
    v14 = sub_100753C14();

    v15 = [objc_opt_self() configurationWithFont:v14];
    [v11 setPreferredSymbolConfiguration:v15];

    return;
  }

  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {

    return;
  }

  v10 = sub_100754754();

  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }
}

uint64_t sub_100283620(uint64_t a1, uint64_t a2)
{
  v3 = sub_100746BA4();
  v183 = *(v3 - 8);
  __chkstk_darwin(v3);
  v182 = v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F314();
  __chkstk_darwin(v5 - 8);
  v181 = v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_10074F284();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v8 - 8);
  v194 = v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v193 = v175 - v11;
  v12 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v12 - 8);
  v192 = v175 - v13;
  v14 = sub_100744864();
  __chkstk_darwin(v14 - 8);
  v191 = v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v190 = v175 - v17;
  v18 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v18 - 8);
  v189 = v175 - v19;
  v188 = sub_100744894();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100747D94();
  v195 = *(v21 - 8);
  __chkstk_darwin(v21);
  v200 = v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_10074ED34();
  v209 = *(v214 - 8);
  __chkstk_darwin(v214);
  v213 = v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_10092FB70);
  __chkstk_darwin(v24 - 8);
  v198 = v175 - v25;
  v202 = sub_100745334();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v184 = v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v197 = v175 - v28;
  v29 = sub_10074B3E4();
  v211 = *(v29 - 8);
  v212 = v29;
  __chkstk_darwin(v29);
  v208 = v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v204 = v175 - v32;
  __chkstk_darwin(v33);
  v35 = v175 - v34;
  v207 = sub_1007504F4();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v37 = v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100750D14();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v41 = v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007493C4();
  sub_100287AD4(&qword_100936A50, 255, &type metadata accessor for EditorialSearchResult);
  result = sub_1007468B4();
  if (!*&v216[0])
  {
    return result;
  }

  v177 = v21;
  v203 = *&v216[0];
  v176 = v3;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v205 = *&v216[0];
  sub_100747474();
  v196 = a2;
  sub_100752754();
  v43 = *&v216[0];
  v44 = v210;
  if (*&v216[0])
  {
    *&v215 = v210;
    type metadata accessor for EditorialSearchResultContentView();
    sub_100287AD4(&qword_10092FB68, v45, type metadata accessor for EditorialSearchResultContentView);

    v46 = v44;
    sub_1007544E4();
    sub_100747464();

    sub_100016994(v216);
  }

  v199 = v43;
  v175[1] = type metadata accessor for EditorialSearchResultContentView();
  sub_1007477B4();
  swift_getKeyPath();
  sub_100746914();

  v47 = *&v216[0];
  if (qword_100920728 != -1)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v48 = v207;
    v49 = sub_10000D0FC(v207, qword_10097EC10);
    v206[2](v37, v49, v48);
    sub_100750D24();
    sub_100751034();
    sub_10000C518(&unk_1009231A0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_1007A5CF0;
    *(v50 + 32) = v47;
    v51 = v47;
    v52 = sub_100751044();
    sub_100750404();
    v54 = v53;
    v56 = v55;

    (*(v39 + 8))(v41, v38);
    v38 = v203;
    sub_100749384();
    v57 = (*(v211 + 88))(v35, v212);
    v58 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon;
    v185 = enum case for EditorialSearchResultType.appEventStory(_:);
    if (v57 == enum case for EditorialSearchResultType.category(_:) || v57 == enum case for EditorialSearchResultType.collection(_:) || v57 == enum case for EditorialSearchResultType.story(_:) || v57 == enum case for EditorialSearchResultType.appEventStory(_:))
    {
      v44[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon] = 1;
      v60 = sub_100281784();
      [v60 setHidden:(v44[v58] & 1) == 0];

      [v44 setNeedsLayout];
    }

    else
    {
      v44[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_showEditorialIcon] = 0;
      v59 = sub_100281784();
      [v59 setHidden:(v44[v58] & 1) == 0];

      [v44 setNeedsLayout];
      (*(v211 + 8))(v35, v212);
    }

    v61 = sub_100749334();
    sub_1002816A0(v61, v62);
    sub_100749394();
    v64 = v63;
    v65 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_titleLabel];
    v66 = v63 ? sub_100753064() : 0;
    [v65 setText:v66];

    [v65 setHidden:v64 == 0];
    [v44 setNeedsLayout];
    sub_1007493A4();
    v68 = v67;
    v69 = *&v44[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_subtitleLabel];
    v70 = v67 ? sub_100753064() : 0;
    [v69 setText:v70];

    [v69 setHidden:v68 == 0];
    [v44 setNeedsLayout];
    v71 = sub_100749354();
    if (!v71)
    {
      break;
    }

    v72 = v71;
    v73 = v198;
    sub_100749324();
    v74 = v201;
    v47 = v202;
    if ((*(v201 + 48))(v73, 1, v202) == 1)
    {

      sub_10000C8CC(v73, &qword_10092FB70);
      break;
    }

    v94 = v197;
    (*(v74 + 32))(v197, v73, v47);
    v95 = v184;
    (*(v74 + 16))(v184, v94, v47);
    v96 = (*(v74 + 88))(v95, v47);
    if (v96 == enum case for ArtworkGridType.small(_:))
    {
      goto LABEL_32;
    }

    if (v96 == enum case for ArtworkGridType.large(_:))
    {
      v97 = 1;
    }

    else if (v96 == enum case for ArtworkGridType.extraLarge(_:))
    {
      v97 = 2;
    }

    else
    {
      if (v96 != enum case for ArtworkGridType.mixed(_:))
      {
        (*(v74 + 8))(v95, v47);
LABEL_32:
        v97 = 0;
        goto LABEL_50;
      }

      v97 = 3;
    }

LABEL_50:
    v110 = objc_allocWithZone(type metadata accessor for ArtworkGrid());
    v111 = sub_100602928(v97, 0.0, 0.0, 0.0, 0.0);
    sub_100496C30();
    v112 = v111[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_gridType];
    v113.f64[0] = v54;
    v114 = sub_100602310(v112, v113, v56);
    v35 = *(v72 + 2);
    if (v114 < v35)
    {
      v115.f64[0] = v54;
      v116 = sub_100602310(v112, v115, v56);
      if ((v116 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v35 >= v116)
      {
        if (v35 == v116)
        {
LABEL_67:
          v41 = v72;
        }

        else
        {
          v200 = v111;
          sub_1006315C0(v72, &v72[(*(v209 + 80) + 32) & ~*(v209 + 80)], 0, (2 * v116) | 1);
          v41 = v117;
LABEL_55:

          v44 = v210;
          v111 = v200;
        }

        *&v111[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_expectedNumberOfArtworkImages] = *(v41 + 2);
        sub_100602764();
        if (v199)
        {
          v122 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v123 = swift_allocObject();
          v123[2] = v111;
          v123[3] = v122;
          v124 = v205;
          v123[4] = v205;
          v125 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v126 = swift_allocObject();
          v126[2] = v111;
          v126[3] = v125;
          v126[4] = v124;
          *&v216[0] = v44;
          sub_100287AD4(&qword_10092FB68, v127, type metadata accessor for EditorialSearchResultContentView);
          v128 = v44;
          v129 = v111;
          swift_retain_n();

          v130 = v128;
          v131 = v129;
          sub_1007544E4();
          sub_100747444();

          sub_10000C8CC(&v215, &unk_1009276E0);
        }

        else
        {

          v217 = 0;
          memset(v216, 0, sizeof(v216));
        }

        v102 = v204;
        sub_10000C8CC(v216, &unk_1009276E0);
        v132 = v111;
        sub_100287740(v111);

        (*(v201 + 8))(v197, v202);
        goto LABEL_72;
      }

      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (v114 <= v35)
    {
      goto LABEL_67;
    }

    v207 = v114 - v35;
    if (v114 - v35 < 0)
    {
      goto LABEL_108;
    }

    if (v35)
    {
      v200 = v111;

      v41 = v72;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_60;
      }

      goto LABEL_110;
    }

LABEL_109:
    __break(1u);
LABEL_110:
    v41 = sub_10025572C(0, (v35 + 1), 1, v72);
LABEL_60:
    v118 = 0;
    v39 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v206 = &v72[v39];
    v44 = (v209 + 16);
    v37 = (v209 + 32);
    while (1)
    {
      v119 = v118 % v35;
      if (v118 % v35 < 0)
      {
        break;
      }

      if (v119 >= *(v72 + 2))
      {
        goto LABEL_103;
      }

      v47 = v72;
      v120 = *(v209 + 72);
      (*(v209 + 16))(v213, v206 + v120 * v119, v214);
      v38 = *(v41 + 2);
      v121 = *(v41 + 3);
      if (v38 >= v121 >> 1)
      {
        v41 = sub_10025572C(v121 > 1, v38 + 1, 1, v41);
      }

      ++v118;
      *(v41 + 2) = v38 + 1;
      (*v37)(&v41[v39 + v38 * v120], v213, v214);
      v72 = v47;
      if (v207 == v118)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    swift_once();
  }

  if (sub_100749314())
  {
    (*(v187 + 104))(v186, enum case for VideoFillMode.scaleAspectFill(_:), v188);
    sub_10074EC14();
    sub_10074F2A4();
    v75 = v189;
    sub_100750504();

    (v206[7])(v75, 0, 1, v207);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v76 = v192;
    sub_10074EC24();
    v77 = sub_100741264();
    (*(*(v77 - 8) + 56))(v76, 0, 1, v77);
    v78 = v193;
    sub_10074EBE4();
    v79 = v194;
    sub_10074EBD4();
    v80 = type metadata accessor for VideoView();
    sub_100287AD4(&qword_1009230E0, 255, type metadata accessor for VideoView);
    v214 = v80;
    v81 = sub_1007464A4();
    sub_10000C8CC(v79, &unk_1009281C0);
    sub_10000C8CC(v78, &unk_1009281C0);
    sub_10000C8CC(v76, &unk_100923970);
    sub_10000C8CC(v216, &unk_1009276E0);
    v82 = v210;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v84 = Strong;
      v85 = [Strong superview];
      if (!v85)
      {
        goto LABEL_26;
      }

      v86 = v85;
      sub_100016C60(0, &qword_100922300);
      v87 = v82;
      v88 = sub_100753FC4();

      if (v88)
      {
        v89 = swift_unknownObjectWeakLoadStrong();
        if (v89)
        {
          v84 = v89;
          [v89 removeFromSuperview];
LABEL_26:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v90 = swift_unknownObjectWeakLoadStrong();
    if (v90)
    {
      v91 = v90;
      [v82 addSubview:v90];
    }

    [v82 setNeedsLayout];

    v92 = swift_unknownObjectWeakLoadStrong();
    if (v92)
    {
      v93 = v92;
      sub_10074EC14();
      sub_10074F374();

      sub_100287AD4(&unk_100923110, 255, type metadata accessor for VideoView);
      sub_100744204();

      (*(v195 + 8))(v200, v177);
    }

    else
    {
      (*(v195 + 8))(v200, v177);
    }

    v102 = v204;
  }

  else if (sub_100749344())
  {
    sub_1007433C4();
    v98 = sub_1007431C4();
    [v98 setContentMode:2];
    sub_10074F364();
    sub_100287AD4(&qword_100925570, 255, &type metadata accessor for ArtworkView);
    sub_100744204();
    v99 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v100 = v210;
    v101 = *&v210[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
    v102 = v204;
    v103 = v98;
    if (v101)
    {
      [v101 removeFromSuperview];
      v104 = *&v100[v99];
    }

    else
    {
      v104 = 0;
    }

    *&v100[v99] = v98;
    v109 = v98;

    [v100 addSubview:v109];
    [v100 setNeedsLayout];
  }

  else
  {
    v105 = sub_100749304();
    v102 = v204;
    if (v105)
    {
      v106 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_10074F2A4();
      sub_100750504();
      sub_100750474();
      (v206[1])(v37, v207);
      v107 = v178;
      sub_10074F294();
      sub_10074F254();
      (*(v179 + 8))(v107, v180);
      sub_10074F374();
      sub_10074F324();
      sub_100743364();
      [v106 setContentMode:sub_10074F184()];
      sub_100747FB4();
      sub_1007433A4();
      if (!sub_10074F1E4())
      {
        sub_100016C60(0, &qword_100923500);
        sub_100753E34();
      }

      sub_100743224();
      sub_100287AD4(&qword_100925570, 255, &type metadata accessor for ArtworkView);
      sub_100744204();
      v108 = v106;
      sub_100287578(v106);
    }
  }

LABEL_72:
  sub_100749384();
  (*(v211 + 104))(v208, v185, v212);
  sub_100287AD4(&qword_10092FB78, 255, &type metadata accessor for EditorialSearchResultType);
  sub_100753274();
  sub_100753274();
  if (v216[0] == v215)
  {
    v133 = v212;
    v134 = *(v211 + 8);
    v134(v208, v212);
    v134(v102, v133);

LABEL_75:
    v139 = sub_100749374();
    if (v139 >> 62)
    {
      v140 = sub_100754664();
    }

    else
    {
      v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v138 = v210;
    if (v140)
    {
      v141 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
      v142 = *&v210[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
      if (v142)
      {
        goto LABEL_79;
      }

      v152 = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v153 = *&v138[v141];
      if (v153)
      {
        [v153 removeFromSuperview];
        v154 = *&v138[v141];
      }

      else
      {
        v154 = 0;
      }

      *&v138[v141] = v152;
      v165 = v152;

      if (v165)
      {
        v166 = v165[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
        v165[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 6;
        sub_1000C95D0(v166);
        [v138 addSubview:v165];
      }

      [v138 setNeedsLayout];

      v167 = *&v138[v141];
      if (v167)
      {
        type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
        v168 = v167;
        sub_100752754();
        v169 = *&v216[0];
        v170 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
        v171 = *&v168[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        v172 = v171;
        sub_1000CAC84(v169);
        v173 = *&v168[v170];
        *&v168[v170] = v169;
        v174 = v169;

        sub_1000CADE8(v171);
        v142 = *&v138[v141];
        if (v142)
        {
LABEL_79:
          v143 = v142;
          [v138 bringSubviewToFront:v143];
          v144 = sub_100749374();
          sub_1000C94C4(v144);
        }
      }
    }

    v145 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView;
    v146 = *&v138[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_appEventStoryFormattedDateView];
    if (v146)
    {
      v147 = v146;
      v148 = sub_1007493B4();
      v149 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
      swift_beginAccess();
      v150 = *&v147[v149];
      if (v150)
      {
        v151 = v150;
        [v151 setBackgroundColor:v148];
      }

      else
      {

        v147 = v148;
      }

      v155 = *&v138[v145];
      if (v155)
      {
        v156 = v155;
        v157 = v182;
        sub_100749364();
        v158 = sub_100746B84();
        (*(v183 + 8))(v157, v176);
        [v156 setOverrideUserInterfaceStyle:v158];
      }
    }

    v159 = OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView;
    v160 = *&v138[OBJC_IVAR____TtC22SubscribePageExtension32EditorialSearchResultContentView_editorialArtworkView];
    if (v160)
    {
      v161 = v160;
      sub_100746E74();

      v162 = *&v138[v159];
      if (v162)
      {
        v163 = v162;
        if (!sub_1007493B4())
        {
          v164 = [objc_opt_self() clearColor];
        }

        sub_100746E64();
      }
    }
  }

  else
  {
    v135 = sub_100754754();
    v136 = v212;
    v137 = *(v211 + 8);
    v137(v208, v212);
    v137(v102, v136);

    v138 = v210;
    if (v135)
    {
      goto LABEL_75;
    }
  }

  [v138 setNeedsLayout];
}