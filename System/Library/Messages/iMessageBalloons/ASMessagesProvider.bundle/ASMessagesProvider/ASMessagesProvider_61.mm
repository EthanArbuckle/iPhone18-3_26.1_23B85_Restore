void sub_6DF04C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_contentBackgroundBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaReplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_requirementsLabel) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_closeButtonActionBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_dismissTapGestureActionBlock);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoTapGestureRecognizer) = 0;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButtonActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_shareButton) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureRecognizer) = 0;
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupTapGestureActionBlock);
  *v4 = 0;
  v4[1] = 0;
  v5 = v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkViewSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mainArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_lockupArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_videoBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_isCollapsing) = 0;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = sub_75CA40();
  (*(*(v8 - 8) + 104))(v0 + v6, v7, v8);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_includeBorderInDarkMode) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_defaultPageMargin) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider22AppEventDetailPageView_notifyMeButtonPresenter) = 0;
  sub_76A840();
  __break(1u);
}

void sub_6DF260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v73 = a3;
  v71 = a2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v70 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_764CF0();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v68 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v64 - v11;
  v12 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v64 - v13;
  v15 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v15 - 8);
  v17 = &v64 - v16;
  v18 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v64 - v19;
  v21 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v21 - 8);
  v23 = &v64 - v22;
  v24 = sub_BD88(&unk_948730);
  *&v25 = __chkstk_darwin(v24 - 8).n128_u64[0];
  v27 = &v64 - v26;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView;
  v29 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView];
  v77 = a1;
  if (v29 || (v30 = [v4 traitCollection], v31 = v8, v32 = v4, v33 = sub_672CA4(v30), v30, v34 = v33, v4 = v32, v8 = v31, sub_6724CC(v34), sub_6724D8(0), (v29 = *&v4[v28]) != 0))
  {
    v35 = sub_BD88(&unk_948740);
    v36 = *(*(v35 - 8) + 56);
    v76 = v27;
    v36(v27, 1, 1, v35);
    v69 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView;
    v37 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView];
    v75 = v29;
    v38 = sub_764EE0();
    if (v38)
    {
    }

    [v37 setHidden:v38 == 0];
    v39 = v75;
    v40 = *&v75[OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_lockupView];
    v41 = sub_758C70();
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    v42 = sub_75BD30();
    (*(*(v42 - 8) + 56))(v20, 1, 1, v42);
    v43 = sub_BD88(&unk_9457F0);
    (*(*(v43 - 8) + 56))(v17, 1, 1, v43);
    v44 = sub_765870();
    (*(*(v44 - 8) + 56))(v14, 1, 1, v44);
    sub_4A18A4(v77, v40, v76, v73, 1, 0, v23, v20, v14, v17);
    sub_10A2C(v14, &unk_9457D0);
    v40[OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_1FD89C();
    [v40 setNeedsLayout];
    sub_10A2C(v17, &unk_94AC40);
    sub_10A2C(v20, &unk_9457E0);
    sub_10A2C(v23, &unk_94A780);
    v45 = v74;
    sub_764F00();
    v46 = sub_764DE0();
    v48 = v47;
    v67 = sub_764E40();
    v50 = v49;
    v51 = sub_764E00();
    if (v48 && v50)
    {
      v52 = v51;
      v66 = v46;
      v53 = v72;
      v54 = v68;
      (*(v72 + 16))(v68, v45, v8);
      sub_BD88(&unk_944300);
      sub_768900();
      sub_768ED0();
      v65 = v8;
      v55 = v78[0];
      type metadata accessor for CrossLinkPresenter();
      swift_allocObject();
      v56 = v75;
      v73 = v4;
      v57 = v56;
      v39 = v75;
      v58 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v54, v66, v48, v67, v50, v52 & 1, v29, &off_884798, v55, *(&v55 + 1));
      (*(v53 + 8))(v74, v65);
      sub_10A2C(v76, &unk_948730);
      v59 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v57[v59] = v58;
      v4 = v73;
    }

    else
    {

      v60 = OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v39[v60] = 0;

      sub_11EE80(0, 0);
      (*(v72 + 8))(v45, v8);
      sub_10A2C(v76, &unk_948730);
    }

    if (sub_764EE0())
    {
      if (qword_93E050 != -1)
      {
        swift_once();
      }

      v61 = sub_75CF00();
      sub_BE38(v61, qword_9A0698);
      sub_75CDD0();
      v62 = v69;
      [*&v29[v69] contentMode];
      sub_765330();
      v63 = *&v29[v62];
      sub_7652E0();
      sub_7591B0();
      [v63 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_396E8();
        sub_76A030();
      }

      sub_759070();

      v79 = 0;
      memset(v78, 0, sizeof(v78));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_75A040();

      sub_10A2C(v78, &unk_9443A0);
    }

    [v4 setNeedsLayout];
  }
}

void sub_6DFBAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_75D2C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7666D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_lockupView])
  {
    v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView];
    if (v18)
    {
      goto LABEL_9;
    }
  }

  sub_6724CC(0);
  if (qword_93D530 != -1)
  {
    swift_once();
  }

  v14 = sub_BE38(v10, qword_99E7A0);
  (*(v11 + 16))(v13, v14, v10);
  if (qword_93E058 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v6, qword_9A06B0);
  (*(v7 + 16))(v9, v15, v6);
  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  v17 = sub_5B8B0(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  [v17 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];
  sub_6724D8(v17);
  v18 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider16FooterLockupView_arcadeLockupView];
  if (v18)
  {
LABEL_9:
    v19 = v18;
    sub_579E1C(a1, a2);
    [v3 setNeedsLayout];
  }
}

void sub_6DFE70(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider19CrossLinkLockupView_artworkView);

    v5 = a1;
    sub_759190();
  }
}

uint64_t sub_6DFEF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6DFF34(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_768380();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_7683C0();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7652D0();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = sub_76A7C0();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_76A770();
      }

      else
      {
        v17 = a1[v16 + 4];
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_B2EC(v17, a3, a4);

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = sub_769B20();
    sub_6E10C4(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = sub_76A860();
    }

    else
    {
      a3 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_BE70(0, &qword_940340);
      v28 = sub_769970();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_6E19D4;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_89D930;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_6E19F4(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350);
      sub_4C874();
      v34 = v40;
      v35 = v36;
      sub_76A5A0();
      sub_769980();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &qword_93E000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = sub_76A770();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_7619D0();
      sub_765330();

      sub_7619D0();
      v25 = sub_765370();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[101]];
        sub_7652E0();
        sub_7591B0();
        [v26 setContentMode:sub_765140()];
        sub_75DEF0();
        sub_7591F0();
        if (!sub_7651A0())
        {
          sub_BE70(0, &qword_93E540);
          sub_76A030();
        }

        sub_759070();

        v22 = a1;
        v8 = v44;
      }

      sub_759210();
      sub_6E19F4(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A050();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_6E0624(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v15 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v20.receiver = v6;
      v20.super_class = v8;
      v9 = objc_msgSendSuper2(&v20, "isSelected");
      v19.receiver = v6;
      v19.super_class = v8;
      objc_msgSendSuper2(&v19, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel];
      v18.receiver = v6;
      v18.super_class = v8;
      if (objc_msgSendSuper2(&v18, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v15}];
      v12 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

uint64_t sub_6E07D8(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_768AB0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = sub_76A770();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_761990();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_1F7B64(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        sub_75F4B0();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

char *sub_6E0A60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_BD88(&unk_93F5C0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_77B6C0;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_BE70(0, &qword_93E550);
  v16 = v14;
  v17 = v12;
  isa = sub_769450().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_BD88(&qword_9477F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_77B6D0;
  v22 = sub_767B80();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v42);
  v24 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_77FA60;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_6E0FA4();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_BE70(0, &qword_942270);
  v38 = sub_769450().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_77B6D0;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v42);
  return v23;
}

id sub_6E0FA4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_6E10C4(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v29 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_BE70(0, &qword_93E550);
  v5 = sub_769460();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = [v2 arrangedSubviews];
  v12 = sub_769460();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)); j; j = sub_76A860())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_76A770();
      }

      else
      {
        if (v14 >= *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v29 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)); ; k = sub_76A860())
    {
      v31 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_76A770();
        }

        else
        {
          if (v3 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v31 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = sub_76A860();
    }

    else
    {
      v23 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = sub_76A770();
        }

        else
        {
          if (v24 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }
}

uint64_t sub_6E14CC(char *a1)
{
  v2 = sub_6E0FA4();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_BE70(0, &qword_93E550);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_769F70();
}

id sub_6E1684()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_769B20() & 1;
  result = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn] isHidden];
  if (v3 != result)
  {
    sub_6E10C4(v3);
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_76A770();
        }

        else
        {
          if (v7 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_6E1920()
{
  [*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_6E0FA4();
  [v3 constant];

  return v2;
}

uint64_t sub_6E199C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6E19DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6E19F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6E1A3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_6E1A74()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_6E1ACC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  sub_76A840();
  __break(1u);
}

uint64_t sub_6E1BA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v50 = sub_7656C0();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v54);
  v57 = &v47 - v4;
  v5 = sub_BD88(&qword_963790);
  __chkstk_darwin(v5 - 8);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v47 - v9;
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v14 - 8);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v52 = &v47 - v17;
  v18 = sub_BD88(&unk_94F1F0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v47 - v20;
  v56 = sub_764930();
  v53 = *(v56 - 8);
  __chkstk_darwin(v56);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DAA0();
  swift_getKeyPath();
  v55 = v23;
  sub_768750();

  v24 = *(v19 + 8);
  v24(v21, v18);
  v49 = a1;
  sub_75DA50();
  sub_10A2C(v7, &qword_963790);
  sub_2C88C(v10, v13);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10A2C(v13, &qword_963790);
    v25 = 1;
    v26 = v52;
  }

  else
  {
    swift_getKeyPath();
    v26 = v52;
    sub_768750();

    v24(v13, v18);
    v25 = 0;
  }

  v27 = v53;
  v28 = v56;
  (*(v53 + 56))(v26, v25, 1, v56);
  v29 = v55;
  v30 = *(v54 + 48);
  v31 = v57;
  (*(v27 + 16))(v57, v55, v28);
  sub_2C8FC(v26, v31 + v30);
  if ((*(v27 + 48))(v31 + v30, 1, v28) == 1)
  {
    v32 = v47;
    sub_75DA20();
    sub_765570();
    v34 = v33;
    (*(v48 + 8))(v32, v50);
    v35 = v58;
    v58[3] = &type metadata for CGFloat;
    v35[4] = &protocol witness table for CGFloat;
    *v35 = v34;
    sub_10A2C(v26, &qword_951BE0);
    v36 = *(v27 + 8);
    v36(v29, v28);
    sub_10A2C(v31 + v30, &qword_951BE0);
    return (v36)(v31, v28);
  }

  else
  {
    v38 = v51;
    sub_2C8FC(v31 + v30, v51);
    v39 = (*(v27 + 88))(v38, v28);
    if (v39 == enum case for Shelf.ContentType.appShowcase(_:) || v39 == enum case for Shelf.ContentType.arcadeShowcase(_:))
    {
      sub_10A2C(v31 + v30, &qword_951BE0);
      v42 = *(v27 + 8);
      v42(v31, v28);
      if (qword_93DCF0 != -1)
      {
        swift_once();
      }

      v43 = sub_766CA0();
      v44 = sub_BE38(v43, qword_99FE18);
      v45 = v58;
      v58[3] = v43;
      v45[4] = &protocol witness table for StaticDimension;
      v46 = sub_B1B4(v45);
      (*(*(v43 - 8) + 16))(v46, v44, v43);
      sub_10A2C(v26, &qword_951BE0);
      return (v42)(v29, v28);
    }

    else
    {
      v40 = *(v27 + 8);
      v40(v51, v28);
      v41 = v58;
      v58[3] = &type metadata for Double;
      v41[4] = &protocol witness table for Double;
      *v41 = 0;
      sub_10A2C(v26, &qword_951BE0);
      v40(v29, v28);
      return sub_10A2C(v31, &qword_93F918);
    }
  }
}

uint64_t sub_6E22C8@<X0>(void *a1@<X8>)
{
  v47 = a1;
  v43 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v43);
  v46 = &v40 - v1;
  v2 = sub_BD88(&qword_963790);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v11 - 8);
  v42 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v40 - v14;
  v15 = sub_BD88(&unk_94F1F0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - v17;
  v45 = sub_764930();
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DAA0();
  swift_getKeyPath();
  v44 = v20;
  sub_768750();

  v21 = *(v16 + 8);
  v21(v18, v15);
  sub_75DA50();
  sub_10A2C(v7, &qword_963790);
  sub_2C88C(v4, v10);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_10A2C(v10, &qword_963790);
    v22 = 1;
    v23 = v40;
  }

  else
  {
    swift_getKeyPath();
    v24 = v40;
    sub_768750();

    v21(v10, v15);
    v22 = 0;
    v23 = v24;
  }

  v25 = v41;
  v26 = v45;
  (*(v41 + 56))(v23, v22, 1, v45);
  v27 = v44;
  v28 = *(v43 + 48);
  v29 = v46;
  (*(v25 + 16))(v46, v44, v26);
  sub_2C8FC(v23, v29 + v28);
  v30 = *(v25 + 88);
  v31 = v30(v29, v26);
  v32 = enum case for Shelf.ContentType.horizontalRule(_:);
  v33 = v42;
  if (v31 == enum case for Shelf.ContentType.horizontalRule(_:))
  {
    goto LABEL_10;
  }

  if ((*(v25 + 48))(v29 + v28, 1, v26) != 1)
  {
    sub_2C8FC(v29 + v28, v33);
    if (v30(v33, v26) == v32)
    {
      sub_10A2C(v29 + v28, &qword_951BE0);
      (*(v25 + 8))(v29, v26);
LABEL_11:
      v34 = v47;
      v47[3] = &type metadata for Double;
      v34[4] = &protocol witness table for Double;
      *v34 = 0;
      sub_10A2C(v23, &qword_951BE0);
      return (*(v25 + 8))(v27, v26);
    }

    (*(v25 + 8))(v33, v26);
  }

  if (v30(v29, v26) == enum case for Shelf.ContentType.appShowcase(_:))
  {
LABEL_10:
    sub_10A2C(v29 + v28, &qword_951BE0);
    goto LABEL_11;
  }

  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v36 = sub_766CA0();
  v37 = sub_BE38(v36, qword_99FE18);
  v38 = v47;
  v47[3] = v36;
  v38[4] = &protocol witness table for StaticDimension;
  v39 = sub_B1B4(v38);
  (*(*(v36 - 8) + 16))(v39, v37, v36);
  sub_10A2C(v23, &qword_951BE0);
  (*(v25 + 8))(v27, v26);
  return sub_10A2C(v29, &qword_93F918);
}

uint64_t sub_6E2930(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(&v30 + 1) = sub_BE70(0, &qword_93E550);
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

  sub_10914(&v29, v35);
  v36 = a2;
  v37 = 0;
  v38 = 0;
  v39 = v9;
  v40 = v10;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v12 = *&v4[v11];
  v13 = a1;

  v14 = sub_6E2D34(v13, v12);

  if (v14)
  {
    v15 = swift_beginAccess();
    __chkstk_darwin(v15);
    result = sub_23B9D8(&v4[v11], sub_6E3294);
    v17 = *(*&v4[v11] + 16);
    if (v17 < result)
    {
      __break(1u);
      return result;
    }

    sub_4A7D30(result, v17);
    swift_endAccess();
    v18 = &selRef_bringSubviewToFront_;
  }

  else
  {
    v18 = &selRef_addSubview_;
  }

  [v4 *v18];
  *&v29 = v13;
  sub_371864(v35, &v29 + 8);
  swift_beginAccess();
  v19 = *&v4[v11];
  v20 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v11] = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_7C00C(0, *(v19 + 2) + 1, 1, v19);
    *&v4[v11] = v19;
  }

  v23 = *(v19 + 2);
  v22 = *(v19 + 3);
  if (v23 >= v22 >> 1)
  {
    v19 = sub_7C00C((v22 > 1), v23 + 1, 1, v19);
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
  return sub_37189C(v35);
}

double *sub_6E2C24(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_143F88(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_23BBD4(v4, &v12);
      sub_371864(&v13, v14);
      sub_23BC44(&v12);
      v15 = v2;
      v6 = *(v2 + 2);
      v5 = *(v2 + 3);
      if (v6 >= v5 >> 1)
      {
        sub_143F88((v5 > 1), v6 + 1, 1);
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

BOOL sub_6E2D34(uint64_t a1, uint64_t a2)
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
    sub_BE70(0, &qword_94AB00);
    v5 = sub_76A1C0();
    v2 = v4;
  }

  while ((v5 & 1) == 0);
  return v3 != 0;
}

uint64_t sub_6E2DC4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_7664F0();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v5);
  sub_51DAB0(v1 + OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_layoutMetrics, v16);
  swift_beginAccess();

  v9 = sub_6E2C24(v8);

  v17 = v9;
  sub_75D650();
  sub_371388(v1, v10, v11, v12, v13);
  (*(v4 + 8))(v7, v3);
  return sub_6E32E8(v16);
}

double sub_6E2F70(uint64_t a1, double a2)
{
  v5 = sub_75E870();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  sub_51DAB0(v2 + OBJC_IVAR____TtC18ASMessagesProvider18OnboardingTrayView_layoutMetrics, v15);
  swift_beginAccess();

  v10 = sub_6E2C24(v9);

  v16 = v10;
  if (*(v10 + 2))
  {
    sub_370BF0(a1, v8);
    sub_75E7B0();
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

  sub_6E32E8(v15);
  return a2;
}

char *sub_6E333C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_7593D0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_shadowView;
  *&v5[v17] = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_cardPlaceholder;
  v19 = *(v14 + 104);
  v42 = enum case for CornerStyle.continuous(_:);
  v41 = v19;
  v19(v16);
  sub_75CD70();
  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 secondarySystemBackgroundColor];
  [v22 setBackgroundColor:v23];

  sub_75CCD0();
  v40 = *(v14 + 8);
  v40(v16, v13);
  *&v5[v18] = v22;
  v24 = type metadata accessor for TodayCardPlaceholderView();
  v43.receiver = v5;
  v43.super_class = v24;
  v25 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v30 = OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_shadowView;
  v31 = qword_93C528;
  v32 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_shadowView];
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = sub_765080();
  v34 = sub_BE38(v33, qword_99B4D8);
  v35 = *(v33 - 8);
  (*(v35 + 16))(v12, v34, v33);
  (*(v35 + 56))(v12, 0, 1, v33);
  sub_758E60();

  v36 = *&v29[v30];
  v41(v16, v42, v13);
  v37 = v36;
  sub_758E70();

  v40(v16, v13);
  [v29 addSubview:*&v29[v30]];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_cardPlaceholder]];

  return v29;
}

