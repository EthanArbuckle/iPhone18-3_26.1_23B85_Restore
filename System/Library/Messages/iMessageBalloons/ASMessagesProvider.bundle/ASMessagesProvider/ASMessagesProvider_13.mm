void sub_17E4C8()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButton) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_gradientBlurView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupContainerView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupTapGestureRecognizer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_includeBorderInDarkMode) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_notifyMeButtonPresenter) = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_17E5B4(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  [v2 bounds];
  v13.x = v4;
  v13.y = v6;
  if (CGRectContainsPoint(v14, v13))
  {
    if (!v7)
    {
      return *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction] != 0;
    }

    sub_BE70(0, &qword_93E550);
    v8 = v7;
    v9 = v2;
    v10 = sub_76A1C0();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    return !v12 && *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupViewTappedAction] != 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_17E73C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  if (*a1 != -1)
  {
    swift_once();
    v4 = a3;
  }

  return sub_BE140(a2, v4);
}

char *sub_17E84C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = v0;
    v6 = (*(ObjectType + 160))();
    v7 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v8 = sub_30712C(v6);
    v9 = *(v0 + v1);
    *(v5 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_17E8E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView);
  v2 = [v0 traitCollection];
  [v0 bounds];
  v4.n128_u64[0] = v3;
  v6.n128_u64[0] = v5;
  v7 = (*(&stru_108.reloff + (swift_isaMask & *v0)))(v2, v4, v6);
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

void sub_17EA68()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView);
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView);
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView);
  [v1 bounds];
  [v5 setFrame:?];
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer);
  [v1 bounds];
  [v6 setFrame:?];
  v7 = sub_17E84C();
  [v1 bounds];
  [v7 setFrame:?];

  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView);
  if (v8)
  {
    v9 = v8;
    v10 = *(sub_765960() + 16);

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

    sub_7659A0();
    v37 = v25 * 0.866 + v23 * 0.5 * 0.5;
    CGAffineTransformMakeRotation(&v39, 1.04719755);
    b = v39.b;
    c = v39.c;
    a = v39.a;
    d = v39.d;
    ty = v39.ty;
    tx = v39.tx;
    [v3 bounds];
    sub_7697A0();
    sub_769D50();
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
    v32 = sub_7659B0();
    v34.n128_u64[0] = v33;
    (*&stru_158.sectname[swift_isaMask & *v1])(v32, v31, v37, v34);
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

uint64_t sub_17EDF0(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_7652D0();
  __chkstk_darwin(v7 - 8);
  v137 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765240();
  v134 = *(v9 - 8);
  v135 = v9;
  __chkstk_darwin(v9);
  v133 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v132 = &v132 - v12;
  v13 = sub_BD88(&unk_94AC40);
  __chkstk_darwin(v13 - 8);
  v146 = &v132 - v14;
  v15 = sub_BD88(&unk_9457D0);
  __chkstk_darwin(v15 - 8);
  v145 = &v132 - v16;
  v17 = sub_BD88(&unk_9457E0);
  __chkstk_darwin(v17 - 8);
  v144 = &v132 - v18;
  v19 = sub_BD88(&unk_94A780);
  __chkstk_darwin(v19 - 8);
  v143 = &v132 - v20;
  v21 = sub_BD88(&unk_944E00);
  __chkstk_darwin(v21 - 8);
  v141 = &v132 - v22;
  v23 = sub_763750();
  v139 = *(v23 - 8);
  __chkstk_darwin(v23);
  v140 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_BD88(&unk_948730);
  __chkstk_darwin(v25 - 8);
  v142 = &v132 - v26;
  v27 = sub_75C100();
  v151 = *(v27 - 8);
  v152 = v27;
  __chkstk_darwin(v27);
  v29 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v150 = &v132 - v31;
  sub_75A110();
  sub_768900();
  v148 = a2;
  sub_768ED0();
  v153 = v156[0];
  type metadata accessor for MediumDiagonalRiverCardDataSource();
  v32 = swift_allocObject();
  *(v32 + 16) = 0u;
  *(v32 + 32) = 0u;
  *(v32 + 48) = 0;
  *(v32 + 56) = 5;
  v149 = v32;
  v154 = a1;
  sub_763F80();
  v34 = v33;
  v35 = ObjectType + 184;
  v36 = *(ObjectType + 184);
  v36();
  v136 = ObjectType;
  v36();
  if (v34)
  {
    sub_75C070();
  }

  sub_75C0A0();
  v37 = v150;
  sub_75C0E0();
  (*(v151 + 16))(v29, v37, v152);
  v38 = sub_BD88(&qword_947AC0);
  v39 = objc_allocWithZone(v38);

  v40 = sub_765950();
  [v40 setHidden:0];
  v41 = v154;
  v42 = sub_763F90();
  if (v42 >> 62)
  {
    v41 = v42;
    v44 = sub_76A860();
    v42 = v41;
    if (v44)
    {
      goto LABEL_5;
    }

LABEL_10:

    v43 = 0;
    goto LABEL_11;
  }

  if (!*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v43 = sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v42 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_57:
      swift_once();
LABEL_30:
      v86 = sub_7666D0();
      v87 = sub_BE38(v86, qword_99E7E8);
      v88 = *(v86 - 8);
      v89 = v132;
      (*(v88 + 16))(v132, v87, v86);
      (*(v88 + 56))(v89, 0, 1, v86);
      sub_75BA40();

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
  *(sub_765960() + 24) = v153;

  *(sub_765960() + 48) = v148;

  *(sub_765960() + 16) = v43;
  v147 = v43;

  sub_765990();
  [v40 setHidden:0];
  v45 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView;
  v155 = v3;
  v46 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView];
  if (v46)
  {
    v47 = v40;
    v48 = v46;
    v49 = v47;
    v50 = v48;
    LOBYTE(v47) = sub_76A1C0();

    if ((v47 & 1) == 0)
    {
      sub_7659D0();
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
    v59 = sub_76A1C0();

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

  [*&v60[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] addSubview:v55];

LABEL_25:
  v38 = *&v60[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView];
  [*(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
  v62 = sub_763FC0();
  v63 = v139;
  v64 = *(v139 + 104);
  v64(v140, enum case for OfferButtonPresenterViewAlignment.right(_:), v23);
  v65 = v141;
  v64(v141, enum case for OfferButtonPresenterViewAlignment.left(_:), v23);
  (*(v63 + 56))(v65, 0, 1, v23);
  sub_182444(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v66 = v142;
  sub_760940();
  v67 = sub_BD88(&unk_948740);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = sub_758C70();
  v69 = v143;
  (*(*(v68 - 8) + 56))(v143, 1, 1, v68);
  v70 = sub_75BD30();
  v71 = v144;
  (*(*(v70 - 8) + 56))(v144, 1, 1, v70);
  v72 = sub_765870();
  v73 = v145;
  (*(*(v72 - 8) + 56))(v145, 1, 1, v72);
  v74 = sub_BD88(&unk_9457F0);
  v75 = v146;
  (*(*(v74 - 8) + 56))(v146, 1, 1, v74);
  sub_4A18A4(v62, v38, v66, v148, 0, 0, v69, v71, v73, v75);
  *(v38 + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_enforceMaximumOfTwoLinesOverall) = 1;
  sub_BD3C0();
  [(objc_class *)v38 setNeedsLayout];
  sub_BD3C0();

  sub_10A2C(v75, &unk_94AC40);
  sub_10A2C(v73, &unk_9457D0);
  sub_10A2C(v71, &unk_9457E0);
  sub_10A2C(v69, &unk_94A780);
  sub_10A2C(v66, &unk_948730);
  v76 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v76)
  {
    v77 = objc_opt_self();
    v78 = v76;
    v79 = [v77 whiteColor];
    [v78 setTextColor:v79];
  }

  v35 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel;
  v80 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v80)
  {
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 whiteColor];
    [v82 setTextColor:v83];

    v84 = *(v38 + v35);
    if (v84)
    {
      v85 = qword_93D548;
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

  v91 = sub_7596A0();

  if (!(v91 >> 62))
  {
    result = *(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_35;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = sub_76A860();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_35:
  if ((v91 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v91 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }
  }

  v93 = sub_7651A0();

  if (v93)
  {
    v94 = sub_76A0E0();

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
  v96 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v97 = *(v38 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v98 = objc_opt_self();
  v99 = v97;
  v100 = [v98 systemGray5Color];
  v101 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v95];
  v102 = [v100 resolvedColorWithTraitCollection:v101];

  v103 = [v102 colorWithAlphaComponent:0.35];
  sub_759070();

  sub_763FC0();
  v104 = sub_764EE0();

  if (v104)
  {
    (*(v136 + 168))(v156, v105);
    sub_BE0EC(v156);
    v106 = v133;
    sub_765250();
    sub_765210();
    (*(v134 + 8))(v106, v135);
    sub_765330();
    v107 = *(v38 + v96);
    sub_7652E0();
    sub_7591B0();
    [v107 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_396E8();
      sub_76A030();
    }

    sub_759070();

    [*(v38 + v96) setContentMode:1];
    v108 = *(v38 + v96);
    sub_759210();
    sub_182444(&qword_945810, &type metadata accessor for ArtworkView);
    v109 = v108;
    sub_75A050();
  }

  v110 = sub_763FA0();
  if (v110)
  {
    v111 = v110;
    v112 = sub_763FB0();
    v113 = v155;
    v114 = *&v155[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView];
    if (v112)
    {
      v115 = v112;
      [*&v155[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView] setBackgroundColor:v112];
      v116 = [v114 layer];
      [v116 setCompositingFilter:0];

      v117 = *&v113[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_BD88(&unk_93F5C0);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_77B6C0;
      *(v118 + 32) = [v111 colorWithAlphaComponent:0.4];
      *(v118 + 40) = v111;
      *&v117[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v118;
      v119 = v111;

      sub_4AC204();
      sub_4AC060(&off_87DD78);
      v120 = [v117 layer];
      [v120 setCompositingFilter:0];
    }

    else
    {
      v121 = sub_763FA0();
      [v114 setBackgroundColor:v121];

      v122 = [v114 layer];
      [v122 setCompositingFilter:0];

      v123 = *&v155[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView];
      sub_BD88(&unk_93F5C0);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_77B6C0;
      v125 = [v98 whiteColor];
      v126 = [v125 colorWithAlphaComponent:0.4];

      *(v124 + 32) = v126;
      *(v124 + 40) = [v98 clearColor];
      *&v123[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v124;

      sub_4AC204();
      sub_4AC060(&off_87DDA8);
      v113 = v155;
      v115 = [v123 layer];
      v120 = sub_769210();
      [v115 setCompositingFilter:v120];
    }

    v127 = sub_17E84C();
    v128 = v111;
    v129 = sub_308200(v111);
    v131 = v130;

    sub_3068C8(2, v129, v131);

    [v113 setNeedsLayout];

    return (*(v151 + 8))(v150, v152);
  }

  else
  {
    (*(v151 + 8))(v150, v152);
  }
}

uint64_t sub_180178(uint64_t a1)
{
  if (!*(v1 + 16))
  {
    return 0;
  }

  v3 = sub_7596A0();

  if (a1 < 0)
  {
    goto LABEL_10;
  }

  if (v3 >> 62)
  {
    result = sub_76A860();
    if (result > a1)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (result <= a1)
  {
LABEL_10:

    return 0;
  }

LABEL_5:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = sub_76A770();
    goto LABEL_8;
  }

  if (*(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v5 = *(v3 + 8 * a1 + 32);

LABEL_8:

    return v5;
  }

  __break(1u);
  return result;
}

void sub_180250(void *a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = a1;
      if ((sub_7650D0() & 1) != 0 && (v7 = [v6 CGImage]) != 0)
      {
        v8 = v7;
        [v6 scale];
        v10 = [objc_allocWithZone(UIImage) initWithCGImage:v8 scale:2 orientation:v9];
      }

      else
      {
        v10 = v6;
      }

      v11 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView];
      v12 = v10;
      v13 = v11;
      v15.is_nil = (a2 & 1) == 0;
      v15.value.super.isa = v10;
      sub_7591D0(v15, v14);

      v5 = v12;
    }
  }
}

void sub_180388(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
  v5 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  sub_759190();

  if (*(v2 + 24))
  {
    v6 = *(a1 + v4);
    sub_759210();
    sub_182444(&qword_945810, &type metadata accessor for ArtworkView);

    v7 = v6;
    sub_75A0C0();
  }
}

uint64_t sub_180480()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1804F4()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_7596A0();

  if (v1 >> 62)
  {
    v2 = sub_76A860();
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  }

  return v2;
}

uint64_t sub_1805AC(double a1, double a2)
{
  result = swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_180640@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.screenshots(_:);
  v3 = sub_75E5B0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1806B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_180178(a1);
  *a2 = result;
  return result;
}

id sub_1806DC()
{
  type metadata accessor for BorderedScreenshotView();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_180728()
{
  sub_BD88(&unk_93F5C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77B6C0;
  *(v0 + 32) = [objc_allocWithZone(UIColor) initWithRed:0.768627451 green:0.768627451 blue:0.768627451 alpha:1.0];
  result = [objc_allocWithZone(UIColor) initWithRed:0.129411765 green:0.129411765 blue:0.129411765 alpha:1.0];
  *(v0 + 40) = result;
  qword_947978 = v0;
  return result;
}

char *sub_1807DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v10 - 8);
  v12 = v67 - v11 + 16;
  v13 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v14 = type metadata accessor for GradientView();
  *&v4[v13] = [objc_allocWithZone(v14) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *&v4[v17] = [objc_allocWithZone(UIView) init];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *&v4[v18] = [objc_allocWithZone(v14) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v19 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *&v4[v19] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_isMotionEnabled] = 1;
  v20 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  v68.receiver = v4;
  v68.super_class = v20;
  v21 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  [v21 setClipsToBounds:1];
  [v21 _setContinuousCornerRadius:20.0];
  v22 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v23 = qword_93C500;
  v24 = *&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView];
  if (v23 != -1)
  {
    swift_once();
  }

  *&v24[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = qword_947978;

  sub_4AC204();

  [v21 addSubview:*&v21[v22]];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView] setClipsToBounds:1];
  v26 = [*&v21[v25] layer];
  v27 = sub_769210();
  [v26 setCompositingFilter:v27];

  [*&v21[v25] setAlpha:0.75];
  [v21 addSubview:*&v21[v25]];
  v28 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  [*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer] addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView]];
  [*&v21[v28] addSubview:*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView]];
  v29 = [*&v21[v28] layer];
  v30 = sub_769210();
  [v29 setCompositingFilter:v30];

  [v21 addSubview:*&v21[v28]];
  v31 = sub_17E84C();
  [v21 addSubview:v31];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  [*(*&v21[OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v33 = *(ObjectType + 168);
  v34 = *&v21[v32];
  v33(v67);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_125A14(v67, v34 + v35);
  swift_endAccess();

  v36 = *(ObjectType + 176);
  v37 = *&v21[v32];
  v36(v67);
  v38 = OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_125A14(v67, v37 + v38);
  swift_endAccess();

  v39 = qword_93C5A0;
  v40 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_765080();
  v42 = sub_BE38(v41, qword_99B640);
  v43 = *(v41 - 8);
  (*(v43 + 16))(v12, v42, v41);
  (*(v43 + 56))(v12, 0, 1, v41);
  sub_7591C0();

  v44 = *&v21[v32];
  v45 = objc_opt_self();
  v46 = v44;
  sub_3E30CC([v45 whiteColor]);

  v47 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v48 = [v45 whiteColor];
  [v47 setTextColor:v48];

  v49 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  sub_396E8();
  v50 = v49;
  v51 = sub_769FF0();
  v52 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v53 = [v51 resolvedColorWithTraitCollection:v52];

  [v50 setTextColor:v53];
  v54 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerButton);
  v55 = [v45 whiteColor];
  [v54 setTintColor:v55];

  v56 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v57 = [v45 whiteColor];
  [v56 setTextColor:v57];

  v58 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkTitleLabel);
  v59 = [v45 whiteColor];
  [v58 setTextColor:v59];

  v60 = *(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_crossLinkSubtitleLabel);
  v61 = [v45 whiteColor];
  [v60 setTextColor:v61];

  v62 = [*&v21[v32] traitCollection];
  [v62 userInterfaceStyle];

  sub_769240();
  v63 = sub_769210();

  v64 = [*(*&v21[v32] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel) layer];
  [v64 setCompositingFilter:v63];

  [v21 addSubview:*&v21[v32]];
  return v21;
}

void sub_1811B4(uint64_t a1)
{
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return;
  }

  v6 = sub_7596A0();
  if (v6 >> 62)
  {
    v9 = v6;
    v10 = sub_76A860();
    v6 = v9;
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return;
    }
  }

  v7 = sub_7650D0();
  sub_765260();
  sub_7666A0();
  v8 = (v3 + 8);
  if (v7)
  {
    sub_766660();
  }

  else
  {
    sub_766650();
  }

  (*v8)(v5, v2);
}

double sub_18136C(uint64_t a1, void *a2)
{
  v4 = sub_75D850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  v11 = sub_765560();
  v13 = v12;
  v14 = (*(v2 + 168))(v28, v11);
  (*(v2 + 176))(v27, v14);
  (*(v2 + 312))(a2);
  if (sub_769A00())
  {
    v15 = v27;
  }

  else
  {
    v15 = v28;
  }

  sub_BE140(v15, v23);
  if (sub_769A00())
  {
    if (qword_93C440 != -1)
    {
      swift_once();
    }

    v16 = qword_946920;
  }

  else
  {
    if (qword_93C448 != -1)
    {
      swift_once();
    }

    v16 = qword_946938;
  }

  v17 = sub_BE38(v4, v16);
  (*(v5 + 16))(v7, v17, v4);
  (*(v5 + 32))(v10, v7, v4);
  if ((v26 & 1) == 0 && v24 == 0.0 && v25 == 0.0)
  {
    sub_75D800();
    v19 = v18;
    sub_75D800();
    v24 = v19;
    v25 = v20;
    v26 = 0;
  }

  v21 = _s18ASMessagesProvider21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v23, a2, v13);
  (*(v5 + 8))(v10, v4, v21);
  sub_BE0EC(v23);
  sub_BE0EC(v27);
  sub_BE0EC(v28);
  return v13;
}

id sub_181770()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1818C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_763FD0();
  sub_182444(&qword_947AB8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  result = sub_75C750();
  v10 = v39[0];
  if (v39[0])
  {
    v11 = sub_763F90();
    v12 = v11;
    if (v11 >> 62)
    {
      if (sub_76A860())
      {
LABEL_4:
        v34 = a2;
        v35 = v5;
        v36 = v6;
        v37 = v10;
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = v3;
          v14 = sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_27;
          }

          v13 = v3;
          v14 = *(v12 + 32);
        }

        v38 = v14;
        v15 = sub_7596A0();

        swift_getKeyPath();
        sub_75C7B0();

        swift_getKeyPath();
        sub_75C7B0();

        v16 = v39[0];
        sub_18136C(v8, v39[0]);
        v18 = v17;

        v19 = v35;
        v20 = *(v36 + 8);
        v20(v8, v35);
        swift_getKeyPath();
        sub_75C7B0();

        sub_765560();
        v22 = v21;
        v20(v8, v19);
        v23 = [objc_opt_self() mainScreen];
        [v23 bounds];
        v25 = v24;
        v27 = v26;

        (*(v13 + 296))(v38, v25, v27, 0, v18, v22);
        if (v15 >> 62)
        {
          v28 = sub_76A860();
          if (v28)
          {
LABEL_9:
            v39[0] = _swiftEmptyArrayStorage;
            sub_76A7C0();
            if ((v28 & 0x8000000000000000) == 0)
            {
              v29 = 0;
              do
              {
                if ((v15 & 0xC000000000000001) != 0)
                {
                  sub_76A770();
                }

                else
                {
                }

                sub_7650D0();
                ++v29;
                sub_765330();

                sub_76A7A0();
                sub_76A7D0();
                sub_76A7E0();
                sub_76A7B0();
              }

              while (v28 != v29);

              v30 = v39[0];
LABEL_21:
              v40 = v30;
              sub_763FC0();
              v31 = sub_764EE0();

              if (!v31)
              {
LABEL_24:
                v33._rawValue = v30;
                sub_75A070(v33);
              }

              (*(v13 + 176))(v39, v32);
              sub_BE0EC(v39);
              sub_765330();

              sub_769440();
              if (*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v40 & 0xFFFFFFFFFFFFFF8)) >> 1)
              {
LABEL_23:
                sub_769500();

                v30 = v40;
                goto LABEL_24;
              }

LABEL_28:
              sub_7694C0();
              goto LABEL_23;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          v28 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
          if (v28)
          {
            goto LABEL_9;
          }
        }

        v30 = _swiftEmptyArrayStorage;
        goto LABEL_21;
      }
    }

    else if (*(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_181DE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_7652D0();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v7 - 8);
  v9 = &v31[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v2 + 16))
  {

    v10 = sub_759690();
  }

  else
  {
    v10 = 0;
  }

  sub_7596B0();
  sub_6C14C(v10, v9);

  sub_4FDA80(v9);
  swift_beginAccess();
  sub_7650D0();
  sub_765330();
  v11 = OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView;
  v12 = *(a2 + OBJC_IVAR____TtC18ASMessagesProvider22BorderedScreenshotView_artworkView);
  sub_7652E0();
  sub_7591B0();

  v13 = *(a2 + v11);
  [v13 setContentMode:sub_765140()];

  v14 = *(a2 + v11);
  sub_7591F0();

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v15 = sub_7596A0();

  if (!(v15 >> 62))
  {
    result = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = sub_76A860();
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
    sub_76A770();
  }

  else
  {
    if (!*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }
  }

  v17 = sub_7651A0();

  if (!v17)
  {
    goto LABEL_16;
  }

  v18 = sub_76A0E0();

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
  sub_759070();

  if (*(v3 + 24))
  {
    sub_75A110();
    v27 = *(a2 + v11);
    sub_759210();

    v28 = v27;
    sub_75A090();

    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;
    *(v30 + 24) = a1;

    sub_75A040();

    sub_10A2C(v31, &unk_9443A0);
  }
}

uint64_t sub_18225C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_182294()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1822E4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_baseGradientView;
  v2 = type metadata accessor for GradientView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverContainerView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_riverView) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayContainer;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlaySolidView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_joeColorGradientOverlayGradientView;
  *(v0 + v6) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v7 = OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_lockupView;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider43MediumAdLockupWithScreenshotsBackgroundView_isAnimationEnabled) = 1;
  sub_76A840();
  __break(1u);
}

