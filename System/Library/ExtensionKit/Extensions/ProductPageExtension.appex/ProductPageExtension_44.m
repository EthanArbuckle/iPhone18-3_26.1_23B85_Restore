char *sub_100502A08(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  v108[1] = swift_getObjectType();
  v3 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v3 - 8);
  v5 = v108 - v4;
  v6 = sub_10000A5D4(&unk_10095B400);
  __chkstk_darwin(v6 - 8);
  v8 = v108 - v7;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator] = 0;
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView;
  *&v1[v9] = [objc_allocWithZone(UIScrollView) init];
  v10 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_shadowView;
  sub_10075F99C();
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView;
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v1[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView;
  *&v1[v13] = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView()) init];
  v14 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView;
  v15 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView());
  *&v1[v14] = sub_1006CF118(0);
  v16 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView;
  v17 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView());
  *&v1[v16] = sub_1006363F8(0);
  v18 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView();
  *&v2[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *&v2[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v20 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView;
  *&v2[v20] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView] = 0;
  v21 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *&v2[v21] = [objc_allocWithZone(UITapGestureRecognizer) init];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_videoBackgroundColor] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators] = 0;
  v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_isCollapsing] = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  v23 = enum case for MediaOverlayStyle.matchSystem(_:);
  v24 = sub_10076361C();
  (*(*(v24 - 8) + 104))(&v2[v22], v23, v24);
  v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode] = 0;
  *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin] = 0;
  v25 = [objc_opt_self() buttonWithType:7];
  sub_1007710FC();
  v26 = sub_10077111C();
  (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
  sub_10077114C();
  *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton] = v25;
  v27 = type metadata accessor for AppPromotionDetailPageView();
  v113.receiver = v2;
  v113.super_class = v27;
  v28 = v25;
  v29 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v33 = v29;
  [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v33 setClipsToBounds:0];
  v34 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView;
  [*(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView) setClipsToBounds:0];
  [*(v33 + v34) setContentInsetAdjustmentBehavior:2];
  [v33 addSubview:*(v33 + v34)];
  v35 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_shadowView;
  v36 = qword_10093F8D0;
  v37 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_shadowView);
  if (v36 != -1)
  {
    swift_once();
  }

  v38 = sub_10076BCFC();
  v39 = sub_10000A61C(v38, qword_10099D510);
  v40 = *(v38 - 8);
  (*(v40 + 16))(v5, v39, v38);
  (*(v40 + 56))(v5, 0, 1, v38);
  sub_10075F97C();

  v41 = *(v33 + v35);
  sub_10075F95C();

  [*(v33 + v34) addSubview:*(v33 + v35)];
  v42 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView;
  [*(v33 + v34) addSubview:*(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView)];
  v43 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView;
  *(*(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_delegate + 8) = &off_100898788;
  swift_unknownObjectWeakAssign();
  [*(v33 + v42) addSubview:*(v33 + v43)];
  v44 = *(v33 + v42);
  v110 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView;
  [v44 addSubview:*(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView)];
  v45 = *(v33 + v42);
  v108[0] = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView;
  [v45 addSubview:*(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView)];
  v46 = *(v33 + v42);
  v109 = v28;
  [v46 addSubview:v28];
  v47 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_separatorView;
  v48 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_separatorView);
  v49 = objc_opt_self();
  v50 = v48;
  v51 = [v49 labelColor];
  v52 = [v51 colorWithAlphaComponent:0.5];

  v53 = *&v50[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor];
  *&v50[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineColor] = v52;
  v54 = v52;

  [*&v50[OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_lineView] setBackgroundColor:v54];
  [*(v33 + v42) addSubview:*(v33 + v47)];
  v55 = *(v33 + v42);
  v56 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView;
  [v55 addSubview:*(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView)];
  v57 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView;
  v58 = *(v33 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView);
  v59 = [v49 whiteColor];
  v60 = [v59 colorWithAlphaComponent:0.2];

  sub_1007638DC();
  v61 = *(v33 + v57);
  sub_1007638EC();

  [*(v33 + v57) setUserInteractionEnabled:0];
  [*(v33 + v57) setHidden:1];
  [*(v33 + v34) addSubview:*(v33 + v57)];
  v62 = v110;
  v63 = *&v110[v33];
  sub_100016F40(0, &qword_1009641D0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = v63;
  v65 = sub_100770F1C();
  sub_1006CDDC0(v65);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *&v62[v33];
  v68 = (*&v67[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock);
  v69 = *v68;
  *v68 = sub_100507628;
  v68[1] = v66;
  swift_retain_n();
  v70 = v67;
  sub_1000167E0(v69);
  sub_10029CAF0();

  v71 = *(v33 + v56);
  v72 = &v71[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock];
  v73 = *&v71[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_lockupTapBlock];
  *v72 = sub_100507628;
  v72[1] = v66;

  v74 = v71;
  v75 = v108[0];
  v76 = v74;
  sub_1000167E0(v73);
  sub_10029CAF0();

  v77 = *(v33 + v75);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v77;
  v79 = sub_100770F1C();
  sub_100636324(v79);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v80 = v33;
  v81 = sub_100770F1C();
  v82 = v109;
  [v109 addAction:v81 forControlEvents:64];

  if (qword_100940730 != -1)
  {
    swift_once();
  }

  sub_100770C6C();
  swift_unknownObjectRelease();
  v83 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  [*&v80[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer] addTarget:v80 action:"dismissTapGestureRecognized"];
  v84 = *&v80[v83];
  [v84 setDelegate:v80];

  [v80 addGestureRecognizer:*&v80[v83]];
  sub_100505F40(0);
  v85 = *&v110[v33];
  v86 = *(v33 + v75);
  sub_100767D5C();
  sub_10076F64C();
  v87 = v85;
  v88 = v86;
  sub_10076FC1C();
  v89 = v112;
  type metadata accessor for AppPromotionDisplayModeTransitionCoordinator();
  v90 = swift_allocObject();
  *(v90 + 16) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 16) = 0;
  swift_unknownObjectWeakAssign();
  *(v90 + 40) = &off_1008A0210;
  swift_unknownObjectWeakAssign();
  *(v90 + 56) = &off_10089DF08;
  swift_unknownObjectWeakAssign();
  *(v90 + 64) = v89;
  Strong = swift_unknownObjectWeakLoadStrong();
  v110 = v89;
  if (Strong)
  {
    v92 = Strong;
    v93 = *(v90 + 40);
    ObjectType = swift_getObjectType();
    v95 = v89;
    v96 = ObjectType;
    v97 = *(v93 + 8);
    v98 = v87;
    v99 = *(v97 + 16);
    v100 = v95;
    v101 = v97;
    v82 = v109;
    v99(0, v96, v101);
    v87 = v98;
  }

  else
  {
    v102 = v89;
  }

  v103 = swift_unknownObjectWeakLoadStrong();
  if (v103)
  {
    v104 = v103;
    v105 = *(v90 + 56);
    v106 = swift_getObjectType();
    (*(*(v105 + 8) + 16))(0, v106);
  }

  sub_1004ADC54(0);

  *&v80[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator] = v90;

  return v80;
}

void sub_1005036B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003AB784();
      swift_unknownObjectRelease();
    }

    v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v2)
    {
      v3 = *(v2 + 16);
      *(v2 + 16) = 1;

      sub_1004ADC54((v3 & 1) == 0);
    }
  }
}

void sub_100503768()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003AB038();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1005037E4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003AB790();
      swift_unknownObjectRelease();
    }

    v2 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator];
    if (v2)
    {
      v3 = *(v2 + 16);
      *(v2 + 16) = 0;

      sub_1004ADC54(v3);
    }
  }
}

void sub_100503890()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1004B1A0C();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003AB260();
      swift_unknownObjectRelease();
    }
  }
}

void sub_100503948()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = v3[2];
  v10(v8, v0 + v9, v2);
  sub_100507668(&unk_100952B00, &type metadata accessor for MediaOverlayStyle);
  v11 = sub_10076FF1C();
  v28 = v3[1];
  v28(v8, v2);
  if ((v11 & 1) == 0)
  {
    v12 = v10;
    v26 = v10;
    v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
    v12(v8, v1 + v9, v2);
    v14 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_mediaOverlayStyle;
    swift_beginAccess();
    v27 = v9;
    v25 = v3[3];
    v25(&v13[v14], v8, v2);
    swift_endAccess();
    v15 = v26;
    v26(v5, &v13[v14], v2);
    v16 = sub_1007635FC();
    v17 = v5;
    v18 = v28;
    v28(v17, v2);
    [v13 setOverrideUserInterfaceStyle:v16];
    v18(v8, v2);
    v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);
    v15(v8, v1 + v27, v2);
    v20 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_mediaOverlayStyle;
    swift_beginAccess();
    v21 = v25;
    v25((v19 + v20), v8, v2);
    swift_endAccess();
    sub_1006CFA1C();
    v22 = v28;
    v28(v8, v2);
    v23 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView);
    v26(v8, v1 + v27, v2);
    v24 = OBJC_IVAR____TtC20ProductPageExtension25AppPromotionLearnMoreView_mediaOverlayStyle;
    swift_beginAccess();
    v21(v23 + v24, v8, v2);
    swift_endAccess();
    sub_100636B08();
    v22(v8, v2);
    sub_1005064AC();
    sub_100506394(0);
  }
}

void (*sub_100503CD4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_videoView;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100503D3C;
}

void sub_100503D3C(uint64_t a1, char a2)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100507668(&qword_100942810, type metadata accessor for VideoView);
      v8 = v5;
      v9 = [v7 superview];
      if (v9)
      {
        v10 = v9;
        sub_100016F40(0, &qword_1009441F0);
        v11 = v4;
        v12 = sub_100770EEC();

        v13 = *(a1 + 16);
        if (v12)
        {
          v14 = swift_unknownObjectWeakLoadStrong();
          if (v14)
          {
            v15 = v14;
            [v14 removeFromSuperview];
          }

          [*(v13 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v8 = v5;
    }

    v24 = *(a1 + 8);
    swift_unknownObjectWeakAssign();
    sub_10064628C();
    v25 = [v24 traitCollection];
    LOBYTE(v24) = sub_1007706FC();

    v26 = *(a1 + 8);
    if (v24)
    {
      sub_100505780();
    }

    [v26 setNeedsLayout];

    v27 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_100507668(&qword_100942810, type metadata accessor for VideoView);
      v31 = v5;
      v16 = [v7 superview];
      if (v16)
      {
        v17 = v16;
        sub_100016F40(0, &qword_1009441F0);
        v18 = v4;
        v19 = sub_100770EEC();

        v20 = *(a1 + 16);
        if (v19)
        {
          v21 = swift_unknownObjectWeakLoadStrong();
          if (v21)
          {
            v22 = v21;
            [v21 removeFromSuperview];
          }

          [*(v20 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }

      v23 = v31;
    }

    else
    {
      v23 = v5;
    }

    v28 = *(a1 + 8);
    v32 = v23;
    swift_unknownObjectWeakAssign();
    sub_10064628C();

    v29 = [v28 traitCollection];
    LOBYTE(v28) = sub_1007706FC();

    v30 = *(a1 + 8);
    if (v28)
    {
      sub_100505780();
    }

    [v30 setNeedsLayout];
    v27 = v32;
  }
}

id sub_100504074()
{
  v1 = v0;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for AppPromotionDetailPageView();
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v0 bounds];
  result = CGRectIsEmpty(v23);
  if ((result & 1) == 0)
  {
    v3 = [v0 traitCollection];
    v4 = sub_1007706FC();

    if (v4)
    {
      sub_10050469C();
    }

    else
    {
      sub_100504324();
    }

    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView];
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView] bounds];
    [v5 setContentSize:{v6, v7}];
    [v1 bounds];
    [v5 setBounds:{0.0, 0.0}];
    [v1 bounds];
    v8 = CGRectGetWidth(v24) * 0.5;
    [v1 bounds];
    [v5 setCenter:{v8, CGRectGetHeight(v25) * 0.5}];
    v9 = [v1 traitCollection];
    v10 = sub_1007706FC();

    if (v10)
    {
      sub_1005056B4();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = [v1 traitCollection];
      v14 = sub_1007706EC();

      if (v14)
      {
        [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton] frame];
        v16 = v15;
        [v12 frame];
        v18.f64[0] = v17 + -53.0;
        v19 = &v12[qword_1009A2508];
        v20 = *&v12[qword_1009A2508];
        v21 = *&v12[qword_1009A2508 + 16];
        *v19 = xmmword_10079BB10;
        *(v19 + 2) = *&v18.f64[0];
        *(v19 + 3) = v16 + 25.0;
        v18.f64[1] = v16 + 25.0;
        if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(xmmword_10079BB10, v20), vceqq_f64(v18, v21)))) & 1) == 0)
        {
          sub_1005EEA78();
        }
      }
    }

    sub_1005049F4();
    return sub_100505288();
  }

  return result;
}

id sub_100504324()
{
  v1 = v0;
  [v0 bounds];
  Height = CGRectGetHeight(v25);
  if (qword_100940738 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D39C();
  sub_10000A61C(v3, qword_1009A05C0);
  [v0 bounds];
  CGRectGetWidth(v26);
  sub_10076D36C();
  if (v4 >= Height)
  {
    v4 = Height;
  }

  v5 = ceil(v4);
  [v0 bounds];
  Width = CGRectGetWidth(v27);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView];
  v8 = type metadata accessor for AppPromotionMediaContainerView();
  v24.receiver = v7;
  v24.super_class = v8;
  objc_msgSendSuper2(&v24, "frame");
  v23.receiver = v7;
  v23.super_class = v8;
  objc_msgSendSuper2(&v23, "setFrame:", 0.0, 0.0, Width, v5);
  sub_1006467B0();
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView] setFrame:{0.0, 0.0, Width, v5}];
  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView];
  sub_1006CFFDC(v22, v5);
  sub_1006D0228(v22, v20);
  v10 = [v9 traitCollection];
  if (sub_1007706EC())
  {
    v11 = sub_10077071C();

    if (v11)
    {
      v12 = *v20;
      sub_1001C3264(v10, v21, v18);
      sub_10000CF78(v18, v19);
      sub_10076E0FC();
      v14 = v12 + v13;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (sub_1007706EC())
  {
    sub_1001C1348(v10, v18, 0.0, 0.0, Width, v5);
  }

  else
  {
    sub_1001C1D50(v10, v18, 0.0, 0.0, Width, v5);
  }

  sub_10000CF78(v18, v19);
  sub_10076E0FC();
  Width = v15;
  v14 = v16;
LABEL_13:
  sub_10000CD74(v18);

  sub_10050770C(v20);
  sub_100507760(v22);
  [v9 setFrame:{0.0, 0.0, Width, v14}];
  [v9 setNeedsLayout];
  [v9 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0, Width, v14}];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, Width, v14}];
  return [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, Width, v14}];
}

id sub_10050469C()
{
  v1 = v0;
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_shadowView] setFrame:{0.0, 0.0}];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView] setFrame:{0.0, 0.0, v3, v5}];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView] setFrame:{0.0, 0.0, v3, v5}];
  if (qword_100940738 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D39C();
  sub_10000A61C(v6, qword_1009A05C0);
  [v0 bounds];
  CGRectGetHeight(v34);
  sub_10076D35C();
  v31 = ceil(v7);
  [v0 bounds];
  Height = CGRectGetHeight(v35);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView];
  v9 = [v1 traitCollection];
  [v1 bounds];
  sub_1007709CC();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = type metadata accessor for AppPromotionMediaContainerView();
  v33.receiver = v8;
  v33.super_class = v18;
  objc_msgSendSuper2(&v33, "frame");
  v32.receiver = v8;
  v32.super_class = v18;
  objc_msgSendSuper2(&v32, "setFrame:", v11, v13, v15, v17);
  sub_1006467B0();
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v31;
  v36.size.height = Height;
  CGRectGetMaxX(v36);
  [v1 bounds];
  CGRectGetWidth(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v31;
  v38.size.height = Height;
  CGRectGetWidth(v38);
  [v1 bounds];
  CGRectGetHeight(v39);
  v19 = [v1 traitCollection];
  [v1 bounds];
  sub_1007709CC();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView];
  [v28 setFrame:{v21, v23, v25, v27}];
  [v28 setNeedsLayout];
  [v28 layoutIfNeeded];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView] setFrame:{v21, v23, v25, v27}];
  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView];
  if (result)
  {
    return [result setFrame:{v21, v23, v25, v27}];
  }

  return result;
}

uint64_t sub_1005049F4()
{
  v1 = v0;
  v80 = sub_10076E21C();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10076443C();
  v4 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v73 - v7;
  v8 = sub_100763ADC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  *&v85 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v73 - v13;
  v15 = [v0 traitCollection];
  sub_1007706EC();

  v83 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView];
  [v83 frame];
  sub_100770A3C();
  v82 = v16;
  v81 = v17;
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView];
  if (qword_10093FD10 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v8, qword_10099E208);
  v24 = type metadata accessor for SubscriptionLockupView();
  v90.receiver = v22;
  v90.super_class = v24;
  v84 = v24;
  objc_msgSendSuper2(&v90, "layoutMargins");
  v26 = v25;
  v28 = v27;
  v29 = [v22 traitCollection];
  v86 = v9;
  v30 = *(v9 + 16);
  v79 = v8;
  v77 = v30;
  v30(v14, v23, v8);
  v31 = sub_100763A4C();
  if ((v33 & 1) == 0 && ((v31 | v32) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v34 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v34 = qword_100944CA0;
    }

    v35 = v76;
    v36 = sub_10000A61C(v76, v34);
    v37 = v74;
    (*(v4 + 16))(v74, v36, v35);
    v38 = v75;
    (*(v4 + 32))(v75, v37, v35);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v4 + 8))(v38, v35);
  }

  sub_10076398C();
  v76 = v39;
  v41 = v40;

  v42 = *(v86 + 8);
  v43 = v79;
  v86 += 8;
  v42(v14, v79);
  v44 = v28 + v26 + v41;
  v45 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_separatorView];
  v46 = OBJC_IVAR____TtC20ProductPageExtension13SeparatorView_separator;
  swift_beginAccess();
  v47 = v78;
  v48 = v80;
  (*(v78 + 16))(v3, &v45[v46], v80);
  sub_10076E1DC();
  v50 = v49;
  (*(v47 + 8))(v3, v48);
  v51 = [v1 traitCollection];
  v52 = v19;
  if (sub_10077071C())
  {
    v53 = v85;
    if (qword_100940750 != -1)
    {
      swift_once();
    }

    v54 = qword_10095B310;
  }

  else
  {
    v53 = v85;
    if (qword_100940748 != -1)
    {
      swift_once();
    }

    v54 = qword_10095B2F8;
  }

  v55 = sub_10000A61C(v43, v54);
  v77(*&v53, v55, v43);

  sub_1007639AC();
  v57 = (v44 - v56) * 0.5;
  v58 = [v1 traitCollection];
  v59 = sub_10077071C();

  if (v59)
  {
    v60 = 18.0;
  }

  else
  {
    v60 = 18.0 - v57;
  }

  v61 = v21 + v57;
  v62 = v50 + v44 + v60;
  v85 = v44;
  v63 = v50;
  v64 = v82;
  v91.origin.x = v82;
  v65 = v81;
  v91.origin.y = v81;
  v91.size.width = v52;
  v91.size.height = v61;
  MinX = CGRectGetMinX(v91);
  v92.origin.x = v64;
  v92.origin.y = v65;
  v92.size.width = v52;
  v92.size.height = v61;
  [v45 setFrame:{MinX, CGRectGetMaxY(v92) - v62, v52, v63}];
  v93.origin.x = v64;
  v93.origin.y = v65;
  v93.size.width = v52;
  v93.size.height = v61;
  v67 = CGRectGetMinX(v93);
  [v45 frame];
  [v22 setFrame:{v67, v60 + CGRectGetMaxY(v94), *&v76, v85}];
  v68 = v83;
  [v45 setHidden:{objc_msgSend(*&v83[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_separatorView], "isHidden") ^ 1}];
  [v22 setHidden:{objc_msgSend(*&v68[OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_lockupView], "isHidden") ^ 1}];
  if (qword_100940740 != -1)
  {
    swift_once();
  }

  v69 = v84;
  v89.receiver = v22;
  v89.super_class = v84;
  objc_msgSendSuper2(&v89, "setLayoutMargins:", xmmword_1009A05E0, *&qword_1009A05F0, unk_1009A05F8);
  v70 = *&v22[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v88.receiver = v22;
  v88.super_class = v69;
  objc_msgSendSuper2(&v88, "layoutMargins");
  [v70 setLayoutMargins:?];
  v71 = *&v22[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView];
  v87.receiver = v22;
  v87.super_class = v69;
  objc_msgSendSuper2(&v87, "layoutMargins");
  [v71 setLayoutMargins:?];
  return (v42)(*&v53, v43);
}