id sub_6E3814()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayCardPlaceholderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_6E38B8()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_shadowView;
  *(v1 + v6) = [objc_allocWithZone(sub_758E80()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider24TodayCardPlaceholderView_cardPlaceholder;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_75CD70();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 secondarySystemBackgroundColor];
  [v10 setBackgroundColor:v11];

  sub_75CCD0();
  (*(v3 + 8))(v5, v2);
  *(v1 + v7) = v10;
  sub_76A840();
  __break(1u);
}

double sub_6E3AEC()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7587A0();
  sub_6E3CB4(&qword_93F6D8, &type metadata accessor for AppPromotion);
  sub_75C750();
  v4 = v13;
  if (!v13)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v7 = sub_527DE4();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_271EC(v6, v4, v7, ObjectType);
  v10 = v9;
  swift_unknownObjectRelease_n();

  return v10;
}

uint64_t sub_6E3CB4(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_6E3D00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdsSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6E3D6C()
{
  v1 = v0;
  v2 = sub_BD88(&unk_944E70);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  v8[1] = sub_75A3D0();
  sub_759D00();
  sub_768900();
  sub_6E45B8(&qword_9513B0, &type metadata accessor for LinkableText);
  sub_768820();

  v5 = sub_BD88(&unk_944E80);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_2FA898(v4, v1 + v6);
  swift_endAccess();
  sub_5B0DB4();
  return sub_2FA908(v4);
}

uint64_t sub_6E3F10()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v4 = sub_766CA0();
  sub_BE38(v4, qword_99FE18);
  sub_766470();
  sub_766700();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

double sub_6E40E8(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33[0] = a1;
  v7 = sub_75E410();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75E430();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_762D10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F08();
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v18 = sub_7666D0();
  sub_BE38(v18, qword_99F130);
  v19 = [a5 traitCollection];
  v33[1] = a5;
  v20 = v19;
  v21 = sub_769E10();

  sub_75A3D0();
  sub_759CE0();

  v22 = sub_758EC0();

  v23 = sub_7653B0();
  v38 = v23;
  v39 = sub_6E45B8(&qword_93F9B0, &type metadata accessor for Feature);
  v24 = sub_B1B4(v37);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v33[0] = v22;
  v25 = v21;
  sub_765C30();
  sub_BEB8(v37);
  sub_762CD0();
  sub_762CE0();
  (*(v15 + 8))(v17, v14);
  if (qword_93DD40 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v7, qword_99FFD0);
  (*(v8 + 16))(v10, v26, v7);
  v27 = v38;
  v28 = v39;
  v29 = sub_B170(v37, v38);
  v36[3] = v27;
  v36[4] = *(v28 + 8);
  v30 = sub_B1B4(v36);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  sub_75E420();
  sub_6E45B8(&unk_94E500, &type metadata accessor for PrivacyFooterLayout);
  v31 = v35;
  sub_7665A0();

  (*(v34 + 8))(v13, v31);
  sub_BEB8(v37);
  return a2;
}

uint64_t sub_6E45B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for AppPromotionSubtitleView()
{
  result = qword_962AE8;
  if (!qword_962AE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6E46A8(uint64_t a1)
{
  v3 = [*(v1 + qword_962AD8) layer];
  sub_1ED18(a1, v12, &unk_93FBD0);
  v4 = v13;
  if (v13)
  {
    v5 = sub_B170(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_76A930();
    (*(v6 + 8))(v9, v4);
    sub_BEB8(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10A2C(a1, &unk_93FBD0);
}

uint64_t sub_6E4840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_765240();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_962AD8);
  if (v10)
  {
    v11 = sub_769210();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_962AE0);
  [v12 setHidden:a3 == 0];
  sub_75A110();
  result = sub_7688F0();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    sub_765250();
    sub_765210();
    v14 = *(v6 + 8);
    v14(v8, v5);
    sub_765330();
    sub_765250();
    v15 = sub_765210();
    v14(v8, v5);
    [v12 setContentMode:v15];
    sub_759210();
    sub_6E5D70(&qword_945810, &type metadata accessor for ArtworkView);
    sub_75A050();
  }
}

uint64_t sub_6E4AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = sub_7672F0();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_766D70();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_767030();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    sub_767020();
    if (qword_93E1E0 != -1)
    {
      swift_once();
    }

    v22 = sub_7666D0();
    sub_BE38(v22, qword_962AB8);
    sub_766FF0();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    sub_766D50();

    sub_766D90();
    sub_769A00();
    v36 &= 1u;
    v23 = sub_75AB90();
    swift_allocObject();
    v24 = sub_75AB80();
    v45 = v23;
    v46 = sub_6E5D70(&qword_93F440, &type metadata accessor for EmptyPlaceable);
    v44[0] = v24;
    sub_7672D0();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_B1B4(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_B1B4(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_6E551C(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10A2C(&v41, &unk_941EB0);
    return sub_10A2C(v44, &unk_941EB0);
  }

  else
  {
    v29 = sub_75AB90();
    swift_allocObject();
    v30 = sub_75AB80();
    a6[3] = v29;
    result = sub_6E5D70(&qword_93F440, &type metadata accessor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

uint64_t sub_6E4F80()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_962AB8);
  v1 = sub_BE38(v0, qword_962AB8);
  if (qword_93DBB8 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99FB20);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_6E5048(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_962AD8;
  if (qword_93E1E0 != -1)
  {
    swift_once();
  }

  v13 = sub_7666D0();
  v14 = sub_BE38(v13, qword_962AB8);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(sub_75BB20());
  *&v2[v12] = sub_75BB10();
  v17 = qword_962AE0;
  sub_759210();
  *&v2[v17] = sub_759020();
  v2[qword_962AD0] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_962AD8;
  v20 = *&v18[qword_962AD8];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_962AE0;
  [*&v22[qword_962AE0] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_6E53B4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_962AD8];
  v17[3] = sub_75BB20();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_962AE0];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = sub_759210();
    v8 = sub_6E5D70(&unk_93E520, &type metadata accessor for ArtworkView);
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_962AD0];
  v10 = [v1 traitCollection];
  sub_6E551C(v17, &v12, v9, v10, a1);

  sub_10A2C(&v12, &unk_941EB0);
  return sub_10A2C(v17, &unk_941EB0);
}

uint64_t sub_6E551C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = sub_766BD0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ED18(a1, &v39, &unk_941EB0);
  if (v40)
  {
    sub_10914(&v39, v41);
    v16 = sub_769A00();
    v17 = 16.0;
    if ((a3 & 1) == 0)
    {
      v17 = 14.0;
    }

    if (v16)
    {
      v18 = 25.0;
    }

    else
    {
      v18 = v17;
    }

    sub_26F08();
    if (qword_93E1E0 != -1)
    {
      swift_once();
    }

    v19 = sub_7666D0();
    sub_BE38(v19, qword_962AB8);
    v20 = sub_769E10();
    [v20 lineHeight];
    v22 = v21;
    sub_766BA0();
    sub_1ED18(a2, &v36, &unk_941EB0);
    if (v37)
    {
      if ((v22 - v18) * 0.5 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = (v22 - v18) * 0.5;
      }

      sub_10914(&v36, &v39);
      sub_134D8(&v39, &v36);
      v35[3] = sub_7672F0();
      v35[4] = &protocol witness table for Resize;
      sub_B1B4(v35);
      sub_7672D0();
      v34[8] = &type metadata for CGFloat;
      v34[9] = &protocol witness table for CGFloat;
      *&v34[5] = v23;
      v24 = sub_766970();
      v34[3] = v24;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v34);
      sub_766960();
      v33[3] = v24;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v33);
      sub_766960();
      v32[3] = v24;
      v32[4] = &protocol witness table for ZeroDimension;
      sub_B1B4(v32);
      sub_766960();
      v37 = sub_767340();
      v38 = &protocol witness table for Margins;
      sub_B1B4(&v36);
      sub_767350();
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = v6;
      v26 = a4;
      sub_766B90();

      sub_BEB8(&v39);
      sub_BEB8(&v36);
    }

    else
    {
      sub_10A2C(&v36, &unk_941EB0);
    }

    sub_766B90();
    a5[3] = v12;
    a5[4] = &protocol witness table for HorizontalStack;
    v30 = sub_B1B4(a5);
    (*(v13 + 32))(v30, v15, v12);

    return sub_BEB8(v41);
  }

  else
  {
    sub_10A2C(&v39, &unk_941EB0);
    v27 = sub_75AB90();
    swift_allocObject();
    v28 = sub_75AB80();
    a5[3] = v27;
    result = sub_6E5D70(&qword_93F440, &type metadata accessor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v28;
  }

  return result;
}

void sub_6E5974()
{
  v1 = *(v0 + qword_962AE0);
}

void sub_6E59B4(uint64_t a1)
{
  v2 = *(a1 + qword_962AE0);
}

unint64_t sub_6E5A1C()
{
  result = qword_962B38;
  if (!qword_962B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_962B38);
  }

  return result;
}

uint64_t sub_6E5A70()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_6E5B0C()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_962AD8;
  if (qword_93E1E0 != -1)
  {
    swift_once();
  }

  v10 = sub_7666D0();
  v11 = sub_BE38(v10, qword_962AB8);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_75BB20());
  *(v1 + v9) = sub_75BB10();
  v14 = qword_962AE0;
  sub_759210();
  *(v1 + v14) = sub_759020();
  sub_76A840();
  __break(1u);
}

uint64_t sub_6E5D70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6E5DB8(uint64_t a1)
{
  v59 = a1;
  v58 = sub_BD88(&qword_94B9B8);
  v66.i64[0] = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = v47 - v1;
  v2 = sub_BD88(&qword_940A60);
  __chkstk_darwin(v2 - 8);
  v68 = v47 - v3;
  v64 = sub_765610();
  v69 = *(v64 - 8);
  __chkstk_darwin(v64);
  v5 = (v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_BD88(&qword_940A68);
  __chkstk_darwin(v6 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v47 - v10;
  __chkstk_darwin(v12);
  v57 = v47 - v13;
  __chkstk_darwin(v14);
  v16 = v47 - v15;
  sub_BD88(&qword_940A70);
  v17 = *(sub_765540() - 8);
  v67 = *(v17 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v54 = v19;
  *(v19 + 16) = xmmword_780120;
  v20 = v19 + v18;
  v72 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v72 = 0x4020000000000000;
  v70 = 0x4030000000000000;
  sub_7655B0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #16.0 }

  *v5 = _Q0;
  v62 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v65 = *(v69 + 104);
  v69 += 104;
  v26 = v64;
  v65(v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v72) = 0;
  sub_7655D0();
  v72 = 0;
  v61 = v8;
  sub_7655D0();
  sub_765500();
  v72 = 0x3FF0000000000000;
  sub_7655D0();
  v72 = 0x4024000000000000;
  v70 = 0x4034000000000000;
  sub_7655B0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  __asm { FMOV            V0.2D, #20.0 }

  v56 = v5;
  *v5 = _Q0;
  v29 = v62;
  v30 = v65;
  (v65)(v5, v62, v26);
  LOBYTE(v72) = 0;
  sub_7655D0();
  v72 = 0;
  sub_7655D0();
  v31 = v67;
  v63 = v20;
  v60 = v16;
  top = UIEdgeInsetsZero.top;
  v52 = left;
  v32 = v56;
  sub_765500();
  v50 = 2 * v31;
  v72 = 0x3FF0000000000000;
  sub_7655D0();
  v72 = 0x4034000000000000;
  sub_7655D0();
  v72 = 0x4038000000000000;
  v55 = v11;
  sub_7655D0();
  v48 = vdupq_n_s64(0x4041000000000000uLL);
  *v32 = v48;
  v33 = v64;
  v30(v32, v29, v64);
  LOBYTE(v72) = 0;
  sub_7655D0();
  v72 = 0;
  sub_7655D0();
  v34 = v50;
  sub_765500();
  v74 = 0x4000000000000000;
  v47[1] = v34 + v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  v50 = sub_263040();
  v35 = v53;
  sub_760920();
  v36 = v58;
  sub_760930();
  v37 = *(v66.i64[0] + 8);
  v66.i64[0] += 8;
  v49 = v37;
  v37(v35, v36);
  v70 = v72;
  sub_7655D0();
  v72 = 0x4034000000000000;
  sub_7655D0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  v38 = v56;
  *v56 = v48;
  v39 = v62;
  (v65)(v38, v62, v33);
  sub_7697A0();
  LOBYTE(v72) = 0;
  sub_7655D0();
  v72 = 0;
  sub_7655D0();
  sub_765500();
  v74 = 0x4000000000000000;
  v48.i64[0] = 4 * v67;
  v72 = 0;
  v73 = 1;
  v70 = 0x3FF0000000000000;
  v71 = 0;
  sub_760920();
  v40 = v58;
  sub_760930();
  v49(v35, v40);
  v70 = v72;
  sub_7655D0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  v66 = vdupq_n_s64(0x404A000000000000uLL);
  *v38 = v66;
  v41 = v38;
  v42 = v38;
  v43 = v64;
  v44 = v65;
  (v65)(v41, v39, v64);
  LOBYTE(v72) = 0;
  sub_7655D0();
  v72 = 0;
  sub_7655D0();
  v45 = v48.i64[0];
  sub_765500();
  v67 += v45;
  v72 = 0x4000000000000000;
  sub_7655D0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  v72 = 0x4038000000000000;
  sub_7655D0();
  *v42 = v66;
  (v44)(v42, v62, v43);
  LOBYTE(v72) = 0;
  sub_7655D0();
  v72 = 0;
  sub_7655D0();
  sub_765500();
  return v54;
}

uint64_t AppEventFormattedDatePresenter.__allocating_init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *(v5 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v5 + 16) = a1;
  swift_beginAccess();
  *(v5 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_6E7BE4();
  swift_unknownObjectRelease();
  return v5;
}

Swift::Void __swiftcall AppEventFormattedDatePresenter.tearDown()()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

uint64_t sub_6E6B00(uint64_t a1)
{
  v3 = sub_757490();
  v134 = *(v3 - 8);
  v135 = v3;
  __chkstk_darwin(v3);
  v5 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_756DD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v131 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v136 = &v102 - v10;
  __chkstk_darwin(v11);
  v137 = &v102 - v12;
  v13 = sub_BD88(&unk_957130);
  __chkstk_darwin(v13 - 8);
  v132 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v102 - v16;
  __chkstk_darwin(v18);
  v20 = &v102 - v19;
  v139 = sub_7572A0();
  v21 = *(v139 - 8);
  __chkstk_darwin(v139);
  v130 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v133 = &v102 - v24;
  __chkstk_darwin(v25);
  v27 = &v102 - v26;
  __chkstk_darwin(v28);
  v138 = &v102 - v29;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v127 = v7;
    v31 = *(v1 + 32);
    if (!a1)
    {
      ObjectType = swift_getObjectType();
      (*(v31 + 32))(0, 0xE000000000000000, 0, ObjectType, v31);
      return swift_unknownObjectRelease();
    }

    v126 = v6;
    v129 = v31;

    v32 = sub_758430();
    v128 = a1;
    if (v33)
    {
      v34 = v32;
      v35 = v33;
LABEL_14:
      v67 = swift_getObjectType();
      v68 = sub_758440();
      (*(v129 + 32))(v34, v35, v68 & 1, v67);

      swift_unknownObjectRelease();
    }

    sub_758410();
    v37 = v21;
    v40 = *(v21 + 48);
    v38 = v21 + 48;
    v39 = v40;
    v41 = v139;
    if (v40(v20, 1, v139) != 1)
    {
      v122 = v39;
      v123 = v38;
      v43 = v138;
      v44 = v20;
      v45 = *(v37 + 32);
      v45(v138, v44, v41);
      v46 = sub_758450();
      if (!v47)
      {
        (*(v37 + 8))(v43, v41);
        goto LABEL_13;
      }

      v105 = v45;
      v106 = v37 + 32;
      v103 = v46;
      v116 = v47;
      sub_757460();
      v120 = sub_BD88(&qword_951BD8);
      v48 = sub_757480();
      v49 = *(v48 - 8);
      v50 = *(v49 + 72);
      v118 = *(v49 + 80);
      v51 = (v118 + 32) & ~v118;
      v121 = v51;
      v124 = 4 * v50;
      v114 = 5 * v50;
      v52 = swift_allocObject();
      v113 = xmmword_784250;
      v115 = v52;
      *(v52 + 1) = xmmword_784250;
      v125 = v37;
      v53 = v52 + v51;
      v112 = enum case for Calendar.Component.year(_:);
      v104 = v49;
      v54 = *(v49 + 104);
      v54(v52 + v51);
      v111 = enum case for Calendar.Component.month(_:);
      v55 = v50;
      v54(&v53[v50]);
      v50 *= 2;
      v119 = v55;
      v110 = enum case for Calendar.Component.day(_:);
      v107 = v50;
      v54(&v53[v50]);
      v109 = v50 + v55;
      v108 = enum case for Calendar.Component.hour(_:);
      v54(&v53[v50 + v55]);
      v117 = enum case for Calendar.Component.minute(_:);
      v54(&v53[v124]);
      sub_1A1DEC(v115);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_757290();
      sub_757410();

      v56 = *(v125 + 8);
      v125 += 8;
      v115 = v56;
      v56(v27, v139);
      v57 = *(v134 + 1);
      v57(v5, v135);
      sub_757460();
      v58 = v121;
      v59 = swift_allocObject();
      *(v59 + 16) = v113;
      v60 = v59 + v58;
      (v54)(v60, v112, v48);
      (v54)(v60 + v119, v111, v48);
      (v54)(v60 + v107, v110, v48);
      (v54)(v60 + v109, v108, v48);
      v114 = v49 + 104;
      *&v113 = v54;
      (v54)(v60 + v124, v117, v48);
      sub_1A1DEC(v59);
      swift_setDeallocating();
      v124 = v48;
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_757410();
      v61 = v137;
      v62 = v135;
      v63 = v139;

      v57(v5, v62);
      sub_757460();
      sub_757450();
      v134 = v57;
      v57(v5, v62);
      v64 = v122;
      if (v122(v17, 1, v63) == 1)
      {

        v65 = v126;
        v66 = *(v127 + 8);
        v66(v136, v126);
        v66(v61, v65);
        v115(v138, v63);
        v42 = v17;
        goto LABEL_11;
      }

      v69 = v17;
      v70 = v105;
      v105(v133, v69, v63);
      sub_757460();
      v71 = v132;
      sub_757450();
      v72 = v71;
      v134(v5, v62);
      v73 = v64(v71, 1, v63);
      v74 = v63;
      v75 = v127;
      if (v73 != 1)
      {
        v79 = v130;
        v70(v130, v72, v63);
        sub_757460();
        v80 = v121;
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_77B6D0;
        v82 = v124;
        (v113)(v81 + v80, v117, v124);
        sub_1A1DEC(v81);
        swift_setDeallocating();
        v83 = v82;
        v84 = v79;
        (*(v104 + 8))(v81 + v80, v83);
        swift_deallocClassInstance();
        v85 = v131;
        v86 = v133;
        sub_757400();

        v134(v5, v62);
        v87 = sub_756DC0();
        v89 = v88;
        v90 = *(v75 + 8);
        v91 = v126;
        v90(v85, v126);
        if ((v89 & 1) == 0)
        {
          v142._countAndFlagsBits = v103;
          v142._object = v116;
          v143._countAndFlagsBits = 0;
          v143._object = 0xE000000000000000;
          v95 = sub_761130(v142, v87, v143);
          v97 = v96;
          v135 = v96;

          v140 = v95;
          v141 = v97;
          sub_12EC40();
          v34 = sub_76A4D0();
          v35 = v98;
          v99 = v84;
          v100 = v139;
          v101 = v115;
          v115(v99, v139);
          v101(v86, v100);
          v90(v136, v91);
          v90(v137, v91);
          v101(v138, v100);

          goto LABEL_14;
        }

        v92 = v84;
        v93 = v139;
        v94 = v115;
        v115(v92, v139);
        v94(v86, v93);
        v90(v136, v91);
        v90(v137, v91);
        v94(v138, v93);
        goto LABEL_13;
      }

      v76 = v115;
      v115(v133, v63);
      v20 = v72;
      v77 = *(v75 + 8);
      v78 = v126;
      v77(v136, v126);
      v77(v137, v78);
      v76(v138, v74);
    }

    v42 = v20;
LABEL_11:
    sub_10A2C(v42, &unk_957130);
LABEL_13:
    v34 = 0;
    v35 = 0xE000000000000000;
    goto LABEL_14;
  }

  return result;
}

uint64_t AppEventFormattedDatePresenter.view.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a2;
  swift_unknownObjectWeakAssign();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    v6 = *(v2 + v4);
  }

  sub_6E6B00(v6);
  swift_unknownObjectRelease();
}

void (*AppEventFormattedDatePresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 32);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_6E79E0;
}

