void sub_298658()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v1 = [Strong collectionView];

      if (v1)
      {
        [v1 _scrollToTopIfPossible:1];
      }
    }
  }
}

void sub_2986F8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong collectionView];

    if (v4)
    {
      sub_BE70(0, &qword_940BD0);
      v5 = a1;
      v6 = sub_76A1C0();

      if (v6)
      {
        sub_296704();
        sub_72F694(v5);

        [v5 safeAreaInsets];
        v8 = v7;
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *&v9[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView];
          if (v10 && v8 > 0.0)
          {
            v32 = v9;
            v11 = v10;
            [v5 bounds];
            v12 = CGRectGetHeight(v34) * -0.5;
            [*&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView] frame];
            v13 = CGRectGetMinY(v35) + v12;
            [v5 contentOffset];
            v15 = v14 / v13;
            if (v14 / v13 < 0.0)
            {
              v16 = 0.0;
            }

            else
            {
              v16 = v14 / v13;
            }

            v17 = 1.0 - v16;
            [v5 contentOffset];
            v19 = v18 / v8;
            if (v19 < 0.0)
            {
              v20 = 0.0;
            }

            else
            {
              v20 = v19;
            }

            v21 = 1.0 - v20;
            sub_BD88(&unk_93F5C0);
            v22 = swift_allocObject();
            *(v22 + 16) = xmmword_78D690;
            v23 = objc_opt_self();
            *(v22 + 32) = [v23 blackColor];
            v24 = [v23 blackColor];
            v25 = v24;
            if (v15 >= 1.0)
            {
              v26 = 0.0;
            }

            else
            {
              v26 = v17;
            }

            v27 = [v24 colorWithAlphaComponent:v26];

            *(v22 + 40) = v27;
            v28 = [v23 blackColor];
            v29 = v28;
            if (v19 >= 1.0)
            {
              v30 = 0.0;
            }

            else
            {
              v30 = v21;
            }

            v31 = [v28 colorWithAlphaComponent:v30];

            *(v22 + 48) = v31;
            *&v11[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v22;

            sub_4AC204();

            v9 = v11;
          }
        }
      }
    }
  }
}

uint64_t sub_2989E0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_BD88(&unk_940200);
  __chkstk_darwin(v6 - 8);
  v8 = &v29 - v7;
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    HIDWORD(v29) = sub_762870();
    v32 = sub_760F30();
    v31 = sub_760F30();
    if (a2)
    {
      v30 = sub_72F7F4();
    }

    else
    {
      v30 = 0;
    }

    v12 = qword_99B770;
    v13 = sub_75FF00();
    v14 = sub_760F30();
    if (v14 == sub_760F30())
    {
      v15 = [v11 navigationItem];
      v16 = [v15 rightBarButtonItems];

      if (v16)
      {
        sub_BE70(0, &qword_947490);
        v17 = sub_769460();
      }

      else
      {
        v17 = 0;
      }

      *&v11[qword_99B778] = v17;
    }

    v18 = a2 ^ 1;
    v19 = *&v11[qword_99B778];
    if (v19)
    {
      if ((v13 & 1) == 0)
      {
        if (!a1)
        {
          v22 = swift_allocObject();
          *(v22 + 16) = v11;
          *(v22 + 24) = v19;

          v28 = v11;
          v19 = sub_29A8D8;
LABEL_21:
          v23 = *&v11[v12];
          v24 = v30;
          sub_5B669C(a1, v30, v18 & 1, v19, v22);

          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            sub_762950();
            if (swift_weakLoadStrong())
            {
              sub_7628C0();
            }

            sub_2DC7A0(v32 == v31, v24, v18 & 1, (v29 & 0x100000000) == 0, v8);

            sub_F704(v19);

            return sub_10A2C(v8, &unk_940200);
          }

          else
          {
            v27 = v32 != v31;
            sub_F704(v19);

            *(v3 + 48) = v27;
          }

          return result;
        }

        if (a1 == 1)
        {
          v20 = [v11 navigationItem];
          sub_BE70(0, &qword_947490);
          isa = sub_769450().super.isa;
          [v20 setRightBarButtonItems:isa animated:0];
        }
      }

      v19 = 0;
    }

    v22 = 0;
    goto LABEL_21;
  }
}

void sub_298DC0(void *a1)
{
  v1 = [a1 navigationItem];
  sub_BE70(0, &qword_947490);
  isa = sub_769450().super.isa;
  [v1 setRightBarButtonItems:isa animated:0];
}

void sub_298E58()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v0 = swift_unknownObjectWeakLoadStrong();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 collectionView];

    if (v2)
    {
      v3 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton];
      v4 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
      if (v4)
      {
        v5 = v3;
        v6 = v4;
        if (([v6 isHidden] & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v7 = v3;
      }

      v6 = *&Strong[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
LABEL_12:
      v8 = v3;
      v9 = v6;
      if ([v8 isHidden])
      {
        v10 = [v9 isHidden];

        if ((v10 & 1) == 0)
        {

          v11 = v9;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v11 = v9;
      if ([v11 isHidden] || (v55.receiver = v8, v55.super_class = type metadata accessor for OfferButton(), objc_msgSendSuper2(&v55, "frame"), MaxY = CGRectGetMaxY(v57), objc_msgSend(v11, "frame"), MaxY >= CGRectGetMaxY(v58)))
      {

        v11 = v8;
      }

      else
      {
      }

LABEL_20:
      v13 = v11;
      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v22 = [v13 superview];

      [v2 convertRect:v22 fromView:{v15, v17, v19, v21}];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59.origin.x = v24;
      v59.origin.y = v26;
      v59.size.width = v28;
      v59.size.height = v30;
      MinY = CGRectGetMinY(v59);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_24;
      }

      v33 = v32;
      v34 = [v32 view];
      if (v34)
      {
        v35 = v34;
        type metadata accessor for InsetCollectionViewControllerContentView();
        v36 = swift_dynamicCastClass();
        if (v36)
        {
          v37 = v36;

          v38 = *(v37 + OBJC_IVAR____TtC18ASMessagesProviderP33_617AA862DC90C0016FFBABB70104B8F240InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset);
          if (v38)
          {
LABEL_28:
            v52 = sub_296704();
            *(v52 + 16) = MinY;
            *(v52 + 24) = 0;
            v53 = *(v52 + 32);
            if (v53)
            {
              v53(*(v52 + 48), 0, *(v52 + 56));
            }

            return;
          }

LABEL_24:
          v39 = swift_unknownObjectWeakLoadStrong();
          v40 = 0.0;
          if (v39)
          {
            v41 = v39;
            v42 = [v39 navigationController];

            if (v42)
            {
              v43 = [v42 navigationBar];

              [v43 frame];
              v45 = v44;
              v47 = v46;
              v49 = v48;
              v51 = v50;

              v60.origin.x = v45;
              v60.origin.y = v47;
              v60.size.width = v49;
              v60.size.height = v51;
              v40 = CGRectGetMaxY(v60);
            }
          }

          MinY = MinY - v40;
          goto LABEL_28;
        }
      }

      __break(1u);
      return;
    }
  }
}

uint64_t sub_299224()
{
  swift_weakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

void sub_2992C8(void *a1)
{
  [a1 adjustedContentInset];
  v4 = v3;
  [a1 contentOffset];
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider11ChevronView_shouldAnimate) = v4 + v5 <= 0.1;

  sub_3AB6E4();
}

uint64_t sub_299350()
{
  swift_weakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  swift_weakAssign();
  swift_unknownObjectWeakAssign();
  sub_762440();
  swift_allocObject();
  *(v0 + 40) = sub_762430();
  return v0;
}

void sub_299404(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v3 - 8);
  v35 = &v32 - v4;
  v34 = sub_BD88(&qword_94CE50);
  v5 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v32 - v6;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v32 - v11;
  v46 = sub_BD88(&unk_94F1F0);
  v12 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v32 - v13;
  v14 = sub_75C840();
  v16 = __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a2 + 16);
  if (v19)
  {
    v21 = *(v15 + 16);
    v20 = v15 + 16;
    v22 = a2 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v41 = *(v20 + 56);
    v42 = v21;
    v40 = (v12 + 8);
    v39 = enum case for Shelf.ContentType.productTopLockup(_:);
    v37 = (v8 + 8);
    v38 = (v8 + 104);
    v43 = v20;
    v36 = (v20 - 8);
    v32 = (v5 + 8);
    v44 = v14;
    v21(v18, v22, v14, v16);
    while (1)
    {
      swift_getKeyPath();
      v28 = v45;
      sub_75C7B0();

      swift_getKeyPath();
      v29 = v46;
      sub_768750();

      (*v40)(v28, v29);
      (*v38)(v48, v39, v7);
      sub_29A9C8(&qword_942D68, &type metadata accessor for Shelf.ContentType);
      sub_769430();
      sub_769430();
      if (v51 == v49 && v52 == v50)
      {
        break;
      }

      v30 = sub_76A950();
      v31 = *v37;
      (*v37)(v48, v7);
      v31(v47, v7);

      if (v30)
      {
        goto LABEL_4;
      }

LABEL_5:
      v26 = v44;
      (*v36)(v18, v44);
      v22 += v41;
      if (!--v19)
      {
        return;
      }

      v42(v18, v22, v26, v27);
    }

    v23 = *v37;
    (*v37)(v48, v7);
    v23(v47, v7);

LABEL_4:
    sub_75C790();
    v24 = v33;
    sub_768B30();
    sub_29A844();
    v25 = v34;
    sub_768AF0();
    (*v32)(v24, v25);
    goto LABEL_5;
  }
}

void sub_29999C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_7580D0();
  v116 = *(v8 - 8);
  __chkstk_darwin(v8);
  v109 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &ObjectType - v11;
  v12 = sub_BD88(&unk_940200);
  __chkstk_darwin(v12 - 8);
  v115 = &ObjectType - v13;
  v14 = sub_75C840();
  v110 = *(v14 - 8);
  v15 = *(v110 + 64);
  __chkstk_darwin(v14);
  v16 = sub_764CF0();
  v113 = *(v16 - 8);
  v114 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductLockupCollectionViewCell();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    v108 = v8;
    v112 = a3;
    sub_75C040();
    v117 = a2;
    sub_29A9C8(&qword_95F4F0, &type metadata accessor for ProductTopLockup);
    v21 = a1;
    sub_75C750();
    v22 = v121;
    if (!v121)
    {

      return;
    }

    if (!swift_weakLoadStrong())
    {

LABEL_54:

      return;
    }

    v105 = v21;
    v104 = v20;
    sub_2964CC(v20);
    sub_BD88(&unk_944300);
    v103 = v14;
    sub_768880();
    swift_getObjectType();
    v107 = v22;
    sub_75C010();
    v23 = sub_758330();
    v25 = v24;
    swift_unknownObjectRelease();
    (*(v113 + 8))(v18, v114);
    v26 = v117;
    sub_296CC8(v117, v23, v25);
    ObjectType = swift_getObjectType();
    sub_758210();
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v110;
    v29 = v103;
    (*(v110 + 16))(&ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v103);
    v30 = (*(v28 + 80) + 24) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v27;
    (*(v28 + 32))(v31 + v30, &ObjectType - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    *(v31 + ((v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8)) = v112;
    v32 = v104;

    v110 = v23;
    sub_7581F0();

    if ((*(v4 + 48) & 1) == 0)
    {
LABEL_28:
      v55 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow];
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakAssign();
      v57 = v55;
      sub_29659C(Strong);

      v58 = swift_allocObject();
      swift_weakInit();
      v59 = &v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler];
      v60 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler];
      *v59 = sub_29A7E8;
      v59[1] = v58;

      sub_F704(v60);

      sub_297878(v117, v112);
      v61 = swift_unknownObjectWeakLoadStrong();
      if (v61)
      {
        v62 = v61;
        v63 = *(v61 + qword_99B770);

        v64 = *(*&v63[OBJC_IVAR____TtC18ASMessagesProvider16ProductTitleView_iconTitleView] + OBJC_IVAR____TtCC18ASMessagesProvider16ProductTitleViewP33_B6FD29DCFB294C5E4B32A2A2A0D38B9713IconTitleView_iconView);
      }

      else
      {
        v64 = 0;
      }

      sub_762410();

      v65 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
      sub_762410();

      sub_762420();
      v66 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
      v67 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
      if (!v67)
      {
        goto LABEL_52;
      }

      v68 = swift_unknownObjectWeakLoadStrong();
      v69 = v67;
      if (v68)
      {
        v70 = [v68 navigationItem];
      }

      else
      {
        v70 = 0;
      }

      v71 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem;
      v72 = *&v69[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem];
      if (v72)
      {
        v73 = v72;
        v74 = sub_769210();
        [v73 removeObserver:v69 forKeyPath:v74 context:&unk_95F368];

        v75 = *&v69[v71];
      }

      else
      {
        v75 = 0;
      }

      *&v69[v71] = v70;
      v76 = v70;

      v77 = *&v69[v71];
      if (v77)
      {
        v78 = v77;
        v79 = sub_769210();
        [v78 addObserver:v69 forKeyPath:v79 options:0 context:&unk_95F368];

        v80 = *&v69[v71];
        if (v80)
        {
          v80 = [v80 title];
          if (v80)
          {
            v81 = v80;
            v82 = sub_769240();
            v84 = v83;

            v85 = v84;
            v80 = v82;
          }

          else
          {
            v85 = 0;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v80 = 0;
      }

      v85 = 0;
LABEL_44:
      sub_623034(v80, v85);

      v86 = *&v32[v66];
      if (v86)
      {
        v87 = swift_unknownObjectWeakLoadStrong();
        if (v87)
        {
          v88 = v87;
          v89 = *(v87 + qword_99B780);
          v90 = v86;
        }

        else
        {
          v91 = v86;
          v89 = 0;
        }

        swift_unknownObjectWeakAssign();
        sub_6243F4();

        v92 = *&v32[v66];
        if (v92)
        {
          v93 = *(*(*(v92 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
          if (v93)
          {
            type metadata accessor for VideoView();
            v94 = swift_dynamicCastClass();
            if (v94)
            {
              v95 = v94;
              v96 = swift_allocObject();
              v97 = v105;
              *(v96 + 16) = v105;
              v98 = (v95 + qword_99A1D0);
              v99 = *(v95 + qword_99A1D0);
              *v98 = sub_29A828;
              v98[1] = v96;
              v100 = v97;
              v101 = v93;

              sub_F704(v99);
              sub_58B90();

              swift_unknownObjectRelease();

              goto LABEL_54;
            }
          }

          swift_unknownObjectRelease();

LABEL_53:

          goto LABEL_54;
        }
      }

LABEL_52:

      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    *(v4 + 48) = 0;
    v33 = sub_762870();
    v34 = v115;
    sub_75C010();
    v35 = v113;
    v36 = v34;
    v37 = v114;
    (*(v113 + 56))(v36, 0, 1, v114);
    if (swift_weakLoadStrong())
    {
      sub_7628C0();
    }

    v38 = (*(v35 + 48))(v115, 1, v37);
    v39 = v108;
    if (v38 == 1 || !*&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
    {
      (*(v116 + 104))(v111, enum case for LegacyAppState.unknown(_:), v108);
    }

    else
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_758220();
      swift_unknownObjectRelease();
    }

    v40 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton;
    [*(*&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton] + OBJC_IVAR____TtC18ASMessagesProvider11OfferButton_imageView) setContentMode:1];
    if (v33)
    {
      v41 = 0;
    }

    else
    {
      v41 = *&v32[v40];
      v42 = v41;
    }

    v43 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
    v44 = v109;
    if (v43 && v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] == 1)
    {
      goto LABEL_24;
    }

    (*(v116 + 16))(v109, v111, v39);
    v45 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel;
    v46 = [*&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel] text];
    if (v46)
    {
      v47 = v46;
      sub_769240();
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = sub_7580C0();
    (*(v116 + 8))(v44, v39);
    if (v50)
    {
      if (v49)
      {

        v43 = *&v32[v45];
LABEL_24:
        v51 = v43;
LABEL_27:
        v118 = *&v32[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView];
        v119 = v41;
        v120 = v43;
        v52 = v118;
        [v52 setAlpha:1.0];
        [v52 setHidden:0];

        v53 = v41;
        [v53 setAlpha:1.0];
        [v53 setHidden:0];

        v54 = v43;
        sub_BD88(&qword_943F70);
        swift_arrayDestroy();
        [v54 setAlpha:1.0];
        [v54 setHidden:0];

        [v32 setNeedsLayout];
        (*(v116 + 8))(v111, v108);
        sub_10A2C(v115, &unk_940200);
        goto LABEL_28;
      }
    }

    else
    {
    }

    v43 = 0;
    goto LABEL_27;
  }
}

uint64_t sub_29A628()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_29A660()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_29A738(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_75C840() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_29683C(a1, a2, v6, v7);
}

uint64_t sub_29A7F0()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_29A844()
{
  result = qword_95F500;
  if (!qword_95F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F500);
  }

  return result;
}

uint64_t sub_29A898()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29A8E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29A958(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_948720);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_29A9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29AA10(uint64_t a1)
{
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v3;

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_29AA64()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_29AAA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_14FCC;

  return sub_297754(a1, v4, v5, v6);
}