id sub_100505288()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_1007706EC();

  [v1 bounds];
  CGRectGetMaxX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  v3 = [v1 traitCollection];
  [v1 bounds];
  sub_1007709CC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton];

  return [v12 setFrame:{v5, v7, v9, v11}];
}

id sub_1005053B8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706FC();

  if (v3)
  {
    sub_10050469C();
  }

  else
  {
    sub_100504324();
  }

  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView] layoutIfNeeded];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView] bounds];

  return [v4 setContentSize:{v5, v6}];
}

void sub_1005055B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators;
  if ((*(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent;
    [*(v1 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v5 = v4;
    [*(v1 + v3) bounds];
    if (CGRectGetHeight(v10) < v5)
    {
      [*(v1 + v3) flashScrollIndicators];
      *(v1 + v2) = 1;
    }
  }

  v6 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators;
  if ((*(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators) & 1) == 0)
  {
    v7 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView);
    [v7 contentSize];
    v9 = v8;
    [v7 bounds];
    if (CGRectGetHeight(v11) < v9)
    {
      [v7 flashScrollIndicators];
      *(v0 + v6) = 1;
    }
  }
}

id sub_1005056B4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_1007706EC();

  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView];
    v6 = OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent;
    [*(v5 + OBJC_IVAR____TtC20ProductPageExtension33AppPromotionDetailPageContentView_primaryContent) contentSize];
    v8 = v7;
    [*(v5 + v6) bounds];
    v4 = CGRectGetHeight(v12) >= v8;
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView];

  return [v9 setAlwaysBounceVertical:v4];
}

id sub_100505780()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView];
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = Strong;
  if (Strong)
  {
  }

  v5 = OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView;
  v6 = [*(v2 + OBJC_IVAR____TtC20ProductPageExtension30AppPromotionMediaContainerView_artworkView) isHidden];
  v7 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView];
  if (v4 || (v6 & 1) == 0)
  {
    if (v8)
    {
      v10 = v6;
      type metadata accessor for VideoMirrorView();
      if (swift_dynamicCastClass())
      {
        if (v10)
        {
LABEL_25:
          v45 = *&v1[v7];
          if (v45)
          {
            [v45 setHidden:0];
          }

          return [v1 setNeedsLayout];
        }

LABEL_13:
        v11 = *(v2 + v5);
        v12 = type metadata accessor for MirrorView();
        v13 = objc_allocWithZone(v12);
        swift_unknownObjectWeakInit();
        v14 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
        v15 = objc_allocWithZone(CALayer);
        v16 = v11;
        *&v13[v14] = [v15 init];
        *&v13[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext] = 0;
        v13[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v13[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsScaleFactor] = 0x3FF0000000000000;
        *&v13[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset] = 0;
        v46.receiver = v13;
        v46.super_class = v12;
        v17 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v17 setClipsToBounds:1];
        [v17 setUserInteractionEnabled:0];
        v18 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
        [*&v17[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v19) = 1.0;
        [*&v17[v18] setOpacity:v19];
        [*&v17[v18] setAnchorPoint:{0.5, 0.5}];
        v20 = qword_10093F780;
        v21 = *&v17[v18];
        if (v20 != -1)
        {
          swift_once();
        }

        sub_10000A5D4(&qword_100948AE0);
        isa = sub_10076FE3C().super.isa;
        [v21 setActions:isa];

        v23 = *&v17[v18];
        v24 = objc_opt_self();
        v25 = v23;
        v26 = [v24 mainScreen];
        [v26 scale];
        v28 = v27;

        [v25 setContentsScale:v28];
        [*&v17[v18] setMasksToBounds:1];
        v29 = *&v17[v18];
        v30 = *&CATransform3DIdentity.m33;
        v51 = *&CATransform3DIdentity.m31;
        v52 = v30;
        v31 = *&CATransform3DIdentity.m43;
        v53 = *&CATransform3DIdentity.m41;
        v54 = v31;
        v32 = *&CATransform3DIdentity.m13;
        v47 = *&CATransform3DIdentity.m11;
        v48 = v32;
        v33 = *&CATransform3DIdentity.m23;
        v49 = *&CATransform3DIdentity.m21;
        v50 = v33;
        [v29 setTransform:&v47];
        sub_1000F8300();
        v34 = [v17 layer];

        [v34 addSublayer:*&v17[v18]];
        v35 = *&v1[v7];
        if (!v35)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

      if (!v4)
      {
        goto LABEL_25;
      }
    }

    else if (!v4)
    {
      if (v6)
      {
        return [v1 setNeedsLayout];
      }

      goto LABEL_13;
    }

    v38 = swift_unknownObjectWeakLoadStrong();
    v39 = *&CATransform3DIdentity.m33;
    v51 = *&CATransform3DIdentity.m31;
    v52 = v39;
    v40 = *&CATransform3DIdentity.m43;
    v53 = *&CATransform3DIdentity.m41;
    v54 = v40;
    v41 = *&CATransform3DIdentity.m13;
    v47 = *&CATransform3DIdentity.m11;
    v48 = v41;
    v42 = *&CATransform3DIdentity.m23;
    v49 = *&CATransform3DIdentity.m21;
    v50 = v42;
    v43 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
    v17 = sub_1002831F8(v38, &v47, 1.0, 0.0);
    v35 = *&v1[v7];
    if (!v35)
    {
LABEL_16:
      v36 = 0;
LABEL_24:
      *&v1[v7] = v17;
      v44 = v17;

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView] insertSubview:v44 atIndex:0];
      [v1 setNeedsLayout];

      goto LABEL_25;
    }

LABEL_23:
    [v35 removeFromSuperview];
    v36 = *&v1[v7];
    goto LABEL_24;
  }

  if (v8)
  {
    [*&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView] removeFromSuperview];
    v9 = *&v1[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v1[v7] = 0;

  return [v1 setNeedsLayout];
}

void sub_100505C94(char a1, char a2)
{
  v5 = [v2 traitCollection];
  v6 = sub_1007706FC();

  if ((v6 & 1) == 0)
  {
    if (a1)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v7;
    if (a2)
    {
      v10 = objc_opt_self();
      v16[4] = sub_1005076E8;
      v16[5] = v9;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 1107296256;
      v16[2] = sub_10009AEDC;
      v16[3] = &unk_1008987E8;
      v11 = _Block_copy(v16);

      [v10 animateWithDuration:4 delay:v11 options:0 animations:0.3 completion:0.0];

      _Block_release(v11);
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v13 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView);
        v14 = Strong;

        [v13 setAlpha:v7];
        v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton];
        [v15 setAlpha:v7];
      }
    }
  }
}

void sub_100505EAC(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [*(Strong + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView) setAlpha:a1];
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_closeButton] setAlpha:a1];
  }
}

id sub_100505F40(void *a1)
{
  v2 = v1;
  sub_1005060D4(a1);
  sub_100506394(a1);
  v4 = [v1 traitCollection];
  v5 = sub_10077070C();

  if (v5)
  {
    v6 = -*&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin];
  }

  else
  {
    v6 = 0.0;
  }

  [*&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v6}];
  sub_1005068FC();
  sub_1005064AC();
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator])
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v8 = [Strong traitCollection];

      if (v8)
      {
        v9 = v8;
        if (sub_1007706EC())
        {
          LODWORD(v8) = sub_10077071C();
        }

        else
        {
          LODWORD(v8) = 0;
        }

        if (!a1)
        {
LABEL_18:
          if ((v8 & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

LABEL_19:
          sub_1004ADC54(0);
          goto LABEL_20;
        }

LABEL_11:
        v10 = a1;
        if (sub_1007706EC())
        {
          v11 = sub_10077071C();

          if (((v8 ^ v11) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {

          if ((v8 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        goto LABEL_19;
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    if (!a1)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

LABEL_21:

  return [v2 setNeedsLayout];
}

void sub_1005060D4(void *a1)
{
  v2 = v1;
  v4 = sub_10075FEEC();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 horizontalSizeClass];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v2 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v9 != v11)
  {
    sub_1005056B4();
    v12 = [v2 traitCollection];
    sub_1007706FC();

    v13 = enum case for CornerStyle.continuous(_:);
    v14 = *(v5 + 104);
    v14(v8, enum case for CornerStyle.continuous(_:), v4);
    sub_1007638AC();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_10075F98C();
    v15(v8, v4);
    v14(v8, v13, v4);
    sub_1007638AC();
    v15(v8, v4);
    Strong = swift_unknownObjectWeakLoadStrong();
    [Strong _setCornerRadius:26.0];

    v17 = [v2 traitCollection];
    v18 = sub_1007706FC();

    if (v18)
    {
      sub_100505780();
    }

    else
    {
      v19 = *&v2[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView];
      if (v19)
      {
        [v19 setHidden:1];
      }
    }

    [v2 setNeedsLayout];
  }
}

void sub_100506394(id a1)
{
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
    if (v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode] == 1)
    {
      v6 = [v1 traitCollection];
      v7 = [v6 userInterfaceStyle];

      v8 = v7 != 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView];

    [v9 setHidden:v8];
  }
}

void sub_1005064AC()
{
  v1 = v0;
  v2 = sub_10076361C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v40 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v40 - v6;
  v43 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_separatorView);
  v8 = v43;
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  swift_beginAccess();
  v10 = *(v3 + 16);
  v48 = v3 + 16;
  v10(v7, v0 + v9, v2);
  v11 = sub_1007635FC();
  v12 = *(v3 + 8);
  v12(v7, v2);
  [v8 setOverrideUserInterfaceStyle:v11];
  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView);
  v44 = v9;
  v45 = v1;
  v14 = v7;
  v42 = v7;
  v15 = v7;
  v16 = v2;
  v10(v15, v1 + v9, v2);
  v41 = v10;
  v17 = sub_1007635FC();
  v18 = v14;
  v19 = v16;
  v46 = v3 + 8;
  v12(v18, v16);
  v47 = v12;
  v20 = v13;
  [v13 setOverrideUserInterfaceStyle:v17];
  v21 = v40;
  v22 = v19;
  v10(v40, v1 + v9, v19);
  sub_1007635FC();
  v12(v21, v19);
  sub_10076FF9C();
  v23 = sub_10076FF6C();

  v49[3] = sub_100016F40(0, &unk_10095B410);
  v49[0] = v23;
  v24 = v23;
  sub_100620A88(v49);
  v25 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView;
  v26 = [*&v20[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView] isHidden];
  v27 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v26)
  {
    v27 = v25;
  }

  v28 = [*(*&v20[v27] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v28 setCompositingFilter:v24];

  v29 = [*&v20[v25] isHidden];
  v30 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v29)
  {
    v30 = v25;
  }

  v31 = [*(*(*&v20[v30] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v31 setCompositingFilter:v24];

  v32 = [*&v20[v25] isHidden];
  v33 = OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_appLockupView;
  if (!v32)
  {
    v33 = v25;
  }

  v34 = *(*&v20[v33] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v35 = v42;
  v41(v42, v45 + v44, v22);
  v36 = v34;
  v37 = sub_1007635FC();
  v47(v35, v22);
  if (v37 == 1)
  {
    sub_100016F40(0, &qword_100942F10);
    v38 = sub_100770E1C();
  }

  else
  {
    v38 = [objc_opt_self() whiteColor];
  }

  v39 = v38;
  [v36 setTintColor:v38];
}

uint64_t sub_1005068FC()
{
  v1 = sub_100763ADC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v18 - v7;
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView];
  v10 = [v0 traitCollection];
  if (sub_10077071C())
  {
    if (qword_100940750 != -1)
    {
      swift_once();
    }

    v11 = qword_10095B310;
  }

  else
  {
    if (qword_100940748 != -1)
    {
      swift_once();
    }

    v11 = qword_10095B2F8;
  }

  v12 = sub_10000A61C(v1, v11);
  v13 = *(v2 + 16);
  v13(v8, v12, v1);

  v14 = *&v9[OBJC_IVAR____TtC20ProductPageExtension22SubscriptionLockupView_iapLockupView];
  v13(v4, v8, v1);
  v15 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 24))(&v14[v15], v4, v1);
  swift_endAccess();
  [v14 setNeedsLayout];
  v16 = *(v2 + 8);
  v16(v4, v1);
  [v9 setNeedsLayout];
  return (v16)(v8, v1);
}

uint64_t sub_100506B94(int a1, id a2)
{
  [a2 locationInView:v2];
  v4 = v3;
  v6 = v5;
  v7 = [v2 hitTest:0 withEvent:?];
  sub_100016F40(0, &qword_10094D040);
  if ((sub_100770EEC() & 1) == 0)
  {

    return 1;
  }

  [v2 bounds];
  v12.x = v4;
  v12.y = v6;
  if (!CGRectContainsPoint(v13, v12))
  {
    goto LABEL_9;
  }

  if (!v7)
  {
    return 0;
  }

  sub_100016F40(0, &qword_1009441F0);
  v7 = v7;
  v8 = v2;
  v9 = sub_100770EEC();

  if ((v9 & 1) == 0)
  {
LABEL_9:

    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return 0;
}

id sub_100506E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AppPromotionDetailPageView()
{
  result = qword_10095B3D8;
  if (!qword_10095B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100507074()
{
  result = sub_10076361C();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10050716C()
{
  result = qword_10095B3E8;
  if (!qword_10095B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095B3E8);
  }

  return result;
}

void sub_1005071E0(void *a1)
{
  v2 = v1;
  sub_100648480();
  swift_unknownObjectWeakAssign();
  sub_10064628C();
  v3 = [v1 traitCollection];
  v4 = sub_1007706FC();

  if (v4)
  {
    sub_100505780();
  }

  [v2 setNeedsLayout];
}

uint64_t (*sub_100507298(uint64_t **a1))()
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
  v2[4] = sub_100503CD4(v2);
  return sub_100019A4C;
}

uint64_t sub_10050731C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100507370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005073DC(uint64_t *a1))()
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

uint64_t sub_100507478(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_1005075E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100507668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005076B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1005076F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1005077B4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_displayModeTransitionCoordinator) = 0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageScrollView;
  *(v1 + v2) = [objc_allocWithZone(UIScrollView) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_shadowView;
  sub_10075F99C();
  *(v1 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_pageContainerView;
  sub_10076394C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v4) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v6 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaContainerView;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for AppPromotionMediaContainerView()) init];
  v7 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_contentView;
  v8 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageContentView());
  *(v1 + v7) = sub_1006CF118(0);
  v9 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_learnMoreView;
  v10 = objc_allocWithZone(type metadata accessor for AppPromotionLearnMoreView());
  *(v1 + v9) = sub_1006363F8(0);
  v11 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_separatorView;
  type metadata accessor for SeparatorView();
  *(v1 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_lockupView;
  type metadata accessor for SubscriptionLockupView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_borderView;
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaReplicationView) = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_dismissTapGestureRecognizer;
  *(v1 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_videoBackgroundColor) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_haveFlashedScrollIndicators) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_isCollapsing) = 0;
  v15 = OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_mediaOverlayStyle;
  v16 = enum case for MediaOverlayStyle.matchSystem(_:);
  v17 = sub_10076361C();
  (*(*(v17 - 8) + 104))(v1 + v15, v16, v17);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_includeBorderInDarkMode) = 0;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension26AppPromotionDetailPageView_defaultPageMargin) = 0;
  sub_10077156C();
  __break(1u);
}

void *sub_100507A38(uint64_t a1)
{
  v38 = sub_10075E1EC();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v30 = v1;
    v44 = _swiftEmptyArrayStorage;
    sub_1004BBB88(0, v5, 0);
    v43 = v44;
    v7 = a1 + 56;
    result = sub_1007712DC();
    v8 = result;
    v9 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v5;
    v33 = v3;
    v34 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v12 = v37;
      v13 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v8, v38);
      v14 = sub_10075E1DC();
      v41 = v15;
      v42 = v14;
      v40 = sub_10075E1CC();
      v17 = v16;
      result = (*(v3 + 8))(v12, v13);
      v18 = v43;
      v44 = v43;
      v20 = v43[2];
      v19 = v43[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_1004BBB88((v19 > 1), v20 + 1, 1);
        v18 = v44;
      }

      v18[2] = v20 + 1;
      v21 = &v18[4 * v20];
      v22 = v41;
      v21[4] = v42;
      v21[5] = v22;
      v21[6] = v40;
      v21[7] = v17;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v34;
      v23 = *(v34 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v18;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v31 + 8 * v11);
        v3 = v33;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_100032734(v8, v39, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_100032734(v8, v39, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v32)
      {
        return v43;
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
  }

  return result;
}

Swift::Int sub_100507D50()
{
  sub_10077175C();
  sub_10077008C();
  sub_10077008C();
  return sub_1007717AC();
}

uint64_t sub_100507DB8()
{
  sub_10077008C();

  return sub_10077008C();
}

Swift::Int sub_100507E08()
{
  sub_10077175C();
  sub_10077008C();
  sub_10077008C();
  return sub_1007717AC();
}

uint64_t sub_100507E6C(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_10077167C(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_10077167C();
    }
  }

  return result;
}

uint64_t sub_100507F10()
{
  sub_100016F40(0, &qword_100942F10);
  result = sub_100770D1C();
  qword_1009A0618 = result;
  return result;
}

uint64_t sub_100507F54()
{
  v0 = sub_10076048C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = sub_10076046C();
  result = (*(v1 + 8))(v4, v0);
  qword_10095B420 = v5;
  return result;
}

uint64_t sub_10050804C()
{
  v34 = sub_1007688FC();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_10076D1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D9AC();
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v25 - v8;
  __chkstk_darwin(v9);
  v37 = &v25 - v10;
  v11 = sub_10076892C();
  sub_10000DB18(v11, qword_10095B428);
  v32 = sub_10000A61C(v11, qword_10095B428);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v45 = 0x4024000000000000;
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1090);
  v14 = *(v12 - 8);
  v30 = *(v14 + 16);
  v15 = v14 + 16;
  v30(v4, v13, v12);
  v28 = v15;
  v29 = enum case for FontSource.useCase(_:);
  v36 = v2[13];
  v36(v4);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v42);
  v17 = v2[2];
  v17(v16, v4, v1);
  v27 = v17;
  sub_10076D9BC();
  v26 = v2[1];
  v26(v4, v1);
  v18 = v30;
  v30(v4, v13, v12);
  v19 = v29;
  (v36)(v4, v29, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v42);
  v17(v20, v4, v1);
  sub_10076D9BC();
  v21 = v26;
  v26(v4, v1);
  v18(v4, v13, v12);
  (v36)(v4, v19, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v42);
  v27(v22, v4, v1);
  sub_10076D9BC();
  v21(v4, v1);
  v44 = &protocol witness table for Double;
  v43 = &type metadata for Double;
  v42[0] = 0x4024000000000000;
  if (qword_100940760 != -1)
  {
    swift_once();
  }

  v23 = qword_10095B420;
  [v23 contentInsets];

  (*(v33 + 104))(v35, enum case for PlatformSelectorViewLayout.Metrics.AccessoryAlignment.inline(_:), v34);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39 = 0x402C000000000000;
  return sub_10076890C();
}