uint64_t sub_182444(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1824D8()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7656C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757BE0();
  sub_182798(&qword_947AC8, &type metadata accessor for InAppPurchaseShowcase);
  result = sub_75C750();
  v9 = v13;
  if (v13)
  {
    v10 = sub_527DE4();
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_490F90(v9, v10);
    if (qword_93D0E0 != -1)
    {
      swift_once();
    }

    v11 = sub_766CA0();
    sub_BE38(v11, qword_954EF0);
    sub_766470();
    sub_766700();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_182798(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1827E4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = sub_7656C0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(v14, v4 + v17, &unk_955AA0);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_1ED18(v4 + v17, v11, &unk_955AA0);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_B33C8(v11, v18 + v19, &unk_955AA0);
  swift_endAccess();
  sub_28026C(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = sub_765A30();
    if (!v22)
    {
      sub_BE70(0, &qword_93E540);
      v22 = sub_76A060();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &unk_90D000;
  if (sub_765A90())
  {
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = sub_769A00();

    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_64285C(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:sub_7697E0()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = sub_765B20();
  sub_75B090();
  sub_BD88(&qword_947B48);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10A2C(&v50, &qword_947B50);
    goto LABEL_17;
  }

  sub_10914(&v50, v54);
  sub_B170(v54, v55);
  v35 = [v5 traitCollection];
  v36 = sub_7618A0();

  if (!v36)
  {
LABEL_16:
    sub_BEB8(v54);
    v24 = &unk_90D000;
LABEL_17:
    v53 = sub_765B20();
    if (swift_dynamicCast())
    {
      sub_10914(&v50, v54);
      sub_B170(v54, v55);
      v41 = [v5 traitCollection];
      v42 = sub_7618B0();

      if (v42)
      {
        sub_B170(v54, v55);
        v43 = sub_761880();
        if (v43)
        {
          v44 = v49;
          sub_184B1C(v42, v43, a1, a2, a3, v49);

          sub_BEB8(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_BEB8(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10A2C(&v50, &qword_947B50);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_B170(v54, v55);
  v37 = sub_761880();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_185FE4(v36, v38, a1, a2, a3, v39);

  sub_BEB8(v54);
  v40 = v39;
  v24 = &unk_90D000;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer);
  sub_4BC2E4(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded)];
  (*(&stru_248.offset + (swift_isaMask & *v5)))(v46);
  sub_184980();
  return [v5 v24[463]];
}

void sub_182EB0(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_BD88(&unk_955AA0);
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
    v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_B33C8(v17, v4 + v19, &unk_955AA0);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_1ED18(v4 + v19, v12, &unk_955AA0);
    v21 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_B33C8(v12, v20 + v21, &unk_955AA0);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_4BDF04(v25);
    *(v20 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory) = v25;
    sub_5020F8();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_28026C(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_64285C(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:sub_7697E0()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_189120(v32);
      v33 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
      sub_4BD964(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_1ED18(v4 + v36, v61, &unk_955AA0);
          v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_6425CC(v40, 0, v37, v39);

          sub_10A2C(v37, &unk_955AA0);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_1ED18(v4 + v43, v62, &unk_955AA0);
      v45 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_501450(v47, 0, v44, v46);

      sub_10A2C(v44, &unk_955AA0);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*(&stru_248.offset + (swift_isaMask & *v4)))();
      [v4 setNeedsLayout];
    }
  }
}

void sub_183554()
{
  sub_281340();
  v1 = [v0 contentView];
  sub_366D68();
  if (v2)
  {
    v3 = sub_769210();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_183600@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_955AA0);
}

uint64_t sub_18366C(uint64_t a1)
{
  v3 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v6, &unk_955AA0);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_1ED18(v1 + v6, v5, &unk_955AA0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_B33C8(v5, v7 + v8, &unk_955AA0);
  return swift_endAccess();
}

void sub_1837B8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_1894C8(v2);
}

void *sub_183804()
{
  result = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_18383C(char a1)
{
  if (a1)
  {

    sub_1882B0();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1838F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_4BDF04(v4);
  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory) = v4;
  sub_5020F8();
}

uint64_t sub_1839AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = a3;
  v4 = sub_765300();
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_765120();
  __chkstk_darwin(v7 - 8);
  v80 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_765360();
  v82 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&qword_947B58);
  __chkstk_darwin(v11 - 8);
  v75 = &v59 - v12;
  v79 = sub_765240();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v76 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v77 = &v59 - v15;
  v74 = sub_76A920();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_7600F0();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_763B00();
  v68 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v24 = sub_7656C0();
  v85 = *(v24 - 8);
  v86 = v24;
  __chkstk_darwin(v24);
  v83 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v59 - v27;
  sub_765B70();
  sub_18BAC4(&qword_94CAB0, &type metadata accessor for TodayCard);
  result = sub_75C750();
  v30 = v90;
  if (v90)
  {
    v89 = sub_765B20();
    sub_75B090();
    sub_BD88(&qword_947B48);
    if (swift_dynamicCast())
    {
      v62 = v18;
      v65 = v6;
      v67 = a2;
      sub_10914(v87, &v90);
      type metadata accessor for TodayCardGridTracker();
      sub_768900();
      sub_768ED0();
      v66 = *&v87[0];
      v31 = sub_352874();
      v32 = _swiftEmptyArrayStorage;
      *&v87[0] = _swiftEmptyArrayStorage;
      v84 = v30;
      v33 = sub_765A20();
      v64 = v9;
      LODWORD(v63) = v31;
      if (v33)
      {
        swift_getKeyPath();
        sub_75C7B0();

        swift_getKeyPath();
        sub_75C7B0();

        v34 = v89;
        sub_7ED24(v31, v28, v89);
        sub_2A6324(v31);
        sub_765330();

        (*(v85 + 8))(v28, v86);
        sub_769440();
        if (*(&dword_10 + (*&v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();

        v32 = *&v87[0];
      }

      sub_B170(&v90, v91);
      swift_getKeyPath();
      sub_75C7B0();

      v35 = v89;
      v36 = sub_761890();

      if (v36)
      {
        sub_B170(&v90, v91);
        if (sub_761880())
        {
          swift_getKeyPath();
          v37 = v83;
          sub_75C7B0();

          swift_getKeyPath();
          sub_75C7B0();

          v60 = v89;
          v38 = sub_769A20();
          v39 = v63;
          v61 = v38;
          sub_7ED24(v63, v37, v38);
          sub_2A6324(v39);
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
          v44 = sub_769470();

          (*(v40 + 8))(v23, v43);
          sub_763AE0();
          if (v45)
          {
            sub_765260();
          }

          v46 = v79;
          v47 = v78;
          v48 = v75;
          v49 = v69;
          sub_763AF0();
          sub_7600C0();
          sub_769DA0();
          sub_769D60();
          v50 = v73;
          v51 = v71;
          v52 = v74;
          (*(v73 + 104))(v71, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v74);
          sub_769D80();
          (*(v50 + 8))(v51, v52);
          (*(v70 + 8))(v49, v72);
          sub_763AD0();
          v53 = *(v47 + 48);
          v54 = v53(v48, 1, v46);
          v63 = v44;
          if (v54 == 1)
          {
            v55 = v77;
            sub_765250();
            if (v53(v48, 1, v46) != 1)
            {
              sub_10A2C(v48, &qword_947B58);
            }
          }

          else
          {
            v55 = v77;
            (*(v47 + 32))(v77, v48, v46);
          }

          v56 = v81;
          sub_765130();
          v79 = v36;
          sub_765380();
          v57 = v61;
          [v61 displayScale];
          (*(v47 + 16))(v76, v55, v46);
          sub_765340();
          sub_765350();
          sub_75DF50();
          swift_allocObject();
          sub_75DF30();

          (*(v82 + 8))(v56, v64);
          (*(v47 + 8))(v55, v46);
          (*(v85 + 8))(v83, v86);
          sub_769440();
          if (*(&dword_10 + (*&v87[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v87[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_7694C0();
          }

          sub_769500();

          v32 = *&v87[0];
        }

        else
        {
        }
      }

      v58._rawValue = v32;
      sub_75A070(v58);

      return sub_BEB8(&v90);
    }

    else
    {

      v88 = 0;
      memset(v87, 0, sizeof(v87));
      return sub_10A2C(v87, &qword_947B50);
    }
  }

  return result;
}

void sub_1846B8()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_F704(v2);
  v3 = (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
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
      sub_7633B0();
    }
  }
}

void sub_184810()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_75F4E0();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3);
  v4 = (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
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
      sub_7633A0();
    }
  }
}

void sub_184980()
{
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = sub_769A00();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = sub_7699E0();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_189120(v6);
}

uint64_t sub_184B1C(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v157 = a6;
  v168 = a5;
  v169 = a2;
  LODWORD(v166) = a4;
  v9 = sub_BD88(&qword_944440);
  __chkstk_darwin(v9 - 8);
  v134 = &v129 - v10;
  v161 = sub_7656C0();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v132 = v11;
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_7572E0();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  v135 = sub_BD88(&qword_947B70);
  __chkstk_darwin(v135);
  v136 = &v129 - v15;
  v16 = sub_BD88(&qword_944448);
  __chkstk_darwin(v16 - 8);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v129 - v19;
  __chkstk_darwin(v20);
  v137 = &v129 - v21;
  __chkstk_darwin(v22);
  v138 = &v129 - v23;
  v24 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v24 - 8);
  v156 = &v129 - v25;
  v26 = sub_765300();
  __chkstk_darwin(v26 - 8);
  v162 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_765120();
  v159 = *(v144 - 8);
  __chkstk_darwin(v144);
  v158 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_765360();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_BD88(&qword_947B58);
  __chkstk_darwin(v30 - 8);
  v32 = &v129 - v31;
  v33 = sub_765240();
  v164 = *(v33 - 8);
  v165 = v33;
  __chkstk_darwin(v33);
  v151 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v150 = sub_76A920();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_7600F0();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_763B00();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v48 = sub_765A30();
  if (!v48)
  {
    v49 = sub_7651A0();
    if (!v49)
    {
      goto LABEL_7;
    }

    v163 = a1;
    v50 = v32;
    v51 = v49;
    v52 = [v6 backgroundView];
    if (v52)
    {
      v53 = v52;
      [v52 setBackgroundColor:v51];
    }

    v48 = v51;
    v32 = v50;
  }

LABEL_7:
  v152 = v37;
  v167 = v7;
  v148 = [v7 traitCollection];
  v54 = sub_769A20();
  v55 = v166;
  v163 = v54;
  sub_7ED24(v166, v168, v54);
  sub_2A6324(v55);
  v56 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v55 != 6)
  {
    v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v55 != 4)
  {
    v56 = v57;
  }

  (*(v42 + 104))(v44, *v56, v41);
  (*(v42 + 32))(v47, v44, v41);
  v58 = sub_769470();
  (*(v42 + 8))(v47, v41);
  sub_763AE0();
  if (v59)
  {
    sub_765260();
  }

  v60 = v165;
  sub_763AF0();
  sub_7600C0();
  sub_769DA0();
  sub_769D60();
  v61 = v149;
  v62 = v146;
  v63 = v150;
  (*(v149 + 104))(v146, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v150);
  sub_769D80();
  (*(v61 + 8))(v62, v63);
  (*(v145 + 8))(v40, v147);
  v150 = v58;
  sub_763AD0();
  v64 = v164;
  v65 = *(v164 + 48);
  v66 = v65(v32, 1, v60);
  v67 = v167;
  if (v66 == 1)
  {
    v68 = v152;
    sub_765250();
    v69 = v60;
    if (v65(v32, 1, v60) != 1)
    {
      sub_10A2C(v32, &qword_947B58);
    }
  }

  else
  {
    v68 = v152;
    (*(v64 + 32))(v152, v32, v60);
    v69 = v60;
  }

  v70 = v153;
  sub_765130();
  sub_765380();
  v71 = v163;
  [v163 displayScale];
  v72 = v164;
  (*(v164 + 16))(v151, v68, v69);
  sub_765340();
  sub_765350();
  sub_75DF50();
  swift_allocObject();
  v73 = sub_75DF30();

  (*(v154 + 8))(v70, v155);
  (*(v72 + 8))(v68, v165);
  v74 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v67[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v75 = v166;
  }

  else
  {
    v75 = v67[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  sub_75A110();
  sub_768900();
  sub_768ED0();
  v166 = v170;
  v164 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);

  v165 = v74;
  v162 = v73;
  v163 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView;
  v77 = *(v74 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  sub_75DEF0();
  v79 = v78;
  v81 = v80;
  v82 = [*(v77 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView) image];
  v83 = v160;
  v84 = v156;
  v85 = v161;
  v154 = *(v160 + 16);
  (v154)(v156, v168, v161);
  (*(v83 + 56))(v84, 0, 1, v85);
  LODWORD(v155) = v75;
  sub_DDCF4(v82, v79, v81, 0, v169, v84, v75);

  sub_10A2C(v84, &unk_955AA0);
  v86 = *(v77 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded);
  v157 = v77;
  if (v86)
  {
    v87 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v88 = v138;
    sub_1ED18(v77 + v87, v138, &qword_944448);
    v89 = v137;
    sub_75DF40();
    v90 = v159;
    v91 = v144;
    (*(v159 + 56))(v89, 0, 1, v144);
    v92 = *(v135 + 48);
    v93 = v136;
    sub_1ED18(v88, v136, &qword_944448);
    sub_1ED18(v89, v93 + v92, &qword_944448);
    v94 = *(v90 + 48);
    if (v94(v93, 1, v91) == 1)
    {
      sub_10A2C(v89, &qword_944448);
      sub_10A2C(v88, &qword_944448);
      if (v94(v93 + v92, 1, v91) == 1)
      {
        sub_10A2C(v93, &qword_944448);
        goto LABEL_29;
      }
    }

    else
    {
      v95 = v130;
      sub_1ED18(v93, v130, &qword_944448);
      if (v94(v93 + v92, 1, v91) != 1)
      {
        v125 = v159;
        v126 = v158;
        (*(v159 + 32))(v158, v93 + v92, v91);
        sub_18BAC4(&qword_947B80, &type metadata accessor for Artwork.URLTemplate);
        v127 = sub_7691C0();
        v128 = *(v125 + 8);
        v128(v126, v91);
        sub_10A2C(v137, &qword_944448);
        sub_10A2C(v138, &qword_944448);
        v128(v95, v91);
        sub_10A2C(v93, &qword_944448);
        v77 = v157;
        if (v127)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10A2C(v137, &qword_944448);
      sub_10A2C(v138, &qword_944448);
      (*(v159 + 8))(v95, v91);
    }

    sub_10A2C(v93, &qword_947B70);
    v77 = v157;
  }

LABEL_27:
  if ((*(v77 + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v96 = v141;
    sub_7572D0();
    v97 = v142;
    v98 = *(v142 + 16);
    v99 = v139;
    v100 = v143;
    v98(v139, v96, v143);
    sub_18BAC4(&qword_947B78, &type metadata accessor for UUID);
    sub_76A6E0();
    v101 = swift_allocObject();
    v158 = v101;
    swift_unknownObjectWeakInit();
    v102 = v99;
    v103 = v100;
    v98(v102, v96, v100);
    (v154)(v140, v168, v161);
    v104 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v105 = (v131 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
    v107 = v160;
    v108 = (*(v160 + 80) + v106 + 8) & ~*(v160 + 80);
    v109 = v108 + v132;
    v110 = swift_allocObject();
    *(v110 + 16) = v101;
    v111 = *(v97 + 32);
    v111(v110 + v104, v139, v103);
    v112 = (v110 + v105);
    *v112 = v79;
    v112[1] = v81;
    *(v110 + v106) = v169;
    (*(v107 + 32))(v110 + v108, v140, v161);
    *(v110 + v109) = v155;

    sub_75A040();

    sub_10A2C(&v170, &unk_9443A0);

    v113 = v133;
    sub_75DF40();
    (*(v159 + 56))(v113, 0, 1, v144);
    v114 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkTemplate;
    v115 = v157;
    swift_beginAccess();
    v116 = v115;
    sub_B33C8(v113, v115 + v114, &qword_944448);
    swift_endAccess();
    v117 = v134;
    v118 = v143;
    v111(v134, v141, v143);
    (*(v142 + 56))(v117, 0, 1, v118);
    v119 = OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_B33C8(v117, v116 + v119, &qword_944440);
    swift_endAccess();
  }

LABEL_29:
  v120 = v165;
  [*&v163[v165] setHidden:0];
  [*(v120 + v164) setHidden:1];

  *(v120 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 1;
  v121 = *&v167[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v121)
  {
    v122 = *&v121[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    v123 = v121;
    [v122 setHidden:0];
    [*&v123[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_185FE4(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v219 = a6;
  v253 = a5;
  v254 = a4;
  v255 = a2;
  v7 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v7 - 8);
  v208 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = &v207 - v10;
  v11 = sub_BD88(&unk_948710);
  __chkstk_darwin(v11 - 8);
  v218 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v217 = &v207 - v14;
  v250 = sub_7570A0();
  v15 = *(v250 - 8);
  __chkstk_darwin(v250);
  v211 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_BD88(&qword_940A40);
  __chkstk_darwin(v248);
  v249 = &v207 - v17;
  v18 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v18 - 8);
  v216 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v215 = &v207 - v21;
  __chkstk_darwin(v22);
  v257 = &v207 - v23;
  __chkstk_darwin(v24);
  v258 = &v207 - v25;
  v26 = sub_765300();
  __chkstk_darwin(v26 - 8);
  v246 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_765120();
  __chkstk_darwin(v28 - 8);
  v243 = &v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = sub_765360();
  v245 = *(v247 - 8);
  __chkstk_darwin(v247);
  v244 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_BD88(&qword_947B58);
  __chkstk_darwin(v31 - 8);
  v239 = &v207 - v32;
  v242 = sub_765240();
  v264 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v207 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v241 = &v207 - v35;
  v238 = sub_76A920();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_7600F0();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v233 = &v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_763B00();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v230 = &v207 - v40;
  v41 = sub_BD88(&unk_948720);
  __chkstk_darwin(v41 - 8);
  v228 = &v207 - v42;
  v226 = sub_75A6E0();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v227 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_75DC30();
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v267 = &v207 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_BD88(&qword_947B60);
  __chkstk_darwin(v45 - 8);
  v210 = &v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v223 = &v207 - v48;
  __chkstk_darwin(v49);
  v214 = &v207 - v50;
  __chkstk_darwin(v51);
  v53 = &v207 - v52;
  v265 = sub_75A6B0();
  v270 = *(v265 - 8);
  __chkstk_darwin(v265);
  v263 = &v207 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v262 = &v207 - v56;
  __chkstk_darwin(v57);
  v209 = &v207 - v58;
  __chkstk_darwin(v59);
  v224 = &v207 - v60;
  __chkstk_darwin(v61);
  v222 = &v207 - v62;
  __chkstk_darwin(v63);
  v221 = &v207 - v64;
  __chkstk_darwin(v65);
  v67 = &v207 - v66;
  __chkstk_darwin(v68);
  v213 = &v207 - v69;
  __chkstk_darwin(v70);
  v72 = &v207 - v71;
  __chkstk_darwin(v73);
  v75 = &v207 - v74;
  __chkstk_darwin(v76);
  v78 = &v207 - v77;
  __chkstk_darwin(v79);
  v81 = &v207 - v80;
  __chkstk_darwin(v82);
  v84 = &v207 - v83;
  v85 = sub_765A30();
  v271 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  sub_764BC0();
  v98 = v15;
  v86 = sub_7651A0();

  if (v86)
  {
    v99 = [v272 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v259 = v15;
  v269 = v67;
  sub_764BA0();
  sub_75A680();
  v87 = v270;
  v88 = v265;
  v268 = *(v270 + 16);
  v256 = v270 + 16;
  v268(v75, v84, v265);
  sub_18BAC4(&qword_9406B8, &type metadata accessor for VideoControls);
  sub_76A530();
  v89 = sub_76A550();
  v266 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    sub_76A560();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v260 = *(v87 + 56);
  v260(v53, v91, 1, v88);
  sub_10A2C(v53, &qword_947B60);
  v220 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v272[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v269;
  v261 = v90;
  v94 = v221;
  if (v92)
  {
    sub_75A690();
    v268(v75, v266, v88);
    v95 = v213;
    sub_76A530();
    if (sub_76A550())
    {
      v90 = v261;
      v261(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v214;
    }

    else
    {
      sub_76A560();
      v101 = v270;
      v90 = v261;
      v261(v72, v88);
      v102 = *(v101 + 32);
      v97 = v214;
      v102(v214, v95, v88);
      v96 = 0;
    }

    v260(v97, v96, 1, v88);
    sub_10A2C(v97, &qword_947B60);
  }

  sub_764B60();
  sub_75A680();
  v268(v75, v93, v88);
  v103 = v94;
  v104 = v222;
  sub_76A530();
  if (sub_76A550())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v242;
    v107 = v223;
  }

  else
  {
    sub_76A560();
    v108 = v270;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v223;
    v109(v223, v104, v88);
    v105 = 0;
    v106 = v242;
  }

  v260(v107, v105, 1, v88);
  sub_10A2C(v107, &qword_947B60);
  v110 = v224;
  if (v272[v220] == 4 && (v272[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    sub_75A690();
    v268(v75, v269, v88);
    v111 = v209;
    sub_76A530();
    if (sub_76A550())
    {
      v112 = v261;
      v261(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v210;
    }

    else
    {
      sub_76A560();
      v115 = v270;
      v261(v110, v88);
      v116 = *(v115 + 32);
      v114 = v210;
      v116(v210, v111, v88);
      v113 = 0;
    }

    v260(v114, v113, 1, v88);
    sub_10A2C(v114, &qword_947B60);
  }

  (*(v225 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v226);
  sub_764BC0();
  sub_765260();
  v117 = v228;
  sub_7666A0();

  v118 = sub_766690();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v268;
  v268(v262, v269, v88);
  v119(v263, v266, v88);
  sub_764B70();
  sub_764B50();
  sub_764BB0();
  sub_75DC10();
  sub_764BC0();
  v268 = [v272 traitCollection];
  v120 = sub_769A20();
  v121 = v254;
  sub_7ED24(v254, v253, v120);
  v122 = v121;
  sub_2A6324(v121);
  v123 = v231;
  v124 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v122 != 6)
  {
    v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v122 != 4)
  {
    v124 = v125;
  }

  v126 = v229;
  v127 = v232;
  (*(v231 + 104))(v229, *v124, v232);
  v128 = v230;
  (*(v123 + 32))(v230, v126, v127);
  v129 = sub_769470();
  (*(v123 + 8))(v128, v127);
  sub_763AE0();
  if (v130)
  {
    sub_765260();
  }

  v131 = v241;
  v132 = v239;
  v133 = v233;
  sub_763AF0();
  sub_7600C0();
  sub_769DA0();
  sub_769D60();
  v134 = v237;
  v135 = v235;
  v136 = v238;
  (*(v237 + 104))(v235, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v238);
  sub_769D80();
  (*(v134 + 8))(v135, v136);
  (*(v234 + 8))(v133, v236);
  sub_763AD0();
  v137 = v264;
  v138 = *(v264 + 48);
  v139 = v138(v132, 1, v106);
  v262 = v129;
  if (v139 == 1)
  {
    sub_765250();
    v140 = v106;
    v141 = v131;
    if (v138(v132, 1, v106) != 1)
    {
      sub_10A2C(v132, &qword_947B58);
    }
  }

  else
  {
    (*(v137 + 32))(v131, v132, v106);
    v140 = v106;
    v141 = v131;
  }

  v142 = v244;
  sub_765130();
  sub_765380();
  [v120 displayScale];
  v260 = v120;
  v143 = v264;
  (*(v264 + 16))(v240, v141, v140);
  sub_765340();
  sub_765350();
  sub_75DF50();
  swift_allocObject();
  v263 = sub_75DF30();

  (*(v245 + 8))(v142, v247);
  (*(v143 + 8))(v141, v140);
  v144 = *&v272[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  v145 = v258;
  sub_764BD0();
  v146 = v259;
  v147 = *(v259 + 56);
  v148 = 1;
  v149 = v250;
  (v147)(v145, 0, 1, v250);
  v264 = v144;
  v268 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v151 = Strong;
    v152 = v257;
    (*(v146 + 16))(v257, Strong + qword_99A1C8, v149);

    v148 = 0;
    v153 = v249;
  }

  else
  {
    v153 = v249;
    v152 = v257;
  }

  v262 = v147;
  (v147)(v152, v148, 1, v149);
  v154 = *(v248 + 48);
  sub_1ED18(v145, v153, &unk_93FD30);
  sub_1ED18(v152, v153 + v154, &unk_93FD30);
  v155 = *(v146 + 48);
  if (v155(v153, 1, v149) == 1)
  {
    sub_10A2C(v152, &unk_93FD30);
    sub_10A2C(v145, &unk_93FD30);
    v156 = v155(v153 + v154, 1, v149);
    v157 = v272;
    if (v156 == 1)
    {
      sub_10A2C(v153, &unk_93FD30);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v158 = v215;
  sub_1ED18(v153, v215, &unk_93FD30);
  if (v155(v153 + v154, 1, v149) == 1)
  {
    sub_10A2C(v257, &unk_93FD30);
    sub_10A2C(v258, &unk_93FD30);
    (*(v259 + 8))(v158, v149);
LABEL_43:
    sub_10A2C(v153, &qword_940A40);
    v159 = v264;
    goto LABEL_44;
  }

  v166 = v259;
  v167 = v211;
  (*(v259 + 32))(v211, v153 + v154, v149);
  sub_18BAC4(&qword_947410, &type metadata accessor for URL);
  v168 = sub_7691C0();
  v169 = *(v166 + 8);
  v169(v167, v149);
  sub_10A2C(v257, &unk_93FD30);
  sub_10A2C(v258, &unk_93FD30);
  v169(v158, v149);
  sub_10A2C(v153, &unk_93FD30);
  v157 = v272;
  v159 = v264;
  if ((v168 & 1) == 0)
  {
LABEL_44:
    sub_75C360();
    v264 = sub_768900();
    sub_768ED0();
    v160 = v273;
    sub_764B40();
    v161 = v216;
    sub_764BD0();
    (v262)(v161, 0, 1, v149);
    v162 = v217;
    sub_764B90();
    v163 = v218;
    sub_764B80();
    v164 = type metadata accessor for TodayCardVideoView();
    sub_18BAC4(&qword_947B40, type metadata accessor for TodayCardVideoView);
    v262 = v164;
    v165 = sub_75C340();
    sub_10A2C(v163, &unk_948710);
    sub_10A2C(v162, &unk_948710);
    sub_10A2C(v161, &unk_93FD30);
    sub_10A2C(&v273, &unk_9443A0);
    if (v165)
    {
      if ((v165[qword_99A2C0] & 1) == 0)
      {
        v260 = v160;
        v165[qword_99A2B8] = *(v159 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_originalSizeCategory);
        sub_69D6C();
        swift_unknownObjectWeakAssign();
        v170 = v268;
        v171 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v172 = v165;
        sub_2487B4(v171);

        v173 = *(v170 + v159);
        v174 = v172;
        sub_764BC0();
        sub_765260();
        v176 = v175;
        v178 = v177;

        v179 = sub_7656C0();
        v180 = *(v179 - 8);
        v181 = v212;
        (*(v180 + 16))(v212, v253, v179);
        (*(v180 + 56))(v181, 0, 1, v179);
        v182 = swift_unknownObjectWeakLoadStrong();
        v271 = v174;
        swift_unknownObjectWeakAssign();
        sub_2487B4(v182);

        v183 = &v173[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkSize];
        *v183 = v176;
        *(v183 + 1) = v178;
        v183[16] = 0;
        v184 = swift_unknownObjectWeakLoadStrong();
        if (v184)
        {
          v185 = v184;
          (*(&stru_B8.offset + (swift_isaMask & *v184)))(v176, v178, 0);
        }

        v186 = v255;
        *&v173[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_artworkLayoutWithMetrics] = v255;

        v187 = swift_unknownObjectWeakLoadStrong();
        if (v187)
        {
          v188 = v187;
          v189 = *&stru_B8.segname[(swift_isaMask & *v187) + 8];
          swift_bridgeObjectRetain_n();
          v189(v186);
          v181 = v212;
        }

        else
        {
        }

        v190 = v208;
        sub_1ED18(v181, v208, &unk_955AA0);
        sub_247CC8(v190);
        v191 = v254;
        v173[OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_sizeCategory] = v254;
        v192 = swift_unknownObjectWeakLoadStrong();
        if (v192)
        {
          v193 = v192;
          (*&stru_108.segname[swift_isaMask & *v192])(v191);
        }

        v194 = swift_unknownObjectWeakLoadStrong();
        if (v194)
        {
          v195 = v194;
          v196 = swift_unknownObjectWeakLoadStrong();
          (*(&stru_108.reserved2 + (swift_isaMask & *v195)))(v196, *v183, *(v183 + 1), v183[16], v255, v181, v191);
        }

        [v173 setNeedsLayout];
        v197 = v271;

        sub_10A2C(v181, &unk_955AA0);
        sub_75A110();
        sub_768ED0();
        sub_18BAC4(&qword_947B68, type metadata accessor for TodayCardVideoView);
        sub_75A050();
        [*(v268 + v159) setHidden:0];
        [*(v159 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v159 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v157 = v272;
  }

LABEL_61:
  v198 = *&v157[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v198)
  {
    v199 = *&v198[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView];
    v200 = v198;
    [v199 setHidden:1];
    [*&v200[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v201 = swift_unknownObjectWeakLoadStrong();
  v202 = v266;
  v203 = v261;
  if (v201)
  {
    *(v201 + qword_940588 + 8) = &off_8866C0;
    v204 = v201;
    swift_unknownObjectWeakAssign();
  }

  sub_189920();

  (*(v251 + 8))(v267, v252);
  v205 = v265;
  v203(v269, v265);
  return (v203)(v202, v205);
}

void (*sub_188194(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_188208;
}

void sub_188208(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_2487B4(Strong);

    Strong = v4;
  }

  else
  {
    sub_2487B4(Strong);
  }
}

void sub_1882B0()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_66DFD8(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton] = v7;
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

void sub_1883B8()
{
  v0 = sub_75FC40();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75FC80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_9405B0];
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
      sub_56D2C(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_188654()
{
  v0 = sub_75CF00();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_161DC(v4, qword_99B408);
  sub_BE38(v0, qword_99B408);
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_99B898);
  (*(v1 + 16))(v3, v5, v0);
  sub_765470();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1887B8(uint64_t a1)
{
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75CDE0();
  v29 = a1;
  sub_75CE20();
  if (qword_93D528 != -1)
  {
    swift_once();
  }

  v6 = sub_7666D0();
  v7 = sub_BE38(v6, qword_99E788);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = sub_766CA0();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_B1B4(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  sub_766CB0();
  v25 = v3[1];
  v25(v5, v2);
  sub_75CE50();
  if (qword_93D548 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99E7E8);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_B1B4(v32);
  v15 = v28;
  v28(v14, v5, v2);
  sub_766CB0();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  sub_75CEE0();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_B1B4(v32);
  v15(v18, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  sub_75CE60();
  if (qword_93D4F0 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_BE38(v24, qword_99E6E0);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_B1B4(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_B1B4(v32);
  v28(v21, v5, v2);
  sub_766CB0();
  v16(v5, v2);
  sub_75CEF0();
  return sub_75CE40();
}

char *sub_188CAC(double a1, double a2, double a3, double a4)
{
  v28[1] = swift_getObjectType();
  v9 = sub_7593D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  sub_501278(v12, 20.0);
  (*(v10 + 8))(v12, v9);
  v22 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v22)
  {
    v23 = v22;
    [v23 _setContinuousCornerRadius:20.0];
    v24 = [v23 layer];
    [v24 setMaskedCorners:sub_7697E0()];
  }

  v29.receiver = *&v17[v21];
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, "_setContinuousCornerRadius:", 20.0);
  sub_4BE560();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_BD88(&qword_9477F0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_77B6D0;
  *(v25 + 32) = sub_767B80();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();
  swift_unknownObjectRelease();

  sub_BE70(0, &qword_941EC8);
  sub_769A40();
  sub_769F40();
  swift_unknownObjectRelease();

  sub_28053C();
  v26 = *(*&v17[v19] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  sub_DCCD0(v17, &off_8866D8);

  return v17;
}

void sub_189120(char a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  sub_50117C();
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v3 + v2) == 1)
  {
    if (!v4)
    {
      return;
    }

    v5 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
    v6 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring);
    *(v5 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring) = 1;
    if (v6)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = swift_unknownObjectWeakLoadStrong();
    v21 = v4;
    sub_69AB3C(Strong);
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      if (v8)
      {
        type metadata accessor for VideoView();
        v11 = v8;
        v12 = sub_76A1C0();

        if (v12)
        {

          v13 = Strong;
          v8 = v11;
LABEL_25:

          v20 = v8;
          goto LABEL_26;
        }
      }

      else
      {
      }

LABEL_21:
      sub_69B168();

      v13 = Strong;
      goto LABEL_25;
    }

    if (v8)
    {
      goto LABEL_21;
    }

    v8 = Strong;
LABEL_24:
    v13 = v21;
    goto LABEL_25;
  }

  if (!v4)
  {
    return;
  }

  v14 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingVideoView];
  v15 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring);
  *(v14 + OBJC_IVAR____TtC18ASMessagesProvider24RevealingVideoMirrorView_isMirroring) = 0;
  if (v15 != 1)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  v21 = v4;
  sub_69AB3C(0);
  swift_unknownObjectWeakAssign();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if (v8)
    {
      type metadata accessor for VideoView();
      v18 = v8;
      v19 = sub_76A1C0();

      if (v19)
      {
        v8 = v18;
        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    sub_69B168();
    goto LABEL_24;
  }

  if (v8)
  {
    goto LABEL_23;
  }

  v20 = v21;
LABEL_26:
}

void sub_1893A4()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_4BE8E4();
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*&stru_B8.segname[swift_isaMask & *Strong])(v3);
  }
}

void sub_1894C8(char a1)
{
  v2 = a1 & 1;
  v3 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v23 = v1;
        v26 = sub_765B20();
        sub_75B090();
        sub_BD88(&qword_947B48);
        if (swift_dynamicCast())
        {
          sub_10914(v24, v27);
          sub_B170(v27, v28);
          v14 = [v23 traitCollection];
          v15 = sub_7618A0();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_1ED18(&v16[v19], v5, &unk_955AA0);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10A2C(v5, &unk_955AA0);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_B170(v27, v28);
              v20 = sub_761880();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_185FE4(v15, v21, v13, v18, v9, v11);

                  (*(v7 + 8))(v9, v6);
                  goto LABEL_12;
                }

                (*(v7 + 8))(v9, v6);

                goto LABEL_11;
              }

              (*(v7 + 8))(v9, v6);
            }
          }

LABEL_11:

LABEL_12:
          sub_BEB8(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10A2C(v24, &qword_947B50);
      }

      else
      {
      }
    }
  }
}

void sub_189920()
{
  v1 = v0;
  v2 = sub_75C330();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_50D80() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton))
  {
    sub_1882B0();
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_9405B0;
      v12 = *&v25[qword_9405B0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_66DC84(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_759A20();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_50D80() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_18B7B8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_886790;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_189CD0()
{
  v1 = v0;
  v2 = sub_75C330();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_50D80() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_1C83D0();
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_9405B0;
      v12 = *&v25[qword_9405B0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_66DC84(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          sub_759A20();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_50D80() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_18BB1C;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23F0CC;
        aBlock[3] = &unk_8867E0;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

id sub_18A090()
{
  v1 = v0;
  v2 = sub_BD88(&unk_955AA0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_7656C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell();
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_184980();
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_93C328 != -1)
    {
      swift_once();
    }

    sub_138D34(v10, &xmmword_99A9B0, 1);
    sub_769A00();
    sub_7697D0();
    sub_769A00();
    sub_7697D0();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = sub_769A00();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_1ED18(&v1[v15], v4, &unk_955AA0);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10A2C(v4, &unk_955AA0);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = sub_7699C0(v41, v42).super.isa;

          sub_7E8B0(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_7697D0();
  [v18 setFrame:{sub_705B8(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
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

  v35 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_18A614()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryCardCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  sub_501AE8();
  v3 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v3)
  {
    [*(*(v3 + OBJC_IVAR____TtC18ASMessagesProvider24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_imageView) setImage:0];
  }

  return sub_4BDDB8();
}

uint64_t sub_18A748(void *a1)
{
  sub_B170(a1, a1[3]);
  v2 = sub_767660();
  if (sub_769B40())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_10974(a1, a1[3]);
  return sub_767670();
}

uint64_t sub_18A8A0()
{
  sub_BD88(&qword_941C10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_77B6D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_BE70(0, &qword_93E550);
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_10A4D4(v9);
  return v1;
}

void sub_18AA6C()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_muteButton);
}

id sub_18AAEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell()
{
  result = qword_947B18;
  if (!qword_947B18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AC80(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2487B4(Strong);
}

uint64_t (*sub_18AD10(uint64_t **a1))()
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
  v2[4] = sub_188194(v2);
  return sub_21028;
}

uint64_t sub_18ADA8(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_18AE18(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_18AE64()
{
  swift_weakAssign();
}

uint64_t sub_18AF24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_18AF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_18AFE4(uint64_t *a1))()
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

uint64_t sub_18B080(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_BE70(0, &qword_93E550);
  v5 = v2;
  v6 = sub_76A1C0();

  return v6 & 1;
}

void sub_18B128(uint64_t a1)
{
  if (a1)
  {
    if ((*(&stru_2E8.reserved2 + (swift_isaMask & *v1)))())
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

uint64_t sub_18B224(uint64_t a1)
{
  result = sub_18BAC4(&qword_947B30, type metadata accessor for StoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

id sub_18B30C(void *a1)
{
  sub_184980();

  return [a1 setNeedsLayout];
}

id sub_18B34C()
{
  v1 = v0;
  v2 = sub_7593D0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_28399C();
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC18ASMessagesProvider18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC18ASMessagesProvider18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_247BF0();
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
  sub_4BE560();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_501278(v5, v16);
  (*(v3 + 8))(v5, v2);
  v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v17)
  {
    v18 = v17;
    [v18 _setContinuousCornerRadius:v16];
    v19 = [v18 layer];
    [v19 setMaskedCorners:sub_7697E0()];
  }

  sub_184980();
  sub_28053C();
  sub_189920();
  return [v1 setNeedsLayout];
}

void sub_18B648()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider22TodayCardInfoLayerView_labelsView) + qword_950C78) = v5;
    sub_367E48();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC18ASMessagesProvider31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC18ASMessagesProvider27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC18ASMessagesProvider18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_501F90();
}

uint64_t sub_18B780()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_18B7C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_18B7DC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18B814()
{
  v1 = sub_7572E0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = v3 | v8;
  v11 = *(v7 + 64) + v9;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 1, v10 | 7);
}

void sub_18B984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_7572E0() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(sub_7656C0() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_DD420(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_18BAC4(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 IconArtworkGridLayout.init(metrics:icons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v3;
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 73) = *(a1 + 73);
  result = *a1;
  v5 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v5;
  *(a3 + 96) = a2;
  return result;
}

uint64_t IconArtworkGridLayout.Metrics.init(iconSize:interItemSpacing:horizontalOffsetPercentage:rotation:preferredGridSize:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  result = sub_34698(a1, a5 + 16);
  *(a5 + 56) = a8;
  *(a5 + 64) = a9;
  *(a5 + 72) = a2;
  *(a5 + 80) = a3;
  *(a5 + 88) = a4 & 1;
  return result;
}

uint64_t LargeGameCenterPlayerLayout.Metrics.aliasTopSpace.setter(__int128 *a1)
{
  sub_BEB8(v1 + 16);

  return sub_34698(a1, v1 + 16);
}

uint64_t IconArtworkGridLayout.Metrics.preferredGridSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 72) = result;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3 & 1;
  return result;
}

uint64_t static IconArtworkGridLayout.totalNumberOfIcons(fitting:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  swift_getObjectType();

  return sub_18BF4C(a1, a2, a3);
}

char *static IconArtworkGridLayout.iconFrames(relativeTo:using:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  swift_getObjectType();

  return sub_18BF88(a1, a2, a3, a4, a5);
}

uint64_t IconArtworkGridLayout.placeChildren(relativeTo:in:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  swift_getObjectType();
  result = sub_18BF88(v4, a1, a2, a3, a4);
  v10 = result;
  v11 = *(v4 + 96);
  v12 = *(v11 + 16);
  if (!v12)
  {

    return sub_7664B0();
  }

  v13 = 0;
  v14 = *(result + 16);
  v15 = v11 + 32;
  for (i = result + 56; ; i += 32)
  {
    if (v13 >= v14)
    {
      goto LABEL_3;
    }

    if (v13 >= *(v11 + 16))
    {
      break;
    }

    sub_134D8(v15, v17);
    result = sub_B170(v17, v17[3]);
    if (v13 >= *(v10 + 16))
    {
      goto LABEL_12;
    }

    sub_766530();
    result = sub_BEB8(v17);
LABEL_3:
    ++v13;
    v15 += 40;
    if (v12 == v13)
    {

      return sub_7664B0();
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_18BF4C(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v3 = *(sub_18BF88(a1, 0.0, 0.0, a2, a3) + 2);

  return v3;
}

char *sub_18BF88(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v176 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = *(a1 + 64);
  CGAffineTransformMakeRotation(&v206, v182);
  v207.origin.x = a4 * -0.5;
  v207.origin.y = a5 * -0.5;
  v207.size.width = a4;
  v207.size.height = a5;
  v208 = CGRectApplyAffineTransform(v207, &v206);
  x = v208.origin.x;
  y = v208.origin.y;
  width = v208.size.width;
  v204 = v208.size.width;
  height = v208.size.height;
  v200 = v208.size.height;
  MinX = CGRectGetMinX(v208);
  v195 = a2;
  v209.origin.x = a2;
  v196 = a3;
  v209.origin.y = a3;
  v209.size.width = a4;
  v209.size.height = a5;
  v197 = a5;
  v203 = MinX + CGRectGetMidX(v209);
  v210.origin.x = x;
  v210.origin.y = y;
  v210.size.width = width;
  v210.size.height = height;
  MinY = CGRectGetMinY(v210);
  v211.origin.x = a2;
  v211.origin.y = a3;
  v211.size.width = a4;
  v19 = a4;
  v211.size.height = a5;
  v202 = MinY + CGRectGetMidY(v211);
  v21 = *a1;
  v20 = *(a1 + 8);
  CGAffineTransformMakeRotation(&v206, v182);
  v212.origin.x = v21 * -0.5;
  v212.origin.y = v20 * -0.5;
  v212.size.width = v21;
  v212.size.height = v20;
  v194 = v20;
  v213 = CGRectApplyAffineTransform(v212, &v206);
  v22 = v213.origin.x;
  v23 = v213.origin.y;
  v24 = v213.size.width;
  v25 = v213.size.height;
  v26 = CGRectGetMinX(v213);
  v214.origin.x = 0.0;
  v214.origin.y = 0.0;
  v214.size.width = v21;
  v214.size.height = v20;
  v199 = v26 + CGRectGetMidX(v214);
  v215.origin.x = v22;
  v215.origin.y = v23;
  v215.size.width = v24;
  v215.size.height = v25;
  v27 = CGRectGetMinY(v215);
  v216.origin.x = 0.0;
  v216.origin.y = 0.0;
  v216.size.width = v21;
  v216.size.height = v20;
  v201 = v27 + CGRectGetMidY(v216);
  sub_B170((a1 + 16), *(a1 + 40));
  sub_33964();
  sub_766700();
  v29 = v28;
  v189 = v28;
  (*(v11 + 8))(v13, v10);
  v30 = *(a1 + 56);
  v192 = v21;
  v31 = v21 + v29;
  v32 = floor(v31 * v30);
  v33 = v195;
  v217.origin.x = v195;
  v34 = v196;
  v217.origin.y = v196;
  v217.size.width = v19;
  v35 = v197;
  v217.size.height = v197;
  MidX = CGRectGetMidX(v217);
  v218.origin.x = v33;
  v218.origin.y = v34;
  v193 = v19;
  v218.size.width = v19;
  v218.size.height = v35;
  MidY = CGRectGetMidY(v218);
  v36 = v182;
  v37 = __sincos_stret(v182);
  v188 = v37.__cosval * v31;
  v187 = v37.__sinval * v31;
  v38 = __sincos_stret(v36 + 3.14159265);
  v191 = v38.__cosval * v31;
  v190 = v38.__sinval * v31;
  v179 = v37.__cosval * v32;
  v178 = v37.__sinval * v32;
  v39 = __sincos_stret(v36 + 1.57079633);
  sinval = v39.__sinval;
  cosval = v39.__cosval;
  v40 = v194 + v189;
  v41 = v199;
  v219.origin.x = v199;
  v42 = v201;
  v219.origin.y = v201;
  v219.size.width = v24;
  v219.size.height = v25;
  v43 = MidX + CGRectGetMidX(v219);
  v220.origin.x = v41;
  v220.origin.y = v42;
  v220.size.width = v24;
  v220.size.height = v25;
  v44 = v43 + CGRectGetWidth(v220) * -0.5;
  v221.origin.x = v41;
  v221.origin.y = v42;
  v221.size.width = v24;
  v221.size.height = v25;
  v45 = MidY + CGRectGetMidY(v221);
  v222.origin.x = v41;
  v222.origin.y = v42;
  v222.size.width = v24;
  v222.size.height = v25;
  v223.origin.y = v45 + CGRectGetHeight(v222) * -0.5;
  v299.origin.x = v203;
  v299.size.width = v204;
  v223.origin.x = v44;
  v299.origin.y = v202;
  v223.size.width = v24;
  v223.size.height = v25;
  v299.size.height = v200;
  v46 = CGRectIntersectsRect(v223, v299);
  v177 = v40;
  MinX = v24;
  v198 = v25;
  if (v46)
  {
    v184 = cosval * v40 + v179;
    v183 = sinval * v40 + v178;
    v47 = _swiftEmptyArrayStorage;
    v48 = 0.5;
    v49 = MidX;
    v50 = MidY;
    v51 = v200;
    v52 = v201;
    v53 = v199;
    do
    {
      cosval = v49;
      v229.origin.x = v53;
      v229.origin.y = v52;
      v229.size.width = v24;
      v229.size.height = v25;
      v56 = v49 + CGRectGetMidX(v229);
      v230.origin.x = v53;
      v230.origin.y = v52;
      v230.size.width = v24;
      v230.size.height = v25;
      v57 = v56 - CGRectGetWidth(v230) * v48;
      v231.origin.x = v53;
      v231.origin.y = v52;
      v231.size.width = v24;
      v231.size.height = v25;
      v189 = v50 + CGRectGetMidY(v231);
      v232.origin.x = v53;
      v232.origin.y = v52;
      v232.size.width = v24;
      v232.size.height = v25;
      v58 = v189 - CGRectGetHeight(v232) * v48;
      v233.origin.x = v57;
      v233.origin.y = v58;
      v233.size.width = v24;
      v233.size.height = v25;
      v301.origin.y = v202;
      v301.origin.x = v203;
      v301.size.width = v204;
      v301.size.height = v51;
      v59 = CGRectIntersectsRect(v233, v301);
      sinval = v50;
      if (v59)
      {
        v189 = cosval;
        v60 = v50;
        do
        {
          v239.origin.x = v57;
          v239.origin.y = v58;
          v239.size.width = v24;
          v239.size.height = v25;
          v303.origin.x = v195;
          v303.origin.y = v196;
          v303.size.width = v193;
          v303.size.height = v197;
          if (CGRectIntersectsRect(v239, v303))
          {
            v240.origin.x = 0.0;
            v240.origin.y = 0.0;
            v70 = v192;
            v240.size.width = v192;
            v71 = v194;
            v240.size.height = v194;
            v72 = CGRectGetMidX(v240);
            v241.origin.x = 0.0;
            v241.origin.y = 0.0;
            v241.size.width = v70;
            v241.size.height = v71;
            v73 = CGRectGetWidth(v241);
            v242.origin.x = 0.0;
            v242.origin.y = 0.0;
            v242.size.width = v70;
            v242.size.height = v71;
            v74 = CGRectGetMidY(v242);
            v243.origin.x = 0.0;
            v243.origin.y = 0.0;
            v243.size.width = v70;
            v243.size.height = v71;
            v75 = CGRectGetHeight(v243);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_7AD2C(0, *(v47 + 2) + 1, 1, v47);
            }

            v77 = *(v47 + 2);
            v76 = *(v47 + 3);
            v62 = v189;
            if (v77 >= v76 >> 1)
            {
              v47 = sub_7AD2C((v76 > 1), v77 + 1, 1, v47);
            }

            v61 = 0.5;
            *(v47 + 2) = v77 + 1;
            v78 = &v47[32 * v77];
            v78[4] = v62 + v72 - v73 * 0.5;
            v78[5] = v60 + v74 - v75 * 0.5;
            v79 = v194;
            v78[6] = v192;
            v78[7] = v79;
          }

          else
          {
            v61 = 0.5;
            v62 = v189;
          }

          v63 = v188 + v62;
          v60 = v187 + v60;
          v25 = v198;
          v64 = v199;
          v234.origin.x = v199;
          v65 = v201;
          v234.origin.y = v201;
          v24 = MinX;
          v234.size.width = MinX;
          v234.size.height = v198;
          v66 = CGRectGetMidX(v234);
          v189 = v63;
          v67 = v63 + v66;
          v235.origin.x = v64;
          v235.origin.y = v65;
          v235.size.width = v24;
          v235.size.height = v25;
          v57 = v67 - CGRectGetWidth(v235) * v61;
          v236.origin.x = v64;
          v236.origin.y = v65;
          v236.size.width = v24;
          v236.size.height = v25;
          v68 = v60 + CGRectGetMidY(v236);
          v237.origin.x = v64;
          v237.origin.y = v65;
          v237.size.width = v24;
          v237.size.height = v25;
          v58 = v68 - CGRectGetHeight(v237) * v61;
          v238.origin.x = v57;
          v238.origin.y = v58;
          v238.size.width = v24;
          v238.size.height = v25;
          v302.origin.y = v202;
          v302.origin.x = v203;
          v302.size.width = v204;
          v302.size.height = v200;
          v69 = CGRectIntersectsRect(v238, v302);
          v50 = sinval;
        }

        while (v69);
      }

      v80 = v191 + cosval;
      v81 = v190 + v50;
      v244.size.height = v198;
      v82 = v199;
      v244.origin.x = v199;
      v83 = v201;
      v244.origin.y = v201;
      v244.size.width = v24;
      v84 = v80 + CGRectGetMidX(v244);
      v245.origin.x = v82;
      v245.origin.y = v83;
      v245.size.width = v24;
      v245.size.height = v198;
      v85 = v84 - CGRectGetWidth(v245) * 0.5;
      v246.origin.x = v82;
      v246.origin.y = v83;
      v246.size.width = v24;
      v246.size.height = v198;
      v86 = v81 + CGRectGetMidY(v246);
      v247.origin.x = v82;
      v247.origin.y = v83;
      v25 = v198;
      v247.size.width = v24;
      v247.size.height = v198;
      v87 = v86 - CGRectGetHeight(v247) * 0.5;
      v248.origin.x = v85;
      v248.origin.y = v87;
      v248.size.width = v24;
      v248.size.height = v25;
      v304.origin.y = v202;
      v304.origin.x = v203;
      v304.size.width = v204;
      v304.size.height = v200;
      if (CGRectIntersectsRect(v248, v304))
      {
        do
        {
          v254.origin.x = v85;
          v254.origin.y = v87;
          v254.size.width = v24;
          v254.size.height = v25;
          v306.origin.x = v195;
          v306.origin.y = v196;
          v306.size.width = v193;
          v306.size.height = v197;
          if (CGRectIntersectsRect(v254, v306))
          {
            v255.origin.x = 0.0;
            v255.origin.y = 0.0;
            v94 = v192;
            v255.size.width = v192;
            v95 = v194;
            v255.size.height = v194;
            v96 = CGRectGetMidX(v255);
            v256.origin.x = 0.0;
            v256.origin.y = 0.0;
            v256.size.width = v94;
            v256.size.height = v95;
            v97 = CGRectGetWidth(v256);
            v257.origin.x = 0.0;
            v257.origin.y = 0.0;
            v257.size.width = v94;
            v257.size.height = v95;
            v189 = CGRectGetMidY(v257);
            v258.origin.x = 0.0;
            v258.origin.y = 0.0;
            v258.size.width = v94;
            v258.size.height = v95;
            v98 = CGRectGetHeight(v258);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_7AD2C(0, *(v47 + 2) + 1, 1, v47);
            }

            v100 = *(v47 + 2);
            v99 = *(v47 + 3);
            if (v100 >= v99 >> 1)
            {
              v47 = sub_7AD2C((v99 > 1), v100 + 1, 1, v47);
            }

            v88 = 0.5;
            v101 = v81 + v189 - v98 * 0.5;
            *(v47 + 2) = v100 + 1;
            v102 = &v47[32 * v100];
            v102[4] = v80 + v96 - v97 * 0.5;
            v102[5] = v101;
            v103 = v194;
            v102[6] = v192;
            v102[7] = v103;
          }

          else
          {
            v88 = 0.5;
          }

          v80 = v191 + v80;
          v81 = v190 + v81;
          v89 = v199;
          v249.origin.x = v199;
          v90 = v201;
          v249.origin.y = v201;
          v249.size.width = v24;
          v91 = v198;
          v249.size.height = v198;
          v92 = v80 + CGRectGetMidX(v249);
          v250.origin.x = v89;
          v250.origin.y = v90;
          v250.size.width = MinX;
          v250.size.height = v91;
          v85 = v92 - CGRectGetWidth(v250) * v88;
          v251.origin.x = v89;
          v251.origin.y = v90;
          v251.size.width = MinX;
          v251.size.height = v91;
          v93 = v81 + CGRectGetMidY(v251);
          v252.origin.x = v89;
          v252.origin.y = v90;
          v25 = v91;
          v24 = MinX;
          v252.size.width = MinX;
          v252.size.height = v25;
          v87 = v93 - CGRectGetHeight(v252) * v88;
          v253.origin.x = v85;
          v253.origin.y = v87;
          v253.size.width = v24;
          v253.size.height = v25;
          v305.origin.y = v202;
          v305.origin.x = v203;
          v305.size.width = v204;
          v305.size.height = v200;
        }

        while (CGRectIntersectsRect(v253, v305));
      }

      v49 = v184 + cosval;
      v50 = v183 + sinval;
      v53 = v199;
      v224.origin.x = v199;
      v52 = v201;
      v224.origin.y = v201;
      v224.size.width = v24;
      v224.size.height = v25;
      v54 = v49 + CGRectGetMidX(v224);
      v225.origin.x = v53;
      v225.origin.y = v52;
      v225.size.width = v24;
      v225.size.height = v25;
      v48 = 0.5;
      v189 = v54 - CGRectGetWidth(v225) * 0.5;
      v226.origin.x = v53;
      v226.origin.y = v52;
      v226.size.width = v24;
      v226.size.height = v25;
      v55 = v50 + CGRectGetMidY(v226);
      v227.origin.x = v53;
      v227.origin.y = v52;
      v227.size.width = v24;
      v227.size.height = v25;
      v228.origin.y = v55 - CGRectGetHeight(v227) * 0.5;
      v228.origin.x = v189;
      v228.size.width = v24;
      v228.size.height = v25;
      v300.origin.y = v202;
      v300.origin.x = v203;
      v300.size.width = v204;
      v51 = v200;
      v300.size.height = v200;
    }

    while (CGRectIntersectsRect(v228, v300));
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
    v52 = v201;
    v53 = v199;
  }

  v104 = __sincos_stret(v182 + -1.57079633);
  v184 = v104.__cosval * v177 - v179;
  v105 = MidX + v184;
  v183 = v104.__sinval * v177 - v178;
  v106 = MidY + v183;
  v259.origin.x = v53;
  v259.origin.y = v52;
  v259.size.width = v24;
  v259.size.height = v25;
  v107 = CGRectGetMidX(v259);
  sinval = v105;
  v108 = v105 + v107;
  v260.origin.x = v53;
  v260.origin.y = v52;
  v260.size.width = v24;
  v260.size.height = v25;
  v109 = v53;
  v110 = v108 - CGRectGetWidth(v260) * 0.5;
  v261.origin.x = v109;
  v261.origin.y = v52;
  v261.size.width = v24;
  v261.size.height = v25;
  v111 = CGRectGetMidY(v261);
  cosval = v106;
  v112 = v106 + v111;
  v262.origin.x = v109;
  v262.origin.y = v52;
  v262.size.width = v24;
  v262.size.height = v25;
  v263.origin.y = v112 - CGRectGetHeight(v262) * 0.5;
  v307.size.height = v200;
  v263.origin.x = v110;
  v263.size.width = v24;
  v263.size.height = v25;
  v307.origin.y = v202;
  v307.origin.x = v203;
  v307.size.width = v204;
  if (CGRectIntersectsRect(v263, v307))
  {
    v113 = sinval;
    v114 = cosval;
    v115 = v199;
    do
    {
      v269.origin.x = v115;
      v269.origin.y = v52;
      v269.size.width = v24;
      v269.size.height = v25;
      v119 = v113 + CGRectGetMidX(v269);
      v270.origin.x = v115;
      v270.origin.y = v52;
      v270.size.width = v24;
      v270.size.height = v25;
      v120 = v119 - CGRectGetWidth(v270) * 0.5;
      v271.origin.x = v115;
      v271.origin.y = v52;
      v271.size.width = v24;
      v271.size.height = v25;
      v121 = v114 + CGRectGetMidY(v271);
      v272.origin.x = v115;
      v272.origin.y = v52;
      v272.size.width = v24;
      v272.size.height = v25;
      v122 = v121 - CGRectGetHeight(v272) * 0.5;
      v273.origin.x = v120;
      v273.origin.y = v122;
      v273.size.width = v24;
      v273.size.height = v25;
      v309.origin.y = v202;
      v309.origin.x = v203;
      v309.size.width = v204;
      v309.size.height = v200;
      v123 = CGRectIntersectsRect(v273, v309);
      sinval = v113;
      cosval = v114;
      if (v123)
      {
        v189 = v113;
        do
        {
          v279.origin.x = v120;
          v279.origin.y = v122;
          v279.size.width = v24;
          v279.size.height = v25;
          v311.origin.x = v195;
          v311.origin.y = v196;
          v311.size.width = v193;
          v311.size.height = v197;
          if (CGRectIntersectsRect(v279, v311))
          {
            v280.origin.x = 0.0;
            v280.origin.y = 0.0;
            v132 = v192;
            v280.size.width = v192;
            v133 = v194;
            v280.size.height = v194;
            v134 = CGRectGetMidX(v280);
            v281.origin.x = 0.0;
            v281.origin.y = 0.0;
            v281.size.width = v132;
            v281.size.height = v133;
            v135 = CGRectGetWidth(v281);
            v282.origin.x = 0.0;
            v282.origin.y = 0.0;
            v282.size.width = v132;
            v282.size.height = v133;
            v136 = CGRectGetMidY(v282);
            v283.origin.x = 0.0;
            v283.origin.y = 0.0;
            v283.size.width = v132;
            v283.size.height = v133;
            v137 = CGRectGetHeight(v283);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_7AD2C(0, *(v47 + 2) + 1, 1, v47);
            }

            v139 = *(v47 + 2);
            v138 = *(v47 + 3);
            v140 = 0.5;
            v125 = v189;
            if (v139 >= v138 >> 1)
            {
              v145 = sub_7AD2C((v138 > 1), v139 + 1, 1, v47);
              v140 = 0.5;
              v47 = v145;
            }

            v141 = v125 + v134 - v135 * v140;
            v142 = v114 + v136;
            v124 = 0.5;
            *(v47 + 2) = v139 + 1;
            v143 = &v47[32 * v139];
            v143[4] = v141;
            v143[5] = v142 - v137 * 0.5;
            v144 = v194;
            v143[6] = v192;
            v143[7] = v144;
          }

          else
          {
            v124 = 0.5;
            v125 = v189;
          }

          v126 = v188 + v125;
          v114 = v187 + v114;
          v25 = v198;
          v127 = v199;
          v274.origin.x = v199;
          v128 = v201;
          v274.origin.y = v201;
          v24 = MinX;
          v274.size.width = MinX;
          v274.size.height = v198;
          v129 = CGRectGetMidX(v274);
          v189 = v126;
          v130 = v126 + v129;
          v275.origin.x = v127;
          v275.origin.y = v128;
          v275.size.width = v24;
          v275.size.height = v25;
          v120 = v130 - CGRectGetWidth(v275) * v124;
          v276.origin.x = v127;
          v276.origin.y = v128;
          v276.size.width = v24;
          v276.size.height = v25;
          v131 = v114 + CGRectGetMidY(v276);
          v277.origin.x = v127;
          v277.origin.y = v128;
          v277.size.width = v24;
          v277.size.height = v25;
          v122 = v131 - CGRectGetHeight(v277) * v124;
          v278.origin.x = v120;
          v278.origin.y = v122;
          v278.size.width = v24;
          v278.size.height = v25;
          v310.origin.y = v202;
          v310.origin.x = v203;
          v310.size.width = v204;
          v310.size.height = v200;
        }

        while (CGRectIntersectsRect(v278, v310));
      }

      v146 = v191 + sinval;
      v147 = v190 + cosval;
      v148 = v199;
      v284.origin.x = v199;
      v284.origin.y = v201;
      v284.size.width = v24;
      v284.size.height = v25;
      v149 = CGRectGetMidX(v284);
      v189 = v146;
      v150 = v146 + v149;
      v285.origin.x = v148;
      v285.origin.y = v201;
      v285.size.width = v24;
      v285.size.height = v25;
      v151 = v150 - CGRectGetWidth(v285) * 0.5;
      v286.origin.x = v148;
      v286.origin.y = v201;
      v286.size.width = v24;
      v286.size.height = v25;
      v152 = v147 + CGRectGetMidY(v286);
      v287.origin.x = v148;
      v52 = v201;
      v287.origin.y = v201;
      v287.size.width = v24;
      v287.size.height = v25;
      v153 = v152 - CGRectGetHeight(v287) * 0.5;
      v288.origin.x = v151;
      v288.origin.y = v153;
      v288.size.width = v24;
      v288.size.height = v25;
      v312.origin.y = v202;
      v312.origin.x = v203;
      v312.size.width = v204;
      v312.size.height = v200;
      if (CGRectIntersectsRect(v288, v312))
      {
        do
        {
          v294.origin.x = v151;
          v294.origin.y = v153;
          v294.size.width = v24;
          v294.size.height = v25;
          v314.origin.x = v195;
          v314.origin.y = v196;
          v314.size.width = v193;
          v314.size.height = v197;
          if (CGRectIntersectsRect(v294, v314))
          {
            v295.origin.x = 0.0;
            v295.origin.y = 0.0;
            v161 = v192;
            v295.size.width = v192;
            v162 = v194;
            v295.size.height = v194;
            v163 = CGRectGetMidX(v295);
            v296.origin.x = 0.0;
            v296.origin.y = 0.0;
            v296.size.width = v161;
            v296.size.height = v162;
            v164 = CGRectGetWidth(v296);
            v297.origin.x = 0.0;
            v297.origin.y = 0.0;
            v297.size.width = v161;
            v297.size.height = v162;
            v165 = CGRectGetMidY(v297);
            v298.origin.x = 0.0;
            v298.origin.y = 0.0;
            v298.size.width = v161;
            v298.size.height = v162;
            v166 = CGRectGetHeight(v298);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_7AD2C(0, *(v47 + 2) + 1, 1, v47);
            }

            v168 = *(v47 + 2);
            v167 = *(v47 + 3);
            v169 = 0.5;
            v155 = v189;
            if (v168 >= v167 >> 1)
            {
              v174 = sub_7AD2C((v167 > 1), v168 + 1, 1, v47);
              v169 = 0.5;
              v47 = v174;
            }

            v170 = v155 + v163 - v164 * v169;
            v171 = v147 + v165;
            v154 = 0.5;
            *(v47 + 2) = v168 + 1;
            v172 = &v47[32 * v168];
            v172[4] = v170;
            v172[5] = v171 - v166 * 0.5;
            v173 = v194;
            v172[6] = v192;
            v172[7] = v173;
          }

          else
          {
            v154 = 0.5;
            v155 = v189;
          }

          v156 = v191 + v155;
          v147 = v190 + v147;
          v25 = v198;
          v157 = v199;
          v289.origin.x = v199;
          v52 = v201;
          v289.origin.y = v201;
          v24 = MinX;
          v289.size.width = MinX;
          v289.size.height = v198;
          v158 = CGRectGetMidX(v289);
          v189 = v156;
          v159 = v156 + v158;
          v290.origin.x = v157;
          v290.origin.y = v52;
          v290.size.width = v24;
          v290.size.height = v25;
          v151 = v159 - CGRectGetWidth(v290) * v154;
          v291.origin.x = v157;
          v291.origin.y = v52;
          v291.size.width = v24;
          v291.size.height = v25;
          v160 = v147 + CGRectGetMidY(v291);
          v292.origin.x = v157;
          v292.origin.y = v52;
          v292.size.width = v24;
          v292.size.height = v25;
          v153 = v160 - CGRectGetHeight(v292) * v154;
          v293.origin.x = v151;
          v293.origin.y = v153;
          v293.size.width = v24;
          v293.size.height = v25;
          v313.origin.y = v202;
          v313.origin.x = v203;
          v313.size.width = v204;
          v313.size.height = v200;
        }

        while (CGRectIntersectsRect(v293, v313));
      }

      v113 = v184 + sinval;
      v114 = v183 + cosval;
      v115 = v199;
      v264.origin.x = v199;
      v264.origin.y = v52;
      v264.size.width = v24;
      v264.size.height = v25;
      v116 = v113 + CGRectGetMidX(v264);
      v265.origin.x = v115;
      v265.origin.y = v52;
      v265.size.width = v24;
      v265.size.height = v25;
      v117 = v116 - CGRectGetWidth(v265) * 0.5;
      v266.origin.x = v115;
      v266.origin.y = v52;
      v266.size.width = v24;
      v266.size.height = v25;
      v118 = v114 + CGRectGetMidY(v266);
      v267.origin.x = v115;
      v267.origin.y = v52;
      v267.size.width = v24;
      v267.size.height = v25;
      v268.origin.y = v118 - CGRectGetHeight(v267) * 0.5;
      v268.origin.x = v117;
      v268.size.width = v24;
      v268.size.height = v25;
      v308.origin.y = v202;
      v308.origin.x = v203;
      v308.size.width = v204;
      v308.size.height = v200;
    }

    while (CGRectIntersectsRect(v268, v308));
  }

  return v47;
}

__n128 sub_18D298(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18D2C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18D30C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_18D374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_18D398(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18D3E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_18D488(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_396E8();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_18D51C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_18D570();
}

id sub_18D570()
{
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == &dword_0 + 2)
    {
      if (qword_93C518 != -1)
      {
        swift_once();
      }

      v4 = &qword_99B450;
    }

    else
    {
      if (qword_93C510 != -1)
      {
        swift_once();
      }

      v4 = &qword_99B448;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_18D748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_18D7B0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView;
  *&v4[v14] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v46.receiver = v4;
  v46.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  [v15 setClipsToBounds:0];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView;
  v21 = *(*&v15[OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_titleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v22 = v21;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23 = *(v11 + 8);
  v23(v13, v10);
  v24 = *(*&v15[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_subtitleLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = v24;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v26 = *(*&v15[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v27 = v26;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v28 = *(*&v15[v20] + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_ordinalLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = v28;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v30 = *&v15[v20];
  v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_headingLabel);
  if (v31)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v32 = v31;
    sub_768C10();
    sub_BDD0(&v42);
    sub_BDD0(&v44);
    sub_769E70();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v33 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_tertiaryTitleLabel);
  if (v33)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v34 = v33;
    sub_768C10();
    sub_BDD0(&v42);
    sub_BDD0(&v44);
    sub_769E70();

    v23(v13, v10);
    v30 = *&v15[v20];
  }

  v35 = *(v30 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_offerLabel);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v36 = v35;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v37 = *&v15[v20];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v38 = v37;
  sub_768C10();
  sub_BDD0(&v42);
  sub_BDD0(&v44);
  sub_769E70();

  v23(v13, v10);
  v39 = [v15 contentView];
  [v39 setClipsToBounds:0];

  v40 = [v15 contentView];
  [v40 addSubview:*&v15[v20]];

  return v15;
}

double sub_18E068()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider19TodayCardLockupView_metrics;
  swift_beginAccess();
  return *v1;
}

void sub_18E0C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider38TodayCardSmallLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  sub_759050();

  v4 = *(v1 + v2);
  sub_759210();
  sub_18E204(&qword_945810, 255, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_75A0C0();
}

uint64_t sub_18E1AC(uint64_t a1, uint64_t a2)
{
  result = sub_18E204(&qword_947BE8, a2, type metadata accessor for TodayCardSmallLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18E204(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

char *sub_18E24C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews] = _swiftEmptyArrayStorage;
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex];
  *v12 = 0;
  v12[8] = 1;
  sub_760140();
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_parallaxY] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress] = 0;
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isVoiceOverRunning] = UIAccessibilityIsVoiceOverRunning();
  v4[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isReducedMotionEnabled] = UIAccessibilityIsReduceMotionEnabled();
  v33.receiver = v4;
  v33.super_class = type metadata accessor for HeroCarouselView();
  v13 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView;
  *(*&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView] + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pagingDelegate + 8) = &off_8869A0;
  swift_unknownObjectWeakAssign();
  v19 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl;
  [*&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl] setAllowsContinuousInteraction:0];
  [*&v17[v19] setBackgroundStyle:2];
  *(*&v17[v19] + OBJC_IVAR____TtC18ASMessagesProviderP33_7801CE2CD236390AE6FA8ADBE4D2096411PageControl_delegate + 8) = &off_886990;
  swift_unknownObjectWeakAssign();
  [*&v17[v19] setOverrideUserInterfaceStyle:2];
  v20 = *&v17[v19];
  [v20 addTarget:v17 action:"pageControlDidChange" forControlEvents:4096];

  v21 = sub_7653A0();
  v32[3] = v21;
  v32[4] = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v22 = sub_B1B4(v32);
  (*(*(v21 - 8) + 104))(v22, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v21);
  LOBYTE(v21) = sub_765C30();
  sub_BEB8(v32);
  if (v21)
  {
    v23 = [objc_allocWithZone(UIPageControlTimerProgress) initWithPreferredDuration:COERCE_DOUBLE(1)];
    v24 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress;
    v25 = *&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress];
    *&v17[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress] = v23;

    v26 = *&v17[v24];
    if (v26)
    {
      [v26 setDelegate:v17];
      v27 = *&v17[v24];
    }

    else
    {
      v27 = 0;
    }

    [*&v17[v19] setProgress:v27];
    sub_190088();
  }

  [v17 addSubview:*&v17[v18]];
  [v17 addSubview:*&v17[v19]];
  v28 = objc_opt_self();
  v29 = [v28 defaultCenter];
  [v29 addObserver:v17 selector:"reduceMotionStatusDidChange:" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v30 = [v28 defaultCenter];
  [v30 addObserver:v17 selector:"voiceOverStatusDidChange:" name:UIAccessibilityVoiceOverStatusDidChangeNotification object:0];

  return v17;
}

void sub_18E6FC(char a1)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) = a1;
  v3 = sub_7653A0();
  v12 = v3;
  v4 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v13 = v4;
  v5 = sub_B1B4(v11);
  v6 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v7 = *(*(v3 - 8) + 104);
  v7(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v3);
  v8 = sub_765C30();
  sub_BEB8(v11);
  if ((v8 & 1) == 0)
  {
    if (*(v1 + v2))
    {
      if (!*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
      {
        sub_18F7B4(0.0);
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v9 = sub_B1B4(v11);
      v7(v9, v6, v3);
      v10 = sub_765C30();
      sub_BEB8(v11);
      if ((v10 & 1) == 0)
      {
        sub_191690(0);
      }
    }
  }
}

void sub_18E850()
{
  v1 = sub_7653A0();
  v10 = v1;
  v2 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v11 = v2;
  v3 = sub_B1B4(v9);
  v4 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v5 = *(*(v1 - 8) + 104);
  v5(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  v6 = sub_765C30();
  sub_BEB8(v9);
  if ((v6 & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) == 1)
    {
      if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
      {
        v10 = v1;
        v11 = v2;
        v7 = sub_B1B4(v9);
        v5(v7, v4, v1);
        v8 = sub_765C30();
        sub_BEB8(v9);
        if ((v8 & 1) == 0)
        {
          sub_191690(0);
        }
      }
    }

    else if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) == 1 && !*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
    {
      sub_18F7B4(0.0);
    }
  }
}

id sub_18E9CC()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HeroCarouselView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView];
  sub_75D650();
  [v1 setFrame:?];
  sub_75D650();
  sub_769D10();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl];
  [v10 sizeThatFits:{v6, v8}];
  v12 = v11;
  v14 = v13;
  v18.origin.x = v3;
  v18.origin.y = v5;
  v18.size.width = v7;
  v18.size.height = v9;
  v15 = CGRectGetMidX(v18) + v12 * -0.5;
  v19.origin.x = v3;
  v19.origin.y = v5;
  v19.size.width = v7;
  v19.size.height = v9;
  return [v10 setFrame:{v15, CGRectGetMaxY(v19) - v14, v12, v14}];
}

id sub_18EB5C()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);
  v2 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl) currentPage];
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_76A770();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v6 + 24) == v2)
      {

        v9 = *(v6 + 32);

        return v9;
      }

      ++v5;
    }

    while (v7 != v4);
  }

  return 0;
}

id sub_18ECA0(unint64_t a1, unint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews;
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
  {

    if (!i)
    {
      break;
    }

    v7 = 0;
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
          goto LABEL_38;
        }

        v8 = *(v4 + 8 * v7 + 32);
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
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

LABEL_12:

  *&v26[v5] = a1;

  v11 = a1 >> 62;
  if (a1 >> 62)
  {
    v4 = sub_76A860();
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  swift_bridgeObjectRetain_n();
  if (v4)
  {
    v12 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = sub_76A770();
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      else
      {
        if (v12 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_40;
        }

        v13 = *(a1 + 8 * v12 + 32);
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_39;
        }
      }

      v15 = *&v26[v5];
      if (v15 >> 62)
      {
        v24 = v11;
        v18 = v13;
        v16 = sub_76A860();
        v13 = v18;
        v11 = v24;
      }

      else
      {
        v16 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
      }

      v17 = 32.0;
      if (v16 <= 1)
      {
        v17 = 20.0;
      }

      *&v13[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayBottomInset] = v17;

      ++v12;
    }

    while (v14 != v4);
  }

  v19 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl];
  if (v11)
  {
    v20 = sub_76A860();
  }

  else
  {
    v20 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  [v19 setNumberOfPages:v20];
  v21 = *&v26[v5];
  if (v21 >> 62)
  {
    v22 = sub_76A860();
  }

  else
  {
    v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  }

  [v19 setHidden:v22 < 2];
  sub_543AD0(a1, a2);

  return [v26 setNeedsLayout];
}

uint64_t sub_18EF88(int a1, int a2)
{
  v48 = sub_7602A0();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
  if (v7 >> 62)
  {
    goto LABEL_33;
  }

  v8 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  if (v8)
  {
    v9 = 0;
    v54 = v7 & 0xFFFFFFFFFFFFFF8;
    v55 = v7 & 0xC000000000000001;
    v52 = a1 & 1;
    v46 = v5 + 1;
    v49 = a2;
    v50 = a1;
    v51 = v7;
    v53 = v8;
    do
    {
      if (v55)
      {
        v20 = sub_76A770();
      }

      else
      {
        if (v9 >= *(v54 + 16))
        {
          goto LABEL_32;
        }

        v20 = *(v7 + 8 * v9 + 32);
      }

      v5 = v20;
      v21 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v8 = sub_76A860();
        goto LABEL_3;
      }

      v22 = OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView;
      v23 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_gradientView);
      v24 = v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient];
      v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient] = v52;
      if (v24 != (a1 & 1))
      {
        if ((a1 & 1) != 0 || v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] == 1)
        {
          v25 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
          [*&v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:0];
          [v23 bounds];
          sub_41BD4C(v26, v27);
          v29 = v28;
          v30 = *&v23[v25];
          sub_BE70(0, &qword_945820);

          isa = sub_769450().super.isa;

          [v30 setLocations:isa];

          v32 = *&v23[v25];

          sub_140730(v29);

          v33 = sub_769450().super.isa;
          a1 = v50;

          v34 = v32;
          v7 = v51;
          [v34 setColors:v33];

          v35 = *&v23[v25];
          a2 = v49;
          [v35 setNeedsDisplay];
        }

        else
        {
          [*&v23[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:1];
        }

        [v23 setNeedsLayout];
      }

      v36 = *(v5 + v22);
      if (a2)
      {
        if (!*(v5 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem) || (, v37 = sub_75BC00(), , !v37))
        {
          v43 = v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient];
          v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = 1;
          if (v43)
          {
            goto LABEL_7;
          }

          goto LABEL_5;
        }

        v38 = v47;
        sub_7602C0();

        v39 = sub_760290();
        (*v46)(v38, v48);
        v40 = v39 ^ 1;
        v7 = v51;
        v41 = v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = v40 & 1;
        if (v41 == (v40 & 1))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v40 = 0;
        v42 = v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient];
        v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsBottomGradient] = 0;
        if ((v42 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if ((v40 & 1) == 0 && !v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_wantsTopGradient])
      {
        [*&v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:1];
        goto LABEL_6;
      }

LABEL_5:
      v10 = OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient;
      [*&v36[OBJC_IVAR____TtC18ASMessagesProvider16HeroGradientView_gradient] setHidden:0];
      [v36 bounds];
      sub_41BD4C(v11, v12);
      v14 = v13;
      v15 = *&v36[v10];
      sub_BE70(0, &qword_945820);

      v16 = sub_769450().super.isa;

      [v15 setLocations:v16];

      v17 = *&v36[v10];

      sub_140730(v14);

      v18 = sub_769450().super.isa;
      v7 = v51;

      v19 = v17;
      a1 = v50;
      [v19 setColors:v18];

      [*&v36[v10] setNeedsDisplay];
LABEL_6:
      [v36 setNeedsLayout];
LABEL_7:

      ++v9;
    }

    while (v21 != v53);
  }
}

void sub_18F4D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex;
  v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_currentPageIndex);
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
  if (v4 >= [v5 currentPage])
  {
    v13 = *(v2 + v3);
    if ([v5 currentPage] >= v13)
    {
      return;
    }

    v14 = sub_7653A0();
    v26 = v14;
    v15 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
    v27 = v15;
    v16 = sub_B1B4(v25);
    v17 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v18 = *(*(v14 - 8) + 104);
    v18(v16, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
    v19 = sub_765C30();
    sub_BEB8(v25);
    if (v19)
    {
      v12 = 0;
      goto LABEL_9;
    }

    v26 = v14;
    v27 = v15;
    v23 = sub_B1B4(v25);
    v18(v23, v17, v14);
    v24 = sub_765C30();
    sub_BEB8(v25);
    v12 = 0;
    if (v24)
    {
      goto LABEL_9;
    }

LABEL_8:
    v22 = v12;
    sub_191690(0);
    v12 = v22;
    goto LABEL_9;
  }

  v6 = sub_7653A0();
  v26 = v6;
  v7 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v27 = v7;
  v8 = sub_B1B4(v25);
  v9 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
  v10 = *(*(v6 - 8) + 104);
  v10(v8, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v6);
  v11 = sub_765C30();
  sub_BEB8(v25);
  if ((v11 & 1) == 0)
  {
    v26 = v6;
    v27 = v7;
    v20 = sub_B1B4(v25);
    v10(v20, v9, v6);
    v21 = sub_765C30();
    sub_BEB8(v25);
    v12 = 1;
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v12 = 1;
LABEL_9:
  sub_543FF8(v12);
}

void sub_18F7B4(double a1)
{
  v3 = sub_768380();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_7683C0();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_7683E0();
  v39 = *(v46 - 8);
  __chkstk_darwin(v46);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v38 = &v37 - v9;
  v10 = sub_760180();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_7653A0();
  v50 = v14;
  v51 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v15 = sub_B1B4(&aBlock);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v14);
  LOBYTE(v14) = sub_765C30();
  sub_BEB8(&aBlock);
  if ((v14 & 1) == 0 && *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) == 1)
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration;
    swift_beginAccess();
    v17 = *(v11 + 16);
    v17(v13, v1 + v16, v10);
    v18 = sub_760150();
    v19 = *(v11 + 8);
    v19(v13, v10);
    if (v18)
    {
      v20 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
      if (v20 >> 62)
      {
        if (sub_76A860() < 2)
        {
          return;
        }
      }

      else if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)) < 2)
      {
        return;
      }

      if ((*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isVoiceOverRunning) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isReducedMotionEnabled) & 1) == 0 && !*(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer))
      {
        v17(v13, v1 + v16, v10);
        sub_760170();
        v22 = v21;
        v19(v13, v10);
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = sub_1918F0;
        v52 = v23;
        aBlock = _NSConcreteStackBlock;
        v48 = 1107296256;
        v49 = sub_123860;
        v50 = &unk_886A58;
        v24 = _Block_copy(&aBlock);
        v25 = objc_opt_self();

        v26 = [v25 timerWithTimeInterval:0 repeats:v24 block:v22];
        _Block_release(v24);

        v27 = v26;
        sub_191690(v26);

        if (a1 <= 0.0)
        {
          v36 = [objc_opt_self() currentRunLoop];
          [v36 addTimer:v27 forMode:NSRunLoopCommonModes];
        }

        else
        {
          sub_BE70(0, &qword_940340);
          v28 = sub_769970();
          sub_7683D0();
          v29 = v38;
          sub_768450();
          v39 = *(v39 + 8);
          (v39)(v7, v46);
          v30 = swift_allocObject();
          *(v30 + 16) = v27;
          v51 = sub_191930;
          v52 = v30;
          aBlock = _NSConcreteStackBlock;
          v48 = 1107296256;
          v49 = sub_23F0CC;
          v50 = &unk_886AA8;
          v31 = _Block_copy(&aBlock);
          v32 = v27;

          v33 = v40;
          sub_7683A0();
          aBlock = _swiftEmptyArrayStorage;
          sub_191938(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags);
          sub_BD88(&qword_940350);
          sub_4C874();
          v34 = v42;
          v35 = v45;
          sub_76A5A0();
          sub_769930();
          _Block_release(v31);

          (*(v44 + 8))(v34, v35);
          (*(v41 + 8))(v33, v43);
          (v39)(v29, v46);
        }
      }
    }
  }
}

void sub_18FF34(void *a1)
{
  if ([a1 isValid])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);

      sub_543FF8(1u);
    }

    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      sub_191690(0);
    }
  }
}

void sub_18FFEC(void *a1)
{
  if ([a1 isValid])
  {
    v2 = [objc_opt_self() currentRunLoop];
    [v2 addTimer:a1 forMode:NSRunLoopCommonModes];
  }
}

void sub_190088()
{
  ObjectType = swift_getObjectType();
  v1 = sub_7653A0();
  v10 = v1;
  v11 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v2 = sub_B1B4(v9);
  (*(*(v1 - 8) + 104))(v2, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v1);
  LOBYTE(v1) = sub_765C30();
  sub_BEB8(v9);
  if (v1)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = ObjectType;
    v11 = sub_1918D0;
    v12 = v4;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_123860;
    v10 = &unk_886A30;
    v5 = _Block_copy(v9);
    v6 = objc_opt_self();

    v7 = [v6 timerWithTimeInterval:1 repeats:v5 block:0.5];
    _Block_release(v5);

    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

void sub_1902A8()
{
  v3 = sub_760180();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [*(Strong + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl) currentPage];

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews);
      v12 = v10;

      if ((v11 & 0xC000000000000001) == 0)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v9 < *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          v14 = *(v11 + v9 + 4);
LABEL_7:
          v15 = v14;

          v11 = *&v15[OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_backgroundView];

          v16 = *(*(*(v11 + OBJC_IVAR____TtC18ASMessagesProvider30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
          if (!v16)
          {
            goto LABEL_35;
          }

          type metadata accessor for VideoView();
          v17 = swift_dynamicCastClass();
          if (!v17)
          {
            goto LABEL_35;
          }

          v18 = v17;
          v12 = v16;

          v19 = *(v18 + qword_9405B0);
          if (!v19)
          {
            v11 = v12;
            goto LABEL_35;
          }

          v11 = v19;
          v20 = sub_7599C0();
          if (!v20)
          {
LABEL_33:

LABEL_35:
            return;
          }

          v0 = v20;
          [v20 duration];
          Seconds = CMTimeGetSeconds(&time);
          [v0 currentTime];
          v2 = CMTimeGetSeconds(&time);
          if (vabdd_f64(v2, Seconds) > 0.5 || (swift_beginAccess(), (v21 = swift_unknownObjectWeakLoadStrong()) == 0) || (v22 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollConfiguration, v23 = v21, swift_beginAccess(), (*(v4 + 16))(v6, &v23[v22], v3), LOBYTE(v22) = sub_760150(), v23, (*(v4 + 8))(v6, v3), (v22 & 1) == 0) || (swift_beginAccess(), (v13 = swift_unknownObjectWeakLoadStrong()) == 0))
          {
LABEL_26:
            if (v2 / Seconds > 0.0)
            {
              v35 = v2 / Seconds;
            }

            else
            {
              v35 = 0.0;
            }

            swift_beginAccess();
            v36 = swift_unknownObjectWeakLoadStrong();
            if (v36)
            {
              v37 = *(v36 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress);
              v38 = v36;
              v39 = v37;

              if (v37)
              {
                *&v40 = v35;
                [v39 setCurrentProgress:v40];
              }
            }

            v12 = v0;
            goto LABEL_33;
          }

          v24 = *&v13[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews];
          if (!(v24 >> 62))
          {
            v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
            goto LABEL_17;
          }

LABEL_40:
          v41 = v13;
          v25 = sub_76A860();
          v13 = v41;
LABEL_17:

          if (v25 >= 2)
          {
            swift_beginAccess();
            v26 = swift_unknownObjectWeakLoadStrong();
            if (!v26 || (v27 = v26[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isVoiceOverRunning], v26, (v27 & 1) == 0))
            {
              swift_beginAccess();
              v28 = swift_unknownObjectWeakLoadStrong();
              if (!v28 || (v29 = v28[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isReducedMotionEnabled], v28, (v29 & 1) == 0))
              {
                swift_beginAccess();
                v30 = swift_unknownObjectWeakLoadStrong();
                if (!v30 || (v31 = v30[OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively], v30, (v31 & 1) == 0))
                {
                  swift_beginAccess();
                  v32 = swift_unknownObjectWeakLoadStrong();
                  if (v32)
                  {
                    v33 = v32;
                    v34 = *(v32 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView);

                    sub_543FF8(1u);
                  }
                }
              }
            }
          }

          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_40;
      }

      v14 = sub_76A770();
      goto LABEL_7;
    }
  }
}

void sub_1907E8(uint64_t a1, uint64_t a2)
{
  v5 = sub_7599B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_947D10);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v18[-1] - v11;
  v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
  v14 = [v13 currentPage];
  v15 = v2 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex;
  *v15 = v14;
  *(v15 + 8) = 0;
  [v13 setCurrentPage:a2];
  [v13 setNeedsLayout];
  v16 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_191788(v2 + v16, v19);
  if (v20)
  {
    sub_134D8(v19, v18);
    sub_1917F8(v19);
    sub_B170(v18, v18[3]);
    if (*(a1 + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_heroCarouselItem))
    {

      sub_75BBB0();

      (*(v6 + 32))(v12, v8, v5);
    }

    else
    {
      (*(v6 + 104))(v12, enum case for TitleEffect.none(_:), v5);
    }

    (*(v6 + 56))(v12, 0, 1, v5);
    sub_21C8B8(v12);
    sub_BEB8(v18);
  }

  else
  {
    sub_1917F8(v19);
  }

  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

uint64_t sub_190A64(uint64_t a1, uint64_t a2, id a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl);
  v8 = [v7 currentPage];
  v9 = v3 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex;
  *v9 = v8;
  *(v9 + 8) = 0;
  [v7 setCurrentPage:a3];
  [v7 setNeedsLayout];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  sub_191788(v3 + v10, v25);
  if (!v26)
  {
    return sub_1917F8(v25);
  }

  sub_134D8(v25, v24);
  sub_1917F8(v25);
  sub_B170(v24, v24[3]);
  v11 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers);
  v22 = OBJC_IVAR____TtC18ASMessagesProvider22HeroCarouselScrollView_pageTrackers;
  v23 = a1;
  if (v11 >> 62)
  {
    goto LABEL_37;
  }

  v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
LABEL_4:

  if (v12)
  {
    v13 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_76A770();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v13 >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          v12 = sub_76A860();
          goto LABEL_4;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }
      }

      if (*(v14 + 24) == a3)
      {

        a3 = *(v14 + 32);

        goto LABEL_18;
      }

      ++v13;
    }

    while (v15 != v12);
  }

  a3 = 0;