void sub_6E79E0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 32) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate;
    swift_beginAccess();
    v6 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
    v7 = 0;
    if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
    {
      v7 = *(v4 + v5);
    }

    sub_6E6B00(v7);
  }

  free(v3);
}

uint64_t AppEventFormattedDatePresenter.init(formattedDates:view:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate;
  v7 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer) = 0;
  *(v3 + 16) = a1;
  swift_beginAccess();
  *(v3 + 32) = a3;
  swift_unknownObjectWeakAssign();
  sub_6E7BE4();
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_6E7BE4()
{
  v1 = sub_BD88(&qword_962B50);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  sub_6E7EA4((&v8 - v2));
  v4 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate;
  swift_beginAccess();
  sub_6E9320(v3, v0 + v4);
  swift_endAccess();
  v5 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v6 = 0;
  if (!(*(*(v5 - 8) + 48))(v0 + v4, 1, v5))
  {
    v6 = *(v0 + v4);
  }

  sub_6E6B00(v6);

  sub_1ED18(v0 + v4, v3, &qword_962B50);
  sub_6E8380(v3);
  return sub_10A2C(v3, &qword_962B50);
}

uint64_t AppEventFormattedDatePresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_13238(v0 + 24);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate, &qword_962B50);

  return v0;
}

uint64_t AppEventFormattedDatePresenter.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_13238(v0 + 24);
  sub_10A2C(v0 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_currentFormattedDate, &qword_962B50);

  return swift_deallocClassInstance();
}

uint64_t sub_6E7EA4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_BD88(&unk_957130);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v9 = sub_7572A0();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v43 = &v34 - v13;
  v14 = *(v1 + 16);
  v15 = v14 >> 62;
  if (v14 >> 62)
  {
    goto LABEL_27;
  }

  v16 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
  if (!v16)
  {
LABEL_28:
    v32 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(v16);
    v33 = *(*(v32 - 8) + 56);

    return v33(a1, 1, 1, v32);
  }

LABEL_3:
  result = sub_757250();
  v18 = v14 & 0xC000000000000001;
  v37 = a1;
  v42 = v11;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v19 = *(v14 + 32);
  }

  v20 = v38 + 56;
  a1 = v9;
  v35 = *(v38 + 56);
  v35(v8, 1, 1, v9);
  if (!v15)
  {
    v9 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    v36 = v8;
    if (!v9)
    {
      goto LABEL_21;
    }

    goto LABEL_8;
  }

  v9 = sub_76A860();
  v36 = v8;
  if (v9)
  {
LABEL_8:
    v34 = v20;
    v15 = 0;
    v8 = (v38 + 48);
    v41 = (v38 + 32);
    v39 = v14 & 0xFFFFFFFFFFFFFF8;
    v40 = (v38 + 8);
    while (1)
    {
      if (v18)
      {
        v22 = sub_76A770();
        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_26;
        }

        v11 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v16 = sub_76A860();
          if (!v16)
          {
            goto LABEL_28;
          }

          goto LABEL_3;
        }
      }

      v45 = v22;
      sub_758420();
      if ((*v8)(v5, 1, a1) == 1)
      {

        sub_10A2C(v5, &unk_957130);
      }

      else
      {
        v44 = v19;
        v23 = v9;
        v24 = v14;
        v25 = v18;
        v26 = v42;
        v27 = *v41;
        (*v41)(v42, v5, a1);
        if (sub_757230())
        {

          v29 = v36;
          sub_10A2C(v36, &unk_957130);
          (*v40)(v43, a1);
          v27(v29, v26, a1);
          v35(v29, 0, 1, a1);
          v28 = v44;
          goto LABEL_24;
        }

        (*v40)(v26, a1);

        v18 = v25;
        v14 = v24;
        v9 = v23;
      }

      ++v15;
      v21 = v45;
      v19 = v45;
      if (v11 == v9)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_21:
  v21 = v19;
LABEL_22:
  (*(v38 + 8))(v43, a1);
  v28 = v21;
  v29 = v36;
LABEL_24:
  v30 = v37;
  *v37 = v28;
  v31 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  sub_6E93EC(v29, v30 + *(v31 + 20));
  return (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
}

void sub_6E8380(uint64_t a1)
{
  v3 = sub_757430();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_757420();
  v67 = *(v76 - 8);
  __chkstk_darwin(v76);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_7573F0();
  v65 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_757490();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73);
  v72 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_756DD0();
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v77 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_7572A0();
  v9 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = &v62 - v12;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v16 = sub_BD88(&qword_962B50);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v62 - v20;
  v22 = sub_BD88(&unk_957130);
  __chkstk_darwin(v22 - 8);
  v81 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v71 = &v62 - v25;
  __chkstk_darwin(v26);
  v28 = &v62 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v62 - v31;
  v82 = OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer;
  v83 = v1;
  v33 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30AppEventFormattedDatePresenter_updateTimer);
  if (v33)
  {
    [v33 invalidate];
  }

  v34 = a1;
  sub_1ED18(a1, v21, &qword_962B50);
  v35 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  v36 = *(*(v35 - 8) + 48);
  if (v36(v21, 1, v35) == 1)
  {
    sub_10A2C(v21, &qword_962B50);
    v37 = v84;
    (*(v9 + 56))(v32, 1, 1, v84);
  }

  else
  {
    sub_1ED18(&v21[*(v35 + 20)], v32, &unk_957130);
    sub_6E9390(v21);
    v37 = v84;
  }

  sub_757290();
  sub_1ED18(v34, v18, &qword_962B50);
  if (v36(v18, 1, v35) == 1)
  {
    sub_10A2C(v18, &qword_962B50);
    (*(v9 + 56))(v28, 1, 1, v37);
  }

  else
  {

    sub_6E9390(v18);
    sub_758410();

    if ((*(v9 + 48))(v28, 1, v37) != 1)
    {
      v46 = v79;
      (*(v9 + 32))(v79, v28, v37);
      if (sub_757230())
      {
        v47 = v72;
        sub_757460();
        sub_BD88(&qword_951BD8);
        v48 = sub_757480();
        v49 = *(v48 - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_77B6D0;
        (*(v49 + 104))(v51 + v50, enum case for Calendar.Component.second(_:), v48);
        sub_1A1DEC(v51);
        swift_setDeallocating();
        (*(v49 + 8))(v51 + v50, v48);
        swift_deallocClassInstance();
        sub_757410();

        v52 = *(v78 + 8);
        v78 += 8;
        v62 = v52;
        v52(v47, v73);
        sub_757460();
        v53 = v65;
        (*(v65 + 104))(v74, enum case for Calendar.MatchingPolicy.nextTime(_:), v75);
        v55 = v66;
        v54 = v67;
        (*(v67 + 104))(v66, enum case for Calendar.SearchDirection.forward(_:), v76);
        v57 = v69;
        v56 = v70;
        v58 = v15;
        v59 = v68;
        (*(v69 + 104))(v68, enum case for Calendar.RepeatedTimePolicy.first(_:), v70);
        v60 = v72;
        sub_757470();
        v61 = v59;
        v15 = v58;
        v37 = v84;
        (*(v57 + 8))(v61, v56);
        (*(v54 + 8))(v55, v76);
        (*(v53 + 8))(v74, v75);
        v62(v60, v73);
        (*(v63 + 8))(v77, v64);
        (*(v9 + 8))(v79, v37);
        sub_10A2C(v32, &unk_957130);
        sub_6E93EC(v71, v32);
      }

      else
      {
        (*(v9 + 8))(v46, v37);
      }

      goto LABEL_10;
    }
  }

  sub_10A2C(v28, &unk_957130);
LABEL_10:
  v38 = v83;
  v39 = v81;
  sub_1ED18(v32, v81, &unk_957130);
  if ((*(v9 + 48))(v39, 1, v37) == 1)
  {
    (*(v9 + 8))(v15, v37);
    sub_10A2C(v32, &unk_957130);
    sub_10A2C(v39, &unk_957130);
    v40 = 0;
  }

  else
  {
    v41 = v80;
    (*(v9 + 32))(v80, v39, v37);
    isa = sub_757220().super.isa;

    v40 = [objc_allocWithZone(NSTimer) initWithFireDate:isa interval:v38 target:"update" selector:0 userInfo:0 repeats:0.0];

    v43 = [objc_opt_self() mainRunLoop];
    [v43 addTimer:v40 forMode:NSRunLoopCommonModes];

    v44 = *(v9 + 8);
    v44(v41, v37);
    v44(v15, v37);
    sub_10A2C(v32, &unk_957130);
  }

  v45 = *(v38 + v82);
  *(v38 + v82) = v40;
}

uint64_t sub_6E8ED8()
{

  sub_6E7BE4();
}

void sub_6E8FCC()
{
  sub_6E92CC(319, &unk_962B90, type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_6E90AC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_BD88(&unk_957130);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_6E917C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_BD88(&unk_957130);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_6E922C()
{
  sub_758460();
  if (v0 <= 0x3F)
  {
    sub_6E92CC(319, &qword_9515C0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_6E92CC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_6E9320(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_962B50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E9390(uint64_t a1)
{
  v2 = type metadata accessor for AppEventFormattedDatePresenter.CurrentFormattedDate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6E93EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_957130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E94A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_955F90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - v6;
  v8 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-1] - v9;
  v11 = sub_7687C0();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, enum case for ActionOutcome.performed(_:), v11, v13);
  sub_768F60();
  (*(v12 + 8))(v15, v11);
  v16 = sub_BD88(&unk_93F630);
  sub_768860();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    return sub_10A2C(v10, &unk_93F980);
  }

  v20[3] = sub_764C80();
  v20[4] = sub_6EA050(&qword_95AB70, &type metadata accessor for Action);
  v20[0] = a3;
  (*(v5 + 104))(v7, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v4);

  sub_768980();

  (*(v5 + 8))(v7, v4);
  sub_BEB8(v20);
  return (*(v17 + 8))(v10, v16);
}

uint64_t sub_6E97D0()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_768F60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_6E98BC()
{
  sub_6E9F28();
  swift_allocError();
  *v0 = 1;
  sub_768F50();
}

uint64_t sub_6E9924(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_BD88(&qword_962CC0);
  __chkstk_darwin(v2 - 8);
  v42 = &v35 - v3;
  v4 = sub_BD88(&qword_962CC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v44 = &v35 - v8;
  v9 = sub_BD88(&unk_940200);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_764CF0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  sub_BD88(&qword_94DDC0);
  v19 = sub_768F90();
  v20 = sub_759B70();
  if (!v21)
  {
    goto LABEL_4;
  }

  v41 = v20;
  sub_759B60();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_10A2C(v11, &unk_940200);
LABEL_4:
    sub_6E9F28();
    swift_allocError();
    *v22 = 0;
    sub_768F50();

    return v19;
  }

  v39 = v13;
  v40 = v12;
  (*(v13 + 32))(v18, v11, v12);
  v23 = sub_759B30();
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    v25[2] = v19;
    v25[3] = v43;
    v25[4] = v24;

    v37 = sub_6EA044;
  }

  else
  {
    v37 = sub_6E9F7C;
    v25 = v19;
  }

  v26 = v44;
  v27 = sub_762080();
  v35 = *(*(v27 - 8) + 56);
  v35(v26, 1, 1, v27);
  swift_retain_n();
  v38 = v25;

  sub_759B40();
  v36 = v18;
  if (v46)
  {
    sub_13310(&v45, v47);
    (*(v39 + 16))(v15, v18, v40);
    sub_132B4(v47, &v45);

    sub_762070();
    sub_BEB8(v47);
    sub_10A2C(v26, &qword_962CC8);
    v35(v6, 0, 1, v27);
    sub_6E9F8C(v6, v26);
  }

  else
  {
    sub_10A2C(&v45, &unk_93FBD0);
  }

  sub_75F150();
  sub_768900();
  sub_768ED0();
  v28 = *&v47[0];
  sub_761230();
  sub_768ED0();
  v29 = *&v47[0];
  sub_759B50();

  v30 = v42;
  sub_7611F0();
  v31 = sub_761200();
  (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
  v32 = v36;
  v33 = v44;
  sub_7611E0();

  sub_10A2C(v30, &qword_962CC0);
  sub_10A2C(v33, &qword_962CC8);
  (*(v39 + 8))(v32, v40);
  return v19;
}

unint64_t sub_6E9F28()
{
  result = qword_962CD0;
  if (!qword_962CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_962CD0);
  }

  return result;
}

uint64_t sub_6E9F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_962CC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6E9FFC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_6EA050(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_6EA0B8()
{
  result = qword_962CD8;
  if (!qword_962CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_962CD8);
  }

  return result;
}

void sub_6EA10C()
{
  if (([v0 isViewLoaded] & 1) == 0)
  {
    v5._countAndFlagsBits = 0x535F474E494D4F43;
    v5._object = 0xEB000000004E4F4FLL;
    v6._countAndFlagsBits = 0;
    v6._object = 0xE000000000000000;
    sub_75B750(v5, v6);
    v1 = objc_allocWithZone(_UIContentUnavailableView);
    v2 = sub_769210();

    v3 = [v1 initWithFrame:v2 title:0 style:{0.0, 0.0, 0.0, 0.0}];

    [v0 setView:v3];
  }
}

id sub_6EA3DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ComingSoonViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_6EA434(double a1, double a2)
{
  v5 = sub_766880();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  *(swift_allocObject() + 16) = v2;
  v12 = v2;
  sub_766850();
  v13 = *&v12[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_materialbackground];
  v19[3] = type metadata accessor for VisualEffectContainerView();
  v19[4] = sub_6EBBD0(&qword_962D58, type metadata accessor for VisualEffectContainerView);
  v19[0] = v13;
  v14 = v13;
  sub_766870();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_BEB8(v19);
  v16 = sub_6EB450(v11, v12, a1, a2);
  v15(v11, v5);
  return v16;
}

char *sub_6EA62C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760370();
  __chkstk_darwin(v9 - 8);
  v45 = sub_7603D0();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7602F0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_lockupCollectionView;
  v17 = type metadata accessor for CarouselItemLockupCollectionView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v20 = sub_BD88(&qword_94F910);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v49.receiver = v18;
  v49.super_class = v17;
  v21 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = v44;
  *&v4[v44] = v21;
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v13);
  (*(v10 + 104))(v12, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v45);
  sub_760360();
  sub_760300();
  v26 = &v4[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_selectionHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *&v4[v25];
  v28 = objc_allocWithZone(UIVisualEffect);
  v29 = v27;
  v30 = [v28 init];
  v31 = type metadata accessor for VisualEffectContainerView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC18ASMessagesProvider25VisualEffectContainerView_embeddedView] = v29;
  v48.receiver = v32;
  v48.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v48, "initWithEffect:", v30);
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = [v34 contentView];
  [v35 addSubview:v33];

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_materialbackground] = v34;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v36 setOverrideUserInterfaceStyle:2];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v37 = [*&v36[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_lockupCollectionView] layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_materialbackground;
  v39 = *&v36[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_materialbackground];
  sub_6EBC1C(v39, 20.0);

  v40 = [*&v36[v38] contentView];
  v41 = [v40 layer];

  [v41 setAllowsGroupBlending:0];
  [v36 addSubview:*&v36[v38]];

  return v36;
}

uint64_t sub_6EABC8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_766880();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18[-1] - v9;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v8);
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  sub_766850();
  v12 = *&v11[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_materialbackground];
  v18[3] = type metadata accessor for VisualEffectContainerView();
  v18[4] = sub_6EBBD0(&qword_962D58, type metadata accessor for VisualEffectContainerView);
  v18[0] = v12;
  v13 = v12;
  sub_766870();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_BEB8(v18);
  sub_75D650();
  v15 = [v11 traitCollection];
  sub_7673E0();

  return (v14)(v10, v3);
}