char *sub_1005085EC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10076771C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v13 - 8);
  v15 = &ObjectType - v14;
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_numberOfBadges] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_didSelectHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v18 = sub_10076D3DC();
  v53 = sub_10000A61C(v18, qword_1009A1090);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v15, v53, v18);
  v54 = *(v19 + 56);
  v54(v15, 0, 1, v18);
  v57 = enum case for DirectionalTextAlignment.none(_:);
  v56 = *(v10 + 104);
  v56(v12);
  v55 = sub_1007626BC();
  v21 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel] = sub_1007626AC();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v22 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel] = sub_1007626AC();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v23 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel] = sub_1007626AC();
  v24 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView] = v24;
  v58.receiver = v4;
  v58.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  sub_10000A5D4(&unk_100942870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784DC0;
  v27 = *&v25[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  *(inited + 32) = v27;
  v28 = *&v25[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel];
  *(inited + 40) = v28;
  v29 = *&v25[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel];
  *(inited + 48) = v29;
  v30 = inited & 0xC000000000000001;
  v31 = v25;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = sub_10077149C();
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (qword_100940758 != -1)
  {
    swift_once();
  }

  [v36 setTextColor:{qword_1009A0618, ObjectType}];
  [v31 addSubview:v36];

  if (v30)
  {
    v37 = sub_10077149C();
  }

  else
  {
    v37 = *(inited + 40);
  }

  v38 = v37;
  if (qword_100940758 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_1009A0618];
  [v31 addSubview:v38];

  if (v30)
  {
    v39 = sub_10077149C();
  }

  else
  {
    v39 = *(inited + 48);
  }

  v40 = v39;
  if (qword_100940758 != -1)
  {
    swift_once();
  }

  v41 = qword_1009A0618;
  [v40 setTextColor:qword_1009A0618];
  [v31 addSubview:v40];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView;
  [*&v31[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView] setTintColor:v41];
  v43 = *&v31[v42];
  v44 = v31;
  [v44 addSubview:v43];
  [v44 layoutMargins];
  v46 = v45;
  [v44 layoutMargins];
  v48 = v47;
  [v44 layoutMargins];
  [v44 setLayoutMargins:{v46, 0.0, v48}];
  v49 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v44 action:"didTapSelectorView"];

  [v44 addGestureRecognizer:v49];
  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v44 selector:"smartInvertDidChange" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  sub_100016F40(0, &qword_100944E30);
  sub_10077075C();
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v44;
}

void sub_100508D8C()
{
  swift_getObjectType();
  v1 = sub_100762FFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v53 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v36 - v5;
  v7 = sub_10077164C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images))
    {
      v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_images);
      v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_pageTraits);
      if (v13)
      {
        v48 = v9;
        v49 = v0;
        v46 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_text);
        swift_getObjectType();

        swift_unknownObjectRetain();
        v50 = sub_100509DF4(v12, v13);
        if (qword_100940768 != -1)
        {
          swift_once();
        }

        v14 = sub_10076892C();
        v45 = sub_10000A61C(v14, qword_10095B428);
        sub_10076891C();
        sub_10000CF78(v54, v54[3]);
        sub_1000FF02C();
        v51 = v13;
        sub_10076D40C();
        v16 = v15;
        (*(v8 + 8))(v11, v48);
        v17 = sub_10050A104(v12, v16);

        sub_10000CD74(v54);
        sub_10000A5D4(&unk_10095B4B0);
        v18 = *(v2 + 72);
        v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v37 = swift_allocObject();
        v20 = v37 + v19;
        v21 = *(v2 + 104);
        v42 = enum case for BadgeDisplayStyle.above(_:);
        (v21)(v37 + v19);
        v44 = v18;
        v39 = enum case for BadgeDisplayStyle.inline(_:);
        (v21)(v20 + v18);
        v22 = v20 + 2 * v18;
        *v22 = v17;
        *(v22 + 8) = 0;
        v43 = enum case for BadgeDisplayStyle.left(_:);
        v21();
        v40 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
        v41 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
        v25 = *(v2 + 16);
        v23 = v2 + 16;
        v24 = v25;
        v26 = (v23 + 72);
        v38 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
        v48 = v23;
        v27 = (v23 - 8);
        v28 = 3;
        v36[1] = v20;
        v47 = v1;
        while (1)
        {
          v24(v6, v20, v1);
          v33 = v53;
          v24(v53, v6, v1);
          v34 = (*v26)(v33, v1);
          if (v34 == v43)
          {
            v29 = v49;
            v30 = v41;
          }

          else if (v34 == v42)
          {
            v29 = v49;
            v30 = v40;
          }

          else
          {
            if (v34 != v39)
            {
              v35 = *v27;
              v31 = *(v49 + v40);
              v35(v53, v1);
              goto LABEL_9;
            }

            v29 = v49;
            v30 = v38;
          }

          v31 = *(v29 + v30);
LABEL_9:

          swift_unknownObjectRetain();
          v32 = sub_1007688DC();

          swift_unknownObjectRelease();
          [v31 setAttributedText:v32];

          v1 = v47;
          (*v27)(v6, v47);
          v20 += v44;
          if (!--v28)
          {

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_100509498()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076892C();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076894C();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100762FFC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v31 - v17;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  v38 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v16);
  sub_100762FEC();
  v19 = *(v10 + 16);
  v19(v14, v18, v9);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 == enum case for BadgeDisplayStyle.left(_:))
  {
    v21 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
LABEL_7:
    v22 = *&v0[v21];
    goto LABEL_8;
  }

  if (v20 == enum case for BadgeDisplayStyle.above(_:))
  {
    v21 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
    goto LABEL_7;
  }

  if (v20 == enum case for BadgeDisplayStyle.inline(_:))
  {
    v21 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
    goto LABEL_7;
  }

  v29 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  v30 = *(v10 + 8);
  v31 = v10 + 8;
  v32 = v30;
  v22 = v29;
  v32(v14, v9);
LABEL_8:
  sub_100509998();
  if (qword_100940768 != -1)
  {
    swift_once();
  }

  v23 = sub_10000A61C(v4, qword_10095B428);
  (*(v34 + 16))(v35, v23, v4);
  v19(v33, v18, v9);
  v46 = sub_1007626BC();
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v24 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_accessoryImageView];
  v43 = sub_100016F40(0, &qword_10094A280);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v22;
  v26 = v24;
  sub_10076893C();
  sub_10076422C();
  v27 = v39;
  sub_1007688EC();

  (*(v40 + 8))(v27, v41);
  (*(v36 + 8))(v8, v37);
  return (*(v10 + 8))(v18, v9);
}

id sub_100509998()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
  sub_1007626BC();
  v2 = v1;
  v3 = sub_100770EEC();

  [v2 setHidden:(v3 & 1) == 0];
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel);
  v5 = sub_100770EEC();

  [v4 setHidden:(v5 & 1) == 0];
  v6 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel);
  v7 = sub_100770EEC();

  return [v6 setHidden:(v7 & 1) == 0];
}

uint64_t sub_100509AE4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_100509AF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

id sub_100509B40()
{
  v1 = sub_100762FFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_100762FEC();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for BadgeDisplayStyle.left(_:))
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithTwoColumnsLabel;
  }

  else if (v8 == enum case for BadgeDisplayStyle.above(_:))
  {
    v9 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
  }

  else
  {
    if (v8 != enum case for BadgeDisplayStyle.inline(_:))
    {
      v12 = *(v2 + 8);
      v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
      v12(v4, v1);
      return v13;
    }

    v9 = OBJC_IVAR____TtC20ProductPageExtension20PlatformSelectorView_descriptionWithBadgesInlineLabel;
  }

  v10 = *(v0 + v9);

  return v10;
}

uint64_t sub_100509DF4(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100016F40(0, &qword_100942F00);
  if (qword_100940B88 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  sub_10000A61C(v8, qword_1009A1090);
  v9 = [a2 traitCollection];
  v10 = sub_100770B3C();

  v17[1] = sub_100016F40(0, &qword_1009544A0);

  v17[0] = [a2 traitCollection];
  if (qword_100940768 != -1)
  {
    swift_once();
  }

  v11 = sub_10076892C();
  sub_10000A61C(v11, qword_10095B428);
  sub_10076891C();
  sub_10000CF78(v18, v18[3]);
  sub_1000FF02C();
  sub_10076D40C();
  (*(v4 + 8))(v6, v3);
  sub_10000A5D4(&unk_10094E7E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_1001E4F90(inited + 32);
  v15 = sub_10077078C();

  sub_10000CD74(v18);
  return v15;
}

double sub_10050A104(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v5 = 0;
    v6 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v7 size];
      v11 = v10;

      v6 = v6 + v11 + a2;
      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0.0;
}

char *sub_10050A204(unint64_t a1)
{
  v25 = sub_10075F21C();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v5 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    v19 = (v2 + 8);
    v20 = i;
    v21 = a1;
    while (v23)
    {
      sub_10077149C();
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v7 = v24;
      sub_100760E3C();
      v26 = sub_10075F20C();
      v9 = v8;
      (*v19)(v7, v25);
      v10 = sub_100760E6C();
      v12 = v11;
      v13 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_10049E120(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_10049E120((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[32 * v15];
      *(v16 + 4) = v26;
      *(v16 + 5) = v9;
      *(v16 + 6) = v10;
      *(v16 + 7) = v12;
      v27 = v13;
      v2 = sub_100760E2C();
      v17 = sub_100507A38(v2);

      sub_1000F9870(v17);

      ++v5;
      a1 = v21;
      if (v6 == v20)
      {
        return v27;
      }
    }

    if (v5 >= *(v22 + 16))
    {
      goto LABEL_16;
    }

    v6 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_10050A48C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10050A4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10050A528()
{
  result = qword_10095B4C0;
  if (!qword_10095B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095B4C0);
  }

  return result;
}

uint64_t sub_10050A57C()
{
  result = JUScreenClassHasRoundedCorners();
  v1 = 8.0;
  if (result)
  {
    v1 = 27.0;
  }

  qword_10095B4C8 = *&v1;
  return result;
}

BOOL sub_10050A5AC()
{
  v1 = *(v0 + 16);
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 superview];
  if (v10)
  {
    v65 = v9;
    v66 = v7;
    v68 = v5;
    v70 = v3;
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v1 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v72.origin.x = v13;
    v72.origin.y = v15;
    v72.size.width = v17;
    v72.size.height = v19;
    Height = CGRectGetHeight(v72);
    v73.origin.x = v21;
    v73.origin.y = v23;
    v73.size.width = v25;
    v73.size.height = v27;
    v29 = Height - CGRectGetHeight(v73);
    if (qword_100940770 != -1)
    {
      swift_once();
    }

    v30 = v29 - *&qword_10095B4C8;
    v5 = v68;
    v3 = v70;
    v9 = v65;
    v7 = v66;
  }

  else
  {
    v21 = 0.0;
    v30 = 0.0;
    v25 = 0.0;
    v27 = 0.0;
  }

  v74.origin.x = v3;
  v74.origin.y = v5;
  v74.size.width = v7;
  v74.size.height = v9;
  v31 = v21;
  v32 = v25;
  v33 = v27;
  if (CGRectEqualToRect(v74, *(&v30 - 1)))
  {
    return 0;
  }

  [v1 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [v1 superview];
  if (v43)
  {
    v67 = v40;
    v69 = v38;
    v71 = v36;
    v44 = v43;
    [v43 bounds];
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;

    [v1 frame];
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v75.origin.x = v46;
    v75.origin.y = v48;
    v75.size.width = v50;
    v75.size.height = v52;
    v59 = CGRectGetHeight(v75);
    if (qword_100940770 != -1)
    {
      v64 = v59;
      swift_once();
      v59 = v64;
    }

    v60 = v59 + *&qword_10095B4C8;
    v38 = v69;
    v36 = v71;
    v40 = v67;
  }

  else
  {
    v54 = 0;
    v60 = 0.0;
    v56 = 0;
    v58 = 0;
  }

  v76.origin.x = v36;
  v76.origin.y = v38;
  v76.size.width = v40;
  v76.size.height = v42;
  v61 = v54;
  v62 = v56;
  v63 = v58;
  return !CGRectEqualToRect(v76, *(&v60 - 1));
}

uint64_t sub_10050A844(char a1, char a2)
{
  if (*(v2 + 72) == (a1 & 1))
  {
    result = sub_10050A5AC();
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  v6 = *(v2 + 16);
  v7 = [v6 superview];
  if (a1)
  {
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      [v6 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v48.origin.x = v10;
      v48.origin.y = v12;
      v48.size.width = v14;
      v48.size.height = v16;
      Height = CGRectGetHeight(v48);
      v49.origin.x = v18;
      v49.origin.y = v20;
      v49.size.width = v22;
      v49.size.height = v24;
      v26 = Height - CGRectGetHeight(v49);
      if (qword_100940770 != -1)
      {
        swift_once();
      }

      v27 = v26 - *&qword_10095B4C8;
      goto LABEL_13;
    }
  }

  else if (v7)
  {
    v28 = v7;
    [v7 bounds];
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;

    [v6 frame];
    v18 = v37;
    v22 = v38;
    v24 = v39;
    v50.origin.x = v30;
    v50.origin.y = v32;
    v50.size.width = v34;
    v50.size.height = v36;
    v40 = CGRectGetHeight(v50);
    if (qword_100940770 != -1)
    {
      v46 = v40;
      swift_once();
      v40 = v46;
    }

    v27 = v40 + *&qword_10095B4C8;
    goto LABEL_13;
  }

  v18 = 0.0;
  v27 = 0.0;
  v22 = 0.0;
  v24 = 0.0;
LABEL_13:
  v41 = swift_allocObject();
  *(v41 + 16) = v2;
  *(v41 + 24) = v18;
  *(v41 + 32) = v27;
  *(v41 + 40) = v22;
  *(v41 + 48) = v24;
  if (a2)
  {
    v42 = objc_opt_self();
    v47[4] = sub_10050AD94;
    v47[5] = v41;
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 1107296256;
    v47[2] = sub_10009AEDC;
    v47[3] = &unk_1008988B8;
    v43 = _Block_copy(v47);

    [v42 _animateUsingSpringWithTension:1 friction:v43 interactive:0 animations:120.0 completion:12.0];
    _Block_release(v43);
  }

  else
  {

    [v6 setFrame:{v18, v27, v22, v24}];
  }

  v44 = a1 & 1;
  *(v2 + 72) = a1 & 1;
  v45 = *(v2 + 32);
  if (!v45)
  {
  }

  v45(v44);

  return sub_1000B9010(v45);
}

uint64_t sub_10050ABA0(char a1)
{
  v3 = *(v1 + 24);
  v4 = [v3 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = sub_10077084C();
  if (v4 & 1) != 0 || ([v3 contentSize], v9 = v8, objc_msgSend(v3, "bounds"), v10 = v9 - CGRectGetHeight(v16) - *(v1 + 48), objc_msgSend(v3, "bounds"), v10 < CGRectGetHeight(v17)) && (sub_10076601C(), v11 = sub_10076600C(), v12 = sub_100765FEC(), v11, (v12))
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    [v3 contentOffset];
    v6 = v10 > v13 && v13 > 0.0;
    v7 = a1 & 1;
  }

  return sub_10050A844(v6, v7);
}

uint64_t sub_10050ACE4()
{
  sub_1000B9010(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10050AD5C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10050ADB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10050ADC8(uint64_t a1)
{
  v54 = a1;
  v59 = sub_10000A5D4(&qword_10095B618);
  v64 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = v46 - v1;
  v2 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v2 - 8);
  v65 = v46 - v3;
  v66 = sub_10076C2DC();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v6 = (v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10000A5D4(&qword_100942908);
  __chkstk_darwin(v7 - 8);
  v67 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  __chkstk_darwin(v12);
  v14 = v46 - v13;
  __chkstk_darwin(v15);
  v17 = v46 - v16;
  sub_10000A5D4(&qword_100942910);
  v18 = *(sub_10076C20C() - 8);
  v58 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v50 = v20;
  *(v20 + 16) = xmmword_1007844F0;
  v62 = v20 + v19;
  v73 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v73 = 0x4020000000000000;
  v71 = 0x4030000000000000;
  sub_10076C27C();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v57 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v26 = *(v4 + 104);
  v61 = v4 + 104;
  v63 = v26;
  v26(v6);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v73) = 0;
  sub_10076C29C();
  v73 = 0;
  sub_10076C29C();
  v60 = v14;
  v46[0] = v11;
  sub_10076C1CC();
  v73 = 0x3FF0000000000000;
  sub_10076C29C();
  v73 = 0x4024000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v56 = v6;
  v29 = v57;
  v30 = v66;
  v63(v6, v57, v66);
  LOBYTE(v73) = 0;
  sub_10076C29C();
  v73 = 0;
  sub_10076C29C();
  v31 = v58;
  v55 = v17;
  top = UIEdgeInsetsZero.top;
  v48 = left;
  sub_10076C1CC();
  v52 = 2 * v31;
  v73 = 0x3FF8000000000000;
  v71 = 0x4000000000000000;
  sub_10076C27C();
  v73 = 0x4034000000000000;
  sub_10076C29C();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v32 = v56;
  *v56 = v47;
  v33 = v63;
  v63(v32, v29, v30);
  LOBYTE(v73) = 0;
  sub_10076C29C();
  v73 = 0;
  sub_10076C29C();
  v34 = v52;
  sub_10076C1CC();
  v46[1] = v34 + v31;
  v75 = 0x4000000000000000;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v52 = sub_10050BAC4();
  v35 = v53;
  sub_10076757C();
  v36 = v59;
  sub_10076758C();
  v37 = *(v64 + 8);
  v64 += 8;
  v51 = v37;
  v37(v35, v36);
  v71 = v73;
  sub_10076C29C();
  v73 = 0x4034000000000000;
  sub_10076C29C();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  v38 = v56;
  *v56 = v47;
  v39 = v57;
  v33(v38, v57, v66);
  sub_1007704BC();
  LOBYTE(v73) = 0;
  sub_10076C29C();
  v73 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v75 = 0x4000000000000000;
  v40 = 4 * v58;
  v73 = 0;
  v74 = 1;
  v71 = 0x3FF0000000000000;
  v72 = 0;
  v41 = v53;
  sub_10076757C();
  v42 = v59;
  sub_10076758C();
  v51(v41, v42);
  v71 = v73;
  sub_10076C29C();
  v73 = 0x4038000000000000;
  sub_10076C29C();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  v43 = v56;
  *v56 = v47;
  v63(v43, v39, v66);
  LOBYTE(v73) = 0;
  sub_10076C29C();
  v73 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v73 = 0x4008000000000000;
  v58 += v40;
  v75 = 0x4000000000000000;
  v70 = 0x4000000000000000;
  v71 = 0x4008000000000000;
  v68 = 0x4000000000000000;
  v69 = 0x4000000000000000;
  sub_1007675AC();
  v44 = v59;
  sub_10076758C();
  v51(v41, v44);
  v71 = v73;
  sub_10076C29C();
  v73 = 0x4038000000000000;
  sub_10076C29C();
  v73 = 0x4030000000000000;
  v71 = 0x4034000000000000;
  sub_10076C27C();
  *v43 = v47;
  v63(v43, v57, v66);
  LOBYTE(v73) = 0;
  sub_10076C29C();
  v73 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v50;
}

unint64_t sub_10050BAC4()
{
  result = qword_10095B620;
  if (!qword_10095B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095B620);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeLinkedLabel()
{
  result = qword_10095B648;
  if (!qword_10095B648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10050BBCC(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = objc_msgSendSuper2(&v3, "textColor");

  return v1;
}

void sub_10050BC28(void *a1, uint64_t a2, void *a3)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v4 = v10.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v10, "setTextColor:", v5);
  v6 = [v4 textColor];
  if (v6)
  {
    v7 = v6;
    v8 = *&v4[qword_10095B640];
    *&v4[qword_10095B640] = v6;
    sub_100016F40(0, &qword_100942F10);
    v9 = v7;
    if ((sub_100770EEC() & 1) == 0)
    {
      sub_10050C644();
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_10050BD18(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "textAlignment");
}

void sub_10050BD5C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DynamicTypeLinkedLabel();
  v9.receiver = a1;
  v9.super_class = v5;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v9, "textAlignment");
  v8.receiver = v6;
  v8.super_class = v5;
  objc_msgSendSuper2(&v8, "setTextAlignment:", a3);
  if ([v6 textAlignment] != v7)
  {
    sub_10050C644();
  }
}

id sub_10050BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  *(v3 + qword_10095B628) = _swiftEmptyArrayStorage;
  *(v3 + qword_10095B630) = 0;
  *(v3 + qword_10095B638) = 0;
  v12 = qword_10095B640;
  sub_100016F40(0, &qword_100942F10);
  *(v3 + v12) = sub_100770CFC();
  v13 = sub_10076D3DC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v11, a1, v13);
  (*(v14 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v15 = sub_1007626AC();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right, v22, v23}];
  [v19 setUserInteractionEnabled:1];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v19 action:"labelTapped:"];
  [v19 addGestureRecognizer:v20];

  (*(v14 + 8))(a1, v13);
  return v19;
}

void sub_10050C0EC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "tintColorDidChange");
  sub_10050C644();
}

uint64_t sub_10050C148(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_10076268C();
  v6 = [v5 preferredContentSizeCategory];

  sub_10076267C();
  v7 = sub_10076D3DC();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v4, a1, v7);
  (*(v8 + 56))(v4, 0, 1, v7);
  sub_1007625DC();
  return sub_10050C644();
}

void sub_10050C274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = qword_10095B628;
  swift_beginAccess();
  *&v4[v8] = _swiftEmptyArrayStorage;

  if (*(*&v4[v8] + 16))
  {
    v9 = &UIAccessibilityTraitLink;
  }

  else
  {
    v9 = &UIAccessibilityTraitStaticText;
  }

  [v4 setAccessibilityTraits:*v9];
  *&v4[qword_10095B630] = a1;

  *&v4[qword_10095B638] = a2;

  sub_10075F9CC();
  v10 = objc_allocWithZone(NSString);
  v11 = sub_10076FF6C();

  v12 = [v10 initWithString:v11];

  v13 = *(a3 + 16);
  if (v13)
  {
    v27 = UIAccessibilityTraitLink;
    v28 = v12;
    v14 = v13 - 1;
    v15 = (a3 + 56);
    v29 = v8;
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      v18 = sub_10076FF6C();

      v19 = [v12 rangeOfString:v18 options:4];
      v21 = v20;

      if (v19 == sub_10075D75C())
      {

        if (!v14)
        {
          break;
        }
      }

      else
      {
        swift_beginAccess();
        v22 = *&v4[v8];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v4[v8] = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_10049D2F4(0, v22[2] + 1, 1, v22);
          *&v4[v8] = v22;
        }

        v25 = v22[2];
        v24 = v22[3];
        if (v25 >= v24 >> 1)
        {
          v22 = sub_10049D2F4((v24 > 1), v25 + 1, 1, v22);
        }

        v22[2] = v25 + 1;
        v26 = &v22[4 * v25];
        v26[4] = v19;
        v26[5] = v21;
        v26[6] = v16;
        v26[7] = v17;
        v8 = v29;
        *&v4[v29] = v22;
        swift_endAccess();
        [v4 setAccessibilityTraits:v27];

        v12 = v28;
        if (!v14)
        {
          break;
        }
      }

      --v14;
      v15 += 4;
    }
  }

  sub_10050C644();
}