LABEL_18:
  v17 = *(v23 + v22);
  if (v17 >> 62)
  {
    v11 = sub_76A860();
  }

  else
  {
    v11 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  }

  if (v11)
  {
    v18 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = sub_76A770();
        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v18 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_36;
        }

        v19 = *(v17 + 8 * v18 + 32);

        v20 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }
      }

      if (*(v19 + 24) == a2)
      {
        break;
      }

      ++v18;
      if (v20 == v11)
      {
        goto LABEL_31;
      }
    }

    v21 = *(v19 + 32);
  }

  else
  {
LABEL_31:

    v21 = 0;
  }

  sub_21EAC4(v3, v21);

  return sub_BEB8(v24);
}

void sub_190E48(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = *a2;
  v6 = *(v3 + *a2);
  if (v6 != a3())
  {
    *(v3 + v5) = a3();
    v7 = sub_7653A0();
    v16 = v7;
    v8 = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
    v17 = v8;
    v9 = sub_B1B4(v15);
    v10 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v11 = *(*(v7 - 8) + 104);
    v11(v9, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v7);
    v12 = sub_765C30();
    sub_BEB8(v15);
    if ((v12 & 1) == 0)
    {
      if (*(v3 + v5) == 1)
      {
        v16 = v7;
        v17 = v8;
        v13 = sub_B1B4(v15);
        v11(v13, v10, v7);
        v14 = sub_765C30();
        sub_BEB8(v15);
        if ((v14 & 1) == 0)
        {
          sub_191690(0);
        }
      }

      else
      {
        sub_18F7B4(0.0);
      }
    }
  }
}