uint64_t sub_6EAE64(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = sub_766840();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_7603D0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7603E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a2 + v14, v10);
  sub_760390();
  (*(v11 + 8))(v13, v10);
  result = (*(v7 + 88))(v9, v6);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v5[3] = sub_766970();
    v5[4] = &protocol witness table for ZeroDimension;
    sub_B1B4(v5);
    sub_766960();
    (*(v3 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v19);
    return sub_766800();
  }

  else
  {
    v16 = v3;
    v17 = v19;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v5[3] = sub_766970();
        v5[4] = &protocol witness table for ZeroDimension;
        sub_B1B4(v5);
        sub_766960();
        (*(v16 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v17);
        return sub_766810();
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CarouselItemModulePlatterView()
{
  result = qword_962D48;
  if (!qword_962D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_6EB2E4()
{
  result = sub_7603E0();
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

uint64_t sub_6EB38C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_selectionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_F704(v4);
}

uint64_t sub_6EB3B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_760400();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_3C2614(v4, a2);
}

double sub_6EB450(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = sub_7672E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v41[-v13];
  __chkstk_darwin(v15);
  v17 = &v41[-v16];
  __chkstk_darwin(v18);
  v20 = &v41[-v19];
  v21 = sub_766880();
  v47[3] = v21;
  v47[4] = &protocol witness table for DisjointStack;
  v22 = sub_B1B4(v47);
  (*(*(v21 - 8) + 16))(v22, a1, v21);
  v23 = sub_28613C(a3, a4);
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == &dword_0 + 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_134D8(v47, v43);
    *(v20 + 3) = &type metadata for CGFloat;
    *(v20 + 4) = &protocol witness table for CGFloat;
    *v20 = v26;
    v35 = *(v9 + 104);
    v35(v20, enum case for Resize.Rule.replaced(_:), v8);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v17, enum case for Resize.Rule.unchanged(_:), v8);
    v35(v14, v36, v8);
    v35(v11, v36, v8);
    v45 = sub_7672F0();
    v46 = &protocol witness table for Resize;
    sub_B1B4(v44);
    sub_767300();
  }

  else
  {
    sub_766DC0();
    v28 = v27;
    v30 = v29;
    sub_134D8(v47, v43);
    sub_766DC0();
    v32 = v31;
    v34 = v33;
    v45 = sub_7673C0();
    v46 = &protocol witness table for Constrain;
    sub_B1B4(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    sub_7673D0();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    sub_766DE0();
  }

  sub_B170(v44, v45);
  v37 = [a2 traitCollection];
  sub_7673F0();
  v39 = v38;

  sub_BEB8(v44);
  sub_BEB8(v47);
  return v39;
}

id sub_6EB85C()
{
  v1 = v0;
  v2 = sub_7603E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_lockupCollectionView];
  v7 = sub_760400();
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = sub_76A860();
    }

    else
    {
      v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    }

    v9 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks;
    v10 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks] = v8;
    if (v8 != v10)
    {
      if (v8 > 5)
      {
        *&v6[v9] = 5;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
    if (v11)
    {
LABEL_8:
      sub_3C1BDC();
      [v6 setNeedsLayout];
    }
  }

  sub_7603F0();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v12], v5, v2);
  swift_endAccess();
  return [v1 setNeedsLayout];
}

uint64_t sub_6EBA24()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    for (j = 0; ; ++j)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
      }

      else
      {
        if (j >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_759210();
      sub_6EBBD0(&qword_945810, &type metadata accessor for ArtworkView);
      sub_75A0C0();

      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }
}

uint64_t sub_6EBB90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6EBBD0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_6EBC1C(void *a1, double a2)
{
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = [objc_opt_self() effectWithStyle:17];
  sub_6EC1AC();
  isa = sub_769450().super.isa;

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

void sub_6EBE7C()
{
  v1 = sub_760370();
  __chkstk_darwin(v1 - 8);
  v16 = sub_7603D0();
  v2 = *(v16 - 8);
  __chkstk_darwin(v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_7602F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_lockupCollectionView;
  v9 = type metadata accessor for CarouselItemLockupCollectionView();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v12 = sub_BD88(&qword_94F910);
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v10[OBJC_IVAR____TtC18ASMessagesProvider32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v17.receiver = v10;
  v17.super_class = v9;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  *(v0 + v15) = v13;
  (*(v6 + 104))(v8, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v5);
  (*(v2 + 104))(v4, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v16);
  sub_760360();
  sub_760300();
  v14 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider29CarouselItemModulePlatterView_selectionHandler);
  *v14 = 0;
  v14[1] = 0;
  sub_76A840();
  __break(1u);
}

unint64_t sub_6EC1AC()
{
  result = qword_945800;
  if (!qword_945800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_945800);
  }

  return result;
}

uint64_t sub_6EC230()
{
  v1 = sub_758DA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_758DC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6F2D8C(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(sub_BD88(&qword_962E98) + 48);
    (*(v6 + 32))(v8, v11, v5);
    (*(v2 + 32))(v4, &v11[v12], v1);
    sub_76AA40(1uLL);
    sub_6F2DF0(&qword_960928, &type metadata accessor for PageFacets.Facet);
    sub_769160();
    sub_6F2DF0(&qword_956018, &type metadata accessor for PageFacets.Facet.Option);
    sub_769160();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_76AA40(0);
    sub_6F2DF0(&qword_960928, &type metadata accessor for PageFacets.Facet);
    sub_769160();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_6EC56C()
{
  sub_76AA30();
  sub_6EC230();
  return sub_76AA80();
}

Swift::Int sub_6EC5B0()
{
  sub_76AA30();
  sub_6EC230();
  return sub_76AA80();
}

void sub_6EC5F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_6EC6C4(uint64_t a1)
{
  v3 = sub_758DD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_947488);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_BD88(&qword_962EF0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_6F42A8(v1 + v14, v13);
  sub_6F42A8(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_10A2C(v13, &qword_947488);
    }

    goto LABEL_6;
  }

  sub_6F42A8(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_10A2C(v13, &qword_962EF0);
    return sub_6EC9E0();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_6F2DF0(&qword_962EF8, &type metadata accessor for PageFacets);
  v18 = sub_7691C0();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_10A2C(v13, &qword_947488);
  if ((v18 & 1) == 0)
  {
    return sub_6EC9E0();
  }

  return result;
}

uint64_t sub_6EC9E0()
{
  v1 = v0;
  v2 = sub_BD88(&qword_962EB8);
  __chkstk_darwin(v2 - 8);
  v82 = &v67 - v3;
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  v100 = *(v4 - 8);
  v101 = v4;
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v67 - v8;
  v9 = sub_758DC0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_758CA0();
  v86 = *(v13 - 8);
  __chkstk_darwin(v13);
  v83 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_947488);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = sub_758DD0();
  v71 = *(v18 - 8);
  __chkstk_darwin(v18);
  v70 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_BD88(&qword_962EC0);
  v69 = *(v88 - 8);
  __chkstk_darwin(v88);
  v21 = &v67 - v20;
  sub_6F2DF0(&qword_962EC8, &type metadata accessor for PageFacets.FacetGroup);
  sub_6F2DF0(&qword_962ED0, type metadata accessor for PageFacetsViewController.Item);
  v87 = v21;
  v85 = v13;
  sub_767920();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v71;
  sub_6F42A8(v23, v17);
  if ((*(v24 + 48))(v17, 1, v18) == 1)
  {
    result = sub_10A2C(v17, &qword_947488);
    v26 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource);
    if (v26)
    {
      v27 = v26;
      v28 = v87;
      sub_767A60();

      return (*(v69 + 8))(v28, v88);
    }

    goto LABEL_33;
  }

  v29 = *(v24 + 32);
  v68 = v18;
  v29(v70, v17, v18);
  result = sub_758CB0();
  v81 = *(result + 16);
  if (v81)
  {
    v30 = 0;
    v80 = *(v86 + 80);
    v79 = (v80 + 32) & ~v80;
    v78 = result + v79;
    v77 = v86 + 16;
    v76 = v86 + 8;
    v99 = v10 + 16;
    v91 = (v10 + 8);
    v72 = (v86 + 56);
    v75 = xmmword_77B6D0;
    v74 = v1;
    v89 = v10;
    v90 = v6;
    v97 = v12;
    v73 = result;
    while (v30 < *(result + 16))
    {
      v33 = v85;
      v34 = *(v86 + 72);
      v84 = v30;
      v96 = *(v86 + 16);
      v35 = v83;
      v96(v83, v78 + v34 * v30, v85);
      sub_BD88(&qword_962ED8);
      v36 = v79;
      v37 = swift_allocObject();
      *(v37 + 1) = v75;
      v96(&v37[v36], v35, v33);
      v38._rawValue = v37;
      sub_7678C0(v38);

      v39 = sub_758C90();
      result = (*(v86 + 8))(v35, v33);
      v95 = *(v39 + 16);
      if (v95)
      {
        v40 = 0;
        v93 = v39 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v41 = _swiftEmptyArrayStorage;
        v42 = v91;
        v94 = v39;
        while (v40 < *(v39 + 16))
        {
          v43 = *(v10 + 72);
          v96 = v40;
          v44 = *(v10 + 16);
          v44(v12, v93 + v43 * v40, v9);
          if (sub_758D00())
          {
            v45 = sub_758DB0();
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = v9;
              v48 = sub_758DA0();
              v49 = *(v48 - 8);
              v50 = *(v49 + 80);
              v92 = v45;
              v51 = v45 + ((v50 + 32) & ~v50);
              v52 = *(v49 + 72);
              v53 = (v49 + 16);
              v54 = v98;
              do
              {
                v55 = *(sub_BD88(&qword_962E98) + 48);
                v44(v54, v97, v47);
                (*v53)(v54 + v55, v51, v48);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v41 = sub_7C880(0, *(v41 + 2) + 1, 1, v41);
                }

                v57 = *(v41 + 2);
                v56 = *(v41 + 3);
                if (v57 >= v56 >> 1)
                {
                  v41 = sub_7C880(v56 > 1, v57 + 1, 1, v41);
                }

                *(v41 + 2) = v57 + 1;
                v58 = v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v57;
                v54 = v98;
                sub_6F4128(v98, v58);
                v51 += v52;
                --v46;
              }

              while (v46);

              v9 = v47;
              v10 = v89;
              v6 = v90;
              v12 = v97;
              v42 = v91;
            }

            else
            {
            }

            result = (*v42)(v12, v9);
          }

          else
          {
            v44(v6, v12, v9);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v41 = sub_7C880(0, *(v41 + 2) + 1, 1, v41);
            }

            v60 = *(v41 + 2);
            v59 = *(v41 + 3);
            if (v60 >= v59 >> 1)
            {
              v41 = sub_7C880(v59 > 1, v60 + 1, 1, v41);
            }

            (*v42)(v12, v9);
            *(v41 + 2) = v60 + 1;
            result = sub_6F4128(v6, v41 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v60);
          }

          v39 = v94;
          v40 = v96 + 1;
          if (v96 + 1 == v95)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      v31 = v84 + 1;
      v32 = v82;
      (*v72)(v82, 1, 1, v85);
      sub_7678A0();
      v30 = v31;

      sub_10A2C(v32, &qword_962EB8);
      v1 = v74;
      result = v73;
      if (v31 == v81)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:

  v61 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource);
  v62 = v68;
  v63 = v71;
  v64 = v70;
  if (v61)
  {
    v65 = v61;
    v66 = v87;
    sub_767A60();

    (*(v63 + 8))(v64, v62);
    return (*(v69 + 8))(v66, v88);
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_6ED4BC()
{
  v1 = v0;
  v2 = sub_758CA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&qword_962EC0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource;
  v11 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  sub_767A90();

  v13 = sub_767910();
  v14 = *(v13 + 16);
  if (!v14)
  {

    v26 = *&v1[v10];
    if (v26)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v34 = v10;
  v35 = v1;
  v36 = v7;
  v37 = v13;
  v15 = v2;
  v17 = *(v3 + 16);
  v16 = v3 + 16;
  v38 = v17;
  v18 = v9;
  v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v20 = *(v16 + 56);
  v21 = v6;
  v22 = (v16 - 8);
  do
  {
    v38(v5, v19, v15);
    v23 = v16;
    v24 = sub_7678D0();
    (*v22)(v5, v15);
    v25._rawValue = v24;
    sub_7678B0(v25);
    v16 = v23;

    v19 += v20;
    --v14;
  }

  while (v14);

  v6 = v21;
  v1 = v35;
  v7 = v36;
  v9 = v18;
  v26 = *&v35[v34];
  if (!v26)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  v27 = v26;
  sub_767A60();

  v28 = &v1[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_preselectionContentOffset + 16])
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  v30 = *v28;
  v29 = v28[1];
  v31 = [v1 collectionView];
  if (v31)
  {
    v32 = v31;
    [v31 setContentOffset:{v30, v29}];

    (*(v7 + 8))(v9, v6);
    *v28 = 0.0;
    v28[1] = 0.0;
    *(v28 + 16) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_6ED7C4()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = sub_6EDA00();
  v8 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource];
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource] = v7;

  result = [v0 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v14[4] = sub_6F42A0;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_507AD4;
    v14[3] = &unk_89DCB8;
    v12 = _Block_copy(v14);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    sub_6EDE14();
    return sub_6EC9E0();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_6EDA00()
{
  v27 = sub_BD88(&qword_93FF58);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[1] = v2;
  v24 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  v25 = sub_BD88(&qword_962F00);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_942168);
  type metadata accessor for PageFacetsViewController.Item(0);
  sub_769870();
  sub_769240();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_BE70(0, &qword_93FF60);
  v26 = v5;
  sub_769880();
  result = [v0 collectionView];
  if (result)
  {
    v13 = v25;
    (*(v6 + 16))(v8, v11, v25);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v8, v13);
    v16 = objc_allocWithZone(sub_BD88(&qword_962F08));
    v17 = sub_767A20();
    v18 = v24;
    v19 = v26;
    v20 = v27;
    (*(v1 + 16))(v24, v26, v27);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v18, v20);
    sub_767A30();
    (*(v1 + 8))(v19, v20);
    (*(v6 + 8))(v11, v13);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_6EDE14()
{
  ObjectType = swift_getObjectType();
  v1 = sub_BD88(&unk_947440);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = v15 - v2;
  v3 = sub_BD88(&unk_94DCB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  sub_75E2F0();
  v7 = sub_BE70(0, &qword_940340);
  v8 = sub_769970();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v8;
  v15[1] = sub_BD88(&unk_947470);
  sub_16194(&unk_94DCC0, &unk_947470);
  v16 = v0;
  sub_768720();

  v9 = v4 + 8;
  v10 = *(v4 + 8);
  v15[0] = v9;
  v10(v6, v3);
  sub_BEB8(v21);
  sub_75E300();
  v11 = sub_769970();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v11;
  sub_768720();

  v10(v6, v3);
  sub_BEB8(v21);
  sub_75E2A0();
  v12 = sub_769970();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v12;
  sub_BD88(&qword_947480);
  sub_16194(&qword_94DCD0, &qword_947480);
  v13 = v18;
  sub_768720();

  (*(v19 + 8))(v13, v20);
  return sub_BEB8(v21);
}

void sub_6EE210(unint64_t a1, uint64_t a2)
{
  v53 = a2;
  v50 = a1;
  v2 = sub_BD88(&qword_962EC0);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - v3;
  v5 = sub_758CA0();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v45 - v9;
  v10 = sub_767B30();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_767B10();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_767B70();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  sub_767B40();
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v10);
  sub_767B60();
  sub_BE70(0, &unk_93FFE0);
  v22 = sub_769C50();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    (*(v51 + 8))(v21, v52);
    return;
  }

  v24 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource);
  v25 = Strong;
  v26 = v24;

  if (v24)
  {
    sub_767A90();

    v27 = v49;
    v28 = sub_767910();
    (*(v48 + 8))(v4, v27);
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v28 + 16) > v50)
    {
      v30 = v46;
      v29 = v47;
      (*(v46 + 16))(v7, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v50, v47);

      v31 = v45;
      (*(v30 + 32))(v45, v7, v29);
      v32 = sub_758C80();
      if (v33)
      {
        v34 = v32;
        v35 = v33;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = objc_opt_self();
          v38 = [v37 fractionalWidthDimension:1.0];
          v39 = [v37 estimatedDimension:44.0];
          v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

          v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:UICollectionElementKindSectionHeader alignment:1];
          sub_BD88(&unk_93F5C0);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_77D9F0;
          *(v42 + 32) = v41;
          sub_BE70(0, &unk_956240);
          v43 = v41;
          isa = sub_769450().super.isa;

          [v22 setBoundarySupplementaryItems:isa];
        }
      }

      (*(v30 + 8))(v31, v29);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_6EE820(void *a1, uint64_t a2, void (*a3)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_6EE898(a1, a2, a3);
  }
}