void *sub_29AB78(void *a1, char a2)
{
  v2 = &unk_87D960;
  if ((a2 & 1) == 0)
  {
    v2 = &unk_87D918;
  }

  v3 = *v2;
  if (*v2)
  {
    v5 = a1;
    result = sub_76A7C0();
    if (a2)
    {
      v7 = &off_87D950;
    }

    else
    {
      v7 = &off_87D908;
    }

    v8 = (v7 + 4);
    for (i = v3 & ~(v3 >> 63); i; --i)
    {
      v10 = *v8++;
      v11 = [v5 colorWithAlphaComponent:v10];
      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      result = sub_76A7B0();
      if (!--v3)
      {

        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

char *sub_29ACA8(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_effectVisibilityThreshold] = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_7603D0();
  (*(*(v6 - 8) + 104))(&v1[v4], v5, v6);
  v45 = a1 & 1;
  v46 = a1;
  v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_style] = a1 & 1;
  v7 = type metadata accessor for GradientView();
  v8 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_overlayView] = v8;
  v9 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_plusDarkerView] = v9;
  v10 = [objc_allocWithZone(v7) init];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_gradientMaskView] = v10;
  result = [objc_opt_self() effectWithBlurRadius:35.0];
  if (result)
  {
    v12 = result;
    v47.receiver = v1;
    v47.super_class = ObjectType;
    v13 = objc_msgSendSuper2(&v47, "initWithEffect:", result);

    v14 = v13;
    [v14 setOverrideUserInterfaceStyle:2];
    [v14 setUserInteractionEnabled:0];
    [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    v15 = v14;
    [v15 setClipsToBounds:0];
    v16 = [v15 contentView];
    v17 = [v16 layer];

    [v17 setAllowsGroupBlending:0];
    v18 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_overlayView;
    v19 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_overlayView];
    v20 = objc_opt_self();
    v21 = v19;
    v22 = [v20 blackColor];
    sub_76A7C0();
    v23 = [v22 colorWithAlphaComponent:0.0];
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    v24 = [v22 colorWithAlphaComponent:0.2];
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();

    *&v21[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_4AC204();

    v25 = [v15 contentView];
    [v25 addSubview:*&v15[v18]];

    v26 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_plusDarkerView;
    v27 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_plusDarkerView];
    v28 = [v20 blackColor];
    sub_76A7C0();
    v29 = [v28 colorWithAlphaComponent:0.0];
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();
    v30 = [v28 colorWithAlphaComponent:0.2];
    sub_76A7A0();
    sub_76A7D0();
    sub_76A7E0();
    sub_76A7B0();

    *&v27[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = _swiftEmptyArrayStorage;

    sub_4AC204();

    v31 = [*&v15[v26] layer];
    [v31 setCompositingFilter:kCAFilterPlusD];

    v32 = [v15 contentView];
    [v32 addSubview:*&v15[v26]];

    v33 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_gradientMaskView;
    v34 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_gradientMaskView];
    v35 = [v20 blackColor];
    v36 = sub_29AB78(v35, v45);

    *&v34[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v36;

    sub_4AC204();

    v37 = *&v15[v33];
    if (v46)
    {
      v38 = &off_87D9E0;
    }

    else
    {
      v38 = &off_87D998;
    }

    if (v46)
    {
      v39 = &kCAGradientLayerRadial;
    }

    else
    {
      v39 = &kCAGradientLayerAxial;
    }

    sub_4AC060(v38);

    v40 = *&v15[v33];
    v40[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_kind] = v45;
    v41 = v40;
    v42 = [v41 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setType:*v39];

    v43 = [v15 layer];
    v44 = [*&v15[v33] layer];
    objc_opt_self();
    [v43 setMask:swift_dynamicCastObjCClassUnconditional()];

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29B414()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_7603D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_style] == 1)
  {
    v9 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_alignment;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    v10 = [v1 traitCollection];
    sub_7603C0();

    v11 = *(v3 + 8);
    v11(v5, v2);
    v12 = (*(v3 + 88))(v8, v2);
    if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
    {
      v13 = 150.0;
      v14 = 500.0;
    }

    else
    {
      if (v12 == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
      {
        sub_75D650();
        v13 = CGRectGetWidth(v22) * 0.5;
        v15 = 350.0;
      }

      else
      {
        if (v12 != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
        {
          v11(v8, v2);
          v14 = 0.0;
          v13 = 0.0;
          goto LABEL_10;
        }

        sub_75D650();
        v13 = CGRectGetWidth(v23) + -150.0;
        v15 = -350.0;
      }

      v14 = v13 + v15;
    }

LABEL_10:
    v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_gradientMaskView];
    sub_75D650();
    v17 = v13 / CGRectGetWidth(v24);
    v18 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setStartPoint:{v17, 1.0}];

    sub_75D650();
    v19 = v14 / CGRectGetWidth(v25);
    v20 = [v16 layer];
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v19, 0.0}];
  }
}

uint64_t type metadata accessor for ModuleOverlayGradientBlurView()
{
  result = qword_94CEC0;
  if (!qword_94CEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29B938()
{
  result = sub_7603D0();
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

unint64_t sub_29BA08()
{
  result = qword_94CED0;
  if (!qword_94CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94CED0);
  }

  return result;
}

void sub_29BB7C(void *a1)
{
  v2 = v1;
  sub_B584C(0);
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v131 = v12;
  }

  else
  {
    v13 = [a1 containerView];
    [v13 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v131 = v17;
  }

  v18 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 traitCollection];

    v21 = [v20 horizontalSizeClass];
    if (v21 == &dword_0 + 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 0.25;
    }
  }

  else
  {
    v22 = 0.25;
  }

  v23 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCardView];
  v129 = v9;
  if (!v23 || (v24 = &v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toBounds], (v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toBounds + 32] & 1) != 0) || (v25 = &v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCenter], (v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCenter + 16] & 1) != 0))
  {
    v137.origin.x = v7;
    v137.origin.y = v9;
    v137.size.width = v11;
    v137.size.height = v131;
    v27 = v22 * CGRectGetWidth(v137);
    v138.origin.x = v7;
    v138.origin.y = v9;
    v138.size.width = v11;
    v138.size.height = v131;
    v28 = CGRectGetHeight(v138) * 0.25;
    v139.origin.x = v7;
    v139.origin.y = v9;
    v139.size.width = v11;
    v139.size.height = v131;
    v140 = CGRectInset(v139, v27, v28);
    width = v140.size.width;
    height = v140.size.height;
    v140.origin.x = v7;
    v140.origin.y = v9;
    v140.size.width = v11;
    v140.size.height = v131;
    MidX = CGRectGetMidX(v140);
    v141.origin.x = v7;
    v141.origin.y = v9;
    v141.size.width = v11;
    v141.size.height = v131;
    MidY = CGRectGetMidY(v141);
    v125 = 0.0;
    v126 = 0.0;
  }

  else
  {
    MidX = *v25;
    MidY = v25[1];
    width = v24[2];
    height = v24[3];
    v125 = *v24;
    v126 = v24[1];
  }

  v29 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCollectionViewController];
  v30 = 0.0;
  if (v29)
  {
    v31 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_toCollectionViewController] view];
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
    if (v31)
    {
      v35 = v31;
      [v31 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = MidX;
      v44 = v43;
      v45 = [a1 containerView];
      v46 = v44;
      MidX = v42;
      [v35 convertRect:v45 toCoordinateSpace:{v37, v39, v41, v46}];
      v30 = v47;
      v34 = v48;

      v32 = v42 + v30;
      v33 = MidY + v34;
    }
  }

  else
  {
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
  }

  v123 = v33;
  v124 = v32;
  v49 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_detailPageViewController];
  if (v49)
  {
    v50 = [v49 view];
    if (!v50)
    {
      __break(1u);
      goto LABEL_71;
    }

    v51 = v50;
    [v50 transform];
    v121 = v134;
    v122 = aBlock;
    v120 = v135;

    aBlock = v122;
    v134 = v121;
    v135 = v120;
    [v23 setTransform:&aBlock];
  }

  v142.origin.x = v7;
  v142.origin.y = v129;
  v142.size.width = v11;
  v142.size.height = v131;
  v52 = CGRectGetMidX(v142);
  v143.origin.x = v7;
  v143.origin.y = v129;
  v53 = v11;
  v143.size.width = v11;
  v143.size.height = v131;
  v54 = CGRectGetMidY(v143);
  if (!v23)
  {
    goto LABEL_27;
  }

  v55 = v54;
  if (!v29)
  {
    v60 = v23;
    v59 = [a1 containerView];
    [v59 insertSubview:v60 below:v5];
    goto LABEL_26;
  }

  v56 = v29;
  v57 = v23;
  v58 = [v56 view];
  if (!v58)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v59 = v58;
  [v58 addSubview:v57];

LABEL_26:
  [v23 setHidden:0];
  [v23 setBounds:{0.0, 0.0, v53, v131}];
  [v23 setCenter:{v52 - v30, v55 - v34}];
  [v23 setNeedsLayout];
  [v23 layoutIfNeeded];
  [v23 setAlpha:0.0];

LABEL_27:
  v130 = [a1 viewForKey:{UITransitionContextToViewKey, v54, v120, v121, v122}];
  if (v130)
  {
    v61 = MidX;
    v62 = v130;
    v63 = [a1 containerView];
    [v63 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    [v62 setFrame:{v65, v67, v69, v71}];
    if (v23)
    {
      v72 = v23;
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v72];
    }

    else
    {
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v5];
    }

    MidX = v61;
  }

  v74 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v75 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v76 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v75 timingParameters:0.0];

    v77 = swift_allocObject();
    *(v77 + 16) = v2;
    *(v77 + 24) = v23;
    *(v77 + 32) = v125;
    *(v77 + 40) = v126;
    *(v77 + 48) = width;
    *(v77 + 56) = height;
    *(v77 + 64) = MidX;
    *(v77 + 72) = MidY;
    *(v77 + 80) = v5;
    *(v77 + 88) = v124;
    *(v77 + 96) = v123;
    *&v135 = sub_29CE90;
    *(&v135 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_23F0CC;
    *(&v134 + 1) = &unk_88B360;
    v78 = _Block_copy(&aBlock);
    v79 = v23;
    v80 = v2;
    v81 = v5;

    [v76 addAnimations:v78];
    _Block_release(v78);
    v82 = swift_allocObject();
    *(v82 + 16) = a1;
    *(v82 + 24) = v80;
    *&v135 = sub_29CF04;
    *(&v135 + 1) = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_19EE34;
    *(&v134 + 1) = &unk_88B3B0;
    v83 = _Block_copy(&aBlock);
    v84 = v80;
    swift_unknownObjectRetain();

    [v76 addCompletion:v83];
    _Block_release(v83);
    v85 = v76;
    sub_769440();
    if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v136 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v74 = v136;
  }

  if (!v5)
  {
LABEL_39:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v86 = v5;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    goto LABEL_39;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v88 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_29D028;
  *(&v135 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_23F0CC;
  *(&v134 + 1) = &unk_88B4F0;
  v89 = _Block_copy(&aBlock);
  v90 = v86;

  v91 = [v88 initWithDuration:v89 controlPoint1:0.216 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
  _Block_release(v89);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *&v135 = sub_29D03C;
  *(&v135 + 1) = v92;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_19EE34;
  *(&v134 + 1) = &unk_88B540;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  [v91 addCompletion:v93];
  _Block_release(v93);

  v95 = v91;
  sub_769440();
  if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v136 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();

  v74 = v136;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_44:
    [v23 setBounds:{v125, v126, width, height}];
    [v23 setCenter:{MidX, MidY}];
    v96 = swift_allocObject();
    v96[2] = v2;
    v96[3] = v23;
    v96[4] = v5;
    v97 = objc_allocWithZone(UIViewPropertyAnimator);
    *&v135 = sub_29CFC8;
    *(&v135 + 1) = v96;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_23F0CC;
    *(&v134 + 1) = &unk_88B450;
    v98 = _Block_copy(&aBlock);
    v99 = v23;
    v100 = v2;
    v101 = v5;

    v102 = [v97 initWithDuration:0 curve:v98 animations:0.3];
    _Block_release(v98);
    v103 = swift_allocObject();
    v103[2] = v5;
    v103[3] = a1;
    v103[4] = v100;
    *&v135 = sub_29D01C;
    *(&v135 + 1) = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_19EE34;
    *(&v134 + 1) = &unk_88B4A0;
    v104 = _Block_copy(&aBlock);
    v105 = v100;
    v106 = v101;
    swift_unknownObjectRetain();

    [v102 addCompletion:v104];
    _Block_release(v104);
    v107 = v102;
    sub_769440();
    if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v136 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v74 = v136;
  }

LABEL_47:
  if (v74 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v109 = 0;
    while (1)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v110 = sub_76A770();
      }

      else
      {
        if (v109 >= *(&dword_10 + (v74 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_58;
        }

        v110 = *(v74 + 8 * v109 + 32);
      }

      v111 = v110;
      v112 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      [v110 startAnimation];

      ++v109;
      if (v112 == i)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_60:
  if (!v23)
  {
    goto LABEL_68;
  }

  v113 = v23;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

LABEL_69:

    return;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  v115 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_255220;
  *(&v135 + 1) = v114;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_23F0CC;
  *(&v134 + 1) = &unk_88B400;
  v116 = _Block_copy(&aBlock);
  v117 = v113;

  v118 = [v115 initWithDuration:v116 controlPoint1:0.13 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
  _Block_release(v116);

  if (!v118)
  {
LABEL_68:

    goto LABEL_69;
  }

  [v118 startAnimationAfterDelay:0.083];
  v119 = v118;
  sub_769440();
  if (*(&dword_10 + (v136 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v136 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
}

id sub_29CA80(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_B584C(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  if (a10)
  {
    v22[0] = 0x3FF0000000000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0x3FF0000000000000;
    v22[4] = 0;
    v22[5] = 0;
    [a10 setTransform:v22];
  }

  [a11 setBounds:{a1, a2, a3, a4}];
  return [a11 setCenter:{a7, a8}];
}

id sub_29CB90(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
    v14[0] = 0x3FF0000000000000;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0x3FF0000000000000;
    v14[4] = 0;
    v14[5] = 0;
    result = [a2 setTransform:v14];
  }

  if (a3)
  {
    return [a3 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_29CCAC(uint64_t result, id a2, id a3)
{
  if (!result)
  {
    v8 = v3;
    if (a2)
    {
      v7 = a3;
      [a2 setHidden:1];
      a3 = v7;
    }

    [a3 completeTransition:{1, v4, v8, v5, v6}];
    return sub_B584C(2);
  }

  return result;
}

void sub_29CD44()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider36AppPromotionDetailPageCloseAnimation_detailPageViewController);
}

id sub_29CD94()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_29CE48()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_29CEAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29CEC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_29CF04(uint64_t result)
{
  if (!result)
  {
    [*(v1 + 16) completeTransition:1];
    return sub_B584C(2);
  }

  return result;
}

uint64_t sub_29CF48()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_29CF80()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_29CFD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_29D03C(id result)
{
  if (!result)
  {
    return [*(v1 + 16) setHidden:1];
  }

  return result;
}

void sub_29D090(void *a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase] = a1;
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

uint64_t sub_29D158()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75C8F0();
  sub_161DC(v4, qword_99C5C0);
  v37 = sub_BE38(v4, qword_99C5C0);
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99E6E0);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v46 = v1[13];
  v46(v3, enum case for FontSource.useCase(_:), v0);
  v45 = sub_766CA0();
  v64[3] = v45;
  v64[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v11 = sub_B1B4(v61);
  v12 = v1[2];
  v44 = v1 + 2;
  v41 = v12;
  v12(v11, v3, v0);
  sub_766CB0();
  v13 = v1[1];
  v43 = v1 + 1;
  v47 = v13;
  v13(v3, v0);
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v5, qword_99E6F8);
  v8(v3, v36, v5);
  v46(v3, v10, v0);
  v62 = v45;
  v14 = v45;
  v63 = &protocol witness table for StaticDimension;
  sub_B1B4(v61);
  v38 = v10;
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v15 = sub_B1B4(v58);
  v39 = v1 + 13;
  v16 = v41;
  v41(v15, v3, v0);
  sub_766CB0();
  v47(v3, v0);
  v17 = v36;
  v42 = v5;
  v40 = v8;
  v36 = v9;
  v8(v3, v17, v5);
  v18 = v38;
  v19 = v46;
  v46(v3, v38, v0);
  v59 = v14;
  v60 = &protocol witness table for StaticDimension;
  sub_B1B4(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v20 = sub_B1B4(v55);
  v16(v20, v3, v0);
  sub_766CB0();
  v47(v3, v0);
  v21 = v18;
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v22 = v42;
  v35 = sub_BE38(v42, qword_99E758);
  v23 = v40;
  v40(v3, v35, v22);
  v19(v3, v21, v0);
  v56 = v45;
  v57 = &protocol witness table for StaticDimension;
  sub_B1B4(v55);
  v24 = v23;
  v53 = v0;
  v54 = &protocol witness table for FontSource;
  v25 = sub_B1B4(v52);
  v26 = v41;
  v41(v25, v3, v0);
  sub_766CB0();
  v27 = v26;
  v47(v3, v0);
  v28 = v35;
  v24(v3, v35, v42);
  v46(v3, v21, v0);
  v29 = v45;
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_B1B4(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v30 = sub_B1B4(v49);
  v27(v30, v3, v0);
  sub_766CB0();
  v31 = v47;
  v47(v3, v0);
  v40(v3, v28, v42);
  v46(v3, v38, v0);
  v50 = v29;
  v51 = &protocol witness table for StaticDimension;
  sub_B1B4(v49);
  v48[3] = v0;
  v48[4] = &protocol witness table for FontSource;
  v32 = sub_B1B4(v48);
  v27(v32, v3, v0);
  sub_766CB0();
  v31(v3, v0);
  return sub_75C8E0();
}

char *sub_29D7DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_itemLayoutContext;
  v17 = sub_75C840();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_avatarShowcase] = 0;
  v18 = &v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  sub_759210();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_artworkView] = sub_759020();
  if (qword_93D4F8 != -1)
  {
    swift_once();
  }

  v19 = sub_7666D0();
  v20 = sub_BE38(v19, qword_99E6F8);
  v21 = *(v19 - 8);
  v44 = *(v21 + 16);
  v44(v15, v20, v19);
  v43 = *(v21 + 56);
  v43(v15, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v42 = *(v11 + 104);
  v42(v46, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = sub_75BB20();
  v41 = v10;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_titleLabel] = sub_75BB10();
  if (qword_93D518 != -1)
  {
    swift_once();
  }

  v26 = sub_BE38(v19, qword_99E758);
  v44(v15, v26, v19);
  v43(v15, 0, 1, v19);
  v42(v46, v22, v41);
  v27 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_subtitleLabel] = sub_75BB10();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_artworkView]];

  v31 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_titleLabel;
  v32 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_titleLabel];
  sub_75BAD0();

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[v31]];

  v34 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_subtitleLabel;
  v35 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_subtitleLabel];
  sub_BE70(0, &qword_93E540);
  v36 = v35;
  v37 = sub_769FF0();
  [v36 setTextColor:v37];

  v38 = *&v28[v34];
  sub_75BAD0();

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[v34]];

  return v28;
}