uint64_t sub_190FC4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_756CE0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_756CC0();
  v10 = a1;
  a4();

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for HeroCarouselView()
{
  result = qword_947CC0;
  if (!qword_947CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1911E8()
{
  result = sub_760180();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1912E4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = a1;
    sub_543FF8(a3);
    swift_unknownObjectRelease();
  }
}

id sub_1914B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_191528()
{
  v1 = v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControl;
  type metadata accessor for PageControl();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_scrollView;
  type metadata accessor for HeroCarouselScrollView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_carouselItemViews) = _swiftEmptyArrayStorage;
  v4 = v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_previousIndex;
  *v4 = 0;
  *(v4 + 8) = 1;
  sub_760140();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isAutoScrollEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_parallaxY) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_isUserPagingInteractively) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_pageControlProgress) = 0;
  sub_76A840();
  __break(1u);
}

void sub_191690(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider16HeroCarouselView_autoScrollTimer) = a1;
  v4 = sub_7653A0();
  v7[3] = v4;
  v7[4] = sub_191938(&qword_947D00, &type metadata accessor for Feature.iOS);
  v5 = sub_B1B4(v7);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  v6 = a1;
  LOBYTE(v4) = sub_765C30();
  sub_BEB8(v7);
  if ((v4 & 1) == 0)
  {
    [v3 invalidate];
  }
}