id sub_10050C548()
{
  [v0 setAttributedText:0];
  *&v0[qword_10095B630] = 0;

  v1 = qword_10095B628;
  swift_beginAccess();
  *&v0[v1] = _swiftEmptyArrayStorage;

  if (*(*&v0[v1] + 16))
  {
    v2 = &UIAccessibilityTraitLink;
  }

  else
  {
    v2 = &UIAccessibilityTraitStaticText;
  }

  return [v0 setAccessibilityTraits:*v2];
}

void sub_10050C5FC(void *a1)
{
  v1 = a1;
  sub_10050C644();
}

uint64_t sub_10050C644()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_10076D3DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007625CC();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943250);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100016F40(0, &qword_100942F00);
  v10 = sub_10076268C();
  v11 = sub_100770B3C();

  v12 = *&v0[qword_10095B630];
  v13 = *&v0[qword_10095B640];

  v14 = v13;
  v15 = [v0 textAlignment];
  v50 = [v1 lineBreakMode];
  v16 = qword_10095B628;
  swift_beginAccess();
  v17 = *&v1[v16];

  v18 = [v1 tintColor];
  v19 = v18;
  if (v12)
  {
    v42 = v15;
    v46 = v8;
    v47 = v6;
    v48 = v5;
    v49 = v1;

    v44 = v12;
    v45 = v11;
    v20 = sub_10075F9DC();
    v53 = v17;
    v21 = v20;
    v22 = objc_allocWithZone(NSMutableAttributedString);
    v41 = v21;
    v23 = [v22 initWithAttributedString:v21];
    v24 = v14;
    v25 = v23;
    v26 = [v23 length];
    v52 = NSForegroundColorAttributeName;
    v43 = v24;
    v27 = v53;
    v40 = v26;
    [v25 addAttribute:? value:? range:?];
    v28 = *(v27 + 16);
    if (v28)
    {
      v51 = NSUnderlineStyleAttributeName;
      v29 = v27 + 56;
      do
      {
        v30 = *(v29 - 24);
        v31 = *(v29 - 16);
        if (v19)
        {

          v32 = v19;
        }

        else
        {
          v33 = objc_opt_self();

          v32 = [v33 systemBlueColor];
        }

        v34 = v19;
        [v25 addAttribute:v52 value:v32 range:{v30, v31}];
        if (UIAccessibilityButtonShapesEnabled())
        {
          isa = sub_1007703CC().super.super.isa;
          [v25 addAttribute:v51 value:isa range:{v30, v31}];
        }

        v29 += 32;
        --v28;
      }

      while (v28);
    }

    v36 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v36 setAlignment:v42];
    [v36 setLineBreakMode:v50];
    v37 = v36;
    [v25 addAttribute:NSParagraphStyleAttributeName value:v37 range:{0, v40}];

    v5 = v48;
    v1 = v49;
    v8 = v46;
    v6 = v47;
    v11 = v45;
  }

  else
  {

    v25 = 0;
  }

  v38 = sub_10050CB58(v25, v11);
  [v1 setAttributedText:v38];

  return (*(v6 + 8))(v8, v5);
}

id sub_10050CB58(void *a1, void *a2)
{
  v3 = a1;
  if (!a1 || !*(v2 + qword_10095B638))
  {
    goto LABEL_6;
  }

  v5 = objc_opt_self();

  v6 = v3;
  v7 = [v5 configurationWithFont:a2];
  v8 = sub_10076044C();

  if (!v8)
  {

LABEL_6:
    v22 = v3;
    return v3;
  }

  [v8 size];
  v10 = v9;
  v12 = v11;
  [a2 capHeight];
  v14 = floor((v13 - v12) * 0.5);
  v15 = [objc_opt_self() tintColor];
  v16 = [v8 imageWithTintColor:v15];

  v17 = [objc_opt_self() textAttachmentWithImage:v16];
  [v17 setBounds:{2.0, v14, v10, v12}];
  v3 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
  v18 = objc_allocWithZone(NSAttributedString);
  v19 = sub_10076FF6C();
  v20 = [v18 initWithString:v19];

  [v3 appendAttributedString:v20];
  v21 = [objc_opt_self() attributedStringWithAttachment:v17];
  [v3 appendAttributedString:v21];

  return v3;
}

uint64_t sub_10050CDB8(void *a1)
{
  v3 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  result = sub_10050D04C(a1);
  if ((v7 & 1) == 0)
  {
    v8 = result;
    v9 = qword_10095B628;
    swift_beginAccess();
    v10 = *(v1 + v9);
    v11 = *(v10 + 16);

    if (v11)
    {
      v12 = 0;
      for (i = (v10 + 56); ; i += 4)
      {
        if (v12 >= *(v10 + 16))
        {
          __break(1u);
          return result;
        }

        v15 = *(i - 1);
        v14 = *i;
        v17 = *(i - 3);
        v16 = *(i - 2);

        if (v8 >= v17 && v8 - v17 < v16)
        {
          break;
        }

        if (v11 == ++v12)
        {
        }
      }

      v19 = sub_10000A5D4(&unk_1009428E0);
      sub_10076F5AC();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v5, 1, v19) == 1)
      {

        return sub_10000CFBC(v5, &unk_100943200);
      }

      else
      {
        sub_100263BF0(v15, 1, v14, v5);

        return (*(v20 + 8))(v5, v19);
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10050CFE4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_10050CDB8(v4);
}

id sub_10050D04C(void *a1)
{
  v2 = v1;
  v4 = [v1 attributedText];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [objc_allocWithZone(NSTextStorage) initWithAttributedString:v5];
    v13 = [objc_allocWithZone(NSTextContainer) initWithSize:{v9, 1.79769313e308}];
    v14 = [objc_allocWithZone(NSLayoutManager) init];
    [v14 addTextContainer:v13];
    [v12 addLayoutManager:v14];
    [v13 setLineFragmentPadding:0.0];
    [v13 setLineBreakMode:{objc_msgSend(v2, "lineBreakMode")}];
    [v13 setMaximumNumberOfLines:{objc_msgSend(v2, "numberOfLines")}];
    [a1 locationInView:v7];
    v16 = v15;
    v18 = v17;
    [v14 usedRectForTextContainer:v13];
    v23 = [v14 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v16 - ((v9 - v19) * 0.5 - v20), v18 - ((v11 - v21) * 0.5 - v22)}];

    v5 = v14;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

BOOL sub_10050D27C()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = qword_10095B628;
  swift_beginAccess();
  v5 = *(v0 + v4);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = *(v5 + 56);
    v8 = sub_10000A5D4(&unk_1009428E0);

    sub_10076F5AC();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v3, 1, v8) == 1)
    {

      sub_10000CFBC(v3, &unk_100943200);
    }

    else
    {

      sub_100263BF0(v10, 1, v7, v3);

      (*(v9 + 8))(v3, v8);
    }
  }

  return v6 != 0;
}

BOOL sub_10050D43C(void *a1)
{
  v1 = a1;
  v2 = sub_10050D27C();

  return v2;
}

void sub_10050D4A0()
{

  v1 = *(v0 + qword_10095B640);
}

id sub_10050D500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeLinkedLabel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10050D538(uint64_t a1)
{

  v2 = *(a1 + qword_10095B640);
}

uint64_t sub_10050D5AC()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095B698);
  sub_10000A61C(v4, qword_10095B698);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

id sub_10050D700()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ADTrackingTransparency) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

BOOL sub_10050D76C()
{
  v0 = sub_10075DE9C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_1007613BC() & 1) == 0 || (sub_10076145C() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_10076143C();
  sub_10075DE8C();
  v5 = sub_10075DDDC();
  v7 = v6;
  v8 = *(v1 + 8);
  v9 = v8(v3, v0);
  if (!v7)
  {
    goto LABEL_8;
  }

  v19 = v5;
  v20 = v7;
  __chkstk_darwin(v9);
  *&v18[-16] = &v19;
  v10 = sub_1001A3D8C(sub_10050E5C0, &v18[-32], v4);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = sub_10076146C();
  sub_10075DE8C();
  v12 = sub_10075DDDC();
  v14 = v13;
  v15 = v8(v3, v0);
  if (!v14)
  {
LABEL_8:

    return 0;
  }

  v19 = v12;
  v20 = v14;
  __chkstk_darwin(v15);
  *&v18[-16] = &v19;
  v16 = sub_1001A3D8C(sub_10050E5C0, &v18[-32], v11);

  return (v16 & 1) != 0;
}

uint64_t sub_10050D9A8()
{
  v1 = sub_10075DE9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_1007690BC())
  {
    if (qword_100940778 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    if (qword_100940778 == -1)
    {
LABEL_6:
      v5 = sub_10076FD4C();
      sub_10000A61C(v5, qword_10095B698);
      sub_10000A5D4(&unk_100942A60);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_100783DD0;
      sub_10076F27C();
      sub_10076FBCC();
LABEL_7:

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_10050D700();
  v8 = [v7 shouldPresentPersonalizedAdsOnboarding];

  if (!v8)
  {
    if (qword_100940778 != -1)
    {
      swift_once();
    }

    v16 = sub_10076FD4C();
    sub_10000A61C(v16, qword_10095B698);
    sub_10000A5D4(&unk_100942A60);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100784500;
    sub_10076F27C();
    v17 = [*(v0 + 24) shouldPresentPersonalizedAdsOnboarding];
    v19[3] = &type metadata for Bool;
    LOBYTE(v19[0]) = v17;
    sub_10076F30C();
    sub_1000258C0(v19);
    sub_10076FBCC();
    goto LABEL_7;
  }

  v9 = sub_1007613BC();
  v10 = sub_10076143C();
  sub_10075DE8C();
  v11 = sub_10075DDDC();
  v13 = v12;
  v14 = (*(v2 + 8))(v4, v1);
  if (!v13)
  {

    if (v9)
    {
      return 1;
    }

LABEL_16:
    if (qword_100940778 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  *&v18[-16] = v19;
  v15 = sub_1001A3D8C(sub_10050E50C, &v18[-32], v10);

  if (((v9 | v15) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_10050DFD0()
{
  v1 = sub_10050D700();
  v2 = [v1 latestVersionForPersonalizedAdsConsent];

  [*(v0 + 24) setAcknowledgedVersionForPersonalizedAds:v2];
  if (qword_100940778 != -1)
  {
    swift_once();
  }

  v3 = sub_10076FD4C();
  sub_10000A61C(v3, qword_10095B698);
  sub_10000A5D4(&unk_100942A60);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100784500;
  sub_10076F27C();
  v4 = [*(v0 + 24) acknowledgedVersionForPersonalizedAds];
  v6[3] = &type metadata for Int;
  v6[0] = v4;
  sub_10076F30C();
  sub_1000258C0(v6);
  sub_10076FBCC();
}

uint64_t sub_10050E184()
{

  sub_100016C74(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_10050E204()
{
  result = qword_10095B760;
  if (!qword_10095B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095B760);
  }

  return result;
}

Swift::Int sub_10050E2B4()
{
  sub_10077175C();
  sub_10076FEBC();
  return sub_1007717AC();
}

uint64_t sub_10050E318(uint64_t a1, uint64_t a2)
{
  v4 = sub_10050E528(&qword_1009425D8);

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10050E380()
{
  sub_10077175C();
  sub_10076FEBC();
  return sub_1007717AC();
}

uint64_t sub_10050E3E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10050E528(&qword_1009425D8);

  return static OnboardingStep.== infix(_:_:)(a1, a2, v2, v5);
}

uint64_t sub_10050E4B4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_10077167C() & 1;
  }
}

uint64_t sub_10050E528(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10050E568(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10077167C() & 1;
  }
}

void sub_10050E5DC()
{
  sub_10050F6AC();
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundBlurView];
  v2 = OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style;
  [v1 setHidden:v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style] != 0];
  v3 = [v1 layer];
  v4 = v3;
  if (v0[v2])
  {
    v5 = 4.0;
  }

  else
  {
    v5 = 17.0;
  }

  [v3 setCornerRadius:v5];

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundTintView];
  v7 = [v6 layer];
  v8 = v7;
  if (v0[v2])
  {
    v9 = 4.0;
  }

  else
  {
    v9 = 17.0;
  }

  [v7 setCornerRadius:v9];

  v10 = v0[v2];
  v11 = [v0 traitCollection];
  v12 = sub_10050E7A8(v11, v10);

  [v6 setBackgroundColor:v12];
  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel];
  LOBYTE(v12) = v0[v2];
  v14 = [v0 traitCollection];
  v15 = sub_10050E8BC(v14, v12);

  [v13 setTextColor:v15];
  LOBYTE(v13) = v0[v2];
  v16 = [v0 traitCollection];
  v17 = sub_10050E8BC(v16, v13);

  sub_10050FAA0(v17);
}

id sub_10050E7A8(void *a1, char a2)
{
  if (!a2)
  {
    v2 = [objc_opt_self() systemBackgroundColor];
    goto LABEL_5;
  }

  if (a2 == 1)
  {
    sub_100016F40(0, &qword_100942F10);
    v2 = sub_100770CFC();
LABEL_5:
    v3 = v2;
    v4 = [v2 colorWithAlphaComponent:0.4];
    goto LABEL_6;
  }

  v7 = [a1 userInterfaceStyle];
  v8 = objc_opt_self();
  if (v7 == 2)
  {
    v3 = [v8 whiteColor];
    v4 = [v3 colorWithAlphaComponent:0.13];
  }

  else
  {
    v3 = [v8 systemBlueColor];
    v4 = [v3 colorWithAlphaComponent:0.1];
  }

LABEL_6:
  v5 = v4;

  return v5;
}

id sub_10050E8BC(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v2 = objc_opt_self();
      v3 = &selRef_whiteColor;
      goto LABEL_8;
    }

    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_systemBlueColor;
  }

  else
  {
    v4 = [a1 userInterfaceStyle];
    v2 = objc_opt_self();
    v3 = &selRef_blackColor;
  }

  if (v4 == 2)
  {
    v3 = &selRef_whiteColor;
  }

LABEL_8:
  v5 = [v2 *v3];

  return v5;
}

uint64_t sub_10050E978(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54646E416E6F6369;
  v4 = 0xEC000000656C7469;
  v5 = 0x80000001007CD0D0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x80000001007CD0D0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x796C6E4F6E6F6369;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x54646E416E6F6369;
  if (*a2 == 1)
  {
    v5 = 0xEC000000656C7469;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x796C6E4F6E6F6369;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10077167C();
  }

  return v11 & 1;
}

Swift::Int sub_10050EA84()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_10050EB34()
{
  sub_10077008C();
}

Swift::Int sub_10050EBD0()
{
  sub_10077175C();
  sub_10077008C();

  return sub_1007717AC();
}

uint64_t sub_10050EC7C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10051083C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10050ECAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEC000000656C7469;
  v5 = 0x54646E416E6F6369;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001007CD0D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796C6E4F6E6F6369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

id sub_10050ED28()
{
  result = [objc_opt_self() effectWithBlurRadius:30.0];
  qword_10095B790 = result;
  return result;
}

uint64_t sub_10050ED98(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100941100 != -1)
  {
    swift_once();
  }

  v11 = sub_10076D3DC();
  v12 = sub_10000A61C(v11, qword_1009A20F8);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_10076D9AC();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000DB7C(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000DB7C(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_10076D9BC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10050EFB4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940FD8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1D80);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

char *sub_10050F190()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076771C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer] = 0;
  if (qword_100940788 != -1)
  {
    swift_once();
  }

  v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10095B790];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundBlurView] = v10;
  v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundTintView] = v11;
  if (qword_100941100 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A20F8);
  v14 = *(v12 - 8);
  (*(v14 + 16))(v9, v13, v12);
  (*(v14 + 56))(v9, 0, 1, v12);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.leading(_:), v3);
  v15 = objc_allocWithZone(sub_1007626BC());
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel] = sub_1007626AC();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellView] = v16;
  v37.receiver = v1;
  v37.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v37, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v21 = v17;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v22 = OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundBlurView;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundBlurView] setClipsToBounds:1];
  v23 = [*&v21[v22] layer];
  v24 = v23;
  v25 = OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style;
  if (v21[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style])
  {
    v26 = 4.0;
  }

  else
  {
    v26 = 17.0;
  }

  [v23 setCornerRadius:v26];

  [*&v21[v22] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v22]];
  v27 = OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundTintView;
  v28 = v21[v25];
  v29 = *&v21[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundTintView];
  v30 = [v21 traitCollection];

  v31 = sub_10050E7A8(v30, v28);
  [v29 setBackgroundColor:v31];

  v32 = [*&v21[v27] layer];
  v33 = v32;
  if (v21[v25])
  {
    v34 = 4.0;
  }

  else
  {
    v34 = 17.0;
  }

  [v32 setCornerRadius:v34];

  [*&v21[v27] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v27]];
  sub_10050F6AC();
  [v21 addSubview:*&v21[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel]];
  sub_10050F7B0(0);
  v35 = OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellView;
  [*&v21[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellView] setUserInteractionEnabled:0];
  [v21 addSubview:*&v21[v35]];
  sub_10050E5DC();

  return v21;
}