uint64_t sub_29DE5C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = sub_7664F0();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75C8F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_75C910();
  v9 = *(v31 - 8);
  *&v10 = __chkstk_darwin(v31).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54.receiver = v1;
  v54.super_class = ObjectType;
  v34 = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v10);
  if (qword_93C8B0 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v5, qword_99C5C0);
  (*(v6 + 16))(v8, v13, v5);
  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_artworkView];
  v52 = sub_759210();
  v53 = &protocol witness table for UIView;
  v51 = v14;
  v15 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel];
  if (v15)
  {
    v16 = sub_75BB20();
    v17 = &protocol witness table for UILabel;
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v47 = 0;
    v48 = 0;
  }

  v46 = v18;
  v49 = v16;
  v50 = v17;
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_titleLabel];
  v20 = sub_75BB20();
  v44 = v20;
  v45 = &protocol witness table for UILabel;
  v43 = v19;
  v21 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_subtitleLabel];
  v42 = &protocol witness table for UILabel;
  v41 = v20;
  v40 = v21;
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v22)
  {
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v37 = 0;
    v36 = 0;
  }

  v35 = v22;
  v38 = v20;
  v39 = v23;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  sub_75C900();
  v29 = [v1 contentView];
  sub_BE70(0, &qword_93E550);
  sub_75D650();

  sub_75C8D0();
  (*(v32 + 8))(v4, v33);
  sub_29ED60(&qword_94AE50, type metadata accessor for LargeLockupCollectionViewCell);
  sub_760A70();
  return (*(v9 + 8))(v12, v31);
}

id sub_29E314(char a1, uint64_t a2)
{
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_93D4F0 != -1)
    {
      swift_once();
    }

    v16 = sub_7666D0();
    v17 = sub_BE38(v16, qword_99E6E0);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(sub_75BB20());
    v20 = sub_75BB10();
    v2 = v15;
    sub_27A2D0(v20, &OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_29E5C4()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_93D540 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99E7D0);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(sub_75BB20());
  v15 = sub_75BB10();
  sub_27A2D0(v15, &OBJC_IVAR____TtC18ASMessagesProvider29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    sub_75BAD0();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_BE70(0, &qword_93E540);
      v18 = v17;
      v19 = sub_769FE0();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for LargeLockupCollectionViewCell()
{
  result = qword_94CF58;
  if (!qword_94CF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29E984()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29EA60()
{
  v0 = sub_765240();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_765200();
  sub_29ED60(&qword_950970, &type metadata accessor for Artwork.Crop);
  v4 = sub_7691C0();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return 6;
  }

  else
  {
    return sub_765210();
  }
}

uint64_t sub_29EB90()
{
  sub_759050();
  sub_759210();
  sub_29ED60(&qword_945810, &type metadata accessor for ArtworkView);
  return sub_75A0C0();
}

uint64_t sub_29EC28(uint64_t a1)
{
  result = sub_29ED60(&qword_94CF68, type metadata accessor for LargeLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_29EC80()
{
  if (qword_93C8B0 != -1)
  {
    swift_once();
  }

  v0 = sub_75C8F0();
  sub_BE38(v0, qword_99C5C0);
  sub_75C910();
  sub_29ED60(&qword_94CF70, &type metadata accessor for LargeLockupLayout);
  return sub_766ED0();
}

uint64_t sub_29ED60(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29EDA8(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 collectionView];
  if (v7)
  {
    v8 = v7;
    if ([v7 numberOfSections] >= 1)
    {
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = sub_2A3E24;
      v11[5] = v9;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = sub_6C6800;
      v11[3] = &unk_88B6D0;
      v10 = _Block_copy(v11);

      [a1 animateAlongsideTransition:v10 completion:0];
      _Block_release(v10);
    }
  }
}

uint64_t sub_29EEFC(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2A3E2C;
  *(v4 + 24) = a2;
  v7[4] = sub_47164;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1EB578;
  v7[3] = &unk_88B720;
  v5 = _Block_copy(v7);

  [v3 performWithoutAnimation:v5];
  _Block_release(v5);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_29F048()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_29F09C();
  }
}

id sub_29F09C()
{
  v1 = v0;
  v2 = sub_757640();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  sub_29F770();
  if (**&v0[qword_960D50] == &off_94D720)
  {
    sub_2A670C(v14);
  }

  else
  {
    (*(v3 + 56))(v14, 1, 1, v2);
  }

  v15 = qword_94CF80;
  swift_beginAccess();
  sub_127C68(v14, &v0[v15]);
  result = swift_endAccess();
  if (v0[qword_94CF78] == 1)
  {
    sub_1ED18(&v0[v15], v11, &unk_94EE60);
    if ((*(v3 + 48))(v11, 1, v2) == 1)
    {
      return sub_10A2C(v11, &unk_94EE60);
    }

    else
    {
      (*(v3 + 32))(v5, v11, v2);
      result = [v0 collectionView];
      if (result)
      {
        v17 = result;
        isa = sub_757550().super.isa;
        [v17 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

        (*(v3 + 8))(v5, v2);
        (*(v3 + 56))(v8, 1, 1, v2);
        swift_beginAccess();
        sub_127C68(v8, &v1[v15]);
        return swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

void sub_29F3E4(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_29EDA8(a5, a2, a3);
  swift_unknownObjectRelease();
}

id sub_29F464(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_BD88(&unk_94EE60);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v20[-v9];
  v11 = sub_757640();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v13);
  if ((*(v2 + qword_94CF78) & 1) == 0)
  {
    *(v2 + qword_94CF78) = 1;
  }

  v16 = qword_94CF80;
  swift_beginAccess();
  sub_1ED18(v2 + v16, v10, &unk_94EE60);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10A2C(v10, &unk_94EE60);
  }

  (*(v12 + 32))(v15, v10, v11);
  result = [v2 collectionView];
  if (result)
  {
    v18 = result;
    isa = sub_757550().super.isa;
    [v18 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:1];

    (*(v12 + 8))(v15, v11);
    (*(v12 + 56))(v7, 1, 1, v11);
    swift_beginAccess();
    sub_127C68(v7, v2 + v16);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29F71C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_29F464(a3);
}

uint64_t sub_29F770()
{
  v1 = v0;
  v2 = sub_BD88(&unk_960E40);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = *&v0[qword_960D50];
  sub_75EB10();
  sub_2A3D9C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
  sub_75AF30();
  sub_768C80();
  if (*(v5 + 112))
  {

    sub_75F4E0();
  }

  v6 = &unk_90D000;
  v7 = [v0 collectionView];
  [v7 reloadData];

  sub_2A3D9C(&qword_94D5E0, &type metadata accessor for GenericPagePresenter);
  if (sub_75EB70())
  {
    sub_75CA90();
  }

  v8 = [v1 collectionView];
  v9 = &selRef_absoluteDimension_;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 collectionViewLayout];

    if (v11)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v15 = (v13 + OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        v16 = *(v13 + OBJC_IVAR____TtC18ASMessagesProvider33BaseCollectionCompositionalLayout_pendingPrepareObserver);
        *v15 = sub_2A3DE4;
        v15[1] = v14;

        v9 = &selRef_absoluteDimension_;
        sub_F704(v16);

        v6 = &unk_90D000;
      }

      else
      {
      }
    }
  }

  v17 = [v1 v6[478]];
  if (v17 && (v18 = v17, v19 = [v17 v9[11]], v18, v19))
  {
    type metadata accessor for BaseCollectionCompositionalLayout();
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_757500();
  (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
  sub_2A3610(v4);

  sub_10A2C(v4, &unk_960E40);
  sub_75EB60();
}

double sub_29FACC(void *a1)
{
  v1 = a1;
  sub_29FB28();
  v3 = v2;

  return v3;
}

void sub_29FB28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  [v0 pageContainerSize];
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_7699B0();

  if ((v6 & 1) != 0 && v4 > 672.0)
  {
    sub_4FF230(v7);
  }

  else
  {
    v8.receiver = v1;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, "pageMarginInsets");
  }
}

uint64_t type metadata accessor for PrivacyDetailViewController()
{
  result = qword_94CFB0;
  if (!qword_94CFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29FCBC()
{
  sub_127A0C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_29FD58(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  v4 = v3;
  v63 = a3;
  v7 = sub_764930();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v55 - v12;
  __chkstk_darwin(v14);
  v16 = v55 - v15;
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  sub_764940();
  v20 = sub_3AC688();
  if (!v20)
  {
LABEL_67:
    (*(v8 + 8))(v19, v7);
    return;
  }

  v57 = v13;
  v58 = v10;
  v60 = v21;
  v61 = v20;
  sub_75EB10();
  sub_2A3D9C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
  if (sub_75AEF0())
  {
    v62 = v8;
    if (sub_75AF30() <= a2 || (sub_75AEE0() & 1) != 0)
    {
      v56 = 0;
    }

    else
    {
      v22 = sub_75AF20();
      if (sub_5C532C(a2))
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      v56 = v23;
    }

    v8 = v62;
  }

  else
  {
    v56 = 0;
  }

  v62 = a1;
  v24 = sub_764970();
  v25 = *(v8 + 16);
  v25(v16, v19, v7);
  v59 = *(v8 + 88);
  v26 = v59(v16, v7);
  if (v26 == enum case for Shelf.ContentType.smallLockup(_:) || v26 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_19:
    v28 = 1;
    goto LABEL_20;
  }

  v49 = v26 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v26 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v49 || v26 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_19;
  }

  if (v26 == enum case for Shelf.ContentType.editorialCard(_:) || v26 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_17;
  }

  v28 = 1;
  if (v26 == enum case for Shelf.ContentType.brick(_:) || v26 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.reviews(_:) || v26 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v26 == enum case for Shelf.ContentType.framedVideo(_:) || v26 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v26 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v26 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v26 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_20;
  }

  if (v26 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v26 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v26 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v26 == enum case for Shelf.ContentType.posterLockup(_:) || v26 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_17:
    v28 = v24;
    goto LABEL_20;
  }

  if (v26 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v28 = v24;
    if (v26 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v8 + 8))(v16, v7);
      v28 = 0;
    }
  }

LABEL_20:
  v29 = *&v4[qword_960D50];
  v30 = v63;
  [v63 bounds];
  [v30 safeAreaInsets];
  sub_769DA0();
  v32 = v31.n128_f64[0];
  v34 = v33;
  if ((v28 & 1) != 0 || (v63 = v25, (v35 = sub_3AC688()) == 0) || (v37 = v35, v38 = v36, [v4 pageMarginInsets], v40 = (*(v38 + 32))(0, v4, v37, v38, v39), v32 = v32 - (v40 + v41), v42 = objc_msgSend(v4, "traitCollection"), v43 = *v29, v55[0] = *(*v29 + 696), v55[1] = v43 + 696, LOBYTE(v37) = (v55[0])(v19, v42), v42, (v37 & 1) == 0))
  {
LABEL_64:
    v31.n128_u64[0] = 0;
    if (v32 > 0.0)
    {
      v31.n128_f64[0] = v32;
    }

    (*(v60 + 24))(v62, v28 & 1, v4, *&v4[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_artworkLoader], v31, v34);
    goto LABEL_67;
  }

  v44 = v57;
  v63(v57, v19, v7);
  v45 = v59(v44, v7);
  v46 = 0;
  if (v45 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v45 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v57, v7);
    v47 = [v4 traitCollection];
    v48 = (v55[0])(v19, v47);

    if (v48)
    {
      v46 = sub_2A2BD4(v56, v4, v19);
    }

    else
    {
      v46 = 1;
    }
  }

  v51 = v58;
  v63(v58, v19, v7);
  v52 = v59(v51, v7);
  if (v52 == enum case for Shelf.ContentType.annotation(_:) || v52 == enum case for Shelf.ContentType.productCapability(_:) || v52 == enum case for Shelf.ContentType.productPageLink(_:) || v52 == enum case for Shelf.ContentType.privacyType(_:))
  {
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 + (v46 - 1) * -30.0;
      goto LABEL_63;
    }

    __break(1u);
  }

  else
  {
    v53 = (*(v8 + 8))(v58, v7);
    v31.n128_f64[0] = j_j___s18ASMessagesProvider20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v53);
    if (!__OFSUB__(v46, 1))
    {
      v54 = v32 - v31.n128_f64[0] * (v46 - 1);
LABEL_63:
      v32 = v54 / v46;
      goto LABEL_64;
    }
  }

  __break(1u);
}

void *sub_2A0564()
{
  v1 = sub_75B660();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __chkstk_darwin(v5);
  v8 = (&v34 - v7);
  v9 = _swiftEmptyArrayStorage;
  v35 = _swiftEmptyArrayStorage;
  v10 = *(v0 + qword_960D50);
  v11 = (*&stru_4C8.segname[(swift_isaMask & *v0) + 8])(v6);
  v12 = sub_2A3B54(v11);
  if (v12)
  {
    v13 = v12;
    sub_769440();
    if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v9 = v35;
  }

  v14 = sub_2A3118(v0, v10);
  if (v14)
  {
    v15 = v14;
    sub_769440();
    if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();

    v9 = v35;
  }

  sub_75EB10();
  sub_2A3D9C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
  if (sub_75AF30() < 1)
  {
    goto LABEL_14;
  }

  sub_75AF00();
  if ((*(v2 + 88))(v8, v1) != enum case for ShelfBackground.color(_:))
  {
    (*(v2 + 8))(v8, v1);
    goto LABEL_14;
  }

  (*(v2 + 96))(v8, v1);

  v16 = *(sub_BD88(&unk_959640) + 48);
  v17 = sub_75EDA0();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);
  v18 = objc_opt_self();
  v19 = [v18 fractionalWidthDimension:1.0];
  v20 = [v18 absoluteDimension:2000.0];
  v21 = [objc_opt_self() sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = sub_769210();
  v23 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v21 elementKind:v22 alignment:1 absoluteOffset:{0.0, -2000.0}];

  [v23 setExtendsBoundary:0];
  v8 = v23;
  sub_769440();
  if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    sub_769500();

    v9 = v35;
LABEL_14:
    if (sub_75AF30() < 1)
    {
      break;
    }

    if (!__OFSUB__(sub_75AF30(), 1))
    {
      sub_75AF00();
      if ((*(v2 + 88))(v4, v1) == enum case for ShelfBackground.color(_:))
      {
        (*(v2 + 96))(v4, v1);

        v24 = *(sub_BD88(&unk_959640) + 48);
        v25 = sub_75EDA0();
        (*(*(v25 - 8) + 8))(v4 + v24, v25);
        v26 = objc_opt_self();
        v27 = [v26 fractionalWidthDimension:1.0];
        v28 = [v26 absoluteDimension:2000.0];
        v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

        v30 = sub_769210();
        v31 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:v30 alignment:5 absoluteOffset:{0.0, 2000.0}];

        [v31 setExtendsBoundary:0];
        v32 = v31;
        sub_769440();
        if (*(&dword_10 + (v35 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v35 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        return v35;
      }

      else
      {
        (*(v2 + 8))(v4, v1);
      }

      return v9;
    }

    __break(1u);
LABEL_23:
    sub_7694C0();
  }

  return v9;
}

void sub_2A0C7C()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v9 = [v1 collectionViewLayout];

    if (v9)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v3 = swift_dynamicCastClass();
      if (v3)
      {
        v4 = v3;
        v5 = v9;
        v6 = [v4 configuration];
        sub_BE70(0, &unk_960E50);
        v7 = sub_76A440();

        sub_2A0564();
        sub_BE70(0, &unk_956240);
        isa = sub_769450().super.isa;

        [v7 setBoundarySupplementaryItems:isa];

        [v4 setConfiguration:v7];
      }
    }
  }
}

void sub_2A0E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = sub_757640();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_757500();
  v55 = *(v9 - 8);
  v56 = v9;
  __chkstk_darwin(v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_960E40);
  *&v13 = __chkstk_darwin(v12 - 8).n128_u64[0];
  v54 = &v46 - v14;
  v15 = [v3 collectionView];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 collectionViewLayout];

    [v17 invalidateLayout];
  }

  v53 = *&v4[qword_960D50];
  v18 = [v4 collectionView];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 collectionViewLayout];

    if (v20)
    {
      type metadata accessor for BaseCollectionCompositionalLayout();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        goto LABEL_8;
      }
    }

    v18 = 0;
  }