uint64_t sub_191788(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_94AB10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1917F8(uint64_t a1)
{
  v2 = sub_BD88(&unk_94AB10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191860()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_191898()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1918D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1918F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_191938(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191990(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = type metadata accessor for Accessory();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v7 - 8);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v31 = &v28 - v10;
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_BD88(&qword_947FE8);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  swift_beginAccess();
  v19 = *(v15 + 56);
  v33 = a1;
  sub_1ED18(a1, v17, &qword_93FF90);
  sub_1ED18(v2 + v18, &v17[v19], &qword_93FF90);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_10A2C(v17, &qword_93FF90);
      return;
    }
  }

  else
  {
    sub_1ED18(v17, v13, &qword_93FF90);
    if (v20(&v17[v19], 1, v4) != 1)
    {
      v26 = v29;
      sub_19CDC0(&v17[v19], v29, type metadata accessor for Accessory);
      v27 = sub_4E32FC(v13, v26);
      sub_19CCF0(v26, type metadata accessor for Accessory);
      sub_19CCF0(v13, type metadata accessor for Accessory);
      sub_10A2C(v17, &qword_93FF90);
      if (v27)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_19CCF0(v13, type metadata accessor for Accessory);
  }

  sub_10A2C(v17, &qword_947FE8);
LABEL_7:
  v21 = v33;
  v22 = v31;
  sub_1ED18(v33, v31, &qword_93FF90);
  swift_beginAccess();
  sub_19CD50(v22, v2 + v18);
  swift_endAccess();
  v23 = v32;
  sub_1ED18(v21, v32, &qword_93FF90);
  if (v20(v23, 1, v4) == 1)
  {
    sub_10A2C(v23, &qword_93FF90);
    sub_191F24(0);
  }

  else
  {
    sub_4E0248(v30);
    v25 = v24;
    sub_19CCF0(v23, type metadata accessor for Accessory);
    sub_191F24(v25);
  }
}

void sub_191DE8(void *a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_760AD0();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *&v4[v11];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v4[v11];
  }

  else
  {
    v13 = 0;
  }

  *&v4[v11] = a1;
  v14 = a1;

  if (a1)
  {
    (*(v7 + 104))(v10, enum case for DirectionalTextAlignment.leading(_:), v6);
    sub_75BA90();
    [v4 addSubview:v14];
  }
}

void sub_191F24(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView;
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v4)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 removeTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    v6 = *&v1[v3];
    if (v6)
    {
      [v6 removeFromSuperview];
      v4 = *&v1[v3];
    }

    else
    {
      v4 = 0;
    }
  }

  *&v1[v3] = a1;
  v8 = a1;

  if (a1)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 addTarget:v1 action:"didTapWithAccessoryView:" forControlEvents:64];
    }

    [v1 addSubview:v8];
  }
}