void sub_10050F6AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel);
  if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style))
  {
    [*(v0 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel) setHidden:0];
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive))
    {
      v2 = "APP_EVENTS_BUTTON_NOTIFY_ME";
    }

    else
    {
      v2 = "e";
    }

    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_isActive))
    {
      v3._countAndFlagsBits = 0xD000000000000021;
    }

    else
    {
      v3._countAndFlagsBits = 0xD00000000000001BLL;
    }

    v3._object = (v2 | 0x8000000000000000);
    v7._countAndFlagsBits = 0;
    v7._object = 0xE000000000000000;
    sub_1007622EC(v3, v7);
    v5 = sub_10076FF6C();

    [v1 setText:v5];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel);

    [v4 setHidden:1];
  }
}

void sub_10050F7B0(char a1)
{
  v2 = (a1 & 1) != 0 && !UIAccessibilityIsReduceMotionEnabled();
  v3 = objc_allocWithZone(AppStoreMicaPlayer);
  v4 = sub_10076FF6C();

  v5 = [v3 initWithFileName:v4 retinaScale:1.0];

  sub_10050F97C(v5);
  if (v2)
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer);
    if (v6)
    {

      [v6 play];
    }
  }
}

void sub_10050F97C(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style];
    v8 = [v1 traitCollection];
    v9 = sub_10050E8BC(v8, v7);

    sub_10050FAA0(v9);
    v10 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellView] layer];
    [v6 addToLayer:v10 onTop:1 gravity:kCAGravityResizeAspect];
  }
}

void sub_10050FAA0(void *a1)
{
  v3 = sub_10075DACC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer);
  if (v8)
  {
    v9 = [v8 rootLayer];
    if (v9)
    {
      v10 = v9;
      sub_100016F40(0, &qword_10095B898);
      v11 = [v10 mp_allLayersWithKindOfClass:swift_getObjCClassFromMetadata()];

      if (v11)
      {
        v14[0] = v4;
        sub_100770CCC();
        sub_10075DABC();
        while (v17)
        {
          sub_10000CD64(&v16, &v15);
          if (swift_dynamicCast())
          {
            v12 = v14[1];
            v13 = [a1 CGColor];
            [v12 setFillColor:v13];
          }

          sub_10075DABC();
        }

        (*(v14[0] + 8))(v7, v3);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10050FCA4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v0;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundBlurView];
  sub_10076422C();
  [v7 setFrame:?];
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_backgroundTintView];
  sub_10076422C();
  [v8 setFrame:?];
  if (v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style])
  {
    if (qword_1009407B0 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D9AC();
    sub_10000A61C(v9, qword_10095B818);
    sub_10076D17C();
    sub_10076D40C();
    v10 = *(v3 + 8);
    v10(v6, v2);
    if (qword_1009407A0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v9, qword_10095B7E8);
    sub_10076D17C();
    sub_10076D40C();
    v12 = v11;
    v10(v6, v2);
    if (qword_1009407A8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v9, qword_10095B800);
    sub_10076D17C();
    sub_10076D40C();
    v14 = v13;
    v10(v6, v2);
    if (qword_100940780 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v9, qword_10095B778);
    sub_10076D17C();
    sub_10076D40C();
    v16 = v15;
    v10(v6, v2);
    sub_10076422C();
    v17 = CGRectGetWidth(v31) - v12 - v14 - v16;
    sub_10076422C();
    Height = CGRectGetHeight(v32);
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel];
    [v19 measurementsWithFitting:v0 in:{v17, Height}];
    if (qword_100940790 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095B798, qword_10095B7B0);
    sub_10076D42C();
    sub_10076422C();
    CGRectGetMinX(v33);
    sub_10076422C();
    CGRectGetMinY(v34);
    sub_10076422C();
    sub_100770A4C();
    [v19 setFrame:?];
    sub_10076422C();
    CGRectGetMinX(v35);
    sub_10076422C();
    CGRectGetMidY(v36);
    v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellView];
    sub_10076422C();
    sub_100770A4C();
  }

  else
  {
    sub_10076422C();
    v25 = CGRectGetMidX(v37) + -17.0;
    sub_10076422C();
    MidY = CGRectGetMidY(v38);
    v21 = v25;
    v22 = MidY + -17.0;
    v20 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellView];
    v23 = 34.0;
    v24 = 34.0;
  }

  [v20 setFrame:{v21, v22, v23, v24}];
  v27 = *&v0[OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_bellMicaPlayer];
  if (v27)
  {
    v28 = v27;
    v29 = [v20 layer];
    [v28 moveAndResizeWithinParentLayer:v29 usingGravity:kCAGravityResizeAspect animate:0];
  }
}

void sub_100510270(double a1)
{
  swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_style))
  {
    if (qword_1009407A0 != -1)
    {
      swift_once();
    }

    v7 = sub_10076D9AC();
    sub_10000A61C(v7, qword_10095B7E8);
    sub_10076D17C();
    sub_10076D40C();
    v9 = v8;
    v10 = *(v4 + 8);
    v10(v6, v3);
    if (qword_1009407A8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v7, qword_10095B800);
    sub_10076D17C();
    sub_10076D40C();
    v12 = v11;
    v10(v6, v3);
    if (qword_100940780 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v7, qword_10095B778);
    sub_10076D17C();
    sub_10076D40C();
    v14 = v13;
    v10(v6, v3);
    sub_10076422C();
    [*(v1 + OBJC_IVAR____TtC20ProductPageExtension14NotifyMeButton_titleLabel) measurementsWithFitting:v1 in:{a1 - v9 - v12 - v14, CGRectGetHeight(v16)}];
    if (qword_100940790 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095B798, qword_10095B7B0);
    sub_10076D42C();
    if (qword_100940798 != -1)
    {
      swift_once();
    }

    sub_10000CF78(qword_10095B7C0, qword_10095B7D8);
    sub_1000FF02C();
    sub_10076D40C();
    v10(v6, v3);
  }
}

unint64_t sub_1005107E8()
{
  result = qword_10095B890;
  if (!qword_10095B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095B890);
  }

  return result;
}

uint64_t sub_10051083C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100883528;
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

unint64_t sub_100510A7C()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SearchBar();
  v1 = objc_msgSendSuper2(&v8, "keyCommands");
  if (v1)
  {
    v2 = v1;
    sub_100016F40(0, &unk_10094C270);
    v3 = sub_1007701BC();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v9 = v3;
  v4 = UIKeyInputEscape;
  v10._object = 0x80000001007D7A20;
  v10._countAndFlagsBits = 0xD000000000000035;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1007622EC(v10, v11);
  v5 = sub_10076FF6C();

  v6 = [objc_opt_self() keyCommandWithInput:v4 modifierFlags:0 action:"handleCancelKeyCommand" discoverabilityTitle:v5];

  sub_10077019C();
  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  return v9;
}

void sub_100510CD4()
{
  v1 = [v0 searchTextField];
  v2 = [v1 font];

  if (v2)
  {
    v29._object = 0x80000001007EBD10;
    v29._countAndFlagsBits = 0xD000000000000012;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    sub_1007622EC(v29, v31);
    v3 = sub_10076FF6C();
    sub_10000A5D4(&unk_10094E7E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100783DD0;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_100016F40(0, &qword_100942F00);
    *(inited + 40) = v2;
    v5 = NSFontAttributeName;
    v6 = v2;
    sub_1000FC5F4(inited);
    swift_setDeallocating();
    sub_1001E4F90(inited + 32);
    type metadata accessor for Key(0);
    sub_1001E4F38();
    isa = sub_10076FE3C().super.isa;

    [v3 sizeWithAttributes:isa];
    v9 = v8;

    v10 = [v0 searchTextField];
    v11 = [v0 searchTextField];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v10 textRectForBounds:{v13, v15, v17, v19}];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v33.origin.x = v21;
    v33.origin.y = v23;
    v33.size.width = v25;
    v33.size.height = v27;
    if (ceil(v9) > CGRectGetWidth(v33))
    {

      v30._countAndFlagsBits = 0xD00000000000001ALL;
      v30._object = 0x80000001007EBD30;
      v32._countAndFlagsBits = 0;
      v32._object = 0xE000000000000000;
      sub_1007622EC(v30, v32);
    }

    v28 = sub_10076FF6C();

    [v0 setPlaceholder:v28];
  }
}

id sub_100510F90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchBar();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100510FE8()
{
  v0 = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_10076D4DC();
    swift_getWitnessTable();
    v0 = sub_10076E19C();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v0;
}

void sub_1005111D0(char *a1)
{
  (*(*(*((swift_isaMask & *a1) + 0x50) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0x60)], *((swift_isaMask & *a1) + 0x50));
  sub_1000167E0(*&a1[*((swift_isaMask & *a1) + 0x68)]);

  swift_unknownObjectRelease();

  v2 = *((swift_isaMask & *a1) + 0xB0);
  swift_getAssociatedTypeWitness();
  sub_10076D4DC();
  swift_getWitnessTable();
  v3 = sub_10076E19C();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  v4 = *&a1[*((swift_isaMask & *a1) + 0xD0)];
}

uint64_t sub_100511408()
{
  result = [v0 isTracking];
  if ((result & 1) == 0)
  {
    result = [v0 isDragging];
    if ((result & 1) == 0)
    {
      swift_beginAccess();
      swift_getAssociatedTypeWitness();
      sub_10076D4DC();
      swift_getWitnessTable();
      sub_10076E19C();
      sub_10076E13C();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_10051152C(void *a1)
{
  v2 = sub_10075D7BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075D79C();
  v6 = a1;
  sub_100511408();

  return (*(v3 + 8))(v5, v2);
}

id sub_100511614(char a1)
{
  [v1 setContentSize:{0.0, 0.0}];
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = a1;
  [v1 invalidateIntrinsicContentSize];

  return [v1 setNeedsLayout];
}

id sub_1005116A0(void *a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_1005117EC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1005116A0(a3);
}

id sub_100511858(void *a1)
{
  v1 = a1;
  v2 = sub_10051188C();

  return v2;
}

id sub_10051188C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "semanticContentAttribute");
}

void sub_1005118C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  sub_100511918(a3);
}

id sub_100511918(id a1)
{
  ObjectType = swift_getObjectType();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v8, "semanticContentAttribute");
  v7.receiver = v1;
  v7.super_class = ObjectType;
  result = objc_msgSendSuper2(&v7, "setSemanticContentAttribute:", a1);
  if (v4 != a1)
  {
    v6 = [v1 layer];
    [v6 setFlipsHorizontalAxis:{objc_msgSend(v1, "effectiveUserInterfaceLayoutDirection") == 1}];

    [v1 setContentSize:{0.0, 0.0}];
    *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 1;
    [v1 invalidateIntrinsicContentSize];
    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100511A40(void *a1)
{
  sub_10000A5D4(&unk_1009434B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100783DD0;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 32) = 0xD000000000000040;
  *(v2 + 40) = 0x80000001007EBF50;
  v3 = a1;
  sub_1007713BC();
}

double sub_100511AF0(void *a1)
{
  v1 = a1;
  v2 = sub_100511B34();

  return v2;
}

CGFloat sub_100511B34()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x50);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v8 - v5;
  (*(v4 + 16))(v8 - v5, &v0[*((v2 & v1) + 0x60)], v3);
  (*(*((v2 & v1) + 0x58) + 24))(v8, v3);
  (*(v4 + 8))(v6, v3);
  return UIViewNoIntrinsicMetric;
}

CGFloat sub_100511CC8(uint64_t a1, CGFloat Width)
{
  v4 = swift_isaMask & *v2;
  v5 = *(v4 + 0x50);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v9 = v20 - v8;
  if (Width < COERCE_DOUBLE(1))
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v21.origin.x = v12;
    v21.origin.y = v14;
    v21.size.width = v16;
    v21.size.height = v18;
    Width = CGRectGetWidth(v21);
    v7 = swift_isaMask & *v2;
  }

  (*(v6 + 16))(v9, &v2[*(v7 + 96)], v5);
  (*(*(v4 + 88) + 24))(v20, v5);
  (*(v6 + 8))(v9, v5);
  return Width;
}

double sub_100511F0C(void *a1, CGFloat a2)
{
  v3 = a1;
  v4 = sub_100511CC8(v3, a2);

  return v4;
}