LABEL_8:
  v52 = v18;
  v21 = *(a1 + 16);
  v22 = _swiftEmptyArrayStorage;
  if (v21)
  {
    v47 = v11;
    v48 = a2;
    v49 = a3;
    v50 = v4;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_143E24(0, v21, 0);
    v22 = aBlock[0];
    v23 = v57 + 16;
    v57 = *(v57 + 16);
    v24 = *(v23 + 64);
    v51 = a1;
    v25 = a1 + ((v24 + 32) & ~v24);
    v26 = *(v23 + 56);
    v27 = (v23 - 8);
    do
    {
      v28 = v58;
      v29 = v59;
      (v57)(v58, v25, v59);
      v30 = sub_7575D0();
      (*v27)(v28, v29);
      aBlock[0] = v22;
      v32 = v22[2];
      v31 = v22[3];
      if (v32 >= v31 >> 1)
      {
        sub_143E24((v31 > 1), v32 + 1, 1);
        v22 = aBlock[0];
      }

      v22[2] = v32 + 1;
      v22[v32 + 4] = v30;
      v25 += v26;
      --v21;
    }

    while (v21);
    v4 = v50;
    a1 = v51;
    a2 = v48;
    a3 = v49;
    v11 = v47;
  }

  sub_2A3D9C(&qword_960E10, &type metadata accessor for IndexSet);
  v33 = v56;
  sub_76A590();
  v34 = v22[2];
  v35 = v11;
  if (v34)
  {
    v36 = v22 + 4;
    do
    {
      v37 = *v36++;
      aBlock[6] = v37;
      sub_76A540();
      --v34;
    }

    while (v34);
  }

  v39 = v54;
  v38 = v55;
  (*(v55 + 32))(v54, v35, v33);
  (*(v38 + 56))(v39, 0, 1, v33);
  sub_2A3610(v39);

  sub_10A2C(v39, &unk_960E40);
  v40 = [v4 collectionView];
  if (v40)
  {
    v41 = v40;
    v42 = swift_allocObject();
    v42[2] = a2;
    v42[3] = a3;
    v42[4] = v4;
    v42[5] = a1;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2A3A94;
    *(v43 + 24) = v42;
    aBlock[4] = sub_2EC28;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1EB578;
    aBlock[3] = &unk_88B5E0;
    v44 = _Block_copy(aBlock);
    v45 = v4;

    [v41 performBatchUpdates:v44 completion:0];
    _Block_release(v44);
  }
}

uint64_t sub_2A135C()
{
  if (qword_93DEF8 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0418);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77DC20;
  v7 = sub_BD88(&qword_94D5D0);
  v6[0] = v0;
  v2 = v0;
  sub_7685C0();
  sub_10A2C(v6, &unk_93FBD0);
  sub_768540();
  swift_getErrorValue();
  v7 = v5;
  v3 = sub_B1B4(v6);
  (*(*(v5 - 8) + 16))(v3);
  sub_7685E0();
  sub_10A2C(v6, &unk_93FBD0);
  sub_768EA0();
}

void sub_2A158C()
{
  v1 = *&v0[qword_960D50];

  *(v1 + 80) = 1;

  sub_2A0C7C();
}

void sub_2A15EC()
{
  v1 = [v0 collectionView];
  sub_2A1734(v1);

  sub_2A0C7C();
}

void sub_2A1734(void *a1)
{
  v3 = sub_757500();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    sub_75EB10();
    sub_2A3D9C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
    v14 = sub_75AF30();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_2A3D9C(&qword_960E10, &type metadata accessor for IndexSet);
        sub_76A590();
        do
        {
          aBlock[6] = v13;
          sub_76A540();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_2A3D38;
        *(v21 + 24) = v20;
        aBlock[4] = sub_47164;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1EB578;
        aBlock[3] = &unk_88B658;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

uint64_t sub_2A1B30()
{
  v1 = v0;
  v2 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_768AB0();
  v40 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = *(v0 + 16);
  v12 = sub_75EB10();
  v44 = sub_2A3D9C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
  result = sub_75AF30();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v14 = 0;
    v42 = result;
    v43 = (v40 + 48);
    v41 = (v40 + 32);
    v38 = v4;
    v39 = (v40 + 16);
    v33 = v40 + 40;
    v34 = (v40 + 8);
    v36 = v11;
    v37 = v10;
    v35 = v12;
    do
    {
      sub_75AFE0();
      sub_764A70();
      if ((*v43)(v4, 1, v5) == 1)
      {

        sub_10A2C(v4, &unk_93FF30);
      }

      else
      {
        v15 = *v41;
        (*v41)(v10, v4, v5);
        swift_beginAccess();
        v16 = v7;
        v17 = v5;
        (*v39)(v7, v10, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *(v1 + 56);
        v19 = v45;
        v20 = v1;
        *(v1 + 56) = 0x8000000000000000;
        v22 = sub_663D5C(v14);
        v23 = v19[2];
        v24 = (v21 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_76A9B0();
          __break(1u);
          return result;
        }

        v26 = v21;
        if (v19[3] >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_45C108();
          }
        }

        else
        {
          sub_456470(v25, isUniquelyReferenced_nonNull_native);
          v27 = sub_663D5C(v14);
          if ((v26 & 1) != (v28 & 1))
          {
            goto LABEL_22;
          }

          v22 = v27;
        }

        v7 = v16;
        v29 = v45;
        if (v26)
        {
          v5 = v17;
          (*(v40 + 40))(v45[7] + *(v40 + 72) * v22, v16, v17);
        }

        else
        {
          v45[(v22 >> 6) + 8] |= 1 << v22;
          *(v29[6] + 8 * v22) = v14;
          v5 = v17;
          v15((v29[7] + *(v40 + 72) * v22), v16, v17);
          v30 = v29[2];
          v31 = __OFADD__(v30, 1);
          v32 = v30 + 1;
          if (v31)
          {
            goto LABEL_20;
          }

          v29[2] = v32;
        }

        v1 = v20;
        *(v20 + 56) = v29;

        swift_endAccess();

        v10 = v37;
        (*v34)(v37, v5);
        v4 = v38;
      }

      ++v14;
      result = v42;
    }

    while (v42 != v14);
  }

  return result;
}

uint64_t sub_2A1F64(uint64_t a1, uint64_t a2)
{
  v45 = sub_BD88(&unk_9467B0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_768AB0();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_7574A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&qword_94D5B0);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_7574B0();
  swift_beginAccess();
  sub_757500();
  sub_2A3D9C(&qword_94D5B8, &type metadata accessor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_7696F0();
    sub_2A3D9C(&qword_94D5C0, &type metadata accessor for IndexSet.Index);
    v19 = sub_7691C0();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_769710();
    v22 = *v21;
    v20(v49, 0);
    sub_769700();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_663D5C(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_75F4D0();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_452008(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_76A6E0();
    v17 = v44;
    sub_769090();
    sub_768C70();
    (*v41)(v17, v45);
  }

  return sub_10A2C(v15, &qword_94D5B0);
}

uint64_t sub_2A24FC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_BD88(&unk_9467B0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_7574A0();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94D5B0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_7574B0();
  sub_757500();
  sub_2A3D9C(&qword_94D5B8, &type metadata accessor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_7696F0();
    sub_2A3D9C(&qword_94D5C0, &type metadata accessor for IndexSet.Index);
    v12 = v23;
    v13 = sub_7691C0();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_769710();
    v16 = *v15;
    v14(v24, 0);
    sub_769700();
    v25 = v16;
    sub_76A6E0();
    v17 = v20;
    sub_769090();
    sub_768C70();
  }

  return sub_10A2C(v9, &qword_94D5B0);
}

void sub_2A2840(uint64_t a1)
{
  v12 = [v1 collectionView];
  if (v12)
  {
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 56);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
    if (v5)
    {
      while (1)
      {
        v8 = v7;
LABEL_10:
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
        sub_75EB10();
        sub_2A3D9C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
        v11 = sub_75AFE0();
        sub_29FD58(v11, v10, v12);

        if (!v5)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        return;
      }

      if (v8 >= v6)
      {
        break;
      }

      v5 = *(a1 + 56 + 8 * v8);
      ++v7;
      if (v5)
      {
        v7 = v8;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2A29F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_3ADE74();
    sub_2A2840(v2);
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;

    sub_75EB10();
    sub_2A3D9C(&qword_94D5E0, &type metadata accessor for GenericPagePresenter);
    v5 = sub_75EB70();

    if (v5)
    {
      sub_75CA90();
    }
  }

  return result;
}

void sub_2A2B1C(void (*a1)(void), uint64_t a2, void *a3)
{
  a1();
  v4 = [a3 collectionView];
  if (v4)
  {
    v5 = v4;
    sub_757640();
    isa = sub_769450().super.isa;
    [v5 deleteItemsAtIndexPaths:isa];
  }
}

uint64_t sub_2A2BD4(uint64_t a1, void *a2, uint64_t a3)
{
  v30 = a2;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = v6[2];
  v13(&v29 - v11, a3, v5, v10);
  v14 = v6[11];
  v15 = v14(v12, v5);
  result = 1;
  if (v15 != enum case for Shelf.ContentType.artwork(_:) && v15 != enum case for Shelf.ContentType.ribbonBar(_:) && v15 != enum case for Shelf.ContentType.ribbonFlow(_:) && v15 != enum case for Shelf.ContentType.paragraph(_:) && v15 != enum case for Shelf.ContentType.footnote(_:) && v15 != enum case for Shelf.ContentType.titledParagraph(_:) && v15 != enum case for Shelf.ContentType.reviewsContainer(_:) && v15 != enum case for Shelf.ContentType.reviewSummary(_:) && v15 != enum case for Shelf.ContentType.editorialLink(_:) && v15 != enum case for Shelf.ContentType.quote(_:) && v15 != enum case for Shelf.ContentType.framedArtwork(_:) && v15 != enum case for Shelf.ContentType.screenshots(_:) && v15 != enum case for Shelf.ContentType.appShowcase(_:) && v15 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v15 != enum case for Shelf.ContentType.linkableText(_:) && v15 != enum case for Shelf.ContentType.framedVideo(_:) && v15 != enum case for Shelf.ContentType.productDescription(_:) && v15 != enum case for Shelf.ContentType.banner(_:) && v15 != enum case for Shelf.ContentType.roundedButton(_:) && v15 != enum case for Shelf.ContentType.titledButtonStack(_:) && v15 != enum case for Shelf.ContentType.smallStoryCard(_:) && v15 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v15 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v15 != enum case for Shelf.ContentType.upsellBreakout(_:) && v15 != enum case for Shelf.ContentType.smallBreakout(_:) && v15 != enum case for Shelf.ContentType.arcadeFooter(_:) && v15 != enum case for Shelf.ContentType.editorialQuote(_:) && v15 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v15 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v15 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v15 != enum case for Shelf.ContentType.privacyHeader(_:) && v15 != enum case for Shelf.ContentType.privacyFooter(_:) && v15 != enum case for Shelf.ContentType.privacyCategory(_:) && v15 != enum case for Shelf.ContentType.privacyDefinition(_:) && v15 != enum case for Shelf.ContentType.heroCarousel(_:) && v15 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    v29 = a1;
    v17 = v6[1];
    v17(v12, v5);
    (v13)(v8, a3, v5);
    v18 = v14(v8, v5);
    if (v18 != enum case for Shelf.ContentType.annotation(_:) && v18 != enum case for Shelf.ContentType.productCapability(_:) && v18 != enum case for Shelf.ContentType.productPageLink(_:))
    {
      if (v18 == enum case for Shelf.ContentType.privacyType(_:))
      {
        v19 = v30;
        [v30 pageContainerSize];
        v21 = v20;
        JUScreenClassGetPortraitWidth();
        if (v21 >= v22)
        {
          [v19 pageContainerSize];
          v24 = v23;
          [v19 pageContainerSize];
          if (v24 >= v25)
          {
            if (v29 <= 2)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      else
      {
        v17(v8, v5);
      }

      return 2;
    }

    [v30 pageContainerSize];
    v27 = v26;
    JUScreenClassGetPortraitWidth();
    if (v28 > v27)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

id sub_2A3118(void *a1, uint64_t a2)
{
  if (*(a2 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v3 = sub_766CA0();
  sub_BE38(v3, qword_99FE18);
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_7671E0();
  sub_7666E0();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void sub_2A3300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_768C60();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_94CF78) = 0;
  v10 = qword_94CF80;
  v11 = sub_757640();
  (*(*(v11 - 8) + 56))(v3 + v10, 1, 1, v11);
  type metadata accessor for PrivacyDetailDataSource();
  swift_allocObject();
  v12 = swift_retain_n();
  v13 = sub_4792F0(v12);

  v14 = sub_46F944(a1, v13, a2);
  sub_2A3D9C(&qword_94D5D8, type metadata accessor for PrivacyDetailViewController);
  v15 = v14;

  v16 = v15;
  sub_760AA0();
  v16[OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_prefersLargeTitle] = 1;
  v17 = *&v16[OBJC_IVAR____TtC18ASMessagesProvider30UberedCollectionViewController_uber];
  v18 = [v16 navigationItem];
  v19 = v18;
  if (v17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  [v18 setLargeTitleDisplayMode:v20];

  v21 = v16;
  sub_760AB0();
  v23 = v22;

  if (v23)
  {
    v24 = sub_769210();
  }

  else
  {
    v24 = 0;
  }

  [v21 setTitle:v24];

  v25 = [v21 view];
  if (v25)
  {
    memset(v26, 0, sizeof(v26));
    sub_768C20();
    sub_10A2C(v26, &unk_93FBD0);
    sub_769E70();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2A3610(uint64_t a1)
{
  v2 = v1;
  v4 = sub_BD88(&unk_960E40);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_757500();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_1ED18(a1, v9, &unk_960E40);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10A2C(v9, &unk_960E40);
    if (v2[14])
    {

      sub_75F4E0();
    }

    swift_beginAccess();
    v2[7] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26 = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_BD88(&qword_9467C0);
    v21[0] = 0;
    sub_2A3AD4();
    v16 = v22;
    sub_768610();

    (*(v11 + 8))(v15, v10);
  }

  sub_2A1B30();
  sub_1ED18(v24, v6, &unk_960E40);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10A2C(v6, &unk_960E40);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_BD88(&qword_9467C0);
  sub_2A3AD4();
  sub_768610();

  return (*(v11 + 8))(v19, v10);
}

uint64_t sub_2A3A54()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2A3AA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2A3AD4()
{
  result = qword_9467C8;
  if (!qword_9467C8)
  {
    sub_133D8(&qword_9467C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9467C8);
  }

  return result;
}

id sub_2A3B54(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  v2 = objc_opt_self();
  v3 = [v2 fractionalWidthDimension:1.0];
  v4 = [v2 absoluteDimension:a1];
  v5 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v4];

  v6 = sub_769210();
  v7 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v5 elementKind:v6 alignment:1];

  return v7;
}

uint64_t sub_2A3C74()
{
  v1 = sub_757500();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_2A3D38()
{
  v1 = *(sub_757500() - 8);
  v2 = ((*(v1 + 80) + 24) & ~*(v1 + 80));
  v3 = *(v0 + 16);

  sub_6812D4(v3, v2);
}

uint64_t sub_2A3D9C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2A3DEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_2A3E7C()
{
  result = qword_94D5E8;
  if (!qword_94D5E8)
  {
    sub_75E8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94D5E8);
  }

  return result;
}

uint64_t sub_2A3ED4()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_BD88(&qword_94DDC0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.unsupported(_:), v0);
  return sub_768F30();
}

double sub_2A40CC(void *a1, double a2, double a3)
{
  v7 = *v3;
  sub_7671D0();
  sub_BD88(&unk_93F5C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_77D9F0;
  *(v8 + 32) = a1;
  v9 = a1;
  v10 = sub_7671E0();
  [v7 measurementsWithFitting:v10 in:{a2, a3}];
  v12 = v11;

  return v12;
}

void sub_2A41A0()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_subtitleLabel);
  if (v4)
  {
    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + v3);
      if (v7)
      {
        v8 = v7;
        v9 = [v1 tintColor];
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
          v12 = [v6 length];
          v13 = swift_allocObject();
          *(v13 + 16) = v11;
          *(v13 + 24) = v10;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_129434;
          *(v14 + 24) = v13;
          v18[4] = sub_12944C;
          v18[5] = v14;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1107296256;
          v18[2] = sub_2157DC;
          v18[3] = &unk_88B7B8;
          v15 = _Block_copy(v18);
          v16 = v11;
          v17 = v10;

          [v6 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v12 usingBlock:{0x100000, v15}];

          _Block_release(v15);
          LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

          if ((v17 & 1) == 0)
          {
            [v8 setAttributedText:v16];

            goto LABEL_7;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_7:
    }
  }
}

uint64_t type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell()
{
  result = qword_94D640;
  if (!qword_94D640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A455C()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  sub_7591D0(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  sub_7591D0(v6, v2);
  sub_759210();
  sub_14FA38();
  sub_75A0C0();
  sub_75A0C0();
}

void sub_2A4658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_757AA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_134D8(a1, v25);
  sub_BD88(&unk_93F520);
  sub_757BA0();
  if (swift_dynamicCast())
  {
    v23 = a2;
    v13 = v24;
    v14 = qword_93C620;
    v15 = *(*&v3[OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = sub_757CA0();
    sub_BE38(v16, qword_99B7F8);
    sub_757C00();
    v22 = [v3 backgroundColor];
    sub_757B80();
    v17 = OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v7 + 24))(&v15[v17], v12, v6);
    swift_endAccess();
    v21 = *(v7 + 16);
    v21(v9, &v15[v17], v6);
    sub_244454(v9);
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    v19 = v22;
    [v15 setBackgroundColor:v22];
    sub_6A9BFC(v13, v15, v23);
    v21(v12, &v15[v17], v6);
    sub_244454(v12);
    v18(v12, v6);
    [v15 setNeedsLayout];
  }
}

uint64_t sub_2A4968()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2A49B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2A49E4()
{
  result = qword_94D650;
  if (!qword_94D650)
  {
    sub_75AE60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94D650);
  }

  return result;
}

uint64_t sub_2A4A3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_75AE50();
  v4 = sub_72D574(v3, 1, a2);

  return v4;
}

char *sub_2A4A84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_isFirstSetup] = 1;
  v12 = [objc_allocWithZone(UISegmentedControl) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_segmentedControl] = v12;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_segmentedControl]];

  return v17;
}

uint64_t sub_2A4DA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v35 = sub_75C840();
  v38 = *(v35 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v35);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7656F0();
  sub_2A5C40(&qword_94D6A0, &type metadata accessor for PageTabs);
  v39 = a1;
  result = sub_75C750();
  v7 = v45;
  if (v45)
  {
    v33 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_segmentedControl);
    [v33 removeAllSegments];
    v8 = sub_7656E0();
    v9 = v8;
    v37 = v3;
    v25 = v7;
    if (v8 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
    {
      v11 = 0;
      v31 = v9 & 0xFFFFFFFFFFFFFF8;
      v32 = v9 & 0xC000000000000001;
      v27 = v5 + 7;
      v28 = v38 + 16;
      v26 = v38 + 32;
      v29 = i;
      v30 = v9;
      v12 = v35;
      while (v32)
      {
        v5 = sub_76A770();
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_12;
        }

LABEL_8:
        v44 = v13;
        v43 = sub_2A5C88();
        v14 = sub_7653D0();
        v41 = v15;
        v42 = v14;
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = swift_allocObject();
        swift_weakInit();
        v18 = swift_allocObject();
        swift_weakInit();
        v19 = v38;
        v20 = *(v38 + 16);
        v40 = v5;
        v5 = v34;
        v20(v34, v39, v12);
        v21 = (*(v19 + 80) + 40) & ~*(v19 + 80);
        v22 = (v27 + v21) & 0xFFFFFFFFFFFFFFF8;
        v23 = swift_allocObject();
        *(v23 + 2) = v16;
        *(v23 + 3) = v17;
        *(v23 + 4) = v18;
        v9 = v30;
        (*(v19 + 32))(&v23[v21], v5, v12);
        *&v23[v22] = v11;
        v24 = sub_76A1F0();
        [v33 insertSegmentWithAction:v24 atIndex:v11 animated:{0, v25, v26}];

        ++v11;
        if (v44 == v29)
        {
          goto LABEL_15;
        }
      }

      if (v11 >= *(v31 + 16))
      {
        goto LABEL_13;
      }

      v5 = *(v9 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        goto LABEL_8;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    sub_2A5168(v25, v39);
  }

  return result;
}

uint64_t sub_2A5168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v5 - 8);
  v39 = &v30 - v6;
  v7 = sub_BD88(&qword_94D6A8);
  v40 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_BD88(&qword_94D6B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = sub_2A5EC8();
  sub_75C780();
  v38 = v14;
  sub_769030();
  if (v42)
  {
    v31 = v9;
    v32 = v13;
    v33 = a2;
    v34 = v11;
    v36 = v10;
    v37 = v2;
    v15 = sub_7656E0();
    v16 = v15;
    v35 = v7;
    v17 = v15 & 0xFFFFFFFFFFFFFF8;
    if (v15 >> 62)
    {
LABEL_23:
      v18 = sub_76A860();
    }

    else
    {
      v18 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    }

    v19 = 0;
    while (1)
    {
      if (v18 == v19)
      {
        v19 = 0;
        goto LABEL_19;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
        if (v19 >= *(v17 + 16))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v20 = sub_7653C0();
      v22 = v21;
      if (v20 == sub_7656D0() && v22 == v23)
      {
        break;
      }

      v24 = sub_76A950();

      if (v24)
      {
        goto LABEL_19;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_22;
      }
    }

LABEL_19:

    sub_75C790();
    v26 = v31;
    v27 = sub_768B30();
    __chkstk_darwin(v27);
    *(&v30 - 2) = v19;
    *(&v30 - 8) = 0;
    v28 = v35;
    sub_768AF0();
    (*(v40 + 8))(v26, v28);
    v10 = v36;
    v3 = v37;
    v11 = v34;
    v13 = v32;
  }

  else
  {
    v19 = v41;
  }

  [*(v3 + OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_segmentedControl) setSelectedSegmentIndex:v19];
  return (*(v11 + 8))(v13, v10);
}

void sub_2A555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&qword_94D6A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - v11;
  v13 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v27 = a5;
      swift_beginAccess();
      v18 = swift_weakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v25 = v10;
        v26 = a6;
        v20 = sub_BD88(&unk_93F630);
        sub_768860();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v15, 1, v20) == 1)
        {
          sub_10A2C(v15, &unk_93F980);
        }

        else
        {
          v22 = sub_7653E0();
          v24 = sub_32AE50(v22, 1, v19, v15);

          (*(v21 + 8))(v15, v20);
        }

        sub_75C790();
        v23 = sub_768B30();
        __chkstk_darwin(v23);
        *(&v24 - 2) = v26;
        *(&v24 - 8) = 0;
        sub_2A5EC8();
        sub_768AF0();

        (*(v25 + 8))(v12, v9);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for SegmentedControlCollectionViewCell()
{
  result = qword_94D690;
  if (!qword_94D690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2A5998()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2A5A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2A5C40(&qword_941128, type metadata accessor for SegmentedControlCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_2A5B20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_2A5B78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2A5C40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2A5C88()
{
  result = qword_955FA0;
  if (!qword_955FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_955FA0);
  }

  return result;
}

uint64_t sub_2A5CD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A5D0C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2A5D44()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_2A5E24(uint64_t a1)
{
  v3 = *(sub_75C840() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2A555C(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_2A5EC8()
{
  result = qword_94D6B8;
  if (!qword_94D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94D6B8);
  }

  return result;
}

uint64_t sub_2A5F1C(uint64_t result)
{
  v2 = *(v1 + 24);
  *result = *(v1 + 16);
  *(result + 8) = v2;
  return result;
}

uint64_t sub_2A5F30(uint64_t a1)
{
  v2 = sub_7656C0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7656F0();
  sub_2A5C40(&qword_94D6A0, &type metadata accessor for PageTabs);
  result = sub_75C750();
  v7 = v30;
  if (!v30)
  {
    return result;
  }

  v8 = sub_7656E0();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_76A860();
    v29 = v5;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_15:

    v12 = _swiftEmptyArrayStorage;
LABEL_16:
    swift_getKeyPath();
    v19 = v29;
    sub_75C7B0();

    sub_765630();
    v21 = v20;
    v23 = v22;
    (*(v3 + 8))(v19, v2);
    swift_getKeyPath();
    sub_75C7B0();

    v24 = v30;
    sub_86BA8(v12, v21, v23);
  }

  v10 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  v29 = v5;
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_4:
  v30 = _swiftEmptyArrayStorage;
  result = sub_143CDC(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = v7;
    v26 = v3;
    v27 = v2;
    v28 = a1;
    v11 = 0;
    v12 = v30;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        sub_76A770();
      }

      else
      {
      }

      v13 = sub_7653D0();
      v15 = v14;

      v30 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_143CDC((v16 > 1), v17 + 1, 1);
        v12 = v30;
      }

      ++v11;
      v12[2] = v17 + 1;
      v18 = &v12[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
    }

    while (v10 != v11);

    v2 = v27;
    v3 = v26;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_2A625C()
{
  result = qword_94D6C0;
  if (!qword_94D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94D6C0);
  }

  return result;
}

unint64_t sub_2A62B4()
{
  result = qword_94D6C8;
  if (!qword_94D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94D6C8);
  }

  return result;
}

void sub_2A6324(unsigned __int8 a1)
{
  sub_765BE0();
  sub_765630();
  if (a1 != 6)
  {
    if (a1 == 5)
    {

      sub_765560();
    }

    else if (a1 == 4)
    {
      v2 = sub_765680();
      if (v3)
      {
        if (v2 == 0x6972477961646F74 && v3 == 0xE900000000000064)
        {

LABEL_15:
          sub_7655F0();
          return;
        }

        v4 = sub_76A950();

        if (v4)
        {
          goto LABEL_15;
        }
      }

      sub_765630();
    }

    else
    {

      sub_2A6624(a1);
    }
  }
}

double sub_2A6464(unsigned __int8 a1, id a2)
{
  if (a1 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [a2 layoutDirection];
  sub_769BB0();
  sub_2A6324(a1);
  sub_765650();
  sub_765650();
  [a2 layoutDirection];
  sub_769BB0();
  v5 = v4;
  sub_765580();
  sub_7699E0();
  sub_766DC0();
  sub_766DD0();
  return v5;
}

double sub_2A6624(unsigned __int8 a1)
{
  sub_765BE0();
  sub_765630();
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_765550();
      v6 = v5 + -1.0;
      sub_765560();
      v8 = v7;
      sub_7655F0();
      v10 = v6 + -1.0;
      if (v6 + -1.0 < 0.0)
      {
        v10 = 0.0;
      }

      v11 = v8 * v6 + v9 * v10;
      sub_765580();
      v13 = v12;
      sub_765620();
      v16 = v13 - (v14 + v15);
      sub_7655F0();
      v2 = v16 - v17 - v11;
    }

    else
    {
      sub_765580();
      v19 = v18;
      sub_765620();
      v22 = v19 - (v20 + v21);
      sub_765560();
      v24 = v22 - v23;
      sub_7655F0();
      v2 = v24 - v25;
    }
  }

  else if (a1)
  {
    v3 = v2;
    sub_7655F0();
    v2 = (v3 - v4) * 0.5;
  }

  return floor(v2);
}

uint64_t sub_2A670C@<X0>(uint64_t a1@<X8>)
{
  v52 = sub_757640();
  v2 = *(v52 - 8);
  __chkstk_darwin(v52);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_764930();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v40 = &v33 - v8;
  __chkstk_darwin(v9);
  v11 = &v33 - v10;
  __chkstk_darwin(v12);
  v50 = &v33 - v13;
  v14 = sub_75EB10();
  v42 = sub_2A703C(&qword_94D5C8, &type metadata accessor for GenericPagePresenter);
  v43 = v14;
  result = sub_75AF30();
  if (result < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (result)
    {
      v47 = v11;
      v36 = a1;
      v16 = 0;
      v46 = enum case for Shelf.ContentType.privacyType(_:);
      v45 = (v5 + 104);
      v48 = (v5 + 8);
      v39 = (v5 + 32);
      v38 = (v5 + 88);
      v37 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
      v34 = enum case for Shelf.ContentType.informationRibbon(_:);
      v35 = v2;
      v17 = (v2 + 8);
      v49 = result;
      v44 = v4;
      while (1)
      {
        if (sub_75D320())
        {
          sub_75D330();
          v18 = v47;
          (*v45)(v47, v46, v51);
          sub_2A703C(&qword_942D68, &type metadata accessor for Shelf.ContentType);
          sub_769430();
          sub_769430();
          if (v53 == v55 && v54 == v56)
          {
            v19 = 1;
          }

          else
          {
            v19 = sub_76A950();
          }

          v20 = *v48;
          v21 = v18;
          v22 = v51;
          (*v48)(v21, v51);
          v20(v50, v22);

          v23 = v44;
          if ((v19 & 1) != 0 && v16 < sub_75AF30() && (sub_75AEE0() & 1) == 0)
          {
            v33 = sub_75AF20();
            v24 = v40;
            sub_75AF10();
            v25 = v41;
            v26 = v24;
            v27 = v51;
            (*v39)(v41, v26, v51);
            v28 = (*v38)(v25, v27);
            v29 = 1;
            if (v28 == v37 || v28 == v34)
            {
              break;
            }

            result = (v20)(v41, v51);
            if (v33 < 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v29 = v33;
            if (v33)
            {
              break;
            }
          }
        }

LABEL_4:
        if (++v16 == v49)
        {
          v32 = 1;
          a1 = v36;
          v2 = v35;
          return (*(v2 + 56))(a1, v32, 1, v52);
        }
      }

      v30 = 0;
      while (1)
      {
        sub_7575B0();
        sub_75D340();
        sub_BD88(&unk_944DA0);
        sub_759650();
        if (swift_dynamicCast())
        {
          v31 = sub_759600();

          if (v31)
          {
            break;
          }
        }

        (*v17)(v23, v52);
        if (v29 == ++v30)
        {
          goto LABEL_4;
        }
      }

      v2 = v35;
      a1 = v36;
      (*(v35 + 32))(v36, v23, v52);
      v32 = 0;
    }

    else
    {
      v32 = 1;
    }

    return (*(v2 + 56))(a1, v32, 1, v52);
  }

  return result;
}

uint64_t sub_2A6CF4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_764930();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_75D330();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyCategory(_:), v5);
  sub_2A703C(&qword_942D68, &type metadata accessor for Shelf.ContentType);
  sub_769430();
  sub_769430();
  if (v22 == v20 && v23 == v21)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = sub_76A950();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      return sub_69DB40(a1, v18, v19);
    }
  }

  if (qword_93CDC0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_BE38(v15, qword_99D480);
  return sub_1226FC(v16, v19);
}