char *sub_192054(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v119 = sub_760AD0();
  v118 = *(v119 - 8);
  __chkstk_darwin(v119);
  v117 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v116 = &v99 - v12;
  v115 = sub_75CFE0();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v121 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_9439D8);
  __chkstk_darwin(v14 - 8);
  v120 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v99 - v17;
  v19 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v19 - 8);
  v111 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v99 - v22;
  v122 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v102 = *(v122 - 8);
  __chkstk_darwin(v122);
  v110 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v106 = &v99 - v25;
  __chkstk_darwin(v26);
  v105 = (&v99 - v27);
  v28 = sub_BD88(&unk_948010);
  __chkstk_darwin(v28 - 8);
  v30 = &v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v99 - v32;
  v113 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v113);
  v108 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v99 - v36;
  v37 = sub_768C60();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v99 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText];
  *v41 = 0;
  v41[1] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView] = 0;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  v43 = type metadata accessor for Accessory();
  (*(*(v43 - 8) + 56))(&v5[v42], 1, 1, v43);
  v44 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  *v45 = UIEdgeInsetsZero.top;
  v45[1] = left;
  v45[2] = bottom;
  v45[3] = right;
  v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  sub_75BB20();
  v49 = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] = v49;
  memset(v125, 0, sizeof(v125));
  memset(v124, 0, sizeof(v124));
  v50 = v49;
  sub_768C30();
  sub_10A2C(v124, &unk_93FBD0);
  sub_10A2C(v125, &unk_93FBD0);
  sub_769E70();

  (*(v38 + 8))(v40, v37);
  v51 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView] = v51;
  v109 = v5;
  v52 = &v5[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines];
  *v52 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v52[1] = 0;
  v53 = sub_759810();
  v54 = *(v53 - 8);
  (*(v54 + 56))(v33, 1, 1, v53);
  v55 = sub_75CFD0();
  v100 = *(v55 - 8);
  v56 = *(v100 + 56);
  v103 = v18;
  v101 = v55;
  v56(v18, 1, 1);
  v104 = v33;
  sub_1ED18(v33, v30, &unk_948010);
  if ((*(v54 + 48))(v30, 1, v53) == 1)
  {
    sub_10A2C(v30, &unk_948010);
    v57 = 0;
  }

  else
  {
    v57 = sub_7597B0();
    (*(v54 + 8))(v30, v53);
  }

  v58 = v105;
  sub_5E740C(v57, v105);

  if (qword_93DE38 != -1)
  {
    swift_once();
  }

  v59 = v122;
  v60 = sub_BE38(v122, qword_9A01C0);
  v61 = v107;
  (*(v102 + 56))(v107, 1, 1, v59);
  v62 = v106;
  sub_19CE28(v58, v106, type metadata accessor for TitleHeaderView.TextConfiguration);
  v63 = v110;
  sub_19CE28(v60, v110, type metadata accessor for TitleHeaderView.TextConfiguration);
  v64 = v111;
  sub_1ED18(v61, v111, &qword_9439E0);
  v65 = v103;
  sub_1ED18(v103, v120, &qword_9439D8);
  v66 = v114;
  v67 = v115;
  (*(v114 + 104))(v121, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v115);
  v102 = sub_BE70(0, &qword_93E540);
  v99 = sub_769FB0();
  sub_10A2C(v65, &qword_9439D8);
  sub_10A2C(v61, &qword_9439E0);
  sub_19CCF0(v58, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(v104, &unk_948010);
  v68 = v113;
  v69 = *(v113 + 32);
  v70 = v108;
  sub_19CDC0(v62, v108, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_19CDC0(v63, v70 + v68[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_109C4(v64, v70 + v68[6], &qword_9439E0);
  *(v70 + v68[7]) = 1;
  *(v70 + v69) = 0;
  *(v70 + v68[9]) = 0;
  *(v70 + v68[14]) = 0x4030000000000000;
  *(v70 + v68[12]) = 0;
  *(v70 + v68[13]) = v99;
  v71 = v120;
  (*(v66 + 32))(v70 + v68[11], v121, v67);
  v72 = v100;
  v73 = v101;
  if ((*(v100 + 48))(v71, 1, v101) == 1)
  {
    sub_10A2C(v71, &qword_9439D8);
    (*(v72 + 104))(v70 + v68[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v73);
  }

  else
  {
    (*(v72 + 32))(v70 + v68[10], v71, v73);
  }

  v74 = v112;
  sub_19CDC0(v70, v112, type metadata accessor for TitleHeaderView.Style);
  v75 = v109;
  sub_19CDC0(v74, v109 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style, type metadata accessor for TitleHeaderView.Style);
  v76 = type metadata accessor for TitleHeaderView(0);
  v123.receiver = v75;
  v123.super_class = v76;
  v77 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  v78 = [v77 layer];
  [v78 setAllowsGroupOpacity:0];

  [v77 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v77 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  v79 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView;
  v80 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView];
  v81 = sub_769FB0();
  [v80 setBackgroundColor:v81];

  [v77 addSubview:*&v77[v79]];
  v82 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  v83 = *&v77[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
  v84 = &v77[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style];
  swift_beginAccess();
  [v83 setTextColor:*&v84[v68[5]]];
  v85 = *&v77[v82];
  v86 = v68[5] + *(v122 + 24);
  v87 = sub_7666D0();
  v88 = v68;
  v89 = *(v87 - 8);
  v90 = &v84[v86];
  v91 = v116;
  (*(v89 + 16))(v116, v90, v87);
  (*(v89 + 56))(v91, 0, 1, v87);
  v92 = v85;
  sub_75BA40();

  v93 = *&v77[v82];
  sub_75BAD0();

  v94 = [*&v77[v82] layer];
  if (*&v84[v88[5] + 16])
  {

    v95 = sub_769210();
  }

  else
  {
    v95 = 0;
  }

  [v94 setCompositingFilter:v95];

  swift_unknownObjectRelease();
  v96 = *&v77[v82];
  (*(v118 + 104))(v117, enum case for DirectionalTextAlignment.leading(_:), v119);
  v97 = v96;
  sub_75BA90();

  [v77 addSubview:*&v77[v82]];
  return v77;
}

void sub_192F94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);
  if (a2)
  {
    if (v3)
    {
      v4 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText) == a1 && v3 == a2;
      if (v4 || (sub_76A950() & 1) != 0)
      {
        return;
      }
    }
  }

  else if (!v3)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel;
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
  if (v6)
  {
    [v6 removeFromSuperview];
    v6 = *(v2 + v5);
  }

  *(v2 + v5) = 0;
}

void sub_193028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_760AD0();
  v52 = *(v6 - 8);
  v53 = v6;
  __chkstk_darwin(v6);
  v51 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v8 - 8);
  v10 = v45 - v9;
  v50 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v50);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (v45 - v14);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v16);
  v18 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = v45 - v21;
  v23 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8);
  if (v23)
  {
    if (!a2 || (*(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText) == a1 ? (v24 = v23 == a2) : (v24 = 0), !v24 && (v25 = v20, v26 = sub_76A950(), v20 = v25, (v26 & 1) == 0)))
    {
      v49 = v20;
      sub_75BB20();

      v27 = sub_75BB00();
      [v27 setNumberOfLines:1];
      v28 = sub_769210();

      [v27 setText:v28];

      v29 = sub_75BAD0();
      v30 = ((swift_isaMask & *v3) + 448);
      v31 = *&stru_1A8.segname[(swift_isaMask & *v3) + 8];
      (v31)(v29);
      v47 = v18;
      v48 = v12;
      v45[1] = v30;
      v46 = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_19CE28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v22, type metadata accessor for TitleHeaderView.Style);
      v32 = *v15;
      v45[0] = type metadata accessor for TitleHeaderView.TextConfiguration;
      sub_19CCF0(v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      [v27 setTextColor:v32];

      v31();
      sub_19CE28(v22, v15, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v22, type metadata accessor for TitleHeaderView.Style);
      v33 = *(v50 + 24);
      v34 = sub_7666D0();
      v35 = *(v34 - 8);
      (*(v35 + 16))(v10, v15 + v33, v34);
      v36 = v45[0];
      sub_19CCF0(v15, v45[0]);
      (*(v35 + 56))(v10, 0, 1, v34);
      sub_75BA40();
      v37 = [v27 layer];
      v38 = v47;
      v31();
      v39 = v38 + *(v49 + 20);
      v40 = v38;
      v41 = v48;
      sub_19CE28(v39, v48, v46);
      sub_19CCF0(v40, type metadata accessor for TitleHeaderView.Style);
      v42 = *(v41 + 16);

      sub_19CCF0(v41, v36);
      if (v42)
      {
        v43 = sub_769210();
      }

      else
      {
        v43 = 0;
      }

      [v37 setCompositingFilter:v43];

      swift_unknownObjectRelease();
      (*(v52 + 104))(v51, enum case for DirectionalTextAlignment.leading(_:), v53);
      sub_75BA90();
      [v3 addSubview:v27];
      v44 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
      *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel) = v27;
    }
  }
}

void sub_1935C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork])
  {
    if (a1)
    {
      sub_765390();
      sub_19CCA8(&qword_947FE0, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = sub_7691C0();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_759210();
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_7652E0();
    sub_7591B0();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView] = v6;
  }
}

void sub_193768(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = v3;
  v6 = *(v3 + *a2);
  if (a1)
  {
    if (v6)
    {
      sub_765390();
      sub_19CCA8(&qword_947FE0, &type metadata accessor for Artwork);

      v7 = sub_7691C0();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v8 = *a3;
  v9 = *(v5 + *a3);
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *(v5 + v8);
  }

  else
  {
    v10 = 0;
  }

  *(v5 + v8) = 0;
}

void sub_193868(uint64_t a1)
{
  v2 = v1;
  v4 = sub_7652D0();
  __chkstk_darwin(v4 - 8);
  if (*&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork])
  {
    if (a1)
    {
      sub_765390();
      sub_19CCA8(&qword_947FE0, &type metadata accessor for Artwork);
      swift_retain_n();
      v5 = sub_7691C0();

      if (v5)
      {

        return;
      }
    }

    else
    {
    }

    sub_759210();
    v6 = sub_759020();
    sub_7652E0();
    sub_7591B0();
    [v2 addSubview:v6];

    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];
    *&v2[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView] = v6;
  }
}