uint64_t sub_6EE898(void *a1, uint64_t a2, void (*a3)(void, void))
{
  v167 = a3;
  v171 = a1;
  v143 = sub_7675F0();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v134 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_767600();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v149 = &v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_7675A0();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v148 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_758CC0();
  v172 = *(v157 - 8);
  __chkstk_darwin(v157);
  v138 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v139 = &v134 - v8;
  __chkstk_darwin(v9);
  v145 = &v134 - v10;
  __chkstk_darwin(v11);
  v158 = &v134 - v12;
  __chkstk_darwin(v13);
  v156 = &v134 - v14;
  __chkstk_darwin(v15);
  v155 = &v134 - v16;
  v17 = sub_BD88(&qword_942170);
  __chkstk_darwin(v17 - 8);
  v160 = &v134 - v18;
  v137 = sub_767560();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_767530();
  v159 = *(v163 - 8);
  __chkstk_darwin(v163);
  v152 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_758DA0();
  v154 = *(v165 - 8);
  __chkstk_darwin(v165);
  v22 = &v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_758DC0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v153 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v144 = &v134 - v27;
  __chkstk_darwin(v28);
  v30 = &v134 - v29;
  __chkstk_darwin(v31);
  v166 = &v134 - v32;
  v33 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v33);
  v35 = &v134 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v134 - v37;
  __chkstk_darwin(v39);
  v41 = &v134 - v40;
  v42 = sub_767880();
  v169 = *(v42 - 8);
  v170 = v42;
  __chkstk_darwin(v42);
  v140 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v134 - v45;
  sub_767850();
  sub_6F2D8C(v167, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v168 = v24;
  if (EnumCaseMultiPayload != 1)
  {
    v162 = v46;
    v166 = v41;
    sub_6F2D8C(v41, v35);
    v69 = *(v24 + 16);
    v165 = v35;
    v161 = v23;
    v135 = v69;
    (v69)(v30, v35, v23);
    v70 = v155;
    sub_758CD0();
    v71 = v172;
    v72 = v156;
    v73 = v157;
    v136 = *(v172 + 13);
    v154 = v172 + 104;
    (v136)(v156, enum case for PageFacets.Facet.DisplayType.toggle(_:), v157);
    v74 = sub_6F2DF0(&qword_956030, &type metadata accessor for PageFacets.Facet.DisplayType);
    sub_769430();
    v137 = v74;
    sub_769430();
    v167 = v30;
    if (v175 == v173 && v176 == v174)
    {
      v75 = 1;
    }

    else
    {
      v75 = sub_76A950();
    }

    v76 = *(v71 + 8);
    v76(v72, v73);
    v172 = (v71 + 8);
    v156 = v76;
    v76(v70, v73);

    if (v75)
    {
      sub_758D50();
      sub_767860();
      sub_BE70(0, &qword_955FA0);
      v77 = swift_allocObject();
      v78 = v164;
      swift_unknownObjectWeakInit();
      v79 = v144;
      v80 = v161;
      (v135)(v144, v167, v161);
      v81 = v168;
      v82 = (*(v168 + 80) + 24) & ~*(v168 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = v77;
      v84 = v167;
      (*(v81 + 32))(v83 + v82, v79, v80);
      v85 = sub_76A1F0();
      v86 = [objc_allocWithZone(UISwitch) initWithFrame:v85 primaryAction:{0.0, 0.0, 0.0, 0.0}];

      v87 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
      swift_beginAccess();
      v88 = *(v78 + v87);
      v60 = v169;
      if (*(v88 + 16) && (v89 = sub_66456C(v84), (v90 & 1) != 0))
      {
        v91 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v92 = *(v91 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v92 = 0;
      }

      v100 = v171;
      [v86 setOn:v92];
      sub_BD88(&qword_942178);
      sub_767620();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      v101 = sub_BD88(&qword_942188);
      v102 = v149;
      v103 = &v149[*(v101 + 48)];
      (*(v159 + 104))(v149, enum case for UICellAccessory.DisplayedState.always(_:), v163);
      *v103 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v103[1] = 0;
      (*(v146 + 104))(v102, enum case for UICellAccessory.Placement.trailing(_:), v147);
      v104 = sub_767540();
      (*(*(v104 - 8) + 56))(v160, 1, 1, v104);
      v105 = v86;
      v106 = v148;
      sub_767590();
      sub_767520();
      (*(v150 + 8))(v106, v151);
      sub_769C10();
      v175 = 0x2D7465636166;
      v176 = 0xE600000000000000;
      v107 = v167;
      v179._countAndFlagsBits = sub_758D40();
      sub_769370(v179);

      v108 = sub_769210();

      [v100 setAccessibilityIdentifier:v108];

      v109 = *(v81 + 8);
      v109(v107, v80);
      v109(v165, v80);
      v59 = v170;
      goto LABEL_25;
    }

    v93 = v167;
    v94 = v168;
    v95 = v161;
    v167 = *(v168 + 8);
    v167(v93, v161);
    v96 = v153;
    (*(v94 + 32))(v153, v165, v95);
    sub_758CD0();
    v97 = v145;
    v98 = v136;
    (v136)(v145, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v73);
    sub_769430();
    sub_769430();
    v60 = v169;
    if (v175 == v173 && v176 == v174)
    {
      v99 = v156;
      (v156)(v97, v73);
      v99(v158, v73);
    }

    else
    {
      v110 = sub_76A950();
      v111 = v156;
      (v156)(v97, v73);
      v111(v158, v73);

      if (v110)
      {
        goto LABEL_22;
      }

      sub_758CD0();
      v98(v138, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v73);
      sub_769430();
      sub_769430();
      if (v175 != v173 || v176 != v174)
      {
        v132 = sub_76A950();
        v133 = v156;
        (v156)(v138, v73);
        v133(v139, v73);

        if ((v132 & 1) == 0)
        {
          v167(v96, v161);
          sub_769C10();
          v59 = v170;
LABEL_25:
          v41 = v166;
          v46 = v162;
          goto LABEL_30;
        }

LABEL_22:
        v112 = v140;
        sub_767870();
        v113 = v162;
        v59 = v170;
        (*(v60 + 8))(v162, v170);
        (*(v60 + 32))(v113, v112, v59);
        sub_758D50();
        sub_767860();
        v114 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
        v115 = v164;
        swift_beginAccess();
        v116 = *(v115 + v114);

        sub_6F0600(v96, v116);

        sub_7677F0();
        sub_BD88(&qword_942178);
        sub_767620();
        *(swift_allocObject() + 16) = xmmword_77B6D0;
        v117 = v159;
        v118 = v152;
        v119 = v163;
        (*(v159 + 104))(v152, enum case for UICellAccessory.DisplayedState.always(_:), v163);
        v120 = sub_767540();
        (*(*(v120 - 8) + 56))(v160, 1, 1, v120);
        v121 = v141;
        sub_7675E0();
        sub_767580();
        v122 = v153;
        (*(v142 + 8))(v121, v143);
        (*(v117 + 8))(v118, v119);
        v123 = v171;
        sub_769C10();
        v124._countAndFlagsBits = sub_758D10();
        if (v124._object)
        {
          v175 = 0x2D7465636166;
          v176 = 0xE600000000000000;
          sub_769370(v124);

          v125 = sub_769210();

          [v123 setAccessibilityIdentifier:v125];
        }

        v167(v122, v161);
        goto LABEL_25;
      }

      v131 = v156;
      (v156)(v138, v73);
      v131(v139, v73);
    }

    goto LABEL_22;
  }

  v48 = v171;
  sub_6F2D8C(v41, v38);
  v49 = *(sub_BD88(&qword_962E98) + 48);
  v50 = v166;
  (*(v24 + 32))(v166, v38, v23);
  v51 = v154;
  (*(v154 + 4))(v22, &v38[v49], v165);
  v172 = v22;
  sub_758D90();
  sub_767860();
  v52 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
  v53 = v164;
  swift_beginAccess();
  v54 = *(v53 + v52);
  if (*(v54 + 16) && (v55 = sub_66456C(v50), (v56 & 1) != 0))
  {
    v161 = v23;
    v57 = *(*(v54 + 56) + 8 * v55);
    swift_endAccess();

    v58 = sub_6670E0(v172, v57);

    v60 = v169;
    v59 = v170;
    v61 = v48;
    if (v58)
    {
      sub_BD88(&qword_942178);
      v62 = *(sub_767620() - 8);
      v167 = ((*(v62 + 80) + 32) & ~*(v62 + 80));
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      v63 = v159;
      v64 = *(v159 + 104);
      v162 = v46;
      v65 = v152;
      v64(v152, enum case for UICellAccessory.DisplayedState.always(_:), v163);
      v66 = sub_767540();
      (*(*(v66 - 8) + 56))(v160, 1, 1, v66);
      v67 = v135;
      sub_767550();
      sub_767610();
      (*(v136 + 8))(v67, v137);
      v68 = v65;
      v46 = v162;
      (*(v63 + 8))(v68, v163);
    }

    v23 = v161;
  }

  else
  {
    swift_endAccess();
    v60 = v169;
    v59 = v170;
    v61 = v48;
  }

  sub_769C10();
  v126 = v172;
  v127._countAndFlagsBits = sub_758D60();
  if (v127._object)
  {
    v175 = 0x2D7465636166;
    v176 = 0xE600000000000000;
    sub_769370(v127);

    v128 = sub_769210();

    [v61 setAccessibilityIdentifier:v128];
  }

  (*(v51 + 1))(v126, v165);
  (*(v168 + 8))(v166, v23);
LABEL_30:
  sub_6F37F4(v41);
  v177 = v59;
  v178 = &protocol witness table for UIListContentConfiguration;
  v129 = sub_B1B4(&v175);
  (*(v60 + 16))(v129, v46, v59);
  sub_769AE0();
  return (*(v60 + 8))(v46, v59);
}

unint64_t sub_6EFF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a4;
  v4 = sub_767880();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_962EC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = sub_758CA0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v23 = v4;
    v17 = *(result + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_767A90();

      v19 = sub_767910();
      (*(v8 + 8))(v10, v7);
      result = sub_757650();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v19 + 16))
      {
        (*(v12 + 16))(v14, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v11);

        sub_7677E0();
        sub_758C80();
        sub_767860();
        v20 = v23;
        v27[3] = v23;
        v27[4] = &protocol witness table for UIListContentConfiguration;
        v21 = sub_B1B4(v27);
        v22 = v24;
        (*(v24 + 16))(v21, v6, v20);
        sub_769AE0();

        (*(v22 + 8))(v6, v20);
        return (*(v12 + 8))(v14, v11);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_6F0228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&qword_962EA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_6F2D8C(a3, &v10 - v5);
  v7 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_BE70(0, &qword_942168);
  v8 = sub_769890();
  sub_10A2C(v6, &qword_962EA8);
  return v8;
}

void sub_6F035C()
{
  v0 = sub_BD88(&qword_956028);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 collectionView];

      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 contentOffset];
      v19 = v8;
      v20 = v9;

      *&v10 = v19;
      *(&v10 + 1) = v20;
    }

    else
    {
      v10 = 0uLL;
    }

    v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_preselectionContentOffset];
    *v11 = v10;
    v11[16] = v6 == 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;

    v14 = sub_758DB0();
    if (*(v14 + 16))
    {
      v15 = v14;
      v16 = sub_758DA0();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v2, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

      (*(v17 + 56))(v2, 0, 1, v16);
    }

    else
    {

      v18 = sub_758DA0();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    }

    sub_75E320();

    sub_10A2C(v2, &qword_956028);
  }
}