uint64_t sub_2A6F88()
{
  sub_69F5B8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDetailDataSource()
{
  result = qword_94D6F8;
  if (!qword_94D6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2A703C(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_2A7084(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_760AD0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v38 = v4;
  v16 = &v4[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_currentState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (qword_93D718 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  v18 = sub_BE38(v17, qword_99ED40);
  v19 = *(v17 - 8);
  v35 = *(v19 + 16);
  v36 = v18;
  v35(v15, v18, v17);
  v34 = *(v19 + 56);
  v34(v15, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v33 = *(v10 + 104);
  v33(v12, enum case for DirectionalTextAlignment.none(_:), v9);
  v21 = sub_75BB20();
  v22 = objc_allocWithZone(v21);
  v23 = sub_75BB10();
  v24 = v9;
  v25 = v38;
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] = v23;
  v35(v15, v36, v17);
  v34(v15, 0, 1, v17);
  v33(v12, v20, v24);
  v26 = objc_allocWithZone(v21);
  *&v25[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_pinnedLabel] = sub_75BB10();
  *&v25[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_columnWidth] = 0;
  *&v25[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_interColumnSpace] = 0;
  v39.receiver = v25;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_firstColumnLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_pinnedLabel]];

  return v31;
}

uint64_t sub_2A7590(uint64_t a1)
{
  v2 = sub_7656C0();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7649E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = sub_75FF30();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17 = *(v9 + 8);
  v17(v13, v8);
  if ((*(v5 + 88))(v7, v4) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v18 = *(v40 + 32);
  v33 = v14;
  v18(v16, v7, v14);
  v19 = v37;
  v20 = *(v37 + OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_firstColumnLabel);
  sub_75FF20();
  v21 = sub_769210();

  [v20 setText:v21];

  v22 = *(v19 + OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_pinnedLabel);
  v23 = v34;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v17(v23, v8);
  if (v41)
  {
    v24 = sub_769210();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = v36;
  sub_75DA20();
  sub_765560();
  v28 = v27;
  v29 = v39;
  v30 = *(v38 + 8);
  v30(v26, v39);
  *(v19 + OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_columnWidth) = v28;
  sub_75DA20();
  sub_7655F0();
  v32 = v31;
  v30(v26, v29);
  result = (*(v40 + 8))(v16, v33);
  *(v19 + OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_interColumnSpace) = v32;
  return result;
}

id sub_2A7A40()
{
  swift_getObjectType();
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_currentState + 40])
  {
    v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_columnWidth];
  }

  else
  {
    v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_currentState + 24];
  }

  v2 = *v1;
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_firstColumnLabel];
  sub_75D650();
  [v3 measurementsWithFitting:v0 in:{v2, CGRectGetHeight(v26)}];
  v4 = [v0 traitCollection];
  sub_75D650();
  sub_769CA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider40InteractiveProductReviewsShelfHeaderView_pinnedLabel];
  sub_75D650();
  Width = CGRectGetWidth(v27);
  sub_75D650();
  [v13 measurementsWithFitting:v0 in:{Width, CGRectGetHeight(v28)}];
  v15 = [v0 traitCollection];
  sub_75D650();
  sub_769CA0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [v13 setFrame:{v17, v19, v21, v23}];
}

id sub_2A7D30(void (*a1)(char *, char *, uint64_t))
{
  v57 = a1;
  v1 = sub_76A920();
  v68 = *(v1 - 8);
  v69 = v1;
  __chkstk_darwin(v1);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75B680();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&unk_94F1F0);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - v6;
  v73 = sub_766D70();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v51 - v9;
  v10 = sub_7656C0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_767030();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  sub_767020();
  if (qword_93D718 != -1)
  {
    swift_once();
  }

  v21 = sub_7666D0();
  sub_BE38(v21, qword_99ED40);
  v56 = v20;
  sub_766FF0();
  v22 = *(v15 + 8);
  v61 = v15 + 8;
  v62 = v22;
  v22(v17, v14);
  sub_75DA20();
  sub_765630();
  v72 = v14;
  v52 = *(v11 + 8);
  v51 = v10;
  v52(v13, v10);
  sub_75FF20();
  v57 = *(v15 + 16);
  v57(v17, v20, v14);
  sub_766D50();
  sub_766D90();
  v23 = sub_75DA30();
  v54 = sub_7671D0();
  v55 = sub_BD88(&unk_93F5C0);
  v24 = swift_allocObject();
  v53 = xmmword_77D9F0;
  *(v24 + 16) = xmmword_77D9F0;
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = sub_7671E0();
  sub_7665A0();
  v28 = v27;

  sub_75DA20();
  sub_765BE0();
  sub_765630();
  v52(v13, v51);
  v29 = v58;
  sub_75DAA0();
  swift_getKeyPath();
  v30 = v60;
  sub_768750();

  (*(v59 + 8))(v29, v30);
  v31 = v56;
  v57(v17, v56, v72);
  sub_766D50();
  v32 = v67;
  sub_766D90();
  v33 = sub_75DA30();
  v34 = swift_allocObject();
  *(v34 + 16) = v53;
  *(v34 + 32) = v33;
  v35 = v33;
  v36 = sub_7671E0();
  v37 = v73;
  sub_7665A0();
  v39 = v38;

  if (v28 > v39)
  {
    v39 = v28;
  }

  v40 = v63;
  sub_75B670();
  sub_75DA40();
  v41 = v66;
  sub_766470();
  sub_2A8548();
  v42 = v65;
  sub_766700();
  v44 = v43;
  swift_unknownObjectRelease();
  (*(v68 + 8))(v41, v69);
  (*(v64 + 8))(v40, v42);
  v45 = objc_opt_self();
  v46 = [v45 fractionalWidthDimension:1.0];
  v47 = [v45 absoluteDimension:v39 + v44];
  v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

  v49 = *(v70 + 8);
  v49(v32, v37);
  v49(v71, v37);
  v62(v31, v72);
  return v48;
}