id sub_1939E8(uint64_t a1)
{
  v3 = sub_768C60();
  v88 = *(v3 - 8);
  __chkstk_darwin(v3);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v77 - v6;
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v11 - 8);
  v13 = &v77 - v12;
  v14 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = &v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style];
  swift_beginAccess();
  sub_19CE28(v17, v16, type metadata accessor for TitleHeaderView.Style);
  LOBYTE(a1) = sub_19C74C(v16, a1);
  result = sub_19CCF0(v16, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    v77 = v3;
    v78 = v9;
    v19 = v8;
    v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
    [v20 setTextColor:*&v17[v14[5]]];
    v21 = v14[5] + *(v19 + 24);
    v22 = sub_7666D0();
    v23 = *(v22 - 8);
    v79 = v7;
    v24 = v23;
    v81 = *(v23 + 16);
    v82 = v23 + 16;
    v81(v13, &v17[v21], v22);
    v25 = *(v24 + 56);
    v83 = v24 + 56;
    v84 = v22;
    v80 = v25;
    v25(v13, 0, 1, v22);
    v26 = v78;
    v27 = v79;
    v89 = v13;
    sub_75BA40();
    [v20 setMinimumScaleFactor:*&v17[v14[5] + *(v19 + 28)]];
    [v20 setAdjustsFontSizeToFitWidth:*&v17[v14[5] + *(v19 + 28)] > 0.0];
    [v1 setBackgroundColor:*&v17[v14[12]]];
    v85 = v19;
    v86 = v1;
    v28 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel];
    v29 = v19;
    v30 = v90;
    if (v28)
    {
      v31 = v27;
      v32 = *v17;
      v33 = v28;
      [v33 setTextColor:v32];
      v34 = v89;
      v35 = v84;
      v81(v89, &v17[*(v29 + 24)], v84);
      v80(v34, 0, 1, v35);
      sub_75BA40();
      v36 = [v33 layer];
      if (*&v17[v14[5] + 16])
      {

        v37 = sub_769210();
      }

      else
      {
        v37 = 0;
      }

      [v36 setCompositingFilter:v37];

      swift_unknownObjectRelease();
      v30 = v90;
      v29 = v85;
      v27 = v31;
    }

    sub_1ED18(&v17[v14[6]], v27, &qword_9439E0);
    if ((*(v26 + 48))(v27, 1, v29) == 1)
    {
      sub_10A2C(v27, &qword_9439E0);
      v38 = v86;
      v39 = *&v86[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
      if (v39)
      {
        [v39 setHidden:1];
      }

      v40 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
      if (v40)
      {
        [v40 setHidden:1];
      }
    }

    else
    {
      sub_19CDC0(v27, v30, type metadata accessor for TitleHeaderView.TextConfiguration);
      v41 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel;
      v38 = v86;
      v42 = *&v86[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
      v43 = v89;
      if (v42 || (sub_75BB20(), v50 = sub_75BB00(), sub_191DD0(v50), (v51 = *&v38[v41]) != 0) && ([v51 setNumberOfLines:1], (v52 = *&v38[v41]) != 0) && (objc_msgSend(v52, "setLineBreakMode:", 4), (v53 = *&v38[v41]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v54 = v53, v55 = v87, sub_768C30(), sub_10A2C(&v91, &unk_93FBD0), sub_10A2C(&v93, &unk_93FBD0), sub_769E70(), v54, v38 = v86, (*(v88 + 8))(v55, v77), (v42 = *&v38[v41]) != 0))
      {
        [v42 setTextColor:*v30];
        v44 = *&v38[v41];
        if (v44)
        {
          v45 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v45);
          v46 = v44;
          sub_75BA40();

          v47 = *&v38[v41];
          if (v47)
          {
            v48 = [v47 layer];
            v49 = *(v30 + 2) ? sub_769210() : 0;
            [v48 setCompositingFilter:v49];

            swift_unknownObjectRelease();
            v56 = *&v38[v41];
            if (v56)
            {
              v57 = v56;
              sub_75BAD0();

              v58 = *&v38[v41];
              if (v58)
              {
                [v58 setHidden:0];
              }
            }
          }
        }
      }

      v59 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel;
      v60 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
      if (v60 || (sub_75BB20(), v67 = sub_75BB00(), sub_191DDC(v67), (v68 = *&v38[v59]) != 0) && ([v68 setNumberOfLines:1], (v69 = *&v38[v59]) != 0) && (objc_msgSend(v69, "setLineBreakMode:", 4), (v70 = *&v38[v59]) != 0) && (v93 = 0u, v94 = 0u, v91 = 0u, v92 = 0u, v71 = v70, v72 = v87, sub_768C30(), sub_10A2C(&v91, &unk_93FBD0), sub_10A2C(&v93, &unk_93FBD0), sub_769E70(), v71, v38 = v86, (*(v88 + 8))(v72, v77), (v60 = *&v38[v59]) != 0))
      {
        [v60 setTextColor:*v30];
        v61 = *&v38[v59];
        if (v61)
        {
          v62 = v84;
          v81(v43, &v30[*(v85 + 24)], v84);
          v80(v43, 0, 1, v62);
          v63 = v61;
          sub_75BA40();

          v64 = *&v38[v59];
          if (v64)
          {
            v65 = [v64 layer];
            v66 = *(v30 + 2) ? sub_769210() : 0;
            [v65 setCompositingFilter:v66];

            swift_unknownObjectRelease();
            v73 = *&v38[v59];
            if (v73)
            {
              v74 = v73;
              sub_75BAD0();

              v75 = *&v38[v59];
              if (v75)
              {
                [v75 setHidden:0];
              }
            }
          }
        }
      }

      sub_19CCF0(v30, type metadata accessor for TitleHeaderView.TextConfiguration);
    }

    v76 = *&v38[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView];
    [v76 setHidden:(v17[v14[7]] & 1) == 0];
    [v76 setBackgroundColor:*&v17[v14[13]]];
    return [v38 setNeedsLayout];
  }

  return result;
}

uint64_t sub_194478@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  return sub_19CE28(v1 + v3, a1, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1944E4(uint64_t a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_style;
  swift_beginAccess();
  sub_19CE28(v1 + v6, v5, type metadata accessor for TitleHeaderView.Style);
  swift_beginAccess();
  sub_122760(a1, v1 + v6);
  swift_endAccess();
  sub_1939E8(v5);
  sub_19CCF0(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_19CCF0(v5, type metadata accessor for TitleHeaderView.Style);
}

double sub_1946C0(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for TitleHeaderView.Style(0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView);
  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
  }

  v15 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
  if (v15 && (v16 = [v15 text]) != 0)
  {
    v17 = v16;
    v46 = sub_769240();
    v47 = v18;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v19 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork);
  v20 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel);

  v21 = [v20 text];
  if (v21)
  {
    v22 = v21;
    v45 = sub_769240();
    v24 = v23;
  }

  else
  {
    v45 = 0;
    v24 = 0;
  }

  v25 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork);
  v26 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (!v26)
  {

    goto LABEL_15;
  }

  v27 = [v26 text];
  if (!v27)
  {
LABEL_15:
    v44 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v28 = v27;
  v44 = sub_769240();
  v30 = v29;

LABEL_16:
  v31 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel);
  if (v31 && (v32 = [v31 text]) != 0)
  {
    v33 = v32;
    v34 = sub_769240();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  v37 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines);

  v38 = v37(v3);

  (*&stru_1A8.segname[(swift_isaMask & *v3) + 8])(v39);
  [v3 layoutMargins];
  LOBYTE(v43) = 1;
  sub_39BC6C(v46, v47, v19, v45, v24, v25, v44, v30, a1, a2, v12, v14, v34, v36, v38, v9, v43, v3);
  v41 = v40;

  sub_19CCF0(v9, type metadata accessor for TitleHeaderView.Style);
  return v41;
}