uint64_t sub_6F0600(uint64_t a1, uint64_t a2)
{
  v4 = sub_758DA0();
  v57 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = sub_758D20();
  result = 0;
  if (v13)
  {
    if (*(a2 + 16) && (v15 = sub_66456C(a1), (v16 & 1) != 0))
    {
      v17 = *(*(a2 + 56) + 8 * v15);
      v18 = *(v17 + 16);

      v19 = *(sub_758DB0() + 16);

      if (v18 == v19)
      {

        v62._countAndFlagsBits = 0xD000000000000025;
        v62._object = 0x80000000007F22E0;
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        return sub_75B750(v62, v65);
      }

      else
      {
        v60 = v17;
        result = sub_758DB0();
        v55 = *(result + 16);
        if (v55)
        {
          v52 = v6;
          v23 = 0;
          v24 = v60;
          v58 = (v60 + 56);
          v59 = v57 + 16;
          v25 = (v57 + 8);
          v53 = _swiftEmptyArrayStorage;
          v54 = result;
          v51 = (v57 + 32);
          while (v23 < *(result + 16))
          {
            v56 = (*(v57 + 80) + 32) & ~*(v57 + 80);
            v26 = *(v57 + 72);
            v27 = *(v57 + 16);
            v27(v12, result + v56 + v26 * v23, v4);
            if (*(v24 + 16) && (sub_6F2DF0(&qword_956018, &type metadata accessor for PageFacets.Facet.Option), v28 = sub_769150(), v24 = v60, v29 = -1 << *(v60 + 32), v30 = v28 & ~v29, ((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
            {
              v31 = ~v29;
              while (1)
              {
                v27(v9, *(v24 + 48) + v30 * v26, v4);
                sub_6F2DF0(&qword_956020, &type metadata accessor for PageFacets.Facet.Option);
                v32 = sub_7691C0();
                (*v25)(v9, v4);
                if (v32)
                {
                  break;
                }

                v30 = (v30 + 1) & v31;
                v24 = v60;
                if (((*(v58 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v33 = *v51;
              (*v51)(v52, v12, v4);
              v34 = v53;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v36 = v34;
              v61 = v34;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_143FA8(0, *(v34 + 2) + 1, 1);
                v36 = v61;
              }

              v24 = v60;
              v38 = *(v36 + 2);
              v37 = *(v36 + 3);
              if (v38 >= v37 >> 1)
              {
                sub_143FA8(v37 > 1, v38 + 1, 1);
                v24 = v60;
                v36 = v61;
              }

              *(v36 + 2) = v38 + 1;
              v53 = v36;
              v33(v36 + v56 + v38 * v26, v52, v4);
            }

            else
            {
LABEL_11:
              (*v25)(v12, v4);
            }

            ++v23;
            result = v54;
            if (v23 == v55)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
          v53 = _swiftEmptyArrayStorage;
LABEL_26:

          v39 = *(v53 + 2);
          if (v39)
          {
            v61 = _swiftEmptyArrayStorage;
            v40 = v53;
            sub_143CDC(0, v39, 0);
            v41 = v61;
            v42 = *(v57 + 16);
            v43 = v40 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
            v59 = *(v57 + 72);
            v60 = v42;
            v57 += 16;
            v58 = (v57 - 8);
            do
            {
              (v60)(v9, v43, v4);
              v44 = sub_758D90();
              v46 = v45;
              (*v58)(v9, v4);
              v61 = v41;
              v48 = *(v41 + 2);
              v47 = *(v41 + 3);
              if (v48 >= v47 >> 1)
              {
                sub_143CDC((v47 > 1), v48 + 1, 1);
                v41 = v61;
              }

              *(v41 + 2) = v48 + 1;
              v49 = &v41[2 * v48];
              *(v49 + 4) = v44;
              *(v49 + 5) = v46;
              v43 += v59;
              --v39;
            }

            while (v39);
          }

          else
          {

            v41 = _swiftEmptyArrayStorage;
          }

          v61 = v41;
          v64._object = 0x80000000007F22C0;
          v64._countAndFlagsBits = 0xD00000000000001DLL;
          v67._countAndFlagsBits = 0;
          v67._object = 0xE000000000000000;
          sub_75B750(v64, v67);
          sub_BD88(&unk_947FF0);
          sub_16194(&qword_94EC70, &unk_947FF0);
          v50 = sub_7691A0();

          return v50;
        }
      }
    }

    else
    {
      v20 = sub_758DB0();
      __chkstk_darwin(v20);
      *(&v51 - 2) = a1;
      v21 = sub_70AD30(sub_6F4708, (&v51 - 4), v20);

      if (*(v21 + 16))
      {
        v61 = v21;
        v63._object = 0x80000000007F22C0;
        v63._countAndFlagsBits = 0xD00000000000001DLL;
        v66._countAndFlagsBits = 0;
        v66._object = 0xE000000000000000;
        sub_75B750(v63, v66);
        sub_BD88(&unk_947FF0);
        sub_16194(&qword_94EC70, &unk_947FF0);
        v22 = sub_7691A0();

        return v22;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_6F0D5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&qword_947488);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  sub_75E2C0();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  sub_6F42A8(a2 + v9, v5);
  swift_beginAccess();
  sub_6F4410(v8, a2 + v9);
  swift_endAccess();
  sub_6EC6C4(v5);
  sub_10A2C(v5, &qword_947488);
  return sub_10A2C(v8, &qword_947488);
}

uint64_t (*sub_6F0E94(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_6F4408;
}

void (*sub_6F0EF8(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_6F4390;
}

void sub_6F0F5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_75E2B0();
  v4 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;

  sub_6F2EB4(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_6ED4BC();
  }
}

uint64_t sub_6F0FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_objectGraph);
  v8 = sub_BD88(&unk_93F630);
  sub_768860();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10A2C(v6, &unk_93F980);
  }

  sub_32A6C0(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_6F113C(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_6F4350;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_B34C4;
}

void sub_6F11CC(void *a1, uint64_t a2)
{
  v163 = a2;
  v154 = a1;
  v147 = sub_768380();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_7683C0();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_757640();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = v5;
  v137 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_7683E0();
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v124 - v8;
  v9 = sub_BD88(&qword_942170);
  __chkstk_darwin(v9 - 8);
  v128 = &v124 - v10;
  v130 = sub_767560();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_767530();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_956028);
  __chkstk_darwin(v13 - 8);
  v134 = &v124 - v14;
  v157 = sub_758CC0();
  v164 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = &v124 - v17;
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  __chkstk_darwin(v24);
  v131 = &v124 - v25;
  __chkstk_darwin(v26);
  v28 = &v124 - v27;
  __chkstk_darwin(v29);
  v152 = &v124 - v30;
  __chkstk_darwin(v31);
  v153 = &v124 - v32;
  __chkstk_darwin(v33);
  v35 = &v124 - v34;
  __chkstk_darwin(v36);
  v38 = &v124 - v37;
  v39 = sub_758DA0();
  v155 = *(v39 - 8);
  v156 = v39;
  __chkstk_darwin(v39);
  v158 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_758DC0();
  v42 = *(v41 - 8);
  v161 = v41;
  v162 = v42;
  __chkstk_darwin(v41);
  v133 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v151 = &v124 - v45;
  __chkstk_darwin(v46);
  v159 = &v124 - v47;
  v48 = sub_BD88(&qword_962EA8);
  __chkstk_darwin(v48 - 8);
  v50 = &v124 - v49;
  v51 = type metadata accessor for PageFacetsViewController.Item(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v160 = &v124 - v56;
  v149 = v2;
  v57 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource];
  if (!v57)
  {
    __break(1u);
    return;
  }

  v58 = v57;
  sub_767A40();

  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_10A2C(v50, &qword_962EA8);
    return;
  }

  v59 = v160;
  sub_6F4128(v50, v160);
  sub_6F2D8C(v59, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v162 + 32))(v151, v54, v161);
    sub_758CD0();
    v64 = *(v164 + 104);
    v64(v20, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v157);
    sub_6F2DF0(&qword_956030, &type metadata accessor for PageFacets.Facet.DisplayType);
    sub_769430();
    sub_769430();
    if (aBlock == v171 && v166 == v172)
    {
      v65 = 1;
    }

    else
    {
      v65 = sub_76A950();
    }

    v77 = *(v164 + 8);
    v78 = v20;
    v79 = v157;
    v77(v78, v157);
    v77(v23, v79);

    v76 = v151;
    if ((v65 & 1) == 0)
    {
      v80 = v132;
      sub_758CD0();
      v64(v148, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v79);
      sub_769430();
      sub_769430();
      if (aBlock == v171 && v166 == v172)
      {
        v77(v148, v79);
        v77(v80, v79);
      }

      else
      {
        v92 = sub_76A950();
        v77(v148, v79);
        v77(v80, v79);

        if ((v92 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    v93 = v161;
    v94 = v133;
    (*(v162 + 16))(v133, v76, v161);
    v95 = v149;
    v96 = *&v149[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_facetsPresenter];
    v97 = v149[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_showDoneButton];
    v98 = objc_allocWithZone(type metadata accessor for PageFacetOptionsViewController());

    v99 = sub_47BB20(v94, v96, v97);

    *&v99[OBJC_IVAR____TtC18ASMessagesProvider30PageFacetOptionsViewController_delegate + 8] = &off_89DC30;
    swift_unknownObjectWeakAssign();
    v100 = [v95 navigationController];
    if (v100)
    {
      v101 = v100;
      [v100 pushViewController:v99 animated:1];

      v99 = v101;
    }

    (*(v162 + 8))(v76, v93);
    goto LABEL_48;
  }

  v148 = v28;
  v60 = *(sub_BD88(&qword_962E98) + 48);
  (*(v162 + 32))(v159, v54, v161);
  (*(v155 + 32))(v158, &v54[v60], v156);
  sub_758CD0();
  v61 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v62 = v157;
  v151 = *(v164 + 104);
  (v151)(v35, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v157);
  sub_6F2DF0(&qword_956030, &type metadata accessor for PageFacets.Facet.DisplayType);
  sub_769430();
  sub_769430();
  LODWORD(v133) = v61;
  if (aBlock == v171 && v166 == v172)
  {
    v63 = 1;
  }

  else
  {
    v63 = sub_76A950();
  }

  v66 = v164 + 8;
  v67 = *(v164 + 8);
  v67(v35, v62);
  v164 = v66;
  v67(v38, v62);

  v68 = v149;
  if ((v63 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
    swift_beginAccess();
    v70 = *&v68[v69];
    if (*(v70 + 16) && (v71 = sub_66456C(v159), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
      swift_endAccess();

      v74 = sub_6670E0(v158, v73);

      if (v74)
      {
        v75 = 0;
        v76 = v159;
        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  [v154 contentOffset];
  v81 = &v68[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_preselectionContentOffset];
  *v81 = v82;
  *(v81 + 1) = v83;
  v81[16] = 0;
  v85 = v155;
  v84 = v156;
  v86 = v134;
  (*(v155 + 16))(v134, v158, v156);
  v75 = 1;
  (*(v85 + 56))(v86, 0, 1, v84);
  v76 = v159;
  sub_75E320();
  sub_10A2C(v86, &qword_956028);
LABEL_24:
  sub_758CD0();
  (v151)(v152, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v62);
  sub_769430();
  sub_769430();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v152, v62);
    v67(v153, v62);

LABEL_27:

    goto LABEL_29;
  }

  v87 = sub_76A950();
  v67(v152, v62);
  v67(v153, v62);

  if (v87)
  {
    goto LABEL_29;
  }

  sub_758CD0();
  v102 = v131;
  (v151)(v131, v133, v62);
  sub_769430();
  sub_769430();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v102, v62);
    v67(v148, v62);

    goto LABEL_27;
  }

  v103 = sub_76A950();
  v67(v102, v62);
  v67(v148, v62);

  if (v103)
  {
LABEL_29:
    v88 = v163;
    if (v75)
    {
      isa = sub_757550().super.isa;
      v90 = [v154 cellForItemAtIndexPath:isa];

      if (v90)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v91 = *(sub_769C00() + 16);

          if (!v91)
          {
            sub_BD88(&qword_942178);
            sub_767620();
            *(swift_allocObject() + 16) = xmmword_77B6D0;
            v104 = v125;
            v105 = v124;
            v106 = v127;
            (*(v125 + 104))(v124, enum case for UICellAccessory.DisplayedState.always(_:), v127);
            v107 = sub_767540();
            (*(*(v107 - 8) + 56))(v128, 1, 1, v107);
            v108 = v126;
            sub_767550();
            sub_767610();
            (*(v129 + 8))(v108, v130);
            (*(v104 + 8))(v105, v106);
          }

          sub_769C10();
        }
      }
    }

    sub_BE70(0, &qword_940340);
    v109 = sub_769970();
    v110 = v135;
    sub_7683D0();
    v111 = v140;
    sub_768450();
    v164 = *(v141 + 8);
    (v164)(v110, v150);
    v112 = v138;
    v113 = v137;
    v114 = v88;
    v115 = v139;
    (*(v138 + 16))(v137, v114, v139);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = swift_allocObject();
    v118 = v154;
    *(v117 + 16) = v154;
    (*(v112 + 32))(v117 + v116, v113, v115);
    v169 = sub_47C130;
    v170 = v117;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_23F0CC;
    v168 = &unk_89DC68;
    v119 = _Block_copy(&aBlock);
    v120 = v118;

    v121 = v142;
    sub_7683A0();
    aBlock = _swiftEmptyArrayStorage;
    sub_6F2DF0(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
    sub_BD88(&qword_940350);
    sub_16194(&qword_9406F0, &qword_940350);
    v122 = v144;
    v123 = v147;
    sub_76A5A0();
    sub_769930();
    _Block_release(v119);

    (*(v146 + 8))(v122, v123);
    (*(v143 + 8))(v121, v145);
    (v164)(v111, v150);
    (*(v155 + 8))(v158, v156);
    (*(v162 + 8))(v159, v161);
    goto LABEL_48;
  }

  (*(v155 + 8))(v158, v156);
LABEL_43:
  (*(v162 + 8))(v76, v161);
LABEL_48:
  sub_6F37F4(v160);
}

uint64_t sub_6F28EC(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757590();
  v9 = a3;
  v10 = a1;
  sub_6F3CD8();
  LOBYTE(a1) = v11;

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_6F2B10()
{
  sub_6F2BE4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_6F2BE4()
{
  if (!qword_962DD8)
  {
    sub_758DD0();
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_962DD8);
    }
  }
}

void sub_6F2C5C()
{
  sub_758DC0();
  if (v0 <= 0x3F)
  {
    sub_6F2CD0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_6F2CD0()
{
  if (!qword_962E60)
  {
    sub_758DC0();
    sub_758DA0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_962E60);
    }
  }
}

uint64_t sub_6F2D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F2DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_6F2E38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_758CE0();
  v5 = sub_6670E0(a1, v4);

  if (v5)
  {
    result = sub_758D90();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_6F2EB4(uint64_t a1, uint64_t a2)
{
  v55 = sub_758DC0();
  v50 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v45 - v6;
  v7 = sub_BD88(&qword_962EE0);
  __chkstk_darwin(v7 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v45 - v10;
    v12 = 0;
    v46 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v45[0] = v14;
    v45[1] = v50 + 16;
    v53 = (v50 + 32);
    v47 = (v50 + 8);
    while (v18)
    {
      v54 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v46;
      v26 = v49;
      v27 = v50;
      v28 = v55;
      (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v20, v55, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_BD88(&qword_962EE8);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v52;
      v32(v52, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v48;
      sub_6F4398(v33, v48);
      v35 = sub_BD88(&qword_962EE8);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v51;
      v38 = v55;
      (*v53)(v51, v34, v55);
      v39 = *(v34 + v36);
      sub_66456C(v37);
      LOBYTE(v36) = v40;
      (*v47)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_47B770(v41, v39);
      v43 = v42;

      v18 = v54;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v44 = sub_BD88(&qword_962EE8);
        v33 = v52;
        (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
        v54 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v45[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v54 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_6F3330(uint64_t a1, uint64_t a2)
{
  v4 = sub_758DA0();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v7;
  v8 = sub_758DC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_BD88(&qword_962EA0);
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - v21;
  v24 = &v43 + *(v23 + 56) - v21;
  sub_6F2D8C(a1, &v43 - v21);
  sub_6F2D8C(a2, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_6F2D8C(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v9 + 32))(v13, v24, v8);
      v35 = sub_758D30();
      v39 = *(v9 + 8);
      v39(v13, v8);
      v39(v19, v8);
      goto LABEL_11;
    }

    v16 = v19;
    goto LABEL_8;
  }

  sub_6F2D8C(v22, v16);
  v25 = *(sub_BD88(&qword_962E98) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v47 + 8))(&v16[v25], v48);
LABEL_8:
    (*(v9 + 8))(v16, v8);
    sub_10A2C(v22, &qword_962EA0);
    goto LABEL_9;
  }

  (*(v9 + 32))(v45, v24, v8);
  v26 = v47;
  v27 = *(v47 + 32);
  v28 = v48;
  v27(v46, &v16[v25], v48);
  v29 = &v24[v25];
  v30 = v44;
  v27(v44, v29, v28);
  v31 = v45;
  v32 = sub_758D30();
  v33 = *(v9 + 8);
  v33(v16, v8);
  if (v32)
  {
    v34 = v46;
    v35 = sub_758D80();
    v36 = *(v26 + 8);
    v37 = v30;
    v38 = v48;
    v36(v37, v48);
    v36(v34, v38);
    v33(v31, v8);
LABEL_11:
    sub_6F37F4(v22);
    return v35 & 1;
  }

  v41 = *(v26 + 8);
  v42 = v48;
  v41(v30, v48);
  v41(v46, v42);
  v33(v31, v8);
  sub_6F37F4(v22);
LABEL_9:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_6F37F4(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_6F3850(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_BD88(&qword_947488);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_pageFacets;
  v13 = sub_758DD0();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
  *&v4[v14] = sub_10E6E4(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource] = 0;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_preselectionContentOffset];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_facetsPresenter] = a1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_objectGraph] = a3;

  sub_75E280();
  swift_beginAccess();
  sub_6F4724(v11, &v4[v12]);
  swift_endAccess();

  v16 = sub_75E2E0();

  swift_beginAccess();
  *&v4[v14] = v16;

  v4[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_showDoneButton] = a2;
  v17 = [objc_allocWithZone(UICollectionViewLayout) init];
  v25.receiver = v4;
  v25.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v25, "initWithCollectionViewLayout:", v17);

  if (a2)
  {
    v19 = [v18 navigationItem];
    sub_BE70(0, &qword_947490);
    sub_BE70(0, &qword_955FA0);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v26.value.super.super.isa = sub_76A1F0();
    v26.is_nil = 0;
    isa = sub_769830(UIBarButtonSystemItemDone, v26, v27).super.super.isa;
    [v19 setRightBarButtonItem:isa];
  }

  v21 = [v18 navigationItem];
  v28._object = 0x80000000007F2350;
  v28._countAndFlagsBits = 0xD000000000000019;
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  sub_75B750(v28, v29);
  v22 = sub_769210();

  [v21 setTitle:v22];

  return v18;
}

void sub_6F3BD8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_pageFacets;
  v2 = sub_758DD0();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_selectedFacetOptions;
  *(v0 + v3) = sub_10E6E4(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource) = 0;
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  sub_76A840();
  __break(1u);
}

void sub_6F3CD8()
{
  v1 = sub_758CC0();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = sub_758DC0();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_962EA8);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PageFacetsViewController.Item(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    sub_767A40();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10A2C(v11, &qword_962EA8);
    }

    else
    {
      sub_6F4128(v11, v18);
      sub_6F2D8C(v18, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v31;
      v23 = (v31 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        sub_6F37F4(v18);
        v24 = *(sub_BD88(&qword_962E98) + 48);
        v25 = sub_758DA0();
        (*(*(v25 - 8) + 8))(&v15[v24], v25);
        (*v23)(v15, v32);
      }

      else
      {
        (*(v31 + 32))(v8, v15, v32);
        sub_758CD0();
        v27 = v29;
        v26 = v30;
        (*(v30 + 104))(v29, enum case for PageFacets.Facet.DisplayType.toggle(_:), v1);
        sub_6F2DF0(&qword_962EB0, &type metadata accessor for PageFacets.Facet.DisplayType);
        sub_7691C0();
        v28 = *(v26 + 8);
        v28(v27, v1);
        v28(v5, v1);
        (*(v22 + 8))(v8, v32);
        sub_6F37F4(v18);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_6F4128(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F418C()
{
  v1 = sub_757640();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6F4250(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_6F4268()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6F42A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947488);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F4318()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6F4358()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6F4398(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_962EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F4410(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947488);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_6F44A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_BD88(&qword_962F00);

  return sub_6F0228(a1, a2, a3);
}

uint64_t sub_6F454C(uint64_t *a1)
{
  v2 = sub_BD88(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_6F45D0()
{
  v1 = sub_758DC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_6F4694()
{
  sub_758DC0();

  sub_6F035C();
}

uint64_t sub_6F4724(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_947488);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_6F47B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  sub_4F4830(a1, &v25 - v5);
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30);
LABEL_8:
    v25 = 0u;
    v26 = 0u;
    goto LABEL_9;
  }

  v9 = sub_768AA0();
  (*(v8 + 8))(v6, v7);
  if (!*(v9 + 16) || (v10 = sub_3DF2F8(0x6973736572706D69, 0xEF7865646E496E6FLL), (v11 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_132B4(*(v9 + 56) + 32 * v10, &v25);

  if (*(&v26 + 1))
  {
    sub_13310(&v25, v27);
    v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_metricsLabel];
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    v28._countAndFlagsBits = 32;
    v28._object = 0xE100000000000000;
    sub_769370(v28);
    sub_76A7F0();
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_769370(v29);
    v13 = sub_769210();

    [v12 setText:v13];

    sub_BEB8(v27);
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_overlayColor];
    goto LABEL_10;
  }

LABEL_9:
  sub_10A2C(&v25, &unk_93FBD0);
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_metricsLabel];
  v15 = sub_769210();
  [v12 setText:v15];

  v14 = [objc_opt_self() yellowColor];
LABEL_10:
  v16 = v14;
  v17 = [v16 colorWithAlphaComponent:0.2];
  [v2 setBackgroundColor:v17];

  v18 = [v2 layer];
  v19 = [v16 colorWithAlphaComponent:0.2];

  v20 = [v19 CGColor];
  [v18 setBorderColor:v20];

  [v12 sizeToFit];
  v21 = [v12 layer];
  [v12 frame];
  Height = CGRectGetHeight(v30);
  [v12 frame];
  Width = CGRectGetWidth(v31);
  if (Width >= Height)
  {
    Width = Height;
  }

  [v21 setCornerRadius:{Width * 0.5, v25, v26}];

  v24 = [v12 layer];
  [v24 setMasksToBounds:1];
}

char *sub_6F4BD4(void *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_metricsLabel;
  *&v5[v12] = [objc_allocWithZone(UILabel) init];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_overlayColor] = a1;
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v13 = a1;
  v14 = objc_msgSendSuper2(&v28, "initWithFrame:", a2, a3, a4, a5);
  [v14 setTag:{58236912, v28.receiver, v28.super_class}];
  [v14 setUserInteractionEnabled:0];
  v15 = [v14 layer];
  [v15 setBorderWidth:5.0];

  v16 = OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_metricsLabel;
  [*&v14[OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_metricsLabel] setNumberOfLines:0];
  v17 = *&v14[v16];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 boldSystemFontOfSize:20.0];
  [v19 setFont:v20];

  [*&v14[v16] setTextColor:*&v14[OBJC_IVAR____TtC18ASMessagesProvider29ImpressionMetricsDebugOverlay_overlayColor]];
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

double *sub_6F4FA4(void (*a1)(void))
{
  v3 = [v1 subviews];
  sub_BE70(0, &qword_93E550);
  v4 = sub_769460();

  if (v4 >> 62)
  {
LABEL_19:
    v5 = sub_76A860();
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v6 = 0;
  do
  {
    v7 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v7 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_18;
        }

        v8 = *(v4 + 8 * v7 + 32);
      }

      v9 = v8;
      v6 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      a1(0);
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v7;
      if (v6 == v5)
      {
        goto LABEL_20;
      }
    }

    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  while (v6 != v5);
LABEL_20:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_6F5164()
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FDE8);
  qword_9A0930 = v0;
  unk_9A0938 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_9A0918);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_6F5220(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for BundleSearchResultContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_bundleView]];

  return v15;
}

id sub_6F5458()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for BundleSearchResultContentView();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView];
  sub_75D650();
  v2 = sub_12EE70();
  v4 = v3;
  sub_75D650();
  MinX = CGRectGetMinX(v16);
  sub_75D650();
  MinY = CGRectGetMinY(v17);
  [v1 setFrame:{MinX, MinY, v2, v4}];
  v7 = 0.0;
  if ((MetadataRibbonView.hasContent.getter() & 1) == 0 && (sub_EC48() & 1) == 0)
  {
    if (qword_93E1E8 != -1)
    {
      swift_once();
    }

    sub_B170(qword_9A0918, qword_9A0930);
    v8 = [v0 traitCollection];
    sub_766710();
    v7 = v9;
  }

  sub_75D650();
  Height = CGRectGetHeight(v18);
  v19.origin.x = MinX;
  v19.origin.y = MinY;
  v19.size.width = v2;
  v19.size.height = v4;
  v11 = Height - (v7 + CGRectGetHeight(v19));
  sub_75D650();
  v12 = CGRectGetMinX(v20);
  v21.origin.x = MinX;
  v21.origin.y = MinY;
  v21.size.width = v2;
  v21.size.height = v4;
  v13 = v7 + CGRectGetMaxY(v21);
  sub_75D650();
  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_bundleView] setFrame:{v12, v13, CGRectGetWidth(v22), v11}];
}

uint64_t sub_6F56C4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_93F620);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  sub_75D360();
  sub_6F74AC(&qword_94AC60, 255, &type metadata accessor for BundleSearchResult);
  result = sub_75C750();
  if (v14[1])
  {
    v10 = sub_75D350();
    v11 = sub_75C840();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v8, a1, v11);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_223E1C(v10, v8, a2);

    sub_10A2C(v8, &unk_93F620);
    sub_75D350();
    v13 = sub_764F60();

    if (!v13)
    {
      v13 = _swiftEmptyArrayStorage;
    }

    sub_314438(v13);

    [v3 setNeedsLayout];
  }

  return result;
}

id sub_6F58E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_6F598C()
{
  sub_12F484();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_bundleView);
  sub_314024();
  sub_314254();
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView);
  v3 = v2;
  v4 = v2;
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v3);
}

uint64_t sub_6F5A74(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_6F74AC(&qword_962F88, a2, type metadata accessor for BundleSearchResultContentView);
  result = sub_6F74AC(&unk_962F90, v3, type metadata accessor for BundleSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

void sub_6F5AF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  sub_134D8(a1, v17);
  sub_BD88(&unk_93F520);
  sub_75D360();
  if (swift_dynamicCast())
  {
    sub_75D350();
    v7 = sub_764EE0();

    if (v7)
    {
      v8 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v16 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView);
      v9 = qword_93C668;
      v10 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_75CF00();
      sub_BE38(v11, qword_99B898);
      sub_75CDD0();
      [v10 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v10 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540);
        sub_76A030();
      }

      sub_759070();
      v12 = *(v16 + v8);
      sub_759210();
      sub_6F74AC(&qword_945810, 255, &type metadata accessor for ArtworkView);
      v13 = v12;
      sub_75A050();
    }

    sub_75D350();
    v14 = sub_764F60();

    if (v14)
    {
      sub_31353C(v14, a2);
    }

    v15 = *(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
    sub_1BA288(a1, a2);
  }
}

uint64_t sub_6F5E1C(uint64_t a1)
{
  v2 = sub_7652D0();
  v116 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v88[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_760840();
  v115 = *(v5 - 8);
  __chkstk_darwin(v5);
  v114 = &v88[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_760D90();
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v108 = &v88[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_762D10();
  v111 = *(v9 - 8);
  v112 = v9;
  __chkstk_darwin(v9);
  v110 = &v88[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_75D850();
  v122 = *(v11 - 8);
  v123 = v11;
  __chkstk_darwin(v11);
  v13 = &v88[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v121 = &v88[-v15];
  v128 = sub_760820();
  v120 = *(v128 - 8);
  __chkstk_darwin(v128);
  v113 = &v88[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v127 = &v88[-v18];
  v19 = sub_BD88(&unk_94AE30);
  __chkstk_darwin(v19 - 8);
  v107 = &v88[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v125 = &v88[-v22];
  v23 = sub_75DAB0();
  __chkstk_darwin(v23 - 8);
  v24 = sub_7656C0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v126 = &v88[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_75D360();
  sub_6F74AC(&qword_94AC60, 255, &type metadata accessor for BundleSearchResult);
  result = sub_75C750();
  v124 = v165[0];
  if (v165[0])
  {
    v101 = v5;
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_75D350();
    v28 = sub_764EF0();
    v94 = v29;
    v95 = v28;

    sub_75D350();
    v30 = sub_764F70();
    v96 = v31;
    v97 = v30;

    sub_75D350();
    v117 = sub_75BC90();

    (*(v118 + 56))(v125, 1, 1, v119);
    sub_75D350();
    sub_75BCD0();

    swift_getKeyPath();
    sub_75C7B0();

    v32 = v165[5];
    sub_765630();
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v33 = v128;
    v34 = sub_BE38(v128, qword_99B150);
    v98 = *(v120 + 16);
    v99 = v120 + 16;
    v98(v127, v34, v33);
    v35 = sub_769A00();
    v105 = v2;
    v106 = a1;
    v103 = v24;
    v104 = v4;
    v102 = v25;
    if (v35)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v36 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v36 = qword_946938;
    }

    v37 = v123;
    v38 = sub_BE38(v123, v36);
    v39 = v122;
    (*(v122 + 16))(v13, v38, v37);
    (*(v39 + 32))(v121, v13, v37);
    v40 = [v32 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v93 = sub_7670D0();
    swift_allocObject();
    v100 = sub_7670B0();
    v41 = objc_opt_self();
    v91 = v41;
    v42 = [v41 preferredFontForTextStyle:UIFontTextStyleBody];
    v43 = sub_7653B0();
    v165[3] = v43;
    v44 = sub_6F74AC(&qword_93F9B0, 255, &type metadata accessor for Feature);
    v165[4] = v44;
    v90 = v44;
    v45 = sub_B1B4(v165);
    v46 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92 = *(*(v43 - 8) + 104);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v92(v45, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    sub_765C30();
    v109 = v32;
    sub_BEB8(v165);
    v47 = v110;
    sub_762D00();
    sub_762CE0();
    v48 = v112;
    v111 = *(v111 + 8);
    (v111)(v47, v112);
    v49 = [v41 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v164[3] = v43;
    v164[4] = v44;
    v50 = sub_B1B4(v164);
    v51 = v46;
    v52 = v92;
    v92(v50, v51, v43);
    sub_765C30();
    sub_BEB8(v164);
    sub_762D00();
    sub_762CE0();
    v53 = v111;
    (v111)(v47, v48);
    v54 = [v91 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v163[3] = v43;
    v163[4] = v90;
    v55 = sub_B1B4(v163);
    v52(v55, v89, v43);
    sub_765C30();
    sub_BEB8(v163);
    sub_762D00();
    sub_762CE0();
    v53(v47, v48);
    v56 = v117;
    LODWORD(v112) = sub_246DC(0, v117) & (v56 != 0);
    if (v112 == 1)
    {
      v57 = v93;
      v58 = objc_allocWithZone(sub_7671D0());
      v59 = v109;
      v60 = sub_7671C0();
      v61 = v107;
      sub_133294(v125, v107);
      v63 = v118;
      v62 = v119;
      v64 = *(v118 + 48);
      if (v64(v61, 1, v119) == 1)
      {
        v65 = v108;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v64(v61, 1, v62) != 1)
        {
          sub_10A2C(v61, &unk_94AE30);
        }
      }

      else
      {
        v65 = v108;
        (*(v63 + 32))(v108, v61, v62);
      }

      v67 = v60;
      sub_2185C(v56, v65, v67);

      (*(v63 + 8))(v65, v62);
      swift_allocObject();
      v66 = sub_7670A0();
    }

    else
    {
      v57 = v93;
      swift_allocObject();
      v66 = sub_7670B0();
    }

    v68 = v66;

    sub_246DC(0, 0);
    swift_allocObject();
    v69 = sub_7670B0();
    v70 = v127;
    v98(v113, v127, v128);
    v162 = &protocol witness table for LayoutViewPlaceholder;
    v161 = v57;
    v160 = v100;
    v159 = 0;
    *&v157[40] = 0u;
    v158 = 0u;
    sub_134D8(v165, v157);
    sub_134D8(v164, &v156);
    v155 = 0;
    v153 = 0u;
    v154 = 0u;
    v152 = 0;
    v150 = 0u;
    v151 = 0u;

    v71 = sub_7670C0();
    v149 = &protocol witness table for LayoutViewPlaceholder;
    v148 = v57;
    v147 = v71;
    v146 = 0;
    v144 = 0u;
    v145 = 0u;
    v143 = 0;
    v141 = 0u;
    v142 = 0u;
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v137 = 0;
    v136 = 0u;
    *&v135[40] = 0u;
    sub_134D8(v163, v135);
    v133 = v57;
    v134 = &protocol witness table for LayoutViewPlaceholder;
    v131 = &protocol witness table for LayoutViewPlaceholder;
    v132 = v68;
    v130 = v57;
    v129 = v69;
    v72 = v114;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_77D9F0;
    v74 = v109;
    *(v73 + 32) = v109;
    v75 = v74;
    v76 = sub_7671E0();
    sub_6F74AC(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout);
    v77 = v101;
    sub_7665A0();

    (*(v115 + 8))(v72, v77);
    sub_BEB8(v163);
    sub_BEB8(v164);
    sub_BEB8(v165);
    (*(v122 + 8))(v121, v123);
    (*(v120 + 8))(v70, v128);
    sub_10A2C(v125, &unk_94AE30);
    v78 = v116;
    v80 = v104;
    v79 = v105;
    (*(v116 + 104))(v104, enum case for Artwork.Style.roundedRect(_:), v105);
    v81 = v126;
    sub_765630();
    sub_75D350();
    v82 = sub_764F60();

    if (!v82)
    {
      v82 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for BundleView();
    v83 = sub_527DE4();
    swift_getObjectType();
    sub_316484(v80, v82, v83);
    swift_unknownObjectRelease();

    (*(v78 + 8))(v80, v79);
    sub_75D350();
    v84 = sub_75BCB0();
    v85 = sub_75BC90();
    v86 = sub_246DC(v84, v85);

    if (v86)
    {
      (*(v102 + 8))(v81, v103);
    }

    else
    {
      if (qword_93E1E8 != -1)
      {
        swift_once();
      }

      sub_B170(qword_9A0918, qword_9A0930);
      swift_getKeyPath();
      sub_75C7B0();

      v87 = v165[0];
      sub_766710();

      return (*(v102 + 8))(v126, v103);
    }
  }

  return result;
}

uint64_t sub_6F6F68()
{
  sub_75D360();
  sub_6F74AC(&qword_94AC60, 255, &type metadata accessor for BundleSearchResult);
  result = sub_75C750();
  if (v6)
  {
    sub_75D350();

    v1 = sub_75BC90();
    if (v1)
    {
      v2 = v1;
      swift_getKeyPath();
      sub_75C7B0();

      v3 = sub_1BA624(v2, v5);

      sub_10A0E4(v3);
      v4._rawValue = _swiftEmptyArrayStorage;
      sub_75A070(v4);
    }
  }

  return result;
}

void sub_6F70A4()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v40.value.super.isa = 0;
  v40.is_nil = 0;
  sub_7591D0(v40, v5);

  v6 = *(v2 + v3);
  sub_759210();
  sub_6F74AC(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v7 = v6;
  sub_75A0C0();

  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v9 = *&v8[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v10 = *(v9 + 16);
  if (v10)
  {
    v36 = v1;
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v35 = v8;

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      if (swift_dynamicCastClass())
      {
        v13 = v12;
        v41.value.super.isa = 0;
        v41.is_nil = 0;
        sub_7591D0(v41, v14);
        sub_75A0C0();
      }

      v11 += 16;
      --v10;
    }

    while (v10);

    v1 = v36;
  }

  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_bundleView];
  v15 = sub_6F4FA4(type metadata accessor for BundleChildView);
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_76A860();
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v17 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    if (!v17)
    {
      goto LABEL_16;
    }
  }

  if (v17 < 1)
  {
    __break(1u);
    goto LABEL_29;
  }

  v18 = 0;
  do
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v19 = sub_76A770();
    }

    else
    {
      v19 = *(v16 + 8 * v18 + 32);
    }

    v20 = v19;
    ++v18;
    v21 = OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon;
    v22 = *&v19[OBJC_IVAR____TtC18ASMessagesProvider15BundleChildView_icon];
    v42.value.super.isa = 0;
    v42.is_nil = 0;
    sub_7591D0(v42, v23);

    v24 = *&v20[v21];
    sub_75A0C0();
  }

  while (v17 != v18);
LABEL_16:

  v25 = sub_6F4FA4(type metadata accessor for BorderedScreenshotView);
  v26 = v25;
  if (v25 >> 62)
  {
    v27 = sub_76A860();
    if (v27)
    {
LABEL_18:
      if (v27 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v26 & 0xC000000000000001) != 0)
          {
            v29 = sub_76A770();
          }

          else
          {
            v29 = *(v26 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          v31 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
          v32 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
          v43.value.super.isa = 0;
          v43.is_nil = 0;
          sub_7591D0(v43, v33);

          v34 = *&v30[v31];
          sub_75A0C0();
        }

        while (v27 != v28);
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return;
    }
  }

  else
  {
    v27 = *(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_18;
    }
  }

LABEL_25:

  v38 = *&v37[OBJC_IVAR____TtC18ASMessagesProvider10BundleView_backgroundArtworkView];
  sub_75A0C0();
}

uint64_t sub_6F74AC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_6F74F4(uint64_t a1, void *a2)
{
  v5 = sub_75D850();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  if (a1 >= 1)
  {
    __chkstk_darwin(v10);
    *(&v20 - 2) = v2;
    *(&v20 - 1) = a2;
    v21 = sub_769A20();
    if (qword_93C328 != -1)
    {
      swift_once();
    }

    if (qword_93C330 != -1)
    {
      swift_once();
    }

    if (sub_769A00())
    {
      v13 = &xmmword_99AB20;
    }

    else
    {
      v13 = &xmmword_99A9B0;
    }

    sub_BE140(v13, v22);
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v14 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v14 = qword_946938;
    }

    v15 = sub_BE38(v5, v14);
    (*(v6 + 16))(v8, v15, v5);
    (*(v6 + 32))(v12, v8, v5);
    if ((v25 & 1) == 0 && v23 == 0.0 && v24 == 0.0)
    {
      sub_75D800();
      v17 = v16;
      sub_75D800();
      v23 = v17;
      v24 = v18;
      v25 = 0;
    }

    v19 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v22, a2, 0.0);
    (*(v6 + 8))(v12, v5, v19);
    sub_BE0EC(v22);
  }
}

uint64_t sub_6F7840(void *a1)
{
  v2 = sub_75D850();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  if (qword_93C328 != -1)
  {
    swift_once();
  }

  if (qword_93C330 != -1)
  {
    swift_once();
  }

  if (sub_769A00())
  {
    v9 = &xmmword_99AB20;
  }

  else
  {
    v9 = &xmmword_99A9B0;
  }

  sub_BE140(v9, v19);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v10 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v10 = qword_946938;
  }

  v11 = sub_BE38(v2, v10);
  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 32))(v8, v5, v2);
  if ((v22 & 1) == 0 && v20 == 0.0 && v21 == 0.0)
  {
    sub_75D800();
    v13 = v12;
    sub_75D800();
    v20 = v13;
    v21 = v14;
    v22 = 0;
  }

  v15 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v19, a1, 0.0);
  (*(v3 + 8))(v8, v2, v15);
  sub_BE0EC(v19);
  sub_6FBCE8(a1);
  v16 = [a1 preferredContentSizeCategory];
  sub_769B30();

  sub_7697D0();
  return sub_7608D0();
}

id sub_6F7B8C(double a1, double a2, double a3, double a4)
{
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] = 0;
  swift_weakInit();
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lastContentWidth] = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  *&v4[v10] = sub_10F700(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging] = 0;
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup];
  *v11 = 0;
  v11[8] = 1;
  v12 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v12;
  v13 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_6F8A8C();
  sub_BD88(&qword_9477F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77B6D0;
  *(v18 + 32) = sub_767B80();
  *(v18 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v20[3] = v12;
  v20[0] = v17;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v20);
  return v17;
}

void sub_6F7EC0(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for TodayListCardLockupContainer();
  v21.receiver = v4;
  v21.super_class = v9;
  objc_msgSendSuper2(&v21, "frame");
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v20.receiver = v4;
  v20.super_class = v9;
  objc_msgSendSuper2(&v20, "setFrame:", a1, a2, a3, a4);
  [v4 frame];
  Height = CGRectGetHeight(v22);
  v23.origin.x = v11;
  v23.origin.y = v13;
  v23.size.width = v15;
  v23.size.height = v17;
  if (Height != CGRectGetHeight(v23))
  {
    v19 = v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
    v4[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_6F7FB4(v19);
  }
}

uint64_t sub_6F7FB4(uint64_t result)
{
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] == 1 && (result & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v3 = *&v1[v2];
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    for (i = 0; v6; result = [*(*(*(v3 + 56) + ((v9 << 9) | (8 * v10))) + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView) setNeedsLayout])
    {
      v9 = i;
LABEL_11:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
    }

    while (1)
    {
      v9 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return [v1 setNeedsLayout];
      }

      v6 = *(v3 + 64 + 8 * v9);
      ++i;
      if (v6)
      {
        i = v9;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_6F80F0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_7608E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TodayListCardLockupContainer();
  v19.receiver = v0;
  v19.super_class = v6;
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups];
  if (v7 >> 62)
  {
    v8 = sub_76A860();
  }

  else
  {
    v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
  }

  v9 = v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded];
  sub_75D650();
  v10 = [v0 traitCollection];
  if (v9 == 1)
  {
  }

  else
  {
    v11 = v10;
    sub_6F7840(v10);
    v12 = sub_7608B0();
    v14 = v13;

    (*(v3 + 8))(v5, v2);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = v12;
    }

    if (v8 >= v15)
    {
      v8 = v15;
    }
  }

  v16 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lastContentWidth;
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lastContentWidth];
  sub_75D650();
  if (v17 != CGRectGetWidth(v20) || *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] != v8)
  {
    v18 = v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
    v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
    sub_6F7FB4(v18);
  }

  if (v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] == 1)
  {
    if (swift_weakLoadStrong())
    {

      *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] = v8;
      sub_6F8E98(v8);
      sub_6F83A0();
      sub_75D650();
      *&v1[v16] = CGRectGetWidth(v21);
    }
  }
}