unint64_t sub_2A8548()
{
  result = qword_94DA48;
  if (!qword_94DA48)
  {
    sub_75B680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94DA48);
  }

  return result;
}

id sub_2A85A0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell();
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_2A8810(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

void (*sub_2A8960(void *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents;
  a1[2] = v1;
  a1[3] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v4 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4;
  v4 = sub_75DCB0();
  v7 = v6;

LABEL_6:
  *a1 = v4;
  a1[1] = v7;
  return sub_2A8A20;
}

void sub_2A8A20(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v3)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_F714(v2);
        v4 = v3;
        sub_75DCC0();
      }
    }

    goto LABEL_10;
  }

  if (!v3 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    sub_F704(v2);
    return;
  }

  v5 = v3;
  sub_75DCC0();
}

void sub_2A8B5C(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v3 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_2AC49C(&qword_93F500, type metadata accessor for VideoView);
    }

    swift_getObjectType();
    v6 = a1;
    v5 = v3;
    sub_75EF30();

    v4 = v6;
  }

  else
  {
    v4 = a1;
  }
}

uint64_t sub_2A8C60()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v1)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v3 = v1;
    v4 = sub_75EF20();

    if (v4)
    {
      type metadata accessor for VideoView();
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_2A8D00(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (!v4)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = v4;
    v7 = sub_75EF20();

    if (!v7)
    {
LABEL_6:
      v5 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView();
    v5 = swift_dynamicCastClass();
    if (!v5)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v5;
  return sub_2A8DD4;
}

void sub_2A8DD4(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_2AC49C(&qword_93F500, type metadata accessor for VideoView);
        }

        v7 = v11;
        v8 = v5;
        sub_75EF30();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_2AC49C(&qword_93F500, type metadata accessor for VideoView);
    }

    v9 = v11;
    v10 = v5;
    sub_75EF30();

    v4 = v9;
  }

LABEL_13:
}

id sub_2A8F94()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_BD88(&qword_94DAB8), sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_B170(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_BEB8(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10A2C(&v8, &qword_94DAB0);

  return v7;
}

id sub_2A90C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_BD88(&qword_94DAB8), sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_B170(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_BEB8(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10A2C(&v8, &qword_94DAB0);

  return v7;
}

id sub_2A91EC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_BD88(&qword_94DAB8), sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_B170(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_BEB8(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10A2C(&v8, &qword_94DAB0);

  return v7;
}

uint64_t sub_2A9318()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_BD88(&qword_94DAB8), sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_B170(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_BEB8(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10A2C(&v6, &qword_94DAB0);
}

uint64_t sub_2A9454()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_BD88(&qword_94DAB8), sub_BD88(&qword_94EE70), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_B170(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_BEB8(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10A2C(&v6, &qword_94DAB0);
}

void sub_2A9570()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for SearchResultCollectionViewCell();
  objc_msgSendSuper2(&v12, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame:{v5, v7, v9, v11}];
  }
}

uint64_t sub_2A9730(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_75B4F0();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_94F1F0);
  v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v59 - v9;
  v11 = sub_7656A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_7656C0();
  v70 = *(v17 - 8);
  v71 = v17;
  __chkstk_darwin(v17);
  v67 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v59 - v20;
  sub_759F50();
  sub_2AC49C(&unk_945268, &type metadata accessor for SearchResult);
  result = sub_75C750();
  if (v73)
  {
    v61 = v16;
    v22 = sub_102258();
    if (!v22)
    {
    }

    v24 = v23;
    v60 = a2;
    v62 = &v3[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
    v63 = v3;
    if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents] || sub_BD88(&qword_94DAA8) != v22)
    {
      v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v26 = v62;
      v27 = *v62;
      *v62 = v25;
      *(v26 + 1) = v24;
      v28 = v11;
      v29 = a1;
      v30 = v25;
      sub_2A8810(v27);

      a1 = v29;
      v11 = v28;
    }

    swift_getKeyPath();
    sub_75C7B0();

    v31 = v73;
    v32 = sub_7699D0();

    if ((v32 & 1) == 0)
    {
      v50 = *v62;
      if (*v62)
      {
        v51 = *(v62 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v63 setNeedsLayout];
    }

    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    (*(v64 + 8))(v10, v8);
    v33 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v73)
    {
      v33 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v34 = v61;
    (*(v12 + 104))(v61, *v33, v11);
    sub_765580();
    v64 = v35;
    sub_7655A0();
    v59 = v36;
    sub_765590();
    swift_getKeyPath();
    sub_75C7B0();

    v37 = v66;
    sub_75B4B0();
    (*(v12 + 16))(v65, v34, v11);
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    v38 = v67;
    sub_765670();
    (*(v68 + 8))(v37, v69);
    v39 = v62;
    if (*v62)
    {
      [*v62 layoutMargins];
      v41 = v40;
      v43 = v42;
      sub_765620();
      v45 = v44;
      sub_765620();
      v46 = *v39;
      if (!*v39)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_765620();
      v41 = v56;
      v45 = v57;
      v43 = v58;
      v46 = *v39;
      if (!*v39)
      {
LABEL_14:
        v47 = *(v70 + 8);
        v48 = v38;
        v49 = v71;
        v47(v48, v71);
        (*(v12 + 8))(v34, v11);
        v47(v72, v49);
        v50 = *v39;
        if (*v39)
        {
          v51 = *(v39 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v53 = a1;
          v54 = *(v51 + 48);
          v55 = v50;
          v54(v53, v60, ObjectType, v51);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v46 setLayoutMargins:{v41, v45, v43}];
    goto LABEL_14;
  }

  return result;
}

void sub_2A9E68(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      sub_2257B4(a1, a2);
      [v6 setNeedsLayout];
    }
  }
}

uint64_t sub_2A9F7C(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), uint64_t a3, void *a4, char *a5, int a6)
{
  v73 = a6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v8 = sub_768380();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v78 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7683C0();
  v77 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_768370();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_7683E0();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  sub_134D8(a1, aBlock);
  sub_BD88(&unk_952540);
  sub_75BD00();
  result = swift_dynamicCast();
  if (result)
  {
    v68 = v11;
    v23 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
    if (v23 && (v69 = v81[0], v65 = v9, v24 = type metadata accessor for AdvertsSearchResultContentView(), (v25 = swift_dynamicCastClass()) != 0))
    {
      v26 = v25;
      v27 = v23;
      [v6 setUserInteractionEnabled:0];
      v66 = v27;
      [v26 frame];
      v32 = [objc_allocWithZone(v24) initWithFrame:{v28, v29, v30, v31}];
      v33 = *(*&v26[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing);
      [v26 layoutMargins];
      v67 = v21;
      v34 = v69;
      v35 = v71;
      v36 = v70;
      v70 = v6;
      sub_3B9C04(v69, v71, v36, v79, v33, v37, v38, v39, v40);
      [v32 layoutIfNeeded];
      [v26 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v81[0] = v42;
      v81[1] = v44;
      v81[2] = v46;
      v81[3] = v48;
      v82 = 0;
      sub_3BBFF4(v34, v81, v72, v35);
      v49 = &v26[OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v72 = v8;
      v50 = *v49;
      v51 = v49[1];
      sub_F714(*v49);
      sub_23481C(v50, v51);
      sub_F704(v50);
      sub_12EA98();
      v71 = sub_769970();
      sub_7683D0();
      v52 = 333;
      if ((v73 & 1) == 0)
      {
        v52 = 0;
      }

      *v16 = v52;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      sub_768440();
      (*(v14 + 8))(v16, v13);
      v74 = *(v74 + 8);
      v53 = v75;
      (v74)(v18, v75);
      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v55 = swift_allocObject();
      v55[2] = v54;
      v55[3] = v26;
      v56 = v79;
      v55[4] = v32;
      v55[5] = v56;
      aBlock[4] = sub_2AC41C;
      aBlock[5] = v55;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88B9C0;
      v57 = _Block_copy(aBlock);
      v58 = v66;
      v59 = v32;

      v60 = v76;
      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_2AC49C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350);
      sub_4C874();
      v61 = v78;
      v62 = v72;
      sub_76A5A0();
      v63 = v67;
      v64 = v71;
      sub_769930();

      _Block_release(v57);

      (*(v65 + 8))(v61, v62);
      (*(v77 + 8))(v60, v68);
      return (v74)(v63, v53);
    }

    else
    {
    }
  }

  return result;
}

void sub_2AA734(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_2AC490;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_3D6D80;
    aBlock[3] = &unk_88BA10;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_2AA894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  sub_761120();
  sub_768900();
  sub_768ED0();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_2AC49C(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_2AC49C(&unk_9566C0, type metadata accessor for AdvertsSearchResultContentView);
  sub_7610C0();

  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    sub_2AC49C(&qword_93F500, type metadata accessor for VideoView);
  }

  sub_761100();

  v9 = sub_2AC49C(&qword_945060, type metadata accessor for AdvertsSearchResultContentView);
  v10 = &a5[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
  v11 = *&a5[OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents];
  *v10 = a4;
  *(v10 + 1) = v9;
  v12 = a4;
  sub_2A8810(v11);

  [a5 setUserInteractionEnabled:1];
}

void sub_2AAAD0()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_F704(v2);
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v3;
      sub_7633B0();
    }
  }
}

void sub_2AABBC()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v5 = v4;
      sub_7633A0();
    }
  }
}

uint64_t sub_2AACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_75D3C0();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75DAB0();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_7656C0();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75ACC0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_94DA98);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  sub_75DDB0();
  sub_2AC49C(&qword_945260, &type metadata accessor for AdvertsSearchResult);
  v37 = a1;
  sub_75C750();
  if (!v45)
  {
    v26 = 1;
    v25 = v44;
    goto LABEL_14;
  }

  v34 = v4;
  v43 = v45;
  sub_75DD80();
  (*(v9 + 104))(v19, enum case for ItemBackground.clearAdWithSeparator(_:), v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v23 = *(v11 + 48);
  sub_1ED18(v22, v13, &unk_955F20);
  sub_1ED18(v19, &v13[v23], &unk_955F20);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    sub_1ED18(v13, v16, &unk_955F20);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v27 = v35;
      (*(v9 + 32))(v35, &v13[v23], v8);
      sub_2AC49C(&qword_94DAA0, &type metadata accessor for ItemBackground);
      v28 = sub_7691C0();
      v29 = *(v9 + 8);
      v29(v27, v8);
      sub_10A2C(v19, &unk_955F20);
      sub_10A2C(v22, &unk_955F20);
      v29(v16, v8);
      sub_10A2C(v13, &unk_955F20);
      v25 = v44;
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_9:

      v26 = 1;
      goto LABEL_14;
    }

    sub_10A2C(v19, &unk_955F20);
    sub_10A2C(v22, &unk_955F20);
    (*(v9 + 8))(v16, v8);
LABEL_8:
    sub_10A2C(v13, &qword_94DA98);
    v25 = v44;
    goto LABEL_9;
  }

  sub_10A2C(v19, &unk_955F20);
  sub_10A2C(v22, &unk_955F20);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_10A2C(v13, &unk_955F20);
  v25 = v44;
LABEL_11:
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  v30 = v38;
  sub_765660();
  sub_765650();
  (*(v40 + 104))(v34, enum case for ComponentSeparator.Position.bottom(_:), v42);
  v31 = [objc_opt_self() systemGray3Color];
  sub_75D3D0();

  (*(v39 + 8))(v30, v41);
  v26 = 0;
LABEL_14:
  v32 = sub_75D400();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

id sub_2AB408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell()
{
  result = qword_94DA78;
  if (!qword_94DA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2AB514()
{
  sub_1EA64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2AB5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620);
}

uint64_t sub_2AB620(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2AB6E4()
{
  sub_759F50();
  sub_2AC49C(&unk_945268, &type metadata accessor for SearchResult);
  result = sub_75C750();
  if (v1)
  {
    if (sub_102258())
    {
      sub_75EAF0();
    }
  }

  return result;
}

void sub_2AB7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell();
    v10 = v4;
    sub_75D650();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}

void sub_2AB8A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v4;
    v10(a1, a2, a3 & 1, ObjectType, v8);
  }
}

uint64_t sub_2AB988()
{
  sub_759F50();
  sub_2AC49C(&unk_945268, &type metadata accessor for SearchResult);
  result = sub_75C750();
  if (v1)
  {
    if (sub_102258())
    {
      sub_763BF0();
    }
  }

  return result;
}

uint64_t (*sub_2ABA60(uint64_t **a1))()
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
  v2[4] = sub_2A8D00(v2);
  return sub_21028;
}

uint64_t sub_2ABAD4()
{
  if (!*(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents))
  {
    return 0;
  }

  type metadata accessor for AdvertsSearchResultContentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(*(result + OBJC_IVAR____TtC18ASMessagesProvider30AdvertsSearchResultContentView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_isDisplayingSearchAd);
  }

  return result;
}

uint64_t sub_2ABB64()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v3 = v1;
    v4 = sub_75DCB0();

    return v4;
  }

  return result;
}

void sub_2ABBF8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (v2)
  {
    v3 = a1;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v4 = v2;
      sub_75DCC0();

      return;
    }

    a1 = v3;
  }

  sub_F704(a1);
}

uint64_t (*sub_2ABCD8(void *a1))()
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
  v2[4] = sub_2A8960(v2);
  return sub_246E0;
}

uint64_t sub_2ABD90()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_2ABDF0(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_57E1C;
}

uint64_t sub_2ABE88()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1);
  return v2;
}

uint64_t sub_2ABEE4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6);
}

uint64_t sub_2AC078(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_2AC0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_2AC138(uint64_t *a1))()
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

uint64_t sub_2AC1D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider30SearchResultCollectionViewCell_resultContents);
  if (!v1)
  {
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_75DC40();

  return v3 & 1;
}

uint64_t sub_2AC394()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2AC3CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2AC428(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2AC440()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2AC49C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2AC4FC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_764360();
  swift_allocObject();
  v6 = sub_764350();
  v7 = sub_2B2958(v5, v6, a3);

  v8 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController);
  *(a2 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController) = v7;
}

void (*sub_2AC58C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_2B4520;
}

id sub_2AC624()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___resultsMessageView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___resultsMessageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___resultsMessageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchResultsMessageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreservesSuperviewLayoutMargins:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_2AC6BC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_onSelect];
    v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_onSelect];
    *v6 = sub_2B4874;
    v6[1] = v5;

    sub_F704(v7);

    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_2AC7B4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_75F380();
  }

  return result;
}

uint64_t sub_2AC8A0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (*(*(result + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController) && (type metadata accessor for StoreCollectionViewController(), (v4 = swift_dynamicCastClass()) != 0))
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph;
    }

    else
    {
      v5 = &OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph;
      v4 = v3;
    }

    v6 = *(v4 + *v5);
    sub_762C40();
    v7 = swift_dynamicCastClass() == 0;

    sub_72D574(a1, v7, v6);
  }

  return result;
}

void sub_2AC99C(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {

    v3 = sub_2AC624();

    sub_7411B4(v4);

    v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter);
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___resultsMessageView);
    v63[3] = type metadata accessor for SearchResultsMessageView();
    v63[4] = &protocol witness table for UIView;
    v63[0] = v6;
    sub_134D8(v63, v62);
    sub_134D8(v62, v61);
    v7 = swift_allocObject();
    sub_10914(v62, v7 + 16);
    v8 = swift_allocObject();
    v8[2] = sub_2B47DC;
    v8[3] = v7;
    v8[4] = 0x3FD999999999999ALL;
    v9 = v6;

    sub_BEB8(v63);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_BEB8(v61);

LABEL_28:
      v54 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v54)
      {
        v55 = [v54 collectionView];
        if (v55)
        {
          v56 = v55;
          sub_6B778C(v55);
          v57 = UIAccessibilityScreenChangedNotification;
          v58 = v56;
          UIAccessibilityPostNotification(v57, v58);
        }
      }

      return;
    }

    v11 = Strong;
    v59 = v6;
    v12 = *(v5 + 24);
    if (v12)
    {
      [v12 setHidden:1];
    }

    v13 = v9;
    [v13 setHidden:0];
    v14 = [v13 superview];
    v15 = [v11 contentView];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        sub_BE70(0, &qword_93E550);
        v17 = sub_76A1C0();

        v18 = &selRef_setSpeed_;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = v14;
      v18 = &selRef_setSpeed_;
    }

    else
    {
      v18 = &selRef_setSpeed_;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    v27 = [v11 v18[376]];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v13 setFrame:{v29, v31, v33, v35}];
    [v13 setAutoresizingMask:18];
    v36 = [v11 v18[376]];
    [v36 addSubview:v13];