uint64_t sub_100511F60()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = *((swift_isaMask & *v0) + 0x50);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v15 - v6;
  v8 = *((v3 & v2) + 0x60);
  v9 = *(v5 + 16);
  v9(v15 - v6, &v1[v8], v4);
  v10 = *((v3 & v2) + 0x58);
  v11 = (*(v10 + 32))(v4, v10);
  v12 = *(v5 + 8);
  v12(v7, v4);
  v9(v7, &v1[v8], v4);
  (*(v10 + 24))(v15, v4, v10);
  result = (v12)(v7, v4);
  v14 = ceil(v11 / v15[9]);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100512164(uint64_t a1)
{
  v2 = v1;
  v3 = swift_isaMask & *v1;
  v4 = *(v3 + 0x50);
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(a1).n128_u64[0];
  v8 = v42 - v7;
  result = [v1 contentSize];
  if (v11 == 0.0 && v10 == 0.0)
  {
    v12 = sub_100511F60();
    v13 = *((swift_isaMask & *v1) + 0x60);
    v47 = *(v5 + 16);
    v42[1] = v5 + 16;
    v43 = v13;
    v14 = v13;
    v47(v8, v1 + v13, v4);
    v49 = *(v3 + 88);
    v15 = v49 + 24;
    v16 = *(v49 + 24);
    v16(v50, v4);
    v48 = v15;
    v17 = v16;
    v18 = *(v5 + 8);
    v44 = v16;
    v45 = v18;
    v18(v8, v4);
    v19 = v50[9];
    v20 = v47;
    v47(v8, v1 + v14, v4);
    v17(v51, v4, v49);
    v21 = v45;
    v45(v8, v4);
    v46 = v5 + 8;
    v22 = *&v51[1];
    v20(v8, v1 + v43, v4);
    v23 = v44;
    v44(v52, v4, v49);
    v21(v8, v4);
    v24 = v22 + *&v52[3] + 0.0;
    v25 = v43;
    v26 = v20;
    v20(v8, v1 + v43, v4);
    v23(v53, v4, v49);
    v27 = v45;
    v45(v8, v4);
    v28 = v24 + *&v53[4] * v12;
    v26(v8, v1 + v25, v4);
    v29 = v49;
    v30 = v44;
    v44(v54, v4, v49);
    v27(v8, v4);
    v31 = v28 + (v12 + -1.0) * *&v54[6];
    v32 = v47;
    v47(v8, v1 + v25, v4);
    v30(v55, v4, v29);
    v33 = v45;
    v45(v8, v4);
    v34 = v55[0];
    v32(v8, v1 + v25, v4);
    v35 = v49;
    v36 = v44;
    v44(v56, v4, v49);
    v33(v8, v4);
    v37 = v34 + *&v56[2] + 0.0;
    v38 = v43;
    v47(v8, v1 + v43, v4);
    v36(v57, v4, v35);
    v39 = v45;
    v45(v8, v4);
    v40 = v37 + *&v57[5] * v19;
    v47(v8, v1 + v38, v4);
    v44(v58, v4, v49);
    v39(v8, v4);
    result = sub_1005126EC([v1 setContentSize:{v31, v40 + (v19 + -1.0) * *&v58[7]}]);
    v41 = (v1 + *((swift_isaMask & *v1) + 0xA8));
    if ((v41[2] & 1) == 0)
    {
      result = [v2 setContentOffset:{*v41, v41[1]}];
      *v41 = 0.0;
      v41[1] = 0.0;
      *(v41 + 16) = 1;
      if (*(v2 + *((swift_isaMask & *v2) + 0x88)))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_10076193C();
        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

id sub_1005126EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = *((swift_isaMask & *v1) + 0x50);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = &v26 - v8;
  v10 = *(v6 + 16);
  v28 = *((v4 & v3) + 0x60);
  v29 = v10;
  (v10)(v9, v2 + v28, v5, v7);
  v11 = *((v4 & v3) + 0x58);
  v12 = *(v11 + 24);
  v12(v30, v5, v11);
  v13 = *(v6 + 8);
  v13(v9, v5);
  v14 = *&v30[4] + *&v30[6];
  [v2 frame];
  Width = CGRectGetWidth(v33);
  result = [v2 contentInset];
  v18 = ceil((Width - v17) / v14);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v27 = v13;
  v19 = v12;
  v20 = v18;
  v21 = *(v2 + *((swift_isaMask & *v2) + 0x70));
  if (*(v2 + *((swift_isaMask & *v2) + 0x78)) == 1)
  {
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (!v22)
    {
      if (v23 + 0x4000000000000000 >= 0)
      {
        v24 = 2 * v23;
        v29(v9, v2 + v28, v5);
        v19(v31, v5, v11);
        result = v27(v9, v5);
        if ((v24 * v32) >> 64 == (v24 * v32) >> 63)
        {
          goto LABEL_12;
        }

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v21 + 0x4000000000000000 < 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = 2 * v21;
  v29(v9, v2 + v28, v5);
  v19(v31, v5, v11);
  result = v27(v9, v5);
  if ((v25 * v32) >> 64 != (v25 * v32) >> 63)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v20, v25 * v32))
  {
LABEL_12:
    swift_beginAccess();
    swift_getAssociatedTypeWitness();
    sub_10076D4DC();
    swift_getWitnessTable();
    sub_10076E19C();
    sub_10076E14C();
    return swift_endAccess();
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_100512B0C(uint64_t a1, double a2)
{
  v3 = v2;
  LODWORD(v52) = a1;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & *v2) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = &v47 - v13;
  [v3 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = *(v8 + 16);
  v54 = *((swift_isaMask & *v3) + 0x60);
  v55 = v23;
  v23(v14, v3 + v54, v7);
  v24 = *((v6 & v5) + 0x58);
  v25 = *(v24 + 32);
  v26 = v25(v7, v24);
  v53 = *(v8 + 8);
  v53(v14, v7);
  if (v26 >= 1)
  {
    v59.origin.x = v16;
    v59.origin.y = v18;
    v59.size.width = v20;
    v59.size.height = v22;
    if (!CGRectIsEmpty(v59))
    {
      v50 = v24 + 32;
      v51 = v25;
      v48 = v10;
      v27 = v54;
      v55(v14, v3 + v54, v7);
      v28 = *(v24 + 24);
      v28(v56, v7, v24);
      v29 = v53;
      v53(v14, v7);
      v30 = v56[4] + v56[6];
      v31 = v3 + v27;
      v32 = v55;
      v55(v14, v31, v7);
      v28(v57, v7, v24);
      v29(v14, v7);
      v49 = v57[9];
      v32(v14, v3 + v54, v7);
      v28(v58, v7, v24);
      v29(v14, v7);
      v33 = *&v58[3];
      v34 = 0.0;
      if (a2 >= 0.0)
      {
        v34 = a2;
      }

      v35 = v34 + *&v58[1];
      v60.origin.x = v16;
      v60.origin.y = v18;
      v60.size.width = v20;
      v60.size.height = v22;
      Width = CGRectGetWidth(v60);
      v37 = floor(v35 / v30);
      if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v37 > -9.22337204e18)
      {
        if (v37 < 9.22337204e18)
        {
          v38 = floor((v35 + Width - v33) / v30);
          if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v38 > -9.22337204e18)
            {
              if (v38 < 9.22337204e18)
              {
                v39 = v37;
                v40 = v38;
                if (v52)
                {
                  v41 = *(v3 + *((swift_isaMask & *v3) + 0x70));
                  v42 = __OFSUB__(v39, v41);
                  v39 -= v41;
                  v43 = v51;
                  if (v42)
                  {
LABEL_28:
                    __break(1u);
                    goto LABEL_29;
                  }

                  v42 = __OFADD__(v40, v41);
                  v40 += v41;
                  if (v42)
                  {
LABEL_29:
                    __break(1u);
                    return;
                  }

                  v44 = v49;
                }

                else
                {
                  v43 = v51;
                  v44 = v49;
                }

                if ((v39 * v44) >> 64 == (v39 * v44) >> 63)
                {
                  v52 = v39 * v44;
                  v45 = v3 + v54;
                  v46 = v48;
                  v55(v48, v45, v7);
                  v43(v7, v24);
                  v53(v46, v7);
                  if ((v40 * v44) >> 64 == (v40 * v44) >> 63)
                  {
                    return;
                  }

                  goto LABEL_27;
                }

LABEL_26:
                __break(1u);
LABEL_27:
                __break(1u);
                goto LABEL_28;
              }

LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_22;
    }
  }
}

uint64_t sub_10051305C()
{
  v1 = (swift_isaMask & *v0);
  v2 = v1[10];
  v3 = *(v2 - 8);
  result = __chkstk_darwin();
  v6 = v32 - v5;
  if (result < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v0;
  v8 = v1[12];
  v10 = v3 + 16;
  v9 = *(v3 + 16);
  v38 = result;
  v43 = v9;
  v9(v6, v0 + v8, v2);
  v11 = v1[11];
  v12 = (*(v11 + 32))(v2, v11);
  v14 = *(v3 + 8);
  v13 = v3 + 8;
  v41 = v14;
  result = (v14)(v6, v2);
  if (v12 <= v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v43(v6, v7 + v8, v2);
  v36 = v10;
  v42 = v8;
  v15 = v7;
  v39 = v7;
  v40 = v13;
  v16 = *(v11 + 24);
  v16(v44, v2, v11);
  v17 = v41;
  v41(v6, v2);
  v18 = v15 + v42;
  v19 = v43;
  v43(v6, v18, v2);
  v16(v45, v2, v11);
  v17(v6, v2);
  v20 = v42;
  v19(v6, &v39[v42], v2);
  v16(v46, v2, v11);
  result = (v41)(v6, v2);
  if (!v47)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v33 = v47;
  v21 = v39;
  v43(v6, &v39[v20], v2);
  v34 = v16;
  v35 = v11 + 24;
  v16(v48, v2, v11);
  v22 = v41;
  result = (v41)(v6, v2);
  if (!v49)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v32[1] = v38 % v49;
  v33 = v38 / v33;
  v37 = v11;
  if (v33 < 1)
  {
    v24 = v42;
    v26 = v43;
    v25 = v34;
    if (v38 % v49)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v23 = v38 % v49;
    v43(v6, &v21[v42], v2);
    v34(v50, v2, v11);
    v22(v6, v2);
    if (v23)
    {
      v24 = v42;
      v21 = v39;
      v25 = v34;
LABEL_9:
      v43(v6, &v21[v24], v2);
      v25(v51, v2, v37);
      v41(v6, v2);
      v24 = v42;
      v26 = v43;
      v43(v6, &v21[v42], v2);
      goto LABEL_12;
    }

    v24 = v42;
    v26 = v43;
    v21 = v39;
    v25 = v34;
  }

  v26(v6, &v21[v24], v2);
LABEL_12:
  v25(v52, v2, v37);
  result = (v41)(v6, v2);
  if ((v53 & 1) == 0)
  {
    return result;
  }

  v26(v6, &v21[v24], v2);
  v27 = v37;
  v25(v54, v2, v37);
  v28 = v41;
  result = (v41)(v6, v2);
  if (!v55)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if ((v38 + 1) % v55)
  {
    v29 = v27;
    v30 = v21;
    v31 = v29;
    v43(v6, &v30[v42], v2);
    v25(v56, v2, v31);
    return v28(v6, v2);
  }

  return result;
}

void sub_100513634()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *((swift_isaMask & *v1) + 0x50);
  v59 = *(v3 - 8);
  __chkstk_darwin(ObjectType);
  v62 = v47 - v4;
  v7 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = *(AssociatedTypeWitness - 8);
  *&v8 = __chkstk_darwin(AssociatedTypeWitness).n128_u64[0];
  v65 = v47 - v9;
  v69.receiver = v1;
  v69.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v69, "layoutSubviews", v8);
  sub_100512164(v10);
  [v1 contentOffset];
  sub_100512B0C(1, v11);
  v13 = v12;
  v15 = v14;
  v16 = *((swift_isaMask & *v1) + 0xB8);
  swift_beginAccess();
  v57 = v16;
  v17 = *(v1 + v16);
  v63 = v7;
  v61 = v3;
  v56 = swift_getAssociatedTypeWitness();
  v18 = 1 << *(v17 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v17 + 64);
  v48 = *((swift_isaMask & *v1) + 0xA0);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  while (v20)
  {
LABEL_10:
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v25 = *(*(v17 + 48) + ((v22 << 9) | (8 * v24)));
    if ((*(v1 + v48) & 1) == 0 && v25 >= v13 && v25 < v15)
    {
      continue;
    }

    sub_100513D90(v25);
  }

  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 64 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_10;
    }
  }

  if (v13 == v15)
  {
LABEL_17:
    *(v1 + v48) = 0;
    return;
  }

  if (v15 < v13)
  {
    goto LABEL_35;
  }

  if (v13 < v15)
  {
    v27 = *v1;
    v66 = *((swift_isaMask & *v1) + 0x60);
    v28 = v1 + *((swift_isaMask & v27) + 0xC0);
    v47[0] = v1 + *((swift_isaMask & v27) + 0xC8);
    v60 = (v59 + 2);
    v53 = v63 + 40;
    ++v59;
    v52 = v63 + 56;
    v47[1] = v63 + 72;
    v51 = (v64 + 8);
    v54 = v15;
    v49 = v1;
    v50 = v28;
    do
    {
      swift_beginAccess();
      v67 = v13;
      sub_10076FE8C();
      v29 = v68;
      swift_endAccess();
      if (v29)
      {
      }

      else
      {
        v64 = sub_100514268(v13);
        v30 = v61;
        v31 = *v60;
        v32 = v62;
        (*v60)(v62, v1 + v66, v61);
        v33 = v63;
        v34 = v65;
        (*(v63 + 40))(v13, v30, v63);
        v35 = *v59;
        (*v59)(v32, v30);
        v36 = v1 + v66;
        v37 = v50;
        v58 = v31;
        v31(v32, v36, v30);
        v38 = v64;
        (*(v33 + 56))(v34, v13, v64, v30, v33);
        v39 = v30;
        v40 = v35;
        v35(v32, v39);
        if ((v37[8] & 1) != 0 || v13 != *v37)
        {
          v15 = v54;
          if (*(v47[0] + 8))
          {
            (*v51)(v65, AssociatedTypeWitness);

            v1 = v49;
          }

          else
          {
            v1 = v49;
            if (v13 == *v47[0])
            {
              v45 = v61;
              v44 = v62;
              v58(v62, v49 + v66, v61);
              v46 = v65;
              (*(v63 + 72))(2, v38, v65, v45);

              v40(v44, v45);
              (*v51)(v46, AssociatedTypeWitness);
            }

            else
            {
              (*v51)(v65, AssociatedTypeWitness);
            }
          }
        }

        else
        {
          v1 = v49;
          v42 = v61;
          v41 = v62;
          v58(v62, v49 + v66, v61);
          v43 = v65;
          (*(v63 + 72))(1, v38, v65, v42);

          v40(v41, v42);
          (*v51)(v43, AssociatedTypeWitness);
          v15 = v54;
        }
      }

      ++v13;
    }

    while (v15 != v13);
    goto LABEL_17;
  }

LABEL_36:
  __break(1u);
}

void sub_100513D90(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v33 = v31 - v7;
  v37 = *(v5 - 8);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v31 - v12;
  v38 = a1;
  v39 = a1;
  swift_beginAccess();
  v35 = v4;
  v13 = swift_getAssociatedTypeWitness();
  sub_10076FE7C();
  sub_10076FE6C();
  swift_endAccess();
  v14 = v40;
  if (v40)
  {
    v15 = &v1[*((swift_isaMask & *v1) + 0xC0)];
    if ((v15[8] & 1) == 0 && *v15 == v38 || (v16 = &v1[*((swift_isaMask & *v1) + 0xC8)], (v16[8] & 1) == 0) && *v16 == v38)
    {
      v17 = *((swift_isaMask & *v1) + 0x60);
      v31[0] = AssociatedTypeWitness;
      v18 = v37;
      v19 = *(v37 + 16);
      v32 = v40;
      v20 = v36;
      v19(v36, &v2[v17], v5);
      v21 = &v2[v17];
      v22 = v10;
      v19(v10, v21, v5);
      v31[1] = v13;
      v23 = v34;
      v24 = v35;
      v25 = v33;
      (*(v35 + 40))(v38, v5, v35);
      v26 = *(v18 + 8);
      v26(v22, v5);
      (*(v24 + 72))(0, v32, v25, v5, v24);
      (*(v23 + 8))(v25, v31[0]);
      v27 = v20;
      v14 = v32;
      v26(v27, v5);
    }

    v40 = v14;
    swift_beginAccess();
    sub_10076D4DC();
    swift_getWitnessTable();
    sub_10076E19C();
    v28 = sub_10076E17C();
    swift_endAccess();
    if (v28)
    {
      v29 = v36;
      v30 = v37;
      (*(v37 + 16))(v36, &v2[*((swift_isaMask & *v2) + 0x60)], v5);
      (*(v35 + 64))(v14, v5);

      (*(v30 + 8))(v29, v5);
    }

    else
    {
    }
  }
}

id sub_100514268(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *((swift_isaMask & v4) + 0x50);
  v7 = *(v6 - 8);
  __chkstk_darwin(a1);
  v9 = v19 - v8;
  swift_beginAccess();
  v10 = *((v5 & v4) + 0x58);
  swift_getAssociatedTypeWitness();
  sub_10076D4DC();
  swift_getWitnessTable();
  sub_10076E19C();
  sub_10076E16C();
  swift_endAccess();
  v11 = v21;
  if (v21)
  {
    v12 = v21;
  }

  else
  {
    (*(v7 + 16))(v9, &v2[*((swift_isaMask & *v2) + 0x60)], v6);
    v13 = (*(v10 + 48))(v6, v10);
    (*(v7 + 8))(v9, v6);
    v12 = v13;
    [v2 addSubview:v12];
    v11 = 0;
  }

  v14 = v11;
  v15 = v12;
  sub_10051305C();
  [v15 setFrame:?];
  [v15 setAutoresizingMask:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:1];
  ObjectType = swift_getObjectType();
  v20.receiver = v2;
  v20.super_class = ObjectType;
  [v15 setSemanticContentAttribute:{objc_msgSendSuper2(&v20, "semanticContentAttribute")}];
  v17 = [v15 layer];
  [v17 setFlipsHorizontalAxis:{objc_msgSend(v15, "effectiveUserInterfaceLayoutDirection") == 1}];

  v21 = v15;
  v19[1] = a1;
  swift_beginAccess();
  sub_10076FE7C();
  sub_10076FE9C();
  swift_endAccess();
  return v15;
}

void sub_1005145D8(void *a1)
{
  v1 = a1;
  sub_100513634();
}

uint64_t sub_100514620(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = swift_isaMask;
  v9 = *((swift_isaMask & *v3) + 0x50);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v33 - v11;
  sub_100512164(v13);
  v15 = v10 + 16;
  v14 = *(v10 + 16);
  v39 = *((swift_isaMask & *v3) + 0x60);
  v40 = v14;
  v14(v12, &v3[v39], v9);
  v16 = *((v8 & v7) + 0x58);
  v17 = *(v16 + 24);
  v17(v41, v9, v16);
  v18 = *(v10 + 8);
  v18(v12, v9);
  v19 = *v41;
  v20 = *&v41[1];
  [v4 contentSize];
  v48.size.width = v21;
  v48.size.height = v22;
  v48.origin.x = v20;
  v48.origin.y = v19;
  v47.x = a2;
  v47.y = a3;
  if (!CGRectContainsPoint(v48, v47))
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v37 = v16;
  v38 = v18;
  v17(v42, v9, v16);
  result = v38(v12, v9);
  v24 = floor((a2 - v20) / (*&v42[4] + *&v42[6]));
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v25 = v24;
  if (v24 < 0 || sub_100511F60() <= v25)
  {
    return 0;
  }

  v40(v12, &v4[v39], v9);
  v17(v43, v9, v37);
  result = v38(v12, v9);
  v26 = floor((a3 - v19) / (*&v43[5] + *&v43[7]));
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

  if (v26 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = v12;
  v28 = v40;
  if (v26 < 0)
  {
    return 0;
  }

  v35 = v25;
  v36 = v26;
  v29 = v39;
  v33[1] = v15;
  v40(v27, &v4[v39], v9);
  v30 = v37;
  v34 = v17;
  v17(v44, v9, v37);
  v31 = v38;
  v38(v27, v9);
  if (v44[9] <= v36)
  {
    return 0;
  }

  v28(v27, &v4[v29], v9);
  v34(v45, v9, v30);
  result = v31(v27, v9);
  v32 = v35 * v46;
  if ((v35 * v46) >> 64 != (v35 * v46) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = v32 + v36;
  if (__OFADD__(v32, v36))
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

void sub_100514A64()
{
  [v0 contentOffset];
  sub_100512B0C(0, v1);
  v4 = (v3 - v2);
  if (__OFSUB__(v3, v2))
  {
    __break(1u);
  }

  else if (v4)
  {
    v5 = v2;
    v6 = v3;
    v7 = sub_10049EFFC(v3 - v2, 0);
    if (sub_100515F7C(v8, (v7 + 4), v4, v5, v6) != v4)
    {
      __break(1u);
    }
  }
}

void sub_100514B00()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x58);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*((v3 & v2) + 0xC0)];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        sub_10076FE8C();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(1, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_100514ED4()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  v4 = swift_isaMask & *v0;
  v5 = *((swift_isaMask & v2) + 0x58);
  v6 = *((swift_isaMask & v2) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = *(v6 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v12);
  v18 = &v28 - v14;
  v19 = &v1[*((v3 & v2) + 0xC8)];
  if ((v19[8] & 1) == 0)
  {
    v20 = *v19;
    if ((*v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v32 = v16;
      v33 = v15;
      v34 = v13;
      v21 = *(v8 + 16);
      v29 = *(v4 + 96);
      v30 = v21;
      (v21)(&v28 - v14, &v1[v29], v6, v17);
      v22 = (*(v5 + 32))(v6, v5);
      v31 = *(v8 + 8);
      v31(v18, v6);
      if (v20 < v22)
      {
        swift_beginAccess();
        v35 = v20;
        swift_getAssociatedTypeWitness();
        sub_10076FE8C();
        v23 = v36;
        if (v36)
        {
          swift_endAccess();
          v28 = v20;
          v25 = v29;
          v24 = v30;
          v30(v18, &v1[v29], v6);
          v24(v11, &v1[v25], v6);
          v26 = v32;
          (*(v5 + 40))(v28, v6, v5);
          v27 = v31;
          v31(v11, v6);
          (*(v5 + 72))(2, v23, v26, v6, v5);

          (*(v33 + 8))(v26, v34);
          v27(v18, v6);
        }

        else
        {
          swift_endAccess();
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_1005152A8(uint64_t a1, char a2)
{
  sub_100516A04();
  v5 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v5 = a1;
  v5[8] = a2 & 1;

  sub_100514ED4();
}

void sub_10051531C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + 0xD0);
  v7 = *(v2 + v6);
  if (!v7 || [v7 phase] == 3 || (v8 = *(v2 + v6)) != 0 && objc_msgSend(v8, "phase") == 4)
  {
    v9 = sub_1005EBD8C(a1);
    if (v9)
    {
      v10 = v9;
      [v9 locationInView:v2];
      v12 = v11;
      v14 = v13;
      v15 = [v2 hitTest:a2 withEvent:?];
      if (v15 && (sub_100016F40(0, &qword_1009441F0), v16 = v15, v17 = v2, v18 = sub_100770EEC(), v16, v17, (v18 & 1) != 0) || (v19 = sub_100516DA4(v15), (v19 & 1) == 0))
      {
        v20 = 0;
        v22 = 1;
      }

      else
      {
        v20 = sub_100514620(v19, v12, v14);
        v22 = v21;
      }

      sub_10051669C();
      v23 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v23 = v20;
      v23[8] = v22 & 1;
      sub_100514B00();

      v24 = *(v3 + v6);
      *(v3 + v6) = v10;
    }
  }

  sub_1005159D4(v3, a1, a2, &selRef_touchesBegan_withEvent_);
}

void sub_100515534(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a2;
  v5 = *v2;
  v6 = swift_isaMask;
  v7 = *((swift_isaMask & v5) + 0x50);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = v33 - v9;
  v11 = *((v6 & v5) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = v33 - v15;
  v17 = *((v6 & v5) + 0xD0);
  v18 = *(v3 + v17);
  if (v18)
  {
    v37 = v14;
    v19 = v18;
    if ((sub_1006937A4(v19, a1) & 1) == 0)
    {
LABEL_6:

      goto LABEL_7;
    }

    v20 = *(v3 + v17);
    *(v3 + v17) = 0;

    v21 = v3 + *((swift_isaMask & *v3) + 0xC0);
    if (v21[8] & 1) != 0 || (v36 = *v21, ([v3 isDragging]))
    {
      sub_10051669C();
      v22 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v22 = 0;
      v22[8] = 1;
      sub_100514B00();
      sub_100516A04();
      v23 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v23 = 0;
      v23[8] = 1;
      sub_100514ED4();
      goto LABEL_6;
    }

    sub_10051669C();
    v24 = v3 + *((swift_isaMask & *v3) + 0xC0);
    *v24 = 0;
    v24[8] = 1;
    sub_100514B00();
    sub_100516A04();
    v25 = v3 + *((swift_isaMask & *v3) + 0xC8);
    *v25 = v36;
    v25[8] = 0;
    sub_100514ED4();
    v26 = swift_isaMask & *v3;
    v27 = v3 + *(v26 + 0x68);
    v35 = *v27;
    if (!v35)
    {
      goto LABEL_6;
    }

    v33[1] = *(v27 + 1);
    (*(v8 + 16))(v10, v3 + *(v26 + 96), v7);
    v28 = *(v11 + 40);
    v33[2] = v11 + 40;
    v34 = v28;

    v34(v36, v7, v11);
    (*(v8 + 8))(v10, v7);
    v29 = v35;
    v30 = v35(v16, v36);
    (*(v13 + 8))(v16, v37);
    if (v30)
    {
      sub_10051669C();
      v31 = v3 + *((swift_isaMask & *v3) + 0xC0);
      *v31 = 0;
      v31[8] = 1;
      sub_100514B00();
      sub_100516A04();
      v32 = v3 + *((swift_isaMask & *v3) + 0xC8);
      *v32 = 0;
      v32[8] = 1;
      sub_100514ED4();
    }

    sub_1000167E0(v29);
  }

LABEL_7:
  sub_1005159D4(v3, a1, v38, &selRef_touchesEnded_withEvent_);
}

void sub_1005159D4(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  isa = sub_10077038C().super.isa;
  v8.receiver = a1;
  v8.super_class = type metadata accessor for HorizontalShelfView();
  objc_msgSendSuper2(&v8, *a4, isa, a3);
}

uint64_t sub_100515AC8(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  sub_100016F40(0, &qword_10094F760);
  sub_10027D9C8();
  v8 = sub_10077039C();
  v9 = a4;
  v10 = a1;
  a5(v8, a4);
}

void sub_100515B78(uint64_t a1, uint64_t a2)
{
  v5 = *((swift_isaMask & *v2) + 0xD0);
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  sub_10051669C();
  v7 = v2 + *((swift_isaMask & *v2) + 0xC0);
  *v7 = 0;
  v7[8] = 1;
  sub_100514B00();
  sub_100516A04();
  v8 = v2 + *((swift_isaMask & *v2) + 0xC8);
  *v8 = 0;
  v8[8] = 1;
  sub_100514ED4();
  sub_1005159D4(v2, a1, a2, &selRef_touchesCancelled_withEvent_);
}

uint64_t sub_100515D14()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_100515D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076FEAC();

  return sub_100515DF4(a1, v6, a2, a3);
}

unint64_t sub_100515DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_10076FF1C();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t *sub_100515F7C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100516018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_10077026C())
  {
    sub_1007715EC();
    v13 = sub_1007715DC();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = sub_10077028C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_10077024C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_10077148C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_100515D98(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_100516304()
{
  v1 = v0;
  v2 = *v0;
  v3 = swift_isaMask;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_10076D4DC();
  __chkstk_darwin(v5);
  v6 = (v1 + *((v3 & v2) + 0x68));
  *v6 = 0;
  v6[1] = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x70)) = 1;
  *(v1 + *((swift_isaMask & *v1) + 0x78)) = 0;
  v7 = *((swift_isaMask & *v1) + 0x80);
  v8 = objc_allocWithZone(sub_1007666AC());
  *(v1 + v7) = sub_10076669C();
  v9 = (v1 + *((swift_isaMask & *v1) + 0x88));
  *v9 = 0;
  v9[1] = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x90)) = 0;
  *(v1 + *((swift_isaMask & *v1) + 0x98)) = 0;
  *(v1 + *((swift_isaMask & *v1) + 0xA0)) = 0;
  v10 = v1 + *((swift_isaMask & *v1) + 0xA8);
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_10076D4CC();
  swift_getWitnessTable();
  sub_10076E18C();
  v11 = *((swift_isaMask & *v1) + 0xB8);
  swift_getTupleTypeMetadata2();
  v12 = sub_10077022C();
  v13 = sub_100516018(v12, &type metadata for Int, AssociatedTypeWitness, &protocol witness table for Int);

  *(v1 + v11) = v13;
  v14 = v1 + *((swift_isaMask & *v1) + 0xC0);
  *v14 = 0;
  v14[8] = 1;
  v15 = v1 + *((swift_isaMask & *v1) + 0xC8);
  *v15 = 0;
  v15[8] = 1;
  *(v1 + *((swift_isaMask & *v1) + 0xD0)) = 0;
  sub_10077156C();
  __break(1u);
}

void sub_10051669C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  v15 = &v0[*((v2 & v1) + 0xC0)];
  if ((v15[8] & 1) == 0)
  {
    v25 = v12;
    v26 = v11;
    v16 = *v15;
    swift_beginAccess();
    v27 = v16;
    swift_getAssociatedTypeWitness();
    sub_10076FE8C();
    v17 = v28;
    if (v28)
    {
      swift_endAccess();
      v18 = *((swift_isaMask & *v0) + 0x60);
      v23 = v16;
      v24 = AssociatedTypeWitness;
      v19 = *(v6 + 16);
      v19(v14, &v0[v18], v4);
      v19(v9, &v0[v18], v4);
      v20 = v25;
      (*(v3 + 40))(v23, v4, v3);
      v21 = *(v6 + 8);
      v21(v9, v4);
      (*(v3 + 72))(0, v17, v20, v4, v3);

      (*(v26 + 8))(v20, v24);
      v21(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_100516A04()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x58);
  v4 = *((swift_isaMask & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = *(v4 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  v15 = &v0[*((v2 & v1) + 0xC8)];
  if ((v15[8] & 1) == 0)
  {
    v29 = v12;
    v30 = v11;
    v16 = *v15;
    swift_beginAccess();
    v31 = v16;
    swift_getAssociatedTypeWitness();
    sub_10076FE8C();
    v17 = v32;
    if (v32)
    {
      swift_endAccess();
      v18 = *v0;
      v19 = &v0[*((swift_isaMask & *v0) + 0xC0)];
      v20 = *v19;
      v27 = v19[8];
      v26 = v16 == v20;
      v21 = *((swift_isaMask & v18) + 0x60);
      v28 = AssociatedTypeWitness;
      v25 = v16;
      v22 = *(v6 + 16);
      v22(v14, &v0[v21], v4);
      v22(v9, &v0[v21], v4);
      v23 = v29;
      (*(v3 + 40))(v25, v4, v3);
      v24 = *(v6 + 8);
      v24(v9, v4);
      (*(v3 + 72))(v26 & ~v27, v17, v23, v4, v3);

      (*(v30 + 8))(v23, v28);
      v24(v14, v4);
    }

    else
    {
      swift_endAccess();
    }
  }
}

unint64_t sub_100516DA4(void *a1)
{
  v2 = a1;
  if (!a1)
  {
    return 0;
  }

  v3 = v2;
  swift_getAssociatedTypeWitness();
  while (1)
  {
    v5 = swift_dynamicCastUnknownClass();
    v4 = v5 != 0;
    if (v5)
    {
      break;
    }

    type metadata accessor for HorizontalShelfView();
    if (swift_dynamicCastClass())
    {
      break;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      if ([v6 isTracking])
      {
        break;
      }
    }

    v4 = [v3 superview];

    v3 = v4;
    if (!v4)
    {
      return v4;
    }
  }

  return v4;
}

void sub_100516EE0(double *a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *(*v3 + 80);
  v10 = *(v9 - 8);
  __chkstk_darwin(a1);
  v12 = v37 - v11;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_100514A64();
  v15 = v14;

  v16 = *(v15 + 16);

  if (v16)
  {
    v17 = *a1;
    v18 = swift_unknownObjectUnownedLoadStrong();
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v40.origin.x = v20;
    v40.origin.y = v22;
    v40.size.width = v24;
    v40.size.height = v26;
    Width = CGRectGetWidth(v40);
    if (v17 > 0.0)
    {
      v28 = Width;
      v29 = swift_unknownObjectUnownedLoadStrong();
      [v29 contentSize];
      v31 = v30;

      if (v17 < v31 - v28)
      {
        v32 = swift_unknownObjectUnownedLoadStrong();
        (*(v10 + 16))(v12, &v32[*((swift_isaMask & *v32) + 0x60)], v9);
        (*(*(*&v8 + 88) + 24))(v37, v9);

        (*(v10 + 8))(v12, v9);
        v33 = v38 + v39;
        v34 = a2;
        if (a2 == 0.0)
        {
          v34 = v4[3];
        }

        v35 = fmod(v17, v38 + v39);
        if (v34 >= 0.0)
        {
          v36 = v33 - v35 + *a1;
        }

        else
        {
          v36 = *a1 - v35;
        }

        *a1 = v36;
        v4[3] = a2;
        v4[4] = a3;
      }
    }
  }
}

uint64_t sub_100517188(uint64_t a1)
{

  return a1;
}

void sub_1005171E4()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_10077158C())
  {
    if (sub_10077158C())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_10077149C();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_10077158C();
LABEL_13:
      if (v3)
      {
        sub_10061B430(0, 1);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_1005172BC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon) = a1;

  v10 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons;
  swift_beginAccess();
  *(v5 + v10) = a2;

  *(v5 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader) = a3;

  return sub_100517950(a4, a5);
}

id sub_100517380(char a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_iconViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_amsImpressionItems] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_isCompactSheet] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v10, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v8 = v4;
  [v8 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v8 setClipsToBounds:1];

  return v8;
}

uint64_t sub_1005174C8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v36 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_100762EBC();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v30[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100762E7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v30[-v15];
  v37.receiver = v1;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v14);
  [v1 bounds];
  width = v38.size.width;
  height = v38.size.height;
  result = CGRectIsEmpty(v38);
  if ((result & 1) == 0)
  {
    v20 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_iconViews;
    swift_beginAccess();
    v21 = *&v1[v20];
    if (!(v21 >> 62))
    {
      result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }

LABEL_4:
      v33 = v3;
      v22 = objc_opt_self();
      v31 = [v22 areAnimationsEnabled];
      v32 = v22;
      [v22 setAnimationsEnabled:0];
      v23 = [v1 traitCollection];
      v24 = sub_1007706EC();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          CGRectGetWidth(v39);
        }
      }

      sub_100762E6C();
      v27 = sub_100762E9C();
      v28 = *&v1[v20];
      if (v28 >> 62)
      {
        if (sub_10077158C() == v27)
        {
          goto LABEL_10;
        }
      }

      else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) == v27)
      {
LABEL_10:
        (*(v10 + 16))(v12, v16, v9);

        sub_10016E274(v29);

        sub_100762E8C();
        sub_100762E5C();
        (*(v36 + 8))(v5, v33);
        (*(v34 + 8))(v8, v35);
        (*(v10 + 8))(v16, v9);
        return [v32 setAnimationsEnabled:v31];
      }

      sub_100517950(width, height);
      goto LABEL_10;
    }

    result = sub_10077158C();
    if (result)
    {
      goto LABEL_4;
    }
  }

  return result;
}

uint64_t sub_100517950(double a1, double a2)
{
  v4 = v2;
  v7 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v7 - 8);
  v75 = &v65 - v8;
  v9 = sub_100762E7C();
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  __chkstk_darwin(v11);
  v14 = &v65 - v13;
  result = *&v2[OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader];
  if (!result)
  {
    return result;
  }

  v70 = v12;
  v73 = result;

  v16 = &selRef_initWithTabBarSystemItem_tag_;
  v17 = [v2 traitCollection];
  v18 = sub_1007706EC();

  v19 = &off_100911000;
  if (v18)
  {
    v20 = [v4 window];
    if (v20)
    {
      v21 = v20;
      [v20 frame];
      CGRectGetWidth(v82);
    }
  }

  sub_100762E6C();
  sub_100762E4C();
  v22 = *(v10 + 8);
  v68 = v10 + 8;
  v67 = v22;
  v22(v14, v9);
  v80 = _swiftEmptyArrayStorage;
  v81 = _swiftEmptyArrayStorage;
  v79 = _swiftEmptyArrayStorage;
  v23 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_iconViews;
  swift_beginAccess();
  v24 = *&v23[v4];
  if (v24 >> 62)
  {
    if (sub_10077158C())
    {
      goto LABEL_7;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    sub_1005171E4();
    goto LABEL_10;
  }

  sub_10075FD2C();
  v25 = sub_10075FB3C();
LABEL_10:
  v26 = v25;
  swift_endAccess();
  v27 = v26;
  sub_10077019C();
  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_93:
    sub_10077021C();
  }

  v71 = v27;
  sub_10077025C();
  v77 = v79;
  v78 = v23;
  if (!*(v4 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon))
  {
    v29 = _swiftEmptyArrayStorage;
    v74 = _swiftEmptyArrayStorage;
    goto LABEL_20;
  }

  swift_retain_n();
  sub_10077019C();
  if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();
  v74 = v81;
  v28 = v75;
  sub_10076609C();
  v3 = sub_100518EF0(v28);
  sub_100269504(v28);
  if (!v3)
  {
    v29 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v23 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v3 impressionMetrics:{0.0, 0.0, a1, a2}];
  sub_10077019C();
  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_110;
  }

  while (1)
  {
    sub_10077025C();

    v29 = v80;
LABEL_19:
    sub_1007660AC();
    sub_10076BFBC();

    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v23 = v78;
LABEL_20:
    [v4 bounds];
    v30 = [v4 *(v16 + 2192)];
    v31 = sub_1007706EC();

    if (v31)
    {
      v32 = [v4 v19[250]];
      if (v32)
      {
        v33 = v32;
        [v32 frame];
        CGRectGetWidth(v83);
      }
    }

    v16 = v70;
    sub_100762E6C();
    v34 = sub_100762EAC();
    v35 = *(v34 + 16);
    v19 = v73;
    v69 = v34;
    if (v35 >= 2)
    {
      break;
    }

LABEL_76:
    sub_1005188D4(v74);

    *(v4 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_amsImpressionItems) = v29;

    v51 = v77;
    if (v77 >> 62)
    {
      v58 = sub_10077158C();
      v51 = v77;
      v52 = v58;
      if (!v58)
      {
        goto LABEL_95;
      }
    }

    else
    {
      v52 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v52)
      {
        goto LABEL_95;
      }
    }

    if (v52 < 1)
    {
      __break(1u);
      goto LABEL_109;
    }

    v53 = 0;
    v3 = v51 & 0xC000000000000001;
    do
    {
      if (v3)
      {
        v56 = sub_10077149C();
      }

      else
      {
        v56 = *(v51 + 8 * v53 + 32);
      }

      v55 = v56;
      v57 = [v56 superview];
      if (v57)
      {
        v54 = v57;

        v55 = v54;
      }

      else
      {
        [v4 addSubview:v55];
      }

      ++v53;

      v51 = v77;
    }

    while (v52 != v53);
LABEL_95:
    v23 = v78;
    v59 = *&v78[v4];
    if (v59 >> 62)
    {
      v64 = sub_10077158C();
      v51 = v77;
      v60 = v64;
      v19 = v73;
      if (!v64)
      {
        goto LABEL_104;
      }
    }

    else
    {
      v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v73;
      if (!v60)
      {
        goto LABEL_104;
      }
    }

    if (v60 >= 1)
    {

      for (i = 0; i != v60; ++i)
      {
        if ((v59 & 0xC000000000000001) != 0)
        {
          v62 = sub_10077149C();
        }

        else
        {
          v62 = *(v59 + 8 * i + 32);
        }

        v63 = v62;
        [v62 removeFromSuperview];
      }

      v51 = v77;
      v23 = v78;
LABEL_104:
      *&v23[v4] = v51;

      [v4 setNeedsLayout];

      return v67(v16, v9);
    }

LABEL_109:
    __break(1u);
LABEL_110:
    sub_10077021C();
  }

  v72 = v29;
  v66 = v9;
  v36 = OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons;
  v27 = v34;

  swift_beginAccess();
  v16 = 0;
  v76 = v35 - 1;
  v9 = v27 + 7;
  while (1)
  {
    v37 = *(v9 - 1);
    v38 = *v9;
    swift_beginAccess();
    v3 = *&v23[v4];
    v23 = (v3 >> 62);
    if (v3 >> 62)
    {
      break;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_52:
    sub_10075FD2C();
    v27 = sub_10075FB3C();
    v23 = v78;
LABEL_53:
    swift_endAccess();
    v3 = v27;
    sub_10077019C();
    if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_10077021C();
    }

    sub_10077025C();
    v77 = v79;
    v43 = *(v4 + v36);
    if (v43 >> 62)
    {
      if (!sub_10077158C())
      {
LABEL_25:

        goto LABEL_26;
      }
    }

    else if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v44 = *(v4 + v36);
    if (v44 >> 62)
    {
      v45 = sub_10077158C();
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_88;
      }
    }

    v46 = v16 % v45;
    swift_beginAccess();
    v47 = *(v4 + v36);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v27 = sub_10077149C();
    }

    else
    {
      if (v46 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_90;
      }

      v27 = *(v47 + 8 * v46 + 32);
    }

    swift_endAccess();

    sub_10077019C();
    if (*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v74 = v81;
    v48 = v75;
    sub_10076609C();
    v49 = sub_100518EF0(v48);
    sub_100269504(v48);
    if (v49)
    {
      v50 = [objc_allocWithZone(AMSUIDynamicImpressionItem) initWithFrame:v49 impressionMetrics:{0.0, 0.0, v37, v38}];
      sub_10077019C();
      if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();

      v72 = v80;
      v19 = v73;
    }

    sub_1007660AC();
    sub_10076BFBC();

    sub_10075FD2C();
    sub_10000D7F8();
    sub_100760B8C();

    v23 = v78;
LABEL_26:
    ++v16;
    v9 += 2;
    if (v76 == v16)
    {

      v9 = v66;
      v16 = v70;
      v29 = v72;
      goto LABEL_76;
    }
  }

  if (!sub_10077158C())
  {
    goto LABEL_52;
  }

  result = sub_10077158C();
  if (result)
  {
    result = sub_10077158C();
    if (!result)
    {
      goto LABEL_112;
    }

LABEL_29:
    if ((v3 & 0xC000000000000001) != 0)
    {
      v39 = sub_10077149C();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v39 = *(v3 + 32);
    }

    v27 = v39;
    if (v23)
    {
      if (!sub_10077158C())
      {
        goto LABEL_91;
      }

      if (sub_10077158C() < 1)
      {
        goto LABEL_92;
      }

      v40 = sub_10077158C();
    }

    else
    {
      v40 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v40)
      {
        goto LABEL_91;
      }
    }

    v41 = v40 - 1;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v78[v4] = v3;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v23)
      {
        if (v41 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v23 = v78;
LABEL_47:
          sub_10061B330(0, 1, 0);
          *&v23[v4] = v3;
          goto LABEL_53;
        }

LABEL_44:
        v23 = v78;
LABEL_46:
        v3 = sub_1007714AC();
        *&v23[v4] = v3;
        goto LABEL_47;
      }
    }

    else if (!v23)
    {
      goto LABEL_44;
    }

    sub_10077158C();
    v23 = v78;
    goto LABEL_46;
  }

  __break(1u);