void sub_6F83A0()
{
  v2 = v0;
  swift_getObjectType();
  v3 = sub_7608E0();
  __chkstk_darwin(v3 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_760900();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  __chkstk_darwin(v9);
  v11 = &v43 - v10;
  if (!swift_weakLoadStrong())
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] != 1)
  {
    return;
  }

  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit];
  if ((v12 & 0x8000000000000000) == 0)
  {
    v51 = v7;
    v52 = v5;
    v47 = v8;
    v48 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid;
    v50 = v11;
    v8 = _swiftEmptyArrayStorage;
    *&aBlock = _swiftEmptyArrayStorage;
    v1 = v2;
    v13 = 0;
    v5 = _swiftEmptyArrayStorage;
    while (v12 != v13)
    {
      if (v13 >= v12)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_24;
      }

      if (sub_6F9028(v13++))
      {
        sub_769440();
        if (*(&dword_10 + (aBlock & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v5 = aBlock;
        v13 = v14;
      }
    }

    v16 = [v1 traitCollection];
    sub_6F7840(v16);

    swift_getKeyPath();
    v44 = v2;
    v45 = v5 >> 62;
    v49 = v6;
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    v17 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (v17)
    {
      goto LABEL_14;
    }

LABEL_27:

    goto LABEL_28;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  v17 = sub_76A860();
  if (!v17)
  {
    goto LABEL_27;
  }

LABEL_14:
  v59 = v8;
  sub_143FEC(0, v17 & ~(v17 >> 63), 0);
  if (v17 < 0)
  {
LABEL_48:
    __break(1u);
    return;
  }

  v18 = 0;
  v19 = v59;
  do
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = sub_76A770();
    }

    else
    {
      v20 = *(v5 + 8 * v18 + 32);
    }

    v58 = v20;
    v21 = v20;
    swift_getAtKeyPath();

    v59 = v19;
    v23 = *(v19 + 2);
    v22 = *(v19 + 3);
    if (v23 >= v22 >> 1)
    {
      sub_143FEC((v22 > 1), v23 + 1, 1);
      v19 = v59;
    }

    ++v18;
    *(v19 + 2) = v23 + 1;
    sub_10914(&aBlock, &v19[5 * v23 + 4]);
  }

  while (v17 != v18);

  v6 = v49;
LABEL_28:
  v24 = v50;
  sub_7608F0();
  v25 = objc_opt_self();
  v26 = v51;
  v27 = v48;
  (*(v51 + 16))(v48, v24, v6);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v47 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v28, v27, v6);
  *(v30 + v29) = v1;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_6FC5DC;
  *(v31 + 24) = v30;
  v56 = sub_2EC28;
  v57 = v31;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v54 = sub_1EB578;
  v55 = &unk_89DF20;
  v32 = _Block_copy(&aBlock);
  v33 = v1;

  [v25 performWithoutAnimation:v32];
  _Block_release(v32);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (!v45)
  {
    v34 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v34 = sub_76A860();
  if (v34)
  {
LABEL_33:
    v35 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v36 = sub_76A770();
      }

      else
      {
        if (v35 >= *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_46;
        }

        v36 = *(v5 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      sub_6FA93C(v36, v35);

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:

  v39 = &v33[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock];
  swift_beginAccess();
  v40 = *v39;
  if (*v39)
  {

    v40(v41);
    sub_F704(v40);
  }

  v42 = v44[v46];
  v44[v46] = 0;
  sub_6F7FB4(v42);
  (*(v51 + 8))(v50, v49);
}

void sub_6F89EC(int a1, id a2)
{
  [a2 bounds];
  v3 = [a2 traitCollection];
  sub_7608C0();
}

uint64_t sub_6F8A8C()
{
  v1 = [v0 traitCollection];
  v2 = [(NSString *)v1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v4 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_769B50())
  {
    v6 = sub_769B60();

    if (v6)
    {
      v7 = v3;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = [(NSString *)v1 preferredContentSizeCategory];
  v9 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_769B60();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_769B50())
  {
    v11 = sub_769B60();

    if (v11)
    {
      v7 = UIContentSizeCategoryAccessibilityLarge;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {

    v7 = 0;
    v1 = v9;
  }

LABEL_12:

  [v0 setMaximumContentSizeCategory:v7];
  v12 = v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
  v0[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_6F7FB4(v12);

  return [v0 setNeedsLayout];
}

uint64_t sub_6F8CC8()
{
  if (!swift_weakLoadStrong())
  {
    goto LABEL_15;
  }

  if (!swift_weakLoadStrong())
  {
LABEL_14:

LABEL_15:
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups) = _swiftEmptyArrayStorage;

    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages) = 0;

    swift_weakAssign();
    v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid);
    *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid) = 1;
    return sub_6F7FB4(v13);
  }

  v1 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = sub_BEB8(v14))
  {
    v9 = i;
LABEL_11:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(v2 + 56) + ((v9 << 9) | (8 * v10)));
    v14[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
    v14[0] = v11;
    v12 = v11;
    sub_760910();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      goto LABEL_14;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_6F8E98(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  result = swift_beginAccess();
  v6 = *(*(v1 + v4) + 16);
  if (v6 > a1)
  {
    result = swift_weakLoadStrong();
    if (result)
    {
      if (swift_weakLoadStrong())
      {
        do
        {
          swift_beginAccess();
          v7 = sub_663D5C(a1);
          if (v8)
          {
            v9 = v7;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11 = *(v2 + v4);
            v16 = v11;
            *(v2 + v4) = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_45D3C0();
              v11 = v16;
            }

            v12 = v9;
            v13 = *(*(v11 + 56) + 8 * v9);
            sub_45EDF4(v12, v11);
            *(v2 + v4) = v11;
            swift_endAccess();
            v15[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
            v15[0] = v13;
            v14 = v13;
            sub_760910();
            sub_BEB8(v15);
            [v14 removeFromSuperview];
          }

          else
          {
            swift_endAccess();
          }

          ++a1;
        }

        while (v6 != a1);
      }
    }
  }

  return result;
}

uint64_t sub_6F9028(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_BD88(&unk_948730);
  __chkstk_darwin(v16 - 8);
  v18 = &v47 - v17;
  v19 = sub_75FA00();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups;
  v24 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups];
  if (!(v24 >> 62))
  {
    result = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (result > a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v52 = v20;
  v46 = v22;
  result = sub_76A860();
  v22 = v46;
  v20 = v52;
  if (result <= a1)
  {
    return 0;
  }

LABEL_3:
  v51 = v12;
  v26 = *&v2[v23];
  v53 = v22;
  if ((v26 & 0xC000000000000001) != 0)
  {

    v52 = sub_76A770();

LABEL_7:
    v50 = v9;
    v27 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    swift_beginAccess();
    v28 = *&v2[v27];
    if (*(v28 + 16) && (v29 = sub_663D5C(a1), (v30 & 1) != 0))
    {
      v31 = *(*(v28 + 56) + 8 * v29);
    }

    else
    {
      v32 = sub_6FC1AC();
      [v32 setAutoresizingMask:2];
      [v2 addSubview:v32];
      swift_beginAccess();
      v31 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *&v2[v27];
      *&v2[v27] = 0x8000000000000000;
      sub_45A7B8(v31, a1, isUniquelyReferenced_nonNull_native);
      *&v2[v27] = v54;
      swift_endAccess();
    }

    v34 = [v31 contentView];
    [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v49 = Strong;
      sub_BD88(&unk_9467D0);
      v36 = v6;
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_77E280;
      sub_75F9B0();
      sub_75F9C0();
      v55 = v37;
      sub_6FC43C(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions);
      sub_BD88(&unk_9467E0);
      sub_6FC484();
      sub_76A5A0();

      v38 = *&v31[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView];
      v39 = sub_BD88(&unk_948740);
      (*(*(v39 - 8) + 56))(v18, 1, 1, v39);
      v40 = sub_758C70();
      (*(*(v40 - 8) + 56))(v15, 1, 1, v40);
      v41 = sub_75BD30();
      v42 = v51;
      (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
      v43 = sub_765870();
      v44 = v50;
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      v45 = sub_BD88(&unk_9457F0);
      (*(*(v45 - 8) + 56))(v36, 1, 1, v45);
      v48 = v19;
      sub_4A18A4(v52, v38, v18, v49, 0, 0, v15, v42, v44, v36);
      v38[OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
      sub_BD3C0();
      [v38 setNeedsLayout];
      sub_BD3C0();
      sub_10A2C(v36, &unk_94AC40);
      sub_10A2C(v44, &unk_9457D0);
      sub_10A2C(v42, &unk_9457E0);
      sub_10A2C(v15, &unk_94A780);
      sub_10A2C(v18, &unk_948730);
      [v31 setNeedsLayout];

      (*(v20 + 8))(v53, v48);
    }

    else
    {
    }

    return v31;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v52 = *(v26 + 8 * a1 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_6F97C4()
{
  if ((*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded) & 1) == 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_6F9984(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_6F9A24()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v12, "didMoveToSuperview");
  v1 = [v0 superview];
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        break;
      }

      v4 = [v2 superview];

      v2 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v7 = v3;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      sub_BE70(0, &unk_94A790);
      v10 = v2;
      v11 = sub_76A1C0();

      if (v11)
      {

        return;
      }
    }

    v6 = v7;
  }

  else
  {
LABEL_5:
    v5 = swift_unknownObjectWeakLoadStrong();
    if (!v5)
    {
      return;
    }

    v6 = 0;
  }

  sub_6F9984(v6);
}

unint64_t sub_6F9C0C(unint64_t result, char a2)
{
  v4 = result;
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup;
  if ((*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup + 8) & 1) == 0)
  {
    v6 = *v5;
    v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v8 = *(v2 + v7);
    if (*(v8 + 16))
    {
      result = sub_663D5C(v6);
      if (v9)
      {
        result = [*(*(v8 + 56) + 8 * result) setHighlighted:0];
      }
    }
  }

  *v5 = v4;
  *(v5 + 8) = a2 & 1;
  if ((a2 & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
    result = swift_beginAccess();
    v11 = *(v2 + v10);
    if (*(v11 + 16))
    {
      result = sub_663D5C(v4);
      if (v12)
      {
        return [*(*(v11 + 56) + 8 * result) setHighlighted:1];
      }
    }
  }

  return result;
}

void sub_6F9D18(uint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 56) + ((v14 << 9) | (8 * v15)));
    [v16 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
    v17 = [v16 pointInside:a1 withEvent:?];

    if (v17)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_6F9E80(unint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups);
  if ((v7 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)) > a1)
    {

      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  sub_76A770();

LABEL_5:
  v8 = sub_764D80();
  if (v8)
  {
    v9 = v8;
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = sub_BD88(&unk_93F630);
      sub_768860();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v6, 1, v12) == 1)
      {

        sub_10A2C(v6, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v9, 1, v11, v6);

        (*(v13 + 8))(v6, v12);
      }

      return;
    }
  }
}

void sub_6FA0C8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded) == 1)
  {
    v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch;
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch);
    if (!v6 || [v6 phase] == &dword_0 + 3 || (v7 = *(v2 + v5)) != 0 && objc_msgSend(v7, "phase") == &dword_4)
    {
      v8 = sub_74E4B8(a1);
      if (v8)
      {
        v9 = v8;
        [v8 locationInView:v2];
        sub_6F9D18(a2, v10, v11);
        sub_6F9C0C(v13, v12 & 1);
        v14 = *(v2 + v5);
        *(v2 + v5) = v9;

        sub_BE70(0, &qword_963060);
        sub_5A800();
        v15.super.isa = sub_769630().super.isa;
        v17.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v17, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v2, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
      }

      else
      {
        sub_BE70(0, &qword_963060);
        sub_5A800();
        v15.super.isa = sub_769630().super.isa;
        v18.super_class = type metadata accessor for TodayListCardLockupContainer();
        objc_msgSendSuper2(&v18, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v2, v18.super_class, v19.receiver, v19.super_class);
      }
    }

    else
    {
      sub_BE70(0, &qword_963060);
      sub_5A800();
      v15.super.isa = sub_769630().super.isa;
      v16.super_class = type metadata accessor for TodayListCardLockupContainer();
      objc_msgSendSuper2(&v16, "touchesBegan:withEvent:", v15.super.isa, a2, v2, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v19.receiver, v19.super_class);
    }
  }

  else
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v15.super.isa = sub_769630().super.isa;
    v19.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v19, "touchesBegan:withEvent:", v15.super.isa, a2, v16.receiver, v16.super_class, v17.receiver, v17.super_class, v18.receiver, v18.super_class, v2, v19.super_class);
  }
}