LABEL_25:
    v37 = *(v5 + 24);
    *(v5 + 24) = v59;
    v38 = v13;

    if (*(v5 + 65))
    {
      v39 = [v11 v18[376]];
      sub_BE70(0, &qword_93E550);
      sub_75D650();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v65.origin.x = v41;
      v65.origin.y = v43;
      v65.size.width = v45;
      v65.size.height = v47;
      CGRectGetWidth(v65);
      v48 = [v11 v18[376]];
      sub_B170(v61, v61[3]);
      sub_7665A0();
      v50 = v49;

      [v11 setPreferredHeight:v50];
      [v11 setMinimumHeight:0.0];
    }

    v51 = *(v5 + 32);
    v52 = *(v5 + 40);
    v53 = *(v5 + 48);
    *(v5 + 32) = sub_2B47DC;
    *(v5 + 40) = v7;
    *(v5 + 48) = sub_2B4868;
    *(v5 + 56) = v8;
    *(v5 + 64) = 1;
    sub_2B47E4(v51, v52, v53);
    sub_BEB8(v61);

    goto LABEL_28;
  }

  v19 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter);
  v20 = sub_2AC624();
  if (*(v19 + 65) == 1 && (v21 = *(v19 + 24)) != 0)
  {
    v60 = v20;
    sub_BE70(0, &qword_93E550);
    v22 = v21;
    v23 = sub_76A1C0();

    if (v23)
    {
      v24 = *(v19 + 24);
      if (v24)
      {
        if (*(v19 + 65) == 1)
        {
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v24 setHidden:1];
            [v26 setMinimumHeight:0.0];
            [v26 setPreferredHeight:0.0];

            *(v19 + 65) = 0;
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_2ACF78()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter);
  v3 = sub_2AC6BC();
  if (*(v2 + 65) != 1 || (v4 = *(v2 + 24)) == 0)
  {

LABEL_6:
    v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette);
    v48[3] = type metadata accessor for GuidedSearchTokenPaletteView();
    v48[4] = &protocol witness table for UIView;
    v48[0] = v8;
    sub_134D8(v48, v47);
    sub_134D8(v47, v46);
    v9 = swift_allocObject();
    sub_10914(v47, v9 + 16);
    v10 = v8;
    sub_BEB8(v48);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_BEB8(v46);
LABEL_22:

      sub_6B79A8();
      return;
    }

    v12 = Strong;
    v13 = *(v2 + 24);
    if (v13)
    {
      [v13 setHidden:1];
    }

    v14 = v10;
    [v14 setHidden:0];
    v15 = [v14 superview];
    v16 = [v12 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_BE70(0, &qword_93E550);
        v18 = sub_76A1C0();

        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = [v12 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v14 setFrame:{v21, v23, v25, v27}];
    [v14 setAutoresizingMask:18];
    v28 = [v12 contentView];
    [v28 addSubview:v14];

LABEL_19:
    v29 = *(v2 + 24);
    *(v2 + 24) = v8;
    v30 = v14;

    if (*(v2 + 65))
    {
      v31 = [v12 contentView];
      sub_BE70(0, &qword_93E550);
      sub_75D650();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v49.origin.x = v33;
      v49.origin.y = v35;
      v49.size.width = v37;
      v49.size.height = v39;
      CGRectGetWidth(v49);
      v40 = [v12 contentView];
      sub_B170(v46, v46[3]);
      sub_7665A0();
      v42 = v41;

      [v12 setPreferredHeight:v42];
      [v12 preferredHeight];
      [v12 setMinimumHeight:?];
    }

    v43 = *(v2 + 32);
    v44 = *(v2 + 40);
    v45 = *(v2 + 48);
    *(v2 + 32) = sub_2B47DC;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    sub_2B47E4(v43, v44, v45);
    sub_BEB8(v46);

    goto LABEL_22;
  }

  v5 = v3;
  sub_BE70(0, &qword_93E550);
  v6 = v4;
  v7 = sub_76A1C0();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_2AD368()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter);
  v3 = sub_2AC6BC();
  if (*(v2 + 65) == 1 && (v4 = *(v2 + 24)) != 0)
  {
    v14 = v3;
    sub_BE70(0, &qword_93E550);
    v5 = v4;
    v6 = sub_76A1C0();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette;
      v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette);
      sub_1AE9B4(_swiftEmptyArrayStorage);

      v9 = *(v1 + v7);
      *&v9[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
      v10 = v9;

      *&v10[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;

      v11 = objc_opt_self();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_2B479C;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88BD38;
      v13 = _Block_copy(aBlock);

      [v11 animateWithDuration:v13 animations:0.3];
      _Block_release(v13);
    }
  }

  else
  {
  }
}

uint64_t sub_2AD550()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter);
    v2 = result;

    v3 = *(v1 + 24);
    if (v3 && *(v1 + 65) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        [v3 setHidden:1];
        [v5 setMinimumHeight:0.0];
        [v5 setPreferredHeight:0.0];

        *(v1 + 65) = 0;
      }
    }
  }

  return result;
}

void sub_2AD62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchTextInput);
  if (v3 && v3[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_isTextExpansionDisabled] != 1)
  {
    v6 = OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField;
    v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider30SearchTextInputSourceTextField_textField];
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7 != 0)
    {
      v10 = v8;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 40);
      v20 = v3;
      v13 = v7;
      v14 = v12(a1, a2, ObjectType, v10);

      if ((v14 & 1) == 0 || ((v15 = *&v3[v6], swift_getObjectType(), (v16 = swift_conformsToProtocol2()) != 0) ? (v17 = v15 == 0) : (v17 = 1), v17))
      {
      }

      else
      {
        v18 = v16;
        v19 = v15;

        sub_3B3F18(v20, v19, v18, a1, a2);
      }
    }
  }
}

uint64_t (*sub_2AD7EC(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2B4928;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_2B4968;
}

id sub_2AD87C(id result)
{
  v2 = v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding];
  v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding] = result;
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController];
    if (result)
    {
      [v1 addChildViewController:*&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController]];
      result = [v1 view];
      if (result)
      {
        v4 = result;
        result = [v3 view];
        if (result)
        {
          v5 = result;
          [v4 addSubview:result];

          v6 = "didMoveToParentViewController:";
          v7 = v3;
          v8 = v1;

          return [v7 v6];
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController] willMoveToParentViewController:0];
      result = [v3 view];
      if (result)
      {
        v9 = result;
        [result removeFromSuperview];

        v6 = "removeFromParentViewController";
        v7 = v3;

        return [v7 v6];
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

id sub_2AD9E4()
{
  v1 = v0;
  v2 = sub_768C60();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_94DCE0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = type metadata accessor for SearchViewController();
  v41.receiver = v0;
  v41.super_class = v8;
  objc_msgSendSuper2(&v41, "viewDidLoad");
  v9 = [v0 navigationItem];
  sub_6B75E0(v9, 2, 1);

  sub_75E610();
  v10 = sub_BE70(0, &qword_940340);
  v11 = sub_769970();
  *(&v39 + 1) = v10;
  v40 = &protocol witness table for OS_dispatch_queue;
  *&v38 = v11;
  sub_BD88(&qword_94DCE8);
  sub_16194(&qword_94DCF0, &qword_94DCE8);
  sub_768720();

  (*(v5 + 8))(v7, v4);
  sub_BEB8(&v38);
  sub_2AE9B8();
  v12 = [v1 navigationItem];
  result = [v1 tabBarItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result title];

  if (v15 || (v15 = [v1 title]) != 0)
  {
    sub_769240();

    v15 = sub_769210();
  }

  [v12 setTitle:v15];

  v16 = [v1 navigationItem];
  sub_27CCF4();

  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController];
  [v17 setSearchResultsUpdater:v1];
  [v17 setDelegate:v1];
  [v17 setObscuresBackgroundDuringPresentation:0];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = &v17[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler];
  v20 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButtonHandler];
  *v19 = sub_2B4904;
  v19[1] = v18;
  v21 = v1;
  sub_F704(v20);
  v22 = [v21 navigationItem];
  [v22 setLargeTitleDisplayMode:3];

  v23 = [v21 navigationItem];
  [v23 setSearchController:v17];

  v24 = [v21 navigationItem];
  [v24 setPreferredSearchBarPlacement:2];

  v25 = [v21 navigationItem];
  [v25 setHidesSearchBarWhenScrolling:0];

  [v21 setDefinesPresentationContext:1];
  sub_1E9BCC();
  result = [v21 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v26 = result;
  sub_BE70(0, &qword_93E540);
  v27 = sub_76A000();
  [v26 setBackgroundColor:v27];

  result = [v21 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v28 = result;
  v38 = 0u;
  v39 = 0u;
  v29 = v35;
  sub_768C20();
  sub_10A2C(&v38, &unk_93FBD0);
  sub_769E70();

  result = (*(v36 + 8))(v29, v37);
  v30 = v21[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding];
  v21[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding] = 1;
  if (v30 == 1)
  {
    return result;
  }

  v31 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController];
  [v21 addChildViewController:v31];
  result = [v21 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v32 = result;
  result = [v31 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v33 = result;
  [v32 addSubview:result];

  return [v31 didMoveToParentViewController:v21];
}

uint64_t sub_2AE090(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  v4 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController] + OBJC_IVAR____TtC18ASMessagesProvider16SearchController_searchTextInput);
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchTextInput];
  *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchTextInput] = v4;
  v6 = v4;

  if (v4)
  {
    v4 = type metadata accessor for SearchTextInputSourceTextField();
    v7 = sub_2B4884(&qword_94DCD8, type metadata accessor for SearchTextInputSourceTextField);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(&v11 + 1) = 0;
    *&v12 = 0;
  }

  *&v11 = v6;
  *(&v12 + 1) = v4;
  v13 = v7;
  result = sub_75E600();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_pendingSearchAction;
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_pendingSearchAction])
  {
    v11 = 0u;
    v12 = 0u;

    sub_2B0238(v10);

    sub_10A2C(&v11, &unk_93FBD0);
    *&v2[v9] = 0;
  }

  return result;
}

id sub_2AE2A4(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v7, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  if ([a1 horizontalSizeClass] == &dword_0 + 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] willTransitionToTraitCollection:a1 withTransitionCoordinator:a2];
}

void sub_2AE3D4(void *a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] traitCollectionDidChange:a1];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController];
  v5 = [v4 traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (a1 && v6 == [a1 horizontalSizeClass])
  {

LABEL_7:
    v12 = [a1 preferredContentSizeCategory];
    goto LABEL_11;
  }

  v7 = sub_7699B0();
  v8 = sub_1E9B04();
  [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
  v10 = v9;

  v11 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (v10 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [*&v4[OBJC_IVAR____TtC18ASMessagesProvider16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:v11];

    if (a1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  [*&v4[OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v11 = v13 + 15.0;
  if (v11 != v10)
  {
    goto LABEL_9;
  }

LABEL_6:

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!v12)
  {

LABEL_17:
    sub_6B7B5C();
    return;
  }

  v16 = sub_769240();
  v18 = v17;
  if (v16 == sub_769240() && v18 == v19)
  {

    return;
  }

  v20 = sub_76A950();

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void sub_2AE7EC()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController();
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame:{v18, v20, v22, v24}];
    sub_6B7B5C();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2AE9B8()
{
  v1 = sub_BD88(&unk_947440);
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = &v11 - v2;
  v12 = sub_BD88(&unk_94DCB0);
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - v4;
  v11 = v0;
  sub_75E2F0();
  v6 = sub_BE70(0, &qword_940340);
  v7 = sub_769970();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v7;
  sub_BD88(&unk_947470);
  type metadata accessor for SearchViewController();
  sub_16194(&unk_94DCC0, &unk_947470);
  sub_768720();

  (*(v3 + 8))(v5, v12);
  sub_BEB8(v16);
  sub_75E2A0();
  v8 = sub_769970();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v8;
  sub_BD88(&qword_947480);
  sub_16194(&qword_94DCD0, &qword_947480);
  v9 = v13;
  sub_768720();

  (*(v14 + 8))(v9, v15);
  return sub_BEB8(v16);
}

id sub_2AECD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&qword_947488);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController);
  sub_75E2C0();
  v7 = sub_758DD0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_10A2C(v5, &qword_947488);
  return [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider16SearchController_filterButton) setEnabled:v8];
}

id (*sub_2AEDE4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_2B4794;
}

uint64_t sub_2AEE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph);
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

uint64_t (*sub_2AEF98(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2B478C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_169090;
}

void sub_2AF028(void *a1)
{
  v2 = v1;
  v4 = sub_758B40();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_75F340();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_760280();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7687B0();
  __chkstk_darwin(v8 - 8);
  v60[2] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&unk_944FF0);
  __chkstk_darwin(v10 - 8);
  v71 = v60 - v11;
  v12 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = sub_765490();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v18 - 8);
  v20 = v60 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetsPresenter);
  v22 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph);
  v23 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v24 = sub_6F3850(v21, 1, v22);

  v25 = v22;

  *&v24[OBJC_IVAR____TtC18ASMessagesProvider24PageFacetsViewController_delegate + 8] = &off_88BA48;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(UINavigationController);
  v72 = v24;
  v27 = [v26 initWithRootViewController:v24];
  v28 = [v27 navigationBar];
  [v28 setPrefersLargeTitles:0];

  v29 = v27;
  [v29 setModalPresentationStyle:7];
  v30 = [v29 presentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setDelegate:v2];
  }

  v32 = [v29 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 setSourceView:a1];
  }

  v73 = v2;
  v34 = [v29 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setPermittedArrowDirections:1];
  }

  v36 = [v29 popoverPresentationController];

  if (v36)
  {
    v37 = [a1 titleLabel];
    if (v37)
    {
      v38 = v37;
      [v37 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = v46;
      v48 = v44;
      v49 = v42;
      v50 = v40;
    }

    else
    {
      [a1 bounds];
    }

    MidX = CGRectGetMidX(*&v50);
    [a1 bounds];
    [v36 setSourceRect:{MidX, CGRectGetMaxY(v79), 10.0, 10.0}];
  }

  v52 = sub_BD88(&unk_93F630);
  sub_768860();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v20, 1, v52) == 1)
  {
    sub_10A2C(v20, &unk_93F980);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v54 = *(v15 + 104);
    v60[1] = v17;
    v54(v17, enum case for FlowPage.viewController(_:), v14);
    v55 = sub_7570A0();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v56 = sub_759E30();
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v75 = sub_BE70(0, &unk_94DCA0);
    v74 = v29;
    v57 = v29;
    v60[0] = v25;
    sub_768790();
    (*(v61 + 104))(v62, enum case for FlowPresentationContext.infer(_:), v63);
    (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
    (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v58 = sub_758AD0();
    sub_32AC14(v58, 1, v60[0], v20);

    (*(v53 + 8))(v20, v52);
  }

  v59 = *(v73 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
  *(v73 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = v29;
}

void sub_2AF964(void *a1)
{
  v2 = [a1 searchResultsController];
  if (!v2)
  {
    return;
  }

  v7 = v2;
  [v1 addChildViewController:?];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v7 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v7 didMoveToParentViewController:v1];
}

void sub_2AFAC4(void *a1)
{
  sub_6B8034();
  v2 = [a1 searchResultsController];
  if (v2)
  {
    v5 = v2;
    [v2 willMoveToParentViewController:0];
    v3 = [v5 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2AFCD0(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = sub_BD88(&unk_93F980);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = a1(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph);
      v10 = sub_BD88(&unk_93F630);
      sub_768860();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_10A2C(v5, &unk_93F980);
      }

      else
      {
        sub_32A6C0(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }
}

void sub_2AFE84(void *a1)
{
  v2 = v1;
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (!v5)
  {
LABEL_8:
    if ([a1 isActive] && *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController))
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    sub_5D6BC4(v11);
    sub_75E310();
    v12 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
    *(v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
    if (v12)
    {
      v13 = [v12 presentingViewController];
      if (v13)
      {
        v14 = v13;
        [v13 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_17;
  }

  v6 = sub_769240();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = sub_5D63A0(v6, v8);

  if (v10)
  {
    return;
  }

  sub_5D6BC4(1);
  sub_75E310();
LABEL_17:

  sub_2AC99C(0);
}

uint64_t sub_2B0098()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection) == 2 && *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsViewController))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B00FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection))
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v2 && (sub_BE70(0, &qword_94DC90), v3 = v2, sub_BD88(&qword_94DC98), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v9 + 1))
      {
        sub_10914(&v8, v11);
        v4 = v12;
        v5 = v13;
        sub_B170(v11, v12);
        v6 = (*(v5 + 8))(v4, v5);
        sub_BEB8(v11);
        return v6;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_10A2C(&v8, &qword_94DC88);
  }

  return 0;
}

void sub_2B0238(uint64_t a1)
{
  v3 = sub_759F30();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v19 - v9;
  if ([v1 isViewLoaded])
  {
    sub_759EF0();
    (*(v4 + 104))(v6, enum case for SearchOrigin.tabBar(_:), v3);
    sub_2B4884(&qword_94DC80, &type metadata accessor for SearchOrigin);
    sub_769430();
    sub_769430();
    if (v19[2] == v19[0] && v19[3] == v19[1])
    {
      v11 = *(v4 + 8);
      v11(v6, v3);
      v11(v10, v3);

LABEL_9:
      sub_2B4034();
      return;
    }

    v12 = sub_76A950();
    v13 = *(v4 + 8);
    v13(v6, v3);
    v13(v10, v3);

    if (v12)
    {
      goto LABEL_9;
    }

    v14 = sub_759EC0();
    if (!v15)
    {
      goto LABEL_16;
    }

    v16 = v14;
    v17 = v15;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v16 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      sub_2B0950(a1);
    }

    else
    {
LABEL_16:
      sub_2B0514(0);
    }
  }

  else
  {
    *&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_pendingSearchAction] = a1;
  }
}