id sub_194B48()
{
  v1 = sub_7664F0();
  v422 = *(v1 - 8);
  v423 = v1;
  __chkstk_darwin(v1);
  v421 = &v397 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = sub_75CFF0();
  v418 = *(v420 - 8);
  __chkstk_darwin(v420);
  v417 = &v397 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CFE0();
  v412 = *(v4 - 8);
  v413 = v4;
  __chkstk_darwin(v4);
  v414 = &v397 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v419 = sub_75D020();
  v416 = *(v419 - 8);
  __chkstk_darwin(v419);
  v415 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v439 = sub_75CFD0();
  v433 = *(v439 - 8);
  __chkstk_darwin(v439);
  v411 = &v397 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v438 = &v397 - v9;
  v10 = sub_75D010();
  v452 = *(v10 - 8);
  v453 = v10;
  __chkstk_darwin(v10);
  v405 = &v397 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v451 = &v397 - v13;
  __chkstk_darwin(v14);
  v450 = &v397 - v15;
  __chkstk_darwin(v16);
  v437 = &v397 - v17;
  v18 = sub_BD88(&qword_9439E0);
  __chkstk_darwin(v18 - 8);
  v427 = &v397 - v19;
  v20 = sub_756CB0();
  v431 = *(v20 - 1);
  v432 = v20;
  __chkstk_darwin(v20);
  v430 = &v397 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_7666D0();
  v400 = *(v22 - 8);
  v401 = v22;
  __chkstk_darwin(v22);
  v399 = &v397 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v455 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v426 = *(v455 - 1);
  __chkstk_darwin(v455);
  v454 = &v397 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v435 = &v397 - v26;
  __chkstk_darwin(v27);
  v406 = &v397 - v28;
  __chkstk_darwin(v29);
  v403 = &v397 - v30;
  v424 = sub_BD88(&qword_947FC0);
  v409 = *(v424 - 8);
  __chkstk_darwin(v424);
  v402 = &v397 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v404 = &v397 - v33;
  __chkstk_darwin(v34);
  v445 = &v397 - v35;
  __chkstk_darwin(v36);
  v449 = &v397 - v37;
  __chkstk_darwin(v38);
  v444 = &v397 - v39;
  __chkstk_darwin(v40);
  v448 = &v397 - v41;
  __chkstk_darwin(v42);
  v436 = &v397 - v43;
  __chkstk_darwin(v44);
  v398 = &v397 - v45;
  __chkstk_darwin(v46);
  v440 = &v397 - v47;
  v48 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v48);
  v410 = &v397 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v408 = &v397 - v51;
  __chkstk_darwin(v52);
  v407 = &v397 - v53;
  __chkstk_darwin(v54);
  v425 = &v397 - v55;
  __chkstk_darwin(v56);
  v397 = &v397 - v57;
  __chkstk_darwin(v58);
  v442 = &v397 - v59;
  __chkstk_darwin(v60);
  v62 = &v397 - v61;
  v429 = sub_7674E0();
  v63 = *(v429 - 1);
  __chkstk_darwin(v429);
  v65 = &v397 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v446 = sub_767510();
  v66 = *(v446 - 1);
  __chkstk_darwin(v446);
  v68 = &v397 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v434 = type metadata accessor for TitleHeaderView(0);
  v494.receiver = v0;
  v494.super_class = v434;
  v69 = objc_msgSendSuper2(&v494, "layoutSubviews");
  v70 = swift_isaMask & *v0;
  v428 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorLineView);
  v71 = v70 + 448;
  v72 = *(v70 + 448);
  (v72)(v69);
  v447 = v48;
  LODWORD(v48) = v62[*(v48 + 32)];
  v443 = v62;
  sub_19CCF0(v62, type metadata accessor for TitleHeaderView.Style);
  v73 = &enum case for Separator.Position.bottom(_:);
  if (!v48)
  {
    v73 = &enum case for Separator.Position.top(_:);
  }

  v74 = v0;
  (*(v63 + 104))(v65, *v73, v429);
  *(&v492 + 1) = sub_766970();
  v493 = &protocol witness table for ZeroDimension;
  sub_B1B4(&v491);
  sub_766960();
  sub_7674F0();
  [v0 bounds];
  sub_7674C0();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;
  (*(v66 + 8))(v68, v446);
  [v428 setFrame:{v76, v78, v80, v82}];
  v83 = v71;
  v84 = v442;
  v85 = sub_75D650();
  v446 = v72;
  (v72)(v85);
  if (JUScreenClassGetMain() == 1)
  {
    v86 = v447[5];
    if (qword_93DE20 != -1)
    {
      swift_once();
    }

    v87 = sub_BE38(v455, qword_9A0178);
    v88 = sub_19C62C(v84 + v86, v87);
    v89 = v453;
    v90 = v454;
    v91 = v445;
    if (!v88)
    {
      if (qword_93DE28 != -1)
      {
        goto LABEL_172;
      }

      goto LABEL_22;
    }

    sub_19CCF0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    sub_19CCF0(v84, type metadata accessor for TitleHeaderView.Style);
    v89 = v453;
    v90 = v454;
    v91 = v445;
  }

  while (1)
  {
    v92 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel];
    v84 = &protocol witness table for UILabel;
    v441 = v83;
    v442 = v74;
    if (!v92)
    {
      goto LABEL_20;
    }

    v429 = v92;
    v93 = [v429 text];
    if (!v93)
    {
      goto LABEL_19;
    }

    v94 = v93;
    v95 = sub_769240();
    v97 = v96;

    v99 = HIBYTE(v97) & 0xF;
    if ((v97 & 0x2000000000000000) == 0)
    {
      v99 = v95 & 0xFFFFFFFFFFFFLL;
    }

    if (!v99)
    {
LABEL_19:

      v89 = v453;
LABEL_20:
      v434 = *(v452 + 56);
      v113 = (v434)(v440, 1, 1, v89);
      goto LABEL_46;
    }

    v100 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
    if (*&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork])
    {

      if (sub_765190())
      {
        sub_BE70(0, &qword_93F900);
        v101 = v443;
        v446();
        v102 = v403;
        sub_19CE28(v101, v403, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_19CCF0(v101, type metadata accessor for TitleHeaderView.Style);
        v104 = v399;
        v103 = v400;
        v105 = v401;
        (*(v400 + 16))(v399, v102 + *(v455 + 6), v401);
        sub_19CCF0(v102, type metadata accessor for TitleHeaderView.TextConfiguration);
        v106 = v74;
        v107 = [v74 traitCollection];
        v108 = sub_769E10();

        (*(v103 + 8))(v104, v105);
        v109 = *&v106[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
        if (v109)
        {
          v110 = objc_opt_self();
          v111 = v109;
          v112 = [v110 configurationWithFont:v108];
          sub_759120();
        }

        v74 = v442;
      }

      else
      {
        v115 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView;
        v116 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
        if (v116)
        {
          v117 = *&v74[v100];
          v118 = v443;
          v446();
          v119 = v403;
          sub_19CE28(v118, v403, type metadata accessor for TitleHeaderView.TextConfiguration);

          v120 = v116;
          sub_19CCF0(v118, type metadata accessor for TitleHeaderView.Style);
          sub_6C27B0(v117, v119, v74);

          sub_19CCF0(v119, type metadata accessor for TitleHeaderView.TextConfiguration);
          sub_759170();

          v121 = *&v74[v115];
          if (v121)
          {
            v122 = v121;
            sub_759120();
          }
        }
      }
    }

    v123 = v397;
    (v446)(v98);
    sub_19CE28(v123, v406, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_19CCF0(v123, type metadata accessor for TitleHeaderView.Style);
    v124 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];
    if (v124)
    {
      v125 = sub_759210();
      v126 = &protocol witness table for UIView;
      v127 = v124;
    }

    else
    {
      v127 = 0;
      v125 = 0;
      v126 = 0;
      *(&v491 + 1) = 0;
      *&v492 = 0;
    }

    *&v491 = v127;
    *(&v492 + 1) = v125;
    v493 = v126;
    v128 = sub_75BB20();
    v490 = &protocol witness table for UILabel;
    v489 = v128;
    v129 = v429;
    v488[0] = v429;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_1ED18(&v491, v481, &unk_943B10);
    v130 = v489;
    v131 = v490;
    v132 = sub_B170(v488, v489);
    v479 = v130;
    v480 = v131[1];
    v133 = sub_B1B4(v478);
    (*(*(v130 - 1) + 16))(v133, v132, v130);
    v134 = v455;
    v135 = v406;
    v136 = *(v406 + *(v455 + 8));
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v136;
    v137 = *(v455 + 9);
    v138 = sub_766CA0();
    v473 = v138;
    v474 = &protocol witness table for StaticDimension;
    v139 = sub_B1B4(v472);
    v140 = *(*(v138 - 8) + 16);
    v140(v139, v135 + v137, v138);
    v141 = *(v134 + 10);
    v470 = v138;
    v471 = &protocol witness table for StaticDimension;
    v142 = sub_B1B4(v469);
    v140(v142, v135 + v141, v138);
    sub_1ED18(&v485, &v463, &qword_9417D0);
    v143 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v144 = v465;
      v145 = sub_B170(&v463, *(&v464 + 1));
      *(&v467 + 1) = v143;
      v468 = *(v144 + 8);
      v146 = sub_B1B4(&v466);
      (*(*(v143 - 8) + 16))(v146, v145, v143);
      v147 = v124;
      v148 = v129;
      sub_BEB8(&v463);
    }

    else
    {
      v149 = v124;
      v150 = v129;
      sub_10A2C(&v463, &qword_9417D0);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_1ED18(&v482, v460, &qword_9417D0);
    v151 = v461;
    v83 = v441;
    v74 = v442;
    v90 = v454;
    v91 = v445;
    if (v461)
    {
      v152 = v462;
      v153 = sub_B170(v460, v461);
      *(&v464 + 1) = v151;
      v465 = *(v152 + 8);
      v154 = sub_B1B4(&v463);
      (*(*(v151 - 8) + 16))(v154, v153, v151);
      sub_BEB8(v460);
    }

    else
    {
      sub_10A2C(v460, &qword_9417D0);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v155 = v455;
    v156 = v406;
    sub_134D8(v406 + *(v455 + 12), v460);
    sub_134D8(v156 + *(v155 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v157 = v398;
    sub_75D000();
    sub_10A2C(&v482, &qword_9417D0);
    sub_10A2C(&v485, &qword_9417D0);
    sub_19CCF0(v156, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BEB8(v488);
    sub_10A2C(&v491, &unk_943B10);
    v89 = v453;
    v434 = *(v452 + 56);
    (v434)(v157, 0, 1, v453);
    sub_109C4(v157, v440, &qword_947FC0);
    v158 = v429;
    result = [v429 font];
    if (!result)
    {
      goto LABEL_185;
    }

    v160 = result;
    v161 = [v158 text];
    v84 = &protocol witness table for UILabel;
    if (v161)
    {
      v162 = v161;
      v163 = sub_769240();
      v165 = v164;

      *&v491 = v163;
      *(&v491 + 1) = v165;

      v166 = v430;
      sub_756C90();
      sub_12EC40();
      sub_76A4C0();
      LOBYTE(v162) = v167;
      (v431)[1](v166, v432);

      if (v162)
      {

        v168 = 0;
        v74 = v442;
        v89 = v453;
      }

      else
      {
        [v160 lineHeight];
        v170 = v169;

        v171 = ceil(v170 * 1.3);
        v74 = v442;
        if ((*&v171 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
          return result;
        }

        v89 = v453;
        if (v171 <= -9.22337204e18)
        {
          goto LABEL_174;
        }

        if (v171 >= 9.22337204e18)
        {
          goto LABEL_175;
        }

        v168 = v171;
      }
    }

    else
    {

      v168 = 0;
    }

    v172 = v429;
    sub_205E70(v168);

LABEL_46:
    v173 = v425;
    (v446)(v113);
    v174 = v427;
    sub_1ED18(v173 + v447[6], v427, &qword_9439E0);
    sub_19CCF0(v173, type metadata accessor for TitleHeaderView.Style);
    if ((*(v426 + 48))(v174, 1, v455) == 1)
    {
      sub_10A2C(v174, &qword_9439E0);
      (v434)(v436, 1, 1, v89);
      goto LABEL_88;
    }

    sub_19CDC0(v174, v435, type metadata accessor for TitleHeaderView.TextConfiguration);
    v175 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel;
    v176 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
    if (v176)
    {
      result = [v176 font];
      if (!result)
      {
        goto LABEL_183;
      }

      v177 = result;
      v178 = *&v74[v175];
      if (!v178 || (v179 = [v178 text]) == 0)
      {

        v186 = 0;
        v187 = *&v74[v175];
        if (!v187)
        {
          goto LABEL_57;
        }

LABEL_56:
        v188 = v187;
        sub_205E70(v186);

        goto LABEL_57;
      }

      v180 = v179;
      v181 = sub_769240();
      v183 = v182;

      *&v491 = v181;
      *(&v491 + 1) = v183;

      v184 = v430;
      sub_756C90();
      sub_12EC40();
      sub_76A4C0();
      LOBYTE(v180) = v185;
      (v431)[1](v184, v432);

      if (v180)
      {

        v186 = 0;
        v74 = v442;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }

      else
      {
        [v177 lineHeight];
        v226 = v225;

        v227 = ceil(v226 * 1.3);
        v74 = v442;
        if ((*&v227 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_176;
        }

        if (v227 <= -9.22337204e18)
        {
          goto LABEL_178;
        }

        if (v227 >= 9.22337204e18)
        {
          goto LABEL_180;
        }

        v186 = v227;
        v187 = *&v442[v175];
        if (v187)
        {
          goto LABEL_56;
        }
      }
    }

LABEL_57:
    v189 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel;
    v190 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
    if (!v190)
    {
      goto LABEL_66;
    }

    result = [v190 font];
    if (!result)
    {
      goto LABEL_184;
    }

    v191 = result;
    v192 = *&v74[v189];
    if (!v192 || (v193 = [v192 text]) == 0)
    {

      v200 = 0;
      v201 = *&v74[v189];
      if (!v201)
      {
        goto LABEL_66;
      }

LABEL_65:
      v202 = v201;
      sub_205E70(v200);

      goto LABEL_66;
    }

    v194 = v193;
    v195 = sub_769240();
    v197 = v196;

    *&v491 = v195;
    *(&v491 + 1) = v197;

    v198 = v430;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    LOBYTE(v194) = v199;
    (v431)[1](v198, v432);

    if (v194)
    {

      v200 = 0;
      v74 = v442;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

    else
    {
      [v191 lineHeight];
      v229 = v228;

      v230 = ceil(v229 * 1.3);
      v74 = v442;
      if ((*&v230 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_177;
      }

      if (v230 <= -9.22337204e18)
      {
        goto LABEL_179;
      }

      if (v230 >= 9.22337204e18)
      {
        goto LABEL_181;
      }

      v200 = v230;
      v201 = *&v442[v189];
      if (v201)
      {
        goto LABEL_65;
      }
    }

LABEL_66:
    v203 = *&v74[v175];
    if (!v203)
    {
      sub_19CCF0(v435, type metadata accessor for TitleHeaderView.TextConfiguration);
      v91 = v445;
      goto LABEL_70;
    }

    v204 = v443;
    v446();
    v205 = *(v204 + v447[9]);
    v206 = v203;
    sub_19CCF0(v204, type metadata accessor for TitleHeaderView.Style);
    v91 = v445;
    if (v205 == 2)
    {
      sub_19CCF0(v435, type metadata accessor for TitleHeaderView.TextConfiguration);

LABEL_70:
      (v434)(v436, 1, 1, v453);
      v83 = v441;
      goto LABEL_88;
    }

    v493 = 0;
    v491 = 0u;
    v492 = 0u;
    v207 = sub_75BB20();
    v490 = &protocol witness table for UILabel;
    v489 = v207;
    v488[0] = v206;
    v487 = 0;
    v485 = 0u;
    v486 = 0u;
    v484 = 0;
    v482 = 0u;
    v483 = 0u;
    sub_1ED18(&v491, v481, &unk_943B10);
    v208 = v489;
    v209 = v490;
    v210 = sub_B170(v488, v489);
    v479 = v208;
    v480 = v209[1];
    v211 = sub_B1B4(v478);
    (*(*(v208 - 1) + 16))(v211, v210, v208);
    v212 = v455;
    v213 = v435;
    v214 = *&v435[*(v455 + 8)];
    v476 = &type metadata for Float;
    v477 = &protocol witness table for Float;
    v475 = v214;
    v215 = *(v455 + 9);
    v216 = sub_766CA0();
    v473 = v216;
    v474 = &protocol witness table for StaticDimension;
    v217 = sub_B1B4(v472);
    v218 = *(*(v216 - 8) + 16);
    v218(v217, &v213[v215], v216);
    v219 = *(v212 + 10);
    v470 = v216;
    v471 = &protocol witness table for StaticDimension;
    v220 = sub_B1B4(v469);
    v218(v220, &v213[v219], v216);
    sub_1ED18(&v485, &v463, &qword_9417D0);
    v221 = *(&v464 + 1);
    if (*(&v464 + 1))
    {
      v222 = v465;
      v223 = sub_B170(&v463, *(&v464 + 1));
      *(&v467 + 1) = v221;
      v468 = *(v222 + 8);
      v224 = sub_B1B4(&v466);
      (*(*(v221 - 8) + 16))(v224, v223, v221);
      sub_BEB8(&v463);
    }

    else
    {
      sub_10A2C(&v463, &qword_9417D0);
      v466 = 0u;
      v467 = 0u;
      v468 = 0;
    }

    sub_1ED18(&v482, v460, &qword_9417D0);
    v231 = v461;
    v74 = v442;
    v90 = v454;
    if (v461)
    {
      v232 = v462;
      v233 = sub_B170(v460, v461);
      *(&v464 + 1) = v231;
      v465 = *(v232 + 8);
      v234 = sub_B1B4(&v463);
      (*(*(v231 - 8) + 16))(v234, v233, v231);
      sub_BEB8(v460);
    }

    else
    {
      sub_10A2C(v460, &qword_9417D0);
      v463 = 0u;
      v464 = 0u;
      v465 = 0;
    }

    v83 = v441;
    v235 = v455;
    v236 = v435;
    sub_134D8(&v435[*(v455 + 12)], v460);
    sub_134D8(v236 + *(v235 + 13), v459);
    v458 = &protocol witness table for Double;
    v457 = &type metadata for Double;
    v456 = 0x4020000000000000;
    v237 = v436;
    sub_75D000();
    sub_10A2C(&v482, &qword_9417D0);
    sub_10A2C(&v485, &qword_9417D0);
    sub_10A2C(&v491, &unk_943B10);
    sub_19CCF0(v236, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BEB8(v488);
    v434 = *(v452 + 56);
    (v434)(v237, 0, 1, v453);
LABEL_88:
    v238 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel];
    result = [v238 font];
    if (!result)
    {
      goto LABEL_182;
    }

    v89 = result;
    v239 = [v238 text];
    v435 = v238;
    if (!v239)
    {

      v245 = 0;
      goto LABEL_98;
    }

    v240 = v239;
    v241 = sub_769240();
    v74 = v242;

    *&v491 = v241;
    *(&v491 + 1) = v74;

    v243 = v430;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v86 = v244;
    (v431)[1](v243, v432);

    if (v86)
    {

      v245 = 0;
      goto LABEL_97;
    }

    [v89 lineHeight];
    v247 = v246;

    v248 = ceil(v247 * 1.3);
    if ((*&v248 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_170;
    }

    if (v248 > -9.22337204e18)
    {
      break;
    }

LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    swift_once();
LABEL_22:
    v114 = sub_BE38(v455, qword_9A0190);
    sub_19C62C(v84 + v86, v114);
    sub_19CCF0(v84, type metadata accessor for TitleHeaderView.Style);
  }

  if (v248 >= 9.22337204e18)
  {
    goto LABEL_171;
  }

  v245 = v248;
LABEL_97:
  v74 = v442;
LABEL_98:
  sub_205E70(v245);
  v249 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  if (*&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork])
  {

    if (sub_765190())
    {
      sub_BE70(0, &qword_93F900);
      v250 = v443;
      v446();
      v251 = v403;
      sub_19CE28(v250 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v250, type metadata accessor for TitleHeaderView.Style);
      v252 = v399;
      v253 = v400;
      v254 = v401;
      (*(v400 + 16))(v399, v251 + *(v455 + 6), v401);
      sub_19CCF0(v251, type metadata accessor for TitleHeaderView.TextConfiguration);
      v255 = v74;
      v256 = [v74 traitCollection];
      v257 = sub_769E10();

      (*(v253 + 8))(v252, v254);
      v258 = *&v255[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];
      if (v258)
      {
        v259 = objc_opt_self();
        v260 = v258;
        v261 = [v259 configurationWithFont:v257];
        sub_759120();
      }

      v74 = v442;
      v91 = v445;
      v90 = v454;
    }

    else
    {
      v262 = v90;
      v263 = v74;
      v264 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView;
      v265 = *(v263 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView);
      if (v265)
      {
        v266 = *(v263 + v249);
        v267 = v443;
        v446();
        v268 = v403;
        sub_19CE28(v267 + v447[5], v403, type metadata accessor for TitleHeaderView.TextConfiguration);

        v269 = v265;
        v262 = v454;
        sub_19CCF0(v267, type metadata accessor for TitleHeaderView.Style);
        sub_6C27B0(v266, v268, v263);

        sub_19CCF0(v268, type metadata accessor for TitleHeaderView.TextConfiguration);
        sub_759170();

        v270 = *(v263 + v264);
        if (v270)
        {
          v271 = v270;
          sub_759120();
        }
      }

      v74 = v263;
      v91 = v445;
      v90 = v262;
    }
  }

  v272 = v443;
  v446();
  v273 = *(v272 + v447[9]);
  v274 = sub_19CCF0(v272, type metadata accessor for TitleHeaderView.Style);
  if (v273 == 2)
  {
    v275 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel];
    v274 = v275;
  }

  else
  {
    v275 = 0;
  }

  v276 = v443;
  (v446)(v274);
  v277 = *(v276 + v447[9]);
  v278 = sub_19CCF0(v276, type metadata accessor for TitleHeaderView.Style);
  if (v277 == 2)
  {
    v279 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel];
    v278 = v279;
  }

  else
  {
    v279 = 0;
  }

  v280 = v407;
  (v446)(v278);
  sub_19CE28(v280 + v447[5], v90, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_19CCF0(v280, type metadata accessor for TitleHeaderView.Style);
  v281 = *&v74[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];
  if (v281)
  {
    v282 = sub_759210();
    v283 = &protocol witness table for UIView;
    v284 = v281;
  }

  else
  {
    v284 = 0;
    v282 = 0;
    v283 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  v285 = v435;
  *&v491 = v284;
  *(&v492 + 1) = v282;
  v493 = v283;
  v286 = sub_75BB20();
  v490 = &protocol witness table for UILabel;
  v489 = v286;
  v488[0] = v285;
  if (v275)
  {
    v287 = &protocol witness table for UILabel;
    v288 = v275;
    v289 = v286;
  }

  else
  {
    v288 = 0;
    v289 = 0;
    v287 = 0;
    *&v486 = 0;
    *(&v485 + 1) = 0;
  }

  *&v485 = v288;
  *(&v486 + 1) = v289;
  v487 = v287;
  v431 = v279;
  v432 = v275;
  if (v279)
  {
    v290 = &protocol witness table for UILabel;
    v291 = v279;
  }

  else
  {
    v291 = 0;
    v286 = 0;
    v290 = 0;
    *&v483 = 0;
    *(&v482 + 1) = 0;
  }

  *&v482 = v291;
  *(&v483 + 1) = v286;
  v484 = v290;
  sub_1ED18(&v491, v481, &unk_943B10);
  v292 = v489;
  v293 = v490;
  v294 = sub_B170(v488, v489);
  v479 = v292;
  v480 = v293[1];
  v295 = sub_B1B4(v478);
  (*(*(v292 - 1) + 16))(v295, v294, v292);
  v297 = v454;
  v296 = v455;
  v298 = *(v454 + *(v455 + 8));
  v476 = &type metadata for Float;
  v477 = &protocol witness table for Float;
  v475 = v298;
  v299 = *(v455 + 9);
  v300 = sub_766CA0();
  v473 = v300;
  v474 = &protocol witness table for StaticDimension;
  v301 = sub_B1B4(v472);
  v302 = *(*(v300 - 8) + 16);
  v302(v301, v297 + v299, v300);
  v303 = *(v296 + 10);
  v470 = v300;
  v471 = &protocol witness table for StaticDimension;
  v304 = sub_B1B4(v469);
  v302(v304, v297 + v303, v300);
  sub_1ED18(&v485, &v463, &qword_9417D0);
  v305 = *(&v464 + 1);
  if (*(&v464 + 1))
  {
    v306 = v465;
    v307 = sub_B170(&v463, *(&v464 + 1));
    *(&v467 + 1) = v305;
    v468 = *(v306 + 8);
    v308 = sub_B1B4(&v466);
    (*(*(v305 - 8) + 16))(v308, v307, v305);
    v309 = v431;
    v310 = v281;
    v311 = v435;
    v312 = v432;
    sub_BEB8(&v463);
  }

  else
  {
    v313 = v431;
    v314 = v281;
    v315 = v435;
    v316 = v432;
    sub_10A2C(&v463, &qword_9417D0);
    v466 = 0u;
    v467 = 0u;
    v468 = 0;
  }

  v317 = v444;
  sub_1ED18(&v482, v460, &qword_9417D0);
  v318 = v461;
  if (v461)
  {
    v319 = v462;
    v320 = sub_B170(v460, v461);
    *(&v464 + 1) = v318;
    v465 = *(v319 + 8);
    v321 = sub_B1B4(&v463);
    (*(*(v318 - 8) + 16))(v321, v320, v318);
    sub_BEB8(v460);
  }

  else
  {
    sub_10A2C(v460, &qword_9417D0);
    v463 = 0u;
    v464 = 0u;
    v465 = 0;
  }

  v323 = v454;
  v322 = v455;
  sub_134D8(v454 + *(v455 + 12), v460);
  sub_134D8(v323 + *(v322 + 13), v459);
  v458 = &protocol witness table for Double;
  v457 = &type metadata for Double;
  v456 = 0x4020000000000000;
  sub_75D000();
  sub_19CCF0(v323, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10A2C(&v482, &qword_9417D0);
  sub_10A2C(&v485, &qword_9417D0);
  sub_BEB8(v488);
  v324 = sub_10A2C(&v491, &unk_943B10);
  v325 = v408;
  (v446)(v324);
  v326 = *(v325 + v447[9]);
  sub_19CCF0(v325, type metadata accessor for TitleHeaderView.Style);
  sub_BD88(&qword_947FC8);
  v454 = *(v409 + 72);
  v327 = (*(v409 + 80) + 32) & ~*(v409 + 80);
  if (v326)
  {
    v328 = v453;
    if (v326 == 1)
    {
      v329 = v91;
      v330 = v454;
      v435 = swift_allocObject();
      v331 = &v435[v327];
      sub_1ED18(v440, &v435[v327], &qword_947FC0);
      v332 = v452 + 16;
      (*(v452 + 16))(&v331[v330], v437, v328);
      (v434)(&v331[v330], 0, 1, v328);
      sub_1ED18(v436, &v331[2 * v330], &qword_947FC0);
      v333 = (v332 + 32);
      v334 = (v332 + 16);
      v455 = _swiftEmptyArrayStorage;
      v335 = 3;
      v450 = v331;
      v336 = v331;
      do
      {
        v337 = v449;
        sub_1ED18(v336, v449, &qword_947FC0);
        sub_109C4(v337, v329, &qword_947FC0);
        if ((*v333)(v329, 1, v328) == 1)
        {
          sub_10A2C(v329, &qword_947FC0);
        }

        else
        {
          v338 = *v334;
          (*v334)(v451, v329, v328);
          v339 = v455;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v339 = sub_7B968(0, v339[2] + 1, 1, v339);
          }

          v341 = v339[2];
          v340 = v339[3];
          if (v341 >= v340 >> 1)
          {
            v339 = sub_7B968(v340 > 1, v341 + 1, 1, v339);
          }

          v339[2] = v341 + 1;
          v342 = (*(v452 + 80) + 32) & ~*(v452 + 80);
          v455 = v339;
          v328 = v453;
          v338(v339 + v342 + *(v452 + 72) * v341, v451, v453);
          v329 = v445;
        }

        v336 += v454;
        --v335;
      }

      while (v335);
      goto LABEL_149;
    }

    v360 = v454;
    v435 = swift_allocObject();
    v361 = &v435[v327];
    sub_1ED18(v440, &v435[v327], &qword_947FC0);
    v362 = v452;
    (*(v452 + 16))(v361 + v360, v437, v328);
    (v434)(v361 + v360, 0, 1, v328);
    v363 = v404;
    sub_1ED18(v361, v404, &qword_947FC0);
    v364 = v402;
    sub_109C4(v363, v402, &qword_947FC0);
    v365 = *(v362 + 48);
    v366 = (v362 + 32);
    v367 = v365(v364, 1, v328);
    v368 = v328;
    v451 = (v362 + 32);
    if (v367 == 1)
    {
      sub_10A2C(v364, &qword_947FC0);
      v455 = _swiftEmptyArrayStorage;
    }

    else
    {
      v369 = *v366;
      (*v366)(v405, v364, v368);
      v370 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v370 = sub_7B968(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v372 = v370[2];
      v371 = v370[3];
      v455 = v370;
      if (v372 >= v371 >> 1)
      {
        v455 = sub_7B968(v371 > 1, v372 + 1, 1, v455);
      }

      v373 = v455;
      v455[2] = v372 + 1;
      v374 = v373 + ((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v372;
      v368 = v453;
      v369(v374, v405, v453);
      v364 = v402;
    }

    v375 = v404;
    sub_1ED18(v361 + v454, v404, &qword_947FC0);
    sub_109C4(v375, v364, &qword_947FC0);
    if (v365(v364, 1, v368) == 1)
    {
      sub_10A2C(v364, &qword_947FC0);
      v357 = v438;
      v358 = v439;
      v359 = v433;
    }

    else
    {
      v376 = *v451;
      (*v451)(v405, v364, v368);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v358 = v439;
      v359 = v433;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v455 = sub_7B968(0, v455[2] + 1, 1, v455);
      }

      v357 = v438;
      v379 = v455[2];
      v378 = v455[3];
      if (v379 >= v378 >> 1)
      {
        v455 = sub_7B968(v378 > 1, v379 + 1, 1, v455);
      }

      v380 = v455;
      v455[2] = v379 + 1;
      v376(&v380[((*(v452 + 80) + 32) & ~*(v452 + 80)) + *(v452 + 72) * v379], v405, v453);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    v343 = v454;
    v344 = 2 * v454;
    v435 = swift_allocObject();
    v345 = &v435[v327];
    sub_1ED18(v440, &v435[v327], &qword_947FC0);
    sub_1ED18(v436, &v345[v343], &qword_947FC0);
    v346 = v453;
    v347 = v452 + 16;
    (*(v452 + 16))(&v345[v344], v437, v453);
    (v434)(&v345[v344], 0, 1, v346);
    v348 = (v347 + 32);
    v349 = (v347 + 16);
    v455 = _swiftEmptyArrayStorage;
    v350 = 3;
    v451 = v345;
    do
    {
      v351 = v448;
      sub_1ED18(v345, v448, &qword_947FC0);
      sub_109C4(v351, v317, &qword_947FC0);
      if ((*v348)(v317, 1, v346) == 1)
      {
        sub_10A2C(v317, &qword_947FC0);
      }

      else
      {
        v352 = *v349;
        (*v349)(v450, v317, v346);
        v353 = v455;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v353 = sub_7B968(0, v353[2] + 1, 1, v353);
        }

        v355 = v353[2];
        v354 = v353[3];
        if (v355 >= v354 >> 1)
        {
          v353 = sub_7B968(v354 > 1, v355 + 1, 1, v353);
        }

        v353[2] = v355 + 1;
        v346 = v453;
        v356 = (*(v452 + 80) + 32) & ~*(v452 + 80);
        v455 = v353;
        v352(v353 + v356 + *(v452 + 72) * v355, v450, v453);
        v317 = v444;
      }

      v345 += v454;
      --v350;
    }

    while (v350);
LABEL_149:
    swift_setDeallocating();
    swift_arrayDestroy();
    v357 = v438;
    v358 = v439;
    v359 = v433;
  }

  v381 = swift_deallocClassInstance();
  v382 = v442;
  v383 = v443;
  (v446)(v381);
  v384 = *(v359 + 16);
  v384(v357, v383 + v447[10], v358);
  sub_19CCF0(v383, type metadata accessor for TitleHeaderView.Style);
  v385 = *&v382[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v385)
  {
    v386 = sub_BE70(0, &qword_93E550);
    v387 = &protocol witness table for UIView;
  }

  else
  {
    v386 = 0;
    v387 = 0;
    *(&v491 + 1) = 0;
    *&v492 = 0;
  }

  *&v491 = v385;
  *(&v492 + 1) = v386;
  v493 = v387;
  v388 = v443;
  v389 = v446;
  v446();
  v390 = v447;
  v391 = *(v388 + v447[14]);
  v392 = v385;
  sub_19CCF0(v388, type metadata accessor for TitleHeaderView.Style);
  v489 = &type metadata for CGFloat;
  v490 = &protocol witness table for CGFloat;
  v488[0] = v391;
  v393 = (v384)(v411, v438, v439);
  v394 = v410;
  (v389)(v393);
  (*(v412 + 16))(v414, v394 + v390[11], v413);
  sub_19CCF0(v394, type metadata accessor for TitleHeaderView.Style);
  (*(v418 + 104))(v417, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v420);
  v395 = v415;
  sub_75CFA0();
  v396 = v421;
  sub_75CFB0();

  (*(v422 + 8))(v396, v423);
  (*(v416 + 8))(v395, v419);
  (*(v433 + 8))(v438, v439);
  (*(v452 + 8))(v437, v453);
  sub_10A2C(v436, &qword_947FC0);
  return sub_10A2C(v440, &qword_947FC0);
}

id sub_197F24()
{
  v1 = sub_BD88(&qword_93FF90);
  __chkstk_darwin(v1 - 8);
  v3 = &v30 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v31.receiver = v0;
  v31.super_class = v4;
  objc_msgSendSuper2(&v31, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_F704(v6);
  v7 = type metadata accessor for Accessory();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_19CD50(v3, &v0[v8]);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    [v10 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v11 = *&v0[v9];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v9];
  }

  else
  {
LABEL_6:
    v12 = 0;
  }

  *&v0[v9] = 0;

  v13 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork];
  if (v14)
  {
    v15 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView;
    v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];

    if (v16)
    {
      [v16 removeFromSuperview];
      v17 = *&v0[v15];
    }

    else
    {
      v17 = 0;
    }

    *&v0[v15] = 0;
  }

  *&v0[v13] = 0;

  sub_193868(v14);

  v18 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
  v19 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork];
  if (v19)
  {
    v20 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView;
    v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];

    if (v21)
    {
      [v21 removeFromSuperview];
      v22 = *&v0[v20];
    }

    else
    {
      v22 = 0;
    }

    *&v0[v20] = 0;
  }

  *&v0[v18] = 0;

  sub_1935C8(v19);

  v23 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText];
  v24 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8];
  if (v24)
  {
    v26 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel;
    v27 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel];

    if (v27)
    {
      [v27 removeFromSuperview];
      v28 = *&v0[v26];
    }

    else
    {
      v28 = 0;
    }

    *&v0[v26] = 0;
  }

  *v23 = 0;
  *(v23 + 1) = 0;

  sub_193028(v25, v24);

  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] setText:0];
}