void sub_6FA2E0(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] != 1)
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v15.super.isa = sub_769630().super.isa;
    v18.receiver = v2;
    v18.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v18, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch;
  v6 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch];
  if (!v6)
  {
LABEL_14:
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v15.super.isa = sub_769630().super.isa;
    v17.receiver = v2;
    v17.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v17, "touchesEnded:withEvent:", v15.super.isa, a2);
    goto LABEL_15;
  }

  v7 = v6;
  if ((sub_666B98(v7, a1) & 1) == 0)
  {

    goto LABEL_14;
  }

  v8 = *&v2[v5];
  *&v2[v5] = 0;

  v9 = &v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup];
  if ((v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
  {
    v10 = *v9;
    if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isDragging])
    {
LABEL_8:
      v11 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v12 = *&v2[v11];
      if (*(v12 + 16))
      {
        v13 = sub_663D5C(v10);
        if (v14)
        {
          [*(*(v12 + 56) + 8 * v13) setHighlighted:0];
        }
      }

      goto LABEL_11;
    }

    sub_6F9E80(*v9);
    if ((v9[8] & 1) == 0)
    {
      v10 = *v9;
      goto LABEL_8;
    }
  }

LABEL_11:
  *v9 = 0;
  v9[8] = 1;

  sub_BE70(0, &qword_963060);
  sub_5A800();
  v15.super.isa = sub_769630().super.isa;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for TodayListCardLockupContainer();
  objc_msgSendSuper2(&v16, "touchesEnded:withEvent:", v15.super.isa, a2);
LABEL_15:
}

uint64_t sub_6FA518(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_BE70(0, &qword_963060);
  sub_5A800();
  v8 = sub_769640();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_6FA5C8(uint64_t a1, uint64_t a2)
{
  if (v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isExpanded] == 1)
  {
    v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch];
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_currentTouch] = 0;

    v5 = &v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup];
    if ((v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_indexForHighlightedLockup + 8] & 1) == 0)
    {
      v6 = *v5;
      v7 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
      swift_beginAccess();
      v8 = *&v2[v7];
      if (*(v8 + 16))
      {
        v9 = sub_663D5C(v6);
        if (v10)
        {
          [*(*(v8 + 56) + 8 * v9) setHighlighted:0];
        }
      }
    }

    *v5 = 0;
    v5[8] = 1;
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v12, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }

  else
  {
    sub_BE70(0, &qword_963060);
    sub_5A800();
    v11.super.isa = sub_769630().super.isa;
    v13.receiver = v2;
    v13.super_class = type metadata accessor for TodayListCardLockupContainer();
    objc_msgSendSuper2(&v13, "touchesCancelled:withEvent:", v11.super.isa, a2);
  }
}

void sub_6FA764(uint64_t a1, int a2, id a3)
{
  v5 = [a3 preferredContentSizeCategory];
  v6 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v7 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((sub_769B60() & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_769B50())
  {
    v8 = sub_769B60();

    if (v8)
    {
LABEL_10:
      v12 = v6;
      sub_10974(a1, *(a1 + 24));
      sub_767670();
      return;
    }
  }

  else
  {
  }

  v9 = [a3 preferredContentSizeCategory];
  v13 = UIContentSizeCategoryAccessibilityMedium;
  v10 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((sub_769B60() & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (sub_769B50())
  {
    v11 = sub_769B60();

    if ((v11 & 1) == 0)
    {
      return;
    }

    v6 = UIContentSizeCategoryAccessibilityLarge;
    goto LABEL_10;
  }
}

uint64_t sub_6FA93C(char *a1, unint64_t a2)
{
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_765240();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups);
    v25 = result;
    if ((v11 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)) > a2)
      {
        v12 = *(v11 + 8 * a2 + 32);

LABEL_7:
        v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = sub_663D5C(a2);
            if (v15)
            {
              v16 = *(*(v13 + 56) + 8 * v14);
              if (sub_764F20())
              {
                sub_765250();
                v17 = sub_765210();
                v18 = v9;
                v19 = v17;
                (*(v7 + 8))(v18, v6);
                v20 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView];
                swift_beginAccess();
                sub_765330();
                v21 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
                sub_7652E0();
                sub_7591B0();
                [v21 setContentMode:{sub_765140(), v25}];
                sub_75DEF0();
                sub_7591F0();
                if (!sub_7651A0())
                {
                  sub_BE70(0, &qword_93E540);
                  sub_76A030();
                }

                sub_759070();
                [v21 setContentMode:v19];
                v22 = v16;
                v29.value.super.isa = v16;
                v29.is_nil = 0;
                sub_7591D0(v29, v23);
              }
            }
          }
        }

        v27[3] = sub_764F90();
        v27[4] = sub_6FC43C(&qword_947610, &type metadata accessor for Lockup);
        v27[0] = v12;
        v26[3] = type metadata accessor for TodayCardSmallLockupCollectionViewCell();
        v26[0] = a1;

        v24 = a1;
        sub_758EF0();

        sub_BEB8(v26);
        return sub_10A2C(v27, &unk_963040);
      }

      __break(1u);
      return result;
    }

    v12 = sub_76A770();

    goto LABEL_7;
  }
}

id sub_6FAD6C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups] = a1;

  swift_weakAssign();
  swift_weakAssign();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] = 0;
  v2 = v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
  v1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_6F7FB4(v2);

  return [v1 setNeedsLayout];
}

id sub_6FAE1C(char *a1)
{
  v2 = v1;
  v4 = [a1 maximumContentSizeCategory];
  [v2 setMaximumContentSizeCategory:v4];

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups] = *&a1[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups];

  swift_weakLoadStrong();
  swift_weakAssign();

  swift_weakLoadStrong();
  swift_weakAssign();

  *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit] = 0;
  v5 = v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid];
  v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_isListLayoutInvalid] = 1;
  sub_6F7FB4(v5);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_listCells;
  swift_beginAccess();
  v7 = *&a1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v38 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(v7 + 48) + v15);
    v17 = *(*(v7 + 56) + v15);
    v18 = *(*&v17[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
    v19 = v17;
    v20 = v18;
    v21 = sub_759180();

    if (v21)
    {
      v37 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v38;
      v23 = sub_663D5C(v16);
      v25 = v38[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        result = sub_76A9B0();
        __break(1u);
        return result;
      }

      if (v38[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v40 = v23;
          v35 = v24;
          sub_45B798();
          v24 = v35;
          v23 = v40;
        }
      }

      else
      {
        v39 = v24;
        sub_4553B0(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_663D5C(v16);
        v30 = v29 & 1;
        v24 = v39;
        if ((v39 & 1) != v30)
        {
          goto LABEL_26;
        }
      }

      v38 = v41;
      if (v24)
      {
        v31 = v41[7];
        v32 = *(v31 + 8 * v23);
        *(v31 + 8 * v23) = v37;
      }

      else
      {
        v41[(v23 >> 6) + 8] |= 1 << v23;
        *(v41[6] + 8 * v23) = v16;
        *(v41[7] + 8 * v23) = v37;

        v33 = v41[2];
        v27 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v27)
        {
          goto LABEL_25;
        }

        v41[2] = v34;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  if (v38[2])
  {
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_prefetchedLockupImages] = v38;
  }

  return [v2 setNeedsLayout];
}

void sub_6FB1A4()
{
  v1 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v1 - 8);
  v41 = &v32 - v2;
  v3 = sub_768AB0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v8 = *&v7[OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_limit];
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      v40 = v3;
      v0 = _swiftEmptyArrayStorage;
      v42 = _swiftEmptyArrayStorage;
      v7 = v7;
      v9 = 0;
      while (1)
      {
        if (v8 == v9)
        {

          if (v0 >> 62)
          {
            goto LABEL_35;
          }

          v12 = *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8));
          if (v12)
          {
            goto LABEL_14;
          }

          goto LABEL_36;
        }

        if (v9 >= v8)
        {
          break;
        }

        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_30;
        }

        if (sub_6F9028(v9++))
        {
          sub_769440();
          if (*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v42 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();
          v0 = v42;
          v9 = v10;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      while (1)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        v12 = sub_76A860();
        if (!v12)
        {
          break;
        }

LABEL_14:
        v36 = v0;
        v37 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_lockups;
        v38 = v0 & 0xFFFFFFFFFFFFFF8;
        v39 = v0 & 0xC000000000000001;
        v13 = (v4 + 48);
        v32 = (v4 + 8);
        v33 = (v4 + 32);
        v14 = 4;
        while (1)
        {
          v15 = v14 - 4;
          if (v39)
          {
            v16 = sub_76A770();
          }

          else
          {
            if (v15 >= *(v38 + 16))
            {
              goto LABEL_32;
            }

            v16 = *(v0 + 8 * v14);
          }

          v4 = v16;
          v17 = v14 - 3;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          v18 = *&v7[v37];
          if ((v18 & 0xC000000000000001) != 0)
          {

            sub_76A770();
          }

          else
          {
            if (v15 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_33;
            }
          }

          v19 = v41;
          sub_764E50();
          v20 = v40;
          if ((*v13)(v19, 1, v40) == 1)
          {

            sub_10A2C(v19, &unk_93FF30);
          }

          else
          {
            v21 = v19;
            v22 = v35;
            (*v33)(v35, v21, v20);
            [v4 frame];
            v24 = v23;
            v26 = v25;
            v28 = v27;
            v30 = v29;
            v31 = [v7 superview];
            [v7 convertRect:v31 toView:{v24, v26, v28, v30}];

            sub_75F4B0();

            (*v32)(v22, v20);
          }

          ++v14;
          v0 = v36;
          if (v17 == v12)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_36:
    }

    else
    {
    }
  }
}

id sub_6FB630()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayListCardLockupContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_6FB790()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_6FB7F0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_6FB888()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_6FB8E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider28TodayListCardLockupContainer_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

void (*sub_6FB9A4())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_6FBAF4;
}

uint64_t sub_6FBA44()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6FBA7C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6FBAB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6FBAFC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_22:
    v3 = sub_76A860();
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = 0;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_76A770();
        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v5 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if (sub_764EE0())
      {
        break;
      }

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    if (qword_93C330 != -1)
    {
      swift_once();
    }

    sub_765330();

    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  while (v4 != v3);
LABEL_23:
  v6._rawValue = _swiftEmptyArrayStorage;
  sub_75A070(v6);
}