uint64_t sub_2B0514(char a1)
{
  v3 = sub_768380();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7683C0();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController);
  v11 = [v10 searchBar];
  [v11 becomeFirstResponder];

  sub_BE70(0, &qword_940340);
  v12 = sub_769970();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  aBlock[4] = sub_2B4780;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88BC98;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2B4884(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v17);
}

void sub_2B0844(void *a1, char a2)
{
  [a1 setActive:1];
  v4 = [a1 searchBar];
  v5 = v4;
  if (a2)
  {
    v7 = [v4 searchField];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 selectAll];
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      return;
    }

    v7 = [a1 searchBar];
    [v7 becomeFirstResponder];
  }
}

uint64_t sub_2B0950(uint64_t a1)
{
  v2 = v1;
  v4 = sub_768380();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7683C0();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2AC99C(0);
  v10 = [*&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController] searchBar];
  [v10 resignFirstResponder];

  sub_BE70(0, &qword_940340);
  v11 = sub_769970();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_2B4740;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88BC48;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2B4884(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

uint64_t sub_2B0C8C(char *a1, uint64_t a2)
{
  sub_5D5B2C(a2);
  sub_5D6BC4(2);
  v3 = [a1 navigationController];
  v4 = [v3 topViewController];

  if (!v4 || (sub_BE70(0, &qword_9434E0), v5 = a1, v6 = sub_76A1C0(), v4, v5, (v6 & 1) == 0))
  {
    v7 = [a1 navigationController];
    if (v7)
    {
      v8 = v7;
    }
  }

  v9 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController];
  v10 = [v9 searchBar];
  sub_759EC0();
  if (v11)
  {
    v12 = sub_769210();
  }

  else
  {
    v12 = 0;
  }

  [v10 setText:v12];

  [v9 setActive:1];
  *&a1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_pendingSearchAction] = 0;
}

void sub_2B0E34(uint64_t a1)
{
  v3 = sub_768380();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7683C0();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7622B0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController) isActive] && *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    v19 = v4;
    v20 = v1;
    sub_2B4884(&qword_94DC68, &type metadata accessor for GuidedSearchTokenCollection);
    sub_7696C0();
    sub_7696F0();
    if (aBlock[0] == aBlock[6])
    {
      sub_2AD368();
    }

    else
    {
      sub_2ACF78();
      sub_BE70(0, &qword_940340);
      v18 = sub_769970();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_2B4688;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23F0CC;
      aBlock[3] = &unk_88BBF8;
      v16 = _Block_copy(aBlock);

      sub_7683A0();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_2B4884(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
      sub_BD88(&qword_940350);
      sub_16194(&qword_9406F0, &qword_940350);
      sub_76A5A0();
      v17 = v18;
      sub_769980();
      _Block_release(v16);

      (*(v19 + 8))(v6, v3);
      (*(v21 + 8))(v9, v22);
    }
  }
}

void sub_2B12C8(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_7622B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = sub_2B00FC();

  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_8;
  }

  sub_75F520();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_75F4F0();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_2AC6BC();

  (*(v7 + 16))(v9, a2, v6);
  sub_2B4884(&unk_94DC70, &type metadata accessor for GuidedSearchTokenCollection);
  v18 = sub_769420();
  v19 = sub_140F24(v18);

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_guidedSearchContainerImpressionMetrics;
    v22 = v20;
    swift_beginAccess();
    sub_1ED18(v22 + v21, v5, &unk_93FF30);
  }

  else
  {
    v23 = sub_768AB0();
    (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  }

  sub_1ACA04(v14, v19, v5);
  swift_unknownObjectRelease();

  sub_10A2C(v5, &unk_93FF30);
LABEL_11:
  swift_beginAccess();
  v24 = swift_unknownObjectWeakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_2AC6BC();

    sub_6A398C();
  }
}

char *sub_2B1660(unint64_t a1)
{
  v2 = sub_BD88(&qword_945020);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_758880();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v33 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v35 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
    if (v35)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v35 = sub_76A860();
  if (!v35)
  {
    return 0;
  }

LABEL_3:
  if (v35 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_76A860();
    v21 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v26 = v8;
  v9 = 0;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph;
  v10 = v36 & 0xC000000000000001;
  v11 = (v6 + 48);
  v28 = (v6 + 8);
  v29 = (v6 + 32);
  v32 = v36 & 0xC000000000000001;
  v30 = (v6 + 48);
  v27 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_76A770();
    }

    else
    {
      v12 = *(v36 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v34 = v14;
      sub_1ED18(v14 + qword_99DB70, v4, &qword_945020);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10A2C(v4, &qword_945020);
      }

      else
      {
        v15 = v33;
        (*v29)(v33, v4, v5);
        sub_763730();
        sub_768900();
        sub_768ED0();
        v16 = v37;
        v4 = v27;
        v11 = v30;
        sub_763720();

        v17 = v15;
        v10 = v32;
        (*v28)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v35 != v9);
  if (!v26)
  {
    result = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
    if (result != &dword_0 + 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_76A860();
  if (result == &dword_0 + 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_76A770();
    }

    if (!*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_37;
    }

    return *(v36 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_BD88(&qword_963AA0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_9583D8] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_9583E0] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_9583E8] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_9583F0] = 0;
  [v6 setNeedsLayout];
  sub_BD88(&qword_94DC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  *(inited + 32) = v36;

  v8 = sub_3CFB24(inited);
  swift_setDeallocating();
  result = sub_10A2C(inited + 32, &unk_945390);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v21 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v23 = sub_76A770();
      }

      else
      {
        v23 = *(v8 + 8 * i + 32);
      }

      v24 = v23;
      [v6 addSubview:{v23, v26}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_2B1BB4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph];
  v5 = v3;

  v6 = sub_2B2BC4(v2, v5, 0, v4);

  v27 = sub_2B1660(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_2B2BC4(v8, v10, 1u, v4);

  v12 = sub_2B1660(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v27}];

  v14 = [v0 navigationItem];
  v15 = *&v0[v1];

  v16 = [v0 traitCollection];

  v17 = v16;
  v18 = sub_2B2BC4(v15, v17, 2u, v4);

  v19 = sub_2B1660(v18);

  if (v19)
  {
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v19];
  }

  else
  {
    v20 = 0;
  }

  [v14 setRightBarButtonItem:v20];

  v21 = [v0 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setHidesSharedBackground:1];
  }

  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController];
  v24 = [v0 traitCollection];
  v25 = sub_7699D0();

  v26 = *(v23 + qword_99E1F0);
  *(v23 + qword_99E1F0) = v25 & 1;
  sub_2B2818(v26);
}

uint64_t sub_2B1EF4()
{
  v1 = v0;
  v2 = sub_768380();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7683C0();
  v5 = *(v15 - 8);
  *&v6 = __chkstk_darwin(v15).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController] searchBar];
  [v9 resignFirstResponder];

  sub_BE70(0, &qword_940340);
  v10 = sub_769970();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_2B4554;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_88BB80;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_2B4884(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350);
  sub_16194(&qword_9406F0, &qword_940350);
  sub_76A5A0();
  sub_769980();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v15);
}

id sub_2B224C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchViewController()
{
  result = qword_94DBD8;
  if (!qword_94DBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2B2424()
{
  sub_1ACF18();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2B2568(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_61B4C(a1, v4);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    result = *v4;
    if (*v4)
    {

      return 1;
    }
  }

  else
  {
    sub_61BB0(v4);
    return 0;
  }

  return result;
}

uint64_t sub_2B2664(uint64_t a1)
{
  v3 = sub_BD88(&unk_93FF30);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_1ED18(a1, &v8 - v4, &unk_93FF30);
  v6 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_guidedSearchContainerImpressionMetrics;
  swift_beginAccess();
  sub_2B27A8(v5, v1 + v6);
  return swift_endAccess();
}

id sub_2B2738(id result)
{
  if (!result)
  {
    sub_2AD87C(&dword_0 + 1);
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController);

    return [v2 setShowsSearchResultsController:0];
  }

  return result;
}

uint64_t sub_2B27A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B2818(uint64_t result)
{
  v2 = qword_99E1F0;
  v3 = *(v1 + qword_99E1F0);
  if (v3 != (result & 1))
  {
    v4 = qword_9593E8;
    if ((v3 & 1) != 0 && !*(v1 + qword_9593E8))
    {
      type metadata accessor for BarButtonItemHidingScrollObserver();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v1 + v4) = v6;
      *(v6 + 24) = 0;
      sub_2B4884(&qword_94DC48, type metadata accessor for BarButtonItemHidingScrollObserver);

      sub_75FA40();

      v5 = *(v1 + qword_9593E8);
      if (!v5)
      {
        return result;
      }
    }

    else
    {
      v5 = *(v1 + qword_9593E8);
      if (!v5)
      {
        return result;
      }
    }

    *(v5 + 24) = *(v1 + v2);

    sub_3CF6FC();
  }

  return result;
}

char *sub_2B2958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = sub_764360();
  v13[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v13[0] = a2;
  sub_134D8(v13, v12);
  sub_7635F0();
  swift_allocObject();

  v5 = sub_7635E0();
  v6 = sub_2B4884(&unk_94DC30, &type metadata accessor for SearchFocusDiffablePagePresenter);
  sub_BD88(&qword_94DC10);
  sub_7684B0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77B6D0;
  sub_7634F0();
  sub_134D8(v13, v12);
  swift_allocObject();

  v12[0] = sub_7634D0();
  sub_768490();
  v8 = sub_6A0B30(a3, v5, v6, v7, 0x6F46686372616573, 0xEF65676150737563);

  v9 = objc_allocWithZone(type metadata accessor for SearchFocusDiffablePageViewController());
  v10 = sub_602134(v5, v8);
  sub_BEB8(v13);
  return v10;
}

void *sub_2B2BC4(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v4 = *(&dword_10 + (isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8));
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = _swiftEmptyArrayStorage;
    v7 = &unk_945390;
    v31 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A770();
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v33 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      v10 = _swiftEmptyArrayStorage;
      if ((*(v8 + 16))(a2) == a3)
      {
        v10 = sub_4E28F8(a4);
      }

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_76A860() : *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_42;
      }

LABEL_15:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_76A860();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *(&dword_18 + (v6 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v40 = v6;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_76A780();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_76A860();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_46;
          }

          v20 = v15 + 8 * v16 + 32;
          v38 = v5;
          v32 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            sub_16194(&qword_94DC50, v7);
            v21 = v7;
            for (i = 0; i != v18; ++i)
            {
              sub_BD88(v7);
              v23 = sub_10B534(v39, i, v10);
              v25 = *v24;
              (v23)(v39, 0);
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_BE70(0, &qword_93E550);
            swift_arrayInitWithCopy();
            v21 = v7;
          }

          v4 = v31;
          v7 = v21;
          v5 = v38;
          v6 = v40;
          if (v12 >= 1)
          {
            v26 = *(v32 + 16);
            v9 = __OFADD__(v26, v12);
            v27 = v26 + v12;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v6 = v40;
      if (v12 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_76A860();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_76A860();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_2B2F84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41[1] = ObjectType;
  v7 = sub_BD88(&qword_94DBE8);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v41 - v8;
  v9 = sub_BD88(&qword_94DBF0);
  v43 = *(v9 - 8);
  *&v44 = v9;
  __chkstk_darwin(v9);
  v42 = v41 - v10;
  v11 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v12 + 50) = 0u;
  *(v12 + 40) = 0u;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___resultsMessageView] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchTextInput] = 0;
  v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController] = 0;
  *(v12 + 24) = 0u;
  v13 = &v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_pendingSearchAction] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_guidedSearchContainerImpressionMetrics;
  v15 = sub_768AB0();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_prefersLargeTitle] = 0;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetsPresenter] = a1;
  sub_75A920();

  sub_768880();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_bag] = v50[0];

  sub_75A7E0();
  v17 = v16;

  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_paletteImpressionableThreshold] = v17;
  sub_75F3B0();
  sub_768880();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_guidedSearchPresenter] = v50[0];
  sub_762E40();
  sub_7688F0();
  sub_75E630();
  swift_allocObject();
  v18 = sub_75E620();
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchTextPresenter] = v18;
  v19 = objc_allocWithZone(type metadata accessor for SearchResultsContainerViewController());

  v20 = sub_5D6934(a1, v18, a2);

  v21 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController;
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] = v20;
  v22 = [objc_allocWithZone(type metadata accessor for SearchController()) initWithSearchResultsController:v20];
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController] = v22;
  [v22 setShowsSearchResultsController:0];
  v23 = sub_764360();
  swift_allocObject();
  v24 = sub_764350();
  v50[3] = v23;
  v50[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v50[0] = v24;
  sub_134D8(v50, v49);
  sub_763920();
  swift_allocObject();

  v25 = sub_763910();
  sub_763900();
  v26 = *&v3[v21];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = ObjectType;
  sub_BD88(&qword_94DBF8);
  sub_16194(&qword_94DC00, &qword_94DBF8);

  v28 = v26;
  sub_768710();
  v29 = v42;
  sub_768730();

  sub_BEB8(v49);
  (*(v43 + 8))(v29, v44);
  v30 = sub_2B4884(&qword_94DC08, &type metadata accessor for SearchLandingDiffablePagePresenter);
  sub_BD88(&qword_94DC10);
  sub_7684B0();
  v31 = swift_allocObject();
  v44 = xmmword_77B6D0;
  *(v31 + 16) = xmmword_77B6D0;
  sub_7634F0();
  sub_134D8(v50, v49);
  swift_allocObject();
  swift_retain_n();
  v49[0] = sub_7634D0();
  sub_768490();
  v32 = sub_6A0B30(a2, v25, v30, v31, 0xD000000000000011, 0x80000000007D8D60);

  v33 = objc_allocWithZone(type metadata accessor for SearchLandingDiffablePageViewController());
  *&v3[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController] = sub_11AE8(v25, v32);
  v34 = type metadata accessor for SearchViewController();
  v48.receiver = v3;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v36 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController;
  *(*&v35[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchResultsDelegate + 8) = &off_88BA80;
  swift_unknownObjectWeakAssign();
  *(*&v35[v36] + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_delegate + 8) = &off_88BA58;
  swift_unknownObjectWeakAssign();
  *(*&v35[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController] + qword_999F00 + 8) = &off_88BA70;
  swift_unknownObjectWeakAssign();
  v37 = v35;

  sub_75F390();

  sub_BD88(&qword_94DC18);
  sub_16194(&unk_94DC20, &qword_94DC18);
  sub_768710();
  v38 = v45;
  sub_768720();

  sub_BEB8(v49);
  (*(v46 + 8))(v38, v47);
  sub_BD88(&qword_9477F0);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  *(v39 + 32) = sub_767890();
  *(v39 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769900();

  swift_unknownObjectRelease();

  sub_BEB8(v50);
  return v37;
}

uint64_t sub_2B3898(uint64_t a1, uint64_t a2)
{
  sub_BD88(&unk_93F5C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77D9F0;
  sub_BD88(&qword_94DC40);
  v5 = *(type metadata accessor for Accessory() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_77B6D0;
  v8 = (v7 + v6);
  v9 = *(sub_BD88(&qword_942CC8) + 48);
  *v8 = 1;
  sub_1ED18(a2, &v8[v9], &qword_945020);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_10D37C(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_A29A8;
  v11[3] = v10;
  sub_4E28F8(a1);

  *(v4 + 32) = v11;
  return v4;
}

id sub_2B3A54(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchController];
  v5 = [v4 searchBar];
  v6 = v5;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      [v5 _setDisableDictationButton:1];

      v24 = v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding];
      v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding] = 0;
      if (v24)
      {
        v25 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController];
        [v25 willMoveToParentViewController:0];
        result = [v25 view];
        if (!result)
        {
LABEL_41:
          __break(1u);
          return result;
        }

        v26 = result;
        [result removeFromSuperview];

        [v25 removeFromParentViewController];
      }

      [v4 setShowsSearchResultsController:1];
      v27 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v27)
      {
        v27 = [v27 collectionView];
      }

      v7 = v27;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    [v5 _setDisableDictationButton:1];

    v10 = v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding] = 0;
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController];
      [v11 willMoveToParentViewController:0];
      result = [v11 view];
      if (!result)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = result;
      [result removeFromSuperview];

      [v11 removeFromParentViewController];
    }

    [v4 setShowsSearchResultsController:1];
    v14 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v14)
    {
      v14 = [v14 collectionView];
    }

    v7 = v14;
    v15 = [v2 navigationItem];
    v16 = [v2 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      v19 = [v18 standardAppearance];
    }

    else
    {
      v19 = 0;
    }

    [v15 setScrollEdgeAppearance:v19];

    goto LABEL_31;
  }

  if (a1)
  {
    [v5 _setDisableDictationButton:0];

    v20 = v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding] = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController];
    [v21 willMoveToParentViewController:0];
    result = [v21 view];
    if (result)
    {
      v22 = result;
      [result removeFromSuperview];

      [v21 removeFromParentViewController];
LABEL_16:
      [v4 setShowsSearchResultsController:1];
      v23 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v23)
      {
        v23 = [v23 collectionView];
      }

      v7 = v23;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_27:
      v30 = 0;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  [v5 _setDisableDictationButton:0];

  v7 = [*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchLandingViewController] collectionView];
  v8 = [v2 navigationItem];
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  v28 = v9;
  v29 = [v9 navigationBar];

  v30 = [v29 scrollEdgeAppearance];
LABEL_28:
  [v8 setScrollEdgeAppearance:v30];

  sub_2AD368();
LABEL_31:
  v31 = [v2 navigationItem];
  sub_27CCF4();

  [v2 setContentScrollView:v7 forEdge:15];
  v32 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v32)
  {
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = &v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController];
  *v35 = v32;
  v35[1] = v33;

  return swift_unknownObjectRelease();
}