LABEL_112:
  __break(1u);
  return result;
}

double sub_1005185F0()
{
  v1 = v0;
  v2 = sub_100762E7C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100762EBC();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 bounds];
  v8 = [v0 traitCollection];
  v9 = sub_1007706EC();

  if (v9)
  {
    v10 = [v1 window];
    if (v10)
    {
      v11 = v10;
      [v10 frame];
      CGRectGetWidth(v17);
    }
  }

  sub_100762E6C();
  swift_beginAccess();

  sub_10016E274(v12);

  sub_100762E8C();
  sub_100762E3C();
  v14 = v13;
  (*(v4 + 8))(v7, v3);
  return v14;
}

void sub_1005188D4(unint64_t a1)
{
  v3 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_10076F7FC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator))
  {
    if (a1 >> 62)
    {
      v10 = sub_10077158C();
      if (!v10)
      {
        return;
      }
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
        return;
      }
    }

    if (v10 < 1)
    {
      __break(1u);
    }

    else
    {
      v17 = a1 & 0xC000000000000001;
      v11 = (v7 + 48);
      v15 = (v7 + 32);
      v12 = (v7 + 8);

      for (i = 0; i != v10; ++i)
      {
        if (v17)
        {
          sub_10077149C();
        }

        else
        {
        }

        sub_10076609C();
        if ((*v11)(v5, 1, v6) == 1)
        {

          sub_100269504(v5);
        }

        else
        {
          (*v15)(v9, v5, v6);
          sub_1007660EC();

          (*v12)(v9, v6);
        }
      }
    }
  }
}

unint64_t sub_100518CA4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000A5D4(&qword_100948B48);
    v2 = sub_1007715DC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_10000CD08(*(a1 + 56) + 32 * v12, v27);
        *&v26 = v14;
        *(&v26 + 1) = v15;
        v24 = v26;
        v25[0] = v27[0];
        v25[1] = v27[1];
        v16 = v26;
        sub_10000CD64(v25, &v22);

        sub_10000A5D4(&qword_100944F00);
        swift_dynamicCast();
        v17 = v23;
        result = sub_100561E0C(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * result) = v16;
          v9 = result;

          *(v2[7] + 8 * v9) = v17;
          result = swift_unknownObjectRelease();
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v16;
          *(v2[7] + 8 * result) = v17;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_100518EF0(uint64_t a1)
{
  v2 = sub_10076F7CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v34 - v7;
  __chkstk_darwin(v9);
  v11 = v34 - v10;
  v12 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v12 - 8);
  v14 = v34 - v13;
  v15 = sub_10076F7FC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100116BF0(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_100269504(v14);
    return 0;
  }

  else
  {
    v20 = *(v16 + 32);
    v35 = v15;
    v20(v18, v14, v15);
    sub_10076F7DC();
    v34[1] = sub_10076F7AC();
    v22 = v21;
    v23 = *(v3 + 8);
    v23(v11, v2);
    sub_10076F7DC();
    v34[2] = sub_10076F7BC();
    v23(v8, v2);
    sub_10076F7DC();
    v24 = sub_10076F79C();
    v23(v5, v2);
    if (v22)
    {
      v25 = sub_10076FF6C();
    }

    else
    {
      v25 = 0;
    }

    v26 = objc_allocWithZone(AMSUIDynamicImpressionMetricsIdentifier);
    v27 = sub_10076FF6C();

    v28 = [v26 initWithParent:v25 element:v27 index:v24];

    v29 = sub_10076F7EC();
    sub_100518CA4(v29);

    sub_1000FDA1C(_swiftEmptyArrayStorage);
    v30 = objc_allocWithZone(AMSUIDynamicImpressionMetrics);
    sub_10000A5D4(&qword_100944F00);
    isa = sub_10076FE3C().super.isa;

    v32 = sub_10076FE3C().super.isa;

    v33 = [v30 initWithIdentifier:v28 fields:isa custom:v32];

    (*(v16 + 8))(v18, v35);
    return v33;
  }
}

unint64_t sub_10051930C()
{
  result = qword_10095BA30;
  if (!qword_10095BA30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10095BA30);
  }

  return result;
}

void sub_100519358()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_primaryIcon) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_remainingIcons) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_artworkLoader) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_impressionsCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_iconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension14UpsellGridView_amsImpressionItems) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

char *sub_100519404(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v11 = sub_10076341C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  v13[1] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView] setClipsToBounds:1];
  v17 = [v14 contentView];

  [v17 addSubview:*&v14[v16]];
  return v14;
}

void sub_1005196FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076AC2C();
      if (swift_dynamicCast())
      {
        sub_10076AC1C();

        sub_10076BACC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
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
}

uint64_t type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell()
{
  result = qword_10095BA70;
  if (!qword_10095BA70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100519A64()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100519B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10051A14C(&qword_100950A10, type metadata accessor for MediumAdLockupWithScreenshotsBackgroundCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100519BB8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100519C10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100519CD0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v0[v1] = 0;
}

uint64_t sub_100519D38(uint64_t a1, uint64_t a2)
{
  sub_10076AC2C();
  sub_10051A14C(&qword_100953AE8, &type metadata accessor for MediumAdLockupWithScreenshotsBackground);
  result = sub_10076332C();
  if (v5)
  {
    sub_100356C74(v5, a2);
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_100519E44(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_100519EFC()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_100519F58(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_10051A018(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10051A24C;
}

uint64_t sub_10051A14C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10051A194()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051A1CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051A204()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10051A258()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_mediumAdLockupWithScreenshotsBackgroundView;
  type metadata accessor for MediumAdLockupWithScreenshotsBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_isAnimationEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension57MediumAdLockupWithScreenshotsBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

NSString sub_10051A358()
{
  result = sub_10076FF6C();
  static UIActivityType.gift = result;
  return result;
}

uint64_t *UIActivityType.gift.unsafeMutableAddressor()
{
  if (qword_1009407B8 != -1)
  {
    swift_once();
  }

  return &static UIActivityType.gift;
}

id static UIActivityType.gift.getter()
{
  if (qword_1009407B8 != -1)
  {
    swift_once();
  }

  v1 = static UIActivityType.gift;

  return v1;
}

uint64_t sub_10051A440(uint64_t a1)
{
  sub_10000A570(a1, v7);
  sub_10000A5D4(&unk_100942830);
  sub_10076C84C();
  result = swift_dynamicCast();
  if (result)
  {
    v3 = sub_10076C83C();
    if (v3)
    {
      v4 = v3;
      v5 = *(v1 + qword_10099CA08);
      if (v5)
      {
        v7[3] = sub_100762DFC();
        v7[4] = sub_10051B49C(&qword_100943490, &type metadata accessor for TodayCardOverlay);
        v7[0] = v4;
        v6[3] = swift_getObjectType();
        v6[0] = v5;
        swift_unknownObjectRetain_n();

        sub_10075FA0C();
        swift_unknownObjectRelease();

        sub_10000CD74(v6);
        return sub_10000CFBC(v7, &unk_10094F720);
      }
    }
  }

  return result;
}

char *sub_10051A5BC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_10095BA80;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setClipsToBounds:1];

  v17 = qword_10095BA80;
  [*&v15[qword_10095BA80] setClipsToBounds:1];
  v18 = [v15 contentView];

  [v18 addSubview:*&v15[v17]];
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  sub_10076F95C();
  sub_10000CFBC(v20, &unk_1009434C0);
  sub_10000CFBC(v21, &unk_1009434C0);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  return v15;
}

id sub_10051A81C()
{
  v1 = *&v0[qword_10095BA80];
  [v0 bounds];

  return [v1 setFrame:?];
}

void sub_10051A870(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10075FCAC();
}

uint64_t sub_10051A908()
{
  sub_10076A7DC();
  sub_10051B49C(&qword_10094B558, &type metadata accessor for CondensedAdLockupWithIconBackground);
  result = sub_10076332C();
  if (v1)
  {
    sub_10076A7CC();
  }

  return result;
}

uint64_t sub_10051A9A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_1005D5228(a1, a2, a3, a4, a5);
  sub_10076C7FC();
  sub_100768ACC();
  if (swift_dynamicCastClass())
  {
    v10 = sub_100768ABC();
    sub_1005CAE80(v10, a3, a4);

    sub_1005D5228(a1, a2, a3, a4, v11);
    [v5 setNeedsLayout];
  }
}

uint64_t sub_10051AA88(uint64_t a1)
{
  v3 = sub_10000A5D4(&unk_1009434A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10051A440(a1);
  v10 = OBJC_IVAR____TtC20ProductPageExtension31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_10003BDD4(v1 + v10, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000CFBC(v5, &unk_1009434A0);
  }

  (*(v7 + 32))(v9, v5, v6);
  sub_1005CC6D4(a1, v9);
  return (*(v7 + 8))(v9, v6);
}

void sub_10051AC68(uint64_t a1)
{
  if (*(v1 + qword_10099CA08))
  {
    v3 = *(v1 + qword_10099CA08 + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v6 = *(v1 + qword_10095BA80);
  sub_10075FCAC();
  sub_10075FD2C();
  sub_10051B49C(&qword_100941820, &type metadata accessor for ArtworkView);
  sub_100760BFC();
  v7 = OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView;
  v8 = *(*(v6 + OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();

  v9 = *(*(v6 + v7) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_100760BFC();
}

void (*sub_10051ADFC(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10051B490;
}

void sub_10051AEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v14);
      sub_10000A5D4(&qword_1009575A0);
      sub_10076C84C();
      if (swift_dynamicCast())
      {
        sub_10076C7FC();

        sub_100761BDC();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000CFBC(v6, &qword_1009492E0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_1007660EC();

          (*(v8 + 8))(v10, v7);
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
}

Class sub_10051B158(uint64_t a1)
{
  sub_10000A5D4(&unk_1009434B0);
  v2 = swift_allocObject();
  v3 = *(a1 + qword_10095BA80);
  *(v2 + 16) = xmmword_100783DD0;
  v4 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension39CondensedAdLockupWithIconBackgroundView_lockupView);
  *(v2 + 56) = type metadata accessor for TodayCardLockupView();
  *(v2 + 32) = v4;
  v5 = v4;
  v6.super.isa = sub_1007701AC().super.isa;

  return v6.super.isa;
}

void sub_10051B20C(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_1007701BC();
    v6 = a1;
    isa = sub_1007701AC().super.isa;
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityElements:", isa);
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell()
{
  result = qword_10095BAB0;
  if (!qword_10095BAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051B3D8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051B410()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10051B448()
{

  sub_10000CD74(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10051B49C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10051B4E4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_100949290);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - v7;
  v9 = sub_10000A5D4(&qword_10094F730);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_10000A5D4(&unk_1009492A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_10000A5D4(&unk_10094D210);
  __chkstk_darwin(v15 - 8);
  v63 = &v56 - v16;
  v17 = sub_10000A5D4(&unk_100946760);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - v18;
  v20 = sub_10076BF6C();
  __chkstk_darwin(v20 - 8);
  v64 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10075E7CC();
  v23 = sub_10075E7BC();
  if (v23)
  {
    v60 = v14;

    v24 = sub_10076BB5C();
    v61 = a1;
    if (v24)
    {
      v57 = v8;
      v58 = v11;
      v62 = v23;
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v25 = sub_100763ADC();
      sub_10000A61C(v25, qword_10099DDA0);
      sub_1007639AC();
      v59 = v2;
      v26 = *&v2[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView) contentMode];
      sub_10076BFCC();
      v28 = *(v26 + v27);
      sub_10076BF7C();
      sub_10075FCCC();
      [v28 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v29 = *(v26 + v27);
      sub_10075FD2C();
      sub_10000D7F8();
      v30 = v29;
      sub_100760B8C();

      v11 = v58;
      v3 = v59;
      v23 = v62;
      v8 = v57;
    }

    v31 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_10000A5D4(&qword_100945590);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = sub_10075F78C();
    v34 = a2;
    v35 = v63;
    (*(*(v33 - 8) + 56))(v63, 1, 1, v33);
    v36 = sub_1007628DC();
    v37 = v60;
    (*(*(v36 - 8) + 56))(v60, 1, 1, v36);
    v38 = sub_10000A5D4(&unk_100946750);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = sub_10076C54C();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_1004D0A60(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10000CFBC(v8, &unk_100949290);
    v31[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v31 setNeedsLayout];

    sub_10000CFBC(v11, &qword_10094F730);
    sub_10000CFBC(v37, &unk_1009492A0);
    v40 = v35;
    a2 = v34;
    sub_10000CFBC(v40, &unk_10094D210);
    sub_10000CFBC(v19, &unk_100946760);
  }

  if (v22)
  {

    if (sub_10076BB5C())
    {
      v62 = v23;
      v63 = a2;
      v41 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView) contentMode];
      sub_10076BFCC();
      v43 = *(v41 + v42);
      sub_10076BF7C();
      sub_10075FCCC();
      [v43 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_1000325F0();
        sub_100770D5C();
      }

      sub_10075FB8C();

      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v44 = *(v41 + v42);
      sub_10075FD2C();
      sub_10000D7F8();
      v45 = v44;
      sub_100760B8C();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel];

    sub_10076BB6C();
    v49 = v48;

    if (v49)
    {
      v46 = sub_10076FF6C();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_descriptionLabel];
  sub_10075E7AC();
  if (v51)
  {
    v52 = sub_10076FF6C();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallPaidOfferView_messageLabel];
  v65._object = 0x80000001007EC250;
  v65._countAndFlagsBits = 0xD000000000000030;
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1007622EC(v65, v66);
  v54 = sub_10076FF6C();

  [v53 setText:v54];

  [v3 setNeedsLayout];
}

double sub_10051BE4C()
{
  v0 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v0 - 8);
  v2 = &v79 - v1;
  v89 = sub_10077164C();
  v3 = *(v89 - 8);
  __chkstk_darwin(v89);
  v83 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10076D39C();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v86 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076C36C();
  v85 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v79 - v17;
  sub_100760E0C();
  sub_10051CDFC(&qword_10095BE50, &type metadata accessor for FramedArtwork);
  sub_10076332C();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v81 = v3;
  v82 = v2;

  v19 = sub_10075FF4C();
  swift_getKeyPath();
  sub_10076338C();

  v20 = (v13 + 8);
  if (v19)
  {
    sub_10076C2FC();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_10076C24C();
    v24 = *v20;
    (*v20)(v18, v12);
    v80 = v24;
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C26C();
    v24(v15, v12);
    v25 = v85;
    (*(v85 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076C25C();
    v26 = v80;
    v80(v15, v12);
    (*(v25 + 16))(v84, v11, v7);
    sub_1005AC334(0.0);
    sub_10076C33C();
    (*(v25 + 8))(v11, v7);
    sub_10076C2FC();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_100760DFC();
  v29 = v89;
  if (v28)
  {
    sub_10076BEFC();
    v30 = v86;
    sub_10076D3AC();
    sub_10076D36C();
    v32 = v31;
    (*(v87 + 8))(v30, v88);
    v33 = sub_10075FF4C();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_10075FF6C();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  v37 = 0.0;
  sub_100770ACC();
  sub_10075FF7C();
  v38 = &off_10093F000;
  if (v39)
  {
    if (qword_100940F68 != -1)
    {
      swift_once();
    }

    v40 = sub_10076D3DC();
    sub_10000A61C(v40, qword_1009A1C30);
    swift_getKeyPath();
    sub_10076338C();

    v41 = sub_10076C04C();
    v92 = v41;
    v93 = sub_10051CDFC(&qword_100943230, &type metadata accessor for Feature);
    v42 = sub_10000DB7C(aBlock);
    (*(*(v41 - 8) + 104))(v42, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
    sub_10076C90C();
    sub_10000CD74(aBlock);
    sub_10076991C();
    swift_unknownObjectRelease();

    v43 = v83;
    if (qword_10093F990 != -1)
    {
      swift_once();
    }

    v44 = sub_10076D9AC();
    sub_10000A61C(v44, qword_10099D738);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076D17C();
    sub_10076D40C();
    v46 = v45;
    swift_unknownObjectRelease();
    v47 = *(v81 + 8);
    v47(v43, v29);
    if (qword_10093F9A0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v44, qword_10099D768);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076D17C();
    sub_10076D40C();
    v49 = v48;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v50 = v46 + v49;
    if (qword_10093F998 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v44, qword_10099D750);
    swift_getKeyPath();
    sub_10076338C();

    sub_10076D17C();
    sub_10076D40C();
    v52 = v51;
    swift_unknownObjectRelease();
    v47(v43, v29);
    v37 = v50 + v52;
    v38 = &off_10093F000;
  }

  v53 = sub_10075FF6C();

  swift_getKeyPath();
  sub_10076338C();

  v54 = v95;
  v55 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v53];
  v56 = [v53 length];
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = v54;
  *(v57 + 32) = v55;
  *(v57 + 40) = 1;
  v58 = swift_allocObject();
  v58[2] = sub_1000275EC;
  v58[3] = v57;
  v93 = sub_1000ACB04;
  v94 = v58;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v92 = &unk_100898CC0;
  v59 = _Block_copy(aBlock);
  v60 = v54;
  v61 = v55;

  [v53 enumerateAttributesInRange:0 options:v56 usingBlock:{0x100000, v59}];

  _Block_release(v59);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_37;
  }

  v62 = qword_100940F60;
  v58 = v61;
  if (v62 != -1)
  {
LABEL_37:
    swift_once();
  }

  v63 = sub_10076D3DC();
  v64 = sub_10000A61C(v63, qword_1009A1C18);
  v65 = *(v63 - 8);
  v66 = v82;
  (*(v65 + 16))(v82, v64, v63);
  (*(v65 + 56))(v66, 0, 1, v63);
  swift_getKeyPath();
  sub_10076338C();

  v67 = sub_10076C04C();
  v92 = v67;
  v93 = sub_10051CDFC(&qword_100943230, &type metadata accessor for Feature);
  v68 = sub_10000DB7C(aBlock);
  (*(*(v67 - 8) + 104))(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(aBlock);
  sub_10076990C();
  v70 = v69;

  swift_unknownObjectRelease();
  sub_1000276DC(v66);
  if (qword_10093F990 != -1)
  {
    swift_once();
  }

  v71 = sub_10076D9AC();
  sub_10000A61C(v71, qword_10099D738);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D42C();
  v73 = v72;
  swift_unknownObjectRelease();
  v74 = v70 + v73;
  if (v38[307] != -1)
  {
    swift_once();
  }

  sub_10000A61C(v71, qword_10099D750);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D3FC();
  v76 = v75;
  swift_unknownObjectRelease();

  v77 = v74 + v76;
  if (v37 > v74 + v76)
  {
    v77 = v37;
  }

  return v23 + v77;
}

uint64_t sub_10051CD88()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10051CDE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10051CDFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10051CE64(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10076D1AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D9AC();
  sub_10000DB18(v7, a2);
  sub_10000A61C(v7, a2);
  if (qword_100940F28 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1B70);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_10076D9BC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10051D040()
{
  v0 = sub_10000A5D4(&unk_100942EF0);
  sub_10000DB18(v0, qword_10095BE90);
  sub_10000A61C(v0, qword_10095BE90);
  sub_10000A5D4(&unk_100943120);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

void sub_10051D0DC(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView;
  v6 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview:v5];
    [v1 setNeedsLayout];
  }
}

char *sub_10051D184(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076F9AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076771C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v18 - 8);
  v20 = &v33 - v19;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_sizeCategory] = 7;
  if (qword_100940F28 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D3DC();
  v22 = sub_10000A61C(v21, qword_1009A1B70);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(sub_1007626BC());
  v25 = sub_1007626AC();
  v26 = OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v27 = v25;
  sub_10076F95C();
  sub_1000258C0(v36);
  sub_1000258C0(v37);
  sub_100770B9C();

  (*(v11 + 8))(v13, v10);
  v28 = *&v5[v26];
  sub_1000325F0();
  v29 = v28;
  v30 = sub_100770D1C();
  [v29 setTextColor:v30];

  type metadata accessor for Accessory();
  swift_storeEnumTagMultiPayload();
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  [v31 addSubview:*&v31[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label]];
  return v31;
}

double sub_10051D624(double a1)
{
  swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076422C();
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView);
  if (v11)
  {
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v11 sizeThatFits:{v9, v10}];
    v10 = v15;
    v9 = v14;
    v8 = v13;
    v17 = v16;
    v7 = v12;
  }

  else
  {
    v17 = 0.0;
  }

  Width = CGRectGetWidth(*&v7);
  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label);
  [v19 sizeThatFits:{Width + -16.0 - v17, 1.79769313e308}];
  if (qword_1009407C0 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D9AC();
  sub_10000A61C(v20, qword_10095BE60);
  sub_10076D17C();
  sub_10076D40C();
  v21 = *(v4 + 8);
  v21(v6, v3);
  [v19 firstBaselineFromTop];
  if (qword_1009407C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v20, qword_10095BE78);
  sub_10076D17C();
  sub_10076D40C();
  v21(v6, v3);
  [v19 lastBaselineFromBottom];
  return a1;
}

id sub_10051D91C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v1;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "layoutSubviews", v5);
  sub_10076422C();
  v11 = v10;
  v13 = v12;
  v14 = v8;
  v15 = v9;
  v16 = OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView;
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_accessoryView];
  if (v17)
  {
    [v17 sizeThatFits:{v8, v9}];
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = 0.0;
    v21 = 0.0;
  }

  v33.origin.x = v11;
  v33.origin.y = v13;
  v33.size.width = v14;
  v33.size.height = v15;
  v22 = CGRectGetMaxX(v33) - v19;
  v34.origin.x = v11;
  v34.origin.y = v13;
  v34.size.width = v14;
  v34.size.height = v15;
  v35.origin.y = CGRectGetMidY(v34) + v21 * -0.5;
  v35.origin.x = v22;
  v31 = v19;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectIntegral(v35);
  v23 = *&v1[v16];
  if (v23)
  {
    v24 = v23;
    sub_100770A4C();
    [v24 setFrame:?];
  }

  v36.origin.x = v11;
  v36.origin.y = v13;
  v36.size.width = v14;
  v36.size.height = v15;
  v25 = CGRectGetWidth(v36) + -16.0 - v31;
  v37.origin.x = v11;
  v37.origin.y = v13;
  v37.size.width = v14;
  v37.size.height = v15;
  Height = CGRectGetHeight(v37);
  v27 = *&v1[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label];
  [v27 sizeThatFits:{v25, Height}];
  if (qword_1009407C0 != -1)
  {
    swift_once();
  }

  v28 = sub_10076D9AC();
  sub_10000A61C(v28, qword_10095BE60);
  sub_10076D17C();
  sub_10076D40C();
  (*(v4 + 8))(v7, v3);
  [v27 firstBaselineFromTop];
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v14;
  v38.size.height = v15;
  CGRectGetMinX(v38);
  v39.origin.x = v11;
  v39.origin.y = v13;
  v39.size.width = v14;
  v39.size.height = v15;
  CGRectGetMinY(v39);
  sub_100770A4C();
  return [v27 setFrame:?];
}

id sub_10051DCB8(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009407D0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000A5D4(&unk_100942EF0);
    sub_10000A61C(v6, qword_10095BE90);
    v7 = v1;
    sub_10075FDCC();

    return sub_100770E7C();
  }

  return result;
}

uint64_t type metadata accessor for TodayCardActionOverlayView()
{
  result = qword_10095BEE8;
  if (!qword_10095BEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10051DF08()
{
  result = type metadata accessor for Accessory();
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

unint64_t sub_10051DFEC()
{
  result = qword_10095BEF8;
  if (!qword_10095BEF8)
  {
    sub_100766CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095BEF8);
  }

  return result;
}

void sub_10051E044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v8 = a5;
  v5[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_sizeCategory] = a5;
  [v5 setNeedsLayout];
  sub_100527CDC(a2);
  sub_10051D0DC(v9);
  v10 = sub_10076C7BC();
  [v6 setBackgroundColor:v10];

  v11 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v11 layoutDirection];
  sub_1007708DC();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v6 setLayoutMargins:{v13, v15, v17, 15.0}];
  v18 = *&v6[OBJC_IVAR____TtC20ProductPageExtension26TodayCardActionOverlayView_label];
  sub_100766CEC();
  sub_10076B8EC();
  v20 = v19;

  if (v20)
  {
    v21 = sub_10076FF6C();
  }

  else
  {
    v21 = 0;
  }

  [v18 setText:v21];
}